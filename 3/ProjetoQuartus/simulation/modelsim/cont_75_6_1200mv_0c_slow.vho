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

-- DATE "04/12/2026 20:47:39"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
-- CLR	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK2	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK3	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK4	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_100HZ	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_SIG1	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_SIG2	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_RESET	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_PLAY_PAUSE	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \btn_reset_prev~q\ : std_logic;
SIGNAL \clr_internal~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \BTN_RESET~input_o\ : std_logic;
SIGNAL \Q_ms[0]~output_o\ : std_logic;
SIGNAL \Q_ms[1]~output_o\ : std_logic;
SIGNAL \Q_ms[2]~output_o\ : std_logic;
SIGNAL \Q_ms[3]~output_o\ : std_logic;
SIGNAL \Q_ms[4]~output_o\ : std_logic;
SIGNAL \Q_ms[5]~output_o\ : std_logic;
SIGNAL \Q_ms[6]~output_o\ : std_logic;
SIGNAL \Q_ms[7]~output_o\ : std_logic;
SIGNAL \Q_s[0]~output_o\ : std_logic;
SIGNAL \Q_s[1]~output_o\ : std_logic;
SIGNAL \Q_s[2]~output_o\ : std_logic;
SIGNAL \Q_s[3]~output_o\ : std_logic;
SIGNAL \Q_s[4]~output_o\ : std_logic;
SIGNAL \Q_s[5]~output_o\ : std_logic;
SIGNAL \Q_s[6]~output_o\ : std_logic;
SIGNAL \Q_s[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \CLK2~output_o\ : std_logic;
SIGNAL \CLK3~output_o\ : std_logic;
SIGNAL \CLK4~output_o\ : std_logic;
SIGNAL \CLK_100HZ~output_o\ : std_logic;
SIGNAL \RST_SIG1~output_o\ : std_logic;
SIGNAL \RST_SIG2~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \BTN_PLAY_PAUSE~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn_play_pause_prev~q\ : std_logic;
SIGNAL \clr_internal~1_combout\ : std_logic;
SIGNAL \clr_internal~q\ : std_logic;
SIGNAL \u1|count~0_combout\ : std_logic;
SIGNAL \u2|count~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
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
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \div_count~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \div_count~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \clk_100hz_sig~q\ : std_logic;
SIGNAL \u1|Add0~1_combout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \en_internal~feeder_combout\ : std_logic;
SIGNAL \en_internal~q\ : std_logic;
SIGNAL \u1|count[1]~1_combout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \clk2_sig~0_combout\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \clk2_sig~1_combout\ : std_logic;
SIGNAL \u2|count[0]~1_combout\ : std_logic;
SIGNAL \u2|Add0~1_combout\ : std_logic;
SIGNAL \u2|Add0~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \rst_sig_internal1~combout\ : std_logic;
SIGNAL \u2|Add0~0_combout\ : std_logic;
SIGNAL \u3|count~0_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \clk2_sig~2_combout\ : std_logic;
SIGNAL \clk3_sig~0_combout\ : std_logic;
SIGNAL \u3|count[0]~1_combout\ : std_logic;
SIGNAL \u3|Add0~1_combout\ : std_logic;
SIGNAL \u3|Add0~2_combout\ : std_logic;
SIGNAL \u4|count~0_combout\ : std_logic;
SIGNAL \clk4_sig~0_combout\ : std_logic;
SIGNAL \u4|count[0]~1_combout\ : std_logic;
SIGNAL \u4|Add0~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \u4|Add0~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \rst_sig_internal2~combout\ : std_logic;
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
SIGNAL \clk4_sig~1_combout\ : std_logic;
SIGNAL div_count : std_logic_vector(17 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst_sig_internal2~combout\ : std_logic;
SIGNAL \ALT_INV_rst_sig_internal1~combout\ : std_logic;
SIGNAL \ALT_INV_clr_internal~q\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CLR <= CLR;
ww_RST <= RST;
ww_EN <= EN;
ww_BTN_PLAY_PAUSE <= BTN_PLAY_PAUSE;
ww_BTN_RESET <= BTN_RESET;
Q_ms <= ww_Q_ms;
Q_s <= ww_Q_s;
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

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_rst_sig_internal2~combout\ <= NOT \rst_sig_internal2~combout\;
\ALT_INV_rst_sig_internal1~combout\ <= NOT \rst_sig_internal1~combout\;
\ALT_INV_clr_internal~q\ <= NOT \clr_internal~q\;
\disp3|ALT_INV_Mux0~0_combout\ <= NOT \disp3|Mux0~0_combout\;
\disp3|ALT_INV_Mux1~0_combout\ <= NOT \disp3|Mux1~0_combout\;
\disp3|ALT_INV_Mux2~0_combout\ <= NOT \disp3|Mux2~0_combout\;
\disp3|ALT_INV_Mux4~0_combout\ <= NOT \disp3|Mux4~0_combout\;
\disp3|ALT_INV_Mux5~0_combout\ <= NOT \disp3|Mux5~0_combout\;
\disp3|ALT_INV_Mux6~0_combout\ <= NOT \disp3|Mux6~0_combout\;
\disp2|ALT_INV_Mux0~0_combout\ <= NOT \disp2|Mux0~0_combout\;
\disp2|ALT_INV_Mux1~0_combout\ <= NOT \disp2|Mux1~0_combout\;
\disp2|ALT_INV_Mux2~0_combout\ <= NOT \disp2|Mux2~0_combout\;
\disp2|ALT_INV_Mux4~0_combout\ <= NOT \disp2|Mux4~0_combout\;
\disp2|ALT_INV_Mux5~0_combout\ <= NOT \disp2|Mux5~0_combout\;
\disp2|ALT_INV_Mux6~0_combout\ <= NOT \disp2|Mux6~0_combout\;
\disp1|ALT_INV_Mux0~0_combout\ <= NOT \disp1|Mux0~0_combout\;
\disp1|ALT_INV_Mux1~0_combout\ <= NOT \disp1|Mux1~0_combout\;
\disp1|ALT_INV_Mux2~0_combout\ <= NOT \disp1|Mux2~0_combout\;
\disp1|ALT_INV_Mux4~0_combout\ <= NOT \disp1|Mux4~0_combout\;
\disp1|ALT_INV_Mux5~0_combout\ <= NOT \disp1|Mux5~0_combout\;
\disp1|ALT_INV_Mux6~0_combout\ <= NOT \disp1|Mux6~0_combout\;
\disp0|ALT_INV_Mux0~0_combout\ <= NOT \disp0|Mux0~0_combout\;
\disp0|ALT_INV_Mux1~0_combout\ <= NOT \disp0|Mux1~0_combout\;
\disp0|ALT_INV_Mux2~0_combout\ <= NOT \disp0|Mux2~0_combout\;
\disp0|ALT_INV_Mux4~0_combout\ <= NOT \disp0|Mux4~0_combout\;
\disp0|ALT_INV_Mux5~0_combout\ <= NOT \disp0|Mux5~0_combout\;
\disp0|ALT_INV_Mux6~0_combout\ <= NOT \disp0|Mux6~0_combout\;
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;

-- Location: LCCOMB_X46_Y28_N30
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (div_count(8) & (\Add0~15\ $ (GND))) # (!div_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((div_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X46_Y27_N6
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (div_count(12) & (\Add0~23\ $ (GND))) # (!div_count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((div_count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X46_Y27_N8
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (div_count(13) & (!\Add0~25\)) # (!div_count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!div_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X46_Y27_N10
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (div_count(14) & (\Add0~27\ $ (GND))) # (!div_count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((div_count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X46_Y27_N12
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (div_count(15) & (!\Add0~29\)) # (!div_count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!div_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X46_Y27_N14
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (div_count(16) & (\Add0~31\ $ (GND))) # (!div_count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((div_count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X46_Y27_N16
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = \Add0~33\ $ (div_count(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => div_count(17),
	cin => \Add0~33\,
	combout => \Add0~34_combout\);

-- Location: FF_X45_Y28_N23
btn_reset_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \BTN_RESET~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_reset_prev~q\);

-- Location: LCCOMB_X45_Y28_N22
\clr_internal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_internal~0_combout\ = (!\state~q\ & (((\BTN_RESET~input_o\ & !\btn_reset_prev~q\)) # (!\clr_internal~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RESET~input_o\,
	datab => \clr_internal~q\,
	datac => \btn_reset_prev~q\,
	datad => \state~q\,
	combout => \clr_internal~0_combout\);

-- Location: FF_X46_Y27_N17
\div_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(17));

-- Location: FF_X46_Y27_N15
\div_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(16));

-- Location: FF_X46_Y27_N13
\div_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(15));

