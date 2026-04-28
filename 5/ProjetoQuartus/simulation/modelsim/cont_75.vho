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

-- DATE "04/28/2026 19:24:29"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	sistema_fluxo IS
    PORT (
	clk : IN std_logic;
	en_bram1 : IN std_logic;
	en_bram2 : IN std_logic;
	bram1_init_we : IN std_logic;
	bram1_init_addr : IN std_logic_vector(10 DOWNTO 0);
	bram1_init_di : IN std_logic_vector(7 DOWNTO 0);
	completo : OUT std_logic;
	state_wr_out : OUT STD.STANDARD.integer range 0 TO 4;
	state_rd_out : OUT STD.STANDARD.integer range 0 TO 3
	);
END sistema_fluxo;

-- Design Ports Information
-- en_bram1	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_bram2	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_we	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[0]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[1]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[3]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[5]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[7]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[8]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[9]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_addr[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[0]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[4]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[6]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bram1_init_di[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- completo	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- state_wr_out[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- state_wr_out[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- state_wr_out[2]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- state_rd_out[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- state_rd_out[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
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
SIGNAL ww_state_wr_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_state_rd_out : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \addr2[1]~14_combout\ : std_logic;
SIGNAL \addr2[7]~26_combout\ : std_logic;
SIGNAL \fifo_we~regout\ : std_logic;
SIGNAL \FILA|count[2]~17_combout\ : std_logic;
SIGNAL \FILA|count[5]~23_combout\ : std_logic;
SIGNAL \addr1[1]~16_combout\ : std_logic;
SIGNAL \addr1[4]~22_combout\ : std_logic;
SIGNAL \addr1[3]~36_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \addr2[0]~12\ : std_logic;
SIGNAL \addr2[1]~15\ : std_logic;
SIGNAL \addr2[2]~16_combout\ : std_logic;
SIGNAL \reset_counter[2]~2_combout\ : std_logic;
SIGNAL \reset_counter[0]~0_combout\ : std_logic;
SIGNAL \reset_counter[1]~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \reset_done~regout\ : std_logic;
SIGNAL \FILA|count[8]~30\ : std_logic;
SIGNAL \FILA|count[9]~32\ : std_logic;
SIGNAL \FILA|count[10]~33_combout\ : std_logic;
SIGNAL \state_rd.IDLE~regout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \fifo_re~regout\ : std_logic;
SIGNAL \FILA|count[1]~13_combout\ : std_logic;
SIGNAL \FILA|count[1]~14_combout\ : std_logic;
SIGNAL \FILA|count[0]~11_combout\ : std_logic;
SIGNAL \FILA|count[0]~12\ : std_logic;
SIGNAL \FILA|count[1]~16\ : std_logic;
SIGNAL \FILA|count[2]~18\ : std_logic;
SIGNAL \FILA|count[3]~20\ : std_logic;
SIGNAL \FILA|count[4]~22\ : std_logic;
SIGNAL \FILA|count[5]~24\ : std_logic;
SIGNAL \FILA|count[6]~26\ : std_logic;
SIGNAL \FILA|count[7]~28\ : std_logic;
SIGNAL \FILA|count[8]~29_combout\ : std_logic;
SIGNAL \FILA|count[1]~15_combout\ : std_logic;
SIGNAL \FILA|count[3]~19_combout\ : std_logic;
SIGNAL \FILA|Equal0~0_combout\ : std_logic;
SIGNAL \FILA|count[4]~21_combout\ : std_logic;
SIGNAL \FILA|count[7]~27_combout\ : std_logic;
SIGNAL \FILA|count[6]~25_combout\ : std_logic;
SIGNAL \FILA|Equal0~1_combout\ : std_logic;
SIGNAL \FILA|Equal0~2_combout\ : std_logic;
SIGNAL \rd_clock_divider~1_combout\ : std_logic;
SIGNAL \rd_clock_divider~0_combout\ : std_logic;
SIGNAL \rd_clock_divider~2_combout\ : std_logic;
SIGNAL \rd_clock_enable~0_combout\ : std_logic;
SIGNAL \rd_clock_enable~regout\ : std_logic;
SIGNAL \FILA|Equal1~0_combout\ : std_logic;
SIGNAL \FILA|Equal1~1_combout\ : std_logic;
SIGNAL \state_rd~11_combout\ : std_logic;
SIGNAL \state_rd~12_combout\ : std_logic;
SIGNAL \state_rd.RD_WAIT~regout\ : std_logic;
SIGNAL \state_rd~10_combout\ : std_logic;
SIGNAL \state_rd~13_combout\ : std_logic;
SIGNAL \state_rd~14_combout\ : std_logic;
SIGNAL \state_rd~15_combout\ : std_logic;
SIGNAL \state_rd.RD_FIFO~regout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \addr2[6]~13_combout\ : std_logic;
SIGNAL \addr2[2]~17\ : std_logic;
SIGNAL \addr2[3]~19\ : std_logic;
SIGNAL \addr2[4]~20_combout\ : std_logic;
SIGNAL \addr2[4]~21\ : std_logic;
SIGNAL \addr2[5]~23\ : std_logic;
SIGNAL \addr2[6]~24_combout\ : std_logic;
SIGNAL \addr2[6]~25\ : std_logic;
SIGNAL \addr2[7]~27\ : std_logic;
SIGNAL \addr2[8]~28_combout\ : std_logic;
SIGNAL \addr2[8]~29\ : std_logic;
SIGNAL \addr2[9]~30_combout\ : std_logic;
SIGNAL \addr2[9]~31\ : std_logic;
SIGNAL \addr2[10]~32_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \addr2[3]~18_combout\ : std_logic;
SIGNAL \addr2[0]~11_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \addr2[5]~22_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \addr1[0]~12\ : std_logic;
SIGNAL \addr1[1]~17\ : std_logic;
SIGNAL \addr1[2]~18_combout\ : std_logic;
SIGNAL \addr1[3]~13_combout\ : std_logic;
SIGNAL \state_wr~17_combout\ : std_logic;
SIGNAL \FILA|count[9]~31_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \state_wr~12_combout\ : std_logic;
SIGNAL \state_wr~18_combout\ : std_logic;
SIGNAL \state_wr.WR_FIFO~regout\ : std_logic;
SIGNAL \addr1[5]~25\ : std_logic;
SIGNAL \addr1[6]~26_combout\ : std_logic;
SIGNAL \addr1[6]~27\ : std_logic;
SIGNAL \addr1[7]~29\ : std_logic;
SIGNAL \addr1[8]~31\ : std_logic;
SIGNAL \addr1[9]~32_combout\ : std_logic;
SIGNAL \addr1[8]~30_combout\ : std_logic;
SIGNAL \addr1[9]~33\ : std_logic;
SIGNAL \addr1[10]~34_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \addr1[0]~11_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \state_wr~19_combout\ : std_logic;
SIGNAL \state_wr~20_combout\ : std_logic;
SIGNAL \state_wr.WR_COMPLETE~regout\ : std_logic;
SIGNAL \state_wr~15_combout\ : std_logic;
SIGNAL \state_wr~16_combout\ : std_logic;
SIGNAL \state_wr.WR_WAIT~regout\ : std_logic;
SIGNAL \addr1[3]~14_combout\ : std_logic;
SIGNAL \addr1[3]~15_combout\ : std_logic;
SIGNAL \addr1[2]~19\ : std_logic;
SIGNAL \addr1[3]~20_combout\ : std_logic;
SIGNAL \addr1[3]~21\ : std_logic;
SIGNAL \addr1[4]~23\ : std_logic;
SIGNAL \addr1[5]~24_combout\ : std_logic;
SIGNAL \addr1[7]~28_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \state_wr~13_combout\ : std_logic;
SIGNAL \state_wr~14_combout\ : std_logic;
SIGNAL \state_wr.LOAD_BRAM~regout\ : std_logic;
SIGNAL \state_wr_out~0_combout\ : std_logic;
SIGNAL \state_wr_out~1_combout\ : std_logic;
SIGNAL \state_rd_out~0_combout\ : std_logic;
SIGNAL \state_rd_out~1_combout\ : std_logic;
SIGNAL reset_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL rd_clock_divider : std_logic_vector(2 DOWNTO 0);
SIGNAL addr2 : std_logic_vector(10 DOWNTO 0);
SIGNAL addr1 : std_logic_vector(10 DOWNTO 0);
SIGNAL \FILA|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_reset_done~regout\ : std_logic;
SIGNAL \ALT_INV_state_rd_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_state_rd_out~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_en_bram1 <= en_bram1;
ww_en_bram2 <= en_bram2;
ww_bram1_init_we <= bram1_init_we;
ww_bram1_init_addr <= bram1_init_addr;
ww_bram1_init_di <= bram1_init_di;
completo <= ww_completo;
state_wr_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_state_wr_out));
state_rd_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_state_rd_out));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_done~regout\ <= NOT \reset_done~regout\;
\ALT_INV_state_rd_out~1_combout\ <= NOT \state_rd_out~1_combout\;
\ALT_INV_state_rd_out~0_combout\ <= NOT \state_rd_out~0_combout\;

-- Location: LCFF_X42_Y22_N13
\addr2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[1]~14_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(1));

-- Location: LCFF_X42_Y22_N25
\addr2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[7]~26_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(7));

