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

-- DATE "04/13/2026 17:51:03"

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

ENTITY 	cont_75 IS
    PORT (
	CLK : IN std_logic;
	CLR : IN std_logic;
	RST : IN std_logic;
	EN : IN std_logic;
	BTN_PLAY_PAUSE : IN std_logic;
	BTN_RESET : IN std_logic;
	Q_ms : OUT std_logic_vector(7 DOWNTO 0);
	Q_s : OUT std_logic_vector(7 DOWNTO 0);
	Q1 : OUT std_logic_vector(3 DOWNTO 0);
	Q2 : OUT std_logic_vector(3 DOWNTO 0);
	Q3 : OUT std_logic_vector(3 DOWNTO 0);
	Q4 : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	CLK2 : OUT std_logic;
	CLK3 : OUT std_logic;
	CLK4 : OUT std_logic;
	CLK_100HZ : OUT std_logic;
	RST_SIG1 : OUT std_logic;
	RST_SIG2 : OUT std_logic
	);
END cont_75;

-- Design Ports Information
-- CLR	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_ms[1]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_ms[2]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_ms[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_ms[4]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_ms[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_ms[6]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_ms[7]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_s[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_s[1]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_s[2]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_s[3]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_s[4]	=>  Location: PIN_W23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_s[5]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q_s[6]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q_s[7]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q1[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q1[1]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q1[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q1[3]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q2[0]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q2[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q2[2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q2[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q3[0]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q3[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q3[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q3[3]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q4[0]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q4[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- Q4[2]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- Q4[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- CLK2	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- CLK3	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- CLK4	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- CLK_100HZ	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- RST_SIG1	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- RST_SIG2	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- RST	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_RESET	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_PLAY_PAUSE	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cont_75 IS
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
SIGNAL ww_CLR : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_BTN_PLAY_PAUSE : std_logic;
SIGNAL ww_BTN_RESET : std_logic;
SIGNAL ww_Q_ms : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLK2 : std_logic;
SIGNAL ww_CLK3 : std_logic;
SIGNAL ww_CLK4 : std_logic;
SIGNAL ww_CLK_100HZ : std_logic;
SIGNAL ww_RST_SIG1 : std_logic;
SIGNAL ww_RST_SIG2 : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \btn_reset_prev~regout\ : std_logic;
SIGNAL \clr_internal~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk_enable_count~0_combout\ : std_logic;
SIGNAL \BTN_RESET~combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \BTN_PLAY_PAUSE~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \RST~clkctrl_outclk\ : std_logic;
SIGNAL \btn_play_pause_prev~regout\ : std_logic;
SIGNAL \clr_internal~1_combout\ : std_logic;
SIGNAL \clr_internal~regout\ : std_logic;
SIGNAL \u1|count~0_combout\ : std_logic;
SIGNAL \u1|Add0~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clk_enable_count~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \clk_100hz_en~regout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \state~regout\ : std_logic;
SIGNAL \en_internal~feeder_combout\ : std_logic;
SIGNAL \en_internal~regout\ : std_logic;
SIGNAL \u1|count[1]~1_combout\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \rst_sig_internal1~combout\ : std_logic;
SIGNAL \u2|count~0_combout\ : std_logic;
SIGNAL \u2|Add0~0_combout\ : std_logic;
SIGNAL \clk2_sig~3_combout\ : std_logic;
SIGNAL \clk2_sig~2_combout\ : std_logic;
SIGNAL \u2|count[0]~1_combout\ : std_logic;
SIGNAL \u2|Add0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \rst_sig_internal2~combout\ : std_logic;
SIGNAL \u2|Add0~2_combout\ : std_logic;
SIGNAL \u3|count~0_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \clk3_sig~0_combout\ : std_logic;
SIGNAL \clk3_sig~1_combout\ : std_logic;
SIGNAL \u3|count[0]~1_combout\ : std_logic;
SIGNAL \u3|Add0~1_combout\ : std_logic;
SIGNAL \u3|Add0~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \rst_sig_internal3~combout\ : std_logic;
SIGNAL \u4|count~0_combout\ : std_logic;
SIGNAL \u4|Add0~0_combout\ : std_logic;
SIGNAL \clk4_sig~0_combout\ : std_logic;
SIGNAL \u4|count[0]~1_combout\ : std_logic;
SIGNAL \u4|Add0~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \rst_sig_internal4~combout\ : std_logic;
SIGNAL \u4|Add0~1_combout\ : std_logic;
SIGNAL \disp0|Mux6~0_combout\ : std_logic;
SIGNAL \disp0|Mux5~0_combout\ : std_logic;
SIGNAL \disp0|Mux4~0_combout\ : std_logic;
SIGNAL \disp0|Mux3~0_combout\ : std_logic;
SIGNAL \disp0|Mux2~0_combout\ : std_logic;
SIGNAL \disp0|Mux1~0_combout\ : std_logic;
SIGNAL \disp0|Mux0~0_combout\ : std_logic;
SIGNAL \disp1|Mux6~0_combout\ : std_logic;
SIGNAL \disp1|Mux5~0_combout\ : std_logic;
SIGNAL \disp1|Mux4~0_combout\ : std_logic;
SIGNAL \disp1|Mux3~0_combout\ : std_logic;
SIGNAL \disp1|Mux2~0_combout\ : std_logic;
SIGNAL \disp1|Mux1~0_combout\ : std_logic;
SIGNAL \disp1|Mux0~0_combout\ : std_logic;
SIGNAL \disp2|Mux6~0_combout\ : std_logic;
SIGNAL \disp2|Mux5~0_combout\ : std_logic;
SIGNAL \disp2|Mux4~0_combout\ : std_logic;
SIGNAL \disp2|Mux3~0_combout\ : std_logic;
SIGNAL \disp2|Mux2~0_combout\ : std_logic;
SIGNAL \disp2|Mux1~0_combout\ : std_logic;
SIGNAL \disp2|Mux0~0_combout\ : std_logic;
SIGNAL \disp3|Mux6~0_combout\ : std_logic;
SIGNAL \disp3|Mux5~0_combout\ : std_logic;
SIGNAL \disp3|Mux4~0_combout\ : std_logic;
SIGNAL \disp3|Mux3~0_combout\ : std_logic;
SIGNAL \disp3|Mux2~0_combout\ : std_logic;
SIGNAL \disp3|Mux1~0_combout\ : std_logic;
SIGNAL \disp3|Mux0~0_combout\ : std_logic;
SIGNAL \clk2_sig~4_combout\ : std_logic;
SIGNAL \clk4_sig~1_combout\ : std_logic;
SIGNAL clk_enable_count : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clr_internal~regout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CLR <= CLR;
ww_RST <= RST;
ww_EN <= EN;
ww_BTN_PLAY_PAUSE <= BTN_PLAY_PAUSE;
ww_BTN_RESET <= BTN_RESET;
Q_ms <= ww_Q_ms;
Q_s <= ww_Q_s;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
Q3 <= ww_Q3;
Q4 <= ww_Q4;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
CLK2 <= ww_CLK2;
CLK3 <= ww_CLK3;
CLK4 <= ww_CLK4;
CLK_100HZ <= ww_CLK_100HZ;
RST_SIG1 <= ww_RST_SIG1;
RST_SIG2 <= ww_RST_SIG2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RST~combout\);
\ALT_INV_clr_internal~regout\ <= NOT \clr_internal~regout\;
\disp3|ALT_INV_Mux0~0_combout\ <= NOT \disp3|Mux0~0_combout\;
\disp2|ALT_INV_Mux0~0_combout\ <= NOT \disp2|Mux0~0_combout\;
\disp1|ALT_INV_Mux0~0_combout\ <= NOT \disp1|Mux0~0_combout\;
\disp0|ALT_INV_Mux0~0_combout\ <= NOT \disp0|Mux0~0_combout\;

-- Location: LCCOMB_X59_Y5_N16
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_enable_count(1) & (!\Add0~1\)) # (!clk_enable_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_enable_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X59_Y5_N20
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_enable_count(3) & (!\Add0~5\)) # (!clk_enable_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_enable_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X59_Y4_N6
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_enable_count(12) & (\Add0~23\ $ (GND))) # (!clk_enable_count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_enable_count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X59_Y4_N8
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_enable_count(13) & (!\Add0~25\)) # (!clk_enable_count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_enable_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X59_Y4_N10
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_enable_count(14) & (\Add0~27\ $ (GND))) # (!clk_enable_count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_enable_count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X59_Y4_N12
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_enable_count(15) & (!\Add0~29\)) # (!clk_enable_count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_enable_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X59_Y4_N14
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_enable_count(16) & (\Add0~31\ $ (GND))) # (!clk_enable_count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_enable_count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X59_Y4_N16
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = clk_enable_count(17) $ (\Add0~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(17),
	cin => \Add0~33\,
	combout => \Add0~34_combout\);

-- Location: LCFF_X61_Y5_N13
btn_reset_prev : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \BTN_RESET~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_reset_prev~regout\);

-- Location: LCCOMB_X61_Y5_N12
\clr_internal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clr_internal~0_combout\ = (!\state~regout\ & (((\BTN_RESET~combout\ & !\btn_reset_prev~regout\)) # (!\clr_internal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_internal~regout\,
	datab => \BTN_RESET~combout\,
	datac => \btn_reset_prev~regout\,
	datad => \state~regout\,
	combout => \clr_internal~0_combout\);

-- Location: LCFF_X59_Y5_N11
\clk_enable_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clk_enable_count~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(1));

-- Location: LCFF_X59_Y4_N17
\clk_enable_count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~34_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(17));

-- Location: LCFF_X59_Y4_N15
\clk_enable_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~32_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(16));

-- Location: LCFF_X59_Y4_N13
\clk_enable_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~30_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(15));

