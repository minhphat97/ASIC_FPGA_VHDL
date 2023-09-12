-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Full Version"

-- DATE "10/05/2018 15:40:27"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ripple_top IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ripple_top;

-- Design Ports Information
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ripple_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \obj1|obj1|Carry~0_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \obj1|obj2|Carry~0_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \obj1|obj3|Carry~0_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \obj1|obj4|Carry~0_combout\ : std_logic;
SIGNAL \obj1|obj1|Sum~0_combout\ : std_logic;
SIGNAL \obj1|obj2|Sum~combout\ : std_logic;
SIGNAL \obj1|obj4|Sum~combout\ : std_logic;
SIGNAL \obj1|obj3|Sum~combout\ : std_logic;
SIGNAL \obj2|Mux6~0_combout\ : std_logic;
SIGNAL \obj2|Mux5~0_combout\ : std_logic;
SIGNAL \obj2|Mux4~0_combout\ : std_logic;
SIGNAL \obj2|Mux3~0_combout\ : std_logic;
SIGNAL \obj2|Mux2~0_combout\ : std_logic;
SIGNAL \obj2|Mux1~0_combout\ : std_logic;
SIGNAL \obj2|Mux0~0_combout\ : std_logic;
SIGNAL \obj2|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\obj2|ALT_INV_Mux0~0_combout\ <= NOT \obj2|Mux0~0_combout\;

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj1|obj4|Carry~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \obj2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y18_N16
\obj1|obj1|Carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|obj1|Carry~0_combout\ = (\SW[0]~input_o\ & ((\SW[14]~input_o\) # (\SW[4]~input_o\))) # (!\SW[0]~input_o\ & (\SW[14]~input_o\ & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \obj1|obj1|Carry~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y18_N10
\obj1|obj2|Carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|obj2|Carry~0_combout\ = (\obj1|obj1|Carry~0_combout\ & ((\SW[15]~input_o\) # (\SW[1]~input_o\))) # (!\obj1|obj1|Carry~0_combout\ & (\SW[15]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \obj1|obj1|Carry~0_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \obj1|obj2|Carry~0_combout\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X114_Y18_N20
\obj1|obj3|Carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|obj3|Carry~0_combout\ = (\obj1|obj2|Carry~0_combout\ & ((\SW[16]~input_o\) # (\SW[2]~input_o\))) # (!\obj1|obj2|Carry~0_combout\ & (\SW[16]~input_o\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|obj2|Carry~0_combout\,
	datac => \SW[16]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \obj1|obj3|Carry~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X114_Y18_N6
\obj1|obj4|Carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|obj4|Carry~0_combout\ = (\SW[3]~input_o\ & ((\obj1|obj3|Carry~0_combout\) # (\SW[17]~input_o\))) # (!\SW[3]~input_o\ & (\obj1|obj3|Carry~0_combout\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \obj1|obj3|Carry~0_combout\,
	datac => \SW[17]~input_o\,
	combout => \obj1|obj4|Carry~0_combout\);

-- Location: LCCOMB_X114_Y18_N24
\obj1|obj1|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|obj1|Sum~0_combout\ = \SW[0]~input_o\ $ (\SW[14]~input_o\ $ (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \obj1|obj1|Sum~0_combout\);

-- Location: LCCOMB_X114_Y18_N18
\obj1|obj2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|obj2|Sum~combout\ = \obj1|obj1|Carry~0_combout\ $ (\SW[15]~input_o\ $ (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \obj1|obj1|Carry~0_combout\,
	datac => \SW[15]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \obj1|obj2|Sum~combout\);

-- Location: LCCOMB_X114_Y18_N30
\obj1|obj4|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|obj4|Sum~combout\ = \SW[3]~input_o\ $ (\obj1|obj3|Carry~0_combout\ $ (\SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \obj1|obj3|Carry~0_combout\,
	datac => \SW[17]~input_o\,
	combout => \obj1|obj4|Sum~combout\);

-- Location: LCCOMB_X114_Y18_N28
\obj1|obj3|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj1|obj3|Sum~combout\ = \obj1|obj2|Carry~0_combout\ $ (\SW[16]~input_o\ $ (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|obj2|Carry~0_combout\,
	datac => \SW[16]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \obj1|obj3|Sum~combout\);

-- Location: LCCOMB_X114_Y18_N8
\obj2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|Mux6~0_combout\ = (\obj1|obj2|Sum~combout\ & (\obj1|obj1|Sum~0_combout\ & (\obj1|obj4|Sum~combout\ & !\obj1|obj3|Sum~combout\))) # (!\obj1|obj2|Sum~combout\ & (\obj1|obj3|Sum~combout\ $ (((\obj1|obj1|Sum~0_combout\ & !\obj1|obj4|Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|obj1|Sum~0_combout\,
	datab => \obj1|obj2|Sum~combout\,
	datac => \obj1|obj4|Sum~combout\,
	datad => \obj1|obj3|Sum~combout\,
	combout => \obj2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y18_N2
\obj2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|Mux5~0_combout\ = (\obj1|obj2|Sum~combout\ & ((\obj1|obj1|Sum~0_combout\ & (\obj1|obj4|Sum~combout\)) # (!\obj1|obj1|Sum~0_combout\ & ((\obj1|obj3|Sum~combout\))))) # (!\obj1|obj2|Sum~combout\ & (\obj1|obj3|Sum~combout\ & (\obj1|obj1|Sum~0_combout\ 
-- $ (\obj1|obj4|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|obj1|Sum~0_combout\,
	datab => \obj1|obj2|Sum~combout\,
	datac => \obj1|obj4|Sum~combout\,
	datad => \obj1|obj3|Sum~combout\,
	combout => \obj2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y18_N4
\obj2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|Mux4~0_combout\ = (\obj1|obj4|Sum~combout\ & (\obj1|obj3|Sum~combout\ & ((\obj1|obj2|Sum~combout\) # (!\obj1|obj1|Sum~0_combout\)))) # (!\obj1|obj4|Sum~combout\ & (!\obj1|obj1|Sum~0_combout\ & (\obj1|obj2|Sum~combout\ & !\obj1|obj3|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|obj1|Sum~0_combout\,
	datab => \obj1|obj2|Sum~combout\,
	datac => \obj1|obj4|Sum~combout\,
	datad => \obj1|obj3|Sum~combout\,
	combout => \obj2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y18_N22
\obj2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|Mux3~0_combout\ = (\obj1|obj1|Sum~0_combout\ & (\obj1|obj2|Sum~combout\ $ (((!\obj1|obj3|Sum~combout\))))) # (!\obj1|obj1|Sum~0_combout\ & ((\obj1|obj2|Sum~combout\ & (\obj1|obj4|Sum~combout\ & !\obj1|obj3|Sum~combout\)) # (!\obj1|obj2|Sum~combout\ 
-- & (!\obj1|obj4|Sum~combout\ & \obj1|obj3|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|obj1|Sum~0_combout\,
	datab => \obj1|obj2|Sum~combout\,
	datac => \obj1|obj4|Sum~combout\,
	datad => \obj1|obj3|Sum~combout\,
	combout => \obj2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y18_N0
\obj2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|Mux2~0_combout\ = (\obj1|obj2|Sum~combout\ & (\obj1|obj1|Sum~0_combout\ & (!\obj1|obj4|Sum~combout\))) # (!\obj1|obj2|Sum~combout\ & ((\obj1|obj3|Sum~combout\ & ((!\obj1|obj4|Sum~combout\))) # (!\obj1|obj3|Sum~combout\ & 
-- (\obj1|obj1|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|obj1|Sum~0_combout\,
	datab => \obj1|obj2|Sum~combout\,
	datac => \obj1|obj4|Sum~combout\,
	datad => \obj1|obj3|Sum~combout\,
	combout => \obj2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y18_N26
\obj2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|Mux1~0_combout\ = (\obj1|obj2|Sum~combout\ & (!\obj1|obj4|Sum~combout\ & ((\obj1|obj1|Sum~0_combout\) # (!\obj1|obj3|Sum~combout\)))) # (!\obj1|obj2|Sum~combout\ & ((\obj1|obj4|Sum~combout\ & ((\obj1|obj3|Sum~combout\))) # (!\obj1|obj4|Sum~combout\ 
-- & (\obj1|obj1|Sum~0_combout\ & !\obj1|obj3|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|obj1|Sum~0_combout\,
	datab => \obj1|obj2|Sum~combout\,
	datac => \obj1|obj4|Sum~combout\,
	datad => \obj1|obj3|Sum~combout\,
	combout => \obj2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y18_N12
\obj2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \obj2|Mux0~0_combout\ = (\obj1|obj4|Sum~combout\) # ((\obj1|obj2|Sum~combout\ & ((!\obj1|obj3|Sum~combout\) # (!\obj1|obj1|Sum~0_combout\))) # (!\obj1|obj2|Sum~combout\ & ((\obj1|obj3|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \obj1|obj1|Sum~0_combout\,
	datab => \obj1|obj2|Sum~combout\,
	datac => \obj1|obj4|Sum~combout\,
	datad => \obj1|obj3|Sum~combout\,
	combout => \obj2|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


