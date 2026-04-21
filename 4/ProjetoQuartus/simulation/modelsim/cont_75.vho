-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/21/2026 18:23:48"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	totalizadores_rapidos IS
    PORT (
	CLK : IN std_logic;
	INPT : IN std_logic_vector(4 DOWNTO 0);
	Q_b1_for : OUT std_logic_vector(3 DOWNTO 0);
	Q_b2_while : OUT std_logic_vector(3 DOWNTO 0);
	Q_b3_if : OUT std_logic_vector(3 DOWNTO 0);
	Q_b4_case : OUT std_logic_vector(3 DOWNTO 0);
	Q_b5_soma : OUT std_logic_vector(3 DOWNTO 0);
	Q_b6_demux : OUT std_logic_vector(3 DOWNTO 0)
	);
END totalizadores_rapidos;

-- Design Ports Information
-- Q_b1_for[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b1_for[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b1_for[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b1_for[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b2_while[0]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b2_while[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_b2_while[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b2_while[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_b3_if[0]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b3_if[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b3_if[2]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b3_if[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b4_case[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b4_case[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b4_case[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b4_case[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_b5_soma[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b5_soma[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_b5_soma[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b5_soma[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b6_demux[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b6_demux[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_b6_demux[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_b6_demux[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- INPT[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPT[0]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPT[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPT[2]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPT[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF totalizadores_rapidos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INPT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Q_b1_for : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q_b2_while : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q_b3_if : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q_b4_case : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q_b5_soma : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q_b6_demux : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Q_b1_for[0]~reg0_regout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \v_for~0_combout\ : std_logic;
SIGNAL \Q_b1_for[1]~reg0_regout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \v_for~1_combout\ : std_logic;
SIGNAL \Q_b1_for[2]~reg0_regout\ : std_logic;
SIGNAL \Q_b2_while[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Q_b2_while[0]~reg0_regout\ : std_logic;
SIGNAL \Q_b2_while[1]~reg0_regout\ : std_logic;
SIGNAL \Q_b2_while[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Q_b2_while[2]~reg0_regout\ : std_logic;
SIGNAL \Q_b3_if[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Q_b3_if[0]~reg0_regout\ : std_logic;
SIGNAL \Q_b3_if[1]~reg0_regout\ : std_logic;
SIGNAL \Q_b3_if[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Q_b3_if[2]~reg0_regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \INPT~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_INPT <= INPT;
Q_b1_for <= ww_Q_b1_for;
Q_b2_while <= ww_Q_b2_while;
Q_b3_if <= ww_Q_b3_if;
Q_b4_case <= ww_Q_b4_case;
Q_b5_soma <= ww_Q_b5_soma;
Q_b6_demux <= ww_Q_b6_demux;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

-- Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G11
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\INPT[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPT(4),
	combout => \INPT~combout\(4));

-- Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
\INPT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPT(2),
	combout => \INPT~combout\(2));

-- Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
\INPT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPT(1),
	combout => \INPT~combout\(1));

-- Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
\INPT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPT(0),
	combout => \INPT~combout\(0));

-- Location: LCCOMB_X59_Y35_N24
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = \INPT~combout\(3) $ (\INPT~combout\(2) $ (\INPT~combout\(1) $ (\INPT~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(3),
	datab => \INPT~combout\(2),
	datac => \INPT~combout\(1),
	datad => \INPT~combout\(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X59_Y35_N16
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = \INPT~combout\(4) $ (\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPT~combout\(4),
	datac => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCFF_X59_Y35_N17
\Q_b1_for[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_b1_for[0]~reg0_regout\);

-- Location: LCCOMB_X59_Y35_N4
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\INPT~combout\(3) & ((\INPT~combout\(2) & ((!\INPT~combout\(0)) # (!\INPT~combout\(1)))) # (!\INPT~combout\(2) & ((\INPT~combout\(1)) # (\INPT~combout\(0)))))) # (!\INPT~combout\(3) & ((\INPT~combout\(2) & ((\INPT~combout\(1)) # 
-- (\INPT~combout\(0)))) # (!\INPT~combout\(2) & (\INPT~combout\(1) & \INPT~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(3),
	datab => \INPT~combout\(2),
	datac => \INPT~combout\(1),
	datad => \INPT~combout\(0),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X59_Y35_N2
\v_for~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \v_for~0_combout\ = \Mux1~1_combout\ $ (((\Mux2~0_combout\ & \INPT~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \INPT~combout\(4),
	datac => \Mux1~1_combout\,
	combout => \v_for~0_combout\);

-- Location: LCFF_X59_Y35_N3
\Q_b1_for[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \v_for~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_b1_for[1]~reg0_regout\);

-- Location: LCCOMB_X59_Y35_N10
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\INPT~combout\(3) & (\INPT~combout\(2) & (\INPT~combout\(1) & \INPT~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(3),
	datab => \INPT~combout\(2),
	datac => \INPT~combout\(1),
	datad => \INPT~combout\(0),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X59_Y35_N12
\v_for~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \v_for~1_combout\ = \Mux0~1_combout\ $ (((\Mux2~0_combout\ & (\INPT~combout\(4) & \Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \INPT~combout\(4),
	datac => \Mux1~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \v_for~1_combout\);

-- Location: LCFF_X59_Y35_N13
\Q_b1_for[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \v_for~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_b1_for[2]~reg0_regout\);

-- Location: LCCOMB_X63_Y35_N0
\Q_b2_while[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q_b2_while[0]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \Q_b2_while[0]~reg0feeder_combout\);

-- Location: LCFF_X63_Y35_N1
\Q_b2_while[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Q_b2_while[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_b2_while[0]~reg0_regout\);

-- Location: LCFF_X63_Y35_N19
\Q_b2_while[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \v_for~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_b2_while[1]~reg0_regout\);

-- Location: LCCOMB_X63_Y35_N12
\Q_b2_while[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q_b2_while[2]~reg0feeder_combout\ = \v_for~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \v_for~1_combout\,
	combout => \Q_b2_while[2]~reg0feeder_combout\);

-- Location: LCFF_X63_Y35_N13
\Q_b2_while[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Q_b2_while[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_b2_while[2]~reg0_regout\);

-- Location: LCCOMB_X63_Y35_N22
\Q_b3_if[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q_b3_if[0]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \Q_b3_if[0]~reg0feeder_combout\);

-- Location: LCFF_X63_Y35_N23
\Q_b3_if[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Q_b3_if[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_b3_if[0]~reg0_regout\);

-- Location: LCFF_X63_Y35_N17
\Q_b3_if[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \v_for~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_b3_if[1]~reg0_regout\);

-- Location: LCCOMB_X59_Y35_N6
\Q_b3_if[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q_b3_if[2]~reg0feeder_combout\ = \v_for~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \v_for~1_combout\,
	combout => \Q_b3_if[2]~reg0feeder_combout\);

-- Location: LCFF_X59_Y35_N7
\Q_b3_if[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Q_b3_if[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_b3_if[2]~reg0_regout\);

-- Location: LCCOMB_X59_Y35_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\INPT~combout\(3) & ((\INPT~combout\(2) & (!\INPT~combout\(1) & !\INPT~combout\(0))) # (!\INPT~combout\(2) & ((!\INPT~combout\(0)) # (!\INPT~combout\(1)))))) # (!\INPT~combout\(3) & ((\INPT~combout\(2) & ((!\INPT~combout\(0)) # 
-- (!\INPT~combout\(1)))) # (!\INPT~combout\(2) & ((\INPT~combout\(1)) # (\INPT~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(3),
	datab => \INPT~combout\(2),
	datac => \INPT~combout\(1),
	datad => \INPT~combout\(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X59_Y35_N30
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\INPT~combout\(4) & ((\Mux1~0_combout\))) # (!\INPT~combout\(4) & (\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPT~combout\(4),
	datac => \Mux1~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X59_Y35_N0
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\INPT~combout\(3) & ((\INPT~combout\(2) & ((\INPT~combout\(1)) # (\INPT~combout\(0)))) # (!\INPT~combout\(2) & (\INPT~combout\(1) & \INPT~combout\(0))))) # (!\INPT~combout\(3) & (\INPT~combout\(2) & (\INPT~combout\(1) & 
-- \INPT~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(3),
	datab => \INPT~combout\(2),
	datac => \INPT~combout\(1),
	datad => \INPT~combout\(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X59_Y35_N28
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\INPT~combout\(4) & ((\Mux0~0_combout\))) # (!\INPT~combout\(4) & (\Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \INPT~combout\(4),
	datad => \Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X59_Y35_N14
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \INPT~combout\(0) $ (\INPT~combout\(2) $ (\INPT~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(0),
	datab => \INPT~combout\(2),
	datac => \INPT~combout\(1),
	combout => \Add5~0_combout\);

-- Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
\INPT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPT(3),
	combout => \INPT~combout\(3));

-- Location: LCCOMB_X59_Y35_N8
\Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \INPT~combout\(4) $ (\Add5~0_combout\ $ (\INPT~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPT~combout\(4),
	datac => \Add5~0_combout\,
	datad => \INPT~combout\(3),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X59_Y35_N26
\Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = (\INPT~combout\(0) & ((\INPT~combout\(2)) # (\INPT~combout\(1)))) # (!\INPT~combout\(0) & (\INPT~combout\(2) & \INPT~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(0),
	datab => \INPT~combout\(2),
	datac => \INPT~combout\(1),
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X59_Y35_N20
\Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = \Add5~1_combout\ $ (((\INPT~combout\(3) & ((\Add5~0_combout\) # (\INPT~combout\(4)))) # (!\INPT~combout\(3) & (\Add5~0_combout\ & \INPT~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(3),
	datab => \Add5~1_combout\,
	datac => \Add5~0_combout\,
	datad => \INPT~combout\(4),
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X59_Y35_N22
\Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add5~1_combout\ & ((\INPT~combout\(3) & ((\Add5~0_combout\) # (\INPT~combout\(4)))) # (!\INPT~combout\(3) & (\Add5~0_combout\ & \INPT~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(3),
	datab => \Add5~1_combout\,
	datac => \Add5~0_combout\,
	datad => \INPT~combout\(4),
	combout => \Add7~2_combout\);

-- Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b1_for[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_b1_for[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b1_for(0));

-- Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b1_for[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_b1_for[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b1_for(1));

-- Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b1_for[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_b1_for[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b1_for(2));

-- Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b1_for[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b1_for(3));

-- Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b2_while[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_b2_while[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b2_while(0));

-- Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_b2_while[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_b2_while[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b2_while(1));

-- Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b2_while[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_b2_while[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b2_while(2));

-- Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_b2_while[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b2_while(3));

-- Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b3_if[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_b3_if[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b3_if(0));

-- Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b3_if[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_b3_if[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b3_if(1));

-- Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b3_if[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_b3_if[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b3_if(2));

-- Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b3_if[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b3_if(3));

-- Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b4_case[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b4_case(0));

-- Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b4_case[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b4_case(1));

-- Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b4_case[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b4_case(2));

-- Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_b4_case[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b4_case(3));

-- Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b5_soma[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b5_soma(0));

-- Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_b5_soma[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b5_soma(1));

-- Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b5_soma[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b5_soma(2));

-- Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b5_soma[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b5_soma(3));

-- Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b6_demux[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b6_demux(0));

-- Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_b6_demux[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b6_demux(1));

-- Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b6_demux[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b6_demux(2));

-- Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_b6_demux[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_b6_demux(3));
END structure;


