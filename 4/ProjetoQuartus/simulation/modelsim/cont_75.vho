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

-- DATE "04/18/2026 14:34:21"

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

ENTITY 	totalizador_a IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	EN : IN std_logic;
	CLR : IN std_logic;
	INIT : IN std_logic;
	INPT : IN std_logic_vector(4 DOWNTO 0);
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END totalizador_a;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q[1]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q[2]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q[3]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- CLK	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INIT	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPT[0]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPT[1]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPT[2]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPT[3]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPT[4]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF totalizador_a IS
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
SIGNAL ww_RST : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_INIT : std_logic;
SIGNAL ww_INPT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \val~1_combout\ : std_logic;
SIGNAL \val~2_combout\ : std_logic;
SIGNAL \val~3_combout\ : std_logic;
SIGNAL \val~4_combout\ : std_logic;
SIGNAL \val~5_combout\ : std_logic;
SIGNAL \val~6_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~4_combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \CLR~combout\ : std_logic;
SIGNAL \INIT~combout\ : std_logic;
SIGNAL \count[0]~6_combout\ : std_logic;
SIGNAL \EN~combout\ : std_logic;
SIGNAL \val~0_combout\ : std_logic;
SIGNAL \count[0]~5\ : std_logic;
SIGNAL \count[1]~7_combout\ : std_logic;
SIGNAL \count[1]~8\ : std_logic;
SIGNAL \count[2]~9_combout\ : std_logic;
SIGNAL \count[2]~10\ : std_logic;
SIGNAL \count[3]~11_combout\ : std_logic;
SIGNAL val : std_logic_vector(4 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \INPT~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_EN <= EN;
ww_CLR <= CLR;
ww_INIT <= INIT;
ww_INPT <= INPT;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);

-- Location: LCFF_X64_Y25_N21
\val[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \val~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \val~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => val(0));

-- Location: LCFF_X64_Y25_N27
\val[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \val~2_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \val~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => val(1));

-- Location: LCCOMB_X64_Y25_N20
\val~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \val~1_combout\ = (!\CLR~combout\ & ((\INIT~combout\ & (\INPT~combout\(0))) # (!\INIT~combout\ & ((val(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(0),
	datab => \INIT~combout\,
	datac => \CLR~combout\,
	datad => val(1),
	combout => \val~1_combout\);

-- Location: LCFF_X64_Y25_N25
\val[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \val~3_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \val~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => val(2));

-- Location: LCCOMB_X64_Y25_N26
\val~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \val~2_combout\ = (!\CLR~combout\ & ((\INIT~combout\ & ((\INPT~combout\(1)))) # (!\INIT~combout\ & (val(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => val(2),
	datab => \CLR~combout\,
	datac => \INIT~combout\,
	datad => \INPT~combout\(1),
	combout => \val~2_combout\);

-- Location: LCFF_X64_Y25_N23
\val[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \val~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	ena => \val~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => val(3));

-- Location: LCCOMB_X64_Y25_N24
\val~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \val~3_combout\ = (!\CLR~combout\ & ((\INIT~combout\ & (\INPT~combout\(2))) # (!\INIT~combout\ & ((val(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(2),
	datab => \INIT~combout\,
	datac => \CLR~combout\,
	datad => val(3),
	combout => \val~3_combout\);

-- Location: LCFF_X64_Y25_N1
\val[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \val~6_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => val(4));

-- Location: LCCOMB_X64_Y25_N22
\val~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \val~4_combout\ = (!\CLR~combout\ & ((\INIT~combout\ & (\INPT~combout\(3))) # (!\INIT~combout\ & ((val(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPT~combout\(3),
	datab => \INIT~combout\,
	datac => \CLR~combout\,
	datad => val(4),
	combout => \val~4_combout\);

-- Location: LCCOMB_X64_Y25_N18
\val~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \val~5_combout\ = (\EN~combout\ & (!\CLR~combout\ & (\INIT~combout\ & \INPT~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~combout\,
	datab => \CLR~combout\,
	datac => \INIT~combout\,
	datad => \INPT~combout\(4),
	combout => \val~5_combout\);

-- Location: LCCOMB_X64_Y25_N0
\val~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \val~6_combout\ = (\val~5_combout\) # ((!\EN~combout\ & (!\CLR~combout\ & val(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~combout\,
	datab => \CLR~combout\,
	datac => val(4),
	datad => \val~5_combout\,
	combout => \val~6_combout\);

-- Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y25_N8
\count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~4_combout\ = (val(0) & (count(0) $ (VCC))) # (!val(0) & (count(0) & VCC))
-- \count[0]~5\ = CARRY((val(0) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => val(0),
	datab => count(0),
	datad => VCC,
	combout => \count[0]~4_combout\,
	cout => \count[0]~5\);

-- Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
\RST~I\ : cycloneii_io
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
	padio => ww_RST,
	combout => \RST~combout\);

-- Location: CLKCTRL_G7
\RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~clkctrl_outclk\);

-- Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
\CLR~I\ : cycloneii_io
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
	padio => ww_CLR,
	combout => \CLR~combout\);

-- Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\INIT~I\ : cycloneii_io
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
	padio => ww_INIT,
	combout => \INIT~combout\);

-- Location: LCCOMB_X64_Y25_N2
\count[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~6_combout\ = (\CLR~combout\) # (\INIT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR~combout\,
	datac => \INIT~combout\,
	combout => \count[0]~6_combout\);

-- Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
\EN~I\ : cycloneii_io
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
	padio => ww_EN,
	combout => \EN~combout\);

-- Location: LCCOMB_X64_Y25_N16
\val~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \val~0_combout\ = (\CLR~combout\) # (\EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR~combout\,
	datad => \EN~combout\,
	combout => \val~0_combout\);

-- Location: LCFF_X64_Y25_N9
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count[0]~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \count[0]~6_combout\,
	ena => \val~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X64_Y25_N10
\count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~7_combout\ = (count(1) & (!\count[0]~5\)) # (!count(1) & ((\count[0]~5\) # (GND)))
-- \count[1]~8\ = CARRY((!\count[0]~5\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~5\,
	combout => \count[1]~7_combout\,
	cout => \count[1]~8\);

-- Location: LCFF_X64_Y25_N11
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count[1]~7_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \count[0]~6_combout\,
	ena => \val~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X64_Y25_N12
\count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~9_combout\ = (count(2) & (\count[1]~8\ $ (GND))) # (!count(2) & (!\count[1]~8\ & VCC))
-- \count[2]~10\ = CARRY((count(2) & !\count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~8\,
	combout => \count[2]~9_combout\,
	cout => \count[2]~10\);

-- Location: LCFF_X64_Y25_N13
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count[2]~9_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \count[0]~6_combout\,
	ena => \val~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X64_Y25_N14
\count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~11_combout\ = count(3) $ (\count[2]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	cin => \count[2]~10\,
	combout => \count[3]~11_combout\);

-- Location: LCFF_X64_Y25_N15
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \count[3]~11_combout\,
	aclr => \RST~clkctrl_outclk\,
	sclr => \count[0]~6_combout\,
	ena => \val~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q[0]~I\ : cycloneii_io
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
	datain => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q[1]~I\ : cycloneii_io
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
	datain => count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q[2]~I\ : cycloneii_io
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
	datain => count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q[3]~I\ : cycloneii_io
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
	datain => count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(3));
END structure;


