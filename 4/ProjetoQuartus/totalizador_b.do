transcript on

set SCRIPT_FILE [info script]
if {$SCRIPT_FILE eq ""} {
    set PROJECT_DIR [pwd]
} else {
    set PROJECT_DIR [file dirname [file normalize $SCRIPT_FILE]]
}

cd $PROJECT_DIR

set MODE rtl
if {[info exists ::SIM_MODE]} {
    set MODE [string tolower $::SIM_MODE]
}
unset -nocomplain ::SIM_MODE

set RTL_SOURCE [file join $PROJECT_DIR totalizador_b.vhd]
set TB_SOURCE [file join $PROJECT_DIR totalizador_b_tb.vhd]
set GATE_DIR [file join $PROJECT_DIR simulation modelsim]
set EXPECTED_GATE_ENTITY totalizadores_rapidos

proc get_vho_entity_name {vho_file} {
    if {![file exists $vho_file]} {
        return ""
    }

    set fh [open $vho_file r]
    set content [read $fh]
    close $fh

    # Extrai o primeiro nome de entidade declarado no netlist.
    if {[regexp -nocase {ENTITY[ \t\r\n]+([A-Za-z0-9_]+)[ \t\r\n]+IS} $content -> entity_name]} {
        return [string tolower $entity_name]
    }

    return ""
}

set GATE_NETLIST ""
set FOUND_GATE_ENTITIES ""
foreach candidate [list \
    [file join $GATE_DIR totalizador_b.vho] \
    [file join $GATE_DIR totalizadores_rapidos.vho] \
    [file join $GATE_DIR cont_75.vho] \
    [file join $GATE_DIR cont_75_fast.vho]] {
    if {[file exists $candidate]} {
        set candidate_entity [get_vho_entity_name $candidate]
        if {$candidate_entity ne ""} {
            append FOUND_GATE_ENTITIES "  - [file tail $candidate] => $candidate_entity\n"
        } else {
            append FOUND_GATE_ENTITIES "  - [file tail $candidate] => (entidade nao identificada)\n"
        }

        if {$candidate_entity eq [string tolower $EXPECTED_GATE_ENTITY]} {
            set GATE_NETLIST $candidate
            break
        }
    }
}

set GATE_SDF ""
foreach candidate [list \
    [file join $GATE_DIR totalizador_b_vhd.sdo] \
    [file join $GATE_DIR totalizadores_rapidos_vhd.sdo] \
    [file join $GATE_DIR cont_75_vhd.sdo] \
    [file join $GATE_DIR cont_75_vhd_fast.sdo]] {
    if {[file exists $candidate]} {
        set GATE_SDF $candidate
        break
    }
}

if {[file exists work]} {
    vdel -lib work -all
}

vlib work
vmap work work

switch -- $MODE {
    rtl {
        if {![file exists $RTL_SOURCE]} {
            puts "Arquivo RTL nao encontrado: $RTL_SOURCE"
            return
        }
        if {![file exists $TB_SOURCE]} {
            puts "Arquivo TB nao encontrado: $TB_SOURCE"
            return
        }

        puts "Simulacao RTL totalizador_b"
        vcom -93 $RTL_SOURCE
        vcom -93 $TB_SOURCE
        vsim -t ps -voptargs=+acc work.totalizador_b_tb
    }
    gate {
        if {$GATE_NETLIST eq ""} {
            puts "Netlist gate-level compativel nao encontrado em $GATE_DIR"
            puts "Esperado: entidade $EXPECTED_GATE_ENTITY"
            if {$FOUND_GATE_ENTITIES ne ""} {
                puts "Encontrados:"
                puts -nonewline $FOUND_GATE_ENTITIES
            }
            return
        }
        if {$GATE_SDF eq ""} {
            puts "Arquivo SDF nao encontrado em $GATE_DIR"
            return
        }
        if {![file exists $TB_SOURCE]} {
            puts "Arquivo TB nao encontrado: $TB_SOURCE"
            return
        }

        puts "Simulacao gate-level totalizador_b"
        puts "Usando netlist: $GATE_NETLIST"
        puts "Usando SDF: $GATE_SDF"
        vcom -93 $GATE_NETLIST
        vcom -93 $TB_SOURCE
        vsim -t ps -voptargs=+acc -sdfmax /totalizador_b_tb/dut=$GATE_SDF work.totalizador_b_tb
    }
    default {
        puts "Modo invalido: $MODE"
        puts "Use: do totalizador_b.do rtl"
        puts "Ou:  do totalizador_b.do gate"
        return
    }
}

add wave -noupdate sim:/totalizador_b_tb/clk
add wave -noupdate -radix binary sim:/totalizador_b_tb/inpt
add wave -noupdate -radix unsigned sim:/totalizador_b_tb/q_b1_for
add wave -noupdate -radix unsigned sim:/totalizador_b_tb/q_b2_while
add wave -noupdate -radix unsigned sim:/totalizador_b_tb/q_b3_if
add wave -noupdate -radix unsigned sim:/totalizador_b_tb/q_b4_case
add wave -noupdate -radix unsigned sim:/totalizador_b_tb/q_b5_soma
add wave -noupdate -radix unsigned sim:/totalizador_b_tb/q_b6_demux
configure wave -namecolwidth 180
configure wave -valuecolwidth 100
configure wave -timelineunits ns
update
