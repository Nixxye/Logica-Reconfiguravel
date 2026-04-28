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

-- DATE "04/28/2026 18:09:27"

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
	en_bram1 : IN std_logic;
	en_bram2 : IN std_logic;
	bram1_init_we : IN std_logic;
	bram1_init_addr : IN std_logic_vector(10 DOWNTO 0);
	bram1_init_di : IN std_logic_vector(7 DOWNTO 0);
	completo : OUT std_logic
	);
END sistema_fluxo;

-- Design Ports Information
-- en_bram1	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_bram2	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_we	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[0]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[1]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[5]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[6]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[7]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[8]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[9]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[10]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[2]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[7]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- completo	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- clk	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_en_bram1 : std_logic;
SIGNAL ww_en_bram2 : std_logic;
SIGNAL ww_bram1_init_we : std_logic;
SIGNAL ww_bram1_init_addr : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_bram1_init_di : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_completo : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \addr2[3]~18_combout\ : std_logic;
SIGNAL \addr2[6]~24_combout\ : std_logic;
SIGNAL \addr2[8]~28_combout\ : std_logic;
SIGNAL \FILA|count[1]~15_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \state_rd.RD_FIFO~regout\ : std_logic;
SIGNAL \state_rd.IDLE~regout\ : std_logic;
SIGNAL \state_rd~11_combout\ : std_logic;
SIGNAL \state_rd~12_combout\ : std_logic;
SIGNAL \state_rd~13_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \fifo_we~0_combout\ : std_logic;
SIGNAL \state_rd.IDLE~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \addr2[0]~11_combout\ : std_logic;
SIGNAL \reset_counter[0]~0_combout\ : std_logic;
SIGNAL \reset_counter[1]~1_combout\ : std_logic;
SIGNAL \reset_counter[2]~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \reset_done~regout\ : std_logic;
SIGNAL \FILA|count[9]~32\ : std_logic;
SIGNAL \FILA|count[10]~33_combout\ : std_logic;
SIGNAL \FILA|count[0]~11_combout\ : std_logic;
SIGNAL \FILA|count[0]~12\ : std_logic;
SIGNAL \FILA|count[1]~16\ : std_logic;
SIGNAL \FILA|count[2]~17_combout\ : std_logic;
SIGNAL \FILA|count[2]~18\ : std_logic;
SIGNAL \FILA|count[3]~19_combout\ : std_logic;
SIGNAL \FILA|Equal0~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \state_wr.WR_WAIT~regout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \state_wr~10_combout\ : std_logic;
SIGNAL \state_wr.WR_FIFO~regout\ : std_logic;
SIGNAL \fifo_we~1_combout\ : std_logic;
SIGNAL \fifo_we~regout\ : std_logic;
SIGNAL \rd_clock_divider~0_combout\ : std_logic;
SIGNAL \rd_clock_divider~1_combout\ : std_logic;
SIGNAL \rd_clock_divider~2_combout\ : std_logic;
SIGNAL \rd_clock_enable~0_combout\ : std_logic;
SIGNAL \rd_clock_enable~regout\ : std_logic;
SIGNAL \state_rd~14_combout\ : std_logic;
SIGNAL \fifo_re~regout\ : std_logic;
SIGNAL \FILA|count[7]~13_combout\ : std_logic;
SIGNAL \FILA|count[7]~14_combout\ : std_logic;
SIGNAL \FILA|count[3]~20\ : std_logic;
SIGNAL \FILA|count[4]~22\ : std_logic;
SIGNAL \FILA|count[5]~23_combout\ : std_logic;
SIGNAL \FILA|count[5]~24\ : std_logic;
SIGNAL \FILA|count[6]~25_combout\ : std_logic;
SIGNAL \FILA|count[6]~26\ : std_logic;
SIGNAL \FILA|count[7]~27_combout\ : std_logic;
SIGNAL \FILA|count[7]~28\ : std_logic;
SIGNAL \FILA|count[8]~29_combout\ : std_logic;
SIGNAL \FILA|count[8]~30\ : std_logic;
SIGNAL \FILA|count[9]~31_combout\ : std_logic;
SIGNAL \FILA|count[4]~21_combout\ : std_logic;
SIGNAL \FILA|Equal0~1_combout\ : std_logic;
SIGNAL \FILA|Equal0~2_combout\ : std_logic;
SIGNAL \state_rd~10_combout\ : std_logic;
SIGNAL \addr2[5]~13_combout\ : std_logic;
SIGNAL \addr2[0]~12\ : std_logic;
SIGNAL \addr2[1]~14_combout\ : std_logic;
SIGNAL \addr2[1]~15\ : std_logic;
SIGNAL \addr2[2]~16_combout\ : std_logic;
SIGNAL \addr2[2]~17\ : std_logic;
SIGNAL \addr2[3]~19\ : std_logic;
SIGNAL \addr2[4]~20_combout\ : std_logic;
SIGNAL \addr2[4]~21\ : std_logic;
SIGNAL \addr2[5]~23\ : std_logic;
SIGNAL \addr2[6]~25\ : std_logic;
SIGNAL \addr2[7]~26_combout\ : std_logic;
SIGNAL \addr2[7]~27\ : std_logic;
SIGNAL \addr2[8]~29\ : std_logic;
SIGNAL \addr2[9]~30_combout\ : std_logic;
SIGNAL \addr2[9]~31\ : std_logic;
SIGNAL \addr2[10]~32_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \addr2[5]~22_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL reset_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL rd_clock_divider : std_logic_vector(2 DOWNTO 0);
SIGNAL addr2 : std_logic_vector(10 DOWNTO 0);
SIGNAL addr1 : std_logic_vector(10 DOWNTO 0);
SIGNAL \FILA|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_reset_done~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_en_bram1 <= en_bram1;
ww_en_bram2 <= en_bram2;
ww_bram1_init_we <= bram1_init_we;
ww_bram1_init_addr <= bram1_init_addr;
ww_bram1_init_di <= bram1_init_di;
completo <= ww_completo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_done~regout\ <= NOT \reset_done~regout\;

