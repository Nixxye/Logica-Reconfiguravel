#!/usr/bin/env modelsim_script
# Script de simulação para FIFO
# Compile and run FIFO testbench

# Criar biblioteca
vlib work
vmap work work

# Compilar VHDL
vcom -2008 FIFO.vhd
vcom -2008 FIFO_tb.vhd

# Simular
vsim -t 1ps -voptargs="+acc" work.FIFO_tb

# Adicionar sinais ao waveform
add wave -noupdate -group "Clock/Reset" /FIFO_tb/clk
add wave -noupdate -group "Clock/Reset" /FIFO_tb/rst
add wave -noupdate -group "Control" /FIFO_tb/write_enable
add wave -noupdate -group "Control" /FIFO_tb/read_enable
add wave -noupdate -group "Data" /FIFO_tb/din
add wave -noupdate -group "Data" /FIFO_tb/dout
add wave -noupdate -group "Status" /FIFO_tb/empty
add wave -noupdate -group "Status" /FIFO_tb/full
add wave -noupdate -group "Status" /FIFO_tb/usedw
add wave -noupdate -group "Internal" /FIFO_tb/UUT/wr_ptr
add wave -noupdate -group "Internal" /FIFO_tb/UUT/rd_ptr
add wave -noupdate -group "Internal" /FIFO_tb/UUT/count