-- Location: LCFF_X59_Y4_N11
\clk_enable_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~28_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(14));

-- Location: LCCOMB_X59_Y4_N22
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_enable_count(15) & (!clk_enable_count(16) & (!clk_enable_count(17) & !clk_enable_count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(15),
	datab => clk_enable_count(16),
	datac => clk_enable_count(17),
	datad => clk_enable_count(14),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X59_Y4_N7
\clk_enable_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~24_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(12));

-- Location: LCFF_X59_Y5_N21
\clk_enable_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(3));

-- Location: LCCOMB_X59_Y5_N10
\clk_enable_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_enable_count~0_combout\ = (\Add0~2_combout\ & ((clk_enable_count(0)) # ((!\Equal0~4_combout\) # (!clk_enable_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => clk_enable_count(0),
	datac => clk_enable_count(1),
	datad => \Equal0~4_combout\,
	combout => \clk_enable_count~0_combout\);

-- Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
\BTN_RESET~I\ : cycloneii_io
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
	padio => ww_BTN_RESET,
	combout => \BTN_RESET~combout\);

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

-- Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
\BTN_PLAY_PAUSE~I\ : cycloneii_io
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
	padio => ww_BTN_PLAY_PAUSE,
	combout => \BTN_PLAY_PAUSE~combout\);

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

