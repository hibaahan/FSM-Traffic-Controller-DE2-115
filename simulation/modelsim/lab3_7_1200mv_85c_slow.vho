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

-- DATE "11/03/2025 17:03:54"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	TopEntity IS
    PORT (
	MSTL : OUT std_logic_vector(2 DOWNTO 0);
	GReset : IN std_logic;
	SSCS : IN std_logic;
	GClock : IN std_logic;
	MSC : IN std_logic_vector(3 DOWNTO 0);
	SSC : IN std_logic_vector(3 DOWNTO 0);
	SSTL : OUT std_logic_vector(2 DOWNTO 0)
	);
END TopEntity;

-- Design Ports Information
-- MSTL[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSC[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSC[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSC[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSC[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSCS	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TopEntity IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MSTL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_GReset : std_logic;
SIGNAL ww_SSCS : std_logic;
SIGNAL ww_GClock : std_logic;
SIGNAL ww_MSC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SSC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SSTL : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst6|clock_100hz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst6|clock_1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst6|clock_10Hz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst6|clock_100Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst6|clock_1Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst6|clock_10Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst6|clock_1Mhz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst6|count_1Mhz[0]~5_combout\ : std_logic;
SIGNAL \inst|inst6|count_1Mhz[0]~6\ : std_logic;
SIGNAL \inst|inst6|count_1Mhz[1]~7_combout\ : std_logic;
SIGNAL \inst|inst6|count_1Mhz[1]~8\ : std_logic;
SIGNAL \inst|inst6|count_1Mhz[2]~9_combout\ : std_logic;
SIGNAL \inst|inst6|count_1Mhz[2]~10\ : std_logic;
SIGNAL \inst|inst6|count_1Mhz[3]~11_combout\ : std_logic;
SIGNAL \inst|inst6|count_1Mhz[3]~12\ : std_logic;
SIGNAL \inst|inst6|count_1Mhz[4]~13_combout\ : std_logic;
SIGNAL \inst|MSC_max|ssb|int_q~q\ : std_logic;
SIGNAL \inst|MSC_max|lsb|int_q~q\ : std_logic;
SIGNAL \inst|MSC_max|msb|int_q~q\ : std_logic;
SIGNAL \inst|inst21|o_pulse~1_combout\ : std_logic;
SIGNAL \inst|SSC_max|ssb|int_q~q\ : std_logic;
SIGNAL \inst|SSC_max|lsb|int_q~q\ : std_logic;
SIGNAL \inst|inst6|clock_1Hz~q\ : std_logic;
SIGNAL \inst|inst|o_enable_timer~combout\ : std_logic;
SIGNAL \inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~0_combout\ : std_logic;
SIGNAL \inst|inst6|clock_1Hz_int~q\ : std_logic;
SIGNAL \inst|inst6|clock_1Hz_int~0_combout\ : std_logic;
SIGNAL \inst|inst6|clock_10Hz_int~q\ : std_logic;
SIGNAL \inst|inst6|count_1hz[1]~0_combout\ : std_logic;
SIGNAL \inst|inst6|count_1hz~1_combout\ : std_logic;
SIGNAL \inst|inst6|count_1hz~2_combout\ : std_logic;
SIGNAL \inst|inst6|clock_10Hz_int~0_combout\ : std_logic;
SIGNAL \inst|inst6|clock_100hz_int~q\ : std_logic;
SIGNAL \inst|inst6|count_10hz~0_combout\ : std_logic;
SIGNAL \inst|inst6|count_10hz[1]~1_combout\ : std_logic;
SIGNAL \inst|inst6|count_10hz~2_combout\ : std_logic;
SIGNAL \inst|inst6|clock_100hz_int~0_combout\ : std_logic;
SIGNAL \inst|inst6|clock_1Khz_int~q\ : std_logic;
SIGNAL \inst|inst6|count_100hz~0_combout\ : std_logic;
SIGNAL \inst|inst6|count_100hz[1]~1_combout\ : std_logic;
SIGNAL \inst|inst6|count_100hz~2_combout\ : std_logic;
SIGNAL \inst|inst6|clock_1Khz_int~0_combout\ : std_logic;
SIGNAL \inst|inst6|clock_10Khz_int~q\ : std_logic;
SIGNAL \inst|inst6|count_1Khz~0_combout\ : std_logic;
SIGNAL \inst|inst6|count_1Khz[1]~1_combout\ : std_logic;
SIGNAL \inst|inst6|count_1Khz~2_combout\ : std_logic;
SIGNAL \inst|inst6|clock_10Khz_int~0_combout\ : std_logic;
SIGNAL \inst|inst6|clock_100Khz_int~q\ : std_logic;
SIGNAL \inst|inst6|count_10Khz~0_combout\ : std_logic;
SIGNAL \inst|inst6|count_10Khz[1]~1_combout\ : std_logic;
SIGNAL \inst|inst6|count_10Khz~2_combout\ : std_logic;
SIGNAL \inst|inst6|clock_100Khz_int~0_combout\ : std_logic;
SIGNAL \inst|inst6|clock_1Mhz_int~q\ : std_logic;
SIGNAL \inst|inst6|count_100Khz~0_combout\ : std_logic;
SIGNAL \inst|inst6|count_100Khz[1]~1_combout\ : std_logic;
SIGNAL \inst|inst6|count_100Khz~2_combout\ : std_logic;
SIGNAL \inst|inst6|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|inst6|LessThan0~0_combout\ : std_logic;
SIGNAL \MSC[2]~input_o\ : std_logic;
SIGNAL \MSC[0]~input_o\ : std_logic;
SIGNAL \MSC[3]~input_o\ : std_logic;
SIGNAL \SSC[2]~input_o\ : std_logic;
SIGNAL \SSC[0]~input_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \inst|inst6|clock_100hz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst6|clock_1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst6|clock_10Hz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst6|clock_100Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst6|clock_1Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst6|clock_10Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst6|clock_1Mhz_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst6|clock_1Hz~feeder_combout\ : std_logic;
SIGNAL \inst|inst6|clock_10Hz_int~feeder_combout\ : std_logic;
SIGNAL \inst|inst6|clock_100hz_int~feeder_combout\ : std_logic;
SIGNAL \inst|inst6|clock_1Khz_int~feeder_combout\ : std_logic;
SIGNAL \inst|inst6|clock_10Khz_int~feeder_combout\ : std_logic;
SIGNAL \inst|inst6|clock_100Khz_int~feeder_combout\ : std_logic;
SIGNAL \MSTL[2]~output_o\ : std_logic;
SIGNAL \MSTL[1]~output_o\ : std_logic;
SIGNAL \MSTL[0]~output_o\ : std_logic;
SIGNAL \SSTL[2]~output_o\ : std_logic;
SIGNAL \SSTL[1]~output_o\ : std_logic;
SIGNAL \SSTL[0]~output_o\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst19|EdgeFF|int_q~q\ : std_logic;
SIGNAL \SSCS~input_o\ : std_logic;
SIGNAL \inst|inst3|int_d2Input~combout\ : std_logic;
SIGNAL \inst|inst3|second|int_q~q\ : std_logic;
SIGNAL \inst|inst3|int_d1Input~0_combout\ : std_logic;
SIGNAL \inst|inst3|first|int_q~q\ : std_logic;
SIGNAL \inst|inst|o_set_timer~1_combout\ : std_logic;
SIGNAL \SSC[1]~input_o\ : std_logic;
SIGNAL \inst|SSC_max|tsb|int_q~q\ : std_logic;
SIGNAL \inst|inst|S0_next~1_combout\ : std_logic;
SIGNAL \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~5_combout\ : std_logic;
SIGNAL \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\ : std_logic;
SIGNAL \inst|MS_Counter|bit1MUX|Mux2_1_3|o_val~combout\ : std_logic;
SIGNAL \inst|SS_Counter|bit1FF|int_q~q\ : std_logic;
SIGNAL \inst|inst21|o_pulse~3_combout\ : std_logic;
SIGNAL \inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~1_combout\ : std_logic;
SIGNAL \inst|SS_Counter|bit3FF|int_q~q\ : std_logic;
SIGNAL \SSC[3]~input_o\ : std_logic;
SIGNAL \inst|SSC_max|msb|int_q~q\ : std_logic;
SIGNAL \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~6_combout\ : std_logic;
SIGNAL \inst|SS_Counter|bit0FF|int_q~q\ : std_logic;
SIGNAL \inst|inst21|o_pulse~4_combout\ : std_logic;
SIGNAL \inst|inst21|o_pulse~5_combout\ : std_logic;
SIGNAL \inst|inst21|EdgeFF|int_q~q\ : std_logic;
SIGNAL \inst|inst|o_set_timer~2_combout\ : std_logic;
SIGNAL \inst|inst|S1_next~2_combout\ : std_logic;
SIGNAL \inst|inst|S1_Q|int_q~q\ : std_logic;
SIGNAL \inst|inst|S0_next~0_combout\ : std_logic;
SIGNAL \inst|inst|S0_next~2_combout\ : std_logic;
SIGNAL \inst|inst|S0_next~combout\ : std_logic;
SIGNAL \inst|inst|S0_Q|int_q~q\ : std_logic;
SIGNAL \inst|inst|o_enable_counter~combout\ : std_logic;
SIGNAL \inst|MS_Counter|bit2MUX|Mux2_1_3|o_val~combout\ : std_logic;
SIGNAL \inst|SS_Counter|bit2FF|int_q~q\ : std_logic;
SIGNAL \MSC[1]~input_o\ : std_logic;
SIGNAL \inst|MSC_max|tsb|int_q~q\ : std_logic;
SIGNAL \inst|inst21|o_pulse~0_combout\ : std_logic;
SIGNAL \inst|inst21|o_pulse~2_combout\ : std_logic;
SIGNAL \inst|inst21|o_pulse~6_combout\ : std_logic;
SIGNAL \inst|inst|o_set_timer~0_combout\ : std_logic;
SIGNAL \inst|inst|S3_next~2_combout\ : std_logic;
SIGNAL \inst|inst|S3_Q|int_q~q\ : std_logic;
SIGNAL \inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\ : std_logic;
SIGNAL \inst|Timer|bit0MUX|Mux2_1_3|o_val~3_combout\ : std_logic;
SIGNAL \inst|Timer|bit0FF|int_q~q\ : std_logic;
SIGNAL \inst|Timer|bit1MUX|Mux2_1_3|o_val~0_combout\ : std_logic;
SIGNAL \inst|Timer|bit1FF|int_q~q\ : std_logic;
SIGNAL \inst|Timer|bit2MUX|Mux2_1_3|o_val~0_combout\ : std_logic;
SIGNAL \inst|Timer|bit2MUX|Mux2_1_3|o_val~1_combout\ : std_logic;
SIGNAL \inst|Timer|bit2FF|int_q~q\ : std_logic;
SIGNAL \inst|Timer|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Timer|bit3MUX|Mux2_1_3|o_val~0_combout\ : std_logic;
SIGNAL \inst|Timer|bit3FF|int_q~q\ : std_logic;
SIGNAL \inst|Timer|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst|o_set_counter~0_combout\ : std_logic;
SIGNAL \inst|inst|S2_next~combout\ : std_logic;
SIGNAL \inst|inst|S2_Q|int_q~q\ : std_logic;
SIGNAL \inst|inst|non_active~0_combout\ : std_logic;
SIGNAL \inst|inst6|count_1Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|MS_Counter|inc_Value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst6|count_10hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst6|count_1hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst6|count_10Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst6|count_100hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst|o_SSTL\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst6|count_1Mhz\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|inst6|count_100Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst|ALT_INV_non_active~0_combout\ : std_logic;

BEGIN

MSTL <= ww_MSTL;
ww_GReset <= GReset;
ww_SSCS <= SSCS;
ww_GClock <= GClock;
ww_MSC <= MSC;
ww_SSC <= SSC;
SSTL <= ww_SSTL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst6|clock_100hz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst6|clock_100hz_int~q\);

\inst|inst6|clock_1Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst6|clock_1Hz~q\);

\inst|inst6|clock_10Hz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst6|clock_10Hz_int~q\);

\inst|inst6|clock_100Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst6|clock_100Khz_int~q\);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);

