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
set GATE_NETLIST [file join $GATE_DIR totalizador_a.vho]
set GATE_SDF [file join $GATE_DIR totalizador_a_vhd.sdo]

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

        puts "Simulacao RTL totalizador_a"
        vcom -93 $RTL_SOURCE
        vcom -93 $TB_SOURCE
        vsim -t ps -voptargs=+acc work.totalizador_a_tb
    }
    gate {
        if {![file exists $GATE_NETLIST]} {
            puts "Netlist gate-level nao encontrado: $GATE_NETLIST"
            quit -f
        }
        if {![file exists $GATE_SDF]} {
            puts "Arquivo SDF nao encontrado: $GATE_SDF"
            quit -f
        }
        if {![file exists $TB_SOURCE]} {
            puts "Arquivo TB nao encontrado: $TB_SOURCE"
            quit -f
        }

        puts "Simulacao gate-level totalizador_a"
        vcom -93 $GATE_NETLIST
        vcom -93 $TB_SOURCE
        vsim -t ps -voptargs=+acc -sdfmax /totalizador_a_tb/dut=$GATE_SDF work.totalizador_a_tb
    }
    default {
        puts "Modo invalido: $MODE"
        puts "Use: do totalizador_a.do rtl"
        puts "Ou:  do totalizador_a.do gate"
        quit -f
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