-- Location: LCFF_X61_Y5_N15
btn_play_pause_prev : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \BTN_PLAY_PAUSE~combout\,
	aclr => \RST~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \btn_play_pause_prev~regout\);

-- Location: LCCOMB_X61_Y5_N4
\clr_internal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clr_internal~1_combout\ = ((\BTN_PLAY_PAUSE~combout\ & !\btn_play_pause_prev~regout\)) # (!\clr_internal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_internal~0_combout\,
	datac => \BTN_PLAY_PAUSE~combout\,
	datad => \btn_play_pause_prev~regout\,
	combout => \clr_internal~1_combout\);

-- Location: LCFF_X61_Y5_N5
clr_internal : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clr_internal~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clr_internal~regout\);

-- Location: LCCOMB_X61_Y5_N20
\u1|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~0_combout\ = (!\u1|count\(0) & \clr_internal~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|count\(0),
	datad => \clr_internal~regout\,
	combout => \u1|count~0_combout\);

-- Location: LCCOMB_X60_Y5_N30
\u1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~1_combout\ = \u1|count\(2) $ (((\u1|count\(1) & \u1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datac => \u1|count\(2),
	datad => \u1|count\(0),
	combout => \u1|Add0~1_combout\);

-- Location: LCCOMB_X59_Y5_N14
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_enable_count(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_enable_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X59_Y5_N18
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_enable_count(2) & (\Add0~3\ $ (GND))) # (!clk_enable_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_enable_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCFF_X59_Y5_N19
\clk_enable_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(2));

-- Location: LCCOMB_X59_Y5_N22
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_enable_count(4) & (\Add0~7\ $ (GND))) # (!clk_enable_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_enable_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCFF_X59_Y5_N23
\clk_enable_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(4));

-- Location: LCCOMB_X59_Y5_N24
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_enable_count(5) & (!\Add0~9\)) # (!clk_enable_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_enable_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X59_Y5_N26
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_enable_count(6) & (\Add0~11\ $ (GND))) # (!clk_enable_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_enable_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCFF_X59_Y5_N27
\clk_enable_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(6));

-- Location: LCCOMB_X59_Y5_N28
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_enable_count(7) & (!\Add0~13\)) # (!clk_enable_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_enable_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCFF_X59_Y5_N29
\clk_enable_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~14_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(7));

-- Location: LCCOMB_X59_Y5_N30
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_enable_count(8) & (\Add0~15\ $ (GND))) # (!clk_enable_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_enable_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCFF_X59_Y5_N31
\clk_enable_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(8));

-- Location: LCCOMB_X59_Y4_N0
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_enable_count(9) & (!\Add0~17\)) # (!clk_enable_count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_enable_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCFF_X59_Y4_N1
\clk_enable_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(9));

-- Location: LCCOMB_X59_Y5_N8
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clk_enable_count(6) & (!clk_enable_count(8) & (!clk_enable_count(9) & !clk_enable_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(6),
	datab => clk_enable_count(8),
	datac => clk_enable_count(9),
	datad => clk_enable_count(7),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X59_Y4_N2
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_enable_count(10) & (\Add0~19\ $ (GND))) # (!clk_enable_count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_enable_count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCFF_X59_Y4_N3
\clk_enable_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(10));

-- Location: LCCOMB_X59_Y4_N4
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_enable_count(11) & (!\Add0~21\)) # (!clk_enable_count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_enable_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_enable_count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCFF_X59_Y4_N5
\clk_enable_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(11));

-- Location: LCFF_X59_Y4_N9
\clk_enable_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~26_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(13));