-- Location: LCFF_X59_Y20_N7
\addr2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[3]~18_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(3));

-- Location: LCFF_X59_Y20_N13
\addr2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[6]~24_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(6));

-- Location: LCFF_X59_Y20_N17
\addr2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[8]~28_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(8));

-- Location: LCFF_X61_Y20_N11
\FILA|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[1]~15_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(1));

-- Location: LCCOMB_X59_Y20_N6
\addr2[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[3]~18_combout\ = (addr2(3) & (!\addr2[2]~17\)) # (!addr2(3) & ((\addr2[2]~17\) # (GND)))
-- \addr2[3]~19\ = CARRY((!\addr2[2]~17\) # (!addr2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(3),
	datad => VCC,
	cin => \addr2[2]~17\,
	combout => \addr2[3]~18_combout\,
	cout => \addr2[3]~19\);

-- Location: LCCOMB_X59_Y20_N12
\addr2[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[6]~24_combout\ = (addr2(6) & (\addr2[5]~23\ $ (GND))) # (!addr2(6) & (!\addr2[5]~23\ & VCC))
-- \addr2[6]~25\ = CARRY((addr2(6) & !\addr2[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(6),
	datad => VCC,
	cin => \addr2[5]~23\,
	combout => \addr2[6]~24_combout\,
	cout => \addr2[6]~25\);

-- Location: LCCOMB_X59_Y20_N16
\addr2[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[8]~28_combout\ = (addr2(8) & (\addr2[7]~27\ $ (GND))) # (!addr2(8) & (!\addr2[7]~27\ & VCC))
-- \addr2[8]~29\ = CARRY((addr2(8) & !\addr2[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(8),
	datad => VCC,
	cin => \addr2[7]~27\,
	combout => \addr2[8]~28_combout\,
	cout => \addr2[8]~29\);

-- Location: LCCOMB_X61_Y20_N10
\FILA|count[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[1]~15_combout\ = (\FILA|count\(1) & ((\FILA|count[7]~14_combout\ & (\FILA|count[0]~12\ & VCC)) # (!\FILA|count[7]~14_combout\ & (!\FILA|count[0]~12\)))) # (!\FILA|count\(1) & ((\FILA|count[7]~14_combout\ & (!\FILA|count[0]~12\)) # 
-- (!\FILA|count[7]~14_combout\ & ((\FILA|count[0]~12\) # (GND)))))
-- \FILA|count[1]~16\ = CARRY((\FILA|count\(1) & (!\FILA|count[7]~14_combout\ & !\FILA|count[0]~12\)) # (!\FILA|count\(1) & ((!\FILA|count[0]~12\) # (!\FILA|count[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(1),
	datab => \FILA|count[7]~14_combout\,
	datad => VCC,
	cin => \FILA|count[0]~12\,
	combout => \FILA|count[1]~15_combout\,
	cout => \FILA|count[1]~16\);

-- Location: LCFF_X63_Y20_N7
\addr1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(2));

-- Location: LCFF_X62_Y20_N7
\addr1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(10));

-- Location: LCCOMB_X63_Y20_N14
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (addr1(2) & (\Add2~3\ $ (GND))) # (!addr1(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((addr1(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X63_Y20_N28
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (addr1(9) & (!\Add2~17\)) # (!addr1(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!addr1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X63_Y20_N30
\Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = addr1(10) $ (!\Add2~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(10),
	cin => \Add2~19\,
	combout => \Add2~20_combout\);

-- Location: LCFF_X60_Y20_N13
\state_rd.RD_FIFO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_rd~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_rd.RD_FIFO~regout\);

-- Location: LCFF_X60_Y20_N7
\state_rd.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_rd.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_rd.IDLE~regout\);

-- Location: LCCOMB_X60_Y20_N28
\state_rd~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~11_combout\ = (!\state_rd.IDLE~regout\ & ((\FILA|count\(10)) # (!\FILA|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rd.IDLE~regout\,
	datab => \FILA|count\(10),
	datad => \FILA|Equal0~2_combout\,
	combout => \state_rd~11_combout\);

-- Location: LCCOMB_X60_Y20_N10
\state_rd~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~12_combout\ = (\state_rd~10_combout\ & (\Equal2~3_combout\ & ((\FILA|count\(10)) # (!\FILA|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|Equal0~2_combout\,
	datab => \FILA|count\(10),
	datac => \state_rd~10_combout\,
	datad => \Equal2~3_combout\,
	combout => \state_rd~12_combout\);

-- Location: LCCOMB_X60_Y20_N12
\state_rd~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~13_combout\ = (\reset_done~regout\ & (!\state_rd~12_combout\ & ((\state_rd~11_combout\) # (\state_rd.RD_FIFO~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => \state_rd~11_combout\,
	datac => \state_rd.RD_FIFO~regout\,
	datad => \state_rd~12_combout\,
	combout => \state_rd~13_combout\);

-- Location: LCCOMB_X62_Y20_N18
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!\FILA|count\(10) & ((!\FILA|count\(9)) # (!\FILA|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FILA|count\(10),
	datac => \FILA|count\(8),
	datad => \FILA|count\(9),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X62_Y20_N24
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (addr1(0) & (addr1(1) & (addr1(3) & addr1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr1(0),
	datab => addr1(1),
	datac => addr1(3),
	datad => addr1(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X62_Y20_N30
\fifo_we~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_we~0_combout\ = (\LessThan1~0_combout\ & (((!\Equal1~0_combout\) # (!\Equal1~1_combout\)) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \fifo_we~0_combout\);

-- Location: LCCOMB_X60_Y20_N6
\state_rd.IDLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd.IDLE~0_combout\ = (\reset_done~regout\ & ((\state_rd~11_combout\) # ((\state_rd.IDLE~regout\) # (\state_rd~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => \state_rd~11_combout\,
	datac => \state_rd.IDLE~regout\,
	datad => \state_rd~12_combout\,
	combout => \state_rd.IDLE~0_combout\);

-- Location: LCCOMB_X63_Y20_N6
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state_wr.WR_WAIT~regout\ & ((addr1(2)) # ((\state_wr.WR_FIFO~regout\ & \Add2~4_combout\)))) # (!\state_wr.WR_WAIT~regout\ & (\state_wr.WR_FIFO~regout\ & ((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_WAIT~regout\,
	datab => \state_wr.WR_FIFO~regout\,
	datac => addr1(2),
	datad => \Add2~4_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X62_Y20_N6
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state_wr.WR_FIFO~regout\ & ((\Add2~20_combout\) # ((\state_wr.WR_WAIT~regout\ & addr1(10))))) # (!\state_wr.WR_FIFO~regout\ & (\state_wr.WR_WAIT~regout\ & (addr1(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_FIFO~regout\,
	datab => \state_wr.WR_WAIT~regout\,
	datac => addr1(10),
	datad => \Add2~20_combout\,
	combout => \Selector0~0_combout\);

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

-- Location: LCCOMB_X59_Y20_N0
\addr2[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[0]~11_combout\ = addr2(0) $ (VCC)
-- \addr2[0]~12\ = CARRY(addr2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr2(0),
	datad => VCC,
	combout => \addr2[0]~11_combout\,
	cout => \addr2[0]~12\);

-- Location: LCCOMB_X58_Y20_N12
\reset_counter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_counter[0]~0_combout\ = (reset_counter(2) & ((reset_counter(0)) # (!reset_counter(1)))) # (!reset_counter(2) & (!reset_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_counter(2),
	datac => reset_counter(0),
	datad => reset_counter(1),
	combout => \reset_counter[0]~0_combout\);

-- Location: LCFF_X58_Y20_N13
\reset_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(0));

-- Location: LCCOMB_X58_Y20_N22
\reset_counter[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_counter[1]~1_combout\ = reset_counter(1) $ (((!reset_counter(2) & reset_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_counter(2),
	datac => reset_counter(1),
	datad => reset_counter(0),
	combout => \reset_counter[1]~1_combout\);

-- Location: LCFF_X58_Y20_N23
\reset_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(1));

-- Location: LCCOMB_X58_Y20_N16
\reset_counter[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_counter[2]~2_combout\ = (reset_counter(2)) # ((reset_counter(0) & reset_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_counter(0),
	datac => reset_counter(2),
	datad => reset_counter(1),
	combout => \reset_counter[2]~2_combout\);

-- Location: LCFF_X58_Y20_N17
\reset_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(2));

-- Location: LCCOMB_X61_Y20_N0
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (reset_counter(2) & ((reset_counter(0)) # (reset_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_counter(2),
	datac => reset_counter(0),
	datad => reset_counter(1),
	combout => \LessThan0~0_combout\);

-- Location: LCFF_X61_Y20_N1
reset_done : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_done~regout\);

-- Location: LCCOMB_X61_Y20_N26
\FILA|count[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[9]~31_combout\ = (\FILA|count[7]~14_combout\ & ((\FILA|count\(9) & (\FILA|count[8]~30\ & VCC)) # (!\FILA|count\(9) & (!\FILA|count[8]~30\)))) # (!\FILA|count[7]~14_combout\ & ((\FILA|count\(9) & (!\FILA|count[8]~30\)) # (!\FILA|count\(9) & 
-- ((\FILA|count[8]~30\) # (GND)))))
-- \FILA|count[9]~32\ = CARRY((\FILA|count[7]~14_combout\ & (!\FILA|count\(9) & !\FILA|count[8]~30\)) # (!\FILA|count[7]~14_combout\ & ((!\FILA|count[8]~30\) # (!\FILA|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count[7]~14_combout\,
	datab => \FILA|count\(9),
	datad => VCC,
	cin => \FILA|count[8]~30\,
	combout => \FILA|count[9]~31_combout\,
	cout => \FILA|count[9]~32\);

-- Location: LCCOMB_X61_Y20_N28
\FILA|count[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[10]~33_combout\ = \FILA|count\(10) $ (\FILA|count[9]~32\ $ (!\FILA|count[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FILA|count\(10),
	datad => \FILA|count[7]~14_combout\,
	cin => \FILA|count[9]~32\,
	combout => \FILA|count[10]~33_combout\);

-- Location: LCCOMB_X61_Y20_N8
\FILA|count[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[0]~11_combout\ = \FILA|count\(0) $ (VCC)
-- \FILA|count[0]~12\ = CARRY(\FILA|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FILA|count\(0),
	datad => VCC,
	combout => \FILA|count[0]~11_combout\,
	cout => \FILA|count[0]~12\);

-- Location: LCFF_X61_Y20_N9
\FILA|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[0]~11_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(0));

-- Location: LCCOMB_X61_Y20_N12
\FILA|count[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[2]~17_combout\ = ((\FILA|count[7]~14_combout\ $ (\FILA|count\(2) $ (!\FILA|count[1]~16\)))) # (GND)
-- \FILA|count[2]~18\ = CARRY((\FILA|count[7]~14_combout\ & ((\FILA|count\(2)) # (!\FILA|count[1]~16\))) # (!\FILA|count[7]~14_combout\ & (\FILA|count\(2) & !\FILA|count[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count[7]~14_combout\,
	datab => \FILA|count\(2),
	datad => VCC,
	cin => \FILA|count[1]~16\,
	combout => \FILA|count[2]~17_combout\,
	cout => \FILA|count[2]~18\);

-- Location: LCFF_X61_Y20_N13
\FILA|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[2]~17_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(2));

-- Location: LCCOMB_X61_Y20_N14
\FILA|count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[3]~19_combout\ = (\FILA|count[7]~14_combout\ & ((\FILA|count\(3) & (\FILA|count[2]~18\ & VCC)) # (!\FILA|count\(3) & (!\FILA|count[2]~18\)))) # (!\FILA|count[7]~14_combout\ & ((\FILA|count\(3) & (!\FILA|count[2]~18\)) # (!\FILA|count\(3) & 
-- ((\FILA|count[2]~18\) # (GND)))))
-- \FILA|count[3]~20\ = CARRY((\FILA|count[7]~14_combout\ & (!\FILA|count\(3) & !\FILA|count[2]~18\)) # (!\FILA|count[7]~14_combout\ & ((!\FILA|count[2]~18\) # (!\FILA|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count[7]~14_combout\,
	datab => \FILA|count\(3),
	datad => VCC,
	cin => \FILA|count[2]~18\,
	combout => \FILA|count[3]~19_combout\,
	cout => \FILA|count[3]~20\);

-- Location: LCFF_X61_Y20_N15
\FILA|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[3]~19_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(3));

-- Location: LCCOMB_X61_Y20_N30
\FILA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal0~0_combout\ = (!\FILA|count\(1) & (!\FILA|count\(3) & (!\FILA|count\(0) & !\FILA|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(1),
	datab => \FILA|count\(3),
	datac => \FILA|count\(0),
	datad => \FILA|count\(2),
	combout => \FILA|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y20_N24
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\FILA|Equal0~1_combout\ & (!\FILA|count\(10) & (!\FILA|count\(8) & \FILA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|Equal0~1_combout\,
	datab => \FILA|count\(10),
	datac => \FILA|count\(8),
	datad => \FILA|Equal0~0_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X63_Y20_N10
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\fifo_we~0_combout\ & (addr1(0) $ (VCC))) # (!\fifo_we~0_combout\ & (addr1(0) & VCC))
-- \Add2~1\ = CARRY((\fifo_we~0_combout\ & addr1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_we~0_combout\,
	datab => addr1(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X62_Y20_N4
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state_wr.WR_FIFO~regout\ & ((\Add2~0_combout\) # ((addr1(0) & \state_wr.WR_WAIT~regout\)))) # (!\state_wr.WR_FIFO~regout\ & (((addr1(0) & \state_wr.WR_WAIT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_FIFO~regout\,
	datab => \Add2~0_combout\,
	datac => addr1(0),
	datad => \state_wr.WR_WAIT~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X62_Y20_N5
\addr1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(0));

-- Location: LCCOMB_X63_Y20_N12
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (addr1(1) & (!\Add2~1\)) # (!addr1(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!addr1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X63_Y20_N0
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state_wr.WR_WAIT~regout\ & ((addr1(1)) # ((\state_wr.WR_FIFO~regout\ & \Add2~2_combout\)))) # (!\state_wr.WR_WAIT~regout\ & (\state_wr.WR_FIFO~regout\ & ((\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_WAIT~regout\,
	datab => \state_wr.WR_FIFO~regout\,
	datac => addr1(1),
	datad => \Add2~2_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X63_Y20_N1
\addr1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(1));

-- Location: LCCOMB_X63_Y20_N16
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (addr1(3) & (!\Add2~5\)) # (!addr1(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!addr1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X63_Y20_N8
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state_wr.WR_WAIT~regout\ & ((addr1(3)) # ((\state_wr.WR_FIFO~regout\ & \Add2~6_combout\)))) # (!\state_wr.WR_WAIT~regout\ & (\state_wr.WR_FIFO~regout\ & ((\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_WAIT~regout\,
	datab => \state_wr.WR_FIFO~regout\,
	datac => addr1(3),
	datad => \Add2~6_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X63_Y20_N9
\addr1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(3));

-- Location: LCCOMB_X63_Y20_N18
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (addr1(4) & (\Add2~7\ $ (GND))) # (!addr1(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((addr1(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X63_Y20_N2
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state_wr.WR_WAIT~regout\ & ((addr1(4)) # ((\state_wr.WR_FIFO~regout\ & \Add2~8_combout\)))) # (!\state_wr.WR_WAIT~regout\ & (\state_wr.WR_FIFO~regout\ & ((\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_WAIT~regout\,
	datab => \state_wr.WR_FIFO~regout\,
	datac => addr1(4),
	datad => \Add2~8_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X63_Y20_N3
\addr1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(4));

-- Location: LCCOMB_X63_Y20_N20
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (addr1(5) & (!\Add2~9\)) # (!addr1(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!addr1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X63_Y20_N4
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state_wr.WR_WAIT~regout\ & ((addr1(5)) # ((\state_wr.WR_FIFO~regout\ & \Add2~10_combout\)))) # (!\state_wr.WR_WAIT~regout\ & (\state_wr.WR_FIFO~regout\ & ((\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_WAIT~regout\,
	datab => \state_wr.WR_FIFO~regout\,
	datac => addr1(5),
	datad => \Add2~10_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X63_Y20_N5
\addr1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(5));

-- Location: LCCOMB_X63_Y20_N22
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (addr1(6) & (\Add2~11\ $ (GND))) # (!addr1(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((addr1(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X62_Y20_N22
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state_wr.WR_FIFO~regout\ & ((\Add2~12_combout\) # ((\state_wr.WR_WAIT~regout\ & addr1(6))))) # (!\state_wr.WR_FIFO~regout\ & (\state_wr.WR_WAIT~regout\ & (addr1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_FIFO~regout\,
	datab => \state_wr.WR_WAIT~regout\,
	datac => addr1(6),
	datad => \Add2~12_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X62_Y20_N23
\addr1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(6));

-- Location: LCCOMB_X63_Y20_N24
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (addr1(7) & (!\Add2~13\)) # (!addr1(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!addr1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X62_Y20_N28
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state_wr.WR_FIFO~regout\ & ((\Add2~14_combout\) # ((\state_wr.WR_WAIT~regout\ & addr1(7))))) # (!\state_wr.WR_FIFO~regout\ & (\state_wr.WR_WAIT~regout\ & (addr1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_FIFO~regout\,
	datab => \state_wr.WR_WAIT~regout\,
	datac => addr1(7),
	datad => \Add2~14_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X62_Y20_N29
\addr1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(7));

-- Location: LCCOMB_X62_Y20_N14
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (addr1(4) & (addr1(6) & (addr1(7) & addr1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr1(4),
	datab => addr1(6),
	datac => addr1(7),
	datad => addr1(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X62_Y20_N20
\Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\state_wr.WR_FIFO~regout\ & ((\FILA|count\(10)) # ((\FILA|count\(8) & \FILA|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(8),
	datab => \FILA|count\(10),
	datac => \FILA|count\(9),
	datad => \state_wr.WR_FIFO~regout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X63_Y20_N26
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (addr1(8) & (\Add2~15\ $ (GND))) # (!addr1(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((addr1(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X62_Y20_N16
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state_wr.WR_FIFO~regout\ & ((\Add2~18_combout\) # ((\state_wr.WR_WAIT~regout\ & addr1(9))))) # (!\state_wr.WR_FIFO~regout\ & (\state_wr.WR_WAIT~regout\ & (addr1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_FIFO~regout\,
	datab => \state_wr.WR_WAIT~regout\,
	datac => addr1(9),
	datad => \Add2~18_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X62_Y20_N17
\addr1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(9));

-- Location: LCCOMB_X62_Y20_N10
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state_wr.WR_FIFO~regout\ & ((\Add2~16_combout\) # ((\state_wr.WR_WAIT~regout\ & addr1(8))))) # (!\state_wr.WR_FIFO~regout\ & (\state_wr.WR_WAIT~regout\ & (addr1(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_FIFO~regout\,
	datab => \state_wr.WR_WAIT~regout\,
	datac => addr1(8),
	datad => \Add2~16_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X62_Y20_N11
\addr1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(8));

-- Location: LCCOMB_X62_Y20_N8
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (addr1(10) & (addr1(9) & addr1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr1(10),
	datac => addr1(9),
	datad => addr1(8),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X62_Y20_N26
\Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\Selector13~1_combout\ & (((!\Equal1~2_combout\) # (!\Equal1~1_combout\)) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Selector13~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X62_Y20_N0
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector13~2_combout\) # ((!\Selector13~0_combout\ & !\LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector13~0_combout\,
	datac => \LessThan2~0_combout\,
	datad => \Selector13~2_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCFF_X62_Y20_N1
\state_wr.WR_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_wr.WR_WAIT~regout\);

-- Location: LCCOMB_X62_Y20_N2
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ((!\FILA|count\(9) & !\FILA|count\(10))) # (!\state_wr.WR_WAIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(9),
	datab => \FILA|count\(10),
	datad => \state_wr.WR_WAIT~regout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X62_Y20_N12
\state_wr~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~10_combout\ = (\reset_done~regout\ & (!\Selector13~2_combout\ & ((\Selector13~0_combout\) # (\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => \Selector13~0_combout\,
	datac => \LessThan2~0_combout\,
	datad => \Selector13~2_combout\,
	combout => \state_wr~10_combout\);

-- Location: LCFF_X62_Y20_N13
\state_wr.WR_FIFO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_wr~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_wr.WR_FIFO~regout\);

-- Location: LCCOMB_X60_Y20_N20
\fifo_we~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifo_we~1_combout\ = (\state_wr.WR_FIFO~regout\ & (\fifo_we~0_combout\)) # (!\state_wr.WR_FIFO~regout\ & ((\fifo_we~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_we~0_combout\,
	datab => \state_wr.WR_FIFO~regout\,
	datac => \fifo_we~regout\,
	combout => \fifo_we~1_combout\);

-- Location: LCFF_X60_Y20_N21
fifo_we : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \fifo_we~1_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_we~regout\);

-- Location: LCCOMB_X60_Y20_N2
\rd_clock_divider~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rd_clock_divider~0_combout\ = (!rd_clock_divider(0) & (\reset_done~regout\ & ((!rd_clock_divider(1)) # (!rd_clock_divider(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_clock_divider(2),
	datab => rd_clock_divider(1),
	datac => rd_clock_divider(0),
	datad => \reset_done~regout\,
	combout => \rd_clock_divider~0_combout\);

-- Location: LCFF_X60_Y20_N3
\rd_clock_divider[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rd_clock_divider~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rd_clock_divider(0));

-- Location: LCCOMB_X60_Y20_N8
\rd_clock_divider~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rd_clock_divider~1_combout\ = (\reset_done~regout\ & ((rd_clock_divider(1) & (!rd_clock_divider(2) & !rd_clock_divider(0))) # (!rd_clock_divider(1) & ((rd_clock_divider(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => rd_clock_divider(2),
	datac => rd_clock_divider(1),
	datad => rd_clock_divider(0),
	combout => \rd_clock_divider~1_combout\);

-- Location: LCFF_X60_Y20_N9
\rd_clock_divider[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rd_clock_divider~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rd_clock_divider(1));

-- Location: LCCOMB_X60_Y20_N4
\rd_clock_divider~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rd_clock_divider~2_combout\ = (rd_clock_divider(1) & (!rd_clock_divider(2) & rd_clock_divider(0))) # (!rd_clock_divider(1) & (rd_clock_divider(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rd_clock_divider(1),
	datac => rd_clock_divider(2),
	datad => rd_clock_divider(0),
	combout => \rd_clock_divider~2_combout\);

-- Location: LCFF_X60_Y20_N5
\rd_clock_divider[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rd_clock_divider~2_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rd_clock_divider(2));

-- Location: LCCOMB_X60_Y20_N18
\rd_clock_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rd_clock_enable~0_combout\ = (\reset_done~regout\ & (rd_clock_divider(2) & (rd_clock_divider(1) & !rd_clock_divider(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => rd_clock_divider(2),
	datac => rd_clock_divider(1),
	datad => rd_clock_divider(0),
	combout => \rd_clock_enable~0_combout\);

-- Location: LCFF_X60_Y20_N19
rd_clock_enable : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rd_clock_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rd_clock_enable~regout\);

-- Location: LCCOMB_X60_Y20_N14
\state_rd~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~14_combout\ = (\state_rd.RD_FIFO~regout\ & (\rd_clock_enable~regout\ & ((\FILA|count\(10)) # (!\FILA|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rd.RD_FIFO~regout\,
	datab => \rd_clock_enable~regout\,
	datac => \FILA|count\(10),
	datad => \FILA|Equal0~2_combout\,
	combout => \state_rd~14_combout\);

-- Location: LCFF_X60_Y20_N15
fifo_re : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_rd~14_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_re~regout\);

-- Location: LCCOMB_X60_Y20_N16
\FILA|count[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[7]~13_combout\ = (\FILA|count\(10) & (\fifo_re~regout\ & ((\FILA|Equal0~2_combout\) # (!\fifo_we~regout\)))) # (!\FILA|count\(10) & (\fifo_we~regout\ $ (((\fifo_re~regout\ & !\FILA|Equal0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(10),
	datab => \fifo_we~regout\,
	datac => \fifo_re~regout\,
	datad => \FILA|Equal0~2_combout\,
	combout => \FILA|count[7]~13_combout\);

-- Location: LCFF_X61_Y20_N29
\FILA|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[10]~33_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(10));

-- Location: LCCOMB_X61_Y20_N6
\FILA|count[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[7]~14_combout\ = ((\FILA|count\(10) & ((\FILA|Equal0~2_combout\) # (!\fifo_re~regout\)))) # (!\fifo_we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_re~regout\,
	datab => \FILA|count\(10),
	datac => \fifo_we~regout\,
	datad => \FILA|Equal0~2_combout\,
	combout => \FILA|count[7]~14_combout\);

-- Location: LCCOMB_X61_Y20_N16
\FILA|count[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[4]~21_combout\ = ((\FILA|count\(4) $ (\FILA|count[7]~14_combout\ $ (!\FILA|count[3]~20\)))) # (GND)
-- \FILA|count[4]~22\ = CARRY((\FILA|count\(4) & ((\FILA|count[7]~14_combout\) # (!\FILA|count[3]~20\))) # (!\FILA|count\(4) & (\FILA|count[7]~14_combout\ & !\FILA|count[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(4),
	datab => \FILA|count[7]~14_combout\,
	datad => VCC,
	cin => \FILA|count[3]~20\,
	combout => \FILA|count[4]~21_combout\,
	cout => \FILA|count[4]~22\);

-- Location: LCCOMB_X61_Y20_N18
\FILA|count[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[5]~23_combout\ = (\FILA|count[7]~14_combout\ & ((\FILA|count\(5) & (\FILA|count[4]~22\ & VCC)) # (!\FILA|count\(5) & (!\FILA|count[4]~22\)))) # (!\FILA|count[7]~14_combout\ & ((\FILA|count\(5) & (!\FILA|count[4]~22\)) # (!\FILA|count\(5) & 
-- ((\FILA|count[4]~22\) # (GND)))))
-- \FILA|count[5]~24\ = CARRY((\FILA|count[7]~14_combout\ & (!\FILA|count\(5) & !\FILA|count[4]~22\)) # (!\FILA|count[7]~14_combout\ & ((!\FILA|count[4]~22\) # (!\FILA|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count[7]~14_combout\,
	datab => \FILA|count\(5),
	datad => VCC,
	cin => \FILA|count[4]~22\,
	combout => \FILA|count[5]~23_combout\,
	cout => \FILA|count[5]~24\);

-- Location: LCFF_X61_Y20_N19
\FILA|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[5]~23_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(5));

-- Location: LCCOMB_X61_Y20_N20
\FILA|count[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[6]~25_combout\ = ((\FILA|count[7]~14_combout\ $ (\FILA|count\(6) $ (!\FILA|count[5]~24\)))) # (GND)
-- \FILA|count[6]~26\ = CARRY((\FILA|count[7]~14_combout\ & ((\FILA|count\(6)) # (!\FILA|count[5]~24\))) # (!\FILA|count[7]~14_combout\ & (\FILA|count\(6) & !\FILA|count[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count[7]~14_combout\,
	datab => \FILA|count\(6),
	datad => VCC,
	cin => \FILA|count[5]~24\,
	combout => \FILA|count[6]~25_combout\,
	cout => \FILA|count[6]~26\);

-- Location: LCFF_X61_Y20_N21
\FILA|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[6]~25_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(6));

-- Location: LCCOMB_X61_Y20_N22
\FILA|count[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[7]~27_combout\ = (\FILA|count[7]~14_combout\ & ((\FILA|count\(7) & (\FILA|count[6]~26\ & VCC)) # (!\FILA|count\(7) & (!\FILA|count[6]~26\)))) # (!\FILA|count[7]~14_combout\ & ((\FILA|count\(7) & (!\FILA|count[6]~26\)) # (!\FILA|count\(7) & 
-- ((\FILA|count[6]~26\) # (GND)))))
-- \FILA|count[7]~28\ = CARRY((\FILA|count[7]~14_combout\ & (!\FILA|count\(7) & !\FILA|count[6]~26\)) # (!\FILA|count[7]~14_combout\ & ((!\FILA|count[6]~26\) # (!\FILA|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count[7]~14_combout\,
	datab => \FILA|count\(7),
	datad => VCC,
	cin => \FILA|count[6]~26\,
	combout => \FILA|count[7]~27_combout\,
	cout => \FILA|count[7]~28\);

-- Location: LCFF_X61_Y20_N23
\FILA|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[7]~27_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(7));

-- Location: LCCOMB_X61_Y20_N24
\FILA|count[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[8]~29_combout\ = ((\FILA|count[7]~14_combout\ $ (\FILA|count\(8) $ (!\FILA|count[7]~28\)))) # (GND)
-- \FILA|count[8]~30\ = CARRY((\FILA|count[7]~14_combout\ & ((\FILA|count\(8)) # (!\FILA|count[7]~28\))) # (!\FILA|count[7]~14_combout\ & (\FILA|count\(8) & !\FILA|count[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count[7]~14_combout\,
	datab => \FILA|count\(8),
	datad => VCC,
	cin => \FILA|count[7]~28\,
	combout => \FILA|count[8]~29_combout\,
	cout => \FILA|count[8]~30\);

-- Location: LCFF_X61_Y20_N25
\FILA|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[8]~29_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(8));

-- Location: LCFF_X61_Y20_N27
\FILA|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[9]~31_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(9));

-- Location: LCFF_X61_Y20_N17
\FILA|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[4]~21_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(4));

-- Location: LCCOMB_X61_Y20_N4
\FILA|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal0~1_combout\ = (!\FILA|count\(6) & (!\FILA|count\(5) & (!\FILA|count\(4) & !\FILA|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(6),
	datab => \FILA|count\(5),
	datac => \FILA|count\(4),
	datad => \FILA|count\(7),
	combout => \FILA|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y20_N2
\FILA|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal0~2_combout\ = (!\FILA|count\(8) & (!\FILA|count\(9) & (\FILA|Equal0~1_combout\ & \FILA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(8),
	datab => \FILA|count\(9),
	datac => \FILA|Equal0~1_combout\,
	datad => \FILA|Equal0~0_combout\,
	combout => \FILA|Equal0~2_combout\);

-- Location: LCCOMB_X60_Y20_N30
\state_rd~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~10_combout\ = (\state_rd.RD_FIFO~regout\ & \rd_clock_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rd.RD_FIFO~regout\,
	datad => \rd_clock_enable~regout\,
	combout => \state_rd~10_combout\);

-- Location: LCCOMB_X59_Y20_N26
\addr2[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[5]~13_combout\ = ((\state_rd~10_combout\ & ((\FILA|count\(10)) # (!\FILA|Equal0~2_combout\)))) # (!\reset_done~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(10),
	datab => \reset_done~regout\,
	datac => \FILA|Equal0~2_combout\,
	datad => \state_rd~10_combout\,
	combout => \addr2[5]~13_combout\);

-- Location: LCFF_X59_Y20_N1
\addr2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[0]~11_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(0));

-- Location: LCCOMB_X59_Y20_N2
\addr2[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[1]~14_combout\ = (addr2(1) & (!\addr2[0]~12\)) # (!addr2(1) & ((\addr2[0]~12\) # (GND)))
-- \addr2[1]~15\ = CARRY((!\addr2[0]~12\) # (!addr2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(1),
	datad => VCC,
	cin => \addr2[0]~12\,
	combout => \addr2[1]~14_combout\,
	cout => \addr2[1]~15\);

-- Location: LCFF_X59_Y20_N3
\addr2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[1]~14_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(1));

-- Location: LCCOMB_X59_Y20_N4
\addr2[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[2]~16_combout\ = (addr2(2) & (\addr2[1]~15\ $ (GND))) # (!addr2(2) & (!\addr2[1]~15\ & VCC))
-- \addr2[2]~17\ = CARRY((addr2(2) & !\addr2[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(2),
	datad => VCC,
	cin => \addr2[1]~15\,
	combout => \addr2[2]~16_combout\,
	cout => \addr2[2]~17\);

-- Location: LCFF_X59_Y20_N5
\addr2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[2]~16_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(2));

-- Location: LCCOMB_X59_Y20_N8
\addr2[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[4]~20_combout\ = (addr2(4) & (\addr2[3]~19\ $ (GND))) # (!addr2(4) & (!\addr2[3]~19\ & VCC))
-- \addr2[4]~21\ = CARRY((addr2(4) & !\addr2[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(4),
	datad => VCC,
	cin => \addr2[3]~19\,
	combout => \addr2[4]~20_combout\,
	cout => \addr2[4]~21\);

-- Location: LCFF_X59_Y20_N9
\addr2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[4]~20_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(4));

-- Location: LCCOMB_X59_Y20_N10
\addr2[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[5]~22_combout\ = (addr2(5) & (!\addr2[4]~21\)) # (!addr2(5) & ((\addr2[4]~21\) # (GND)))
-- \addr2[5]~23\ = CARRY((!\addr2[4]~21\) # (!addr2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(5),
	datad => VCC,
	cin => \addr2[4]~21\,
	combout => \addr2[5]~22_combout\,
	cout => \addr2[5]~23\);

-- Location: LCCOMB_X59_Y20_N14
\addr2[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[7]~26_combout\ = (addr2(7) & (!\addr2[6]~25\)) # (!addr2(7) & ((\addr2[6]~25\) # (GND)))
-- \addr2[7]~27\ = CARRY((!\addr2[6]~25\) # (!addr2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(7),
	datad => VCC,
	cin => \addr2[6]~25\,
	combout => \addr2[7]~26_combout\,
	cout => \addr2[7]~27\);

-- Location: LCFF_X59_Y20_N15
\addr2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[7]~26_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(7));

-- Location: LCCOMB_X59_Y20_N18
\addr2[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[9]~30_combout\ = (addr2(9) & (!\addr2[8]~29\)) # (!addr2(9) & ((\addr2[8]~29\) # (GND)))
-- \addr2[9]~31\ = CARRY((!\addr2[8]~29\) # (!addr2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(9),
	datad => VCC,
	cin => \addr2[8]~29\,
	combout => \addr2[9]~30_combout\,
	cout => \addr2[9]~31\);

-- Location: LCFF_X59_Y20_N19
\addr2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[9]~30_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(9));

-- Location: LCCOMB_X59_Y20_N20
\addr2[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[10]~32_combout\ = addr2(10) $ (!\addr2[9]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(10),
	cin => \addr2[9]~31\,
	combout => \addr2[10]~32_combout\);

-- Location: LCFF_X59_Y20_N21
\addr2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[10]~32_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(10));

-- Location: LCCOMB_X59_Y20_N22
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (addr2(8) & (addr2(10) & addr2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(8),
	datac => addr2(10),
	datad => addr2(9),
	combout => \Equal2~2_combout\);

-- Location: LCFF_X59_Y20_N11
\addr2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[5]~22_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(5));

-- Location: LCCOMB_X59_Y20_N24
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (addr2(6) & (addr2(7) & (addr2(4) & addr2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(6),
	datab => addr2(7),
	datac => addr2(4),
	datad => addr2(5),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X59_Y20_N30
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (addr2(3) & (addr2(0) & (addr2(2) & addr2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(3),
	datab => addr2(0),
	datac => addr2(2),
	datad => addr2(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X59_Y20_N28
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~2_combout\ & (\Equal2~1_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~3_combout\);

-- Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\en_bram1~I\ : cycloneii_io
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
	padio => ww_en_bram1);

-- Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
\en_bram2~I\ : cycloneii_io
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
	padio => ww_en_bram2);

-- Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_we~I\ : cycloneii_io
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
	padio => ww_bram1_init_we);

-- Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[0]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(0));

-- Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[1]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(1));

-- Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[2]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(2));

-- Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[3]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(3));

-- Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[4]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(4));

-- Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[5]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(5));

-- Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[6]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(6));

-- Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[7]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(7));

-- Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[8]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(8));

-- Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[9]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(9));

-- Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_addr[10]~I\ : cycloneii_io
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
	padio => ww_bram1_init_addr(10));

-- Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_di[0]~I\ : cycloneii_io
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
	padio => ww_bram1_init_di(0));

-- Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_di[1]~I\ : cycloneii_io
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
	padio => ww_bram1_init_di(1));

-- Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_di[2]~I\ : cycloneii_io
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
	padio => ww_bram1_init_di(2));

-- Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_di[3]~I\ : cycloneii_io
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
	padio => ww_bram1_init_di(3));

-- Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_di[4]~I\ : cycloneii_io
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
	padio => ww_bram1_init_di(4));

-- Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_di[5]~I\ : cycloneii_io
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
	padio => ww_bram1_init_di(5));

-- Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_di[6]~I\ : cycloneii_io
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
	padio => ww_bram1_init_di(6));

-- Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
\bram1_init_di[7]~I\ : cycloneii_io
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
	padio => ww_bram1_init_di(7));

-- Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
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
	datain => \Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_completo);
END structure;