\inst|inst6|clock_1Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst6|clock_1Khz_int~q\);

\inst|inst6|clock_10Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst6|clock_10Khz_int~q\);

\inst|inst6|clock_1Mhz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst6|clock_1Mhz_int~q\);

\GReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GReset~input_o\);
\inst|inst|ALT_INV_non_active~0_combout\ <= NOT \inst|inst|non_active~0_combout\;

-- Location: FF_X57_Y1_N15
\inst|inst6|count_1Mhz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \inst|inst6|count_1Mhz[2]~9_combout\,
	sclr => \inst|inst6|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1Mhz\(2));

-- Location: FF_X57_Y1_N17
\inst|inst6|count_1Mhz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \inst|inst6|count_1Mhz[3]~11_combout\,
	sclr => \inst|inst6|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1Mhz\(3));

-- Location: FF_X57_Y1_N19
\inst|inst6|count_1Mhz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \inst|inst6|count_1Mhz[4]~13_combout\,
	sclr => \inst|inst6|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1Mhz\(4));

-- Location: FF_X57_Y1_N13
\inst|inst6|count_1Mhz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \inst|inst6|count_1Mhz[1]~7_combout\,
	sclr => \inst|inst6|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1Mhz\(1));

-- Location: FF_X57_Y1_N11
\inst|inst6|count_1Mhz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \inst|inst6|count_1Mhz[0]~5_combout\,
	sclr => \inst|inst6|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1Mhz\(0));

