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

-- DATE "06/17/2026 15:17:47"

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

ENTITY 	Controle IS
    PORT (
	n : IN std_logic;
	z : IN std_logic;
	RI : IN std_logic_vector(7 DOWNTO 4);
	tempo : IN std_logic_vector(7 DOWNTO 0);
	r : OUT std_logic;
	w : OUT std_logic;
	goto : OUT std_logic;
	en_pc : OUT std_logic;
	inc_pc : OUT std_logic;
	en_ac : OUT std_logic;
	en_rem : OUT std_logic;
	en_rdm : OUT std_logic;
	en_ri : OUT std_logic;
	en_nz : OUT std_logic;
	sel_ula : OUT std_logic_vector(2 DOWNTO 0);
	sel_rem : OUT std_logic
	);
END Controle;

-- Design Ports Information
-- r	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- goto	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_pc	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc_pc	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_ac	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_rem	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_rdm	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_ri	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_nz	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_ula[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_ula[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_ula[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_rem	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RI[5]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RI[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RI[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RI[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Controle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_RI : std_logic_vector(7 DOWNTO 4);
SIGNAL ww_tempo : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_goto : std_logic;
SIGNAL ww_en_pc : std_logic;
SIGNAL ww_inc_pc : std_logic;
SIGNAL ww_en_ac : std_logic;
SIGNAL ww_en_rem : std_logic;
SIGNAL ww_en_rdm : std_logic;
SIGNAL ww_en_ri : std_logic;
SIGNAL ww_en_nz : std_logic;
SIGNAL ww_sel_ula : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sel_rem : std_logic;
SIGNAL \r~output_o\ : std_logic;
SIGNAL \w~output_o\ : std_logic;
SIGNAL \goto~output_o\ : std_logic;
SIGNAL \en_pc~output_o\ : std_logic;
SIGNAL \inc_pc~output_o\ : std_logic;
SIGNAL \en_ac~output_o\ : std_logic;
SIGNAL \en_rem~output_o\ : std_logic;
SIGNAL \en_rdm~output_o\ : std_logic;
SIGNAL \en_ri~output_o\ : std_logic;
SIGNAL \en_nz~output_o\ : std_logic;
SIGNAL \sel_ula[0]~output_o\ : std_logic;
SIGNAL \sel_ula[1]~output_o\ : std_logic;
SIGNAL \sel_ula[2]~output_o\ : std_logic;
SIGNAL \sel_rem~output_o\ : std_logic;
SIGNAL \tempo[1]~input_o\ : std_logic;
SIGNAL \RI[7]~input_o\ : std_logic;
SIGNAL \tempo[6]~input_o\ : std_logic;
SIGNAL \RI[5]~input_o\ : std_logic;
SIGNAL \RI[6]~input_o\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \RI[4]~input_o\ : std_logic;
SIGNAL \r~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \tempo[4]~input_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \r~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \n~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \r~1_combout\ : std_logic;
SIGNAL \r~4_combout\ : std_logic;
SIGNAL \tempo[7]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \w~0_combout\ : std_logic;
SIGNAL \goto~4_combout\ : std_logic;
SIGNAL \tempo[5]~input_o\ : std_logic;
SIGNAL \goto~12_combout\ : std_logic;
SIGNAL \goto~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \tempo[3]~input_o\ : std_logic;
SIGNAL \goto~10_combout\ : std_logic;
SIGNAL \goto~11_combout\ : std_logic;
SIGNAL \inc_pc~0_combout\ : std_logic;
SIGNAL \inc_pc~1_combout\ : std_logic;
SIGNAL \inc_pc~2_combout\ : std_logic;
SIGNAL \inc_pc~3_combout\ : std_logic;
SIGNAL \en_ac~0_combout\ : std_logic;
SIGNAL \en_ac~1_combout\ : std_logic;
SIGNAL \tempo[0]~input_o\ : std_logic;
SIGNAL \en_rem~1_combout\ : std_logic;
SIGNAL \en_rem~0_combout\ : std_logic;
SIGNAL \en_rem~2_combout\ : std_logic;
SIGNAL \en_rdm~0_combout\ : std_logic;
SIGNAL \tempo[2]~input_o\ : std_logic;
SIGNAL \sel_ula~12_combout\ : std_logic;
SIGNAL \sel_ula~25_combout\ : std_logic;
SIGNAL \sel_ula~26_combout\ : std_logic;
SIGNAL \sel_ula~27_combout\ : std_logic;
SIGNAL \sel_ula~24_combout\ : std_logic;

BEGIN

ww_n <= n;
ww_z <= z;
ww_RI <= RI;
ww_tempo <= tempo;
r <= ww_r;
w <= ww_w;
goto <= ww_goto;
en_pc <= ww_en_pc;
inc_pc <= ww_inc_pc;
en_ac <= ww_en_ac;
en_rem <= ww_en_rem;
en_rdm <= ww_en_rdm;
en_ri <= ww_en_ri;
en_nz <= ww_en_nz;
sel_ula <= ww_sel_ula;
sel_rem <= ww_sel_rem;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N9
\r~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r~4_combout\,
	devoe => ww_devoe,
	o => \r~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\w~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w~0_combout\,
	devoe => ww_devoe,
	o => \w~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\goto~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \goto~11_combout\,
	devoe => ww_devoe,
	o => \goto~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\en_pc~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \goto~12_combout\,
	devoe => ww_devoe,
	o => \en_pc~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\inc_pc~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inc_pc~3_combout\,
	devoe => ww_devoe,
	o => \inc_pc~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\en_ac~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_ac~1_combout\,
	devoe => ww_devoe,
	o => \en_ac~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\en_rem~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_rem~2_combout\,
	devoe => ww_devoe,
	o => \en_rem~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\en_rdm~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_rdm~0_combout\,
	devoe => ww_devoe,
	o => \en_rdm~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\en_ri~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tempo[2]~input_o\,
	devoe => ww_devoe,
	o => \en_ri~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\en_nz~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_ac~1_combout\,
	devoe => ww_devoe,
	o => \en_nz~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\sel_ula[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_ula~25_combout\,
	devoe => ww_devoe,
	o => \sel_ula[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\sel_ula[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_ula~27_combout\,
	devoe => ww_devoe,
	o => \sel_ula[1]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\sel_ula[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_ula~24_combout\,
	devoe => ww_devoe,
	o => \sel_ula[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\sel_rem~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_rem~0_combout\,
	devoe => ww_devoe,
	o => \sel_rem~output_o\);

-- Location: IOIBUF_X20_Y0_N8
\tempo[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(1),
	o => \tempo[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\RI[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RI(7),
	o => \RI[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\tempo[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(6),
	o => \tempo[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\RI[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RI(5),
	o => \RI[5]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\RI[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RI(6),
	o => \RI[6]~input_o\);

-- Location: LCCOMB_X20_Y3_N0
\r~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (!\RI[7]~input_o\ & (\tempo[6]~input_o\ & (\RI[5]~input_o\ $ (\RI[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[7]~input_o\,
	datab => \tempo[6]~input_o\,
	datac => \RI[5]~input_o\,
	datad => \RI[6]~input_o\,
	combout => \r~0_combout\);

-- Location: IOIBUF_X14_Y31_N1
\RI[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RI(4),
	o => \RI[4]~input_o\);

-- Location: LCCOMB_X20_Y3_N10
\r~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~2_combout\ = (!\RI[7]~input_o\ & ((\RI[5]~input_o\ & ((!\RI[6]~input_o\))) # (!\RI[5]~input_o\ & ((\RI[4]~input_o\) # (\RI[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \RI[5]~input_o\,
	datac => \RI[7]~input_o\,
	datad => \RI[6]~input_o\,
	combout => \r~2_combout\);

-- Location: LCCOMB_X20_Y4_N28
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\RI[4]~input_o\ & (!\RI[6]~input_o\ & (\RI[5]~input_o\ & \RI[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \RI[6]~input_o\,
	datac => \RI[5]~input_o\,
	datad => \RI[7]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X29_Y31_N8
\tempo[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(4),
	o => \tempo[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\z~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

-- Location: LCCOMB_X20_Y4_N14
\r~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~3_combout\ = (\tempo[4]~input_o\ & ((\r~2_combout\) # ((\Equal0~1_combout\ & \z~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \tempo[4]~input_o\,
	datad => \z~input_o\,
	combout => \r~3_combout\);

-- Location: LCCOMB_X20_Y4_N10
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\RI[4]~input_o\ & (!\RI[6]~input_o\ & (!\RI[5]~input_o\ & \RI[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \RI[6]~input_o\,
	datac => \RI[5]~input_o\,
	datad => \RI[7]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: IOIBUF_X29_Y0_N1
\n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n,
	o => \n~input_o\);

-- Location: LCCOMB_X20_Y4_N0
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\RI[4]~input_o\ & (!\RI[6]~input_o\ & (!\RI[5]~input_o\ & \RI[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \RI[6]~input_o\,
	datac => \RI[5]~input_o\,
	datad => \RI[7]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X20_Y4_N18
\r~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~1_combout\ = (\tempo[4]~input_o\ & ((\Equal0~0_combout\) # ((\Equal0~5_combout\ & \n~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \n~input_o\,
	datac => \tempo[4]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \r~1_combout\);

-- Location: LCCOMB_X20_Y4_N16
\r~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r~4_combout\ = (\tempo[1]~input_o\) # ((\r~0_combout\) # ((\r~3_combout\) # (\r~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \r~0_combout\,
	datac => \r~3_combout\,
	datad => \r~1_combout\,
	combout => \r~4_combout\);

-- Location: IOIBUF_X8_Y0_N1
\tempo[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(7),
	o => \tempo[7]~input_o\);

-- Location: LCCOMB_X20_Y3_N12
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\RI[4]~input_o\ & (!\RI[5]~input_o\ & (!\RI[7]~input_o\ & !\RI[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \RI[5]~input_o\,
	datac => \RI[7]~input_o\,
	datad => \RI[6]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y3_N6
\w~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w~0_combout\ = (\tempo[7]~input_o\ & \Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[7]~input_o\,
	datad => \Equal0~2_combout\,
	combout => \w~0_combout\);

-- Location: LCCOMB_X20_Y4_N12
\goto~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \goto~4_combout\ = (\RI[4]~input_o\ & (\n~input_o\ & (!\RI[5]~input_o\))) # (!\RI[4]~input_o\ & (((\z~input_o\) # (!\RI[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \n~input_o\,
	datac => \RI[5]~input_o\,
	datad => \z~input_o\,
	combout => \goto~4_combout\);

-- Location: IOIBUF_X8_Y0_N8
\tempo[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(5),
	o => \tempo[5]~input_o\);

-- Location: LCCOMB_X20_Y4_N30
\goto~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \goto~12_combout\ = (\goto~4_combout\ & (\tempo[5]~input_o\ & (!\RI[6]~input_o\ & \RI[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \goto~4_combout\,
	datab => \tempo[5]~input_o\,
	datac => \RI[6]~input_o\,
	datad => \RI[7]~input_o\,
	combout => \goto~12_combout\);

-- Location: LCCOMB_X20_Y4_N26
\goto~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \goto~9_combout\ = (\Equal0~5_combout\ & (((\Equal0~1_combout\ & !\z~input_o\)) # (!\n~input_o\))) # (!\Equal0~5_combout\ & (\Equal0~1_combout\ & ((!\z~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~1_combout\,
	datac => \n~input_o\,
	datad => \z~input_o\,
	combout => \goto~9_combout\);

-- Location: LCCOMB_X20_Y3_N24
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\RI[4]~input_o\ & (!\RI[5]~input_o\ & (!\RI[7]~input_o\ & !\RI[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \RI[5]~input_o\,
	datac => \RI[7]~input_o\,
	datad => \RI[6]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X20_Y3_N26
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\RI[4]~input_o\ & (\RI[5]~input_o\ & (!\RI[7]~input_o\ & \RI[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \RI[5]~input_o\,
	datac => \RI[7]~input_o\,
	datad => \RI[6]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X12_Y0_N1
\tempo[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(3),
	o => \tempo[3]~input_o\);

-- Location: LCCOMB_X20_Y3_N20
\goto~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \goto~10_combout\ = (\tempo[3]~input_o\ & ((\goto~9_combout\) # ((\Equal0~3_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \goto~9_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~4_combout\,
	datad => \tempo[3]~input_o\,
	combout => \goto~10_combout\);

-- Location: LCCOMB_X20_Y3_N22
\goto~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \goto~11_combout\ = (\goto~12_combout\) # ((\goto~10_combout\) # ((\r~2_combout\ & \tempo[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~2_combout\,
	datab => \tempo[7]~input_o\,
	datac => \goto~12_combout\,
	datad => \goto~10_combout\,
	combout => \goto~11_combout\);

-- Location: LCCOMB_X20_Y4_N4
\inc_pc~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inc_pc~0_combout\ = (\tempo[4]~input_o\ & (!\RI[7]~input_o\ & (\RI[5]~input_o\ $ (\RI[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[5]~input_o\,
	datab => \RI[6]~input_o\,
	datac => \tempo[4]~input_o\,
	datad => \RI[7]~input_o\,
	combout => \inc_pc~0_combout\);

-- Location: LCCOMB_X20_Y4_N6
\inc_pc~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inc_pc~1_combout\ = (\tempo[3]~input_o\ & (!\n~input_o\ & \Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[3]~input_o\,
	datac => \n~input_o\,
	datad => \Equal0~5_combout\,
	combout => \inc_pc~1_combout\);

-- Location: LCCOMB_X20_Y4_N24
\inc_pc~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inc_pc~2_combout\ = (!\inc_pc~1_combout\ & (((\z~input_o\) # (!\tempo[3]~input_o\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_pc~1_combout\,
	datab => \Equal0~1_combout\,
	datac => \tempo[3]~input_o\,
	datad => \z~input_o\,
	combout => \inc_pc~2_combout\);

-- Location: LCCOMB_X20_Y4_N2
\inc_pc~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inc_pc~3_combout\ = (\tempo[1]~input_o\) # ((\inc_pc~0_combout\) # (!\inc_pc~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[1]~input_o\,
	datac => \inc_pc~0_combout\,
	datad => \inc_pc~2_combout\,
	combout => \inc_pc~3_combout\);

-- Location: LCCOMB_X20_Y3_N8
\en_ac~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \en_ac~0_combout\ = (!\RI[7]~input_o\ & (\tempo[7]~input_o\ & (\RI[5]~input_o\ $ (\RI[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[7]~input_o\,
	datab => \tempo[7]~input_o\,
	datac => \RI[5]~input_o\,
	datad => \RI[6]~input_o\,
	combout => \en_ac~0_combout\);

-- Location: LCCOMB_X20_Y3_N2
\en_ac~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \en_ac~1_combout\ = (\en_ac~0_combout\) # ((\Equal0~4_combout\ & \tempo[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \tempo[3]~input_o\,
	datac => \en_ac~0_combout\,
	combout => \en_ac~1_combout\);

-- Location: IOIBUF_X24_Y0_N1
\tempo[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(0),
	o => \tempo[0]~input_o\);

-- Location: LCCOMB_X20_Y4_N22
\en_rem~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \en_rem~1_combout\ = (\tempo[0]~input_o\) # ((\tempo[3]~input_o\ & ((\r~2_combout\) # (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \tempo[3]~input_o\,
	datad => \tempo[0]~input_o\,
	combout => \en_rem~1_combout\);

-- Location: LCCOMB_X20_Y4_N20
\en_rem~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \en_rem~0_combout\ = (\tempo[5]~input_o\ & (!\RI[7]~input_o\ & (\RI[5]~input_o\ $ (\RI[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[5]~input_o\,
	datab => \tempo[5]~input_o\,
	datac => \RI[6]~input_o\,
	datad => \RI[7]~input_o\,
	combout => \en_rem~0_combout\);

-- Location: LCCOMB_X20_Y4_N8
\en_rem~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \en_rem~2_combout\ = ((\en_rem~1_combout\) # (\en_rem~0_combout\)) # (!\inc_pc~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inc_pc~2_combout\,
	datac => \en_rem~1_combout\,
	datad => \en_rem~0_combout\,
	combout => \en_rem~2_combout\);

-- Location: LCCOMB_X20_Y3_N4
\en_rdm~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \en_rdm~0_combout\ = (\tempo[6]~input_o\ & \Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[6]~input_o\,
	datad => \Equal0~2_combout\,
	combout => \en_rdm~0_combout\);

-- Location: IOIBUF_X33_Y10_N1
\tempo[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(2),
	o => \tempo[2]~input_o\);

-- Location: LCCOMB_X20_Y3_N16
\sel_ula~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_ula~12_combout\ = (\RI[5]~input_o\ & ((\tempo[3]~input_o\))) # (!\RI[5]~input_o\ & (\tempo[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[7]~input_o\,
	datac => \RI[5]~input_o\,
	datad => \tempo[3]~input_o\,
	combout => \sel_ula~12_combout\);

-- Location: LCCOMB_X20_Y3_N18
\sel_ula~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_ula~25_combout\ = (!\RI[4]~input_o\ & (\sel_ula~12_combout\ & (!\RI[7]~input_o\ & \RI[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \sel_ula~12_combout\,
	datac => \RI[7]~input_o\,
	datad => \RI[6]~input_o\,
	combout => \sel_ula~25_combout\);

-- Location: LCCOMB_X20_Y3_N28
\sel_ula~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_ula~26_combout\ = (!\RI[7]~input_o\ & ((\RI[4]~input_o\ & ((\tempo[7]~input_o\))) # (!\RI[4]~input_o\ & (\tempo[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \tempo[3]~input_o\,
	datac => \RI[7]~input_o\,
	datad => \tempo[7]~input_o\,
	combout => \sel_ula~26_combout\);

-- Location: LCCOMB_X20_Y3_N14
\sel_ula~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_ula~27_combout\ = (\sel_ula~26_combout\ & ((\RI[4]~input_o\ & (\RI[5]~input_o\ $ (\RI[6]~input_o\))) # (!\RI[4]~input_o\ & (\RI[5]~input_o\ & \RI[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[4]~input_o\,
	datab => \sel_ula~26_combout\,
	datac => \RI[5]~input_o\,
	datad => \RI[6]~input_o\,
	combout => \sel_ula~27_combout\);

-- Location: LCCOMB_X20_Y3_N30
\sel_ula~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_ula~24_combout\ = (!\RI[7]~input_o\ & (\tempo[7]~input_o\ & (\RI[5]~input_o\ & !\RI[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI[7]~input_o\,
	datab => \tempo[7]~input_o\,
	datac => \RI[5]~input_o\,
	datad => \RI[6]~input_o\,
	combout => \sel_ula~24_combout\);

ww_r <= \r~output_o\;

ww_w <= \w~output_o\;

ww_goto <= \goto~output_o\;

ww_en_pc <= \en_pc~output_o\;

ww_inc_pc <= \inc_pc~output_o\;

ww_en_ac <= \en_ac~output_o\;

ww_en_rem <= \en_rem~output_o\;

ww_en_rdm <= \en_rdm~output_o\;

ww_en_ri <= \en_ri~output_o\;

ww_en_nz <= \en_nz~output_o\;

ww_sel_ula(0) <= \sel_ula[0]~output_o\;

ww_sel_ula(1) <= \sel_ula[1]~output_o\;

ww_sel_ula(2) <= \sel_ula[2]~output_o\;

ww_sel_rem <= \sel_rem~output_o\;
END structure;


