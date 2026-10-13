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

-- DATE "04/03/2025 12:13:36"

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

ENTITY 	sumsub8 IS
    PORT (
	Cout : OUT std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	M : IN std_logic;
	S : OUT std_logic_vector(7 DOWNTO 0);
	Cin : IN std_logic
	);
END sumsub8;

-- Design Ports Information
-- Cout	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sumsub8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_M : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst|inst2~combout\ : std_logic;
SIGNAL \inst|inst3~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst2|inst4~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst16~combout\ : std_logic;
SIGNAL \inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst6|inst4~0_combout\ : std_logic;
SIGNAL \inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst4~0_combout\ : std_logic;
SIGNAL \inst8|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst~0_combout\ : std_logic;
SIGNAL \inst4|inst~combout\ : std_logic;
SIGNAL \inst3|inst~combout\ : std_logic;
SIGNAL \inst2|inst~combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_inst~combout\ : std_logic;

BEGIN

Cout <= ww_Cout;
ww_A <= A;
ww_B <= B;
ww_M <= M;
S <= ww_S;
ww_Cin <= Cin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst3|ALT_INV_inst~combout\ <= NOT \inst3|inst~combout\;

-- Location: IOOBUF_X33_Y12_N9
\Cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst4~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\S[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst~0_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\S[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst~0_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\S[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst~0_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\S[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_inst~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\M~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X32_Y12_N16
\inst|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst2~combout\ = (\M~input_o\ & (\A[0]~input_o\ $ (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \M~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst2~combout\);

-- Location: LCCOMB_X32_Y12_N26
\inst|inst3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3~combout\ = (\A[0]~input_o\ & (\M~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \M~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst3~combout\);

-- Location: IOIBUF_X33_Y27_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X32_Y12_N12
inst14 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst14~combout\ = \M~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst14~combout\);

-- Location: LCCOMB_X32_Y12_N30
\inst2|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst4~0_combout\ = (\A[1]~input_o\ & ((\inst|inst2~combout\) # ((\inst|inst3~combout\) # (\inst14~combout\)))) # (!\A[1]~input_o\ & (\inst14~combout\ & ((\inst|inst2~combout\) # (\inst|inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \inst|inst2~combout\,
	datac => \inst|inst3~combout\,
	datad => \inst14~combout\,
	combout => \inst2|inst4~0_combout\);

-- Location: IOIBUF_X33_Y15_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X32_Y12_N0
inst16 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst16~combout\ = \B[3]~input_o\ $ (\M~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \M~input_o\,
	combout => \inst16~combout\);

-- Location: LCCOMB_X32_Y12_N18
\inst4|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4~0_combout\ = (\A[3]~input_o\ & ((\A[2]~input_o\) # ((\inst2|inst4~0_combout\) # (\inst16~combout\)))) # (!\A[3]~input_o\ & (\inst16~combout\ & ((\A[2]~input_o\) # (\inst2|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \inst2|inst4~0_combout\,
	datad => \inst16~combout\,
	combout => \inst4|inst4~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\inst5|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst4~0_combout\ = (\A[4]~input_o\ & ((\inst4|inst4~0_combout\) # (\B[4]~input_o\ $ (\M~input_o\)))) # (!\A[4]~input_o\ & (\inst4|inst4~0_combout\ & (\B[4]~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \M~input_o\,
	datac => \A[4]~input_o\,
	datad => \inst4|inst4~0_combout\,
	combout => \inst5|inst4~0_combout\);

-- Location: LCCOMB_X32_Y12_N6
\inst6|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst4~0_combout\ = (\A[5]~input_o\ & ((\inst5|inst4~0_combout\) # (\M~input_o\ $ (\B[5]~input_o\)))) # (!\A[5]~input_o\ & (\inst5|inst4~0_combout\ & (\M~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \inst5|inst4~0_combout\,
	combout => \inst6|inst4~0_combout\);

-- Location: LCCOMB_X32_Y12_N24
\inst7|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst4~0_combout\ = (\A[6]~input_o\ & ((\inst6|inst4~0_combout\) # (\B[6]~input_o\ $ (\M~input_o\)))) # (!\A[6]~input_o\ & (\inst6|inst4~0_combout\ & (\B[6]~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \M~input_o\,
	datac => \A[6]~input_o\,
	datad => \inst6|inst4~0_combout\,
	combout => \inst7|inst4~0_combout\);

-- Location: LCCOMB_X32_Y12_N10
\inst8|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst4~0_combout\ = (\A[7]~input_o\ & ((\inst7|inst4~0_combout\) # (\B[7]~input_o\ $ (\M~input_o\)))) # (!\A[7]~input_o\ & (\inst7|inst4~0_combout\ & (\B[7]~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \M~input_o\,
	datac => \A[7]~input_o\,
	datad => \inst7|inst4~0_combout\,
	combout => \inst8|inst4~0_combout\);

-- Location: LCCOMB_X32_Y12_N20
\inst8|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst~0_combout\ = \B[7]~input_o\ $ (\M~input_o\ $ (\A[7]~input_o\ $ (\inst7|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \M~input_o\,
	datac => \A[7]~input_o\,
	datad => \inst7|inst4~0_combout\,
	combout => \inst8|inst~0_combout\);

-- Location: LCCOMB_X32_Y12_N22
\inst7|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst~0_combout\ = \B[6]~input_o\ $ (\M~input_o\ $ (\A[6]~input_o\ $ (\inst6|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \M~input_o\,
	datac => \A[6]~input_o\,
	datad => \inst6|inst4~0_combout\,
	combout => \inst7|inst~0_combout\);

-- Location: LCCOMB_X32_Y12_N8
\inst6|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst~0_combout\ = \M~input_o\ $ (\A[5]~input_o\ $ (\B[5]~input_o\ $ (\inst5|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \inst5|inst4~0_combout\,
	combout => \inst6|inst~0_combout\);

-- Location: LCCOMB_X32_Y12_N2
\inst5|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst~0_combout\ = \B[4]~input_o\ $ (\M~input_o\ $ (\A[4]~input_o\ $ (\inst4|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \M~input_o\,
	datac => \A[4]~input_o\,
	datad => \inst4|inst4~0_combout\,
	combout => \inst5|inst~0_combout\);

-- Location: LCCOMB_X32_Y12_N4
\inst4|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst~combout\ = \A[3]~input_o\ $ (\inst16~combout\ $ (((\inst2|inst4~0_combout\) # (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4~0_combout\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst16~combout\,
	combout => \inst4|inst~combout\);

-- Location: LCCOMB_X32_Y18_N16
\inst3|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst~combout\ = \A[2]~input_o\ $ (\inst2|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \inst2|inst4~0_combout\,
	combout => \inst3|inst~combout\);

-- Location: LCCOMB_X32_Y12_N14
\inst2|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst~combout\ = \inst14~combout\ $ (\A[1]~input_o\ $ (((\inst|inst3~combout\) # (\inst|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14~combout\,
	datab => \inst|inst3~combout\,
	datac => \A[1]~input_o\,
	datad => \inst|inst2~combout\,
	combout => \inst2|inst~combout\);

-- Location: LCCOMB_X32_Y13_N8
\inst|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|inst~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Cin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

ww_Cout <= \Cout~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;
END structure;