-- Location: LCCOMB_X59_Y4_N24
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clk_enable_count(12) & (!clk_enable_count(13) & (!clk_enable_count(11) & !clk_enable_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(12),
	datab => clk_enable_count(13),
	datac => clk_enable_count(11),
	datad => clk_enable_count(10),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X59_Y5_N25
\clk_enable_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(5));

-- Location: LCCOMB_X59_Y5_N2
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clk_enable_count(3) & (!clk_enable_count(2) & (!clk_enable_count(5) & !clk_enable_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(3),
	datab => clk_enable_count(2),
	datac => clk_enable_count(5),
	datad => clk_enable_count(4),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X59_Y5_N12
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X59_Y5_N6
\clk_enable_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_enable_count~1_combout\ = (\Add0~0_combout\ & (((clk_enable_count(0)) # (!\Equal0~4_combout\)) # (!clk_enable_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(1),
	datab => \Add0~0_combout\,
	datac => clk_enable_count(0),
	datad => \Equal0~4_combout\,
	combout => \clk_enable_count~1_combout\);

-- Location: LCFF_X59_Y5_N7
\clk_enable_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \clk_enable_count~1_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clk_enable_count(0));

-- Location: LCCOMB_X59_Y5_N0
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (clk_enable_count(1) & (!clk_enable_count(0) & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_enable_count(1),
	datac => clk_enable_count(0),
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCFF_X59_Y5_N1
clk_100hz_en : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Equal0~5_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_100hz_en~regout\);

-- Location: LCCOMB_X61_Y5_N30
\state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~0_combout\ = \state~regout\ $ (((\BTN_PLAY_PAUSE~combout\ & !\btn_play_pause_prev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BTN_PLAY_PAUSE~combout\,
	datac => \state~regout\,
	datad => \btn_play_pause_prev~regout\,
	combout => \state~0_combout\);

-- Location: LCFF_X61_Y5_N31
state : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \state~0_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state~regout\);

-- Location: LCCOMB_X61_Y5_N18
\en_internal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_internal~feeder_combout\ = \state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state~regout\,
	combout => \en_internal~feeder_combout\);

-- Location: LCFF_X61_Y5_N19
en_internal : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \en_internal~feeder_combout\,
	aclr => \RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \en_internal~regout\);

-- Location: LCCOMB_X61_Y5_N14
\u1|count[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count[1]~1_combout\ = ((\clk_100hz_en~regout\ & \en_internal~regout\)) # (!\clr_internal~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_internal~regout\,
	datab => \clk_100hz_en~regout\,
	datad => \en_internal~regout\,
	combout => \u1|count[1]~1_combout\);

-- Location: LCFF_X60_Y5_N31
\u1|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1|Add0~1_combout\,
	aclr => \rst_sig_internal1~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(2));

-- Location: LCCOMB_X60_Y5_N24
\u1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = \u1|count\(3) $ (((\u1|count\(1) & (\u1|count\(2) & \u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(2),
	datac => \u1|count\(3),
	datad => \u1|count\(0),
	combout => \u1|Add0~2_combout\);

-- Location: LCFF_X60_Y5_N25
\u1|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1|Add0~2_combout\,
	aclr => \rst_sig_internal1~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(3));

-- Location: LCCOMB_X60_Y5_N16
\u1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \u1|count\(1) $ (\u1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|count\(1),
	datad => \u1|count\(0),
	combout => \u1|Add0~0_combout\);

-- Location: LCFF_X60_Y5_N17
\u1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1|Add0~0_combout\,
	aclr => \rst_sig_internal1~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(1));

-- Location: LCCOMB_X61_Y5_N6
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\u1|count\(2) & (\u1|count\(3) & (!\u1|count\(0) & \u1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(3),
	datac => \u1|count\(0),
	datad => \u1|count\(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X61_Y5_N8
rst_sig_internal1 : cycloneii_lcell_comb
-- Equation(s):
-- \rst_sig_internal1~combout\ = (\RST~combout\) # (\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datad => \Equal1~0_combout\,
	combout => \rst_sig_internal1~combout\);

-- Location: LCFF_X61_Y5_N21
\u1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u1|count~0_combout\,
	aclr => \rst_sig_internal1~combout\,
	ena => \u1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(0));

-- Location: LCCOMB_X62_Y5_N30
\u2|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|count~0_combout\ = (\clr_internal~regout\ & !\u2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr_internal~regout\,
	datac => \u2|count\(0),
	combout => \u2|count~0_combout\);

-- Location: LCCOMB_X62_Y5_N4
\u2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Add0~0_combout\ = \u2|count\(1) $ (\u2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|count\(1),
	datad => \u2|count\(0),
	combout => \u2|Add0~0_combout\);

-- Location: LCCOMB_X61_Y5_N16
\clk2_sig~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk2_sig~3_combout\ = (!\RST~combout\ & (\u1|count\(0) & !\u1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~combout\,
	datac => \u1|count\(0),
	datad => \u1|count\(1),
	combout => \clk2_sig~3_combout\);

-- Location: LCCOMB_X61_Y5_N22
\clk2_sig~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk2_sig~2_combout\ = (\en_internal~regout\ & (\clr_internal~regout\ & (!\u1|count\(2) & \u1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_internal~regout\,
	datab => \clr_internal~regout\,
	datac => \u1|count\(2),
	datad => \u1|count\(3),
	combout => \clk2_sig~2_combout\);

-- Location: LCCOMB_X61_Y5_N24
\u2|count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|count[0]~1_combout\ = ((\clk_100hz_en~regout\ & (\clk2_sig~3_combout\ & \clk2_sig~2_combout\))) # (!\clr_internal~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_internal~regout\,
	datab => \clk_100hz_en~regout\,
	datac => \clk2_sig~3_combout\,
	datad => \clk2_sig~2_combout\,
	combout => \u2|count[0]~1_combout\);

-- Location: LCFF_X62_Y5_N5
\u2|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2|Add0~0_combout\,
	aclr => \rst_sig_internal2~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|count\(1));

-- Location: LCCOMB_X62_Y5_N14
\u2|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Add0~1_combout\ = \u2|count\(2) $ (((\u2|count\(0) & \u2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|count\(0),
	datac => \u2|count\(2),
	datad => \u2|count\(1),
	combout => \u2|Add0~1_combout\);

-- Location: LCFF_X62_Y5_N15
\u2|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2|Add0~1_combout\,
	aclr => \rst_sig_internal2~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|count\(2));

-- Location: LCCOMB_X62_Y5_N8
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\u2|count\(3) & (\u2|count\(1) & (!\u2|count\(2) & !\u2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(3),
	datab => \u2|count\(1),
	datac => \u2|count\(2),
	datad => \u2|count\(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X62_Y5_N22
rst_sig_internal2 : cycloneii_lcell_comb
-- Equation(s):
-- \rst_sig_internal2~combout\ = (\RST~combout\) # ((\Equal2~0_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \RST~combout\,
	datad => \Equal1~0_combout\,
	combout => \rst_sig_internal2~combout\);

-- Location: LCFF_X62_Y5_N31
\u2|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2|count~0_combout\,
	aclr => \rst_sig_internal2~combout\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|count\(0));

-- Location: LCCOMB_X62_Y5_N0
\u2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Add0~2_combout\ = \u2|count\(3) $ (((\u2|count\(1) & (\u2|count\(2) & \u2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(2),
	datac => \u2|count\(3),
	datad => \u2|count\(0),
	combout => \u2|Add0~2_combout\);

-- Location: LCFF_X62_Y5_N1
\u2|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u2|Add0~2_combout\,
	aclr => \rst_sig_internal2~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|count\(3));

-- Location: LCCOMB_X64_Y5_N6
\u3|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|count~0_combout\ = (\clr_internal~regout\ & !\u3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr_internal~regout\,
	datac => \u3|count\(0),
	combout => \u3|count~0_combout\);

-- Location: LCCOMB_X64_Y5_N4
\u3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = \u3|count\(0) $ (\u3|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|count\(0),
	datac => \u3|count\(1),
	combout => \u3|Add0~0_combout\);

-- Location: LCCOMB_X62_Y5_N26
\clk3_sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk3_sig~0_combout\ = (!\u2|count\(1) & (\u2|count\(0) & (!\u2|count\(2) & \u2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(2),
	datad => \u2|count\(3),
	combout => \clk3_sig~0_combout\);

-- Location: LCCOMB_X61_Y5_N10
\clk3_sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk3_sig~1_combout\ = (\clk2_sig~3_combout\ & (\clk3_sig~0_combout\ & \clk2_sig~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2_sig~3_combout\,
	datac => \clk3_sig~0_combout\,
	datad => \clk2_sig~2_combout\,
	combout => \clk3_sig~1_combout\);

-- Location: LCCOMB_X64_Y5_N0
\u3|count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|count[0]~1_combout\ = ((\clk_100hz_en~regout\ & \clk3_sig~1_combout\)) # (!\clr_internal~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_100hz_en~regout\,
	datac => \clr_internal~regout\,
	datad => \clk3_sig~1_combout\,
	combout => \u3|count[0]~1_combout\);

-- Location: LCFF_X64_Y5_N5
\u3|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3|Add0~0_combout\,
	aclr => \rst_sig_internal3~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|count\(1));

-- Location: LCCOMB_X64_Y5_N30
\u3|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~1_combout\ = \u3|count\(2) $ (((\u3|count\(0) & \u3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|count\(0),
	datac => \u3|count\(2),
	datad => \u3|count\(1),
	combout => \u3|Add0~1_combout\);

-- Location: LCFF_X64_Y5_N31
\u3|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3|Add0~1_combout\,
	aclr => \rst_sig_internal3~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|count\(2));

-- Location: LCCOMB_X64_Y5_N12
\u3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add0~2_combout\ = \u3|count\(3) $ (((\u3|count\(2) & (\u3|count\(0) & \u3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \u3|Add0~2_combout\);

-- Location: LCFF_X64_Y5_N13
\u3|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3|Add0~2_combout\,
	aclr => \rst_sig_internal3~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|count\(3));

-- Location: LCCOMB_X64_Y5_N28
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\u3|count\(0) & (!\u3|count\(2) & (\u3|count\(1) & \u3|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(0),
	datab => \u3|count\(2),
	datac => \u3|count\(1),
	datad => \u3|count\(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X64_Y5_N22
rst_sig_internal3 : cycloneii_lcell_comb
-- Equation(s):
-- \rst_sig_internal3~combout\ = (\Equal3~0_combout\) # (\RST~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datad => \RST~combout\,
	combout => \rst_sig_internal3~combout\);

-- Location: LCFF_X64_Y5_N7
\u3|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u3|count~0_combout\,
	aclr => \rst_sig_internal3~combout\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|count\(0));

-- Location: LCCOMB_X63_Y5_N18
\u4|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|count~0_combout\ = (\clr_internal~regout\ & !\u4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr_internal~regout\,
	datac => \u4|count\(0),
	combout => \u4|count~0_combout\);

-- Location: LCCOMB_X63_Y5_N28
\u4|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add0~0_combout\ = \u4|count\(1) $ (\u4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|count\(1),
	datad => \u4|count\(0),
	combout => \u4|Add0~0_combout\);

-- Location: LCCOMB_X64_Y5_N18
\clk4_sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk4_sig~0_combout\ = (\u3|count\(3) & (!\u3|count\(1) & (\u3|count\(0) & !\u3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(1),
	datac => \u3|count\(0),
	datad => \u3|count\(2),
	combout => \clk4_sig~0_combout\);

-- Location: LCCOMB_X62_Y5_N12
\u4|count[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|count[0]~1_combout\ = ((\clk_100hz_en~regout\ & (\clk4_sig~0_combout\ & \clk3_sig~1_combout\))) # (!\clr_internal~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_100hz_en~regout\,
	datab => \clr_internal~regout\,
	datac => \clk4_sig~0_combout\,
	datad => \clk3_sig~1_combout\,
	combout => \u4|count[0]~1_combout\);

-- Location: LCFF_X63_Y5_N29
\u4|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u4|Add0~0_combout\,
	aclr => \rst_sig_internal4~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|count\(1));

-- Location: LCCOMB_X63_Y5_N24
\u4|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add0~2_combout\ = \u4|count\(3) $ (((\u4|count\(2) & (\u4|count\(1) & \u4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(1),
	datac => \u4|count\(3),
	datad => \u4|count\(0),
	combout => \u4|Add0~2_combout\);

-- Location: LCFF_X63_Y5_N25
\u4|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u4|Add0~2_combout\,
	aclr => \rst_sig_internal4~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|count\(3));

-- Location: LCCOMB_X63_Y5_N14
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\u4|count\(2) & (\u4|count\(1) & (\u4|count\(3) & !\u4|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(1),
	datac => \u4|count\(3),
	datad => \u4|count\(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X63_Y5_N8
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Equal4~0_combout\ & \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X63_Y5_N30
rst_sig_internal4 : cycloneii_lcell_comb
-- Equation(s):
-- \rst_sig_internal4~combout\ = (\RST~combout\) # ((\Equal2~0_combout\ & (\Equal4~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \RST~combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \rst_sig_internal4~combout\);

-- Location: LCFF_X63_Y5_N19
\u4|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u4|count~0_combout\,
	aclr => \rst_sig_internal4~combout\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|count\(0));

-- Location: LCCOMB_X63_Y5_N6
\u4|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add0~1_combout\ = \u4|count\(2) $ (((\u4|count\(0) & \u4|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|count\(0),
	datac => \u4|count\(2),
	datad => \u4|count\(1),
	combout => \u4|Add0~1_combout\);

-- Location: LCFF_X63_Y5_N7
\u4|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \u4|Add0~1_combout\,
	aclr => \rst_sig_internal4~combout\,
	sclr => \ALT_INV_clr_internal~regout\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|count\(2));

-- Location: LCCOMB_X60_Y5_N14
\disp0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0|Mux6~0_combout\ = (\u1|count\(1) & (((\u1|count\(3))))) # (!\u1|count\(1) & (\u1|count\(2) $ (((!\u1|count\(3) & \u1|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(2),
	datac => \u1|count\(3),
	datad => \u1|count\(0),
	combout => \disp0|Mux6~0_combout\);

-- Location: LCCOMB_X60_Y5_N4
\disp0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0|Mux5~0_combout\ = (\u1|count\(2) & ((\u1|count\(3)) # (\u1|count\(1) $ (\u1|count\(0))))) # (!\u1|count\(2) & (\u1|count\(1) & (\u1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(2),
	datac => \u1|count\(3),
	datad => \u1|count\(0),
	combout => \disp0|Mux5~0_combout\);

-- Location: LCCOMB_X60_Y5_N22
\disp0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0|Mux4~0_combout\ = (\u1|count\(2) & (((\u1|count\(3))))) # (!\u1|count\(2) & (\u1|count\(1) & ((\u1|count\(3)) # (!\u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(2),
	datac => \u1|count\(3),
	datad => \u1|count\(0),
	combout => \disp0|Mux4~0_combout\);

-- Location: LCCOMB_X60_Y5_N8
\disp0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0|Mux3~0_combout\ = (\u1|count\(1) & ((\u1|count\(3)) # ((\u1|count\(2) & \u1|count\(0))))) # (!\u1|count\(1) & (\u1|count\(2) $ (((!\u1|count\(3) & \u1|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(2),
	datac => \u1|count\(3),
	datad => \u1|count\(0),
	combout => \disp0|Mux3~0_combout\);

-- Location: LCCOMB_X60_Y5_N26
\disp0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0|Mux2~0_combout\ = (\u1|count\(0)) # ((\u1|count\(1) & ((\u1|count\(3)))) # (!\u1|count\(1) & (\u1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(2),
	datac => \u1|count\(3),
	datad => \u1|count\(0),
	combout => \disp0|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y5_N20
\disp0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0|Mux1~0_combout\ = (\u1|count\(2) & ((\u1|count\(3)) # ((\u1|count\(1) & \u1|count\(0))))) # (!\u1|count\(2) & ((\u1|count\(1)) # ((!\u1|count\(3) & \u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(2),
	datac => \u1|count\(3),
	datad => \u1|count\(0),
	combout => \disp0|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y5_N18
\disp0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0|Mux0~0_combout\ = (\u1|count\(3)) # ((\u1|count\(1) & ((!\u1|count\(0)) # (!\u1|count\(2)))) # (!\u1|count\(1) & (\u1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(2),
	datac => \u1|count\(3),
	datad => \u1|count\(0),
	combout => \disp0|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y5_N28
\disp1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1|Mux6~0_combout\ = (\u2|count\(1) & (((\u2|count\(3))))) # (!\u2|count\(1) & (\u2|count\(2) $ (((\u2|count\(0) & !\u2|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(3),
	datad => \u2|count\(2),
	combout => \disp1|Mux6~0_combout\);

-- Location: LCCOMB_X62_Y5_N2
\disp1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1|Mux5~0_combout\ = (\u2|count\(3) & ((\u2|count\(1)) # ((\u2|count\(2))))) # (!\u2|count\(3) & (\u2|count\(2) & (\u2|count\(1) $ (\u2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(3),
	datad => \u2|count\(2),
	combout => \disp1|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y5_N16
\disp1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1|Mux4~0_combout\ = (\u2|count\(2) & (((\u2|count\(3))))) # (!\u2|count\(2) & (\u2|count\(1) & ((\u2|count\(3)) # (!\u2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(3),
	datad => \u2|count\(2),
	combout => \disp1|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y5_N6
\disp1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1|Mux3~0_combout\ = (\u2|count\(1) & ((\u2|count\(3)) # ((\u2|count\(0) & \u2|count\(2))))) # (!\u2|count\(1) & (\u2|count\(2) $ (((\u2|count\(0) & !\u2|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(3),
	datad => \u2|count\(2),
	combout => \disp1|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y5_N24
\disp1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1|Mux2~0_combout\ = (\u2|count\(0)) # ((\u2|count\(1) & (\u2|count\(3))) # (!\u2|count\(1) & ((\u2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(3),
	datad => \u2|count\(2),
	combout => \disp1|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y5_N18
\disp1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1|Mux1~0_combout\ = (\u2|count\(0) & ((\u2|count\(1)) # (\u2|count\(3) $ (!\u2|count\(2))))) # (!\u2|count\(0) & ((\u2|count\(2) & ((\u2|count\(3)))) # (!\u2|count\(2) & (\u2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(3),
	datad => \u2|count\(2),
	combout => \disp1|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y5_N20
\disp1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1|Mux0~0_combout\ = (\u2|count\(3)) # ((\u2|count\(1) & ((!\u2|count\(2)) # (!\u2|count\(0)))) # (!\u2|count\(1) & ((\u2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(3),
	datad => \u2|count\(2),
	combout => \disp1|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y5_N16
\disp2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp2|Mux6~0_combout\ = (\u3|count\(1) & (((\u3|count\(3))))) # (!\u3|count\(1) & (\u3|count\(2) $ (((\u3|count\(0) & !\u3|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp2|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y5_N26
\disp2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp2|Mux5~0_combout\ = (\u3|count\(2) & ((\u3|count\(3)) # (\u3|count\(0) $ (\u3|count\(1))))) # (!\u3|count\(2) & (((\u3|count\(3) & \u3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp2|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y5_N8
\disp2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp2|Mux4~0_combout\ = (\u3|count\(2) & (((\u3|count\(3))))) # (!\u3|count\(2) & (\u3|count\(1) & ((\u3|count\(3)) # (!\u3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp2|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y5_N2
\disp2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp2|Mux3~0_combout\ = (\u3|count\(1) & ((\u3|count\(3)) # ((\u3|count\(2) & \u3|count\(0))))) # (!\u3|count\(1) & (\u3|count\(2) $ (((\u3|count\(0) & !\u3|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp2|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y5_N24
\disp2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp2|Mux2~0_combout\ = (\u3|count\(0)) # ((\u3|count\(1) & ((\u3|count\(3)))) # (!\u3|count\(1) & (\u3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp2|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y5_N14
\disp2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp2|Mux1~0_combout\ = (\u3|count\(2) & ((\u3|count\(3)) # ((\u3|count\(0) & \u3|count\(1))))) # (!\u3|count\(2) & ((\u3|count\(1)) # ((\u3|count\(0) & !\u3|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp2|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y5_N20
\disp2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp2|Mux0~0_combout\ = (\u3|count\(3)) # ((\u3|count\(2) & ((!\u3|count\(1)) # (!\u3|count\(0)))) # (!\u3|count\(2) & ((\u3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp2|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y5_N20
\disp3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3|Mux6~0_combout\ = (\u4|count\(1) & (((\u4|count\(3))))) # (!\u4|count\(1) & (\u4|count\(2) $ (((!\u4|count\(3) & \u4|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(1),
	datab => \u4|count\(2),
	datac => \u4|count\(3),
	datad => \u4|count\(0),
	combout => \disp3|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y5_N10
\disp3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3|Mux5~0_combout\ = (\u4|count\(2) & ((\u4|count\(3)) # (\u4|count\(1) $ (\u4|count\(0))))) # (!\u4|count\(2) & (\u4|count\(1) & (\u4|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(1),
	datab => \u4|count\(2),
	datac => \u4|count\(3),
	datad => \u4|count\(0),
	combout => \disp3|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y5_N12
\disp3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3|Mux4~0_combout\ = (\u4|count\(2) & (((\u4|count\(3))))) # (!\u4|count\(2) & (\u4|count\(1) & ((\u4|count\(3)) # (!\u4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(1),
	datab => \u4|count\(2),
	datac => \u4|count\(3),
	datad => \u4|count\(0),
	combout => \disp3|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y5_N26
\disp3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3|Mux3~0_combout\ = (\u4|count\(1) & ((\u4|count\(3)) # ((\u4|count\(2) & \u4|count\(0))))) # (!\u4|count\(1) & (\u4|count\(2) $ (((!\u4|count\(3) & \u4|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(1),
	datab => \u4|count\(2),
	datac => \u4|count\(3),
	datad => \u4|count\(0),
	combout => \disp3|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y5_N16
\disp3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3|Mux2~0_combout\ = (\u4|count\(0)) # ((\u4|count\(1) & ((\u4|count\(3)))) # (!\u4|count\(1) & (\u4|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(1),
	datab => \u4|count\(2),
	datac => \u4|count\(3),
	datad => \u4|count\(0),
	combout => \disp3|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y5_N22
\disp3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3|Mux1~0_combout\ = (\u4|count\(2) & ((\u4|count\(3)) # ((\u4|count\(1) & \u4|count\(0))))) # (!\u4|count\(2) & ((\u4|count\(1)) # ((!\u4|count\(3) & \u4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(1),
	datab => \u4|count\(2),
	datac => \u4|count\(3),
	datad => \u4|count\(0),
	combout => \disp3|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y5_N0
\disp3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3|Mux0~0_combout\ = (\u4|count\(3)) # ((\u4|count\(1) & ((!\u4|count\(0)) # (!\u4|count\(2)))) # (!\u4|count\(1) & (\u4|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(1),
	datab => \u4|count\(2),
	datac => \u4|count\(3),
	datad => \u4|count\(0),
	combout => \disp3|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y5_N26
\clk2_sig~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk2_sig~4_combout\ = (\u1|count\(0) & (\clk2_sig~2_combout\ & (!\u1|count\(1) & !\RST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(0),
	datab => \clk2_sig~2_combout\,
	datac => \u1|count\(1),
	datad => \RST~combout\,
	combout => \clk2_sig~4_combout\);

-- Location: LCCOMB_X61_Y5_N28
\clk4_sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk4_sig~1_combout\ = (\clk3_sig~0_combout\ & (\clk2_sig~2_combout\ & (\clk2_sig~3_combout\ & \clk4_sig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk3_sig~0_combout\,
	datab => \clk2_sig~2_combout\,
	datac => \clk2_sig~3_combout\,
	datad => \clk4_sig~0_combout\,
	combout => \clk4_sig~1_combout\);

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
	padio => ww_CLR);

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
	padio => ww_EN);

-- Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_ms[0]~I\ : cycloneii_io
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
	datain => \u1|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_ms(0));

-- Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_ms[1]~I\ : cycloneii_io
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
	datain => \u1|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_ms(1));

-- Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_ms[2]~I\ : cycloneii_io
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
	datain => \u1|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_ms(2));

-- Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_ms[3]~I\ : cycloneii_io
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
	datain => \u1|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_ms(3));

-- Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_ms[4]~I\ : cycloneii_io
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
	datain => \u2|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_ms(4));

-- Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_ms[5]~I\ : cycloneii_io
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
	datain => \u2|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_ms(5));

-- Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_ms[6]~I\ : cycloneii_io
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
	datain => \u2|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_ms(6));

-- Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_ms[7]~I\ : cycloneii_io
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
	datain => \u2|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_ms(7));

-- Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_s[0]~I\ : cycloneii_io
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
	datain => \u3|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_s(0));

-- Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_s[1]~I\ : cycloneii_io
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
	datain => \u3|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_s(1));

-- Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_s[2]~I\ : cycloneii_io
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
	datain => \u3|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_s(2));

-- Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_s[3]~I\ : cycloneii_io
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
	datain => \u3|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_s(3));

-- Location: PIN_W23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_s[4]~I\ : cycloneii_io
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
	datain => \u4|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_s(4));

-- Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_s[5]~I\ : cycloneii_io
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
	datain => \u4|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_s(5));

-- Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q_s[6]~I\ : cycloneii_io
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
	datain => \u4|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_s(6));

-- Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q_s[7]~I\ : cycloneii_io
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
	datain => \u4|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_s(7));

-- Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q1[0]~I\ : cycloneii_io
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
	datain => \u1|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(0));

-- Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q1[1]~I\ : cycloneii_io
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
	datain => \u1|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(1));

-- Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q1[2]~I\ : cycloneii_io
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
	datain => \u1|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(2));

-- Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q1[3]~I\ : cycloneii_io
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
	datain => \u1|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(3));

-- Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q2[0]~I\ : cycloneii_io
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
	datain => \u2|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(0));

-- Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q2[1]~I\ : cycloneii_io
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
	datain => \u2|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(1));

-- Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q2[2]~I\ : cycloneii_io
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
	datain => \u2|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(2));

-- Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q2[3]~I\ : cycloneii_io
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
	datain => \u2|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(3));

-- Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q3[0]~I\ : cycloneii_io
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
	datain => \u3|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q3(0));

-- Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q3[1]~I\ : cycloneii_io
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
	datain => \u3|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q3(1));

-- Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q3[2]~I\ : cycloneii_io
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
	datain => \u3|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q3(2));

-- Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q3[3]~I\ : cycloneii_io
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
	datain => \u3|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q3(3));

-- Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q4[0]~I\ : cycloneii_io
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
	datain => \u4|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q4(0));

-- Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q4[1]~I\ : cycloneii_io
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
	datain => \u4|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q4(1));

-- Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\Q4[2]~I\ : cycloneii_io
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
	datain => \u4|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q4(2));

-- Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\Q4[3]~I\ : cycloneii_io
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
	datain => \u4|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q4(3));

-- Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \disp0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \disp0|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \disp0|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \disp0|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \disp0|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \disp0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \disp0|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \disp1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => \disp1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => \disp1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \disp1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \disp1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \disp1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => \disp1|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX2[0]~I\ : cycloneii_io
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
	datain => \disp2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX2[1]~I\ : cycloneii_io
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
	datain => \disp2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX2[2]~I\ : cycloneii_io
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
	datain => \disp2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX2[3]~I\ : cycloneii_io
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
	datain => \disp2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX2[4]~I\ : cycloneii_io
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
	datain => \disp2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX2[5]~I\ : cycloneii_io
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
	datain => \disp2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX2[6]~I\ : cycloneii_io
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
	datain => \disp2|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX3[0]~I\ : cycloneii_io
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
	datain => \disp3|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX3[1]~I\ : cycloneii_io
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
	datain => \disp3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX3[2]~I\ : cycloneii_io
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
	datain => \disp3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX3[3]~I\ : cycloneii_io
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
	datain => \disp3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX3[4]~I\ : cycloneii_io
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
	datain => \disp3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX3[5]~I\ : cycloneii_io
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
	datain => \disp3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\HEX3[6]~I\ : cycloneii_io
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
	datain => \disp3|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\CLK2~I\ : cycloneii_io
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
	datain => \clk2_sig~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLK2);

-- Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\CLK3~I\ : cycloneii_io
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
	datain => \clk3_sig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLK3);

-- Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\CLK4~I\ : cycloneii_io
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
	datain => \clk4_sig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLK4);

-- Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\CLK_100HZ~I\ : cycloneii_io
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
	datain => \clk_100hz_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLK_100HZ);

-- Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
\RST_SIG1~I\ : cycloneii_io
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
	datain => \rst_sig_internal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RST_SIG1);

-- Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
\RST_SIG2~I\ : cycloneii_io
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
	datain => \rst_sig_internal2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RST_SIG2);
END structure;