-- Location: LCFF_X43_Y22_N7
\FILA|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[2]~17_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(2));

-- Location: LCFF_X43_Y22_N13
\FILA|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[5]~23_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(5));

-- Location: LCCOMB_X42_Y22_N12
\addr2[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[1]~14_combout\ = (addr2(1) & (!\addr2[0]~12\)) # (!addr2(1) & ((\addr2[0]~12\) # (GND)))
-- \addr2[1]~15\ = CARRY((!\addr2[0]~12\) # (!addr2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(1),
	datad => VCC,
	cin => \addr2[0]~12\,
	combout => \addr2[1]~14_combout\,
	cout => \addr2[1]~15\);

-- Location: LCCOMB_X42_Y22_N24
\addr2[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[7]~26_combout\ = (addr2(7) & (!\addr2[6]~25\)) # (!addr2(7) & ((\addr2[6]~25\) # (GND)))
-- \addr2[7]~27\ = CARRY((!\addr2[6]~25\) # (!addr2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr2(7),
	datad => VCC,
	cin => \addr2[6]~25\,
	combout => \addr2[7]~26_combout\,
	cout => \addr2[7]~27\);

-- Location: LCFF_X46_Y22_N11
\addr1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[1]~16_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(1));

-- Location: LCFF_X46_Y22_N17
\addr1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[4]~22_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(4));

-- Location: LCFF_X44_Y22_N17
fifo_we : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector17~3_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_we~regout\);

