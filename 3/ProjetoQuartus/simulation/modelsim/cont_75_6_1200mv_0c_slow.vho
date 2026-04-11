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

-- DATE "04/11/2026 17:07:47"

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
	Q_ms : OUT std_logic_vector(7 DOWNTO 0);
	Q_s : OUT std_logic_vector(7 DOWNTO 0);
	CLK2 : OUT std_logic;
	CLK3 : OUT std_logic;
	CLK4 : OUT std_logic;
	RST_SIG1 : OUT std_logic;
	RST_SIG2 : OUT std_logic
	);
END cont_75;

-- Design Ports Information
-- Q_ms[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_ms[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[7]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK2	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK3	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK4	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_SIG1	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_SIG2	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Q_ms : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK2 : std_logic;
SIGNAL ww_CLK3 : std_logic;
SIGNAL ww_CLK4 : std_logic;
SIGNAL ww_RST_SIG1 : std_logic;
SIGNAL ww_RST_SIG2 : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK2~output_o\ : std_logic;
SIGNAL \CLK3~output_o\ : std_logic;
SIGNAL \CLK4~output_o\ : std_logic;
SIGNAL \RST_SIG1~output_o\ : std_logic;
SIGNAL \RST_SIG2~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \u1|count~0_combout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \u1|count[0]~1_combout\ : std_logic;
SIGNAL \u1|Add0~1_combout\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u2|count~0_combout\ : std_logic;
SIGNAL \clk2_sig~0_combout\ : std_logic;
SIGNAL \clk2_sig~1_combout\ : std_logic;
SIGNAL \u2|count[0]~1_combout\ : std_logic;
SIGNAL \u2|Add0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \u2|Add0~1_combout\ : std_logic;
SIGNAL \u2|Add0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \rst_sig_internal1~combout\ : std_logic;
SIGNAL \u3|count~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \clk3_sig~0_combout\ : std_logic;
SIGNAL \u3|count[0]~1_combout\ : std_logic;
SIGNAL \u3|Add0~2_combout\ : std_logic;
SIGNAL \u4|Add0~0_combout\ : std_logic;
SIGNAL \u3|Add0~1_combout\ : std_logic;
SIGNAL \clk4_sig~0_combout\ : std_logic;
SIGNAL \u4|count[0]~1_combout\ : std_logic;
SIGNAL \u4|count~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \u4|Add0~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \rst_sig_internal2~combout\ : std_logic;
SIGNAL \u4|Add0~2_combout\ : std_logic;
SIGNAL \clk3_sig~1_combout\ : std_logic;
SIGNAL \clk4_sig~1_combout\ : std_logic;
SIGNAL \u2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst_sig_internal2~combout\ : std_logic;
SIGNAL \ALT_INV_rst_sig_internal1~combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CLR <= CLR;
ww_RST <= RST;
ww_EN <= EN;
Q_ms <= ww_Q_ms;
Q_s <= ww_Q_s;
CLK2 <= ww_CLK2;
CLK3 <= ww_CLK3;
CLK4 <= ww_CLK4;
RST_SIG1 <= ww_RST_SIG1;
RST_SIG2 <= ww_RST_SIG2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_rst_sig_internal2~combout\ <= NOT \rst_sig_internal2~combout\;
\ALT_INV_rst_sig_internal1~combout\ <= NOT \rst_sig_internal1~combout\;

-- Location: IOOBUF_X9_Y34_N9
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X1_Y34_N9
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

-- Location: IOOBUF_X14_Y34_N16
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X9_Y34_N23
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

-- Location: IOOBUF_X16_Y34_N2
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

-- Location: IOOBUF_X7_Y34_N9
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

-- Location: IOOBUF_X0_Y25_N9
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

-- Location: IOOBUF_X0_Y15_N9
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

-- Location: IOOBUF_X0_Y24_N23
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

-- Location: IOOBUF_X7_Y34_N2
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X14_Y34_N23
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

-- Location: IOOBUF_X0_Y27_N2
\CLK3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk3_sig~1_combout\,
	devoe => ww_devoe,
	o => \CLK3~output_o\);

-- Location: IOOBUF_X5_Y34_N16
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

-- Location: IOOBUF_X7_Y34_N16
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

-- Location: IOOBUF_X0_Y28_N9
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

-- Location: IOIBUF_X1_Y34_N1
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: LCCOMB_X2_Y28_N20
\u1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count~0_combout\ = (!\CLR~input_o\ & !\u1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR~input_o\,
	datac => \u1|count\(0),
	combout => \u1|count~0_combout\);

-- Location: LCCOMB_X2_Y28_N4
\u1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \u1|count\(0) $ (\u1|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(0),
	datac => \u1|count\(1),
	combout => \u1|Add0~0_combout\);

-- Location: IOIBUF_X3_Y34_N1
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X2_Y28_N28
\u1|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[0]~1_combout\ = (\EN~input_o\) # (\CLR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN~input_o\,
	datac => \CLR~input_o\,
	combout => \u1|count[0]~1_combout\);

