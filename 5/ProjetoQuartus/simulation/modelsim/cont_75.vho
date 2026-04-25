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

-- DATE "04/25/2026 13:15:38"

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

ENTITY 	sistema_fluxo IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	completo : OUT std_logic
	);
END sistema_fluxo;

-- Design Ports Information
-- completo	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- clk	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sistema_fluxo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_completo : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \addr2[1]~12_combout\ : std_logic;
SIGNAL \addr2[6]~23_combout\ : std_logic;
SIGNAL \addr2[8]~27_combout\ : std_logic;
SIGNAL \FILA|count[1]~13_combout\ : std_logic;
SIGNAL \FILA|count[5]~21_combout\ : std_logic;
SIGNAL \addr1[2]~16_combout\ : std_logic;
SIGNAL \addr1[4]~20_combout\ : std_logic;
SIGNAL \read_divider~0_combout\ : std_logic;
SIGNAL \state_wr.WR_FIFO~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \FILA|count[0]~12\ : std_logic;
SIGNAL \FILA|count[1]~14\ : std_logic;
SIGNAL \FILA|count[2]~16\ : std_logic;
SIGNAL \FILA|count[3]~18\ : std_logic;
SIGNAL \FILA|count[4]~20\ : std_logic;
SIGNAL \FILA|count[5]~22\ : std_logic;
SIGNAL \FILA|count[6]~24\ : std_logic;
SIGNAL \FILA|count[7]~26\ : std_logic;
SIGNAL \FILA|count[8]~27_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \state_wr.RESET~feeder_combout\ : std_logic;
SIGNAL \state_wr.RESET~regout\ : std_logic;
SIGNAL \FILA|count[2]~15_combout\ : std_logic;
SIGNAL \FILA|count[3]~17_combout\ : std_logic;
SIGNAL \FILA|count[0]~11_combout\ : std_logic;
SIGNAL \FILA|Equal1~0_combout\ : std_logic;
SIGNAL \FILA|Equal1~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \addr1[0]~13_combout\ : std_logic;
SIGNAL \addr1[1]~15\ : std_logic;
SIGNAL \addr1[2]~17\ : std_logic;
SIGNAL \addr1[3]~19\ : std_logic;
SIGNAL \addr1[4]~21\ : std_logic;
SIGNAL \addr1[5]~22_combout\ : std_logic;
SIGNAL \addr1[10]~34_combout\ : std_logic;
SIGNAL \addr1[5]~23\ : std_logic;
SIGNAL \addr1[6]~24_combout\ : std_logic;
SIGNAL \addr1[6]~25\ : std_logic;
SIGNAL \addr1[7]~26_combout\ : std_logic;
SIGNAL \addr1[7]~27\ : std_logic;
SIGNAL \addr1[8]~29\ : std_logic;
SIGNAL \addr1[9]~30_combout\ : std_logic;
SIGNAL \addr1[8]~28_combout\ : std_logic;
SIGNAL \addr1[9]~31\ : std_logic;
SIGNAL \addr1[10]~32_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \addr1[3]~18_combout\ : std_logic;
SIGNAL \addr1[1]~14_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \addr1[10]~12_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state_wr.WR_WAIT~regout\ : std_logic;
SIGNAL \state_wr.WR_FIFO~0_combout\ : std_logic;
SIGNAL \state_wr.WR_FIFO~2_combout\ : std_logic;
SIGNAL \state_wr.WR_FIFO~regout\ : std_logic;
SIGNAL \fifo_we~0_combout\ : std_logic;
SIGNAL \fifo_we~regout\ : std_logic;
SIGNAL \FILA|count[0]~31_combout\ : std_logic;
SIGNAL \FILA|count[8]~28\ : std_logic;
SIGNAL \FILA|count[9]~29_combout\ : std_logic;
SIGNAL \FILA|count[9]~30\ : std_logic;
SIGNAL \FILA|count[10]~32_combout\ : std_logic;
SIGNAL \FILA|process_0~0_combout\ : std_logic;
SIGNAL \FILA|count[6]~23_combout\ : std_logic;
SIGNAL \FILA|count[7]~25_combout\ : std_logic;
SIGNAL \FILA|count[4]~19_combout\ : std_logic;
SIGNAL \FILA|Equal1~1_combout\ : std_logic;
SIGNAL \FILA|Equal1~2_combout\ : std_logic;
SIGNAL \FILA|Equal1~3_combout\ : std_logic;
SIGNAL \state_rd.IDLE~0_combout\ : std_logic;
SIGNAL \state_rd.IDLE~regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state_rd.RD_FIFO~regout\ : std_logic;
SIGNAL \read_divider~1_combout\ : std_logic;
SIGNAL \read_divider~2_combout\ : std_logic;
SIGNAL \addr2[10]~10_combout\ : std_logic;
SIGNAL \addr2[0]~11_combout\ : std_logic;
SIGNAL \addr2[1]~13\ : std_logic;
SIGNAL \addr2[2]~15_combout\ : std_logic;
SIGNAL \addr2[10]~14_combout\ : std_logic;
SIGNAL \addr2[2]~16\ : std_logic;
SIGNAL \addr2[3]~18\ : std_logic;
SIGNAL \addr2[4]~20\ : std_logic;
SIGNAL \addr2[5]~21_combout\ : std_logic;
SIGNAL \addr2[5]~22\ : std_logic;
SIGNAL \addr2[6]~24\ : std_logic;
SIGNAL \addr2[7]~25_combout\ : std_logic;
SIGNAL \addr2[4]~19_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \addr2[7]~26\ : std_logic;
SIGNAL \addr2[8]~28\ : std_logic;
SIGNAL \addr2[9]~29_combout\ : std_logic;
SIGNAL \addr2[9]~30\ : std_logic;
SIGNAL \addr2[10]~31_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \addr2[3]~17_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL read_divider : std_logic_vector(2 DOWNTO 0);
SIGNAL addr2 : std_logic_vector(10 DOWNTO 0);
SIGNAL addr1 : std_logic_vector(10 DOWNTO 0);
SIGNAL \FILA|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
completo <= ww_completo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;