-- Location: LCCOMB_X43_Y22_N6
\FILA|count[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[2]~17_combout\ = ((\FILA|count\(2) $ (\FILA|count[1]~14_combout\ $ (!\FILA|count[1]~16\)))) # (GND)
-- \FILA|count[2]~18\ = CARRY((\FILA|count\(2) & ((\FILA|count[1]~14_combout\) # (!\FILA|count[1]~16\))) # (!\FILA|count\(2) & (\FILA|count[1]~14_combout\ & !\FILA|count[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(2),
	datab => \FILA|count[1]~14_combout\,
	datad => VCC,
	cin => \FILA|count[1]~16\,
	combout => \FILA|count[2]~17_combout\,
	cout => \FILA|count[2]~18\);

-- Location: LCCOMB_X43_Y22_N12
\FILA|count[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[5]~23_combout\ = (\FILA|count\(5) & ((\FILA|count[1]~14_combout\ & (\FILA|count[4]~22\ & VCC)) # (!\FILA|count[1]~14_combout\ & (!\FILA|count[4]~22\)))) # (!\FILA|count\(5) & ((\FILA|count[1]~14_combout\ & (!\FILA|count[4]~22\)) # 
-- (!\FILA|count[1]~14_combout\ & ((\FILA|count[4]~22\) # (GND)))))
-- \FILA|count[5]~24\ = CARRY((\FILA|count\(5) & (!\FILA|count[1]~14_combout\ & !\FILA|count[4]~22\)) # (!\FILA|count\(5) & ((!\FILA|count[4]~22\) # (!\FILA|count[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(5),
	datab => \FILA|count[1]~14_combout\,
	datad => VCC,
	cin => \FILA|count[4]~22\,
	combout => \FILA|count[5]~23_combout\,
	cout => \FILA|count[5]~24\);

-- Location: LCCOMB_X46_Y22_N10
\addr1[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[1]~16_combout\ = (addr1(1) & (!\addr1[0]~12\)) # (!addr1(1) & ((\addr1[0]~12\) # (GND)))
-- \addr1[1]~17\ = CARRY((!\addr1[0]~12\) # (!addr1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(1),
	datad => VCC,
	cin => \addr1[0]~12\,
	combout => \addr1[1]~16_combout\,
	cout => \addr1[1]~17\);

-- Location: LCCOMB_X46_Y22_N16
\addr1[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[4]~22_combout\ = (addr1(4) & (\addr1[3]~21\ $ (GND))) # (!addr1(4) & (!\addr1[3]~21\ & VCC))
-- \addr1[4]~23\ = CARRY((addr1(4) & !\addr1[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(4),
	datad => VCC,
	cin => \addr1[3]~21\,
	combout => \addr1[4]~22_combout\,
	cout => \addr1[4]~23\);

-- Location: LCCOMB_X45_Y22_N10
\addr1[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[3]~36_combout\ = (\state_wr.LOAD_BRAM~regout\ & (\Equal1~2_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.LOAD_BRAM~regout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \addr1[3]~36_combout\);

-- Location: LCCOMB_X44_Y22_N16
\Selector17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\Selector17~1_combout\) # ((\addr1[3]~36_combout\) # ((\state_wr.WR_FIFO~regout\ & \Selector17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_FIFO~regout\,
	datab => \Selector17~1_combout\,
	datac => \addr1[3]~36_combout\,
	datad => \Selector17~2_combout\,
	combout => \Selector17~3_combout\);

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

-- Location: LCCOMB_X42_Y22_N10
\addr2[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[0]~11_combout\ = addr2(0) $ (VCC)
-- \addr2[0]~12\ = CARRY(addr2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(0),
	datad => VCC,
	combout => \addr2[0]~11_combout\,
	cout => \addr2[0]~12\);

-- Location: LCCOMB_X42_Y22_N14
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

-- Location: LCCOMB_X47_Y22_N12
\reset_counter[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_counter[2]~2_combout\ = (reset_counter(2)) # ((reset_counter(1) & reset_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_counter(1),
	datac => reset_counter(2),
	datad => reset_counter(0),
	combout => \reset_counter[2]~2_combout\);

-- Location: LCFF_X47_Y22_N13
\reset_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(2));

-- Location: LCCOMB_X47_Y22_N0
\reset_counter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_counter[0]~0_combout\ = (reset_counter(0) & ((reset_counter(2)))) # (!reset_counter(0) & ((!reset_counter(2)) # (!reset_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_counter(1),
	datac => reset_counter(0),
	datad => reset_counter(2),
	combout => \reset_counter[0]~0_combout\);

-- Location: LCFF_X47_Y22_N1
\reset_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(0));

-- Location: LCCOMB_X47_Y22_N2
\reset_counter[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_counter[1]~1_combout\ = reset_counter(1) $ (((reset_counter(0) & !reset_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_counter(0),
	datac => reset_counter(1),
	datad => reset_counter(2),
	combout => \reset_counter[1]~1_combout\);

-- Location: LCFF_X47_Y22_N3
\reset_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_counter(1));

-- Location: LCCOMB_X47_Y22_N18
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (reset_counter(2) & ((reset_counter(1)) # (reset_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_counter(2),
	datab => reset_counter(1),
	datad => reset_counter(0),
	combout => \LessThan0~0_combout\);

-- Location: LCFF_X43_Y22_N29
reset_done : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_done~regout\);

-- Location: LCCOMB_X43_Y22_N18
\FILA|count[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[8]~29_combout\ = ((\FILA|count[1]~14_combout\ $ (\FILA|count\(8) $ (!\FILA|count[7]~28\)))) # (GND)
-- \FILA|count[8]~30\ = CARRY((\FILA|count[1]~14_combout\ & ((\FILA|count\(8)) # (!\FILA|count[7]~28\))) # (!\FILA|count[1]~14_combout\ & (\FILA|count\(8) & !\FILA|count[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count[1]~14_combout\,
	datab => \FILA|count\(8),
	datad => VCC,
	cin => \FILA|count[7]~28\,
	combout => \FILA|count[8]~29_combout\,
	cout => \FILA|count[8]~30\);

-- Location: LCCOMB_X43_Y22_N20
\FILA|count[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[9]~31_combout\ = (\FILA|count\(9) & ((\FILA|count[1]~14_combout\ & (\FILA|count[8]~30\ & VCC)) # (!\FILA|count[1]~14_combout\ & (!\FILA|count[8]~30\)))) # (!\FILA|count\(9) & ((\FILA|count[1]~14_combout\ & (!\FILA|count[8]~30\)) # 
-- (!\FILA|count[1]~14_combout\ & ((\FILA|count[8]~30\) # (GND)))))
-- \FILA|count[9]~32\ = CARRY((\FILA|count\(9) & (!\FILA|count[1]~14_combout\ & !\FILA|count[8]~30\)) # (!\FILA|count\(9) & ((!\FILA|count[8]~30\) # (!\FILA|count[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(9),
	datab => \FILA|count[1]~14_combout\,
	datad => VCC,
	cin => \FILA|count[8]~30\,
	combout => \FILA|count[9]~31_combout\,
	cout => \FILA|count[9]~32\);

-- Location: LCCOMB_X43_Y22_N22
\FILA|count[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[10]~33_combout\ = \FILA|count[1]~14_combout\ $ (\FILA|count\(10) $ (!\FILA|count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count[1]~14_combout\,
	datab => \FILA|count\(10),
	cin => \FILA|count[9]~32\,
	combout => \FILA|count[10]~33_combout\);

-- Location: LCFF_X45_Y22_N9
\state_rd.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \reset_done~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_rd.IDLE~regout\);

-- Location: LCCOMB_X44_Y22_N14
\Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\Selector22~0_combout\ & (((\FILA|count\(10))) # (!\FILA|Equal0~2_combout\))) # (!\Selector22~0_combout\ & (!\state_rd.IDLE~regout\ & ((\FILA|count\(10)) # (!\FILA|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \FILA|Equal0~2_combout\,
	datac => \state_rd.IDLE~regout\,
	datad => \FILA|count\(10),
	combout => \Selector22~1_combout\);

-- Location: LCFF_X44_Y22_N15
fifo_re : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector22~1_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fifo_re~regout\);

-- Location: LCCOMB_X44_Y22_N30
\FILA|count[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[1]~13_combout\ = (\fifo_we~regout\ & ((\fifo_re~regout\ & ((\FILA|Equal0~2_combout\))) # (!\fifo_re~regout\ & (!\FILA|count\(10))))) # (!\fifo_we~regout\ & (\fifo_re~regout\ & ((\FILA|count\(10)) # (!\FILA|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_we~regout\,
	datab => \FILA|count\(10),
	datac => \FILA|Equal0~2_combout\,
	datad => \fifo_re~regout\,
	combout => \FILA|count[1]~13_combout\);

-- Location: LCFF_X43_Y22_N23
\FILA|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[10]~33_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(10));

-- Location: LCCOMB_X43_Y22_N26
\FILA|count[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[1]~14_combout\ = ((\FILA|count\(10) & ((\FILA|Equal0~2_combout\) # (!\fifo_re~regout\)))) # (!\fifo_we~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_we~regout\,
	datab => \FILA|count\(10),
	datac => \fifo_re~regout\,
	datad => \FILA|Equal0~2_combout\,
	combout => \FILA|count[1]~14_combout\);

-- Location: LCCOMB_X43_Y22_N2
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

-- Location: LCFF_X43_Y22_N3
\FILA|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[0]~11_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(0));

-- Location: LCCOMB_X43_Y22_N4
\FILA|count[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[1]~15_combout\ = (\FILA|count\(1) & ((\FILA|count[1]~14_combout\ & (\FILA|count[0]~12\ & VCC)) # (!\FILA|count[1]~14_combout\ & (!\FILA|count[0]~12\)))) # (!\FILA|count\(1) & ((\FILA|count[1]~14_combout\ & (!\FILA|count[0]~12\)) # 
-- (!\FILA|count[1]~14_combout\ & ((\FILA|count[0]~12\) # (GND)))))
-- \FILA|count[1]~16\ = CARRY((\FILA|count\(1) & (!\FILA|count[1]~14_combout\ & !\FILA|count[0]~12\)) # (!\FILA|count\(1) & ((!\FILA|count[0]~12\) # (!\FILA|count[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(1),
	datab => \FILA|count[1]~14_combout\,
	datad => VCC,
	cin => \FILA|count[0]~12\,
	combout => \FILA|count[1]~15_combout\,
	cout => \FILA|count[1]~16\);

-- Location: LCCOMB_X43_Y22_N8
\FILA|count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[3]~19_combout\ = (\FILA|count\(3) & ((\FILA|count[1]~14_combout\ & (\FILA|count[2]~18\ & VCC)) # (!\FILA|count[1]~14_combout\ & (!\FILA|count[2]~18\)))) # (!\FILA|count\(3) & ((\FILA|count[1]~14_combout\ & (!\FILA|count[2]~18\)) # 
-- (!\FILA|count[1]~14_combout\ & ((\FILA|count[2]~18\) # (GND)))))
-- \FILA|count[3]~20\ = CARRY((\FILA|count\(3) & (!\FILA|count[1]~14_combout\ & !\FILA|count[2]~18\)) # (!\FILA|count\(3) & ((!\FILA|count[2]~18\) # (!\FILA|count[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(3),
	datab => \FILA|count[1]~14_combout\,
	datad => VCC,
	cin => \FILA|count[2]~18\,
	combout => \FILA|count[3]~19_combout\,
	cout => \FILA|count[3]~20\);

-- Location: LCCOMB_X43_Y22_N10
\FILA|count[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[4]~21_combout\ = ((\FILA|count\(4) $ (\FILA|count[1]~14_combout\ $ (!\FILA|count[3]~20\)))) # (GND)
-- \FILA|count[4]~22\ = CARRY((\FILA|count\(4) & ((\FILA|count[1]~14_combout\) # (!\FILA|count[3]~20\))) # (!\FILA|count\(4) & (\FILA|count[1]~14_combout\ & !\FILA|count[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(4),
	datab => \FILA|count[1]~14_combout\,
	datad => VCC,
	cin => \FILA|count[3]~20\,
	combout => \FILA|count[4]~21_combout\,
	cout => \FILA|count[4]~22\);

-- Location: LCCOMB_X43_Y22_N14
\FILA|count[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[6]~25_combout\ = ((\FILA|count\(6) $ (\FILA|count[1]~14_combout\ $ (!\FILA|count[5]~24\)))) # (GND)
-- \FILA|count[6]~26\ = CARRY((\FILA|count\(6) & ((\FILA|count[1]~14_combout\) # (!\FILA|count[5]~24\))) # (!\FILA|count\(6) & (\FILA|count[1]~14_combout\ & !\FILA|count[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(6),
	datab => \FILA|count[1]~14_combout\,
	datad => VCC,
	cin => \FILA|count[5]~24\,
	combout => \FILA|count[6]~25_combout\,
	cout => \FILA|count[6]~26\);

-- Location: LCCOMB_X43_Y22_N16
\FILA|count[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|count[7]~27_combout\ = (\FILA|count\(7) & ((\FILA|count[1]~14_combout\ & (\FILA|count[6]~26\ & VCC)) # (!\FILA|count[1]~14_combout\ & (!\FILA|count[6]~26\)))) # (!\FILA|count\(7) & ((\FILA|count[1]~14_combout\ & (!\FILA|count[6]~26\)) # 
-- (!\FILA|count[1]~14_combout\ & ((\FILA|count[6]~26\) # (GND)))))
-- \FILA|count[7]~28\ = CARRY((\FILA|count\(7) & (!\FILA|count[1]~14_combout\ & !\FILA|count[6]~26\)) # (!\FILA|count\(7) & ((!\FILA|count[6]~26\) # (!\FILA|count[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(7),
	datab => \FILA|count[1]~14_combout\,
	datad => VCC,
	cin => \FILA|count[6]~26\,
	combout => \FILA|count[7]~27_combout\,
	cout => \FILA|count[7]~28\);

-- Location: LCFF_X43_Y22_N19
\FILA|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[8]~29_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(8));

-- Location: LCFF_X43_Y22_N5
\FILA|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[1]~15_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(1));

-- Location: LCFF_X43_Y22_N9
\FILA|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[3]~19_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(3));

-- Location: LCCOMB_X43_Y22_N24
\FILA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal0~0_combout\ = (!\FILA|count\(2) & (!\FILA|count\(1) & (!\FILA|count\(3) & !\FILA|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(2),
	datab => \FILA|count\(1),
	datac => \FILA|count\(3),
	datad => \FILA|count\(0),
	combout => \FILA|Equal0~0_combout\);

-- Location: LCFF_X43_Y22_N11
\FILA|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[4]~21_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(4));

-- Location: LCFF_X43_Y22_N17
\FILA|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[7]~27_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(7));

-- Location: LCFF_X43_Y22_N15
\FILA|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[6]~25_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(6));

-- Location: LCCOMB_X43_Y22_N30
\FILA|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal0~1_combout\ = (!\FILA|count\(5) & (!\FILA|count\(4) & (!\FILA|count\(7) & !\FILA|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(5),
	datab => \FILA|count\(4),
	datac => \FILA|count\(7),
	datad => \FILA|count\(6),
	combout => \FILA|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y22_N0
\FILA|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal0~2_combout\ = (!\FILA|count\(9) & (!\FILA|count\(8) & (\FILA|Equal0~0_combout\ & \FILA|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(9),
	datab => \FILA|count\(8),
	datac => \FILA|Equal0~0_combout\,
	datad => \FILA|Equal0~1_combout\,
	combout => \FILA|Equal0~2_combout\);

-- Location: LCCOMB_X41_Y22_N20
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

-- Location: LCFF_X41_Y22_N21
\rd_clock_divider[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rd_clock_divider~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rd_clock_divider(1));

-- Location: LCCOMB_X41_Y22_N2
\rd_clock_divider~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rd_clock_divider~0_combout\ = (\reset_done~regout\ & (!rd_clock_divider(0) & ((!rd_clock_divider(1)) # (!rd_clock_divider(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => rd_clock_divider(2),
	datac => rd_clock_divider(0),
	datad => rd_clock_divider(1),
	combout => \rd_clock_divider~0_combout\);

-- Location: LCFF_X41_Y22_N3
\rd_clock_divider[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rd_clock_divider~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rd_clock_divider(0));

-- Location: LCCOMB_X41_Y22_N28
\rd_clock_divider~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rd_clock_divider~2_combout\ = (rd_clock_divider(1) & (!rd_clock_divider(2) & rd_clock_divider(0))) # (!rd_clock_divider(1) & (rd_clock_divider(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_clock_divider(1),
	datac => rd_clock_divider(2),
	datad => rd_clock_divider(0),
	combout => \rd_clock_divider~2_combout\);

-- Location: LCFF_X41_Y22_N29
\rd_clock_divider[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rd_clock_divider~2_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rd_clock_divider(2));

-- Location: LCCOMB_X44_Y22_N20
\rd_clock_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rd_clock_enable~0_combout\ = (rd_clock_divider(1) & (rd_clock_divider(2) & (\reset_done~regout\ & !rd_clock_divider(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_clock_divider(1),
	datab => rd_clock_divider(2),
	datac => \reset_done~regout\,
	datad => rd_clock_divider(0),
	combout => \rd_clock_enable~0_combout\);

-- Location: LCFF_X44_Y22_N21
rd_clock_enable : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rd_clock_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rd_clock_enable~regout\);

-- Location: LCCOMB_X43_Y22_N28
\FILA|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal1~0_combout\ = (\FILA|count\(9)) # (\FILA|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(9),
	datad => \FILA|count\(8),
	combout => \FILA|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y22_N4
\FILA|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FILA|Equal1~1_combout\ = (\FILA|count\(10)) # (((\FILA|Equal1~0_combout\) # (!\FILA|Equal0~1_combout\)) # (!\FILA|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(10),
	datab => \FILA|Equal0~0_combout\,
	datac => \FILA|Equal0~1_combout\,
	datad => \FILA|Equal1~0_combout\,
	combout => \FILA|Equal1~1_combout\);

-- Location: LCCOMB_X44_Y22_N12
\state_rd~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~11_combout\ = (\state_rd~10_combout\) # ((\Selector22~0_combout\ & (\FILA|Equal1~1_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \state_rd~10_combout\,
	datac => \FILA|Equal1~1_combout\,
	datad => \Equal2~3_combout\,
	combout => \state_rd~11_combout\);

-- Location: LCCOMB_X44_Y22_N8
\state_rd~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~12_combout\ = (!\state_rd~11_combout\ & ((\state_rd.IDLE~regout\ & ((\state_rd.RD_WAIT~regout\))) # (!\state_rd.IDLE~regout\ & (!\FILA|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|Equal1~1_combout\,
	datab => \state_rd.IDLE~regout\,
	datac => \state_rd.RD_WAIT~regout\,
	datad => \state_rd~11_combout\,
	combout => \state_rd~12_combout\);

-- Location: LCFF_X44_Y22_N9
\state_rd.RD_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_rd~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_rd.RD_WAIT~regout\);

-- Location: LCCOMB_X44_Y22_N26
\state_rd~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~10_combout\ = ((\state_rd.RD_WAIT~regout\ & ((\FILA|count\(10)) # (!\FILA|Equal0~2_combout\)))) # (!\reset_done~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => \state_rd.RD_WAIT~regout\,
	datac => \FILA|Equal0~2_combout\,
	datad => \FILA|count\(10),
	combout => \state_rd~10_combout\);

-- Location: LCCOMB_X44_Y22_N2
\state_rd~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~13_combout\ = (\state_rd~10_combout\ & (((\FILA|Equal1~1_combout\)))) # (!\state_rd~10_combout\ & (\state_rd.IDLE~regout\ & (\state_rd.RD_FIFO~regout\ $ (\FILA|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rd.RD_FIFO~regout\,
	datab => \state_rd.IDLE~regout\,
	datac => \FILA|Equal1~1_combout\,
	datad => \state_rd~10_combout\,
	combout => \state_rd~13_combout\);

-- Location: LCCOMB_X44_Y22_N28
\state_rd~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~14_combout\ = (\state_rd~13_combout\ & (((\state_rd.RD_WAIT~regout\ & \reset_done~regout\)))) # (!\state_rd~13_combout\ & (\Selector22~0_combout\ & ((!\reset_done~regout\) # (!\state_rd.RD_WAIT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~0_combout\,
	datab => \state_rd.RD_WAIT~regout\,
	datac => \reset_done~regout\,
	datad => \state_rd~13_combout\,
	combout => \state_rd~14_combout\);

-- Location: LCCOMB_X44_Y22_N0
\state_rd~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd~15_combout\ = (\state_rd~13_combout\ & (((\state_rd~14_combout\) # (!\FILA|Equal1~1_combout\)))) # (!\state_rd~13_combout\ & (\FILA|Equal1~1_combout\ & ((!\state_rd~14_combout\) # (!\Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \state_rd~13_combout\,
	datac => \FILA|Equal1~1_combout\,
	datad => \state_rd~14_combout\,
	combout => \state_rd~15_combout\);

-- Location: LCFF_X44_Y22_N1
\state_rd.RD_FIFO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_rd~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_rd.RD_FIFO~regout\);

-- Location: LCCOMB_X44_Y22_N6
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\rd_clock_enable~regout\ & \state_rd.RD_FIFO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rd_clock_enable~regout\,
	datad => \state_rd.RD_FIFO~regout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X42_Y22_N4
\addr2[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[6]~13_combout\ = ((\Selector22~0_combout\ & ((\FILA|count\(10)) # (!\FILA|Equal0~2_combout\)))) # (!\reset_done~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(10),
	datab => \reset_done~regout\,
	datac => \FILA|Equal0~2_combout\,
	datad => \Selector22~0_combout\,
	combout => \addr2[6]~13_combout\);

-- Location: LCFF_X42_Y22_N15
\addr2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[2]~16_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(2));

-- Location: LCCOMB_X42_Y22_N16
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

-- Location: LCCOMB_X42_Y22_N18
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

-- Location: LCFF_X42_Y22_N19
\addr2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[4]~20_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(4));

-- Location: LCCOMB_X42_Y22_N20
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

-- Location: LCCOMB_X42_Y22_N22
\addr2[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[6]~24_combout\ = (addr2(6) & (\addr2[5]~23\ $ (GND))) # (!addr2(6) & (!\addr2[5]~23\ & VCC))
-- \addr2[6]~25\ = CARRY((addr2(6) & !\addr2[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(6),
	datad => VCC,
	cin => \addr2[5]~23\,
	combout => \addr2[6]~24_combout\,
	cout => \addr2[6]~25\);

-- Location: LCFF_X42_Y22_N23
\addr2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[6]~24_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(6));

-- Location: LCCOMB_X42_Y22_N26
\addr2[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[8]~28_combout\ = (addr2(8) & (\addr2[7]~27\ $ (GND))) # (!addr2(8) & (!\addr2[7]~27\ & VCC))
-- \addr2[8]~29\ = CARRY((addr2(8) & !\addr2[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr2(8),
	datad => VCC,
	cin => \addr2[7]~27\,
	combout => \addr2[8]~28_combout\,
	cout => \addr2[8]~29\);

-- Location: LCFF_X42_Y22_N27
\addr2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[8]~28_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(8));

-- Location: LCCOMB_X42_Y22_N28
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

-- Location: LCFF_X42_Y22_N29
\addr2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[9]~30_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(9));

-- Location: LCCOMB_X42_Y22_N30
\addr2[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr2[10]~32_combout\ = \addr2[9]~31\ $ (!addr2(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => addr2(10),
	cin => \addr2[9]~31\,
	combout => \addr2[10]~32_combout\);

-- Location: LCFF_X42_Y22_N31
\addr2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[10]~32_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(10));

-- Location: LCCOMB_X42_Y22_N0
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (addr2(9) & (addr2(10) & addr2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr2(9),
	datac => addr2(10),
	datad => addr2(8),
	combout => \Equal2~2_combout\);

-- Location: LCFF_X42_Y22_N17
\addr2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[3]~18_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(3));

-- Location: LCFF_X42_Y22_N11
\addr2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[0]~11_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(0));

-- Location: LCCOMB_X42_Y22_N8
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (addr2(1) & (addr2(2) & (addr2(3) & addr2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(1),
	datab => addr2(2),
	datac => addr2(3),
	datad => addr2(0),
	combout => \Equal2~0_combout\);

-- Location: LCFF_X42_Y22_N21
\addr2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr2[5]~22_combout\,
	sclr => \ALT_INV_reset_done~regout\,
	ena => \addr2[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr2(5));

-- Location: LCCOMB_X42_Y22_N2
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (addr2(7) & (addr2(4) & (addr2(5) & addr2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr2(7),
	datab => addr2(4),
	datac => addr2(5),
	datad => addr2(6),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X42_Y22_N6
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~2_combout\ & (\Equal2~0_combout\ & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X46_Y22_N8
\addr1[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[0]~11_combout\ = addr1(0) $ (VCC)
-- \addr1[0]~12\ = CARRY(addr1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr1(0),
	datad => VCC,
	combout => \addr1[0]~11_combout\,
	cout => \addr1[0]~12\);

-- Location: LCCOMB_X46_Y22_N12
\addr1[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[2]~18_combout\ = (addr1(2) & (\addr1[1]~17\ $ (GND))) # (!addr1(2) & (!\addr1[1]~17\ & VCC))
-- \addr1[2]~19\ = CARRY((addr1(2) & !\addr1[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(2),
	datad => VCC,
	cin => \addr1[1]~17\,
	combout => \addr1[2]~18_combout\,
	cout => \addr1[2]~19\);

-- Location: LCCOMB_X46_Y22_N2
\addr1[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[3]~13_combout\ = (((\state_wr.LOAD_BRAM~regout\ & \Equal1~3_combout\)) # (!\reset_done~regout\)) # (!\state_rd.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rd.IDLE~regout\,
	datab => \state_wr.LOAD_BRAM~regout\,
	datac => \reset_done~regout\,
	datad => \Equal1~3_combout\,
	combout => \addr1[3]~13_combout\);

-- Location: LCCOMB_X45_Y22_N22
\state_wr~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~17_combout\ = (\state_rd.IDLE~regout\ & ((\Selector17~2_combout\) # (!\state_wr.WR_FIFO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rd.IDLE~regout\,
	datab => \state_wr.WR_FIFO~regout\,
	datad => \Selector17~2_combout\,
	combout => \state_wr~17_combout\);

-- Location: LCFF_X43_Y22_N21
\FILA|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FILA|count[9]~31_combout\,
	aclr => \ALT_INV_reset_done~regout\,
	ena => \FILA|count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FILA|count\(9));

-- Location: LCCOMB_X44_Y22_N24
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state_wr.WR_WAIT~regout\ & (!\FILA|count\(10) & ((!\FILA|count\(9)) # (!\FILA|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_WAIT~regout\,
	datab => \FILA|count\(8),
	datac => \FILA|count\(9),
	datad => \FILA|count\(10),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X44_Y22_N18
\Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\ & (((\FILA|Equal0~1_combout\ & \FILA|Equal0~0_combout\)) # (!\FILA|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|Equal0~1_combout\,
	datab => \FILA|count\(9),
	datac => \Selector17~0_combout\,
	datad => \FILA|Equal0~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X45_Y22_N2
\state_wr~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~12_combout\ = (\state_wr.WR_WAIT~regout\ & (((!\Selector17~1_combout\)))) # (!\state_wr.WR_WAIT~regout\ & (((!\Equal1~3_combout\ & !\Selector17~1_combout\)) # (!\state_wr.LOAD_BRAM~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.WR_WAIT~regout\,
	datab => \state_wr.LOAD_BRAM~regout\,
	datac => \Equal1~3_combout\,
	datad => \Selector17~1_combout\,
	combout => \state_wr~12_combout\);

-- Location: LCCOMB_X45_Y22_N18
\state_wr~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~18_combout\ = (\reset_done~regout\ & (\state_wr~17_combout\ & ((\state_wr.WR_FIFO~regout\) # (!\state_wr~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => \state_wr~17_combout\,
	datac => \state_wr.WR_FIFO~regout\,
	datad => \state_wr~12_combout\,
	combout => \state_wr~18_combout\);

-- Location: LCFF_X45_Y22_N19
\state_wr.WR_FIFO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_wr~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_wr.WR_FIFO~regout\);

-- Location: LCCOMB_X46_Y22_N18
\addr1[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[5]~24_combout\ = (addr1(5) & (!\addr1[4]~23\)) # (!addr1(5) & ((\addr1[4]~23\) # (GND)))
-- \addr1[5]~25\ = CARRY((!\addr1[4]~23\) # (!addr1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(5),
	datad => VCC,
	cin => \addr1[4]~23\,
	combout => \addr1[5]~24_combout\,
	cout => \addr1[5]~25\);

-- Location: LCCOMB_X46_Y22_N20
\addr1[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[6]~26_combout\ = (addr1(6) & (\addr1[5]~25\ $ (GND))) # (!addr1(6) & (!\addr1[5]~25\ & VCC))
-- \addr1[6]~27\ = CARRY((addr1(6) & !\addr1[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(6),
	datad => VCC,
	cin => \addr1[5]~25\,
	combout => \addr1[6]~26_combout\,
	cout => \addr1[6]~27\);

-- Location: LCFF_X46_Y22_N21
\addr1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[6]~26_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(6));

-- Location: LCCOMB_X46_Y22_N22
\addr1[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[7]~28_combout\ = (addr1(7) & (!\addr1[6]~27\)) # (!addr1(7) & ((\addr1[6]~27\) # (GND)))
-- \addr1[7]~29\ = CARRY((!\addr1[6]~27\) # (!addr1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(7),
	datad => VCC,
	cin => \addr1[6]~27\,
	combout => \addr1[7]~28_combout\,
	cout => \addr1[7]~29\);

-- Location: LCCOMB_X46_Y22_N24
\addr1[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[8]~30_combout\ = (addr1(8) & (\addr1[7]~29\ $ (GND))) # (!addr1(8) & (!\addr1[7]~29\ & VCC))
-- \addr1[8]~31\ = CARRY((addr1(8) & !\addr1[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addr1(8),
	datad => VCC,
	cin => \addr1[7]~29\,
	combout => \addr1[8]~30_combout\,
	cout => \addr1[8]~31\);

-- Location: LCCOMB_X46_Y22_N26
\addr1[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[9]~32_combout\ = (addr1(9) & (!\addr1[8]~31\)) # (!addr1(9) & ((\addr1[8]~31\) # (GND)))
-- \addr1[9]~33\ = CARRY((!\addr1[8]~31\) # (!addr1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(9),
	datad => VCC,
	cin => \addr1[8]~31\,
	combout => \addr1[9]~32_combout\,
	cout => \addr1[9]~33\);

-- Location: LCFF_X46_Y22_N27
\addr1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[9]~32_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(9));

-- Location: LCFF_X46_Y22_N25
\addr1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[8]~30_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(8));

-- Location: LCCOMB_X46_Y22_N28
\addr1[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[10]~34_combout\ = \addr1[9]~33\ $ (!addr1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => addr1(10),
	cin => \addr1[9]~33\,
	combout => \addr1[10]~34_combout\);

-- Location: LCFF_X46_Y22_N29
\addr1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[10]~34_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(10));

-- Location: LCCOMB_X46_Y22_N0
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (addr1(9) & (addr1(8) & addr1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr1(9),
	datac => addr1(8),
	datad => addr1(10),
	combout => \Equal1~2_combout\);

-- Location: LCFF_X46_Y22_N9
\addr1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[0]~11_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(0));

-- Location: LCCOMB_X46_Y22_N4
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (addr1(1) & (addr1(0) & (addr1(3) & addr1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr1(1),
	datab => addr1(0),
	datac => addr1(3),
	datad => addr1(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X45_Y22_N4
\state_wr~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~19_combout\ = (\Equal1~1_combout\ & (\state_wr.WR_FIFO~regout\ & (\Equal1~2_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \state_wr.WR_FIFO~regout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~0_combout\,
	combout => \state_wr~19_combout\);

-- Location: LCCOMB_X45_Y22_N30
\state_wr~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~20_combout\ = (\reset_done~regout\ & ((\state_wr~13_combout\ & ((\state_wr.WR_COMPLETE~regout\))) # (!\state_wr~13_combout\ & (\state_wr~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => \state_wr~19_combout\,
	datac => \state_wr.WR_COMPLETE~regout\,
	datad => \state_wr~13_combout\,
	combout => \state_wr~20_combout\);

-- Location: LCFF_X45_Y22_N31
\state_wr.WR_COMPLETE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_wr~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_wr.WR_COMPLETE~regout\);

-- Location: LCCOMB_X45_Y22_N0
\state_wr~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~15_combout\ = (\state_wr.WR_FIFO~regout\ & (!\Equal1~3_combout\ & !\Selector17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_wr.WR_FIFO~regout\,
	datac => \Equal1~3_combout\,
	datad => \Selector17~2_combout\,
	combout => \state_wr~15_combout\);

-- Location: LCCOMB_X45_Y22_N6
\state_wr~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~16_combout\ = (\reset_done~regout\ & ((\state_wr~13_combout\ & ((\state_wr.WR_WAIT~regout\))) # (!\state_wr~13_combout\ & (\state_wr~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => \state_wr~15_combout\,
	datac => \state_wr.WR_WAIT~regout\,
	datad => \state_wr~13_combout\,
	combout => \state_wr~16_combout\);

-- Location: LCFF_X45_Y22_N7
\state_wr.WR_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_wr~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_wr.WR_WAIT~regout\);

-- Location: LCCOMB_X45_Y22_N14
\addr1[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[3]~14_combout\ = (\state_wr.WR_COMPLETE~regout\) # (\state_wr.WR_WAIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_wr.WR_COMPLETE~regout\,
	datad => \state_wr.WR_WAIT~regout\,
	combout => \addr1[3]~14_combout\);

-- Location: LCCOMB_X45_Y22_N16
\addr1[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[3]~15_combout\ = ((!\addr1[3]~14_combout\ & ((\Selector17~2_combout\) # (!\state_wr.WR_FIFO~regout\)))) # (!\reset_done~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => \state_wr.WR_FIFO~regout\,
	datac => \addr1[3]~14_combout\,
	datad => \Selector17~2_combout\,
	combout => \addr1[3]~15_combout\);

-- Location: LCFF_X46_Y22_N13
\addr1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[2]~18_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(2));

-- Location: LCCOMB_X46_Y22_N14
\addr1[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \addr1[3]~20_combout\ = (addr1(3) & (!\addr1[2]~19\)) # (!addr1(3) & ((\addr1[2]~19\) # (GND)))
-- \addr1[3]~21\ = CARRY((!\addr1[2]~19\) # (!addr1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addr1(3),
	datad => VCC,
	cin => \addr1[2]~19\,
	combout => \addr1[3]~20_combout\,
	cout => \addr1[3]~21\);

-- Location: LCFF_X46_Y22_N15
\addr1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[3]~20_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(3));

-- Location: LCFF_X46_Y22_N19
\addr1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[5]~24_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(5));

-- Location: LCFF_X46_Y22_N23
\addr1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \addr1[7]~28_combout\,
	sclr => \addr1[3]~13_combout\,
	ena => \addr1[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => addr1(7));

-- Location: LCCOMB_X46_Y22_N30
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (addr1(4) & (addr1(5) & (addr1(6) & addr1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr1(4),
	datab => addr1(5),
	datac => addr1(6),
	datad => addr1(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X45_Y22_N12
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X45_Y22_N28
\Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (!\FILA|count\(10) & (!\Equal1~3_combout\ & ((!\FILA|count\(8)) # (!\FILA|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA|count\(9),
	datab => \FILA|count\(10),
	datac => \FILA|count\(8),
	datad => \Equal1~3_combout\,
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X45_Y22_N26
\state_wr~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~13_combout\ = (\state_rd.IDLE~regout\ & (\state_wr~12_combout\ & ((\Selector17~2_combout\) # (!\state_wr.WR_FIFO~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rd.IDLE~regout\,
	datab => \Selector17~2_combout\,
	datac => \state_wr.WR_FIFO~regout\,
	datad => \state_wr~12_combout\,
	combout => \state_wr~13_combout\);

-- Location: LCCOMB_X45_Y22_N24
\state_wr~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr~14_combout\ = (\reset_done~regout\ & (((\state_wr.LOAD_BRAM~regout\ & \state_wr~13_combout\)) # (!\state_rd.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_done~regout\,
	datab => \state_rd.IDLE~regout\,
	datac => \state_wr.LOAD_BRAM~regout\,
	datad => \state_wr~13_combout\,
	combout => \state_wr~14_combout\);

-- Location: LCFF_X45_Y22_N25
\state_wr.LOAD_BRAM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_wr~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_wr.LOAD_BRAM~regout\);

-- Location: LCCOMB_X45_Y22_N8
\state_wr_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr_out~0_combout\ = (\state_wr.LOAD_BRAM~regout\) # (\state_wr.WR_WAIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_wr.LOAD_BRAM~regout\,
	datad => \state_wr.WR_WAIT~regout\,
	combout => \state_wr_out~0_combout\);

-- Location: LCCOMB_X45_Y22_N20
\state_wr_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_wr_out~1_combout\ = (\state_wr.WR_FIFO~regout\) # (\state_wr.WR_WAIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_wr.WR_FIFO~regout\,
	datad => \state_wr.WR_WAIT~regout\,
	combout => \state_wr_out~1_combout\);

-- Location: LCCOMB_X44_Y22_N22
\state_rd_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd_out~0_combout\ = (\state_rd.RD_WAIT~regout\) # (!\state_rd.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_rd.IDLE~regout\,
	datac => \state_rd.RD_WAIT~regout\,
	combout => \state_rd_out~0_combout\);

-- Location: LCCOMB_X44_Y22_N10
\state_rd_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_rd_out~1_combout\ = (\state_rd.RD_FIFO~regout\) # (!\state_rd.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_rd.RD_FIFO~regout\,
	datac => \state_rd.IDLE~regout\,
	combout => \state_rd_out~1_combout\);

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

-- Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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

-- Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
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

-- Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\state_wr_out[0]~I\ : cycloneii_io
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
	datain => \state_wr_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_wr_out(0));

-- Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\state_wr_out[1]~I\ : cycloneii_io
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
	datain => \state_wr_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_wr_out(1));

-- Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\state_wr_out[2]~I\ : cycloneii_io
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
	datain => \state_wr.WR_COMPLETE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_wr_out(2));

-- Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\state_rd_out[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_state_rd_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_rd_out(0));

-- Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\state_rd_out[1]~I\ : cycloneii_io
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
	datain => \ALT_INV_state_rd_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_state_rd_out(1));
END structure;


