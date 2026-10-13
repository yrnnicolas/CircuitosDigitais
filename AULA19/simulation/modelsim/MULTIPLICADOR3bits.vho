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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/08/2026 15:06:58"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MULTIPLICADOR3bits IS
    PORT (
	Z : OUT std_logic_vector(7 DOWNTO 0);
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0)
	);
END MULTIPLICADOR3bits;

-- Design Ports Information
-- Z[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MULTIPLICADOR3bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL \Z[7]~output_o\ : std_logic;
SIGNAL \Z[6]~output_o\ : std_logic;
SIGNAL \Z[5]~output_o\ : std_logic;
SIGNAL \Z[4]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \inst5|inst4~0_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \inst6|inst~combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \inst2|inst2~combout\ : std_logic;
SIGNAL \inst5|inst1~0_combout\ : std_logic;
SIGNAL \inst7|inst4~combout\ : std_logic;
SIGNAL \inst8|inst4~combout\ : std_logic;
SIGNAL \inst9|inst4~combout\ : std_logic;
SIGNAL \inst7|inst1~combout\ : std_logic;
SIGNAL \inst3|inst2~combout\ : std_logic;
SIGNAL \inst8|inst1~combout\ : std_logic;
SIGNAL \inst10|inst4~combout\ : std_logic;
SIGNAL \inst9|inst1~combout\ : std_logic;
SIGNAL \inst11|inst4~combout\ : std_logic;
SIGNAL \inst12|inst4~combout\ : std_logic;
SIGNAL \inst12|inst1~combout\ : std_logic;
SIGNAL \inst11|inst1~combout\ : std_logic;
SIGNAL \inst10|inst1~combout\ : std_logic;
SIGNAL \inst3|inst~combout\ : std_logic;
SIGNAL \inst2|inst~combout\ : std_logic;
SIGNAL \inst|inst~combout\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \inst25~combout\ : std_logic;

BEGIN

Z <= ww_Z;
ww_X <= X;
ww_Y <= Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y25_N9
\Z[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst4~combout\,
	devoe => ww_devoe,
	o => \Z[7]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\Z[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst1~combout\,
	devoe => ww_devoe,
	o => \Z[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Z[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst1~combout\,
	devoe => ww_devoe,
	o => \Z[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\Z[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst1~combout\,
	devoe => ww_devoe,
	o => \Z[4]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\Z[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst~combout\,
	devoe => ww_devoe,
	o => \Z[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\Z[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst~combout\,
	devoe => ww_devoe,
	o => \Z[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\Z[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~combout\,
	devoe => ww_devoe,
	o => \Z[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\Z[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25~combout\,
	devoe => ww_devoe,
	o => \Z[0]~output_o\);

-- Location: IOIBUF_X33_Y16_N1
\Y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\X[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\Y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\X[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LCCOMB_X21_Y20_N2
\inst5|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst4~0_combout\ = (\Y[1]~input_o\ & \X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst5|inst4~0_combout\);

-- Location: IOIBUF_X8_Y0_N8
\Y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X21_Y20_N26
\inst6|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst~combout\ = (\Y[1]~input_o\ & (\X[3]~input_o\ $ (\X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst6|inst~combout\);

-- Location: IOIBUF_X20_Y0_N1
\X[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\X[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X21_Y20_N8
\inst2|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst2~combout\ = (\Y[2]~input_o\ & (\X[0]~input_o\ & ((\X[1]~input_o\) # (!\Y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst2|inst2~combout\);

-- Location: LCCOMB_X21_Y20_N18
\inst5|inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1~0_combout\ = (\Y[1]~input_o\ & (\X[2]~input_o\)) # (!\Y[1]~input_o\ & ((\X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[2]~input_o\,
	datac => \Y[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst5|inst1~0_combout\);

-- Location: LCCOMB_X21_Y20_N16
\inst7|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst4~combout\ = (\inst2|inst2~combout\ & ((\inst5|inst1~0_combout\) # ((\Y[2]~input_o\ & \X[1]~input_o\)))) # (!\inst2|inst2~combout\ & (\Y[2]~input_o\ & (\X[1]~input_o\ & \inst5|inst1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \inst2|inst2~combout\,
	datac => \X[1]~input_o\,
	datad => \inst5|inst1~0_combout\,
	combout => \inst7|inst4~combout\);

-- Location: LCCOMB_X21_Y20_N0
\inst8|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst4~combout\ = (\inst6|inst~combout\ & ((\inst7|inst4~combout\) # ((\X[2]~input_o\ & \Y[2]~input_o\)))) # (!\inst6|inst~combout\ & (\X[2]~input_o\ & (\Y[2]~input_o\ & \inst7|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~combout\,
	datab => \X[2]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \inst7|inst4~combout\,
	combout => \inst8|inst4~combout\);

-- Location: LCCOMB_X21_Y20_N24
\inst9|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst4~combout\ = (\X[3]~input_o\ & ((\inst5|inst4~0_combout\ & ((\Y[2]~input_o\) # (\inst8|inst4~combout\))) # (!\inst5|inst4~0_combout\ & (\Y[2]~input_o\ & \inst8|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \inst5|inst4~0_combout\,
	datac => \Y[2]~input_o\,
	datad => \inst8|inst4~combout\,
	combout => \inst9|inst4~combout\);

-- Location: LCCOMB_X21_Y20_N12
\inst7|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst1~combout\ = \inst2|inst2~combout\ $ (\inst5|inst1~0_combout\ $ (((\Y[2]~input_o\ & \X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \inst2|inst2~combout\,
	datac => \X[1]~input_o\,
	datad => \inst5|inst1~0_combout\,
	combout => \inst7|inst1~combout\);

-- Location: LCCOMB_X21_Y20_N22
\inst3|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2~combout\ = (\inst7|inst1~combout\ & (\Y[3]~input_o\ & \X[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1~combout\,
	datac => \Y[3]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst3|inst2~combout\);

-- Location: LCCOMB_X21_Y20_N28
\inst8|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst1~combout\ = \inst6|inst~combout\ $ (\inst7|inst4~combout\ $ (((\X[2]~input_o\ & \Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~combout\,
	datab => \X[2]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \inst7|inst4~combout\,
	combout => \inst8|inst1~combout\);

-- Location: LCCOMB_X21_Y20_N6
\inst10|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst4~combout\ = (\inst3|inst2~combout\ & ((\inst8|inst1~combout\) # ((\X[1]~input_o\ & \Y[3]~input_o\)))) # (!\inst3|inst2~combout\ & (\X[1]~input_o\ & (\Y[3]~input_o\ & \inst8|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2~combout\,
	datab => \X[1]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \inst8|inst1~combout\,
	combout => \inst10|inst4~combout\);

-- Location: LCCOMB_X21_Y20_N4
\inst9|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst1~combout\ = \inst8|inst4~combout\ $ (((\X[3]~input_o\ & (\inst5|inst4~0_combout\ $ (\Y[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \inst5|inst4~0_combout\,
	datac => \Y[2]~input_o\,
	datad => \inst8|inst4~combout\,
	combout => \inst9|inst1~combout\);

-- Location: LCCOMB_X21_Y20_N14
\inst11|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst4~combout\ = (\inst10|inst4~combout\ & ((\inst9|inst1~combout\) # ((\Y[3]~input_o\ & \X[2]~input_o\)))) # (!\inst10|inst4~combout\ & (\inst9|inst1~combout\ & (\Y[3]~input_o\ & \X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4~combout\,
	datab => \inst9|inst1~combout\,
	datac => \Y[3]~input_o\,
	datad => \X[2]~input_o\,
	combout => \inst11|inst4~combout\);

-- Location: LCCOMB_X6_Y26_N24
\inst12|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|inst4~combout\ = (\inst9|inst4~combout\ & ((\inst11|inst4~combout\) # ((\Y[3]~input_o\ & \X[3]~input_o\)))) # (!\inst9|inst4~combout\ & (\Y[3]~input_o\ & (\inst11|inst4~combout\ & \X[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[3]~input_o\,
	datab => \inst9|inst4~combout\,
	datac => \inst11|inst4~combout\,
	datad => \X[3]~input_o\,
	combout => \inst12|inst4~combout\);

-- Location: LCCOMB_X6_Y26_N2
\inst12|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|inst1~combout\ = \inst9|inst4~combout\ $ (\inst11|inst4~combout\ $ (((\Y[3]~input_o\ & \X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[3]~input_o\,
	datab => \inst9|inst4~combout\,
	datac => \inst11|inst4~combout\,
	datad => \X[3]~input_o\,
	combout => \inst12|inst1~combout\);

-- Location: LCCOMB_X21_Y20_N10
\inst11|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst1~combout\ = \inst10|inst4~combout\ $ (\inst9|inst1~combout\ $ (((\Y[3]~input_o\ & \X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4~combout\,
	datab => \inst9|inst1~combout\,
	datac => \Y[3]~input_o\,
	datad => \X[2]~input_o\,
	combout => \inst11|inst1~combout\);

-- Location: LCCOMB_X21_Y20_N20
\inst10|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst1~combout\ = \inst3|inst2~combout\ $ (\inst8|inst1~combout\ $ (((\X[1]~input_o\ & \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2~combout\,
	datab => \X[1]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \inst8|inst1~combout\,
	combout => \inst10|inst1~combout\);

-- Location: LCCOMB_X6_Y26_N28
\inst3|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst~combout\ = \inst7|inst1~combout\ $ (((\Y[3]~input_o\ & \X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[3]~input_o\,
	datab => \inst7|inst1~combout\,
	datad => \X[0]~input_o\,
	combout => \inst3|inst~combout\);

-- Location: LCCOMB_X21_Y20_N30
\inst2|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst~combout\ = (\Y[1]~input_o\ & (\X[1]~input_o\ $ (((\Y[2]~input_o\ & \X[0]~input_o\))))) # (!\Y[1]~input_o\ & (!\Y[2]~input_o\ & ((\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst2|inst~combout\);

-- Location: LCCOMB_X6_Y26_N6
\inst|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst~combout\ = (!\Y[1]~input_o\ & \X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst|inst~combout\);

-- Location: IOIBUF_X12_Y0_N1
\Y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LCCOMB_X6_Y26_N0
inst25 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst25~combout\ = (\Y[0]~input_o\ & \X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[0]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst25~combout\);

ww_Z(7) <= \Z[7]~output_o\;

ww_Z(6) <= \Z[6]~output_o\;

ww_Z(5) <= \Z[5]~output_o\;

ww_Z(4) <= \Z[4]~output_o\;

ww_Z(3) <= \Z[3]~output_o\;

ww_Z(2) <= \Z[2]~output_o\;

ww_Z(1) <= \Z[1]~output_o\;

ww_Z(0) <= \Z[0]~output_o\;
END structure;