-- Location: FF_X46_Y27_N11
\div_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(14));

-- Location: LCCOMB_X46_Y27_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!div_count(15) & (!div_count(17) & (!div_count(16) & !div_count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(15),
	datab => div_count(17),
	datac => div_count(16),
	datad => div_count(14),
	combout => \Equal0~0_combout\);

-- Location: FF_X46_Y27_N7
\div_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(12));

-- Location: FF_X46_Y28_N31
\div_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(8));

-- Location: IOIBUF_X53_Y13_N8
\BTN_RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_RESET,
	o => \BTN_RESET~input_o\);

-- Location: IOOBUF_X53_Y25_N2
\Q_ms[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|count\(0),
	devoe => ww_devoe,
	o => \Q_ms[0]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\Q_ms[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|count\(1),
	devoe => ww_devoe,
	o => \Q_ms[1]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\Q_ms[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|count\(2),
	devoe => ww_devoe,
	o => \Q_ms[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\Q_ms[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|count\(3),
	devoe => ww_devoe,
	o => \Q_ms[3]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\Q_ms[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|count\(0),
	devoe => ww_devoe,
	o => \Q_ms[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\Q_ms[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|count\(1),
	devoe => ww_devoe,
	o => \Q_ms[5]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\Q_ms[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|count\(2),
	devoe => ww_devoe,
	o => \Q_ms[6]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\Q_ms[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|count\(3),
	devoe => ww_devoe,
	o => \Q_ms[7]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\Q_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|count\(0),
	devoe => ww_devoe,
	o => \Q_s[0]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\Q_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|count\(1),
	devoe => ww_devoe,
	o => \Q_s[1]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\Q_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|count\(2),
	devoe => ww_devoe,
	o => \Q_s[2]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\Q_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|count\(3),
	devoe => ww_devoe,
	o => \Q_s[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\Q_s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|count\(0),
	devoe => ww_devoe,
	o => \Q_s[4]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\Q_s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|count\(1),
	devoe => ww_devoe,
	o => \Q_s[5]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Q_s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|count\(2),
	devoe => ww_devoe,
	o => \Q_s[6]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\Q_s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|count\(3),
	devoe => ww_devoe,
	o => \Q_s[7]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\CLK2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk2_sig~1_combout\,
	devoe => ww_devoe,
	o => \CLK2~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\CLK3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk3_sig~0_combout\,
	devoe => ww_devoe,
	o => \CLK3~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\CLK4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk4_sig~1_combout\,
	devoe => ww_devoe,
	o => \CLK4~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\CLK_100HZ~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_100hz_sig~q\,
	devoe => ww_devoe,
	o => \CLK_100HZ~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\RST_SIG1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rst_sig_internal1~combout\,
	devoe => ww_devoe,
	o => \RST_SIG1~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\RST_SIG2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rst_sig_internal2~combout\,
	devoe => ww_devoe,
	o => \RST_SIG2~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X45_Y34_N8
\BTN_PLAY_PAUSE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_PLAY_PAUSE,
	o => \BTN_PLAY_PAUSE~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X45_Y28_N19
btn_play_pause_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \BTN_PLAY_PAUSE~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_play_pause_prev~q\);

-- Location: LCCOMB_X45_Y28_N26
\clr_internal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clr_internal~1_combout\ = ((\BTN_PLAY_PAUSE~input_o\ & !\btn_play_pause_prev~q\)) # (!\clr_internal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_internal~0_combout\,
	datab => \BTN_PLAY_PAUSE~input_o\,
	datac => \btn_play_pause_prev~q\,
	combout => \clr_internal~1_combout\);

-- Location: FF_X45_Y28_N27
clr_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \clr_internal~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clr_internal~q\);

-- Location: LCCOMB_X45_Y28_N24
\u1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count~0_combout\ = (!\u1|count\(0) & \clr_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|count\(0),
	datad => \clr_internal~q\,
	combout => \u1|count~0_combout\);

-- Location: LCCOMB_X44_Y28_N8
\u2|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count~0_combout\ = (\clr_internal~q\ & !\u2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_internal~q\,
	datac => \u2|count\(0),
	combout => \u2|count~0_combout\);

-- Location: LCCOMB_X46_Y28_N14
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = div_count(0) $ (VCC)
-- \Add0~1\ = CARRY(div_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => div_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X46_Y28_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (div_count(1) & (!\Add0~1\)) # (!div_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!div_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X46_Y28_N18
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (div_count(2) & (\Add0~3\ $ (GND))) # (!div_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((div_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X46_Y28_N19
\div_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(2));

-- Location: LCCOMB_X46_Y28_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (div_count(3) & (!\Add0~5\)) # (!div_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!div_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X46_Y28_N21
\div_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(3));

-- Location: LCCOMB_X46_Y28_N22
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (div_count(4) & (\Add0~7\ $ (GND))) # (!div_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((div_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X46_Y28_N24
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (div_count(5) & (!\Add0~9\)) # (!div_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!div_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X46_Y28_N25
\div_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(5));

-- Location: LCCOMB_X46_Y28_N26
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (div_count(6) & (\Add0~11\ $ (GND))) # (!div_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((div_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X46_Y28_N28
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (div_count(7) & (!\Add0~13\)) # (!div_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!div_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X46_Y28_N29
\div_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(7));

-- Location: FF_X46_Y28_N27
\div_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(6));

-- Location: LCCOMB_X46_Y27_N0
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (div_count(9) & (!\Add0~17\)) # (!div_count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!div_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X46_Y27_N1
\div_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(9));

-- Location: LCCOMB_X46_Y28_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!div_count(8) & (!div_count(7) & (!div_count(6) & !div_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(8),
	datab => div_count(7),
	datac => div_count(6),
	datad => div_count(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X46_Y27_N2
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (div_count(10) & (\Add0~19\ $ (GND))) # (!div_count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((div_count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X46_Y27_N3
\div_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(10));

-- Location: LCCOMB_X46_Y27_N4
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (div_count(11) & (!\Add0~21\)) # (!div_count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!div_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X46_Y27_N5
\div_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(11));

-- Location: FF_X46_Y27_N9
\div_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(13));

-- Location: LCCOMB_X46_Y27_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!div_count(12) & (!div_count(13) & (!div_count(11) & !div_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(12),
	datab => div_count(13),
	datac => div_count(11),
	datad => div_count(10),
	combout => \Equal0~1_combout\);

-- Location: FF_X46_Y28_N23
\div_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(4));

-- Location: LCCOMB_X46_Y28_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!div_count(3) & (!div_count(2) & (!div_count(4) & !div_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(3),
	datab => div_count(2),
	datac => div_count(4),
	datad => div_count(5),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X46_Y28_N6
\Equal0~4\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X46_Y28_N4
\div_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_count~1_combout\ = (\Add0~0_combout\ & (((div_count(0)) # (!\Equal0~4_combout\)) # (!div_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(1),
	datab => \Add0~0_combout\,
	datac => div_count(0),
	datad => \Equal0~4_combout\,
	combout => \div_count~1_combout\);

-- Location: FF_X46_Y28_N5
\div_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_count~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(0));

-- Location: LCCOMB_X46_Y28_N12
\div_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_count~0_combout\ = (\Add0~2_combout\ & (((div_count(0)) # (!div_count(1))) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => div_count(0),
	datac => div_count(1),
	datad => \Add0~2_combout\,
	combout => \div_count~0_combout\);

-- Location: FF_X46_Y28_N13
\div_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_count~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_count(1));

-- Location: LCCOMB_X45_Y28_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!div_count(0) & (div_count(1) & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_count(0),
	datac => div_count(1),
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: FF_X45_Y28_N29
clk_100hz_sig : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Equal0~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_100hz_sig~q\);

-- Location: LCCOMB_X44_Y28_N30
\u1|Add0~1\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X45_Y28_N16
\state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~0_combout\ = \state~q\ $ (((!\btn_play_pause_prev~q\ & \BTN_PLAY_PAUSE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_play_pause_prev~q\,
	datab => \BTN_PLAY_PAUSE~input_o\,
	datac => \state~q\,
	combout => \state~0_combout\);

-- Location: FF_X45_Y28_N17
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: LCCOMB_X45_Y28_N4
\en_internal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \en_internal~feeder_combout\ = \state~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state~q\,
	combout => \en_internal~feeder_combout\);

-- Location: FF_X45_Y28_N5
en_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \en_internal~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en_internal~q\);

-- Location: LCCOMB_X45_Y28_N18
\u1|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[1]~1_combout\ = ((\en_internal~q\ & \clk_100hz_sig~q\)) # (!\clr_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_internal~q\,
	datab => \en_internal~q\,
	datad => \clk_100hz_sig~q\,
	combout => \u1|count[1]~1_combout\);

-- Location: FF_X44_Y28_N31
\u1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add0~1_combout\,
	clrn => \ALT_INV_rst_sig_internal1~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(2));

-- Location: LCCOMB_X44_Y28_N12
\u1|Add0~0\ : cycloneive_lcell_comb
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

-- Location: FF_X44_Y28_N13
\u1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add0~0_combout\,
	clrn => \ALT_INV_rst_sig_internal1~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(1));

-- Location: LCCOMB_X45_Y28_N20
\clk2_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2_sig~0_combout\ = (\clr_internal~q\ & (\u1|count\(0) & (\en_internal~q\ & \u1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_internal~q\,
	datab => \u1|count\(0),
	datac => \en_internal~q\,
	datad => \u1|count\(1),
	combout => \clk2_sig~0_combout\);

-- Location: LCCOMB_X44_Y28_N24
\u1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = \u1|count\(3) $ (((\u1|count\(2) & (\u1|count\(0) & \u1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(1),
	combout => \u1|Add0~2_combout\);

-- Location: FF_X44_Y28_N25
\u1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|Add0~2_combout\,
	clrn => \ALT_INV_rst_sig_internal1~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(3));

-- Location: LCCOMB_X44_Y28_N6
\clk2_sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2_sig~1_combout\ = (!\RST~input_o\ & (\u1|count\(2) & (\clk2_sig~0_combout\ & \u1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \u1|count\(2),
	datac => \clk2_sig~0_combout\,
	datad => \u1|count\(3),
	combout => \clk2_sig~1_combout\);

-- Location: LCCOMB_X44_Y28_N26
\u2|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count[0]~1_combout\ = ((\clk_100hz_sig~q\ & \clk2_sig~1_combout\)) # (!\clr_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_100hz_sig~q\,
	datac => \clr_internal~q\,
	datad => \clk2_sig~1_combout\,
	combout => \u2|count[0]~1_combout\);

-- Location: FF_X44_Y28_N9
\u2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|count~0_combout\,
	clrn => \ALT_INV_rst_sig_internal1~combout\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(0));

-- Location: LCCOMB_X44_Y28_N20
\u2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~1_combout\ = \u2|count\(2) $ (((\u2|count\(1) & \u2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(2),
	combout => \u2|Add0~1_combout\);

-- Location: FF_X44_Y28_N21
\u2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|Add0~1_combout\,
	clrn => \ALT_INV_rst_sig_internal1~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(2));

-- Location: LCCOMB_X44_Y28_N14
\u2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~2_combout\ = \u2|count\(3) $ (((\u2|count\(1) & (\u2|count\(0) & \u2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(3),
	datad => \u2|count\(2),
	combout => \u2|Add0~2_combout\);

-- Location: FF_X44_Y28_N15
\u2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|Add0~2_combout\,
	clrn => \ALT_INV_rst_sig_internal1~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(3));

-- Location: LCCOMB_X44_Y28_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\u2|count\(1) & (!\u1|count\(3) & (!\u2|count\(0) & \u2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u1|count\(3),
	datac => \u2|count\(0),
	datad => \u2|count\(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X44_Y28_N2
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\u1|count\(1) & (\u1|count\(2) & !\u1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datac => \u1|count\(2),
	datad => \u1|count\(0),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X44_Y28_N28
rst_sig_internal1 : cycloneive_lcell_comb
-- Equation(s):
-- \rst_sig_internal1~combout\ = (\RST~input_o\) # ((!\u2|count\(3) & (\Equal1~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \u2|count\(3),
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \rst_sig_internal1~combout\);

-- Location: FF_X45_Y28_N25
\u1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|count~0_combout\,
	clrn => \ALT_INV_rst_sig_internal1~combout\,
	ena => \u1|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(0));

-- Location: LCCOMB_X44_Y28_N22
\u2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~0_combout\ = \u2|count\(0) $ (\u2|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	combout => \u2|Add0~0_combout\);

-- Location: FF_X44_Y28_N23
\u2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|Add0~0_combout\,
	clrn => \ALT_INV_rst_sig_internal1~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(1));

-- Location: LCCOMB_X43_Y28_N20
\u3|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count~0_combout\ = (!\u3|count\(0) & \clr_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|count\(0),
	datad => \clr_internal~q\,
	combout => \u3|count~0_combout\);

-- Location: LCCOMB_X43_Y28_N0
\u3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = \u3|count\(0) $ (\u3|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(0),
	datac => \u3|count\(1),
	combout => \u3|Add0~0_combout\);

-- Location: LCCOMB_X45_Y28_N2
\clk2_sig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2_sig~2_combout\ = (!\RST~input_o\ & \clk2_sig~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \clk2_sig~0_combout\,
	combout => \clk2_sig~2_combout\);

-- Location: LCCOMB_X44_Y28_N10
\clk3_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk3_sig~0_combout\ = (!\u1|count\(2) & (!\u2|count\(3) & (\Equal1~0_combout\ & \clk2_sig~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u2|count\(3),
	datac => \Equal1~0_combout\,
	datad => \clk2_sig~2_combout\,
	combout => \clk3_sig~0_combout\);

-- Location: LCCOMB_X44_Y28_N16
\u3|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count[0]~1_combout\ = ((\clk_100hz_sig~q\ & \clk3_sig~0_combout\)) # (!\clr_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_100hz_sig~q\,
	datac => \clr_internal~q\,
	datad => \clk3_sig~0_combout\,
	combout => \u3|count[0]~1_combout\);

-- Location: FF_X43_Y28_N1
\u3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|Add0~0_combout\,
	clrn => \ALT_INV_rst_sig_internal2~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(1));

-- Location: LCCOMB_X43_Y28_N22
\u3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~1_combout\ = \u3|count\(2) $ (((\u3|count\(0) & \u3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(0),
	datab => \u3|count\(1),
	datac => \u3|count\(2),
	combout => \u3|Add0~1_combout\);

-- Location: FF_X43_Y28_N23
\u3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|Add0~1_combout\,
	clrn => \ALT_INV_rst_sig_internal2~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(2));

-- Location: LCCOMB_X43_Y28_N28
\u3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~2_combout\ = \u3|count\(3) $ (((\u3|count\(0) & (\u3|count\(1) & \u3|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(0),
	datab => \u3|count\(1),
	datac => \u3|count\(3),
	datad => \u3|count\(2),
	combout => \u3|Add0~2_combout\);

-- Location: FF_X43_Y28_N29
\u3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|Add0~2_combout\,
	clrn => \ALT_INV_rst_sig_internal2~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(3));

-- Location: LCCOMB_X43_Y28_N18
\u4|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|count~0_combout\ = (!\u4|count\(0) & \clr_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|count\(0),
	datad => \clr_internal~q\,
	combout => \u4|count~0_combout\);

-- Location: LCCOMB_X43_Y28_N14
\clk4_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk4_sig~0_combout\ = (\u3|count\(3) & (\u3|count\(1) & (\u3|count\(0) & \u3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(1),
	datac => \u3|count\(0),
	datad => \u3|count\(2),
	combout => \clk4_sig~0_combout\);

-- Location: LCCOMB_X44_Y28_N18
\u4|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|count[0]~1_combout\ = ((\clk_100hz_sig~q\ & (\clk4_sig~0_combout\ & \clk3_sig~0_combout\))) # (!\clr_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_internal~q\,
	datab => \clk_100hz_sig~q\,
	datac => \clk4_sig~0_combout\,
	datad => \clk3_sig~0_combout\,
	combout => \u4|count[0]~1_combout\);

-- Location: FF_X43_Y28_N19
\u4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u4|count~0_combout\,
	clrn => \ALT_INV_rst_sig_internal2~combout\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|count\(0));

-- Location: LCCOMB_X43_Y28_N30
\u4|Add0~0\ : cycloneive_lcell_comb
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

-- Location: FF_X43_Y28_N31
\u4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u4|Add0~0_combout\,
	clrn => \ALT_INV_rst_sig_internal2~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|count\(1));

-- Location: LCCOMB_X43_Y28_N8
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\u3|count\(2) & (\u3|count\(3) & (\u4|count\(1) & \u4|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(3),
	datac => \u4|count\(1),
	datad => \u4|count\(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X43_Y28_N26
\u4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Add0~2_combout\ = \u4|count\(3) $ (((\u4|count\(2) & (\u4|count\(0) & \u4|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(0),
	datac => \u4|count\(3),
	datad => \u4|count\(1),
	combout => \u4|Add0~2_combout\);

-- Location: FF_X43_Y28_N27
\u4|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u4|Add0~2_combout\,
	clrn => \ALT_INV_rst_sig_internal2~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|count\(3));

-- Location: LCCOMB_X43_Y28_N6
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\u4|count\(2) & (!\u3|count\(1) & (!\u4|count\(3) & !\u3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u3|count\(1),
	datac => \u4|count\(3),
	datad => \u3|count\(0),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X43_Y28_N12
rst_sig_internal2 : cycloneive_lcell_comb
-- Equation(s):
-- \rst_sig_internal2~combout\ = (\RST~input_o\) # ((\Equal2~0_combout\ & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \rst_sig_internal2~combout\);

-- Location: FF_X43_Y28_N21
\u3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|count~0_combout\,
	clrn => \ALT_INV_rst_sig_internal2~combout\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(0));

-- Location: LCCOMB_X43_Y28_N4
\u4|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Add0~1_combout\ = \u4|count\(2) $ (((\u4|count\(1) & \u4|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|count\(1),
	datac => \u4|count\(2),
	datad => \u4|count\(0),
	combout => \u4|Add0~1_combout\);

-- Location: FF_X43_Y28_N5
\u4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u4|Add0~1_combout\,
	clrn => \ALT_INV_rst_sig_internal2~combout\,
	sclr => \ALT_INV_clr_internal~q\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|count\(2));

-- Location: LCCOMB_X45_Y28_N10
\disp0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux6~0_combout\ = (\u1|count\(3) & ((\u1|count\(2)) # ((\u1|count\(1))))) # (!\u1|count\(3) & (\u1|count\(0) & (\u1|count\(2) $ (!\u1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(1),
	datac => \u1|count\(0),
	datad => \u1|count\(3),
	combout => \disp0|Mux6~0_combout\);

-- Location: LCCOMB_X45_Y28_N12
\disp0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux5~0_combout\ = (\u1|count\(2) & (((\u1|count\(3))))) # (!\u1|count\(2) & (\u1|count\(1) & ((\u1|count\(3)) # (!\u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(1),
	datac => \u1|count\(0),
	datad => \u1|count\(3),
	combout => \disp0|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y28_N30
\disp0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux4~0_combout\ = (\u1|count\(0)) # ((\u1|count\(1) & ((\u1|count\(3)))) # (!\u1|count\(1) & (\u1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(1),
	datac => \u1|count\(0),
	datad => \u1|count\(3),
	combout => \disp0|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y28_N0
\disp0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux3~0_combout\ = (\u1|count\(2) & (!\u1|count\(3) & (\u1|count\(1) $ (\u1|count\(0))))) # (!\u1|count\(2) & (\u1|count\(1) $ (((\u1|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(1),
	datac => \u1|count\(0),
	datad => \u1|count\(3),
	combout => \disp0|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y28_N6
\disp0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux2~0_combout\ = (\u1|count\(2) & ((\u1|count\(3)) # (\u1|count\(1) $ (\u1|count\(0))))) # (!\u1|count\(2) & (\u1|count\(1) & ((\u1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(1),
	datac => \u1|count\(0),
	datad => \u1|count\(3),
	combout => \disp0|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y28_N8
\disp0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux1~0_combout\ = (\u1|count\(2) & ((\u1|count\(3)) # ((\u1|count\(1) & \u1|count\(0))))) # (!\u1|count\(2) & ((\u1|count\(1)) # ((\u1|count\(0) & !\u1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(1),
	datac => \u1|count\(0),
	datad => \u1|count\(3),
	combout => \disp0|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y28_N14
\disp0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux0~0_combout\ = (\u1|count\(1) & (((\u1|count\(3))))) # (!\u1|count\(1) & (\u1|count\(2) $ (((\u1|count\(0) & !\u1|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datab => \u1|count\(1),
	datac => \u1|count\(0),
	datad => \u1|count\(3),
	combout => \disp0|Mux0~0_combout\);

-- Location: LCCOMB_X52_Y30_N24
\disp1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux6~0_combout\ = (\u2|count\(3) & ((\u2|count\(2)) # ((\u2|count\(1))))) # (!\u2|count\(3) & (\u2|count\(0) & (\u2|count\(2) $ (!\u2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp1|Mux6~0_combout\);

-- Location: LCCOMB_X52_Y30_N10
\disp1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux5~0_combout\ = (\u2|count\(2) & (((\u2|count\(3))))) # (!\u2|count\(2) & (\u2|count\(1) & ((\u2|count\(3)) # (!\u2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp1|Mux5~0_combout\);

-- Location: LCCOMB_X52_Y30_N0
\disp1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux4~0_combout\ = (\u2|count\(0)) # ((\u2|count\(1) & ((\u2|count\(3)))) # (!\u2|count\(1) & (\u2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp1|Mux4~0_combout\);

-- Location: LCCOMB_X52_Y30_N6
\disp1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux3~0_combout\ = (\u2|count\(2) & (!\u2|count\(3) & (\u2|count\(0) $ (\u2|count\(1))))) # (!\u2|count\(2) & ((\u2|count\(1) $ (\u2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp1|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y30_N4
\disp1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux2~0_combout\ = (\u2|count\(2) & ((\u2|count\(3)) # (\u2|count\(0) $ (\u2|count\(1))))) # (!\u2|count\(2) & (((\u2|count\(1) & \u2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp1|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y30_N2
\disp1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux1~0_combout\ = (\u2|count\(2) & ((\u2|count\(3)) # ((\u2|count\(0) & \u2|count\(1))))) # (!\u2|count\(2) & ((\u2|count\(1)) # ((\u2|count\(0) & !\u2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp1|Mux1~0_combout\);

-- Location: LCCOMB_X52_Y30_N20
\disp1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux0~0_combout\ = (\u2|count\(1) & (((\u2|count\(3))))) # (!\u2|count\(1) & (\u2|count\(2) $ (((\u2|count\(0) & !\u2|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp1|Mux0~0_combout\);

-- Location: LCCOMB_X43_Y28_N24
\disp2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux6~0_combout\ = (\u3|count\(3) & ((\u3|count\(1)) # ((\u3|count\(2))))) # (!\u3|count\(3) & (\u3|count\(0) & (\u3|count\(1) $ (!\u3|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(1),
	datac => \u3|count\(0),
	datad => \u3|count\(2),
	combout => \disp2|Mux6~0_combout\);

-- Location: LCCOMB_X43_Y28_N2
\disp2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux5~0_combout\ = (\u3|count\(2) & (\u3|count\(3))) # (!\u3|count\(2) & (\u3|count\(1) & ((\u3|count\(3)) # (!\u3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(1),
	datac => \u3|count\(0),
	datad => \u3|count\(2),
	combout => \disp2|Mux5~0_combout\);

-- Location: LCCOMB_X52_Y22_N20
\disp2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux4~0_combout\ = (\u3|count\(0)) # ((\u3|count\(1) & ((\u3|count\(3)))) # (!\u3|count\(1) & (\u3|count\(2))))

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
	combout => \disp2|Mux4~0_combout\);

-- Location: LCCOMB_X43_Y28_N16
\disp2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux3~0_combout\ = (\u3|count\(3) & (!\u3|count\(1) & ((!\u3|count\(2))))) # (!\u3|count\(3) & (\u3|count\(1) $ (((\u3|count\(0) & \u3|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(1),
	datac => \u3|count\(0),
	datad => \u3|count\(2),
	combout => \disp2|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y22_N6
\disp2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux2~0_combout\ = (\u3|count\(2) & ((\u3|count\(3)) # (\u3|count\(0) $ (\u3|count\(1))))) # (!\u3|count\(2) & (((\u3|count\(3) & \u3|count\(1)))))

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
	combout => \disp2|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y22_N8
\disp2|Mux1~0\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X52_Y22_N14
\disp2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux0~0_combout\ = (\u3|count\(1) & (((\u3|count\(3))))) # (!\u3|count\(1) & (\u3|count\(2) $ (((\u3|count\(0) & !\u3|count\(3))))))

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
	combout => \disp2|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y33_N28
\disp3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux6~0_combout\ = (\u4|count\(3) & ((\u4|count\(2)) # ((\u4|count\(1))))) # (!\u4|count\(3) & (\u4|count\(0) & (\u4|count\(2) $ (!\u4|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(0),
	datac => \u4|count\(3),
	datad => \u4|count\(1),
	combout => \disp3|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y33_N22
\disp3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux5~0_combout\ = (\u4|count\(2) & (((\u4|count\(3))))) # (!\u4|count\(2) & (\u4|count\(1) & ((\u4|count\(3)) # (!\u4|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(0),
	datac => \u4|count\(3),
	datad => \u4|count\(1),
	combout => \disp3|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y33_N4
\disp3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux4~0_combout\ = (\u4|count\(0)) # ((\u4|count\(1) & ((\u4|count\(3)))) # (!\u4|count\(1) & (\u4|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(0),
	datac => \u4|count\(3),
	datad => \u4|count\(1),
	combout => \disp3|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y33_N10
\disp3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux3~0_combout\ = (\u4|count\(2) & (!\u4|count\(3) & (\u4|count\(0) $ (\u4|count\(1))))) # (!\u4|count\(2) & ((\u4|count\(3) $ (\u4|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(0),
	datac => \u4|count\(3),
	datad => \u4|count\(1),
	combout => \disp3|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y33_N24
\disp3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux2~0_combout\ = (\u4|count\(2) & ((\u4|count\(3)) # (\u4|count\(0) $ (\u4|count\(1))))) # (!\u4|count\(2) & (((\u4|count\(3) & \u4|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(0),
	datac => \u4|count\(3),
	datad => \u4|count\(1),
	combout => \disp3|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y33_N2
\disp3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux1~0_combout\ = (\u4|count\(2) & ((\u4|count\(3)) # ((\u4|count\(0) & \u4|count\(1))))) # (!\u4|count\(2) & ((\u4|count\(1)) # ((\u4|count\(0) & !\u4|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(0),
	datac => \u4|count\(3),
	datad => \u4|count\(1),
	combout => \disp3|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y33_N12
\disp3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux0~0_combout\ = (\u4|count\(1) & (((\u4|count\(3))))) # (!\u4|count\(1) & (\u4|count\(2) $ (((\u4|count\(0) & !\u4|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(2),
	datab => \u4|count\(0),
	datac => \u4|count\(3),
	datad => \u4|count\(1),
	combout => \disp3|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y28_N0
\clk4_sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk4_sig~1_combout\ = (\clk4_sig~0_combout\ & \clk3_sig~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk4_sig~0_combout\,
	datad => \clk3_sig~0_combout\,
	combout => \clk4_sig~1_combout\);

-- Location: IOIBUF_X11_Y34_N1
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

ww_Q_ms(0) <= \Q_ms[0]~output_o\;

ww_Q_ms(1) <= \Q_ms[1]~output_o\;

ww_Q_ms(2) <= \Q_ms[2]~output_o\;

ww_Q_ms(3) <= \Q_ms[3]~output_o\;

ww_Q_ms(4) <= \Q_ms[4]~output_o\;

ww_Q_ms(5) <= \Q_ms[5]~output_o\;

ww_Q_ms(6) <= \Q_ms[6]~output_o\;

ww_Q_ms(7) <= \Q_ms[7]~output_o\;

ww_Q_s(0) <= \Q_s[0]~output_o\;

ww_Q_s(1) <= \Q_s[1]~output_o\;

ww_Q_s(2) <= \Q_s[2]~output_o\;

ww_Q_s(3) <= \Q_s[3]~output_o\;

ww_Q_s(4) <= \Q_s[4]~output_o\;

ww_Q_s(5) <= \Q_s[5]~output_o\;

ww_Q_s(6) <= \Q_s[6]~output_o\;

ww_Q_s(7) <= \Q_s[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_CLK2 <= \CLK2~output_o\;

ww_CLK3 <= \CLK3~output_o\;

ww_CLK4 <= \CLK4~output_o\;

ww_CLK_100HZ <= \CLK_100HZ~output_o\;

ww_RST_SIG1 <= \RST_SIG1~output_o\;

ww_RST_SIG2 <= \RST_SIG2~output_o\;
END structure;