-- Location: LCCOMB_X57_Y1_N10
\inst|inst6|count_1Mhz[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1Mhz[0]~5_combout\ = \inst|inst6|count_1Mhz\(0) $ (VCC)
-- \inst|inst6|count_1Mhz[0]~6\ = CARRY(\inst|inst6|count_1Mhz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_1Mhz\(0),
	datad => VCC,
	combout => \inst|inst6|count_1Mhz[0]~5_combout\,
	cout => \inst|inst6|count_1Mhz[0]~6\);

-- Location: LCCOMB_X57_Y1_N12
\inst|inst6|count_1Mhz[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1Mhz[1]~7_combout\ = (\inst|inst6|count_1Mhz\(1) & (!\inst|inst6|count_1Mhz[0]~6\)) # (!\inst|inst6|count_1Mhz\(1) & ((\inst|inst6|count_1Mhz[0]~6\) # (GND)))
-- \inst|inst6|count_1Mhz[1]~8\ = CARRY((!\inst|inst6|count_1Mhz[0]~6\) # (!\inst|inst6|count_1Mhz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_1Mhz\(1),
	datad => VCC,
	cin => \inst|inst6|count_1Mhz[0]~6\,
	combout => \inst|inst6|count_1Mhz[1]~7_combout\,
	cout => \inst|inst6|count_1Mhz[1]~8\);

-- Location: LCCOMB_X57_Y1_N14
\inst|inst6|count_1Mhz[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1Mhz[2]~9_combout\ = (\inst|inst6|count_1Mhz\(2) & (\inst|inst6|count_1Mhz[1]~8\ $ (GND))) # (!\inst|inst6|count_1Mhz\(2) & (!\inst|inst6|count_1Mhz[1]~8\ & VCC))
-- \inst|inst6|count_1Mhz[2]~10\ = CARRY((\inst|inst6|count_1Mhz\(2) & !\inst|inst6|count_1Mhz[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|count_1Mhz\(2),
	datad => VCC,
	cin => \inst|inst6|count_1Mhz[1]~8\,
	combout => \inst|inst6|count_1Mhz[2]~9_combout\,
	cout => \inst|inst6|count_1Mhz[2]~10\);

-- Location: LCCOMB_X57_Y1_N16
\inst|inst6|count_1Mhz[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1Mhz[3]~11_combout\ = (\inst|inst6|count_1Mhz\(3) & (!\inst|inst6|count_1Mhz[2]~10\)) # (!\inst|inst6|count_1Mhz\(3) & ((\inst|inst6|count_1Mhz[2]~10\) # (GND)))
-- \inst|inst6|count_1Mhz[3]~12\ = CARRY((!\inst|inst6|count_1Mhz[2]~10\) # (!\inst|inst6|count_1Mhz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|count_1Mhz\(3),
	datad => VCC,
	cin => \inst|inst6|count_1Mhz[2]~10\,
	combout => \inst|inst6|count_1Mhz[3]~11_combout\,
	cout => \inst|inst6|count_1Mhz[3]~12\);

-- Location: LCCOMB_X57_Y1_N18
\inst|inst6|count_1Mhz[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1Mhz[4]~13_combout\ = \inst|inst6|count_1Mhz[3]~12\ $ (!\inst|inst6|count_1Mhz\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst6|count_1Mhz\(4),
	cin => \inst|inst6|count_1Mhz[3]~12\,
	combout => \inst|inst6|count_1Mhz[4]~13_combout\);

-- Location: FF_X24_Y72_N31
\inst|MSC_max|ssb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \MSC[2]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MSC_max|ssb|int_q~q\);

-- Location: FF_X24_Y72_N11
\inst|MSC_max|lsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \MSC[0]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MSC_max|lsb|int_q~q\);

-- Location: FF_X24_Y72_N23
\inst|MSC_max|msb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \MSC[3]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MSC_max|msb|int_q~q\);

-- Location: LCCOMB_X24_Y72_N22
\inst|inst21|o_pulse~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst21|o_pulse~1_combout\ = (\inst|SS_Counter|bit0FF|int_q~q\ & ((\inst|MSC_max|msb|int_q~q\ $ (\inst|SS_Counter|bit3FF|int_q~q\)) # (!\inst|MSC_max|lsb|int_q~q\))) # (!\inst|SS_Counter|bit0FF|int_q~q\ & ((\inst|MSC_max|lsb|int_q~q\) # 
-- (\inst|MSC_max|msb|int_q~q\ $ (\inst|SS_Counter|bit3FF|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SS_Counter|bit0FF|int_q~q\,
	datab => \inst|MSC_max|lsb|int_q~q\,
	datac => \inst|MSC_max|msb|int_q~q\,
	datad => \inst|SS_Counter|bit3FF|int_q~q\,
	combout => \inst|inst21|o_pulse~1_combout\);

-- Location: FF_X24_Y72_N9
\inst|SSC_max|ssb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \SSC[2]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SSC_max|ssb|int_q~q\);

-- Location: FF_X24_Y72_N7
\inst|SSC_max|lsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \SSC[0]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SSC_max|lsb|int_q~q\);

-- Location: FF_X2_Y36_N29
\inst|inst6|clock_1Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \inst|inst6|clock_1Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|clock_1Hz~q\);

-- Location: LCCOMB_X26_Y72_N2
\inst|inst|o_enable_timer\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|o_enable_timer~combout\ = (\inst|inst|S3_Q|int_q~q\) # (\inst|inst|S1_Q|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|S3_Q|int_q~q\,
	datad => \inst|inst|S1_Q|int_q~q\,
	combout => \inst|inst|o_enable_timer~combout\);

-- Location: LCCOMB_X23_Y72_N20
\inst|MS_Counter|inc_Value[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MS_Counter|inc_Value\(2) = \inst|SS_Counter|bit2FF|int_q~q\ $ (((\inst|SS_Counter|bit0FF|int_q~q\ & \inst|SS_Counter|bit1FF|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SS_Counter|bit0FF|int_q~q\,
	datac => \inst|SS_Counter|bit2FF|int_q~q\,
	datad => \inst|SS_Counter|bit1FF|int_q~q\,
	combout => \inst|MS_Counter|inc_Value\(2));

-- Location: LCCOMB_X23_Y72_N18
\inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~0_combout\ = \inst|SS_Counter|bit3FF|int_q~q\ $ (((\inst|SS_Counter|bit2FF|int_q~q\ & (\inst|SS_Counter|bit0FF|int_q~q\ & \inst|SS_Counter|bit1FF|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SS_Counter|bit2FF|int_q~q\,
	datab => \inst|SS_Counter|bit0FF|int_q~q\,
	datac => \inst|SS_Counter|bit3FF|int_q~q\,
	datad => \inst|SS_Counter|bit1FF|int_q~q\,
	combout => \inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~0_combout\);

-- Location: FF_X2_Y36_N27
\inst|inst6|clock_1Hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_10Hz_int~clkctrl_outclk\,
	d => \inst|inst6|clock_1Hz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|clock_1Hz_int~q\);

-- Location: FF_X2_Y36_N25
\inst|inst6|count_1hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_10Hz_int~clkctrl_outclk\,
	d => \inst|inst6|count_1hz[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1hz\(1));

-- Location: FF_X2_Y36_N1
\inst|inst6|count_1hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_10Hz_int~clkctrl_outclk\,
	d => \inst|inst6|count_1hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1hz\(0));

-- Location: FF_X2_Y36_N31
\inst|inst6|count_1hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_10Hz_int~clkctrl_outclk\,
	d => \inst|inst6|count_1hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1hz\(2));

-- Location: LCCOMB_X2_Y36_N26
\inst|inst6|clock_1Hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_1Hz_int~0_combout\ = \inst|inst6|clock_1Hz_int~q\ $ (((\inst|inst6|count_1hz\(2) & (!\inst|inst6|count_1hz\(1) & !\inst|inst6|count_1hz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_1hz\(2),
	datab => \inst|inst6|count_1hz\(1),
	datac => \inst|inst6|clock_1Hz_int~q\,
	datad => \inst|inst6|count_1hz\(0),
	combout => \inst|inst6|clock_1Hz_int~0_combout\);

-- Location: FF_X56_Y72_N25
\inst|inst6|clock_10Hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_100hz_int~clkctrl_outclk\,
	d => \inst|inst6|clock_10Hz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|clock_10Hz_int~q\);

-- Location: LCCOMB_X2_Y36_N24
\inst|inst6|count_1hz[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1hz[1]~0_combout\ = \inst|inst6|count_1hz\(1) $ (\inst|inst6|count_1hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|count_1hz\(1),
	datad => \inst|inst6|count_1hz\(0),
	combout => \inst|inst6|count_1hz[1]~0_combout\);

-- Location: LCCOMB_X2_Y36_N0
\inst|inst6|count_1hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1hz~1_combout\ = (!\inst|inst6|count_1hz\(0) & ((\inst|inst6|count_1hz\(1)) # (!\inst|inst6|count_1hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_1hz\(2),
	datac => \inst|inst6|count_1hz\(0),
	datad => \inst|inst6|count_1hz\(1),
	combout => \inst|inst6|count_1hz~1_combout\);

-- Location: LCCOMB_X2_Y36_N30
\inst|inst6|count_1hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1hz~2_combout\ = (\inst|inst6|count_1hz\(1) & (\inst|inst6|count_1hz\(2) $ (\inst|inst6|count_1hz\(0)))) # (!\inst|inst6|count_1hz\(1) & (\inst|inst6|count_1hz\(2) & \inst|inst6|count_1hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|count_1hz\(1),
	datac => \inst|inst6|count_1hz\(2),
	datad => \inst|inst6|count_1hz\(0),
	combout => \inst|inst6|count_1hz~2_combout\);

-- Location: FF_X56_Y72_N27
\inst|inst6|count_10hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_100hz_int~clkctrl_outclk\,
	d => \inst|inst6|count_10hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_10hz\(0));

-- Location: FF_X56_Y72_N21
\inst|inst6|count_10hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_100hz_int~clkctrl_outclk\,
	d => \inst|inst6|count_10hz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_10hz\(1));

-- Location: FF_X56_Y72_N31
\inst|inst6|count_10hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_100hz_int~clkctrl_outclk\,
	d => \inst|inst6|count_10hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_10hz\(2));

-- Location: LCCOMB_X56_Y72_N12
\inst|inst6|clock_10Hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_10Hz_int~0_combout\ = \inst|inst6|clock_10Hz_int~q\ $ (((!\inst|inst6|count_10hz\(0) & (\inst|inst6|count_10hz\(2) & !\inst|inst6|count_10hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_10hz\(0),
	datab => \inst|inst6|clock_10Hz_int~q\,
	datac => \inst|inst6|count_10hz\(2),
	datad => \inst|inst6|count_10hz\(1),
	combout => \inst|inst6|clock_10Hz_int~0_combout\);

-- Location: FF_X1_Y36_N31
\inst|inst6|clock_100hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Khz_int~clkctrl_outclk\,
	d => \inst|inst6|clock_100hz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|clock_100hz_int~q\);

-- Location: LCCOMB_X56_Y72_N26
\inst|inst6|count_10hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_10hz~0_combout\ = (!\inst|inst6|count_10hz\(0) & ((\inst|inst6|count_10hz\(1)) # (!\inst|inst6|count_10hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|count_10hz\(1),
	datac => \inst|inst6|count_10hz\(0),
	datad => \inst|inst6|count_10hz\(2),
	combout => \inst|inst6|count_10hz~0_combout\);

-- Location: LCCOMB_X56_Y72_N20
\inst|inst6|count_10hz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_10hz[1]~1_combout\ = \inst|inst6|count_10hz\(1) $ (\inst|inst6|count_10hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|count_10hz\(1),
	datad => \inst|inst6|count_10hz\(0),
	combout => \inst|inst6|count_10hz[1]~1_combout\);

-- Location: LCCOMB_X56_Y72_N30
\inst|inst6|count_10hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_10hz~2_combout\ = (\inst|inst6|count_10hz\(0) & (\inst|inst6|count_10hz\(2) $ (\inst|inst6|count_10hz\(1)))) # (!\inst|inst6|count_10hz\(0) & (\inst|inst6|count_10hz\(2) & \inst|inst6|count_10hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_10hz\(0),
	datac => \inst|inst6|count_10hz\(2),
	datad => \inst|inst6|count_10hz\(1),
	combout => \inst|inst6|count_10hz~2_combout\);

-- Location: FF_X1_Y36_N27
\inst|inst6|count_100hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Khz_int~clkctrl_outclk\,
	d => \inst|inst6|count_100hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_100hz\(0));

-- Location: FF_X1_Y36_N21
\inst|inst6|count_100hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Khz_int~clkctrl_outclk\,
	d => \inst|inst6|count_100hz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_100hz\(1));

-- Location: FF_X1_Y36_N23
\inst|inst6|count_100hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Khz_int~clkctrl_outclk\,
	d => \inst|inst6|count_100hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_100hz\(2));

-- Location: LCCOMB_X1_Y36_N28
\inst|inst6|clock_100hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_100hz_int~0_combout\ = \inst|inst6|clock_100hz_int~q\ $ (((!\inst|inst6|count_100hz\(0) & (\inst|inst6|count_100hz\(2) & !\inst|inst6|count_100hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|clock_100hz_int~q\,
	datab => \inst|inst6|count_100hz\(0),
	datac => \inst|inst6|count_100hz\(2),
	datad => \inst|inst6|count_100hz\(1),
	combout => \inst|inst6|clock_100hz_int~0_combout\);

-- Location: FF_X55_Y72_N5
\inst|inst6|clock_1Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_10Khz_int~clkctrl_outclk\,
	d => \inst|inst6|clock_1Khz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|clock_1Khz_int~q\);

-- Location: LCCOMB_X1_Y36_N26
\inst|inst6|count_100hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_100hz~0_combout\ = (!\inst|inst6|count_100hz\(0) & ((\inst|inst6|count_100hz\(1)) # (!\inst|inst6|count_100hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_100hz\(2),
	datac => \inst|inst6|count_100hz\(0),
	datad => \inst|inst6|count_100hz\(1),
	combout => \inst|inst6|count_100hz~0_combout\);

-- Location: LCCOMB_X1_Y36_N20
\inst|inst6|count_100hz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_100hz[1]~1_combout\ = \inst|inst6|count_100hz\(1) $ (\inst|inst6|count_100hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|count_100hz\(1),
	datad => \inst|inst6|count_100hz\(0),
	combout => \inst|inst6|count_100hz[1]~1_combout\);

-- Location: LCCOMB_X1_Y36_N22
\inst|inst6|count_100hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_100hz~2_combout\ = (\inst|inst6|count_100hz\(0) & (\inst|inst6|count_100hz\(2) $ (\inst|inst6|count_100hz\(1)))) # (!\inst|inst6|count_100hz\(0) & (\inst|inst6|count_100hz\(2) & \inst|inst6|count_100hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_100hz\(0),
	datac => \inst|inst6|count_100hz\(2),
	datad => \inst|inst6|count_100hz\(1),
	combout => \inst|inst6|count_100hz~2_combout\);

-- Location: FF_X55_Y72_N31
\inst|inst6|count_1Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_10Khz_int~clkctrl_outclk\,
	d => \inst|inst6|count_1Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1Khz\(0));

-- Location: FF_X55_Y72_N25
\inst|inst6|count_1Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_10Khz_int~clkctrl_outclk\,
	d => \inst|inst6|count_1Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1Khz\(1));

-- Location: FF_X55_Y72_N23
\inst|inst6|count_1Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_10Khz_int~clkctrl_outclk\,
	d => \inst|inst6|count_1Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_1Khz\(2));

-- Location: LCCOMB_X55_Y72_N20
\inst|inst6|clock_1Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_1Khz_int~0_combout\ = \inst|inst6|clock_1Khz_int~q\ $ (((!\inst|inst6|count_1Khz\(0) & (\inst|inst6|count_1Khz\(2) & !\inst|inst6|count_1Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_1Khz\(0),
	datab => \inst|inst6|clock_1Khz_int~q\,
	datac => \inst|inst6|count_1Khz\(2),
	datad => \inst|inst6|count_1Khz\(1),
	combout => \inst|inst6|clock_1Khz_int~0_combout\);

-- Location: FF_X114_Y37_N25
\inst|inst6|clock_10Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_100Khz_int~clkctrl_outclk\,
	d => \inst|inst6|clock_10Khz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|clock_10Khz_int~q\);

-- Location: LCCOMB_X55_Y72_N30
\inst|inst6|count_1Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1Khz~0_combout\ = (!\inst|inst6|count_1Khz\(0) & ((\inst|inst6|count_1Khz\(1)) # (!\inst|inst6|count_1Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|count_1Khz\(1),
	datac => \inst|inst6|count_1Khz\(0),
	datad => \inst|inst6|count_1Khz\(2),
	combout => \inst|inst6|count_1Khz~0_combout\);

-- Location: LCCOMB_X55_Y72_N24
\inst|inst6|count_1Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1Khz[1]~1_combout\ = \inst|inst6|count_1Khz\(1) $ (\inst|inst6|count_1Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|count_1Khz\(1),
	datad => \inst|inst6|count_1Khz\(0),
	combout => \inst|inst6|count_1Khz[1]~1_combout\);

-- Location: LCCOMB_X55_Y72_N22
\inst|inst6|count_1Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_1Khz~2_combout\ = (\inst|inst6|count_1Khz\(0) & (\inst|inst6|count_1Khz\(2) $ (\inst|inst6|count_1Khz\(1)))) # (!\inst|inst6|count_1Khz\(0) & (\inst|inst6|count_1Khz\(2) & \inst|inst6|count_1Khz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_1Khz\(0),
	datac => \inst|inst6|count_1Khz\(2),
	datad => \inst|inst6|count_1Khz\(1),
	combout => \inst|inst6|count_1Khz~2_combout\);

-- Location: FF_X114_Y37_N31
\inst|inst6|count_10Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_100Khz_int~clkctrl_outclk\,
	d => \inst|inst6|count_10Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_10Khz\(0));

-- Location: FF_X114_Y37_N13
\inst|inst6|count_10Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_100Khz_int~clkctrl_outclk\,
	d => \inst|inst6|count_10Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_10Khz\(1));

-- Location: FF_X114_Y37_N23
\inst|inst6|count_10Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_100Khz_int~clkctrl_outclk\,
	d => \inst|inst6|count_10Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_10Khz\(2));

-- Location: LCCOMB_X114_Y37_N28
\inst|inst6|clock_10Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_10Khz_int~0_combout\ = \inst|inst6|clock_10Khz_int~q\ $ (((!\inst|inst6|count_10Khz\(0) & (\inst|inst6|count_10Khz\(2) & !\inst|inst6|count_10Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_10Khz\(0),
	datab => \inst|inst6|clock_10Khz_int~q\,
	datac => \inst|inst6|count_10Khz\(2),
	datad => \inst|inst6|count_10Khz\(1),
	combout => \inst|inst6|clock_10Khz_int~0_combout\);

-- Location: FF_X1_Y35_N29
\inst|inst6|clock_100Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst|inst6|clock_100Khz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|clock_100Khz_int~q\);

-- Location: LCCOMB_X114_Y37_N30
\inst|inst6|count_10Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_10Khz~0_combout\ = (!\inst|inst6|count_10Khz\(0) & ((\inst|inst6|count_10Khz\(1)) # (!\inst|inst6|count_10Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_10Khz\(1),
	datac => \inst|inst6|count_10Khz\(0),
	datad => \inst|inst6|count_10Khz\(2),
	combout => \inst|inst6|count_10Khz~0_combout\);

-- Location: LCCOMB_X114_Y37_N12
\inst|inst6|count_10Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_10Khz[1]~1_combout\ = \inst|inst6|count_10Khz\(1) $ (\inst|inst6|count_10Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|count_10Khz\(1),
	datad => \inst|inst6|count_10Khz\(0),
	combout => \inst|inst6|count_10Khz[1]~1_combout\);

-- Location: LCCOMB_X114_Y37_N22
\inst|inst6|count_10Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_10Khz~2_combout\ = (\inst|inst6|count_10Khz\(0) & (\inst|inst6|count_10Khz\(2) $ (\inst|inst6|count_10Khz\(1)))) # (!\inst|inst6|count_10Khz\(0) & (\inst|inst6|count_10Khz\(2) & \inst|inst6|count_10Khz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_10Khz\(0),
	datac => \inst|inst6|count_10Khz\(2),
	datad => \inst|inst6|count_10Khz\(1),
	combout => \inst|inst6|count_10Khz~2_combout\);

-- Location: FF_X1_Y35_N31
\inst|inst6|count_100Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst|inst6|count_100Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_100Khz\(0));

-- Location: FF_X1_Y35_N3
\inst|inst6|count_100Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst|inst6|count_100Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_100Khz\(1));

-- Location: FF_X1_Y35_N5
\inst|inst6|count_100Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Mhz_int~clkctrl_outclk\,
	d => \inst|inst6|count_100Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|count_100Khz\(2));

-- Location: LCCOMB_X1_Y35_N6
\inst|inst6|clock_100Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_100Khz_int~0_combout\ = \inst|inst6|clock_100Khz_int~q\ $ (((!\inst|inst6|count_100Khz\(0) & (\inst|inst6|count_100Khz\(2) & !\inst|inst6|count_100Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|clock_100Khz_int~q\,
	datab => \inst|inst6|count_100Khz\(0),
	datac => \inst|inst6|count_100Khz\(2),
	datad => \inst|inst6|count_100Khz\(1),
	combout => \inst|inst6|clock_100Khz_int~0_combout\);

-- Location: FF_X57_Y1_N9
\inst|inst6|clock_1Mhz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \inst|inst6|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6|clock_1Mhz_int~q\);

-- Location: LCCOMB_X1_Y35_N30
\inst|inst6|count_100Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_100Khz~0_combout\ = (!\inst|inst6|count_100Khz\(0) & ((\inst|inst6|count_100Khz\(1)) # (!\inst|inst6|count_100Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|count_100Khz\(1),
	datac => \inst|inst6|count_100Khz\(0),
	datad => \inst|inst6|count_100Khz\(2),
	combout => \inst|inst6|count_100Khz~0_combout\);

-- Location: LCCOMB_X1_Y35_N2
\inst|inst6|count_100Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_100Khz[1]~1_combout\ = \inst|inst6|count_100Khz\(1) $ (\inst|inst6|count_100Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst6|count_100Khz\(1),
	datad => \inst|inst6|count_100Khz\(0),
	combout => \inst|inst6|count_100Khz[1]~1_combout\);

-- Location: LCCOMB_X1_Y35_N4
\inst|inst6|count_100Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|count_100Khz~2_combout\ = (\inst|inst6|count_100Khz\(0) & (\inst|inst6|count_100Khz\(2) $ (\inst|inst6|count_100Khz\(1)))) # (!\inst|inst6|count_100Khz\(0) & (\inst|inst6|count_100Khz\(2) & \inst|inst6|count_100Khz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_100Khz\(0),
	datac => \inst|inst6|count_100Khz\(2),
	datad => \inst|inst6|count_100Khz\(1),
	combout => \inst|inst6|count_100Khz~2_combout\);

-- Location: LCCOMB_X57_Y1_N8
\inst|inst6|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|LessThan1~0_combout\ = (\inst|inst6|count_1Mhz\(4)) # ((\inst|inst6|count_1Mhz\(3) & \inst|inst6|count_1Mhz\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|count_1Mhz\(3),
	datac => \inst|inst6|count_1Mhz\(2),
	datad => \inst|inst6|count_1Mhz\(4),
	combout => \inst|inst6|LessThan1~0_combout\);

-- Location: LCCOMB_X57_Y1_N6
\inst|inst6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|LessThan0~0_combout\ = (\inst|inst6|count_1Mhz\(3) & \inst|inst6|count_1Mhz\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst6|count_1Mhz\(3),
	datad => \inst|inst6|count_1Mhz\(4),
	combout => \inst|inst6|LessThan0~0_combout\);

-- Location: IOIBUF_X20_Y73_N8
\MSC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(2),
	o => \MSC[2]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\MSC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(0),
	o => \MSC[0]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\MSC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(3),
	o => \MSC[3]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\SSC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSC(2),
	o => \SSC[2]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\SSC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSC(0),
	o => \SSC[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G3
\inst|inst6|clock_100hz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst6|clock_100hz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst6|clock_100hz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G0
\inst|inst6|clock_1Hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst6|clock_1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst6|clock_1Hz~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\inst|inst6|clock_10Hz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst6|clock_10Hz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst6|clock_10Hz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G4
\inst|inst6|clock_100Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst6|clock_100Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst6|clock_100Khz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\GClock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GClock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GClock~inputclkctrl_outclk\);

-- Location: CLKCTRL_G14
\inst|inst6|clock_1Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst6|clock_1Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst6|clock_1Khz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G8
\inst|inst6|clock_10Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst6|clock_10Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst6|clock_10Khz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G18
\inst|inst6|clock_1Mhz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst6|clock_1Mhz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst6|clock_1Mhz_int~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y36_N28
\inst|inst6|clock_1Hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_1Hz~feeder_combout\ = \inst|inst6|clock_1Hz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6|clock_1Hz_int~q\,
	combout => \inst|inst6|clock_1Hz~feeder_combout\);

-- Location: LCCOMB_X56_Y72_N24
\inst|inst6|clock_10Hz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_10Hz_int~feeder_combout\ = \inst|inst6|clock_10Hz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst6|clock_10Hz_int~0_combout\,
	combout => \inst|inst6|clock_10Hz_int~feeder_combout\);

-- Location: LCCOMB_X1_Y36_N30
\inst|inst6|clock_100hz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_100hz_int~feeder_combout\ = \inst|inst6|clock_100hz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst6|clock_100hz_int~0_combout\,
	combout => \inst|inst6|clock_100hz_int~feeder_combout\);