-- Location: FF_X2_Y28_N5
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
	sclr => \CLR~input_o\,
	ena => \u1|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(1));

-- Location: LCCOMB_X2_Y28_N2
\u1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~1_combout\ = \u1|count\(2) $ (((\u1|count\(0) & \u1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(0),
	datac => \u1|count\(2),
	datad => \u1|count\(1),
	combout => \u1|Add0~1_combout\);

-- Location: FF_X2_Y28_N3
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
	sclr => \CLR~input_o\,
	ena => \u1|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(2));

-- Location: LCCOMB_X2_Y28_N8
\u1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = \u1|count\(3) $ (((\u1|count\(0) & (\u1|count\(2) & \u1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(0),
	datab => \u1|count\(2),
	datac => \u1|count\(3),
	datad => \u1|count\(1),
	combout => \u1|Add0~2_combout\);

-- Location: FF_X2_Y28_N9
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
	sclr => \CLR~input_o\,
	ena => \u1|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(3));

-- Location: LCCOMB_X2_Y28_N22
\u2|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count~0_combout\ = (!\CLR~input_o\ & !\u2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR~input_o\,
	datac => \u2|count\(0),
	combout => \u2|count~0_combout\);

-- Location: LCCOMB_X2_Y28_N0
\clk2_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2_sig~0_combout\ = (!\RST~input_o\ & (!\CLR~input_o\ & (\u1|count\(1) & \u1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \CLR~input_o\,
	datac => \u1|count\(1),
	datad => \u1|count\(0),
	combout => \clk2_sig~0_combout\);

-- Location: LCCOMB_X2_Y28_N6
\clk2_sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2_sig~1_combout\ = (\EN~input_o\ & (\u1|count\(3) & (\u1|count\(2) & \clk2_sig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \u1|count\(3),
	datac => \u1|count\(2),
	datad => \clk2_sig~0_combout\,
	combout => \clk2_sig~1_combout\);

-- Location: LCCOMB_X2_Y28_N30
\u2|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count[0]~1_combout\ = \CLR~input_o\ $ (\clk2_sig~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR~input_o\,
	datad => \clk2_sig~1_combout\,
	combout => \u2|count[0]~1_combout\);

-- Location: FF_X2_Y28_N23
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

-- Location: LCCOMB_X2_Y28_N10
\u2|Add0~0\ : cycloneive_lcell_comb
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

-- Location: FF_X2_Y28_N11
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
	sclr => \CLR~input_o\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(1));

-- Location: LCCOMB_X2_Y28_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\u2|count\(2) & (!\u1|count\(3) & (!\u2|count\(0) & \u2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u1|count\(3),
	datac => \u2|count\(0),
	datad => \u2|count\(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y28_N12
\u2|Add0~1\ : cycloneive_lcell_comb
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

-- Location: FF_X2_Y28_N13
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
	sclr => \CLR~input_o\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(2));

-- Location: LCCOMB_X2_Y28_N26
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

-- Location: FF_X2_Y28_N27
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
	sclr => \CLR~input_o\,
	ena => \u2|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(3));

-- Location: LCCOMB_X2_Y28_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\u1|count\(0) & (!\u1|count\(1) & \u1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(0),
	datac => \u1|count\(1),
	datad => \u1|count\(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X2_Y28_N14
rst_sig_internal1 : cycloneive_lcell_comb
-- Equation(s):
-- \rst_sig_internal1~combout\ = (\RST~input_o\) # ((\Equal0~0_combout\ & (!\u2|count\(3) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \Equal0~0_combout\,
	datac => \u2|count\(3),
	datad => \Equal0~1_combout\,
	combout => \rst_sig_internal1~combout\);

-- Location: FF_X2_Y28_N21
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
	ena => \u1|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(0));

-- Location: LCCOMB_X1_Y28_N20
\u3|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count~0_combout\ = (!\u3|count\(0) & !\CLR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|count\(0),
	datad => \CLR~input_o\,
	combout => \u3|count~0_combout\);

-- Location: IOIBUF_X11_Y34_N1
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X1_Y28_N8
\u3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = \u3|count\(1) $ (\u3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|count\(1),
	datad => \u3|count\(0),
	combout => \u3|Add0~0_combout\);

-- Location: LCCOMB_X2_Y28_N18
\clk3_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk3_sig~0_combout\ = (\EN~input_o\ & (\clk2_sig~0_combout\ & (!\u2|count\(3) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \clk2_sig~0_combout\,
	datac => \u2|count\(3),
	datad => \Equal0~0_combout\,
	combout => \clk3_sig~0_combout\);

-- Location: LCCOMB_X1_Y28_N0
\u3|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count[0]~1_combout\ = \CLR~input_o\ $ (((!\u1|count\(2) & \clk3_sig~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datac => \u1|count\(2),
	datad => \clk3_sig~0_combout\,
	combout => \u3|count[0]~1_combout\);

-- Location: FF_X1_Y28_N9
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
	sclr => \CLR~input_o\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(1));

-- Location: LCCOMB_X1_Y28_N16
\u3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~2_combout\ = \u3|count\(3) $ (((\u3|count\(2) & (\u3|count\(1) & \u3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(1),
	datac => \u3|count\(3),
	datad => \u3|count\(0),
	combout => \u3|Add0~2_combout\);

-- Location: FF_X1_Y28_N17
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
	sclr => \CLR~input_o\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(3));

-- Location: LCCOMB_X1_Y28_N14
\u4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Add0~0_combout\ = \u4|count\(0) $ (\u4|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(0),
	datac => \u4|count\(1),
	combout => \u4|Add0~0_combout\);

-- Location: LCCOMB_X1_Y28_N26
\u3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~1_combout\ = \u3|count\(2) $ (((\u3|count\(1) & \u3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(1),
	datac => \u3|count\(2),
	datad => \u3|count\(0),
	combout => \u3|Add0~1_combout\);

-- Location: FF_X1_Y28_N27
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
	sclr => \CLR~input_o\,
	ena => \u3|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(2));

-- Location: LCCOMB_X1_Y28_N30
\clk4_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk4_sig~0_combout\ = (\u3|count\(1) & (\u3|count\(0) & (\u3|count\(2) & \u3|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(1),
	datab => \u3|count\(0),
	datac => \u3|count\(2),
	datad => \u3|count\(3),
	combout => \clk4_sig~0_combout\);

-- Location: LCCOMB_X1_Y28_N10
\u4|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|count[0]~1_combout\ = \CLR~input_o\ $ (((!\u1|count\(2) & (\clk4_sig~0_combout\ & \clk3_sig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \u1|count\(2),
	datac => \clk4_sig~0_combout\,
	datad => \clk3_sig~0_combout\,
	combout => \u4|count[0]~1_combout\);

-- Location: FF_X1_Y28_N15
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
	sclr => \CLR~input_o\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|count\(1));

-- Location: LCCOMB_X1_Y28_N2
\u4|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|count~0_combout\ = (!\u4|count\(0) & !\CLR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|count\(0),
	datad => \CLR~input_o\,
	combout => \u4|count~0_combout\);

-- Location: FF_X1_Y28_N3
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

-- Location: LCCOMB_X1_Y28_N22
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\u3|count\(2) & (\u3|count\(3) & (\u4|count\(1) & \u4|count\(0))))

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
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y28_N4
\u4|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Add0~1_combout\ = \u4|count\(2) $ (((\u4|count\(0) & \u4|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(0),
	datac => \u4|count\(2),
	datad => \u4|count\(1),
	combout => \u4|Add0~1_combout\);

-- Location: FF_X1_Y28_N5
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
	sclr => \CLR~input_o\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|count\(2));

-- Location: LCCOMB_X1_Y28_N24
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\u4|count\(3) & (!\u4|count\(2) & (!\u3|count\(1) & !\u3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(3),
	datab => \u4|count\(2),
	datac => \u3|count\(1),
	datad => \u3|count\(0),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X1_Y28_N18
rst_sig_internal2 : cycloneive_lcell_comb
-- Equation(s):
-- \rst_sig_internal2~combout\ = (\RST~input_o\) # ((\Equal1~0_combout\ & \Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \rst_sig_internal2~combout\);

-- Location: FF_X1_Y28_N21
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

-- Location: LCCOMB_X1_Y28_N6
\u4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Add0~2_combout\ = \u4|count\(3) $ (((\u4|count\(0) & (\u4|count\(2) & \u4|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|count\(0),
	datab => \u4|count\(2),
	datac => \u4|count\(3),
	datad => \u4|count\(1),
	combout => \u4|Add0~2_combout\);

-- Location: FF_X1_Y28_N7
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
	sclr => \CLR~input_o\,
	ena => \u4|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|count\(3));

-- Location: LCCOMB_X1_Y28_N28
\clk3_sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk3_sig~1_combout\ = (!\u1|count\(2) & \clk3_sig~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|count\(2),
	datad => \clk3_sig~0_combout\,
	combout => \clk3_sig~1_combout\);

-- Location: LCCOMB_X1_Y28_N12
\clk4_sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk4_sig~1_combout\ = (\clk4_sig~0_combout\ & (\clk3_sig~0_combout\ & !\u1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk4_sig~0_combout\,
	datab => \clk3_sig~0_combout\,
	datac => \u1|count\(2),
	combout => \clk4_sig~1_combout\);

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

ww_CLK2 <= \CLK2~output_o\;

ww_CLK3 <= \CLK3~output_o\;

ww_CLK4 <= \CLK4~output_o\;

ww_RST_SIG1 <= \RST_SIG1~output_o\;

ww_RST_SIG2 <= \RST_SIG2~output_o\;
END structure;


