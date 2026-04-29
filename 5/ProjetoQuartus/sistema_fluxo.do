#!/usr/bin/env modelsim_script
# Script de simulação para sistema_fluxo
# Compile and run sistema_fluxo testbench

# Criar biblioteca
vlib work
vmap work work

# Compilar VHDL (ordem importa para dependências)
vcom -2008 BlockRAM.vhd
vcom -2008 FIFO.vhd
vcom -2008 sistema_fluxo.vhd
vcom -2008 sistema_fluxo_tb.vhd

# Simular
vsim -t 1ps -voptargs="+acc" work.sistema_fluxo_tb

# Adicionar sinais ao waveform
add wave -noupdate -group "Clock/Reset" /sistema_fluxo_tb/clk
add wave -noupdate -group "Status" /sistema_fluxo_tb/completo

# Sinais de Enable das entidades
add wave -noupdate -group "Enable Entities" /sistema_fluxo_tb/en_bram1
add wave -noupdate -group "Enable Entities" /sistema_fluxo_tb/en_bram2

# Sinais internos da máquina de escrita (BRAM1 -> FIFO)
add wave -noupdate -group "Write FSM" /sistema_fluxo_tb/UUT/state_wr
add wave -noupdate -group "Write FSM" -radix unsigned /sistema_fluxo_tb/UUT/addr1
add wave -noupdate -group "Write FSM" /sistema_fluxo_tb/UUT/fifo_we
add wave -noupdate -group "Write FSM" /sistema_fluxo_tb/UUT/bram1_we_mux
add wave -noupdate -group "Write FSM" -radix unsigned /sistema_fluxo_tb/UUT/fsm_bram1_di
add wave -noupdate -group "Write FSM" -radix unsigned /sistema_fluxo_tb/UUT/fifo_count

# Sinais internos da máquina de leitura (FIFO -> BRAM2)
add wave -noupdate -group "Read FSM" /sistema_fluxo_tb/UUT/state_rd
add wave -noupdate -group "Read FSM" -radix unsigned /sistema_fluxo_tb/UUT/addr2
add wave -noupdate -group "Read FSM" -radix unsigned /sistema_fluxo_tb/UUT/rd_clock_divider
add wave -noupdate -group "Read FSM" /sistema_fluxo_tb/UUT/rd_clock_enable
add wave -noupdate -group "Read FSM" /sistema_fluxo_tb/UUT/fifo_re
add wave -noupdate -group "Read FSM" /sistema_fluxo_tb/UUT/we_bram2

# Sinais de dados
add wave -noupdate -group "Data" -radix unsigned /sistema_fluxo_tb/bram1_addr
add wave -noupdate -group "Data" -radix unsigned /sistema_fluxo_tb/bram1_di
add wave -noupdate -group "Data" -radix unsigned /sistema_fluxo_tb/UUT/data_bram1_to_fifo
add wave -noupdate -group "Data" -radix unsigned /sistema_fluxo_tb/UUT/data_fifo_to_bram2
add wave -noupdate -group "Data" -radix unsigned /sistema_fluxo_tb/UUT/data_bram2_out

# Sinais de dados expostos (outputs da entidade)
add wave -noupdate -group "Data Exposed" -radix unsigned /sistema_fluxo_tb/UUT/ext_bram1_to_fifo
add wave -noupdate -group "Data Exposed" -radix unsigned /sistema_fluxo_tb/UUT/ext_fifo_to_bram2
add wave -noupdate -group "Data Exposed" -radix unsigned /sistema_fluxo_tb/UUT/ext_bram2_out

# Sinais da FIFO
add wave -noupdate -group "FIFO Status" /sistema_fluxo_tb/UUT/fifo_full
add wave -noupdate -group "FIFO Status" /sistema_fluxo_tb/UUT/fifo_empty