-- Location: LCCOMB_X55_Y72_N4
\inst|inst6|clock_1Khz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_1Khz_int~feeder_combout\ = \inst|inst6|clock_1Khz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst6|clock_1Khz_int~0_combout\,
	combout => \inst|inst6|clock_1Khz_int~feeder_combout\);

-- Location: LCCOMB_X114_Y37_N24
\inst|inst6|clock_10Khz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_10Khz_int~feeder_combout\ = \inst|inst6|clock_10Khz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst6|clock_10Khz_int~0_combout\,
	combout => \inst|inst6|clock_10Khz_int~feeder_combout\);

-- Location: LCCOMB_X1_Y35_N28
\inst|inst6|clock_100Khz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|clock_100Khz_int~feeder_combout\ = \inst|inst6|clock_100Khz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst6|clock_100Khz_int~0_combout\,
	combout => \inst|inst6|clock_100Khz_int~feeder_combout\);

-- Location: IOOBUF_X20_Y73_N16
\MSTL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|ALT_INV_non_active~0_combout\,
	devoe => ww_devoe,
	o => \MSTL[2]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\MSTL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|S1_Q|int_q~q\,
	devoe => ww_devoe,
	o => \MSTL[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\MSTL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|S0_Q|int_q~q\,
	devoe => ww_devoe,
	o => \MSTL[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\SSTL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|o_SSTL\(2),
	devoe => ww_devoe,
	o => \SSTL[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\SSTL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|S3_Q|int_q~q\,
	devoe => ww_devoe,
	o => \SSTL[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\SSTL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|S2_Q|int_q~q\,
	devoe => ww_devoe,
	o => \SSTL[0]~output_o\);

-- Location: IOIBUF_X58_Y0_N15
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: CLKCTRL_G19
\GReset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GReset~inputclkctrl_outclk\);

-- Location: FF_X25_Y72_N13
\inst|inst19|EdgeFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|Timer|Equal0~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst19|EdgeFF|int_q~q\);

-- Location: IOIBUF_X27_Y73_N15
\SSCS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSCS,
	o => \SSCS~input_o\);

