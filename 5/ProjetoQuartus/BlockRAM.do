#!/usr/bin/env modelsim_script
# Script de simulação para BlockRAM
# Compile and run BlockRAM testbench

# Criar biblioteca
vlib work
vmap work work

# Compilar VHDL
vcom -2008 BlockRAM.vhd
vcom -2008 BlockRAM_tb.vhd

# Simular
vsim -t 1ps -voptargs="+acc" work.BlockRAM_tb

# Adicionar sinais ao waveform
add wave -noupdate -group "Clock" /BlockRAM_tb/clk
add wave -noupdate -group "Control" /BlockRAM_tb/we
add wave -noupdate -group "Address" /BlockRAM_tb/addr
add wave -noupdate -group "Data" /BlockRAM_tb/di
add wave -noupdate -group "Data" /BlockRAM_tb/do

# Rodar simulação
run -all

# Fechar
quit -f