-- Location: LCFF_X17_Y4_N7
\addr2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[1]~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(1));

-- Location: LCFF_X17_Y4_N17
\addr2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[6]~23_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(6));

-- Location: LCFF_X17_Y4_N21
\addr2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[8]~27_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(8));

-- Location: LCFF_X18_Y4_N13
\FILA|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[1]~13_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(1));

-- Location: LCFF_X18_Y4_N21
\FILA|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[5]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(5));

-- Location: LCCOMB_X17_Y4_N6
\addr2[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[1]~12_combout\ = (addr2(1) & (addr2(0) $ (VCC))) # (!addr2(1) & (addr2(0) & VCC))
-- \addr2[1]~13\ = CARRY((addr2(1) & addr2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(1),
	datab => addr2(0),
	datad => VCC,
	combout => \addr2[1]~12_combout\,
	cout => \addr2[1]~13\);

-- Location: LCCOMB_X17_Y4_N16
\addr2[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[6]~23_combout\ = (addr2(6) & (!\addr2[5]~22\)) # (!addr2(6) & ((\addr2[5]~22\) # (GND)))
-- \addr2[6]~24\ = CARRY((!\addr2[5]~22\) # (!addr2(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(6),
	datad => VCC,
	cin => \addr2[5]~22\,
	combout => \addr2[6]~23_combout\,
	cout => \addr2[6]~24\);

-- Location: LCCOMB_X17_Y4_N20
\addr2[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[8]~27_combout\ = (addr2(8) & (!\addr2[7]~26\)) # (!addr2(8) & ((\addr2[7]~26\) # (GND)))
-- \addr2[8]~28\ = CARRY((!\addr2[7]~26\) # (!addr2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(8),
	datad => VCC,
	cin => \addr2[7]~26\,
	combout => \addr2[8]~27_combout\,
	cout => \addr2[8]~28\);

-- Location: LCCOMB_X18_Y4_N12
\FILA|count[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[1]~13_combout\ = (\FILA|count\(1) & ((\FILA|process_0~0_combout\ & (!\FILA|count[0]~12\)) # (!\FILA|process_0~0_combout\ & (\FILA|count[0]~12\ & VCC)))) # (!\FILA|count\(1) & ((\FILA|process_0~0_combout\ & ((\FILA|count[0]~12\) # (GND))) # 
-- (!\FILA|process_0~0_combout\ & (!\FILA|count[0]~12\))))
-- \FILA|count[1]~14\ = CARRY((\FILA|count\(1) & (\FILA|process_0~0_combout\ & !\FILA|count[0]~12\)) # (!\FILA|count\(1) & ((\FILA|process_0~0_combout\) # (!\FILA|count[0]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(1),
	datab => \FILA|process_0~0_combout\,
	datad => VCC,
	cin => \FILA|count[0]~12\,
	combout => \FILA|count[1]~13_combout\,
	cout => \FILA|count[1]~14\);

-- Location: LCCOMB_X18_Y4_N20
\FILA|count[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[5]~21_combout\ = (\FILA|count\(5) & ((\FILA|process_0~0_combout\ & (!\FILA|count[4]~20\)) # (!\FILA|process_0~0_combout\ & (\FILA|count[4]~20\ & VCC)))) # (!\FILA|count\(5) & ((\FILA|process_0~0_combout\ & ((\FILA|count[4]~20\) # (GND))) # 
-- (!\FILA|process_0~0_combout\ & (!\FILA|count[4]~20\))))
-- \FILA|count[5]~22\ = CARRY((\FILA|count\(5) & (\FILA|process_0~0_combout\ & !\FILA|count[4]~20\)) # (!\FILA|count\(5) & ((\FILA|process_0~0_combout\) # (!\FILA|count[4]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(5),
	datab => \FILA|process_0~0_combout\,
	datad => VCC,
	cin => \FILA|count[4]~20\,
	combout => \FILA|count[5]~21_combout\,
	cout => \FILA|count[5]~22\);

-- Location: LCFF_X20_Y4_N13
\addr1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[2]~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(2));

-- Location: LCFF_X20_Y4_N17
\addr1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[4]~20_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(4));

-- Location: LCCOMB_X20_Y4_N12
\addr1[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[2]~16_combout\ = (addr1(2) & (!\addr1[1]~15\)) # (!addr1(2) & ((\addr1[1]~15\) # (GND)))
-- \addr1[2]~17\ = CARRY((!\addr1[1]~15\) # (!addr1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(2),
	datad => VCC,
	cin => \addr1[1]~15\,
	combout => \addr1[2]~16_combout\,
	cout => \addr1[2]~17\);

-- Location: LCCOMB_X20_Y4_N16
\addr1[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[4]~20_combout\ = (addr1(4) & (!\addr1[3]~19\)) # (!addr1(4) & ((\addr1[3]~19\) # (GND)))
-- \addr1[4]~21\ = CARRY((!\addr1[3]~19\) # (!addr1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(4),
	datad => VCC,
	cin => \addr1[3]~19\,
	combout => \addr1[4]~20_combout\,
	cout => \addr1[4]~21\);

-- Location: LCFF_X19_Y4_N17
\read_divider[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \read_divider~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_rd.RD_FIFO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => read_divider(2));

-- Location: LCCOMB_X19_Y4_N16
\read_divider~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \read_divider~0_combout\ = (read_divider(2) & ((!read_divider(1)))) # (!read_divider(2) & (read_divider(0) & read_divider(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => read_divider(0),
	datac => read_divider(2),
	datad => read_divider(1),
	combout => \read_divider~0_combout\);

-- Location: LCCOMB_X19_Y4_N20
\state_wr.WR_FIFO~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr.WR_FIFO~1_combout\ = (!\LessThan0~0_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \state_wr.WR_FIFO~1_combout\);

-- Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G11
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y4_N10
\FILA|count[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[0]~11_combout\ = \FILA|count\(0) $ (VCC)
-- \FILA|count[0]~12\ = CARRY(\FILA|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(0),
	datad => VCC,
	combout => \FILA|count[0]~11_combout\,
	cout => \FILA|count[0]~12\);

-- Location: LCCOMB_X18_Y4_N14
\FILA|count[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[2]~15_combout\ = ((\FILA|count\(2) $ (\FILA|process_0~0_combout\ $ (\FILA|count[1]~14\)))) # (GND)
-- \FILA|count[2]~16\ = CARRY((\FILA|count\(2) & ((!\FILA|count[1]~14\) # (!\FILA|process_0~0_combout\))) # (!\FILA|count\(2) & (!\FILA|process_0~0_combout\ & !\FILA|count[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(2),
	datab => \FILA|process_0~0_combout\,
	datad => VCC,
	cin => \FILA|count[1]~14\,
	combout => \FILA|count[2]~15_combout\,
	cout => \FILA|count[2]~16\);

-- Location: LCCOMB_X18_Y4_N16
\FILA|count[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[3]~17_combout\ = (\FILA|count\(3) & ((\FILA|process_0~0_combout\ & (!\FILA|count[2]~16\)) # (!\FILA|process_0~0_combout\ & (\FILA|count[2]~16\ & VCC)))) # (!\FILA|count\(3) & ((\FILA|process_0~0_combout\ & ((\FILA|count[2]~16\) # (GND))) # 
-- (!\FILA|process_0~0_combout\ & (!\FILA|count[2]~16\))))
-- \FILA|count[3]~18\ = CARRY((\FILA|count\(3) & (\FILA|process_0~0_combout\ & !\FILA|count[2]~16\)) # (!\FILA|count\(3) & ((\FILA|process_0~0_combout\) # (!\FILA|count[2]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(3),
	datab => \FILA|process_0~0_combout\,
	datad => VCC,
	cin => \FILA|count[2]~16\,
	combout => \FILA|count[3]~17_combout\,
	cout => \FILA|count[3]~18\);

-- Location: LCCOMB_X18_Y4_N18
\FILA|count[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[4]~19_combout\ = ((\FILA|count\(4) $ (\FILA|process_0~0_combout\ $ (\FILA|count[3]~18\)))) # (GND)
-- \FILA|count[4]~20\ = CARRY((\FILA|count\(4) & ((!\FILA|count[3]~18\) # (!\FILA|process_0~0_combout\))) # (!\FILA|count\(4) & (!\FILA|process_0~0_combout\ & !\FILA|count[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(4),
	datab => \FILA|process_0~0_combout\,
	datad => VCC,
	cin => \FILA|count[3]~18\,
	combout => \FILA|count[4]~19_combout\,
	cout => \FILA|count[4]~20\);

-- Location: LCCOMB_X18_Y4_N22
\FILA|count[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[6]~23_combout\ = ((\FILA|count\(6) $ (\FILA|process_0~0_combout\ $ (\FILA|count[5]~22\)))) # (GND)
-- \FILA|count[6]~24\ = CARRY((\FILA|count\(6) & ((!\FILA|count[5]~22\) # (!\FILA|process_0~0_combout\))) # (!\FILA|count\(6) & (!\FILA|process_0~0_combout\ & !\FILA|count[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(6),
	datab => \FILA|process_0~0_combout\,
	datad => VCC,
	cin => \FILA|count[5]~22\,
	combout => \FILA|count[6]~23_combout\,
	cout => \FILA|count[6]~24\);

-- Location: LCCOMB_X18_Y4_N24
\FILA|count[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[7]~25_combout\ = (\FILA|count\(7) & ((\FILA|process_0~0_combout\ & (!\FILA|count[6]~24\)) # (!\FILA|process_0~0_combout\ & (\FILA|count[6]~24\ & VCC)))) # (!\FILA|count\(7) & ((\FILA|process_0~0_combout\ & ((\FILA|count[6]~24\) # (GND))) # 
-- (!\FILA|process_0~0_combout\ & (!\FILA|count[6]~24\))))
-- \FILA|count[7]~26\ = CARRY((\FILA|count\(7) & (\FILA|process_0~0_combout\ & !\FILA|count[6]~24\)) # (!\FILA|count\(7) & ((\FILA|process_0~0_combout\) # (!\FILA|count[6]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(7),
	datab => \FILA|process_0~0_combout\,
	datad => VCC,
	cin => \FILA|count[6]~24\,
	combout => \FILA|count[7]~25_combout\,
	cout => \FILA|count[7]~26\);

-- Location: LCCOMB_X18_Y4_N26
\FILA|count[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[8]~27_combout\ = ((\FILA|process_0~0_combout\ $ (\FILA|count\(8) $ (\FILA|count[7]~26\)))) # (GND)
-- \FILA|count[8]~28\ = CARRY((\FILA|process_0~0_combout\ & (\FILA|count\(8) & !\FILA|count[7]~26\)) # (!\FILA|process_0~0_combout\ & ((\FILA|count\(8)) # (!\FILA|count[7]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|process_0~0_combout\,
	datab => \FILA|count\(8),
	datad => VCC,
	cin => \FILA|count[7]~26\,
	combout => \FILA|count[8]~27_combout\,
	cout => \FILA|count[8]~28\);

-- Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G7
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y4_N26
\state_wr.RESET~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state_wr.RESET~feeder_combout\);

-- Location: LCFF_X17_Y4_N27
\state_wr.RESET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_wr.RESET~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_wr.RESET~regout\);

-- Location: LCFF_X18_Y4_N15
\FILA|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[2]~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(2));

-- Location: LCFF_X18_Y4_N17
\FILA|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[3]~17_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(3));

-- Location: LCFF_X18_Y4_N11
\FILA|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[0]~11_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(0));

-- Location: LCCOMB_X18_Y4_N8
\FILA|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal1~0_combout\ = (!\FILA|count\(1) & (!\FILA|count\(2) & (!\FILA|count\(3) & !\FILA|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(1),
	datab => \FILA|count\(2),
	datac => \FILA|count\(3),
	datad => \FILA|count\(0),
	combout => \FILA|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y4_N4
\FILA|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal1~4_combout\ = (!\FILA|count\(8) & (\FILA|Equal1~0_combout\ & \FILA|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FILA|count\(8),
	datac => \FILA|Equal1~0_combout\,
	datad => \FILA|Equal1~1_combout\,
	combout => \FILA|Equal1~4_combout\);

-- Location: LCCOMB_X19_Y4_N12
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\FILA|count\(10) & ((!\FILA|count\(9)) # (!\FILA|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FILA|count\(8),
	datac => \FILA|count\(9),
	datad => \FILA|count\(10),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y4_N8
\addr1[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[0]~13_combout\ = addr1(0) $ (((\addr1[10]~12_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr1[10]~12_combout\,
	datac => addr1(0),
	datad => \LessThan0~0_combout\,
	combout => \addr1[0]~13_combout\);

-- Location: LCFF_X20_Y4_N9
\addr1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[0]~13_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(0));

-- Location: LCCOMB_X20_Y4_N10
\addr1[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[1]~14_combout\ = (addr1(1) & (addr1(0) $ (VCC))) # (!addr1(1) & (addr1(0) & VCC))
-- \addr1[1]~15\ = CARRY((addr1(1) & addr1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr1(1),
	datab => addr1(0),
	datad => VCC,
	combout => \addr1[1]~14_combout\,
	cout => \addr1[1]~15\);

-- Location: LCCOMB_X20_Y4_N14
\addr1[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[3]~18_combout\ = (addr1(3) & (\addr1[2]~17\ $ (GND))) # (!addr1(3) & (!\addr1[2]~17\ & VCC))
-- \addr1[3]~19\ = CARRY((addr1(3) & !\addr1[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(3),
	datad => VCC,
	cin => \addr1[2]~17\,
	combout => \addr1[3]~18_combout\,
	cout => \addr1[3]~19\);

-- Location: LCCOMB_X20_Y4_N18
\addr1[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[5]~22_combout\ = (addr1(5) & (\addr1[4]~21\ $ (GND))) # (!addr1(5) & (!\addr1[4]~21\ & VCC))
-- \addr1[5]~23\ = CARRY((addr1(5) & !\addr1[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(5),
	datad => VCC,
	cin => \addr1[4]~21\,
	combout => \addr1[5]~22_combout\,
	cout => \addr1[5]~23\);

-- Location: LCCOMB_X20_Y4_N2
\addr1[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[10]~34_combout\ = (!\FILA|count\(10) & (\addr1[10]~12_combout\ & ((!\FILA|count\(9)) # (!\FILA|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(8),
	datab => \FILA|count\(9),
	datac => \FILA|count\(10),
	datad => \addr1[10]~12_combout\,
	combout => \addr1[10]~34_combout\);

-- Location: LCFF_X20_Y4_N19
\addr1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[5]~22_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(5));

-- Location: LCCOMB_X20_Y4_N20
\addr1[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[6]~24_combout\ = (addr1(6) & (!\addr1[5]~23\)) # (!addr1(6) & ((\addr1[5]~23\) # (GND)))
-- \addr1[6]~25\ = CARRY((!\addr1[5]~23\) # (!addr1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(6),
	datad => VCC,
	cin => \addr1[5]~23\,
	combout => \addr1[6]~24_combout\,
	cout => \addr1[6]~25\);

-- Location: LCFF_X20_Y4_N21
\addr1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[6]~24_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(6));

-- Location: LCCOMB_X20_Y4_N22
\addr1[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[7]~26_combout\ = (addr1(7) & (\addr1[6]~25\ $ (GND))) # (!addr1(7) & (!\addr1[6]~25\ & VCC))
-- \addr1[7]~27\ = CARRY((addr1(7) & !\addr1[6]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(7),
	datad => VCC,
	cin => \addr1[6]~25\,
	combout => \addr1[7]~26_combout\,
	cout => \addr1[7]~27\);

-- Location: LCFF_X20_Y4_N23
\addr1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[7]~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(7));

-- Location: LCCOMB_X20_Y4_N24
\addr1[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[8]~28_combout\ = (addr1(8) & (!\addr1[7]~27\)) # (!addr1(8) & ((\addr1[7]~27\) # (GND)))
-- \addr1[8]~29\ = CARRY((!\addr1[7]~27\) # (!addr1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(8),
	datad => VCC,
	cin => \addr1[7]~27\,
	combout => \addr1[8]~28_combout\,
	cout => \addr1[8]~29\);

-- Location: LCCOMB_X20_Y4_N26
\addr1[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[9]~30_combout\ = (addr1(9) & (\addr1[8]~29\ $ (GND))) # (!addr1(9) & (!\addr1[8]~29\ & VCC))
-- \addr1[9]~31\ = CARRY((addr1(9) & !\addr1[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(9),
	datad => VCC,
	cin => \addr1[8]~29\,
	combout => \addr1[9]~30_combout\,
	cout => \addr1[9]~31\);

-- Location: LCFF_X20_Y4_N27
\addr1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[9]~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(9));

-- Location: LCFF_X20_Y4_N25
\addr1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[8]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(8));

-- Location: LCCOMB_X20_Y4_N28
\addr1[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[10]~32_combout\ = \addr1[9]~31\ $ (addr1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => addr1(10),
	cin => \addr1[9]~31\,
	combout => \addr1[10]~32_combout\);

-- Location: LCFF_X20_Y4_N29
\addr1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[10]~32_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(10));

-- Location: LCCOMB_X20_Y4_N30
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (addr1(9) & (addr1(8) & addr1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr1(9),
	datac => addr1(8),
	datad => addr1(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y4_N4
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (addr1(4) & (addr1(7) & (addr1(6) & addr1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr1(4),
	datab => addr1(7),
	datac => addr1(6),
	datad => addr1(5),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X20_Y4_N15
\addr1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[3]~18_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(3));

-- Location: LCFF_X20_Y4_N11
\addr1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[1]~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr1[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(1));

-- Location: LCCOMB_X20_Y4_N6
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (addr1(2) & (addr1(3) & (addr1(0) & addr1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr1(2),
	datab => addr1(3),
	datac => addr1(0),
	datad => addr1(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X20_Y4_N0
\addr1[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[10]~12_combout\ = (\state_wr.WR_FIFO~regout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_FIFO~regout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \addr1[10]~12_combout\);

-- Location: LCCOMB_X19_Y4_N6
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\FILA|count\(10)) # ((\FILA|count\(9) & !\FILA|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(9),
	datab => \FILA|count\(10),
	datac => \FILA|Equal1~4_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X19_Y4_N28
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\LessThan0~0_combout\ & (((\state_wr.WR_WAIT~regout\ & \Selector3~0_combout\)))) # (!\LessThan0~0_combout\ & ((\addr1[10]~12_combout\) # ((\state_wr.WR_WAIT~regout\ & \Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \addr1[10]~12_combout\,
	datac => \state_wr.WR_WAIT~regout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCFF_X19_Y4_N29
\state_wr.WR_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_wr.WR_WAIT~regout\);

-- Location: LCCOMB_X19_Y4_N10
\state_wr.WR_FIFO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr.WR_FIFO~0_combout\ = (!\FILA|count\(10) & (\state_wr.WR_WAIT~regout\ & ((\FILA|Equal1~4_combout\) # (!\FILA|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(9),
	datab => \FILA|count\(10),
	datac => \FILA|Equal1~4_combout\,
	datad => \state_wr.WR_WAIT~regout\,
	combout => \state_wr.WR_FIFO~0_combout\);

-- Location: LCCOMB_X19_Y4_N30
\state_wr.WR_FIFO~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr.WR_FIFO~2_combout\ = (\state_wr.WR_FIFO~regout\ & (!\state_wr.WR_FIFO~1_combout\)) # (!\state_wr.WR_FIFO~regout\ & (((\state_wr.WR_FIFO~0_combout\) # (!\state_wr.RESET~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_FIFO~1_combout\,
	datab => \state_wr.RESET~regout\,
	datac => \state_wr.WR_FIFO~regout\,
	datad => \state_wr.WR_FIFO~0_combout\,
	combout => \state_wr.WR_FIFO~2_combout\);

-- Location: LCFF_X19_Y4_N31
\state_wr.WR_FIFO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_wr.WR_FIFO~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_wr.WR_FIFO~regout\);

-- Location: LCCOMB_X19_Y4_N0
\fifo_we~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_we~0_combout\ = (\LessThan0~0_combout\ & ((\addr1[10]~12_combout\) # ((!\state_wr.WR_FIFO~regout\ & \fifo_we~regout\)))) # (!\LessThan0~0_combout\ & (!\state_wr.WR_FIFO~regout\ & (\fifo_we~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \state_wr.WR_FIFO~regout\,
	datac => \fifo_we~regout\,
	datad => \addr1[10]~12_combout\,
	combout => \fifo_we~0_combout\);

-- Location: LCFF_X19_Y4_N1
fifo_we : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_we~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_we~regout\);

-- Location: LCCOMB_X18_Y4_N2
\FILA|count[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[0]~31_combout\ = (\fifo_we~regout\ & (((!\FILA|count\(10))))) # (!\fifo_we~regout\ & ((\FILA|count\(9)) # ((\FILA|count\(10)) # (!\FILA|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(9),
	datab => \fifo_we~regout\,
	datac => \FILA|Equal1~4_combout\,
	datad => \FILA|count\(10),
	combout => \FILA|count[0]~31_combout\);

-- Location: LCFF_X18_Y4_N27
\FILA|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[8]~27_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(8));

-- Location: LCCOMB_X18_Y4_N28
\FILA|count[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[9]~29_combout\ = (\FILA|process_0~0_combout\ & ((\FILA|count\(9) & (!\FILA|count[8]~28\)) # (!\FILA|count\(9) & ((\FILA|count[8]~28\) # (GND))))) # (!\FILA|process_0~0_combout\ & ((\FILA|count\(9) & (\FILA|count[8]~28\ & VCC)) # 
-- (!\FILA|count\(9) & (!\FILA|count[8]~28\))))
-- \FILA|count[9]~30\ = CARRY((\FILA|process_0~0_combout\ & ((!\FILA|count[8]~28\) # (!\FILA|count\(9)))) # (!\FILA|process_0~0_combout\ & (!\FILA|count\(9) & !\FILA|count[8]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|process_0~0_combout\,
	datab => \FILA|count\(9),
	datad => VCC,
	cin => \FILA|count[8]~28\,
	combout => \FILA|count[9]~29_combout\,
	cout => \FILA|count[9]~30\);

-- Location: LCFF_X18_Y4_N29
\FILA|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[9]~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(9));

-- Location: LCCOMB_X18_Y4_N30
\FILA|count[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[10]~32_combout\ = \FILA|process_0~0_combout\ $ (\FILA|count\(10) $ (\FILA|count[9]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|process_0~0_combout\,
	datab => \FILA|count\(10),
	cin => \FILA|count[9]~30\,
	combout => \FILA|count[10]~32_combout\);

-- Location: LCFF_X18_Y4_N31
\FILA|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[10]~32_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(10));

-- Location: LCCOMB_X19_Y4_N18
\FILA|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|process_0~0_combout\ = (!\FILA|count\(10) & \fifo_we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FILA|count\(10),
	datad => \fifo_we~regout\,
	combout => \FILA|process_0~0_combout\);

-- Location: LCFF_X18_Y4_N23
\FILA|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[6]~23_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(6));

-- Location: LCFF_X18_Y4_N25
\FILA|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[7]~25_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(7));

-- Location: LCFF_X18_Y4_N19
\FILA|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[4]~19_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \FILA|count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(4));

-- Location: LCCOMB_X18_Y4_N6
\FILA|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal1~1_combout\ = (!\FILA|count\(5) & (!\FILA|count\(6) & (!\FILA|count\(7) & !\FILA|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(5),
	datab => \FILA|count\(6),
	datac => \FILA|count\(7),
	datad => \FILA|count\(4),
	combout => \FILA|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y4_N2
\FILA|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal1~2_combout\ = (!\FILA|count\(8) & !\FILA|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FILA|count\(8),
	datad => \FILA|count\(10),
	combout => \FILA|Equal1~2_combout\);

-- Location: LCCOMB_X19_Y4_N24
\FILA|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal1~3_combout\ = (\FILA|Equal1~0_combout\ & (\FILA|Equal1~1_combout\ & (!\FILA|count\(9) & \FILA|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|Equal1~0_combout\,
	datab => \FILA|Equal1~1_combout\,
	datac => \FILA|count\(9),
	datad => \FILA|Equal1~2_combout\,
	combout => \FILA|Equal1~3_combout\);

-- Location: LCCOMB_X18_Y4_N0
\state_rd.IDLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd.IDLE~0_combout\ = (\state_rd.IDLE~regout\) # (((!\Equal2~3_combout\ & \state_rd.RD_FIFO~regout\)) # (!\FILA|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \state_rd.RD_FIFO~regout\,
	datac => \state_rd.IDLE~regout\,
	datad => \FILA|Equal1~3_combout\,
	combout => \state_rd.IDLE~0_combout\);

-- Location: LCFF_X18_Y4_N1
\state_rd.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_rd.IDLE~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_rd.IDLE~regout\);

-- Location: LCCOMB_X19_Y4_N14
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state_rd.RD_FIFO~regout\ & (((\Equal2~3_combout\)))) # (!\state_rd.RD_FIFO~regout\ & (!\FILA|Equal1~3_combout\ & (!\state_rd.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|Equal1~3_combout\,
	datab => \state_rd.IDLE~regout\,
	datac => \state_rd.RD_FIFO~regout\,
	datad => \Equal2~3_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X19_Y4_N15
\state_rd.RD_FIFO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_rd.RD_FIFO~regout\);

-- Location: LCCOMB_X19_Y4_N22
\read_divider~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \read_divider~1_combout\ = (read_divider(0) & ((!read_divider(1)))) # (!read_divider(0) & (!read_divider(2) & read_divider(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_divider(2),
	datab => read_divider(0),
	datac => read_divider(1),
	combout => \read_divider~1_combout\);

-- Location: LCFF_X19_Y4_N23
\read_divider[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \read_divider~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_rd.RD_FIFO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => read_divider(1));

-- Location: LCCOMB_X19_Y4_N8
\read_divider~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \read_divider~2_combout\ = (!read_divider(0) & ((!read_divider(1)) # (!read_divider(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_divider(2),
	datac => read_divider(0),
	datad => read_divider(1),
	combout => \read_divider~2_combout\);

-- Location: LCFF_X19_Y4_N9
\read_divider[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \read_divider~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state_rd.RD_FIFO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => read_divider(0));

-- Location: LCCOMB_X19_Y4_N26
\addr2[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[10]~10_combout\ = (read_divider(2) & (\state_rd.RD_FIFO~regout\ & (!read_divider(0) & read_divider(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_divider(2),
	datab => \state_rd.RD_FIFO~regout\,
	datac => read_divider(0),
	datad => read_divider(1),
	combout => \addr2[10]~10_combout\);

-- Location: LCCOMB_X19_Y4_N4
\addr2[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[0]~11_combout\ = addr2(0) $ (((!\FILA|Equal1~3_combout\ & \addr2[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|Equal1~3_combout\,
	datac => addr2(0),
	datad => \addr2[10]~10_combout\,
	combout => \addr2[0]~11_combout\);

-- Location: LCFF_X19_Y4_N5
\addr2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[0]~11_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(0));

-- Location: LCCOMB_X17_Y4_N8
\addr2[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[2]~15_combout\ = (addr2(2) & (!\addr2[1]~13\)) # (!addr2(2) & ((\addr2[1]~13\) # (GND)))
-- \addr2[2]~16\ = CARRY((!\addr2[1]~13\) # (!addr2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(2),
	datad => VCC,
	cin => \addr2[1]~13\,
	combout => \addr2[2]~15_combout\,
	cout => \addr2[2]~16\);

-- Location: LCCOMB_X17_Y4_N0
\addr2[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[10]~14_combout\ = (\addr2[10]~10_combout\ & ((\FILA|count\(10)) # ((\FILA|count\(9)) # (!\FILA|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(10),
	datab => \FILA|count\(9),
	datac => \addr2[10]~10_combout\,
	datad => \FILA|Equal1~4_combout\,
	combout => \addr2[10]~14_combout\);

-- Location: LCFF_X17_Y4_N9
\addr2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[2]~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(2));

-- Location: LCCOMB_X17_Y4_N10
\addr2[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[3]~17_combout\ = (addr2(3) & (\addr2[2]~16\ $ (GND))) # (!addr2(3) & (!\addr2[2]~16\ & VCC))
-- \addr2[3]~18\ = CARRY((addr2(3) & !\addr2[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(3),
	datad => VCC,
	cin => \addr2[2]~16\,
	combout => \addr2[3]~17_combout\,
	cout => \addr2[3]~18\);

-- Location: LCCOMB_X17_Y4_N12
\addr2[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[4]~19_combout\ = (addr2(4) & (!\addr2[3]~18\)) # (!addr2(4) & ((\addr2[3]~18\) # (GND)))
-- \addr2[4]~20\ = CARRY((!\addr2[3]~18\) # (!addr2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(4),
	datad => VCC,
	cin => \addr2[3]~18\,
	combout => \addr2[4]~19_combout\,
	cout => \addr2[4]~20\);

-- Location: LCCOMB_X17_Y4_N14
\addr2[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[5]~21_combout\ = (addr2(5) & (\addr2[4]~20\ $ (GND))) # (!addr2(5) & (!\addr2[4]~20\ & VCC))
-- \addr2[5]~22\ = CARRY((addr2(5) & !\addr2[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(5),
	datad => VCC,
	cin => \addr2[4]~20\,
	combout => \addr2[5]~21_combout\,
	cout => \addr2[5]~22\);

-- Location: LCFF_X17_Y4_N15
\addr2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[5]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(5));

-- Location: LCCOMB_X17_Y4_N18
\addr2[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[7]~25_combout\ = (addr2(7) & (\addr2[6]~24\ $ (GND))) # (!addr2(7) & (!\addr2[6]~24\ & VCC))
-- \addr2[7]~26\ = CARRY((addr2(7) & !\addr2[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(7),
	datad => VCC,
	cin => \addr2[6]~24\,
	combout => \addr2[7]~25_combout\,
	cout => \addr2[7]~26\);

-- Location: LCFF_X17_Y4_N19
\addr2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[7]~25_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(7));

-- Location: LCFF_X17_Y4_N13
\addr2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[4]~19_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(4));

-- Location: LCCOMB_X17_Y4_N2
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (((!addr2(4)) # (!addr2(5))) # (!addr2(7))) # (!addr2(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(6),
	datab => addr2(7),
	datac => addr2(5),
	datad => addr2(4),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X17_Y4_N22
\addr2[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[9]~29_combout\ = (addr2(9) & (\addr2[8]~28\ $ (GND))) # (!addr2(9) & (!\addr2[8]~28\ & VCC))
-- \addr2[9]~30\ = CARRY((addr2(9) & !\addr2[8]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(9),
	datad => VCC,
	cin => \addr2[8]~28\,
	combout => \addr2[9]~29_combout\,
	cout => \addr2[9]~30\);

-- Location: LCFF_X17_Y4_N23
\addr2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[9]~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(9));

-- Location: LCCOMB_X17_Y4_N24
\addr2[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[10]~31_combout\ = addr2(10) $ (\addr2[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(10),
	cin => \addr2[9]~30\,
	combout => \addr2[10]~31_combout\);

-- Location: LCFF_X17_Y4_N25
\addr2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[10]~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(10));

-- Location: LCCOMB_X17_Y4_N4
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ((!addr2(9)) # (!addr2(10))) # (!addr2(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(8),
	datac => addr2(10),
	datad => addr2(9),
	combout => \Equal2~2_combout\);

-- Location: LCFF_X17_Y4_N11
\addr2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[3]~17_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \addr2[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(3));

-- Location: LCCOMB_X17_Y4_N28
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (((!addr2(3)) # (!addr2(0))) # (!addr2(2))) # (!addr2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(1),
	datab => addr2(2),
	datac => addr2(0),
	datad => addr2(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X17_Y4_N30
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~1_combout\) # ((\Equal2~2_combout\) # (\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~3_combout\);

-- Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\completo~I\ : cycloneii_io
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
	datain => \ALT_INV_Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_completo);
END structure;


