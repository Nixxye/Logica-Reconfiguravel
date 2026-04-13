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

set RTL_SOURCE [file join $PROJECT_DIR cont_75.vhd]
set CONT4_SOURCE [file join $PROJECT_DIR cont_4.vhd]
set BCD7SEG_SOURCE [file join $PROJECT_DIR bcd_7seg.vhd]
set TB_SOURCE [file join $PROJECT_DIR cont_75_tb.vhd]
set GATE_DIR [file join $PROJECT_DIR simulation modelsim]
set GATE_NETLIST [file join $GATE_DIR cont_75.vho]
set GATE_SDF [file join $GATE_DIR cont_75_vhd.sdo]

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

        puts "Simulacao RTL"
        vcom -93 $CONT4_SOURCE
        vcom -93 $BCD7SEG_SOURCE
        vcom -93 $RTL_SOURCE
        vcom -93 $TB_SOURCE
        vsim -t ps -voptargs=+acc work.cont_75_tb
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

        puts "Simulacao gate-level"
        vcom -93 $GATE_NETLIST
        vcom -93 $TB_SOURCE
        vsim -t ps -voptargs=+acc -sdfmax /cont_75_tb/dut=$GATE_SDF work.cont_75_tb
    }
    default {
        puts "Modo invalido: $MODE"
        puts "Use: do cont_75.do rtl"
        puts "Ou:  do cont_75.do gate"
        quit -f
    }
}

add wave -noupdate sim:/cont_75_tb/clk
add wave -noupdate sim:/cont_75_tb/rst
add wave -noupdate sim:/cont_75_tb/btn_play_pause
add wave -noupdate sim:/cont_75_tb/btn_reset
add wave -noupdate sim:/cont_75_tb/dut/state
add wave -noupdate -radix hex sim:/cont_75_tb/q_ms
add wave -noupdate -radix decimal sim:/cont_75_tb/q1
add wave -noupdate -radix decimal sim:/cont_75_tb/q2
add wave -noupdate -radix hex sim:/cont_75_tb/q_s
add wave -noupdate -radix decimal sim:/cont_75_tb/q3
add wave -noupdate -radix decimal sim:/cont_75_tb/q4
add wave -noupdate -binary sim:/cont_75_tb/hex0
add wave -noupdate -binary sim:/cont_75_tb/hex1
add wave -noupdate -binary sim:/cont_75_tb/hex2
add wave -noupdate -binary sim:/cont_75_tb/hex3
add wave -noupdate sim:/cont_75_tb/clk2
add wave -noupdate sim:/cont_75_tb/clk3
add wave -noupdate sim:/cont_75_tb/clk4
add wave -noupdate sim:/cont_75_tb/clk_100hz
add wave -noupdate sim:/cont_75_tb/rst_sig1
add wave -noupdate sim:/cont_75_tb/rst_sig2
configure wave -namecolwidth 120
configure wave -valuecolwidth 80
configure wave -timelineunits ms
update