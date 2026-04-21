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

set RTL_SOURCE [file join $PROJECT_DIR totalizador_a.vhd]
set TB_SOURCE [file join $PROJECT_DIR totalizador_a_tb.vhd]
set GATE_DIR [file join $PROJECT_DIR simulation modelsim]
set EXPECTED_GATE_ENTITY totalizador_a

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

proc find_matching_sdf {gate_dir netlist_file} {
    set base [file rootname [file tail $netlist_file]]
    foreach candidate [list \
        [file join $gate_dir ${base}_vhd.sdo] \
        [file join $gate_dir ${base}.sdo] \
        [file join $gate_dir totalizador_a_vhd.sdo] \
        [file join $gate_dir cont_75_vhd.sdo] \
        [file join $gate_dir cont_75_vhd_fast.sdo]] {
        if {[file exists $candidate]} {
            return $candidate
        }
    }
    return ""
}

set GATE_NETLIST ""
set GATE_SDF ""
set FOUND_GATE_ENTITIES ""
foreach candidate [list \
    [file join $GATE_DIR totalizador_a.vho] \
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
            set GATE_SDF [find_matching_sdf $GATE_DIR $candidate]
            break
        }
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

        puts "Simulacao RTL totalizador_a"
        vcom -93 $RTL_SOURCE
        vcom -93 $TB_SOURCE
        vsim -t ps -voptargs=+acc work.totalizador_a_tb
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
            puts "Arquivo SDF nao encontrado para netlist: $GATE_NETLIST"
            return
        }
        if {![file exists $TB_SOURCE]} {
            puts "Arquivo TB nao encontrado: $TB_SOURCE"
            return
        }

        puts "Simulacao gate-level totalizador_a"
        puts "Usando netlist: $GATE_NETLIST"
        puts "Usando SDF: $GATE_SDF"
        vcom -93 $GATE_NETLIST
        vcom -93 $TB_SOURCE
        vsim -t ps -voptargs=+acc -sdfmax /totalizador_a_tb/dut=$GATE_SDF work.totalizador_a_tb
    }
    default {
        puts "Modo invalido: $MODE"
        puts "Use: do totalizador_a.do rtl"
        puts "Ou:  do totalizador_a.do gate"
        return
    }
}

add wave -noupdate sim:/totalizador_a_tb/clk
add wave -noupdate sim:/totalizador_a_tb/rst
add wave -noupdate sim:/totalizador_a_tb/en
add wave -noupdate sim:/totalizador_a_tb/clr
add wave -noupdate sim:/totalizador_a_tb/init
add wave -noupdate -radix binary sim:/totalizador_a_tb/inpt
add wave -noupdate -radix unsigned sim:/totalizador_a_tb/q
add wave -noupdate -radix binary sim:/totalizador_a_tb/dut/val
add wave -noupdate -radix unsigned sim:/totalizador_a_tb/dut/count
configure wave -namecolwidth 160
configure wave -valuecolwidth 100
configure wave -timelineunits ns
update