-- Location: LCCOMB_X26_Y72_N12
\inst|inst3|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|int_d2Input~combout\ = (\SSCS~input_o\ & (!\inst|inst3|second|int_q~q\ & !\inst|inst3|first|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSCS~input_o\,
	datac => \inst|inst3|second|int_q~q\,
	datad => \inst|inst3|first|int_q~q\,
	combout => \inst|inst3|int_d2Input~combout\);

-- Location: FF_X25_Y72_N27
\inst|inst3|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \inst|inst3|int_d2Input~combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|second|int_q~q\);

-- Location: LCCOMB_X26_Y72_N30
\inst|inst3|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|int_d1Input~0_combout\ = (\SSCS~input_o\ & ((\inst|inst3|second|int_q~q\) # (\inst|inst3|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSCS~input_o\,
	datac => \inst|inst3|second|int_q~q\,
	datad => \inst|inst3|first|int_q~q\,
	combout => \inst|inst3|int_d1Input~0_combout\);

-- Location: FF_X25_Y72_N9
\inst|inst3|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \inst|inst3|int_d1Input~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|first|int_q~q\);

-- Location: LCCOMB_X25_Y72_N8
\inst|inst|o_set_timer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|o_set_timer~1_combout\ = (!\inst|inst3|second|int_q~q\ & (\inst|inst|S0_Q|int_q~q\ & \inst|inst3|first|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|second|int_q~q\,
	datab => \inst|inst|S0_Q|int_q~q\,
	datac => \inst|inst3|first|int_q~q\,
	combout => \inst|inst|o_set_timer~1_combout\);

-- Location: IOIBUF_X29_Y73_N8
\SSC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSC(1),
	o => \SSC[1]~input_o\);

