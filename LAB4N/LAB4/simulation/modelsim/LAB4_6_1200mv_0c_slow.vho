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

-- DATE "04/17/2025 17:25:18"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DECODER416 IS
    PORT (
	D15 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	D14 : OUT std_logic;
	D13 : OUT std_logic;
	D12 : OUT std_logic;
	D11 : OUT std_logic;
	D10 : OUT std_logic;
	D9 : OUT std_logic;
	D8 : OUT std_logic;
	D7 : OUT std_logic;
	D6 : OUT std_logic;
	D5 : OUT std_logic;
	D4 : OUT std_logic;
	D3 : OUT std_logic;
	D2 : OUT std_logic;
	D1 : OUT std_logic;
	D0 : OUT std_logic
	);
END DECODER416;

-- Design Ports Information
-- D15	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D14	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D13	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D10	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D9	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D8	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DECODER416 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D15 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_D14 : std_logic;
SIGNAL ww_D13 : std_logic;
SIGNAL ww_D12 : std_logic;
SIGNAL ww_D11 : std_logic;
SIGNAL ww_D10 : std_logic;
SIGNAL ww_D9 : std_logic;
SIGNAL ww_D8 : std_logic;
SIGNAL ww_D7 : std_logic;
SIGNAL ww_D6 : std_logic;
SIGNAL ww_D5 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL \D15~output_o\ : std_logic;
SIGNAL \D14~output_o\ : std_logic;
SIGNAL \D13~output_o\ : std_logic;
SIGNAL \D12~output_o\ : std_logic;
SIGNAL \D11~output_o\ : std_logic;
SIGNAL \D10~output_o\ : std_logic;
SIGNAL \D9~output_o\ : std_logic;
SIGNAL \D8~output_o\ : std_logic;
SIGNAL \D7~output_o\ : std_logic;
SIGNAL \D6~output_o\ : std_logic;
SIGNAL \D5~output_o\ : std_logic;
SIGNAL \D4~output_o\ : std_logic;
SIGNAL \D3~output_o\ : std_logic;
SIGNAL \D2~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \instance9~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst9~combout\ : std_logic;

BEGIN

D15 <= ww_D15;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
D14 <= ww_D14;
D13 <= ww_D13;
D12 <= ww_D12;
D11 <= ww_D11;
D10 <= ww_D10;
D9 <= ww_D9;
D8 <= ww_D8;
D7 <= ww_D7;
D6 <= ww_D6;
D5 <= ww_D5;
D4 <= ww_D4;
D3 <= ww_D3;
D2 <= ww_D2;
D1 <= ww_D1;
D0 <= ww_D0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst9~combout\ <= NOT \inst9~combout\;

-- Location: IOOBUF_X0_Y8_N2
\D15~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst9~combout\,
	devoe => ww_devoe,
	o => \D15~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\D14~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~0_combout\,
	devoe => ww_devoe,
	o => \D14~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\D13~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~0_combout\,
	devoe => ww_devoe,
	o => \D13~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\D12~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~0_combout\,
	devoe => ww_devoe,
	o => \D12~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\D11~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~0_combout\,
	devoe => ww_devoe,
	o => \D11~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\D10~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~0_combout\,
	devoe => ww_devoe,
	o => \D10~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\D9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~0_combout\,
	devoe => ww_devoe,
	o => \D9~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\D8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~0_combout\,
	devoe => ww_devoe,
	o => \D8~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\D7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~0_combout\,
	devoe => ww_devoe,
	o => \D7~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\D6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~0_combout\,
	devoe => ww_devoe,
	o => \D6~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\D5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~0_combout\,
	devoe => ww_devoe,
	o => \D5~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\D4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~0_combout\,
	devoe => ww_devoe,
	o => \D4~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\D3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \D3~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\D2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~0_combout\,
	devoe => ww_devoe,
	o => \D2~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\D1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~0_combout\,
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\D0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance9~0_combout\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOIBUF_X0_Y10_N1
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y8_N16
inst9 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~combout\ = (\C~input_o\) # ((\A~input_o\) # ((\D~input_o\) # (\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst9~combout\);

-- Location: LCCOMB_X1_Y8_N18
\inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (!\C~input_o\ & (!\A~input_o\ & (\D~input_o\ & !\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X1_Y8_N20
\inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (\C~input_o\ & (!\B~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst13~0_combout\);

-- Location: LCCOMB_X1_Y8_N14
\inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = (\C~input_o\ & (!\A~input_o\ & (\D~input_o\ & !\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst12~0_combout\);

-- Location: LCCOMB_X1_Y8_N0
\inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (!\C~input_o\ & (!\A~input_o\ & (!\D~input_o\ & \B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X1_Y8_N26
\inst17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17~0_combout\ = (!\C~input_o\ & (!\A~input_o\ & (\D~input_o\ & \B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst17~0_combout\);

-- Location: LCCOMB_X1_Y8_N12
\inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = (\C~input_o\ & (!\A~input_o\ & (!\D~input_o\ & \B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst16~0_combout\);

-- Location: LCCOMB_X1_Y8_N22
\inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\C~input_o\ & (!\A~input_o\ & (\D~input_o\ & \B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X1_Y8_N8
\inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = (!\C~input_o\ & (\A~input_o\ & (!\D~input_o\ & !\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst15~0_combout\);

-- Location: LCCOMB_X1_Y8_N10
\inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (!\C~input_o\ & (!\B~input_o\ & (\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X1_Y8_N28
\inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\C~input_o\ & (\A~input_o\ & (!\D~input_o\ & !\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X1_Y8_N6
\inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\C~input_o\ & (\A~input_o\ & (\D~input_o\ & !\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X1_Y8_N24
\inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (!\C~input_o\ & (\A~input_o\ & (!\D~input_o\ & \B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X1_Y8_N2
\inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (!\C~input_o\ & (\A~input_o\ & (\D~input_o\ & \B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst6~0_combout\);

-- Location: LCCOMB_X1_Y8_N4
\inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\C~input_o\ & (\A~input_o\ & (!\D~input_o\ & \B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \inst11~0_combout\);

-- Location: LCCOMB_X1_Y8_N30
\instance9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \instance9~0_combout\ = (\C~input_o\ & (\A~input_o\ & (\D~input_o\ & \B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \A~input_o\,
	datac => \D~input_o\,
	datad => \B~input_o\,
	combout => \instance9~0_combout\);

ww_D15 <= \D15~output_o\;

ww_D14 <= \D14~output_o\;

ww_D13 <= \D13~output_o\;

ww_D12 <= \D12~output_o\;

ww_D11 <= \D11~output_o\;

ww_D10 <= \D10~output_o\;

ww_D9 <= \D9~output_o\;

ww_D8 <= \D8~output_o\;

ww_D7 <= \D7~output_o\;

ww_D6 <= \D6~output_o\;

ww_D5 <= \D5~output_o\;

ww_D4 <= \D4~output_o\;

ww_D3 <= \D3~output_o\;

ww_D2 <= \D2~output_o\;

ww_D1 <= \D1~output_o\;

ww_D0 <= \D0~output_o\;
END structure;


