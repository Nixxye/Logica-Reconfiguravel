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

set GATE_NETLIST ""
foreach candidate [list \
    [file join $GATE_DIR totalizador_b.vho] \
    [file join $GATE_DIR totalizadores_rapidos.vho]] {
    if {[file exists $candidate]} {
        set GATE_NETLIST $candidate
        break
    }
}

set GATE_SDF ""
foreach candidate [list \
    [file join $GATE_DIR totalizador_b_vhd.sdo] \
    [file join $GATE_DIR totalizadores_rapidos_vhd.sdo]] {
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
            quit -f
        }
        if {![file exists $TB_SOURCE]} {
            puts "Arquivo TB nao encontrado: $TB_SOURCE"
            quit -f
        }

        puts "Simulacao RTL totalizador_b"
        vcom -93 $RTL_SOURCE
        vcom -93 $TB_SOURCE
        vsim -t ps -voptargs=+acc work.totalizador_b_tb
    }
    gate {
        if {$GATE_NETLIST eq ""} {
            puts "Netlist gate-level nao encontrado em $GATE_DIR"
            quit -f
        }
        if {$GATE_SDF eq ""} {
            puts "Arquivo SDF nao encontrado em $GATE_DIR"
            quit -f
        }
        if {![file exists $TB_SOURCE]} {
            puts "Arquivo TB nao encontrado: $TB_SOURCE"
            quit -f
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
        quit -f
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