-- Location: FF_X24_Y72_N15
\inst|SSC_max|tsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \SSC[1]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SSC_max|tsb|int_q~q\);

-- Location: LCCOMB_X25_Y72_N26
\inst|inst|S0_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|S0_next~1_combout\ = (\inst|inst|S0_Q|int_q~q\ & ((\inst|inst21|EdgeFF|int_q~q\) # ((\inst|inst3|second|int_q~q\) # (!\inst|inst3|first|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|EdgeFF|int_q~q\,
	datab => \inst|inst|S0_Q|int_q~q\,
	datac => \inst|inst3|second|int_q~q\,
	datad => \inst|inst3|first|int_q~q\,
	combout => \inst|inst|S0_next~1_combout\);

-- Location: LCCOMB_X25_Y72_N10
\inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~5_combout\ = ((\inst|inst19|EdgeFF|int_q~q\) # ((\inst|inst|S2_Q|int_q~q\) # (!\inst|Timer|Equal0~0_combout\))) # (!\inst|inst|S1_Q|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S1_Q|int_q~q\,
	datab => \inst|inst19|EdgeFF|int_q~q\,
	datac => \inst|inst|S2_Q|int_q~q\,
	datad => \inst|Timer|Equal0~0_combout\,
	combout => \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~5_combout\);

-- Location: LCCOMB_X24_Y72_N18
\inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\ = (\inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~5_combout\ & ((\inst|inst|S0_Q|int_q~q\) # ((!\inst|inst|S0_next~1_combout\ & !\inst|inst|S0_next~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S0_Q|int_q~q\,
	datab => \inst|inst|S0_next~1_combout\,
	datac => \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~5_combout\,
	datad => \inst|inst|S0_next~2_combout\,
	combout => \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\);

-- Location: LCCOMB_X24_Y72_N28
\inst|MS_Counter|bit1MUX|Mux2_1_3|o_val\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MS_Counter|bit1MUX|Mux2_1_3|o_val~combout\ = (\inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\ & (\inst|SS_Counter|bit1FF|int_q~q\ $ (((\inst|SS_Counter|bit0FF|int_q~q\ & \inst|inst|o_enable_counter~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SS_Counter|bit0FF|int_q~q\,
	datab => \inst|inst|o_enable_counter~combout\,
	datac => \inst|SS_Counter|bit1FF|int_q~q\,
	datad => \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\,
	combout => \inst|MS_Counter|bit1MUX|Mux2_1_3|o_val~combout\);

-- Location: FF_X24_Y72_N29
\inst|SS_Counter|bit1FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|MS_Counter|bit1MUX|Mux2_1_3|o_val~combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SS_Counter|bit1FF|int_q~q\);

-- Location: LCCOMB_X24_Y72_N14
\inst|inst21|o_pulse~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst21|o_pulse~3_combout\ = (\inst|SSC_max|ssb|int_q~q\ & ((\inst|SSC_max|tsb|int_q~q\ $ (\inst|SS_Counter|bit1FF|int_q~q\)) # (!\inst|SS_Counter|bit2FF|int_q~q\))) # (!\inst|SSC_max|ssb|int_q~q\ & ((\inst|SS_Counter|bit2FF|int_q~q\) # 
-- (\inst|SSC_max|tsb|int_q~q\ $ (\inst|SS_Counter|bit1FF|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SSC_max|ssb|int_q~q\,
	datab => \inst|SS_Counter|bit2FF|int_q~q\,
	datac => \inst|SSC_max|tsb|int_q~q\,
	datad => \inst|SS_Counter|bit1FF|int_q~q\,
	combout => \inst|inst21|o_pulse~3_combout\);

-- Location: LCCOMB_X24_Y72_N12
\inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~1_combout\ = (\inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\ & ((\inst|inst|o_enable_counter~combout\ & (\inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~0_combout\)) # (!\inst|inst|o_enable_counter~combout\ & 
-- ((\inst|SS_Counter|bit3FF|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~0_combout\,
	datab => \inst|inst|o_enable_counter~combout\,
	datac => \inst|SS_Counter|bit3FF|int_q~q\,
	datad => \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\,
	combout => \inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~1_combout\);

-- Location: FF_X24_Y72_N13
\inst|SS_Counter|bit3FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|SS_Counter|bit3MUX|Mux2_1_3|o_val~1_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SS_Counter|bit3FF|int_q~q\);

-- Location: IOIBUF_X23_Y73_N8
\SSC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSC(3),
	o => \SSC[3]~input_o\);

-- Location: FF_X24_Y72_N21
\inst|SSC_max|msb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \SSC[3]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SSC_max|msb|int_q~q\);

-- Location: LCCOMB_X24_Y72_N24
\inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~6_combout\ = (\inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\ & (\inst|SS_Counter|bit0FF|int_q~q\ $ (((\inst|inst|S2_Q|int_q~q\) # (\inst|inst|S0_Q|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S2_Q|int_q~q\,
	datab => \inst|inst|S0_Q|int_q~q\,
	datac => \inst|SS_Counter|bit0FF|int_q~q\,
	datad => \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\,
	combout => \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~6_combout\);

-- Location: FF_X24_Y72_N25
\inst|SS_Counter|bit0FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~6_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SS_Counter|bit0FF|int_q~q\);

-- Location: LCCOMB_X24_Y72_N20
\inst|inst21|o_pulse~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst21|o_pulse~4_combout\ = (\inst|SSC_max|lsb|int_q~q\ & ((\inst|SS_Counter|bit3FF|int_q~q\ $ (\inst|SSC_max|msb|int_q~q\)) # (!\inst|SS_Counter|bit0FF|int_q~q\))) # (!\inst|SSC_max|lsb|int_q~q\ & ((\inst|SS_Counter|bit0FF|int_q~q\) # 
-- (\inst|SS_Counter|bit3FF|int_q~q\ $ (\inst|SSC_max|msb|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SSC_max|lsb|int_q~q\,
	datab => \inst|SS_Counter|bit3FF|int_q~q\,
	datac => \inst|SSC_max|msb|int_q~q\,
	datad => \inst|SS_Counter|bit0FF|int_q~q\,
	combout => \inst|inst21|o_pulse~4_combout\);

-- Location: LCCOMB_X24_Y72_N26
\inst|inst21|o_pulse~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst21|o_pulse~5_combout\ = (!\inst|inst21|o_pulse~2_combout\ & (((!\inst|inst21|o_pulse~3_combout\ & !\inst|inst21|o_pulse~4_combout\)) # (!\inst|inst|S2_Q|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S2_Q|int_q~q\,
	datab => \inst|inst21|o_pulse~3_combout\,
	datac => \inst|inst21|o_pulse~2_combout\,
	datad => \inst|inst21|o_pulse~4_combout\,
	combout => \inst|inst21|o_pulse~5_combout\);

-- Location: FF_X24_Y72_N27
\inst|inst21|EdgeFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|inst21|o_pulse~5_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst21|EdgeFF|int_q~q\);

-- Location: LCCOMB_X25_Y72_N0
\inst|inst|o_set_timer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|o_set_timer~2_combout\ = (!\inst|inst21|o_pulse~6_combout\ & (\inst|inst|o_set_timer~1_combout\ & (!\inst|inst21|EdgeFF|int_q~q\ & !\inst|inst21|o_pulse~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|o_pulse~6_combout\,
	datab => \inst|inst|o_set_timer~1_combout\,
	datac => \inst|inst21|EdgeFF|int_q~q\,
	datad => \inst|inst21|o_pulse~2_combout\,
	combout => \inst|inst|o_set_timer~2_combout\);

-- Location: LCCOMB_X25_Y72_N22
\inst|inst|S1_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|S1_next~2_combout\ = (\inst|inst|o_set_timer~2_combout\) # ((\inst|inst|S1_Q|int_q~q\ & ((\inst|inst19|EdgeFF|int_q~q\) # (!\inst|Timer|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Timer|Equal0~0_combout\,
	datab => \inst|inst19|EdgeFF|int_q~q\,
	datac => \inst|inst|S1_Q|int_q~q\,
	datad => \inst|inst|o_set_timer~2_combout\,
	combout => \inst|inst|S1_next~2_combout\);

-- Location: FF_X25_Y72_N23
\inst|inst|S1_Q|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|inst|S1_next~2_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|S1_Q|int_q~q\);

-- Location: LCCOMB_X25_Y72_N14
\inst|inst|o_SSTL[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|o_SSTL\(2) = (\inst|inst|S1_Q|int_q~q\) # (\inst|inst|S0_Q|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|S1_Q|int_q~q\,
	datad => \inst|inst|S0_Q|int_q~q\,
	combout => \inst|inst|o_SSTL\(2));

-- Location: LCCOMB_X25_Y72_N6
\inst|inst|S0_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|S0_next~0_combout\ = (!\inst|inst19|EdgeFF|int_q~q\ & \inst|Timer|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst19|EdgeFF|int_q~q\,
	datad => \inst|Timer|Equal0~0_combout\,
	combout => \inst|inst|S0_next~0_combout\);

-- Location: LCCOMB_X25_Y72_N18
\inst|inst|S0_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|S0_next~2_combout\ = (\inst|inst|S3_Q|int_q~q\ & (((\inst|inst|S0_next~0_combout\)))) # (!\inst|inst|S3_Q|int_q~q\ & (!\inst|inst|S2_Q|int_q~q\ & (!\inst|inst|o_SSTL\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S2_Q|int_q~q\,
	datab => \inst|inst|S3_Q|int_q~q\,
	datac => \inst|inst|o_SSTL\(2),
	datad => \inst|inst|S0_next~0_combout\,
	combout => \inst|inst|S0_next~2_combout\);

-- Location: LCCOMB_X25_Y72_N28
\inst|inst|S0_next\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|S0_next~combout\ = (\inst|inst|S0_next~1_combout\) # ((\inst|inst|S0_next~2_combout\) # ((\inst|inst|S0_Q|int_q~q\ & !\inst|inst21|o_pulse~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S0_next~1_combout\,
	datab => \inst|inst|S0_next~2_combout\,
	datac => \inst|inst|S0_Q|int_q~q\,
	datad => \inst|inst21|o_pulse~5_combout\,
	combout => \inst|inst|S0_next~combout\);

-- Location: FF_X25_Y72_N29
\inst|inst|S0_Q|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|inst|S0_next~combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|S0_Q|int_q~q\);

-- Location: LCCOMB_X24_Y72_N30
\inst|inst|o_enable_counter\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|o_enable_counter~combout\ = (\inst|inst|S2_Q|int_q~q\) # (\inst|inst|S0_Q|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S2_Q|int_q~q\,
	datad => \inst|inst|S0_Q|int_q~q\,
	combout => \inst|inst|o_enable_counter~combout\);

-- Location: LCCOMB_X24_Y72_N0
\inst|MS_Counter|bit2MUX|Mux2_1_3|o_val\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MS_Counter|bit2MUX|Mux2_1_3|o_val~combout\ = (\inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\ & ((\inst|inst|o_enable_counter~combout\ & (\inst|MS_Counter|inc_Value\(2))) # (!\inst|inst|o_enable_counter~combout\ & 
-- ((\inst|SS_Counter|bit2FF|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MS_Counter|inc_Value\(2),
	datab => \inst|inst|o_enable_counter~combout\,
	datac => \inst|SS_Counter|bit2FF|int_q~q\,
	datad => \inst|MS_Counter|bit0MUX|Mux2_1_3|o_val~4_combout\,
	combout => \inst|MS_Counter|bit2MUX|Mux2_1_3|o_val~combout\);

-- Location: FF_X24_Y72_N1
\inst|SS_Counter|bit2FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|MS_Counter|bit2MUX|Mux2_1_3|o_val~combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SS_Counter|bit2FF|int_q~q\);

-- Location: IOIBUF_X25_Y73_N15
\MSC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(1),
	o => \MSC[1]~input_o\);

-- Location: FF_X24_Y72_N3
\inst|MSC_max|tsb|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	asdata => \MSC[1]~input_o\,
	clrn => \GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MSC_max|tsb|int_q~q\);

-- Location: LCCOMB_X24_Y72_N2
\inst|inst21|o_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst21|o_pulse~0_combout\ = (\inst|MSC_max|ssb|int_q~q\ & ((\inst|MSC_max|tsb|int_q~q\ $ (\inst|SS_Counter|bit1FF|int_q~q\)) # (!\inst|SS_Counter|bit2FF|int_q~q\))) # (!\inst|MSC_max|ssb|int_q~q\ & ((\inst|SS_Counter|bit2FF|int_q~q\) # 
-- (\inst|MSC_max|tsb|int_q~q\ $ (\inst|SS_Counter|bit1FF|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MSC_max|ssb|int_q~q\,
	datab => \inst|SS_Counter|bit2FF|int_q~q\,
	datac => \inst|MSC_max|tsb|int_q~q\,
	datad => \inst|SS_Counter|bit1FF|int_q~q\,
	combout => \inst|inst21|o_pulse~0_combout\);

-- Location: LCCOMB_X24_Y72_N8
\inst|inst21|o_pulse~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst21|o_pulse~2_combout\ = (!\inst|inst|S2_Q|int_q~q\ & ((\inst|inst21|o_pulse~1_combout\) # (\inst|inst21|o_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|o_pulse~1_combout\,
	datab => \inst|inst|S2_Q|int_q~q\,
	datad => \inst|inst21|o_pulse~0_combout\,
	combout => \inst|inst21|o_pulse~2_combout\);

-- Location: LCCOMB_X24_Y72_N10
\inst|inst21|o_pulse~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst21|o_pulse~6_combout\ = (\inst|inst|S2_Q|int_q~q\ & ((\inst|inst21|o_pulse~3_combout\) # (\inst|inst21|o_pulse~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S2_Q|int_q~q\,
	datab => \inst|inst21|o_pulse~3_combout\,
	datad => \inst|inst21|o_pulse~4_combout\,
	combout => \inst|inst21|o_pulse~6_combout\);

-- Location: LCCOMB_X24_Y72_N16
\inst|inst|o_set_timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|o_set_timer~0_combout\ = (!\inst|inst21|EdgeFF|int_q~q\ & (\inst|inst|S2_Q|int_q~q\ & (!\inst|inst21|o_pulse~2_combout\ & !\inst|inst21|o_pulse~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|EdgeFF|int_q~q\,
	datab => \inst|inst|S2_Q|int_q~q\,
	datac => \inst|inst21|o_pulse~2_combout\,
	datad => \inst|inst21|o_pulse~6_combout\,
	combout => \inst|inst|o_set_timer~0_combout\);

-- Location: LCCOMB_X25_Y72_N16
\inst|inst|S3_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|S3_next~2_combout\ = (\inst|inst|o_set_timer~0_combout\) # ((\inst|inst|S3_Q|int_q~q\ & ((\inst|inst19|EdgeFF|int_q~q\) # (!\inst|Timer|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Timer|Equal0~0_combout\,
	datab => \inst|inst19|EdgeFF|int_q~q\,
	datac => \inst|inst|S3_Q|int_q~q\,
	datad => \inst|inst|o_set_timer~0_combout\,
	combout => \inst|inst|S3_next~2_combout\);

-- Location: FF_X25_Y72_N17
\inst|inst|S3_Q|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|inst|S3_next~2_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|S3_Q|int_q~q\);

-- Location: LCCOMB_X25_Y72_N20
\inst|Timer|bit0MUX|Mux2_1_3|o_val~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\ = (\inst|inst|S1_Q|int_q~q\ & ((\inst|inst|S3_Q|int_q~q\) # ((!\inst|inst|o_set_timer~0_combout\)))) # (!\inst|inst|S1_Q|int_q~q\ & (!\inst|inst|o_set_timer~2_combout\ & ((\inst|inst|S3_Q|int_q~q\) # 
-- (!\inst|inst|o_set_timer~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S1_Q|int_q~q\,
	datab => \inst|inst|S3_Q|int_q~q\,
	datac => \inst|inst|o_set_timer~0_combout\,
	datad => \inst|inst|o_set_timer~2_combout\,
	combout => \inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\);

-- Location: LCCOMB_X25_Y72_N30
\inst|Timer|bit0MUX|Mux2_1_3|o_val~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Timer|bit0MUX|Mux2_1_3|o_val~3_combout\ = (\inst|Timer|bit0FF|int_q~q\ $ (((\inst|inst|S1_Q|int_q~q\) # (\inst|inst|S3_Q|int_q~q\)))) # (!\inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|S1_Q|int_q~q\,
	datab => \inst|inst|S3_Q|int_q~q\,
	datac => \inst|Timer|bit0FF|int_q~q\,
	datad => \inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\,
	combout => \inst|Timer|bit0MUX|Mux2_1_3|o_val~3_combout\);

-- Location: FF_X25_Y72_N31
\inst|Timer|bit0FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|Timer|bit0MUX|Mux2_1_3|o_val~3_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Timer|bit0FF|int_q~q\);

-- Location: LCCOMB_X25_Y72_N24
\inst|Timer|bit1MUX|Mux2_1_3|o_val~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Timer|bit1MUX|Mux2_1_3|o_val~0_combout\ = (\inst|Timer|bit1FF|int_q~q\ $ (((\inst|inst|o_enable_timer~combout\ & !\inst|Timer|bit0FF|int_q~q\)))) # (!\inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|o_enable_timer~combout\,
	datab => \inst|Timer|bit0FF|int_q~q\,
	datac => \inst|Timer|bit1FF|int_q~q\,
	datad => \inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\,
	combout => \inst|Timer|bit1MUX|Mux2_1_3|o_val~0_combout\);

-- Location: FF_X25_Y72_N25
\inst|Timer|bit1FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|Timer|bit1MUX|Mux2_1_3|o_val~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Timer|bit1FF|int_q~q\);

-- Location: LCCOMB_X26_Y72_N0
\inst|Timer|bit2MUX|Mux2_1_3|o_val~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Timer|bit2MUX|Mux2_1_3|o_val~0_combout\ = (!\inst|Timer|bit0FF|int_q~q\ & !\inst|Timer|bit1FF|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Timer|bit0FF|int_q~q\,
	datad => \inst|Timer|bit1FF|int_q~q\,
	combout => \inst|Timer|bit2MUX|Mux2_1_3|o_val~0_combout\);

-- Location: LCCOMB_X25_Y72_N2
\inst|Timer|bit2MUX|Mux2_1_3|o_val~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Timer|bit2MUX|Mux2_1_3|o_val~1_combout\ = (\inst|Timer|bit2FF|int_q~q\ $ (((\inst|inst|o_enable_timer~combout\ & \inst|Timer|bit2MUX|Mux2_1_3|o_val~0_combout\)))) # (!\inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|o_enable_timer~combout\,
	datab => \inst|Timer|bit2MUX|Mux2_1_3|o_val~0_combout\,
	datac => \inst|Timer|bit2FF|int_q~q\,
	datad => \inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\,
	combout => \inst|Timer|bit2MUX|Mux2_1_3|o_val~1_combout\);

-- Location: FF_X25_Y72_N3
\inst|Timer|bit2FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|Timer|bit2MUX|Mux2_1_3|o_val~1_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Timer|bit2FF|int_q~q\);

-- Location: LCCOMB_X26_Y72_N24
\inst|Timer|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Timer|Equal0~1_combout\ = (!\inst|Timer|bit0FF|int_q~q\ & (!\inst|Timer|bit2FF|int_q~q\ & !\inst|Timer|bit1FF|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Timer|bit0FF|int_q~q\,
	datac => \inst|Timer|bit2FF|int_q~q\,
	datad => \inst|Timer|bit1FF|int_q~q\,
	combout => \inst|Timer|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y72_N4
\inst|Timer|bit3MUX|Mux2_1_3|o_val~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Timer|bit3MUX|Mux2_1_3|o_val~0_combout\ = (\inst|Timer|bit3FF|int_q~q\ $ (((\inst|inst|o_enable_timer~combout\ & \inst|Timer|Equal0~1_combout\)))) # (!\inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|o_enable_timer~combout\,
	datab => \inst|Timer|Equal0~1_combout\,
	datac => \inst|Timer|bit3FF|int_q~q\,
	datad => \inst|Timer|bit0MUX|Mux2_1_3|o_val~2_combout\,
	combout => \inst|Timer|bit3MUX|Mux2_1_3|o_val~0_combout\);

-- Location: FF_X25_Y72_N5
\inst|Timer|bit3FF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|Timer|bit3MUX|Mux2_1_3|o_val~0_combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Timer|bit3FF|int_q~q\);

-- Location: LCCOMB_X25_Y72_N12
\inst|Timer|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Timer|Equal0~0_combout\ = (!\inst|Timer|bit0FF|int_q~q\ & (!\inst|Timer|bit1FF|int_q~q\ & (!\inst|Timer|bit3FF|int_q~q\ & !\inst|Timer|bit2FF|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Timer|bit0FF|int_q~q\,
	datab => \inst|Timer|bit1FF|int_q~q\,
	datac => \inst|Timer|bit3FF|int_q~q\,
	datad => \inst|Timer|bit2FF|int_q~q\,
	combout => \inst|Timer|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y72_N6
\inst|inst|o_set_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|o_set_counter~0_combout\ = (!\inst|inst19|EdgeFF|int_q~q\ & (\inst|Timer|Equal0~0_combout\ & \inst|inst|S1_Q|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19|EdgeFF|int_q~q\,
	datab => \inst|Timer|Equal0~0_combout\,
	datad => \inst|inst|S1_Q|int_q~q\,
	combout => \inst|inst|o_set_counter~0_combout\);

-- Location: LCCOMB_X24_Y72_N4
\inst|inst|S2_next\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|S2_next~combout\ = (\inst|inst|o_set_counter~0_combout\) # ((\inst|inst|S2_Q|int_q~q\ & ((\inst|inst21|EdgeFF|int_q~q\) # (!\inst|inst21|o_pulse~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21|o_pulse~5_combout\,
	datab => \inst|inst|o_set_counter~0_combout\,
	datac => \inst|inst|S2_Q|int_q~q\,
	datad => \inst|inst21|EdgeFF|int_q~q\,
	combout => \inst|inst|S2_next~combout\);

-- Location: FF_X24_Y72_N5
\inst|inst|S2_Q|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst6|clock_1Hz~clkctrl_outclk\,
	d => \inst|inst|S2_next~combout\,
	clrn => \GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|S2_Q|int_q~q\);

-- Location: LCCOMB_X21_Y72_N0
\inst|inst|non_active~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|non_active~0_combout\ = (!\inst|inst|S2_Q|int_q~q\ & !\inst|inst|S3_Q|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|S2_Q|int_q~q\,
	datad => \inst|inst|S3_Q|int_q~q\,
	combout => \inst|inst|non_active~0_combout\);

ww_MSTL(2) <= \MSTL[2]~output_o\;

ww_MSTL(1) <= \MSTL[1]~output_o\;

ww_MSTL(0) <= \MSTL[0]~output_o\;

ww_SSTL(2) <= \SSTL[2]~output_o\;

ww_SSTL(1) <= \SSTL[1]~output_o\;

ww_SSTL(0) <= \SSTL[0]~output_o\;
END structure;


