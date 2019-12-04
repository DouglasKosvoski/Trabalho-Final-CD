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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "12/03/2019 14:35:37"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MAIN IS
    PORT (
	LEDG : OUT std_logic_vector(7 DOWNTO 5);
	SW : IN std_logic_vector(9 DOWNTO 1);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(2 DOWNTO 0)
	);
END MAIN;

-- Design Ports Information
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MAIN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 5);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 1);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|inst5~0_combout\ : std_logic;
SIGNAL \inst19|inst5~0_combout\ : std_logic;
SIGNAL \inst22|inst10~0_combout\ : std_logic;
SIGNAL \inst9~1_combout\ : std_logic;
SIGNAL \inst16|inst5~0_combout\ : std_logic;
SIGNAL \inst17|inst10~0_combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst20|inst5~0_combout\ : std_logic;
SIGNAL \inst21|inst10~0_combout\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst18|inst10~0_combout\ : std_logic;
SIGNAL \inst8~1_combout\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 1);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

LEDG <= ww_LEDG;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X49_Y10_N20
\inst15|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst5~0_combout\ = (\SW~combout\(6) & (\SW~combout\(9) $ (((\SW~combout\(7)) # (!\SW~combout\(8)))))) # (!\SW~combout\(6) & ((\SW~combout\(9) & (\SW~combout\(7))) # (!\SW~combout\(9) & ((!\SW~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(6),
	combout => \inst15|inst5~0_combout\);

-- Location: LCCOMB_X49_Y10_N10
\inst19|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|inst5~0_combout\ = (\SW~combout\(2) & (\SW~combout\(5) $ (((\SW~combout\(3)) # (!\SW~combout\(4)))))) # (!\SW~combout\(2) & ((\SW~combout\(5) & (\SW~combout\(3))) # (!\SW~combout\(5) & ((!\SW~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \SW~combout\(5),
	datad => \SW~combout\(2),
	combout => \inst19|inst5~0_combout\);

-- Location: LCCOMB_X49_Y10_N28
\inst22|inst10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|inst10~0_combout\ = (\SW~combout\(3) & ((\SW~combout\(4) & ((!\SW~combout\(2)))) # (!\SW~combout\(4) & ((\SW~combout\(5)) # (\SW~combout\(2)))))) # (!\SW~combout\(3) & (\SW~combout\(5) & ((\SW~combout\(4)) # (\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \SW~combout\(5),
	datad => \SW~combout\(2),
	combout => \inst22|inst10~0_combout\);

-- Location: LCCOMB_X49_Y10_N6
\inst9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9~1_combout\ = (\inst19|inst5~0_combout\ & (!\KEY~combout\(3) & (\inst22|inst10~0_combout\ $ (\KEY~combout\(0))))) # (!\inst19|inst5~0_combout\ & (\KEY~combout\(3) & (\inst22|inst10~0_combout\ $ (\KEY~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|inst5~0_combout\,
	datab => \inst22|inst10~0_combout\,
	datac => \KEY~combout\(0),
	datad => \KEY~combout\(3),
	combout => \inst9~1_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCCOMB_X49_Y10_N22
\inst16|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|inst5~0_combout\ = (\SW~combout\(7) & ((\SW~combout\(8) & ((!\SW~combout\(6)))) # (!\SW~combout\(8) & ((\SW~combout\(6)) # (!\SW~combout\(9)))))) # (!\SW~combout\(7) & (!\SW~combout\(9) & ((\SW~combout\(8)) # (\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(6),
	combout => \inst16|inst5~0_combout\);

-- Location: LCCOMB_X49_Y10_N24
\inst17|inst10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|inst10~0_combout\ = (\SW~combout\(9) & (!\SW~combout\(8) & ((!\SW~combout\(6)) # (!\SW~combout\(7))))) # (!\SW~combout\(9) & ((\SW~combout\(7)) # ((\SW~combout\(8) & \SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(6),
	combout => \inst17|inst10~0_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X49_Y10_N26
\inst8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\KEY~combout\(2) & (!\inst16|inst5~0_combout\ & (\inst17|inst10~0_combout\ $ (\KEY~combout\(1))))) # (!\KEY~combout\(2) & (\inst16|inst5~0_combout\ & (\inst17|inst10~0_combout\ $ (\KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \inst16|inst5~0_combout\,
	datac => \inst17|inst10~0_combout\,
	datad => \KEY~combout\(1),
	combout => \inst8~0_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X49_Y10_N0
\inst20|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst5~0_combout\ = (\SW~combout\(3) & ((\SW~combout\(4) & ((!\SW~combout\(2)))) # (!\SW~combout\(4) & ((\SW~combout\(2)) # (!\SW~combout\(5)))))) # (!\SW~combout\(3) & (!\SW~combout\(5) & ((\SW~combout\(4)) # (\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \SW~combout\(5),
	datad => \SW~combout\(2),
	combout => \inst20|inst5~0_combout\);

-- Location: LCCOMB_X49_Y10_N2
\inst21|inst10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|inst10~0_combout\ = (\SW~combout\(5) & (!\SW~combout\(4) & ((!\SW~combout\(2)) # (!\SW~combout\(3))))) # (!\SW~combout\(5) & ((\SW~combout\(3)) # ((\SW~combout\(4) & \SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \SW~combout\(5),
	datad => \SW~combout\(2),
	combout => \inst21|inst10~0_combout\);

-- Location: LCCOMB_X49_Y10_N4
\inst9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (\KEY~combout\(2) & (!\inst20|inst5~0_combout\ & (\inst21|inst10~0_combout\ $ (\KEY~combout\(1))))) # (!\KEY~combout\(2) & (\inst20|inst5~0_combout\ & (\inst21|inst10~0_combout\ $ (\KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \inst20|inst5~0_combout\,
	datac => \inst21|inst10~0_combout\,
	datad => \KEY~combout\(1),
	combout => \inst9~0_combout\);

-- Location: LCCOMB_X49_Y10_N30
\inst18|inst10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst10~0_combout\ = (\SW~combout\(7) & ((\SW~combout\(8) & ((!\SW~combout\(6)))) # (!\SW~combout\(8) & ((\SW~combout\(9)) # (\SW~combout\(6)))))) # (!\SW~combout\(7) & (\SW~combout\(9) & ((\SW~combout\(8)) # (\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \SW~combout\(6),
	combout => \inst18|inst10~0_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: LCCOMB_X49_Y10_N16
\inst8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8~1_combout\ = (\inst15|inst5~0_combout\ & (!\KEY~combout\(3) & (\inst18|inst10~0_combout\ $ (\KEY~combout\(0))))) # (!\inst15|inst5~0_combout\ & (\KEY~combout\(3) & (\inst18|inst10~0_combout\ $ (\KEY~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst5~0_combout\,
	datab => \inst18|inst10~0_combout\,
	datac => \KEY~combout\(0),
	datad => \KEY~combout\(3),
	combout => \inst8~1_combout\);

-- Location: LCCOMB_X49_Y10_N8
inst10 : cycloneii_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (\inst9~1_combout\ & ((\inst9~0_combout\) # ((\inst8~0_combout\ & \inst8~1_combout\)))) # (!\inst9~1_combout\ & (\inst8~0_combout\ & ((\inst8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~1_combout\,
	datab => \inst8~0_combout\,
	datac => \inst9~0_combout\,
	datad => \inst8~1_combout\,
	combout => \inst10~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X49_Y10_N18
inst11 : cycloneii_lcell_comb
-- Equation(s):
-- \inst11~combout\ = (\inst10~combout\ & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10~combout\,
	datac => \SW~combout\(1),
	combout => \inst11~combout\);

-- Location: LCCOMB_X49_Y10_N12
inst12 : cycloneii_lcell_comb
-- Equation(s):
-- \inst12~combout\ = (!\inst10~combout\ & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10~combout\,
	datac => \SW~combout\(1),
	combout => \inst12~combout\);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => \inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	datain => \inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	datain => \inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \inst12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));
END structure;


