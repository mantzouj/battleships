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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/19/2014 19:20:45"

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

ENTITY 	battleships IS
    PORT (
	data_in : IN std_logic;
	AUD_ADCDAT : IN std_logic;
	switch : IN std_logic;
	keyboard_clk : IN std_logic;
	keyboard_data : IN std_logic;
	clk : IN std_logic;
	CLOCK_27 : IN std_logic;
	AUD_BCLK : INOUT std_logic;
	AUD_ADCLRCK : INOUT std_logic;
	AUD_DACLRCK : INOUT std_logic;
	I2C_SDAT : INOUT std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	AUD_XCK : OUT std_logic;
	AUD_DACDAT : OUT std_logic;
	I2C_SCLK : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_E : OUT std_logic;
	LCD_ON : OUT std_logic;
	RESET_LED : OUT std_logic;
	SEC_LED : OUT std_logic;
	LCD_RW : BUFFER std_logic;
	DATA_BUS : INOUT std_logic_vector(7 DOWNTO 0);
	VGA_RED : OUT std_logic_vector(9 DOWNTO 0);
	VGA_GREEN : OUT std_logic_vector(9 DOWNTO 0);
	VGA_BLUE : OUT std_logic_vector(9 DOWNTO 0);
	HORIZ_SYNC : OUT std_logic;
	VERT_SYNC : OUT std_logic;
	VGA_BLANK : OUT std_logic;
	VGA_CLK : OUT std_logic;
	data_out : OUT std_logic;
	test0 : OUT std_logic;
	test1 : OUT std_logic;
	test2 : OUT std_logic;
	test3 : OUT std_logic;
	test4 : OUT std_logic;
	test11 : OUT std_logic;
	led_seq : OUT std_logic_vector(55 DOWNTO 0)
	);
END battleships;

-- Design Ports Information
-- AUD_BCLK	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCLRCK	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACLRCK	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SDAT	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_BUS[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCDAT	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- keyboard_clk	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- keyboard_data	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACDAT	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SCLK	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RS	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_E	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_ON	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESET_LED	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEC_LED	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RW	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HORIZ_SYNC	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VERT_SYNC	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLK	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- test0	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- test1	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- test2	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- test3	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- test4	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- test11	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[7]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[8]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[9]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[10]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[11]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[12]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[13]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[14]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[15]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[16]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[17]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[18]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[19]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[20]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[21]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[22]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[23]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[24]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[25]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[26]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[27]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[28]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[29]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[30]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[31]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[32]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[33]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[34]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[35]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[36]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[37]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[38]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[39]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[40]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[41]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[42]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[43]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[44]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[45]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[46]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[47]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[48]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[49]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[50]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[51]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[52]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[53]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[54]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_seq[55]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_in	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF battleships IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_switch : std_logic;
SIGNAL ww_keyboard_clk : std_logic;
SIGNAL ww_keyboard_data : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_CLOCK_27 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_RESET_LED : std_logic;
SIGNAL ww_SEC_LED : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_VGA_RED : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_GREEN : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_BLUE : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HORIZ_SYNC : std_logic;
SIGNAL ww_VERT_SYNC : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_data_out : std_logic;
SIGNAL ww_test0 : std_logic;
SIGNAL ww_test1 : std_logic;
SIGNAL ww_test2 : std_logic;
SIGNAL ww_test3 : std_logic;
SIGNAL ww_test4 : std_logic;
SIGNAL ww_test11 : std_logic;
SIGNAL ww_led_seq : std_logic_vector(55 DOWNTO 0);
SIGNAL \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga_0|videoGen|char_addr[5]~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_0|videoSync|pixel_clock_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~10_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~14_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~17\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~18_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~17\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~18_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~16_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~19_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~46_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan47~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~49_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~50_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~51_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~52_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~53_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~54_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~55_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~56_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~59_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~60_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan11~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~70_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~74_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan173~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~79_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~80_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~81_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~82_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~83_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~84_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~88_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~89_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan413~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~64_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~65_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~111_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~114_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~117_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~69_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~71_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~134_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~136_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~137_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~143_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~144_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~145_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~146_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~147_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~148_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~149_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~150_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~151_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~152_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~153_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~154_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~155_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~156_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~157_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~158_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~159_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~165_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~170_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~172_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~176_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~180_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~181_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~184_combout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~2_combout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~4_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux27~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[1]~17_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~80_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~186_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~200_combout\ : std_logic;
SIGNAL \vga_0|videoSync|pixel_clock_int~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|pixel_clock_int~regout\ : std_logic;
SIGNAL \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|h_count~2_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~1\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~3\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~4_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~5\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~6_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Equal0~2_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~7\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~9\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~10_combout\ : std_logic;
SIGNAL \vga_0|videoSync|h_count~3_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~11\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~13\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~14_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~15\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~16_combout\ : std_logic;
SIGNAL \vga_0|videoSync|h_count~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~12_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Equal0~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Equal0~1_combout\ : std_logic;
SIGNAL \vga_0|videoSync|h_count~1_combout\ : std_logic;
SIGNAL \vga_0|videoSync|LessThan5~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count~7_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~1\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~2_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~7\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~8_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count[4]~6_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count[5]~2_combout\ : std_logic;
SIGNAL \vga_0|videoSync|LessThan1~1_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~9\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~11\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~12_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count[6]~3_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~13\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~15\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~16_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count[8]~5_combout\ : std_logic;
SIGNAL \vga_0|videoSync|LessThan1~2_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count~8_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~3\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~4_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count[2]~9_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~5\ : std_logic;
SIGNAL \vga_0|videoSync|Add1~6_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count[3]~10_combout\ : std_logic;
SIGNAL \vga_0|videoSync|LessThan1~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~11_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count[9]~1_combout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~9_combout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~10_combout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~5_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Equal1~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count[9]~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|v_count[7]~4_combout\ : std_logic;
SIGNAL \vga_0|videoSync|LessThan6~0_combout\ : std_logic;
SIGNAL \vga_0|videoSync|LessThan6~1_combout\ : std_logic;
SIGNAL \vga_0|videoSync|LessThan6~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|placeShip_on~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|gameOverT_on~combout\ : std_logic;
SIGNAL \vga_0|videoGen|Equal2~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Equal3~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~50_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan13~3_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~6_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~7_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~8_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux33~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[0]~51_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[0]~12_combout\ : std_logic;
SIGNAL \vga_0|videoGen|placeShip_on~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|placeShip_on~combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux13~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux13~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[0]~13_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[0]~14_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan13~4_combout\ : std_logic;
SIGNAL \vga_0|videoGen|illegal_on~combout\ : std_logic;
SIGNAL \vga_0|videoGen|hit_on~combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[0]~9_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[0]~11_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[0]~15_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[0]~10_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[1]~8_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[1]~16_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[1]~18_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux26~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux12~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[1]~19_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[1]~20_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[1]~21_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[2]~24_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux31~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux25~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[2]~55_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[2]~56_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[2]~22_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[2]~23_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[2]~25_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[3]~26_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux24~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[3]~27_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux30~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux37~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[3]~28_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[3]~29_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[3]~30_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[4]~33_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux23~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux9~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[4]~31_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux36~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[4]~52_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[4]~32_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[4]~34_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~42_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux35~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~35_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~36_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~37_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~38_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~39_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~40_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~41_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[5]~43_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[6]~46_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[6]~44_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[6]~45_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[6]~47_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[6]~48_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[6]~53_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[6]~54_combout\ : std_logic;
SIGNAL \vga_0|videoGen|char_addr[6]~49_combout\ : std_logic;
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \vga_0|videoGen|Mux653~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux653~3_combout\ : std_logic;
SIGNAL \vga_0|videoSync|Add0~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \vga_0|videoGen|Mux653~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux653~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Mux653~4_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan35~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan4~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan4~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan3~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan3~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~78_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan93~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan6~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan773~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~75_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan373~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan5~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~76_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~77_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~74_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~173_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~174_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan48~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~29_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan12~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan15~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~30_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~31_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan15~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan11~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~46_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~199_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan53~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan13~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan13~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan13~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~81_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~82_combout\ : std_logic;
SIGNAL \vga_0|videoGen|Equal3~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan27~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan27~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~22_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan133~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan94~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan493~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~70_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~128_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan47~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~35_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~36_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~39_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan11~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan43~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~40_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~41_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~126_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~127_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~129_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~124_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan35~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan32~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan28~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan31~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~33_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan24~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~20_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan23~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan23~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan23~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~21_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan613~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan134~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~67_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~68_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~122_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~123_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~125_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~17_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~18_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~79_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~75_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~50_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~51_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan613~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan53~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan54~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~52_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~53_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~54_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~76_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~77_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~47_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan534~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~48_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~49_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~78_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan693~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan334~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan293~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan294~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~32_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~45_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~37_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~83_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~84_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~38_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~47_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~24_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~25_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~26_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan573~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~23_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan254~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~27_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan653~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~28_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~44_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~48_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan734~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan333~2_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~45_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan373~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~42_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~43_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~44_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~71_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan36~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan35~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~34_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~68_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~69_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~66_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~67_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~72_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~63_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~64_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~57_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~58_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~61_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~62_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~65_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~73_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan133~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan133~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~55_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~56_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~85_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~86_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~187_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~87_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~90_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~91_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~92_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~93_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~94_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~95_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~107_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~106_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan214~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan213~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~61_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~115_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~194_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan294~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan253~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~62_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~112_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~192_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~63_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~109_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~191_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~104_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~102_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~100_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan374~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan373~0_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan374~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~57_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~58_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~96_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~188_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~97_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan11~3_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~189_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~98_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~99_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~101_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~103_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~105_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~190_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~108_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~110_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~193_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~113_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~195_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~116_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~196_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~118_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~119_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~130_combout\ : std_logic;
SIGNAL \vga_0|videoGen|LessThan54~1_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~72_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~73_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~131_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~132_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~133_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~135_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~138_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~139_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~59_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~60_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~120_combout\ : std_logic;
SIGNAL \vga_0|videoGen|pixelDraw~66_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~121_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~198_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~141_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~142_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~164_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~166_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~167_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~168_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~197_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~140_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~201_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~160_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~161_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~162_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~163_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~169_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~171_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~175_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~177_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~178_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~179_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~182_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~183_combout\ : std_logic;
SIGNAL \vga_0|videoGen|colorAddress~185_combout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~3_combout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~6_combout\ : std_logic;
SIGNAL \vga_0|videoSync|horiz_sync~regout\ : std_logic;
SIGNAL \vga_0|videoSync|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \vga_0|videoSync|horiz_sync_out~regout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~7_combout\ : std_logic;
SIGNAL \vga_0|videoSync|process_1~8_combout\ : std_logic;
SIGNAL \vga_0|videoSync|vert_sync~regout\ : std_logic;
SIGNAL \vga_0|videoSync|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \vga_0|videoSync|vert_sync_out~regout\ : std_logic;
SIGNAL \vga_0|videoSync|video_on_h~regout\ : std_logic;
SIGNAL \vga_0|videoSync|video_on_v~regout\ : std_logic;
SIGNAL \vga_0|videoSync|video_on~combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \vga_0|videoGen|row_addr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_0|videoGen|char_addr\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \vga_0|videoGen|bit_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \vga_0|videoSync|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_0|videoSync|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_0|videoSync|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_0|videoSync|h_count\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_data_in <= data_in;
ww_AUD_ADCDAT <= AUD_ADCDAT;
ww_switch <= switch;
ww_keyboard_clk <= keyboard_clk;
ww_keyboard_data <= keyboard_data;
ww_clk <= clk;
ww_CLOCK_27 <= CLOCK_27;
ww_KEY <= KEY;
AUD_XCK <= ww_AUD_XCK;
AUD_DACDAT <= ww_AUD_DACDAT;
I2C_SCLK <= ww_I2C_SCLK;
LCD_RS <= ww_LCD_RS;
LCD_E <= ww_LCD_E;
LCD_ON <= ww_LCD_ON;
RESET_LED <= ww_RESET_LED;
SEC_LED <= ww_SEC_LED;
LCD_RW <= ww_LCD_RW;
VGA_RED <= ww_VGA_RED;
VGA_GREEN <= ww_VGA_GREEN;
VGA_BLUE <= ww_VGA_BLUE;
HORIZ_SYNC <= ww_HORIZ_SYNC;
VERT_SYNC <= ww_VERT_SYNC;
VGA_BLANK <= ww_VGA_BLANK;
VGA_CLK <= ww_VGA_CLK;
data_out <= ww_data_out;
test0 <= ww_test0;
test1 <= ww_test1;
test2 <= ww_test2;
test3 <= ww_test3;
test4 <= ww_test4;
test11 <= ww_test11;
led_seq <= ww_led_seq;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\vga_0|videoGen|colorAddress~185_combout\ & \vga_0|videoGen|colorAddress~178_combout\ & \vga_0|videoGen|colorAddress~175_combout\);

\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(0) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(1) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(2) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(3) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(4) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(5) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(6) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(7) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(8) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(9) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(10) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(11) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(12) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(13) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(14) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(15) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(16) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(17) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(18) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(19) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(20) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(21) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(22) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(23) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(24) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(25) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(26) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(27) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(28) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(29) <= \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);

\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\vga_0|videoGen|char_addr\(6) & \vga_0|videoGen|char_addr\(5) & \vga_0|videoGen|char_addr\(4) & \vga_0|videoGen|char_addr\(3) & \vga_0|videoGen|char_addr\(2) & 
\vga_0|videoGen|char_addr\(1) & \vga_0|videoGen|char_addr\(0) & \vga_0|videoGen|row_addr\(3) & \vga_0|videoGen|row_addr\(2) & \vga_0|videoGen|row_addr\(1) & \vga_0|videoGen|row_addr\(0));

\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a2\ <= \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\vga_0|videoGen|char_addr\(6) & \vga_0|videoGen|char_addr\(5) & \vga_0|videoGen|char_addr\(4) & \vga_0|videoGen|char_addr\(3) & \vga_0|videoGen|char_addr\(2) & 
\vga_0|videoGen|char_addr\(1) & \vga_0|videoGen|char_addr\(0) & \vga_0|videoGen|row_addr\(3) & \vga_0|videoGen|row_addr\(2) & \vga_0|videoGen|row_addr\(1) & \vga_0|videoGen|row_addr\(0));

\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a3\ <= \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\vga_0|videoGen|char_addr\(6) & \vga_0|videoGen|char_addr\(5) & \vga_0|videoGen|char_addr\(4) & \vga_0|videoGen|char_addr\(3) & \vga_0|videoGen|char_addr\(2) & 
\vga_0|videoGen|char_addr\(1) & \vga_0|videoGen|char_addr\(0) & \vga_0|videoGen|row_addr\(3) & \vga_0|videoGen|row_addr\(2) & \vga_0|videoGen|row_addr\(1) & \vga_0|videoGen|row_addr\(0));

\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a6\ <= \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\vga_0|videoGen|char_addr\(6) & \vga_0|videoGen|char_addr\(5) & \vga_0|videoGen|char_addr\(4) & \vga_0|videoGen|char_addr\(3) & \vga_0|videoGen|char_addr\(2) & 
\vga_0|videoGen|char_addr\(1) & \vga_0|videoGen|char_addr\(0) & \vga_0|videoGen|row_addr\(3) & \vga_0|videoGen|row_addr\(2) & \vga_0|videoGen|row_addr\(1) & \vga_0|videoGen|row_addr\(0));

\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a7\ <= \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\vga_0|videoGen|char_addr[5]~7clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \vga_0|videoGen|char_addr[5]~7_combout\);

\vga_0|videoSync|pixel_clock_int~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \vga_0|videoSync|pixel_clock_int~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: M4K_X26_Y24
\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0020280000000080002AAA8000AA8AA000AA8AA00080A80028800000004A8400003F540000A15400002AA80000800800008A0800000008002AAAA00000800800008008000000080000FFF00000AAAAA0000AA0002000080000AAA8A0000008002AAAA000000000A000808800002AAAA00080080000802800002AA800000000200C0000000000002800AAAAA0000A80000080002000D4287000AAA1500052A850000FD55000A155500080000000AAABF00080A0200000A0200AA0002000002020008000200000A80000557F50008000000002A80000AAAAA000AAAAA000002000008080200000A8200080A82000A000A0008000200080202000008280008AA020",
	mem_init0 => X"00A2A820000A28000002080000280A0000280A0000280A0000A02020008020200000A020008020200080202000AAAAA0008020200080282000AAAAA0008028200000A00000A000000000800000A80000000AA8000002E000002AAA8000A000A000000000002A8AA00000A0000A80202A00AAAA800000000000A2AAA000000000000AAA00002AA8000000C0000008000000008000000AA80000AAAAA000AAAAA000AAAAA000AA0000022A0A0800FFFFF000000000002AAAA0000AAA800000A80000AE6E80001557700000037000AA802000AAA2A0FFDFF7FF00200800FFF55FFF000AA00000AAFA8000A95A80000AA800002AAA0000BD7FE00097D56000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/battleships.ram0_fontROM_16852496.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "VGA_top_level:vga_0|pixelGenerator:videoGen|fontROM:font_unit|altsyncram:ROM_rtl_0|altsyncram_0771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y25
\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"003A8500000000D000554550005545500015554000E16C00306AA80000854800003FA8000052A800006AA80000555D500061240000C01C00106AA40030400C00006AA40000000C0000FFF8000055555000814020100000000055545000801020186AA40000C03010006AE400006A8410006AA40000400420006A4400000000150C000000000000850040001000015A800055555000E852B0005552A000A154A0000FEAA00052AAA0006AAAA0005557F00068129000801030007EAA9000C01030006AAA9000AABFA000AABFA000C0003000805020006A00100055555000AABAA0004AEA1000C0103000C0103000C00030004AAA1000C0103000AAE850006FFA90",
	mem_init0 => X"00515290001405000001040000051400005405000014050000401A90006A9A90005540B0006ABA1000603AB00040E1400060109000E8509000555550006AFA9000A14000005000000000400001540000000554000001D000005000500015554000000054006AD41000A14A0005681A95000C0C0000000000005155500000000000155F00003D55000000C000000EA0000004C4000004C40000555550005555500155555000FF00000184A12400555FD000000000001555500001750000ABFFA8005D9D4002A0011000B5555000554010006A9510FFEFFBFF00100400FFFAAFFF000550000055F5400056A5400015D5000057FC00007EBFD0006BEA9000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/battleships.ram0_fontROM_16852496.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "VGA_top_level:vga_0|pixelGenerator:videoGen|fontROM:font_unit|altsyncram:ROM_rtl_0|altsyncram_0771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y27_N16
\vga_0|videoSync|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~10_combout\ = (\vga_0|videoSync|v_count\(5) & (!\vga_0|videoSync|Add1~9\)) # (!\vga_0|videoSync|v_count\(5) & ((\vga_0|videoSync|Add1~9\) # (GND)))
-- \vga_0|videoSync|Add1~11\ = CARRY((!\vga_0|videoSync|Add1~9\) # (!\vga_0|videoSync|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|v_count\(5),
	datad => VCC,
	cin => \vga_0|videoSync|Add1~9\,
	combout => \vga_0|videoSync|Add1~10_combout\,
	cout => \vga_0|videoSync|Add1~11\);

-- Location: LCCOMB_X29_Y27_N20
\vga_0|videoSync|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~14_combout\ = (\vga_0|videoSync|v_count\(7) & (!\vga_0|videoSync|Add1~13\)) # (!\vga_0|videoSync|v_count\(7) & ((\vga_0|videoSync|Add1~13\) # (GND)))
-- \vga_0|videoSync|Add1~15\ = CARRY((!\vga_0|videoSync|Add1~13\) # (!\vga_0|videoSync|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|v_count\(7),
	datad => VCC,
	cin => \vga_0|videoSync|Add1~13\,
	combout => \vga_0|videoSync|Add1~14_combout\,
	cout => \vga_0|videoSync|Add1~15\);

-- Location: LCCOMB_X29_Y27_N22
\vga_0|videoSync|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~16_combout\ = (\vga_0|videoSync|v_count\(8) & (\vga_0|videoSync|Add1~15\ $ (GND))) # (!\vga_0|videoSync|v_count\(8) & (!\vga_0|videoSync|Add1~15\ & VCC))
-- \vga_0|videoSync|Add1~17\ = CARRY((\vga_0|videoSync|v_count\(8) & !\vga_0|videoSync|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|v_count\(8),
	datad => VCC,
	cin => \vga_0|videoSync|Add1~15\,
	combout => \vga_0|videoSync|Add1~16_combout\,
	cout => \vga_0|videoSync|Add1~17\);

-- Location: LCCOMB_X29_Y27_N24
\vga_0|videoSync|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~18_combout\ = \vga_0|videoSync|Add1~17\ $ (\vga_0|videoSync|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_0|videoSync|v_count\(9),
	cin => \vga_0|videoSync|Add1~17\,
	combout => \vga_0|videoSync|Add1~18_combout\);

-- Location: LCCOMB_X31_Y26_N20
\vga_0|videoSync|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~16_combout\ = (\vga_0|videoSync|h_count\(8) & (\vga_0|videoSync|Add0~15\ $ (GND))) # (!\vga_0|videoSync|h_count\(8) & (!\vga_0|videoSync|Add0~15\ & VCC))
-- \vga_0|videoSync|Add0~17\ = CARRY((\vga_0|videoSync|h_count\(8) & !\vga_0|videoSync|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|h_count\(8),
	datad => VCC,
	cin => \vga_0|videoSync|Add0~15\,
	combout => \vga_0|videoSync|Add0~16_combout\,
	cout => \vga_0|videoSync|Add0~17\);

-- Location: LCCOMB_X31_Y26_N22
\vga_0|videoSync|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~18_combout\ = \vga_0|videoSync|h_count\(9) $ (\vga_0|videoSync|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(9),
	cin => \vga_0|videoSync|Add0~17\,
	combout => \vga_0|videoSync|Add0~18_combout\);

-- Location: LCCOMB_X29_Y24_N24
\vga_0|videoGen|pixelDraw~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~16_combout\ = (!\vga_0|videoSync|pixel_row\(8) & (!\vga_0|videoSync|pixel_row\(6) & \vga_0|videoSync|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(8),
	datab => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoSync|pixel_row\(7),
	combout => \vga_0|videoGen|pixelDraw~16_combout\);

-- Location: LCCOMB_X25_Y23_N10
\vga_0|videoGen|pixelDraw~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~19_combout\ = (!\vga_0|videoGen|LessThan53~0_combout\ & (!\vga_0|videoGen|LessThan13~2_combout\ & \vga_0|videoGen|LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|LessThan53~0_combout\,
	datac => \vga_0|videoGen|LessThan13~2_combout\,
	datad => \vga_0|videoGen|LessThan13~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~19_combout\);

-- Location: LCCOMB_X30_Y26_N20
\vga_0|videoGen|colorAddress~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~46_combout\ = ((!\vga_0|videoGen|pixelDraw~22_combout\ & (!\vga_0|videoGen|pixelDraw~33_combout\ & !\vga_0|videoGen|pixelDraw~34_combout\))) # (!\vga_0|videoGen|pixelDraw~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~22_combout\,
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|pixelDraw~34_combout\,
	datad => \vga_0|videoGen|pixelDraw~32_combout\,
	combout => \vga_0|videoGen|colorAddress~46_combout\);

-- Location: LCCOMB_X30_Y24_N6
\vga_0|videoGen|LessThan47~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan47~1_combout\ = (!\vga_0|videoSync|pixel_row\(0) & (!\vga_0|videoSync|pixel_row\(1) & (!\vga_0|videoSync|pixel_row\(2) & !\vga_0|videoSync|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(0),
	datab => \vga_0|videoSync|pixel_row\(1),
	datac => \vga_0|videoSync|pixel_row\(2),
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|LessThan47~1_combout\);

-- Location: LCCOMB_X31_Y24_N24
\vga_0|videoGen|colorAddress~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~49_combout\ = ((!\vga_0|videoGen|pixelDraw~79_combout\ & !\vga_0|videoGen|pixelDraw~31_combout\)) # (!\vga_0|videoGen|pixelDraw~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~79_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|pixelDraw~26_combout\,
	combout => \vga_0|videoGen|colorAddress~49_combout\);

-- Location: LCCOMB_X30_Y24_N8
\vga_0|videoGen|colorAddress~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~50_combout\ = (\vga_0|videoGen|pixelDraw~33_combout\ & (!\vga_0|videoGen|pixelDraw~23_combout\ & ((!\vga_0|videoGen|pixelDraw~44_combout\) # (!\vga_0|videoGen|pixelDraw~22_combout\)))) # (!\vga_0|videoGen|pixelDraw~33_combout\ 
-- & (((!\vga_0|videoGen|pixelDraw~44_combout\) # (!\vga_0|videoGen|pixelDraw~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~33_combout\,
	datab => \vga_0|videoGen|pixelDraw~23_combout\,
	datac => \vga_0|videoGen|pixelDraw~22_combout\,
	datad => \vga_0|videoGen|pixelDraw~44_combout\,
	combout => \vga_0|videoGen|colorAddress~50_combout\);

-- Location: LCCOMB_X31_Y24_N14
\vga_0|videoGen|colorAddress~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~51_combout\ = (\vga_0|videoGen|colorAddress~50_combout\ & ((!\vga_0|videoGen|pixelDraw~45_combout\) # (!\vga_0|videoGen|pixelDraw~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~22_combout\,
	datac => \vga_0|videoGen|pixelDraw~45_combout\,
	datad => \vga_0|videoGen|colorAddress~50_combout\,
	combout => \vga_0|videoGen|colorAddress~51_combout\);

-- Location: LCCOMB_X30_Y24_N30
\vga_0|videoGen|colorAddress~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~52_combout\ = ((!\vga_0|videoGen|pixelDraw~34_combout\ & !\vga_0|videoGen|pixelDraw~38_combout\)) # (!\vga_0|videoGen|pixelDraw~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~34_combout\,
	datac => \vga_0|videoGen|pixelDraw~38_combout\,
	datad => \vga_0|videoGen|pixelDraw~23_combout\,
	combout => \vga_0|videoGen|colorAddress~52_combout\);

-- Location: LCCOMB_X30_Y24_N12
\vga_0|videoGen|colorAddress~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~53_combout\ = (\vga_0|videoGen|colorAddress~52_combout\ & (((!\vga_0|videoGen|pixelDraw~41_combout\ & !\vga_0|videoGen|pixelDraw~36_combout\)) # (!\vga_0|videoGen|pixelDraw~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~41_combout\,
	datab => \vga_0|videoGen|pixelDraw~23_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|colorAddress~52_combout\,
	combout => \vga_0|videoGen|colorAddress~53_combout\);

-- Location: LCCOMB_X31_Y24_N20
\vga_0|videoGen|colorAddress~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~54_combout\ = (\vga_0|videoGen|pixelDraw~34_combout\) # ((\vga_0|videoGen|pixelDraw~33_combout\) # ((\vga_0|videoGen|pixelDraw~36_combout\) # (\vga_0|videoGen|pixelDraw~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~34_combout\,
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|pixelDraw~21_combout\,
	combout => \vga_0|videoGen|colorAddress~54_combout\);

-- Location: LCCOMB_X31_Y24_N18
\vga_0|videoGen|colorAddress~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~55_combout\ = (\vga_0|videoGen|pixelDraw~26_combout\ & ((\vga_0|videoGen|pixelDraw~38_combout\) # ((\vga_0|videoGen|pixelDraw~41_combout\) # (\vga_0|videoGen|colorAddress~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~38_combout\,
	datab => \vga_0|videoGen|pixelDraw~41_combout\,
	datac => \vga_0|videoGen|colorAddress~54_combout\,
	datad => \vga_0|videoGen|pixelDraw~26_combout\,
	combout => \vga_0|videoGen|colorAddress~55_combout\);

-- Location: LCCOMB_X31_Y24_N16
\vga_0|videoGen|colorAddress~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~56_combout\ = (\vga_0|videoGen|colorAddress~49_combout\ & (!\vga_0|videoGen|colorAddress~55_combout\ & (\vga_0|videoGen|colorAddress~51_combout\ & \vga_0|videoGen|colorAddress~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~49_combout\,
	datab => \vga_0|videoGen|colorAddress~55_combout\,
	datac => \vga_0|videoGen|colorAddress~51_combout\,
	datad => \vga_0|videoGen|colorAddress~53_combout\,
	combout => \vga_0|videoGen|colorAddress~56_combout\);

-- Location: LCCOMB_X32_Y23_N16
\vga_0|videoGen|colorAddress~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~59_combout\ = ((!\vga_0|videoGen|pixelDraw~34_combout\ & !\vga_0|videoGen|pixelDraw~38_combout\)) # (!\vga_0|videoGen|pixelDraw~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~34_combout\,
	datac => \vga_0|videoGen|pixelDraw~38_combout\,
	datad => \vga_0|videoGen|pixelDraw~28_combout\,
	combout => \vga_0|videoGen|colorAddress~59_combout\);

-- Location: LCCOMB_X32_Y23_N6
\vga_0|videoGen|colorAddress~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~60_combout\ = (\vga_0|videoGen|colorAddress~59_combout\ & (((!\vga_0|videoGen|pixelDraw~36_combout\ & !\vga_0|videoGen|pixelDraw~41_combout\)) # (!\vga_0|videoGen|pixelDraw~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~28_combout\,
	datab => \vga_0|videoGen|pixelDraw~36_combout\,
	datac => \vga_0|videoGen|colorAddress~59_combout\,
	datad => \vga_0|videoGen|pixelDraw~41_combout\,
	combout => \vga_0|videoGen|colorAddress~60_combout\);

-- Location: LCCOMB_X29_Y26_N24
\vga_0|videoGen|LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan11~1_combout\ = (!\vga_0|videoSync|pixel_row\(5) & (!\vga_0|videoSync|pixel_row\(2) & ((!\vga_0|videoSync|pixel_row\(0)) # (!\vga_0|videoSync|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_row\(1),
	datac => \vga_0|videoSync|pixel_row\(0),
	datad => \vga_0|videoSync|pixel_row\(2),
	combout => \vga_0|videoGen|LessThan11~1_combout\);

-- Location: LCCOMB_X31_Y25_N6
\vga_0|videoGen|colorAddress~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~70_combout\ = ((!\vga_0|videoGen|pixelDraw~28_combout\ & !\vga_0|videoGen|pixelDraw~26_combout\)) # (!\vga_0|videoGen|pixelDraw~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~28_combout\,
	datac => \vga_0|videoGen|pixelDraw~26_combout\,
	datad => \vga_0|videoGen|pixelDraw~46_combout\,
	combout => \vga_0|videoGen|colorAddress~70_combout\);

-- Location: LCCOMB_X31_Y24_N26
\vga_0|videoGen|colorAddress~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~74_combout\ = ((!\vga_0|videoGen|pixelDraw~38_combout\ & (!\vga_0|videoGen|pixelDraw~33_combout\ & !\vga_0|videoGen|pixelDraw~34_combout\))) # (!\vga_0|videoGen|pixelDraw~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~38_combout\,
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|pixelDraw~34_combout\,
	datad => \vga_0|videoGen|pixelDraw~49_combout\,
	combout => \vga_0|videoGen|colorAddress~74_combout\);

-- Location: LCCOMB_X28_Y25_N4
\vga_0|videoGen|LessThan173~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan173~0_combout\ = (!\vga_0|videoSync|pixel_column\(3) & (!\vga_0|videoSync|pixel_column\(4) & (!\vga_0|videoSync|pixel_column\(6) & !\vga_0|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(3),
	datab => \vga_0|videoSync|pixel_column\(4),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|LessThan173~0_combout\);

-- Location: LCCOMB_X31_Y23_N12
\vga_0|videoGen|colorAddress~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~79_combout\ = (\vga_0|videoGen|pixelDraw~34_combout\) # ((\vga_0|videoGen|pixelDraw~79_combout\) # ((\vga_0|videoGen|pixelDraw~33_combout\) # (\vga_0|videoGen|colorAddress~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~34_combout\,
	datab => \vga_0|videoGen|pixelDraw~79_combout\,
	datac => \vga_0|videoGen|pixelDraw~33_combout\,
	datad => \vga_0|videoGen|colorAddress~186_combout\,
	combout => \vga_0|videoGen|colorAddress~79_combout\);

-- Location: LCCOMB_X31_Y23_N26
\vga_0|videoGen|colorAddress~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~80_combout\ = (\vga_0|videoGen|pixelDraw~51_combout\ & (!\vga_0|videoGen|colorAddress~79_combout\ & ((!\vga_0|videoGen|pixelDraw~22_combout\) # (!\vga_0|videoGen|pixelDraw~56_combout\)))) # 
-- (!\vga_0|videoGen|pixelDraw~51_combout\ & (((!\vga_0|videoGen|pixelDraw~22_combout\)) # (!\vga_0|videoGen|pixelDraw~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~51_combout\,
	datab => \vga_0|videoGen|pixelDraw~56_combout\,
	datac => \vga_0|videoGen|pixelDraw~22_combout\,
	datad => \vga_0|videoGen|colorAddress~79_combout\,
	combout => \vga_0|videoGen|colorAddress~80_combout\);

-- Location: LCCOMB_X31_Y23_N0
\vga_0|videoGen|colorAddress~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~81_combout\ = ((!\vga_0|videoGen|pixelDraw~33_combout\ & !\vga_0|videoGen|pixelDraw~34_combout\)) # (!\vga_0|videoGen|pixelDraw~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|pixelDraw~34_combout\,
	datad => \vga_0|videoGen|pixelDraw~54_combout\,
	combout => \vga_0|videoGen|colorAddress~81_combout\);

-- Location: LCCOMB_X31_Y23_N6
\vga_0|videoGen|colorAddress~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~82_combout\ = (\vga_0|videoGen|pixelDraw~38_combout\) # ((\vga_0|videoGen|pixelDraw~21_combout\) # ((\vga_0|videoGen|pixelDraw~41_combout\) # (\vga_0|videoGen|pixelDraw~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~38_combout\,
	datab => \vga_0|videoGen|pixelDraw~21_combout\,
	datac => \vga_0|videoGen|pixelDraw~41_combout\,
	datad => \vga_0|videoGen|pixelDraw~79_combout\,
	combout => \vga_0|videoGen|colorAddress~82_combout\);

-- Location: LCCOMB_X31_Y23_N8
\vga_0|videoGen|colorAddress~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~83_combout\ = (\vga_0|videoGen|colorAddress~81_combout\ & (((!\vga_0|videoGen|colorAddress~82_combout\ & !\vga_0|videoGen|pixelDraw~31_combout\)) # (!\vga_0|videoGen|pixelDraw~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~82_combout\,
	datab => \vga_0|videoGen|pixelDraw~54_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|colorAddress~81_combout\,
	combout => \vga_0|videoGen|colorAddress~83_combout\);

-- Location: LCCOMB_X31_Y23_N10
\vga_0|videoGen|colorAddress~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~84_combout\ = (\vga_0|videoGen|colorAddress~83_combout\ & (\vga_0|videoGen|colorAddress~80_combout\ & ((!\vga_0|videoGen|pixelDraw~36_combout\) # (!\vga_0|videoGen|pixelDraw~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~51_combout\,
	datab => \vga_0|videoGen|colorAddress~83_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|colorAddress~80_combout\,
	combout => \vga_0|videoGen|colorAddress~84_combout\);

-- Location: LCCOMB_X30_Y23_N4
\vga_0|videoGen|colorAddress~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~88_combout\ = ((!\vga_0|videoGen|pixelDraw~79_combout\ & !\vga_0|videoGen|pixelDraw~31_combout\)) # (!\vga_0|videoGen|pixelDraw~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~79_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|pixelDraw~23_combout\,
	combout => \vga_0|videoGen|colorAddress~88_combout\);

-- Location: LCCOMB_X31_Y23_N24
\vga_0|videoGen|colorAddress~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~89_combout\ = (\vga_0|videoGen|colorAddress~88_combout\ & (((!\vga_0|videoGen|pixelDraw~36_combout\ & !\vga_0|videoGen|pixelDraw~41_combout\)) # (!\vga_0|videoGen|pixelDraw~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~36_combout\,
	datab => \vga_0|videoGen|colorAddress~88_combout\,
	datac => \vga_0|videoGen|pixelDraw~41_combout\,
	datad => \vga_0|videoGen|pixelDraw~56_combout\,
	combout => \vga_0|videoGen|colorAddress~89_combout\);

-- Location: LCCOMB_X28_Y25_N26
\vga_0|videoGen|LessThan413~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan413~0_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (!\vga_0|videoSync|pixel_column\(6) & !\vga_0|videoSync|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(7),
	combout => \vga_0|videoGen|LessThan413~0_combout\);

-- Location: LCCOMB_X28_Y26_N0
\vga_0|videoGen|pixelDraw~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~64_combout\ = (\vga_0|videoGen|LessThan374~1_combout\ & (((!\vga_0|videoSync|pixel_column\(5) & !\vga_0|videoGen|LessThan334~0_combout\)) # (!\vga_0|videoSync|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(8),
	datac => \vga_0|videoGen|LessThan334~0_combout\,
	datad => \vga_0|videoGen|LessThan374~1_combout\,
	combout => \vga_0|videoGen|pixelDraw~64_combout\);

-- Location: LCCOMB_X28_Y26_N22
\vga_0|videoGen|pixelDraw~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~65_combout\ = (\vga_0|videoGen|pixelDraw~64_combout\ & (((\vga_0|videoGen|LessThan294~1_combout\ & !\vga_0|videoGen|LessThan333~2_combout\)) # (!\vga_0|videoGen|LessThan13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~3_combout\,
	datab => \vga_0|videoGen|LessThan294~1_combout\,
	datac => \vga_0|videoGen|LessThan333~2_combout\,
	datad => \vga_0|videoGen|pixelDraw~64_combout\,
	combout => \vga_0|videoGen|pixelDraw~65_combout\);

-- Location: LCCOMB_X28_Y24_N20
\vga_0|videoGen|colorAddress~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~111_combout\ = (\vga_0|videoGen|pixelDraw~34_combout\) # ((\vga_0|videoGen|pixelDraw~33_combout\) # (\vga_0|videoGen|pixelDraw~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~34_combout\,
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datad => \vga_0|videoGen|pixelDraw~38_combout\,
	combout => \vga_0|videoGen|colorAddress~111_combout\);

-- Location: LCCOMB_X29_Y23_N22
\vga_0|videoGen|colorAddress~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~114_combout\ = (\vga_0|videoGen|colorAddress~113_combout\ & ((!\vga_0|videoGen|pixelDraw~61_combout\) # (!\vga_0|videoGen|colorAddress~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~100_combout\,
	datac => \vga_0|videoGen|colorAddress~113_combout\,
	datad => \vga_0|videoGen|pixelDraw~61_combout\,
	combout => \vga_0|videoGen|colorAddress~114_combout\);

-- Location: LCCOMB_X28_Y23_N22
\vga_0|videoGen|colorAddress~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~117_combout\ = (\vga_0|videoGen|colorAddress~116_combout\ & ((!\vga_0|videoGen|colorAddress~106_combout\) # (!\vga_0|videoGen|pixelDraw~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~60_combout\,
	datac => \vga_0|videoGen|colorAddress~106_combout\,
	datad => \vga_0|videoGen|colorAddress~116_combout\,
	combout => \vga_0|videoGen|colorAddress~117_combout\);

-- Location: LCCOMB_X28_Y22_N10
\vga_0|videoGen|pixelDraw~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~69_combout\ = (!\vga_0|videoGen|pixelDraw~46_combout\) # (!\vga_0|videoGen|pixelDraw~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~60_combout\,
	datab => \vga_0|videoGen|pixelDraw~46_combout\,
	combout => \vga_0|videoGen|pixelDraw~69_combout\);

-- Location: LCCOMB_X30_Y22_N20
\vga_0|videoGen|pixelDraw~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~71_combout\ = (!\vga_0|videoGen|pixelDraw~68_combout\) # (!\vga_0|videoGen|pixelDraw~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoGen|pixelDraw~46_combout\,
	datad => \vga_0|videoGen|pixelDraw~68_combout\,
	combout => \vga_0|videoGen|pixelDraw~71_combout\);

-- Location: LCCOMB_X29_Y22_N24
\vga_0|videoGen|colorAddress~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~134_combout\ = (\vga_0|videoGen|pixelDraw~79_combout\) # ((\vga_0|videoGen|pixelDraw~22_combout\) # ((\vga_0|videoGen|pixelDraw~21_combout\) # (\vga_0|videoGen|pixelDraw~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~79_combout\,
	datab => \vga_0|videoGen|pixelDraw~22_combout\,
	datac => \vga_0|videoGen|pixelDraw~21_combout\,
	datad => \vga_0|videoGen|pixelDraw~31_combout\,
	combout => \vga_0|videoGen|colorAddress~134_combout\);

-- Location: LCCOMB_X30_Y22_N10
\vga_0|videoGen|colorAddress~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~136_combout\ = (\vga_0|videoGen|pixelDraw~38_combout\) # ((\vga_0|videoGen|pixelDraw~34_combout\) # (\vga_0|videoGen|pixelDraw~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~38_combout\,
	datac => \vga_0|videoGen|pixelDraw~34_combout\,
	datad => \vga_0|videoGen|pixelDraw~41_combout\,
	combout => \vga_0|videoGen|colorAddress~136_combout\);

-- Location: LCCOMB_X29_Y22_N6
\vga_0|videoGen|colorAddress~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~137_combout\ = ((!\vga_0|videoGen|pixelDraw~36_combout\ & (!\vga_0|videoGen|pixelDraw~33_combout\ & !\vga_0|videoGen|colorAddress~136_combout\))) # (!\vga_0|videoGen|pixelDraw~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~36_combout\,
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|colorAddress~136_combout\,
	datad => \vga_0|videoGen|pixelDraw~19_combout\,
	combout => \vga_0|videoGen|colorAddress~137_combout\);

-- Location: LCCOMB_X28_Y26_N18
\vga_0|videoGen|colorAddress~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~143_combout\ = (\vga_0|videoGen|pixelDraw~58_combout\ & ((\vga_0|videoGen|pixelDraw~36_combout\) # (\vga_0|videoGen|pixelDraw~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~36_combout\,
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datad => \vga_0|videoGen|pixelDraw~58_combout\,
	combout => \vga_0|videoGen|colorAddress~143_combout\);

-- Location: LCCOMB_X27_Y23_N20
\vga_0|videoGen|colorAddress~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~144_combout\ = ((\vga_0|videoGen|colorAddress~143_combout\) # ((!\vga_0|videoGen|colorAddress~121_combout\) # (!\vga_0|videoGen|colorAddress~96_combout\))) # (!\vga_0|videoGen|colorAddress~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~94_combout\,
	datab => \vga_0|videoGen|colorAddress~143_combout\,
	datac => \vga_0|videoGen|colorAddress~96_combout\,
	datad => \vga_0|videoGen|colorAddress~121_combout\,
	combout => \vga_0|videoGen|colorAddress~144_combout\);

-- Location: LCCOMB_X27_Y23_N6
\vga_0|videoGen|colorAddress~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~145_combout\ = (\vga_0|videoGen|colorAddress~121_combout\ & ((!\vga_0|videoGen|pixelDraw~36_combout\) # (!\vga_0|videoGen|pixelDraw~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~58_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|colorAddress~121_combout\,
	combout => \vga_0|videoGen|colorAddress~145_combout\);

-- Location: LCCOMB_X27_Y23_N16
\vga_0|videoGen|colorAddress~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~146_combout\ = (\vga_0|videoGen|colorAddress~144_combout\ & (((!\vga_0|videoGen|colorAddress~145_combout\) # (!\vga_0|videoGen|colorAddress~97_combout\)) # (!\vga_0|videoGen|colorAddress~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~94_combout\,
	datab => \vga_0|videoGen|colorAddress~97_combout\,
	datac => \vga_0|videoGen|colorAddress~144_combout\,
	datad => \vga_0|videoGen|colorAddress~145_combout\,
	combout => \vga_0|videoGen|colorAddress~146_combout\);

-- Location: LCCOMB_X27_Y23_N2
\vga_0|videoGen|colorAddress~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~147_combout\ = ((!\vga_0|videoGen|colorAddress~94_combout\ & (!\vga_0|videoGen|colorAddress~73_combout\ & !\vga_0|videoGen|colorAddress~95_combout\))) # (!\vga_0|videoGen|colorAddress~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~94_combout\,
	datab => \vga_0|videoGen|colorAddress~73_combout\,
	datac => \vga_0|videoGen|colorAddress~95_combout\,
	datad => \vga_0|videoGen|colorAddress~121_combout\,
	combout => \vga_0|videoGen|colorAddress~147_combout\);

-- Location: LCCOMB_X27_Y23_N24
\vga_0|videoGen|colorAddress~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~148_combout\ = (\vga_0|videoGen|Mux653~4_combout\ & (\vga_0|videoGen|colorAddress~147_combout\ & ((\vga_0|videoGen|colorAddress~120_combout\) # (\vga_0|videoGen|placeShip_on~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~120_combout\,
	datab => \vga_0|videoGen|Mux653~4_combout\,
	datac => \vga_0|videoGen|placeShip_on~combout\,
	datad => \vga_0|videoGen|colorAddress~147_combout\,
	combout => \vga_0|videoGen|colorAddress~148_combout\);

-- Location: LCCOMB_X27_Y23_N26
\vga_0|videoGen|colorAddress~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~149_combout\ = (\vga_0|videoGen|colorAddress~148_combout\ & ((!\vga_0|videoGen|colorAddress~121_combout\) # (!\vga_0|videoGen|colorAddress~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~94_combout\,
	datac => \vga_0|videoGen|colorAddress~148_combout\,
	datad => \vga_0|videoGen|colorAddress~121_combout\,
	combout => \vga_0|videoGen|colorAddress~149_combout\);

-- Location: LCCOMB_X27_Y23_N4
\vga_0|videoGen|colorAddress~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~150_combout\ = (\vga_0|videoGen|colorAddress~145_combout\ & ((\vga_0|videoGen|colorAddress~105_combout\) # (\vga_0|videoGen|colorAddress~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|colorAddress~105_combout\,
	datac => \vga_0|videoGen|colorAddress~103_combout\,
	datad => \vga_0|videoGen|colorAddress~145_combout\,
	combout => \vga_0|videoGen|colorAddress~150_combout\);

-- Location: LCCOMB_X27_Y23_N30
\vga_0|videoGen|colorAddress~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~151_combout\ = (\vga_0|videoGen|colorAddress~146_combout\ & (\vga_0|videoGen|colorAddress~149_combout\ & ((!\vga_0|videoGen|colorAddress~150_combout\) # (!\vga_0|videoGen|colorAddress~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~94_combout\,
	datab => \vga_0|videoGen|colorAddress~150_combout\,
	datac => \vga_0|videoGen|colorAddress~146_combout\,
	datad => \vga_0|videoGen|colorAddress~149_combout\,
	combout => \vga_0|videoGen|colorAddress~151_combout\);

-- Location: LCCOMB_X27_Y23_N8
\vga_0|videoGen|colorAddress~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~152_combout\ = (\vga_0|videoGen|colorAddress~151_combout\ & (((!\vga_0|videoGen|colorAddress~200_combout\) # (!\vga_0|videoGen|colorAddress~94_combout\)) # (!\vga_0|videoGen|colorAddress~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~145_combout\,
	datab => \vga_0|videoGen|colorAddress~94_combout\,
	datac => \vga_0|videoGen|colorAddress~200_combout\,
	datad => \vga_0|videoGen|colorAddress~151_combout\,
	combout => \vga_0|videoGen|colorAddress~152_combout\);

-- Location: LCCOMB_X27_Y23_N18
\vga_0|videoGen|colorAddress~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~153_combout\ = (\vga_0|videoGen|colorAddress~152_combout\ & (((!\vga_0|videoGen|colorAddress~110_combout\) # (!\vga_0|videoGen|colorAddress~94_combout\)) # (!\vga_0|videoGen|colorAddress~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~145_combout\,
	datab => \vga_0|videoGen|colorAddress~94_combout\,
	datac => \vga_0|videoGen|colorAddress~152_combout\,
	datad => \vga_0|videoGen|colorAddress~110_combout\,
	combout => \vga_0|videoGen|colorAddress~153_combout\);

-- Location: LCCOMB_X29_Y23_N16
\vga_0|videoGen|colorAddress~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~154_combout\ = (\vga_0|videoGen|colorAddress~121_combout\ & (\vga_0|videoGen|colorAddress~94_combout\ & ((!\vga_0|videoGen|pixelDraw~58_combout\) # (!\vga_0|videoGen|pixelDraw~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~36_combout\,
	datab => \vga_0|videoGen|pixelDraw~58_combout\,
	datac => \vga_0|videoGen|colorAddress~121_combout\,
	datad => \vga_0|videoGen|colorAddress~94_combout\,
	combout => \vga_0|videoGen|colorAddress~154_combout\);

-- Location: LCCOMB_X28_Y23_N20
\vga_0|videoGen|colorAddress~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~155_combout\ = (\vga_0|videoGen|colorAddress~113_combout\) # ((\vga_0|videoGen|colorAddress~195_combout\) # ((\vga_0|videoGen|colorAddress~114_combout\) # (\vga_0|videoGen|colorAddress~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~113_combout\,
	datab => \vga_0|videoGen|colorAddress~195_combout\,
	datac => \vga_0|videoGen|colorAddress~114_combout\,
	datad => \vga_0|videoGen|colorAddress~116_combout\,
	combout => \vga_0|videoGen|colorAddress~155_combout\);

-- Location: LCCOMB_X28_Y23_N18
\vga_0|videoGen|colorAddress~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~156_combout\ = (\vga_0|videoGen|colorAddress~153_combout\ & (((!\vga_0|videoGen|colorAddress~117_combout\ & !\vga_0|videoGen|colorAddress~155_combout\)) # (!\vga_0|videoGen|colorAddress~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~154_combout\,
	datab => \vga_0|videoGen|colorAddress~117_combout\,
	datac => \vga_0|videoGen|colorAddress~155_combout\,
	datad => \vga_0|videoGen|colorAddress~153_combout\,
	combout => \vga_0|videoGen|colorAddress~156_combout\);

-- Location: LCCOMB_X28_Y23_N8
\vga_0|videoGen|colorAddress~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~157_combout\ = (\vga_0|videoGen|colorAddress~156_combout\ & (((!\vga_0|videoGen|colorAddress~196_combout\ & !\vga_0|videoGen|colorAddress~118_combout\)) # (!\vga_0|videoGen|colorAddress~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~196_combout\,
	datab => \vga_0|videoGen|colorAddress~118_combout\,
	datac => \vga_0|videoGen|colorAddress~154_combout\,
	datad => \vga_0|videoGen|colorAddress~156_combout\,
	combout => \vga_0|videoGen|colorAddress~157_combout\);

-- Location: LCCOMB_X28_Y23_N14
\vga_0|videoGen|colorAddress~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~158_combout\ = (\vga_0|videoGen|pixelDraw~71_combout\ & (\vga_0|videoGen|colorAddress~121_combout\ & (\vga_0|videoGen|colorAddress~125_combout\ & \vga_0|videoGen|colorAddress~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~71_combout\,
	datab => \vga_0|videoGen|colorAddress~121_combout\,
	datac => \vga_0|videoGen|colorAddress~125_combout\,
	datad => \vga_0|videoGen|colorAddress~119_combout\,
	combout => \vga_0|videoGen|colorAddress~158_combout\);

-- Location: LCCOMB_X28_Y23_N24
\vga_0|videoGen|colorAddress~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~159_combout\ = (!\vga_0|videoGen|colorAddress~158_combout\ & (\vga_0|videoGen|colorAddress~157_combout\ & ((!\vga_0|videoGen|colorAddress~132_combout\) # (!\vga_0|videoGen|colorAddress~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~130_combout\,
	datab => \vga_0|videoGen|colorAddress~158_combout\,
	datac => \vga_0|videoGen|colorAddress~157_combout\,
	datad => \vga_0|videoGen|colorAddress~132_combout\,
	combout => \vga_0|videoGen|colorAddress~159_combout\);

-- Location: LCCOMB_X28_Y22_N24
\vga_0|videoGen|colorAddress~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~165_combout\ = (((!\vga_0|videoGen|colorAddress~119_combout\) # (!\vga_0|videoGen|colorAddress~127_combout\)) # (!\vga_0|videoGen|colorAddress~125_combout\)) # (!\vga_0|videoGen|colorAddress~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~121_combout\,
	datab => \vga_0|videoGen|colorAddress~125_combout\,
	datac => \vga_0|videoGen|colorAddress~127_combout\,
	datad => \vga_0|videoGen|colorAddress~119_combout\,
	combout => \vga_0|videoGen|colorAddress~165_combout\);

-- Location: LCCOMB_X27_Y22_N2
\vga_0|videoGen|colorAddress~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~170_combout\ = (\vga_0|videoSync|pixel_column\(8) & (!\vga_0|videoSync|pixel_column\(9) & \vga_0|videoGen|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(8),
	datab => \vga_0|videoSync|pixel_column\(9),
	datad => \vga_0|videoGen|Equal3~1_combout\,
	combout => \vga_0|videoGen|colorAddress~170_combout\);

-- Location: LCCOMB_X25_Y23_N24
\vga_0|videoGen|colorAddress~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~172_combout\ = ((!\vga_0|videoGen|pixelDraw~46_combout\ & !\vga_0|videoGen|pixelDraw~31_combout\)) # (!\vga_0|videoGen|pixelDraw~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~46_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|pixelDraw~19_combout\,
	combout => \vga_0|videoGen|colorAddress~172_combout\);

-- Location: LCCOMB_X27_Y22_N26
\vga_0|videoGen|colorAddress~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~176_combout\ = (\vga_0|videoSync|pixel_column\(9)) # ((\vga_0|videoGen|Equal2~0_combout\ & (\vga_0|videoSync|pixel_column\(8))) # (!\vga_0|videoGen|Equal2~0_combout\ & ((!\vga_0|videoGen|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(8),
	datab => \vga_0|videoGen|Equal3~1_combout\,
	datac => \vga_0|videoSync|pixel_column\(9),
	datad => \vga_0|videoGen|Equal2~0_combout\,
	combout => \vga_0|videoGen|colorAddress~176_combout\);

-- Location: LCCOMB_X25_Y23_N30
\vga_0|videoGen|colorAddress~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~180_combout\ = (\vga_0|videoGen|pixelDraw~82_combout\ & (!\vga_0|videoGen|pixelDraw~66_combout\ & (\vga_0|videoGen|colorAddress~172_combout\ & \vga_0|videoGen|pixelDraw~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~82_combout\,
	datab => \vga_0|videoGen|pixelDraw~66_combout\,
	datac => \vga_0|videoGen|colorAddress~172_combout\,
	datad => \vga_0|videoGen|pixelDraw~80_combout\,
	combout => \vga_0|videoGen|colorAddress~180_combout\);

-- Location: LCCOMB_X29_Y22_N10
\vga_0|videoGen|colorAddress~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~181_combout\ = (\vga_0|videoGen|colorAddress~180_combout\ & (\vga_0|videoGen|colorAddress~137_combout\ & ((!\vga_0|videoGen|pixelDraw~19_combout\) # (!\vga_0|videoGen|pixelDraw~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~21_combout\,
	datab => \vga_0|videoGen|pixelDraw~19_combout\,
	datac => \vga_0|videoGen|colorAddress~180_combout\,
	datad => \vga_0|videoGen|colorAddress~137_combout\,
	combout => \vga_0|videoGen|colorAddress~181_combout\);

-- Location: LCCOMB_X24_Y23_N14
\vga_0|videoGen|colorAddress~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~184_combout\ = (!\vga_0|videoSync|pixel_column\(9) & ((\vga_0|videoGen|bit_addr\(2) & ((\vga_0|videoGen|Mux653~1_combout\))) # (!\vga_0|videoGen|bit_addr\(2) & (\vga_0|videoGen|Mux653~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|bit_addr\(2),
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoGen|Mux653~3_combout\,
	datad => \vga_0|videoGen|Mux653~1_combout\,
	combout => \vga_0|videoGen|colorAddress~184_combout\);

-- Location: LCCOMB_X25_Y26_N6
\vga_0|videoSync|process_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~2_combout\ = (!\vga_0|videoSync|h_count\(6) & (!\vga_0|videoSync|h_count\(5) & ((!\vga_0|videoSync|h_count\(3)) # (!\vga_0|videoSync|h_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(4),
	datab => \vga_0|videoSync|h_count\(6),
	datac => \vga_0|videoSync|h_count\(3),
	datad => \vga_0|videoSync|h_count\(5),
	combout => \vga_0|videoSync|process_1~2_combout\);

-- Location: LCCOMB_X28_Y26_N26
\vga_0|videoSync|process_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~4_combout\ = (\vga_0|videoSync|h_count\(5) & ((\vga_0|videoSync|h_count\(2)) # ((\vga_0|videoSync|h_count\(0)) # (\vga_0|videoSync|h_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(2),
	datab => \vga_0|videoSync|h_count\(5),
	datac => \vga_0|videoSync|h_count\(0),
	datad => \vga_0|videoSync|h_count\(1),
	combout => \vga_0|videoSync|process_1~4_combout\);

-- Location: LCCOMB_X24_Y25_N2
\vga_0|videoGen|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux27~0_combout\ = (\vga_0|videoSync|pixel_column\(6) & (((!\vga_0|videoSync|pixel_column\(7) & !\vga_0|videoSync|pixel_column\(4))))) # (!\vga_0|videoSync|pixel_column\(6) & (\vga_0|videoSync|pixel_column\(5) $ 
-- (((\vga_0|videoSync|pixel_column\(7) & !\vga_0|videoSync|pixel_column\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoSync|pixel_column\(4),
	combout => \vga_0|videoGen|Mux27~0_combout\);

-- Location: LCCOMB_X25_Y25_N12
\vga_0|videoGen|char_addr[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[1]~17_combout\ = (!\vga_0|videoSync|pixel_column\(5) & (\vga_0|videoSync|pixel_column\(6) $ (((!\vga_0|videoGen|LessThan13~3_combout\) # (!\vga_0|videoGen|Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoGen|Equal2~0_combout\,
	datad => \vga_0|videoGen|LessThan13~3_combout\,
	combout => \vga_0|videoGen|char_addr[1]~17_combout\);

-- Location: LCCOMB_X25_Y23_N12
\vga_0|videoGen|pixelDraw~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~80_combout\ = ((\vga_0|videoGen|LessThan53~0_combout\) # ((\vga_0|videoGen|LessThan13~2_combout\) # (!\vga_0|videoGen|LessThan13~0_combout\))) # (!\vga_0|videoGen|pixelDraw~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~79_combout\,
	datab => \vga_0|videoGen|LessThan53~0_combout\,
	datac => \vga_0|videoGen|LessThan13~2_combout\,
	datad => \vga_0|videoGen|LessThan13~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~80_combout\);

-- Location: LCCOMB_X31_Y23_N2
\vga_0|videoGen|colorAddress~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~186_combout\ = (\vga_0|videoGen|pixelDraw~38_combout\) # ((\vga_0|videoGen|pixelDraw~41_combout\) # ((!\vga_0|videoGen|LessThan23~2_combout\ & \vga_0|videoGen|pixelDraw~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan23~2_combout\,
	datab => \vga_0|videoGen|pixelDraw~38_combout\,
	datac => \vga_0|videoGen|pixelDraw~41_combout\,
	datad => \vga_0|videoGen|pixelDraw~20_combout\,
	combout => \vga_0|videoGen|colorAddress~186_combout\);

-- Location: LCCOMB_X28_Y26_N14
\vga_0|videoGen|colorAddress~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~200_combout\ = (\vga_0|videoGen|colorAddress~105_combout\ & ((!\vga_0|videoGen|colorAddress~106_combout\) # (!\vga_0|videoGen|pixelDraw~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~63_combout\,
	datac => \vga_0|videoGen|colorAddress~106_combout\,
	datad => \vga_0|videoGen|colorAddress~105_combout\,
	combout => \vga_0|videoGen|colorAddress~200_combout\);

-- Location: LCCOMB_X29_Y22_N14
\vga_0|videoSync|pixel_clock_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|pixel_clock_int~0_combout\ = !\vga_0|videoSync|pixel_clock_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|pixel_clock_int~regout\,
	combout => \vga_0|videoSync|pixel_clock_int~0_combout\);

-- Location: LCFF_X29_Y22_N15
\vga_0|videoSync|pixel_clock_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \vga_0|videoSync|pixel_clock_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_clock_int~regout\);

-- Location: CLKCTRL_G11
\vga_0|videoSync|pixel_clock_int~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga_0|videoSync|pixel_clock_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y26_N4
\vga_0|videoSync|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~0_combout\ = \vga_0|videoSync|h_count\(0) $ (VCC)
-- \vga_0|videoSync|Add0~1\ = CARRY(\vga_0|videoSync|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|h_count\(0),
	datad => VCC,
	combout => \vga_0|videoSync|Add0~0_combout\,
	cout => \vga_0|videoSync|Add0~1\);

-- Location: LCCOMB_X31_Y26_N30
\vga_0|videoSync|h_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|h_count~2_combout\ = (\vga_0|videoSync|Add0~0_combout\ & (((!\vga_0|videoSync|h_count\(8)) # (!\vga_0|videoSync|Equal0~2_combout\)) # (!\vga_0|videoSync|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|Equal0~1_combout\,
	datab => \vga_0|videoSync|Equal0~2_combout\,
	datac => \vga_0|videoSync|Add0~0_combout\,
	datad => \vga_0|videoSync|h_count\(8),
	combout => \vga_0|videoSync|h_count~2_combout\);

-- Location: LCFF_X31_Y26_N31
\vga_0|videoSync|h_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(0));

-- Location: LCCOMB_X31_Y26_N6
\vga_0|videoSync|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~2_combout\ = (\vga_0|videoSync|h_count\(1) & (!\vga_0|videoSync|Add0~1\)) # (!\vga_0|videoSync|h_count\(1) & ((\vga_0|videoSync|Add0~1\) # (GND)))
-- \vga_0|videoSync|Add0~3\ = CARRY((!\vga_0|videoSync|Add0~1\) # (!\vga_0|videoSync|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(1),
	datad => VCC,
	cin => \vga_0|videoSync|Add0~1\,
	combout => \vga_0|videoSync|Add0~2_combout\,
	cout => \vga_0|videoSync|Add0~3\);

-- Location: LCCOMB_X31_Y26_N8
\vga_0|videoSync|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~4_combout\ = (\vga_0|videoSync|h_count\(2) & (\vga_0|videoSync|Add0~3\ $ (GND))) # (!\vga_0|videoSync|h_count\(2) & (!\vga_0|videoSync|Add0~3\ & VCC))
-- \vga_0|videoSync|Add0~5\ = CARRY((\vga_0|videoSync|h_count\(2) & !\vga_0|videoSync|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|h_count\(2),
	datad => VCC,
	cin => \vga_0|videoSync|Add0~3\,
	combout => \vga_0|videoSync|Add0~4_combout\,
	cout => \vga_0|videoSync|Add0~5\);

-- Location: LCFF_X31_Y26_N9
\vga_0|videoSync|h_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(2));

-- Location: LCCOMB_X31_Y26_N10
\vga_0|videoSync|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~6_combout\ = (\vga_0|videoSync|h_count\(3) & (!\vga_0|videoSync|Add0~5\)) # (!\vga_0|videoSync|h_count\(3) & ((\vga_0|videoSync|Add0~5\) # (GND)))
-- \vga_0|videoSync|Add0~7\ = CARRY((!\vga_0|videoSync|Add0~5\) # (!\vga_0|videoSync|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(3),
	datad => VCC,
	cin => \vga_0|videoSync|Add0~5\,
	combout => \vga_0|videoSync|Add0~6_combout\,
	cout => \vga_0|videoSync|Add0~7\);

-- Location: LCFF_X31_Y26_N11
\vga_0|videoSync|h_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(3));

-- Location: LCCOMB_X31_Y26_N26
\vga_0|videoSync|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Equal0~2_combout\ = (!\vga_0|videoSync|h_count\(4) & (\vga_0|videoSync|h_count\(5) & (!\vga_0|videoSync|h_count\(7) & !\vga_0|videoSync|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(4),
	datab => \vga_0|videoSync|h_count\(5),
	datac => \vga_0|videoSync|h_count\(7),
	datad => \vga_0|videoSync|h_count\(3),
	combout => \vga_0|videoSync|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y26_N12
\vga_0|videoSync|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~8_combout\ = (\vga_0|videoSync|h_count\(4) & (\vga_0|videoSync|Add0~7\ $ (GND))) # (!\vga_0|videoSync|h_count\(4) & (!\vga_0|videoSync|Add0~7\ & VCC))
-- \vga_0|videoSync|Add0~9\ = CARRY((\vga_0|videoSync|h_count\(4) & !\vga_0|videoSync|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(4),
	datad => VCC,
	cin => \vga_0|videoSync|Add0~7\,
	combout => \vga_0|videoSync|Add0~8_combout\,
	cout => \vga_0|videoSync|Add0~9\);

-- Location: LCCOMB_X31_Y26_N14
\vga_0|videoSync|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~10_combout\ = (\vga_0|videoSync|h_count\(5) & (!\vga_0|videoSync|Add0~9\)) # (!\vga_0|videoSync|h_count\(5) & ((\vga_0|videoSync|Add0~9\) # (GND)))
-- \vga_0|videoSync|Add0~11\ = CARRY((!\vga_0|videoSync|Add0~9\) # (!\vga_0|videoSync|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|h_count\(5),
	datad => VCC,
	cin => \vga_0|videoSync|Add0~9\,
	combout => \vga_0|videoSync|Add0~10_combout\,
	cout => \vga_0|videoSync|Add0~11\);

-- Location: LCCOMB_X31_Y26_N0
\vga_0|videoSync|h_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|h_count~3_combout\ = (\vga_0|videoSync|Add0~10_combout\ & (((!\vga_0|videoSync|h_count\(8)) # (!\vga_0|videoSync|Equal0~2_combout\)) # (!\vga_0|videoSync|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|Equal0~1_combout\,
	datab => \vga_0|videoSync|Equal0~2_combout\,
	datac => \vga_0|videoSync|Add0~10_combout\,
	datad => \vga_0|videoSync|h_count\(8),
	combout => \vga_0|videoSync|h_count~3_combout\);

-- Location: LCFF_X31_Y26_N1
\vga_0|videoSync|h_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(5));

-- Location: LCCOMB_X31_Y26_N16
\vga_0|videoSync|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~12_combout\ = (\vga_0|videoSync|h_count\(6) & (\vga_0|videoSync|Add0~11\ $ (GND))) # (!\vga_0|videoSync|h_count\(6) & (!\vga_0|videoSync|Add0~11\ & VCC))
-- \vga_0|videoSync|Add0~13\ = CARRY((\vga_0|videoSync|h_count\(6) & !\vga_0|videoSync|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(6),
	datad => VCC,
	cin => \vga_0|videoSync|Add0~11\,
	combout => \vga_0|videoSync|Add0~12_combout\,
	cout => \vga_0|videoSync|Add0~13\);

-- Location: LCCOMB_X31_Y26_N18
\vga_0|videoSync|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add0~14_combout\ = (\vga_0|videoSync|h_count\(7) & (!\vga_0|videoSync|Add0~13\)) # (!\vga_0|videoSync|h_count\(7) & ((\vga_0|videoSync|Add0~13\) # (GND)))
-- \vga_0|videoSync|Add0~15\ = CARRY((!\vga_0|videoSync|Add0~13\) # (!\vga_0|videoSync|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|h_count\(7),
	datad => VCC,
	cin => \vga_0|videoSync|Add0~13\,
	combout => \vga_0|videoSync|Add0~14_combout\,
	cout => \vga_0|videoSync|Add0~15\);

-- Location: LCFF_X31_Y26_N19
\vga_0|videoSync|h_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(7));

-- Location: LCCOMB_X31_Y26_N2
\vga_0|videoSync|h_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|h_count~0_combout\ = (\vga_0|videoSync|Add0~16_combout\ & (((!\vga_0|videoSync|Equal0~2_combout\) # (!\vga_0|videoSync|h_count\(8))) # (!\vga_0|videoSync|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|Equal0~1_combout\,
	datab => \vga_0|videoSync|Add0~16_combout\,
	datac => \vga_0|videoSync|h_count\(8),
	datad => \vga_0|videoSync|Equal0~2_combout\,
	combout => \vga_0|videoSync|h_count~0_combout\);

-- Location: LCFF_X31_Y26_N3
\vga_0|videoSync|h_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(8));

-- Location: LCFF_X31_Y26_N17
\vga_0|videoSync|h_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(6));

-- Location: LCCOMB_X30_Y26_N18
\vga_0|videoSync|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Equal0~0_combout\ = (!\vga_0|videoSync|h_count\(1) & (!\vga_0|videoSync|h_count\(6) & (!\vga_0|videoSync|h_count\(2) & !\vga_0|videoSync|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(1),
	datab => \vga_0|videoSync|h_count\(6),
	datac => \vga_0|videoSync|h_count\(2),
	datad => \vga_0|videoSync|h_count\(0),
	combout => \vga_0|videoSync|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y26_N0
\vga_0|videoSync|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Equal0~1_combout\ = (\vga_0|videoSync|Equal0~0_combout\ & \vga_0|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|Equal0~0_combout\,
	datad => \vga_0|videoSync|h_count\(9),
	combout => \vga_0|videoSync|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y26_N24
\vga_0|videoSync|h_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|h_count~1_combout\ = (\vga_0|videoSync|Add0~18_combout\ & (((!\vga_0|videoSync|h_count\(8)) # (!\vga_0|videoSync|Equal0~1_combout\)) # (!\vga_0|videoSync|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|Add0~18_combout\,
	datab => \vga_0|videoSync|Equal0~2_combout\,
	datac => \vga_0|videoSync|Equal0~1_combout\,
	datad => \vga_0|videoSync|h_count\(8),
	combout => \vga_0|videoSync|h_count~1_combout\);

-- Location: LCFF_X31_Y26_N25
\vga_0|videoSync|h_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(9));

-- Location: LCCOMB_X25_Y26_N8
\vga_0|videoSync|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|LessThan5~0_combout\ = ((!\vga_0|videoSync|h_count\(8) & !\vga_0|videoSync|h_count\(7))) # (!\vga_0|videoSync|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|h_count\(9),
	datac => \vga_0|videoSync|h_count\(8),
	datad => \vga_0|videoSync|h_count\(7),
	combout => \vga_0|videoSync|LessThan5~0_combout\);

-- Location: LCFF_X28_Y24_N1
\vga_0|videoSync|pixel_column[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|h_count\(8),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(8));

-- Location: LCCOMB_X29_Y27_N6
\vga_0|videoSync|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~0_combout\ = \vga_0|videoSync|v_count\(0) $ (VCC)
-- \vga_0|videoSync|Add1~1\ = CARRY(\vga_0|videoSync|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|v_count\(0),
	datad => VCC,
	combout => \vga_0|videoSync|Add1~0_combout\,
	cout => \vga_0|videoSync|Add1~1\);

-- Location: LCCOMB_X28_Y27_N16
\vga_0|videoSync|v_count~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count~7_combout\ = (\vga_0|videoSync|Add1~0_combout\ & ((\vga_0|videoSync|LessThan1~2_combout\) # (\vga_0|videoSync|process_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|LessThan1~2_combout\,
	datac => \vga_0|videoSync|process_1~10_combout\,
	datad => \vga_0|videoSync|Add1~0_combout\,
	combout => \vga_0|videoSync|v_count~7_combout\);

-- Location: LCFF_X28_Y27_N17
\vga_0|videoSync|v_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count~7_combout\,
	ena => \vga_0|videoSync|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(0));

-- Location: LCCOMB_X29_Y27_N8
\vga_0|videoSync|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~2_combout\ = (\vga_0|videoSync|v_count\(1) & (!\vga_0|videoSync|Add1~1\)) # (!\vga_0|videoSync|v_count\(1) & ((\vga_0|videoSync|Add1~1\) # (GND)))
-- \vga_0|videoSync|Add1~3\ = CARRY((!\vga_0|videoSync|Add1~1\) # (!\vga_0|videoSync|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|v_count\(1),
	datad => VCC,
	cin => \vga_0|videoSync|Add1~1\,
	combout => \vga_0|videoSync|Add1~2_combout\,
	cout => \vga_0|videoSync|Add1~3\);

-- Location: LCCOMB_X29_Y27_N12
\vga_0|videoSync|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~6_combout\ = (\vga_0|videoSync|v_count\(3) & (!\vga_0|videoSync|Add1~5\)) # (!\vga_0|videoSync|v_count\(3) & ((\vga_0|videoSync|Add1~5\) # (GND)))
-- \vga_0|videoSync|Add1~7\ = CARRY((!\vga_0|videoSync|Add1~5\) # (!\vga_0|videoSync|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|v_count\(3),
	datad => VCC,
	cin => \vga_0|videoSync|Add1~5\,
	combout => \vga_0|videoSync|Add1~6_combout\,
	cout => \vga_0|videoSync|Add1~7\);

-- Location: LCCOMB_X29_Y27_N14
\vga_0|videoSync|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~8_combout\ = (\vga_0|videoSync|v_count\(4) & (\vga_0|videoSync|Add1~7\ $ (GND))) # (!\vga_0|videoSync|v_count\(4) & (!\vga_0|videoSync|Add1~7\ & VCC))
-- \vga_0|videoSync|Add1~9\ = CARRY((\vga_0|videoSync|v_count\(4) & !\vga_0|videoSync|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|v_count\(4),
	datad => VCC,
	cin => \vga_0|videoSync|Add1~7\,
	combout => \vga_0|videoSync|Add1~8_combout\,
	cout => \vga_0|videoSync|Add1~9\);

-- Location: LCCOMB_X29_Y27_N26
\vga_0|videoSync|v_count[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count[4]~6_combout\ = (\vga_0|videoSync|v_count[9]~0_combout\ & (\vga_0|videoSync|process_1~11_combout\ & (\vga_0|videoSync|Add1~8_combout\))) # (!\vga_0|videoSync|v_count[9]~0_combout\ & (((\vga_0|videoSync|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|process_1~11_combout\,
	datab => \vga_0|videoSync|Add1~8_combout\,
	datac => \vga_0|videoSync|v_count\(4),
	datad => \vga_0|videoSync|v_count[9]~0_combout\,
	combout => \vga_0|videoSync|v_count[4]~6_combout\);

-- Location: LCFF_X29_Y27_N27
\vga_0|videoSync|v_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(4));

-- Location: LCCOMB_X28_Y27_N22
\vga_0|videoSync|v_count[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count[5]~2_combout\ = (\vga_0|videoSync|v_count[9]~0_combout\ & (\vga_0|videoSync|Add1~10_combout\ & (\vga_0|videoSync|process_1~11_combout\))) # (!\vga_0|videoSync|v_count[9]~0_combout\ & (((\vga_0|videoSync|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|Add1~10_combout\,
	datab => \vga_0|videoSync|process_1~11_combout\,
	datac => \vga_0|videoSync|v_count\(5),
	datad => \vga_0|videoSync|v_count[9]~0_combout\,
	combout => \vga_0|videoSync|v_count[5]~2_combout\);

-- Location: LCFF_X28_Y27_N23
\vga_0|videoSync|v_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(5));

-- Location: LCCOMB_X28_Y27_N8
\vga_0|videoSync|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|LessThan1~1_combout\ = (!\vga_0|videoSync|v_count\(6) & (!\vga_0|videoSync|v_count\(7) & (!\vga_0|videoSync|v_count\(4) & !\vga_0|videoSync|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|v_count\(6),
	datab => \vga_0|videoSync|v_count\(7),
	datac => \vga_0|videoSync|v_count\(4),
	datad => \vga_0|videoSync|v_count\(5),
	combout => \vga_0|videoSync|LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y27_N18
\vga_0|videoSync|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~12_combout\ = (\vga_0|videoSync|v_count\(6) & (\vga_0|videoSync|Add1~11\ $ (GND))) # (!\vga_0|videoSync|v_count\(6) & (!\vga_0|videoSync|Add1~11\ & VCC))
-- \vga_0|videoSync|Add1~13\ = CARRY((\vga_0|videoSync|v_count\(6) & !\vga_0|videoSync|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|v_count\(6),
	datad => VCC,
	cin => \vga_0|videoSync|Add1~11\,
	combout => \vga_0|videoSync|Add1~12_combout\,
	cout => \vga_0|videoSync|Add1~13\);

-- Location: LCCOMB_X29_Y27_N2
\vga_0|videoSync|v_count[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count[6]~3_combout\ = (\vga_0|videoSync|v_count[9]~0_combout\ & (\vga_0|videoSync|process_1~11_combout\ & ((\vga_0|videoSync|Add1~12_combout\)))) # (!\vga_0|videoSync|v_count[9]~0_combout\ & (((\vga_0|videoSync|v_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|process_1~11_combout\,
	datab => \vga_0|videoSync|v_count[9]~0_combout\,
	datac => \vga_0|videoSync|v_count\(6),
	datad => \vga_0|videoSync|Add1~12_combout\,
	combout => \vga_0|videoSync|v_count[6]~3_combout\);

-- Location: LCFF_X29_Y27_N3
\vga_0|videoSync|v_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(6));

-- Location: LCCOMB_X28_Y27_N0
\vga_0|videoSync|v_count[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count[8]~5_combout\ = (\vga_0|videoSync|v_count[9]~0_combout\ & (\vga_0|videoSync|process_1~11_combout\ & ((\vga_0|videoSync|Add1~16_combout\)))) # (!\vga_0|videoSync|v_count[9]~0_combout\ & (((\vga_0|videoSync|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|v_count[9]~0_combout\,
	datab => \vga_0|videoSync|process_1~11_combout\,
	datac => \vga_0|videoSync|v_count\(8),
	datad => \vga_0|videoSync|Add1~16_combout\,
	combout => \vga_0|videoSync|v_count[8]~5_combout\);

-- Location: LCFF_X28_Y27_N1
\vga_0|videoSync|v_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(8));

-- Location: LCCOMB_X28_Y27_N10
\vga_0|videoSync|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|LessThan1~2_combout\ = (\vga_0|videoSync|LessThan1~0_combout\ & (\vga_0|videoSync|LessThan1~1_combout\ & !\vga_0|videoSync|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|LessThan1~0_combout\,
	datac => \vga_0|videoSync|LessThan1~1_combout\,
	datad => \vga_0|videoSync|v_count\(8),
	combout => \vga_0|videoSync|LessThan1~2_combout\);

-- Location: LCCOMB_X28_Y27_N6
\vga_0|videoSync|v_count~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count~8_combout\ = (\vga_0|videoSync|Add1~2_combout\ & ((\vga_0|videoSync|process_1~10_combout\) # (\vga_0|videoSync|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|process_1~10_combout\,
	datac => \vga_0|videoSync|Add1~2_combout\,
	datad => \vga_0|videoSync|LessThan1~2_combout\,
	combout => \vga_0|videoSync|v_count~8_combout\);

-- Location: LCFF_X28_Y27_N7
\vga_0|videoSync|v_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count~8_combout\,
	ena => \vga_0|videoSync|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(1));

-- Location: LCCOMB_X29_Y27_N10
\vga_0|videoSync|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Add1~4_combout\ = (\vga_0|videoSync|v_count\(2) & (\vga_0|videoSync|Add1~3\ $ (GND))) # (!\vga_0|videoSync|v_count\(2) & (!\vga_0|videoSync|Add1~3\ & VCC))
-- \vga_0|videoSync|Add1~5\ = CARRY((\vga_0|videoSync|v_count\(2) & !\vga_0|videoSync|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|v_count\(2),
	datad => VCC,
	cin => \vga_0|videoSync|Add1~3\,
	combout => \vga_0|videoSync|Add1~4_combout\,
	cout => \vga_0|videoSync|Add1~5\);

-- Location: LCCOMB_X29_Y27_N4
\vga_0|videoSync|v_count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count[2]~9_combout\ = (\vga_0|videoSync|v_count[9]~0_combout\ & (\vga_0|videoSync|process_1~11_combout\ & ((\vga_0|videoSync|Add1~4_combout\)))) # (!\vga_0|videoSync|v_count[9]~0_combout\ & (((\vga_0|videoSync|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|process_1~11_combout\,
	datab => \vga_0|videoSync|v_count[9]~0_combout\,
	datac => \vga_0|videoSync|v_count\(2),
	datad => \vga_0|videoSync|Add1~4_combout\,
	combout => \vga_0|videoSync|v_count[2]~9_combout\);

-- Location: LCFF_X29_Y27_N5
\vga_0|videoSync|v_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(2));

-- Location: LCCOMB_X29_Y27_N30
\vga_0|videoSync|v_count[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count[3]~10_combout\ = (\vga_0|videoSync|v_count[9]~0_combout\ & (\vga_0|videoSync|process_1~11_combout\ & ((\vga_0|videoSync|Add1~6_combout\)))) # (!\vga_0|videoSync|v_count[9]~0_combout\ & (((\vga_0|videoSync|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|process_1~11_combout\,
	datab => \vga_0|videoSync|v_count[9]~0_combout\,
	datac => \vga_0|videoSync|v_count\(3),
	datad => \vga_0|videoSync|Add1~6_combout\,
	combout => \vga_0|videoSync|v_count[3]~10_combout\);

-- Location: LCFF_X29_Y27_N31
\vga_0|videoSync|v_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(3));

-- Location: LCCOMB_X28_Y27_N2
\vga_0|videoSync|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|LessThan1~0_combout\ = (((!\vga_0|videoSync|v_count\(1) & !\vga_0|videoSync|v_count\(0))) # (!\vga_0|videoSync|v_count\(2))) # (!\vga_0|videoSync|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|v_count\(1),
	datab => \vga_0|videoSync|v_count\(3),
	datac => \vga_0|videoSync|v_count\(0),
	datad => \vga_0|videoSync|v_count\(2),
	combout => \vga_0|videoSync|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y27_N14
\vga_0|videoSync|process_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~11_combout\ = (\vga_0|videoSync|process_1~10_combout\) # ((\vga_0|videoSync|LessThan1~1_combout\ & (\vga_0|videoSync|LessThan1~0_combout\ & !\vga_0|videoSync|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|LessThan1~1_combout\,
	datab => \vga_0|videoSync|LessThan1~0_combout\,
	datac => \vga_0|videoSync|process_1~10_combout\,
	datad => \vga_0|videoSync|v_count\(8),
	combout => \vga_0|videoSync|process_1~11_combout\);

-- Location: LCCOMB_X29_Y27_N28
\vga_0|videoSync|v_count[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count[9]~1_combout\ = (\vga_0|videoSync|v_count[9]~0_combout\ & (\vga_0|videoSync|Add1~18_combout\ & ((\vga_0|videoSync|process_1~11_combout\)))) # (!\vga_0|videoSync|v_count[9]~0_combout\ & (((\vga_0|videoSync|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|Add1~18_combout\,
	datab => \vga_0|videoSync|v_count[9]~0_combout\,
	datac => \vga_0|videoSync|v_count\(9),
	datad => \vga_0|videoSync|process_1~11_combout\,
	combout => \vga_0|videoSync|v_count[9]~1_combout\);

-- Location: LCFF_X29_Y27_N29
\vga_0|videoSync|v_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(9));

-- Location: LCCOMB_X25_Y26_N20
\vga_0|videoSync|process_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~9_combout\ = (!\vga_0|videoSync|h_count\(9)) # (!\vga_0|videoSync|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|v_count\(9),
	datad => \vga_0|videoSync|h_count\(9),
	combout => \vga_0|videoSync|process_1~9_combout\);

-- Location: LCCOMB_X25_Y26_N10
\vga_0|videoSync|process_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~10_combout\ = (\vga_0|videoSync|process_1~9_combout\) # ((!\vga_0|videoSync|h_count\(8) & ((\vga_0|videoSync|process_1~2_combout\) # (!\vga_0|videoSync|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|process_1~2_combout\,
	datab => \vga_0|videoSync|h_count\(8),
	datac => \vga_0|videoSync|process_1~9_combout\,
	datad => \vga_0|videoSync|h_count\(7),
	combout => \vga_0|videoSync|process_1~10_combout\);

-- Location: LCCOMB_X25_Y26_N18
\vga_0|videoSync|process_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~5_combout\ = (\vga_0|videoSync|h_count\(4) & \vga_0|videoSync|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(4),
	datac => \vga_0|videoSync|h_count\(3),
	combout => \vga_0|videoSync|process_1~5_combout\);

-- Location: LCCOMB_X25_Y26_N0
\vga_0|videoSync|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|Equal1~0_combout\ = (\vga_0|videoSync|h_count\(5)) # (((\vga_0|videoSync|h_count\(8)) # (!\vga_0|videoSync|process_1~5_combout\)) # (!\vga_0|videoSync|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|h_count\(5),
	datab => \vga_0|videoSync|h_count\(7),
	datac => \vga_0|videoSync|h_count\(8),
	datad => \vga_0|videoSync|process_1~5_combout\,
	combout => \vga_0|videoSync|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y27_N28
\vga_0|videoSync|v_count[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count[9]~0_combout\ = (\vga_0|videoSync|LessThan1~2_combout\ & (((!\vga_0|videoSync|Equal1~0_combout\ & \vga_0|videoSync|Equal0~1_combout\)))) # (!\vga_0|videoSync|LessThan1~2_combout\ & (((!\vga_0|videoSync|Equal1~0_combout\ & 
-- \vga_0|videoSync|Equal0~1_combout\)) # (!\vga_0|videoSync|process_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|LessThan1~2_combout\,
	datab => \vga_0|videoSync|process_1~10_combout\,
	datac => \vga_0|videoSync|Equal1~0_combout\,
	datad => \vga_0|videoSync|Equal0~1_combout\,
	combout => \vga_0|videoSync|v_count[9]~0_combout\);

-- Location: LCCOMB_X29_Y27_N0
\vga_0|videoSync|v_count[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|v_count[7]~4_combout\ = (\vga_0|videoSync|v_count[9]~0_combout\ & (\vga_0|videoSync|Add1~14_combout\ & ((\vga_0|videoSync|process_1~11_combout\)))) # (!\vga_0|videoSync|v_count[9]~0_combout\ & (((\vga_0|videoSync|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|Add1~14_combout\,
	datab => \vga_0|videoSync|v_count[9]~0_combout\,
	datac => \vga_0|videoSync|v_count\(7),
	datad => \vga_0|videoSync|process_1~11_combout\,
	combout => \vga_0|videoSync|v_count[7]~4_combout\);

-- Location: LCFF_X29_Y27_N1
\vga_0|videoSync|v_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|v_count[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|v_count\(7));

-- Location: LCCOMB_X28_Y27_N18
\vga_0|videoSync|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|LessThan6~0_combout\ = (\vga_0|videoSync|v_count\(6) & (\vga_0|videoSync|v_count\(5) & (\vga_0|videoSync|v_count\(7) & \vga_0|videoSync|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|v_count\(6),
	datab => \vga_0|videoSync|v_count\(5),
	datac => \vga_0|videoSync|v_count\(7),
	datad => \vga_0|videoSync|v_count\(8),
	combout => \vga_0|videoSync|LessThan6~0_combout\);

-- Location: LCCOMB_X28_Y27_N24
\vga_0|videoSync|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|LessThan6~1_combout\ = (\vga_0|videoSync|v_count\(1)) # ((\vga_0|videoSync|v_count\(3)) # ((\vga_0|videoSync|v_count\(0)) # (\vga_0|videoSync|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|v_count\(1),
	datab => \vga_0|videoSync|v_count\(3),
	datac => \vga_0|videoSync|v_count\(0),
	datad => \vga_0|videoSync|v_count\(2),
	combout => \vga_0|videoSync|LessThan6~1_combout\);

-- Location: LCCOMB_X28_Y27_N26
\vga_0|videoSync|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|LessThan6~2_combout\ = (!\vga_0|videoSync|v_count\(9) & (((!\vga_0|videoSync|v_count\(4) & !\vga_0|videoSync|LessThan6~1_combout\)) # (!\vga_0|videoSync|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|v_count\(4),
	datab => \vga_0|videoSync|LessThan6~0_combout\,
	datac => \vga_0|videoSync|LessThan6~1_combout\,
	datad => \vga_0|videoSync|v_count\(9),
	combout => \vga_0|videoSync|LessThan6~2_combout\);

-- Location: LCFF_X28_Y24_N27
\vga_0|videoSync|pixel_row[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~regout\,
	sdata => \vga_0|videoSync|v_count\(7),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_row\(7));

-- Location: LCFF_X28_Y24_N5
\vga_0|videoSync|pixel_row[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~regout\,
	sdata => \vga_0|videoSync|v_count\(8),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_row\(8));

-- Location: LCFF_X28_Y24_N29
\vga_0|videoSync|pixel_row[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~regout\,
	sdata => \vga_0|videoSync|v_count\(6),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_row\(6));

-- Location: LCCOMB_X28_Y24_N4
\vga_0|videoGen|placeShip_on~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|placeShip_on~1_combout\ = (!\vga_0|videoSync|pixel_row\(7) & (!\vga_0|videoSync|pixel_row\(8) & !\vga_0|videoSync|pixel_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_row\(7),
	datac => \vga_0|videoSync|pixel_row\(8),
	datad => \vga_0|videoSync|pixel_row\(6),
	combout => \vga_0|videoGen|placeShip_on~1_combout\);

-- Location: LCFF_X28_Y22_N11
\vga_0|videoSync|pixel_column[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~regout\,
	sdata => \vga_0|videoSync|h_count\(9),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(9));

-- Location: LCCOMB_X28_Y24_N12
\vga_0|videoGen|gameOverT_on\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|gameOverT_on~combout\ = (\vga_0|videoSync|pixel_row\(5) & (\vga_0|videoSync|pixel_column\(8) & (\vga_0|videoGen|placeShip_on~1_combout\ & !\vga_0|videoSync|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_column\(8),
	datac => \vga_0|videoGen|placeShip_on~1_combout\,
	datad => \vga_0|videoSync|pixel_column\(9),
	combout => \vga_0|videoGen|gameOverT_on~combout\);

-- Location: LCFF_X28_Y25_N21
\vga_0|videoSync|pixel_column[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|h_count\(3),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(3));

-- Location: LCFF_X29_Y26_N29
\vga_0|videoSync|pixel_row[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~regout\,
	sdata => \vga_0|videoSync|v_count\(5),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_row\(5));

-- Location: LCCOMB_X28_Y24_N28
\vga_0|videoGen|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Equal2~0_combout\ = (\vga_0|videoSync|pixel_row\(8) & (\vga_0|videoSync|pixel_row\(7) & (!\vga_0|videoSync|pixel_row\(6) & \vga_0|videoSync|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(8),
	datab => \vga_0|videoSync|pixel_row\(7),
	datac => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoSync|pixel_row\(5),
	combout => \vga_0|videoGen|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y22_N2
\vga_0|videoGen|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Equal3~1_combout\ = (!\vga_0|videoSync|pixel_row\(5) & (\vga_0|videoSync|pixel_row\(7) & (\vga_0|videoSync|pixel_row\(8) & \vga_0|videoSync|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_row\(7),
	datac => \vga_0|videoSync|pixel_row\(8),
	datad => \vga_0|videoSync|pixel_row\(6),
	combout => \vga_0|videoGen|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y22_N8
\vga_0|videoGen|char_addr[5]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~50_combout\ = (!\vga_0|videoSync|pixel_column\(9) & ((\vga_0|videoGen|Equal3~1_combout\) # ((\vga_0|videoSync|pixel_column\(8) & \vga_0|videoGen|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(8),
	datab => \vga_0|videoGen|Equal2~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(9),
	datad => \vga_0|videoGen|Equal3~1_combout\,
	combout => \vga_0|videoGen|char_addr[5]~50_combout\);

-- Location: LCCOMB_X28_Y24_N22
\vga_0|videoGen|LessThan13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan13~3_combout\ = (!\vga_0|videoSync|pixel_column\(8) & !\vga_0|videoSync|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_column\(8),
	datad => \vga_0|videoSync|pixel_column\(9),
	combout => \vga_0|videoGen|LessThan13~3_combout\);

-- Location: LCCOMB_X28_Y24_N14
\vga_0|videoGen|char_addr[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~6_combout\ = ((!\vga_0|videoGen|Equal2~0_combout\ & ((\vga_0|videoSync|pixel_row\(5)) # (!\vga_0|videoGen|placeShip_on~1_combout\)))) # (!\vga_0|videoGen|LessThan13~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|Equal2~0_combout\,
	datab => \vga_0|videoSync|pixel_row\(5),
	datac => \vga_0|videoGen|placeShip_on~1_combout\,
	datad => \vga_0|videoGen|LessThan13~3_combout\,
	combout => \vga_0|videoGen|char_addr[5]~6_combout\);

-- Location: LCCOMB_X27_Y22_N24
\vga_0|videoGen|char_addr[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~7_combout\ = (\vga_0|videoGen|char_addr[5]~50_combout\) # ((\vga_0|videoGen|gameOverT_on~combout\) # (!\vga_0|videoGen|char_addr[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|char_addr[5]~50_combout\,
	datac => \vga_0|videoGen|gameOverT_on~combout\,
	datad => \vga_0|videoGen|char_addr[5]~6_combout\,
	combout => \vga_0|videoGen|char_addr[5]~7_combout\);

-- Location: CLKCTRL_G10
\vga_0|videoGen|char_addr[5]~7clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga_0|videoGen|char_addr[5]~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\);

-- Location: LCCOMB_X28_Y25_N20
\vga_0|videoGen|bit_addr[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|bit_addr\(2) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoSync|pixel_column\(3)))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|bit_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|bit_addr\(2),
	datac => \vga_0|videoSync|pixel_column\(3),
	datad => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	combout => \vga_0|videoGen|bit_addr\(2));

-- Location: LCFF_X28_Y26_N19
\vga_0|videoSync|pixel_column[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|h_count\(2),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(2));

-- Location: LCCOMB_X28_Y26_N10
\vga_0|videoGen|bit_addr[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|bit_addr\(1) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoSync|pixel_column\(2)))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|bit_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|bit_addr\(1),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoSync|pixel_column\(2),
	combout => \vga_0|videoGen|bit_addr\(1));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCFF_X29_Y24_N7
\vga_0|videoSync|pixel_row[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|v_count\(1),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_row\(1));

-- Location: LCCOMB_X29_Y24_N6
\vga_0|videoGen|row_addr[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|row_addr\(0) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoSync|pixel_row\(1)))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|row_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|row_addr\(0),
	datac => \vga_0|videoSync|pixel_row\(1),
	datad => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	combout => \vga_0|videoGen|row_addr\(0));

-- Location: LCFF_X29_Y24_N25
\vga_0|videoSync|pixel_row[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|v_count\(2),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_row\(2));

-- Location: LCCOMB_X25_Y24_N8
\vga_0|videoGen|row_addr[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|row_addr\(1) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoSync|pixel_row\(2)))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|row_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|row_addr\(1),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoSync|pixel_row\(2),
	combout => \vga_0|videoGen|row_addr\(1));

-- Location: LCFF_X29_Y24_N31
\vga_0|videoSync|pixel_row[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|v_count\(3),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_row\(3));

-- Location: LCCOMB_X25_Y24_N30
\vga_0|videoGen|row_addr[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|row_addr\(2) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoSync|pixel_row\(3)))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|row_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|row_addr\(2),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoSync|pixel_row\(3),
	combout => \vga_0|videoGen|row_addr\(2));

-- Location: LCFF_X29_Y26_N23
\vga_0|videoSync|pixel_row[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|v_count\(4),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_row\(4));

-- Location: LCCOMB_X27_Y26_N28
\vga_0|videoGen|row_addr[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|row_addr\(3) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoSync|pixel_row\(4)))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|row_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|row_addr\(3),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|row_addr\(3));

-- Location: LCFF_X28_Y25_N29
\vga_0|videoSync|pixel_column[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|h_count\(5),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(5));

-- Location: LCFF_X31_Y26_N13
\vga_0|videoSync|h_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(4));

-- Location: LCFF_X28_Y25_N19
\vga_0|videoSync|pixel_column[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|h_count\(4),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(4));

-- Location: LCFF_X28_Y25_N5
\vga_0|videoSync|pixel_column[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|h_count\(6),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(6));

-- Location: LCCOMB_X25_Y25_N18
\vga_0|videoGen|Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux33~0_combout\ = (\vga_0|videoSync|pixel_column\(7)) # (\vga_0|videoSync|pixel_column\(5) $ (((\vga_0|videoSync|pixel_column\(4) & !\vga_0|videoSync|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoSync|pixel_column\(6),
	combout => \vga_0|videoGen|Mux33~0_combout\);

-- Location: LCCOMB_X25_Y25_N4
\vga_0|videoGen|char_addr[0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[0]~51_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoGen|Equal2~0_combout\ & (!\vga_0|videoSync|pixel_column\(8) & !\vga_0|videoGen|Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoGen|Equal2~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(8),
	datad => \vga_0|videoGen|Mux33~0_combout\,
	combout => \vga_0|videoGen|char_addr[0]~51_combout\);

-- Location: LCCOMB_X27_Y25_N16
\vga_0|videoGen|char_addr[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[0]~12_combout\ = (\vga_0|videoSync|pixel_column\(9)) # (!\vga_0|videoGen|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoGen|Equal2~0_combout\,
	datad => \vga_0|videoSync|pixel_column\(9),
	combout => \vga_0|videoGen|char_addr[0]~12_combout\);

-- Location: LCCOMB_X28_Y24_N0
\vga_0|videoGen|placeShip_on~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|placeShip_on~0_combout\ = (!\vga_0|videoSync|pixel_row\(6) & !\vga_0|videoSync|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoSync|pixel_row\(7),
	combout => \vga_0|videoGen|placeShip_on~0_combout\);

-- Location: LCCOMB_X28_Y24_N2
\vga_0|videoGen|placeShip_on\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|placeShip_on~combout\ = (!\vga_0|videoSync|pixel_row\(5) & (\vga_0|videoGen|placeShip_on~0_combout\ & (!\vga_0|videoSync|pixel_row\(8) & \vga_0|videoGen|LessThan13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoGen|placeShip_on~0_combout\,
	datac => \vga_0|videoSync|pixel_row\(8),
	datad => \vga_0|videoGen|LessThan13~3_combout\,
	combout => \vga_0|videoGen|placeShip_on~combout\);

-- Location: LCCOMB_X24_Y25_N30
\vga_0|videoGen|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux13~1_combout\ = (\vga_0|videoSync|pixel_column\(6)) # ((\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoSync|pixel_column\(4)) # (!\vga_0|videoGen|gameOverT_on~combout\))) # (!\vga_0|videoSync|pixel_column\(5) & 
-- (\vga_0|videoSync|pixel_column\(4) & !\vga_0|videoGen|gameOverT_on~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoGen|gameOverT_on~combout\,
	combout => \vga_0|videoGen|Mux13~1_combout\);

-- Location: LCCOMB_X24_Y25_N16
\vga_0|videoGen|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux13~0_combout\ = (\vga_0|videoSync|pixel_column\(6) & ((\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoGen|gameOverT_on~combout\))) # (!\vga_0|videoSync|pixel_column\(5) & (!\vga_0|videoSync|pixel_column\(4))))) # 
-- (!\vga_0|videoSync|pixel_column\(6) & (\vga_0|videoSync|pixel_column\(4) & (\vga_0|videoSync|pixel_column\(5) $ (\vga_0|videoGen|gameOverT_on~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoGen|gameOverT_on~combout\,
	combout => \vga_0|videoGen|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y25_N24
\vga_0|videoGen|char_addr[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[0]~13_combout\ = (!\vga_0|videoGen|placeShip_on~combout\ & ((\vga_0|videoSync|pixel_column\(7) & (!\vga_0|videoGen|Mux13~1_combout\)) # (!\vga_0|videoSync|pixel_column\(7) & ((!\vga_0|videoGen|Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoGen|Mux13~1_combout\,
	datac => \vga_0|videoGen|Mux13~0_combout\,
	datad => \vga_0|videoGen|placeShip_on~combout\,
	combout => \vga_0|videoGen|char_addr[0]~13_combout\);

-- Location: LCCOMB_X25_Y25_N20
\vga_0|videoGen|char_addr[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[0]~14_combout\ = (\vga_0|videoGen|char_addr[0]~12_combout\ & ((\vga_0|videoGen|char_addr[0]~13_combout\) # ((\vga_0|videoGen|Mux27~0_combout\ & \vga_0|videoGen|placeShip_on~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|Mux27~0_combout\,
	datab => \vga_0|videoGen|char_addr[0]~12_combout\,
	datac => \vga_0|videoGen|placeShip_on~combout\,
	datad => \vga_0|videoGen|char_addr[0]~13_combout\,
	combout => \vga_0|videoGen|char_addr[0]~14_combout\);

-- Location: LCFF_X28_Y25_N31
\vga_0|videoSync|pixel_column[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|h_count\(7),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(7));

-- Location: LCCOMB_X28_Y25_N8
\vga_0|videoGen|LessThan13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan13~4_combout\ = (!\vga_0|videoSync|pixel_column\(6) & !\vga_0|videoSync|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(7),
	combout => \vga_0|videoGen|LessThan13~4_combout\);

-- Location: LCCOMB_X27_Y22_N28
\vga_0|videoGen|illegal_on\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|illegal_on~combout\ = (!\vga_0|videoSync|pixel_column\(9) & (!\vga_0|videoSync|pixel_column\(8) & \vga_0|videoGen|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoSync|pixel_column\(8),
	datad => \vga_0|videoGen|Equal2~0_combout\,
	combout => \vga_0|videoGen|illegal_on~combout\);

-- Location: LCCOMB_X28_Y25_N30
\vga_0|videoGen|hit_on\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|hit_on~combout\ = (!\vga_0|videoSync|pixel_column\(9) & (!\vga_0|videoSync|pixel_column\(8) & \vga_0|videoGen|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoSync|pixel_column\(8),
	datad => \vga_0|videoGen|Equal3~1_combout\,
	combout => \vga_0|videoGen|hit_on~combout\);

-- Location: LCCOMB_X25_Y25_N26
\vga_0|videoGen|char_addr[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[0]~9_combout\ = (\vga_0|videoGen|char_addr[1]~8_combout\ & (((!\vga_0|videoSync|pixel_column\(5) & \vga_0|videoSync|pixel_column\(4))) # (!\vga_0|videoGen|hit_on~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr[1]~8_combout\,
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoGen|hit_on~combout\,
	combout => \vga_0|videoGen|char_addr[0]~9_combout\);

-- Location: LCCOMB_X25_Y25_N30
\vga_0|videoGen|char_addr[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[0]~11_combout\ = (\vga_0|videoGen|LessThan13~4_combout\ & ((\vga_0|videoGen|char_addr[0]~9_combout\) # ((\vga_0|videoGen|char_addr[0]~10_combout\ & !\vga_0|videoGen|illegal_on~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr[0]~10_combout\,
	datab => \vga_0|videoGen|LessThan13~4_combout\,
	datac => \vga_0|videoGen|illegal_on~combout\,
	datad => \vga_0|videoGen|char_addr[0]~9_combout\,
	combout => \vga_0|videoGen|char_addr[0]~11_combout\);

-- Location: LCCOMB_X25_Y25_N28
\vga_0|videoGen|char_addr[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[0]~15_combout\ = (\vga_0|videoGen|char_addr[0]~11_combout\) # ((!\vga_0|videoGen|char_addr[1]~8_combout\ & ((\vga_0|videoGen|char_addr[0]~51_combout\) # (\vga_0|videoGen|char_addr[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr[1]~8_combout\,
	datab => \vga_0|videoGen|char_addr[0]~51_combout\,
	datac => \vga_0|videoGen|char_addr[0]~14_combout\,
	datad => \vga_0|videoGen|char_addr[0]~11_combout\,
	combout => \vga_0|videoGen|char_addr[0]~15_combout\);

-- Location: LCCOMB_X25_Y25_N16
\vga_0|videoGen|char_addr[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr\(0) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoGen|char_addr[0]~15_combout\))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|char_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr\(0),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoGen|char_addr[0]~15_combout\,
	combout => \vga_0|videoGen|char_addr\(0));

-- Location: LCCOMB_X25_Y25_N24
\vga_0|videoGen|char_addr[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[0]~10_combout\ = (!\vga_0|videoSync|pixel_column\(4) & (\vga_0|videoGen|Equal2~0_combout\ & (!\vga_0|videoGen|Equal3~1_combout\ & !\vga_0|videoSync|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoGen|Equal2~0_combout\,
	datac => \vga_0|videoGen|Equal3~1_combout\,
	datad => \vga_0|videoSync|pixel_column\(9),
	combout => \vga_0|videoGen|char_addr[0]~10_combout\);

-- Location: LCCOMB_X27_Y22_N22
\vga_0|videoGen|char_addr[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[1]~8_combout\ = (!\vga_0|videoSync|pixel_column\(9) & \vga_0|videoGen|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|pixel_column\(9),
	datad => \vga_0|videoGen|Equal3~1_combout\,
	combout => \vga_0|videoGen|char_addr[1]~8_combout\);

-- Location: LCCOMB_X25_Y25_N6
\vga_0|videoGen|char_addr[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[1]~16_combout\ = (!\vga_0|videoSync|pixel_column\(6) & (\vga_0|videoSync|pixel_column\(5) & (!\vga_0|videoGen|LessThan13~3_combout\ & \vga_0|videoGen|char_addr[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoGen|LessThan13~3_combout\,
	datad => \vga_0|videoGen|char_addr[1]~8_combout\,
	combout => \vga_0|videoGen|char_addr[1]~16_combout\);

-- Location: LCCOMB_X25_Y25_N14
\vga_0|videoGen|char_addr[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[1]~18_combout\ = (!\vga_0|videoSync|pixel_column\(7) & ((\vga_0|videoGen|char_addr[1]~16_combout\) # ((\vga_0|videoGen|char_addr[1]~17_combout\ & \vga_0|videoGen|char_addr[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr[1]~17_combout\,
	datab => \vga_0|videoSync|pixel_column\(7),
	datac => \vga_0|videoGen|char_addr[0]~10_combout\,
	datad => \vga_0|videoGen|char_addr[1]~16_combout\,
	combout => \vga_0|videoGen|char_addr[1]~18_combout\);

-- Location: LCCOMB_X24_Y25_N20
\vga_0|videoGen|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux26~0_combout\ = (!\vga_0|videoSync|pixel_column\(7) & (\vga_0|videoSync|pixel_column\(5) & (\vga_0|videoSync|pixel_column\(4) $ (\vga_0|videoSync|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|Mux26~0_combout\);

-- Location: LCCOMB_X24_Y25_N18
\vga_0|videoGen|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux12~0_combout\ = (!\vga_0|videoSync|pixel_column\(7) & ((\vga_0|videoSync|pixel_column\(5) & (!\vga_0|videoSync|pixel_column\(4) & \vga_0|videoSync|pixel_column\(6))) # (!\vga_0|videoSync|pixel_column\(5) & 
-- (\vga_0|videoSync|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(4),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoSync|pixel_column\(6),
	combout => \vga_0|videoGen|Mux12~0_combout\);

-- Location: LCCOMB_X24_Y25_N12
\vga_0|videoGen|char_addr[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[1]~19_combout\ = (\vga_0|videoGen|gameOverT_on~combout\ & (\vga_0|videoSync|pixel_column\(5) & (\vga_0|videoGen|LessThan13~4_combout\))) # (!\vga_0|videoGen|gameOverT_on~combout\ & (((\vga_0|videoGen|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoGen|gameOverT_on~combout\,
	datac => \vga_0|videoGen|LessThan13~4_combout\,
	datad => \vga_0|videoGen|Mux12~0_combout\,
	combout => \vga_0|videoGen|char_addr[1]~19_combout\);

-- Location: LCCOMB_X24_Y25_N26
\vga_0|videoGen|char_addr[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[1]~20_combout\ = (\vga_0|videoGen|placeShip_on~combout\ & (\vga_0|videoGen|Mux26~0_combout\)) # (!\vga_0|videoGen|placeShip_on~combout\ & ((\vga_0|videoGen|char_addr[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|placeShip_on~combout\,
	datac => \vga_0|videoGen|Mux26~0_combout\,
	datad => \vga_0|videoGen|char_addr[1]~19_combout\,
	combout => \vga_0|videoGen|char_addr[1]~20_combout\);

-- Location: LCCOMB_X25_Y25_N8
\vga_0|videoGen|char_addr[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[1]~21_combout\ = (\vga_0|videoGen|char_addr[1]~18_combout\) # ((!\vga_0|videoGen|char_addr[1]~8_combout\ & (\vga_0|videoGen|char_addr[0]~12_combout\ & \vga_0|videoGen|char_addr[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr[1]~8_combout\,
	datab => \vga_0|videoGen|char_addr[0]~12_combout\,
	datac => \vga_0|videoGen|char_addr[1]~18_combout\,
	datad => \vga_0|videoGen|char_addr[1]~20_combout\,
	combout => \vga_0|videoGen|char_addr[1]~21_combout\);

-- Location: LCCOMB_X25_Y25_N22
\vga_0|videoGen|char_addr[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr\(1) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoGen|char_addr[1]~21_combout\))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|char_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|char_addr\(1),
	datac => \vga_0|videoGen|char_addr[1]~21_combout\,
	datad => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	combout => \vga_0|videoGen|char_addr\(1));

-- Location: LCCOMB_X28_Y25_N28
\vga_0|videoGen|char_addr[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[2]~24_combout\ = (!\vga_0|videoSync|pixel_column\(4) & (\vga_0|videoSync|pixel_column\(5) $ (((!\vga_0|videoGen|Equal3~1_combout\) # (!\vga_0|videoGen|LessThan13~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~3_combout\,
	datab => \vga_0|videoGen|Equal3~1_combout\,
	datac => \vga_0|videoSync|pixel_column\(5),
	datad => \vga_0|videoSync|pixel_column\(4),
	combout => \vga_0|videoGen|char_addr[2]~24_combout\);

-- Location: LCCOMB_X28_Y25_N18
\vga_0|videoGen|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux31~0_combout\ = (!\vga_0|videoSync|pixel_column\(7) & ((\vga_0|videoSync|pixel_column\(6) & (!\vga_0|videoSync|pixel_column\(4))) # (!\vga_0|videoSync|pixel_column\(6) & ((\vga_0|videoSync|pixel_column\(4)) # 
-- (\vga_0|videoSync|pixel_column\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|Mux31~0_combout\);

-- Location: LCCOMB_X27_Y25_N22
\vga_0|videoGen|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux25~0_combout\ = (!\vga_0|videoSync|pixel_column\(5) & (!\vga_0|videoSync|pixel_column\(7) & (\vga_0|videoSync|pixel_column\(6) $ (\vga_0|videoSync|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoSync|pixel_column\(7),
	combout => \vga_0|videoGen|Mux25~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\vga_0|videoGen|char_addr[2]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[2]~55_combout\ = (\vga_0|videoSync|pixel_column\(5) & (((!\vga_0|videoSync|pixel_column\(7))))) # (!\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoGen|gameOverT_on~combout\ & (!\vga_0|videoSync|pixel_column\(6))) # 
-- (!\vga_0|videoGen|gameOverT_on~combout\ & ((!\vga_0|videoSync|pixel_column\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoGen|gameOverT_on~combout\,
	combout => \vga_0|videoGen|char_addr[2]~55_combout\);

-- Location: LCCOMB_X27_Y25_N18
\vga_0|videoGen|char_addr[2]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[2]~56_combout\ = (\vga_0|videoGen|char_addr[2]~55_combout\ & ((\vga_0|videoSync|pixel_column\(6) & ((\vga_0|videoSync|pixel_column\(4)) # (!\vga_0|videoSync|pixel_column\(5)))) # (!\vga_0|videoSync|pixel_column\(6) & 
-- (\vga_0|videoSync|pixel_column\(5) $ (\vga_0|videoSync|pixel_column\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoGen|char_addr[2]~55_combout\,
	combout => \vga_0|videoGen|char_addr[2]~56_combout\);

-- Location: LCCOMB_X27_Y25_N28
\vga_0|videoGen|char_addr[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[2]~22_combout\ = (\vga_0|videoGen|char_addr[0]~12_combout\ & ((\vga_0|videoGen|placeShip_on~combout\ & (\vga_0|videoGen|Mux25~0_combout\)) # (!\vga_0|videoGen|placeShip_on~combout\ & 
-- ((\vga_0|videoGen|char_addr[2]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr[0]~12_combout\,
	datab => \vga_0|videoGen|Mux25~0_combout\,
	datac => \vga_0|videoGen|placeShip_on~combout\,
	datad => \vga_0|videoGen|char_addr[2]~56_combout\,
	combout => \vga_0|videoGen|char_addr[2]~22_combout\);

-- Location: LCCOMB_X27_Y25_N26
\vga_0|videoGen|char_addr[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[2]~23_combout\ = (!\vga_0|videoGen|char_addr[1]~8_combout\ & ((\vga_0|videoGen|char_addr[2]~22_combout\) # ((\vga_0|videoGen|illegal_on~combout\ & \vga_0|videoGen|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|illegal_on~combout\,
	datab => \vga_0|videoGen|Mux31~0_combout\,
	datac => \vga_0|videoGen|char_addr[1]~8_combout\,
	datad => \vga_0|videoGen|char_addr[2]~22_combout\,
	combout => \vga_0|videoGen|char_addr[2]~23_combout\);

-- Location: LCCOMB_X27_Y25_N0
\vga_0|videoGen|char_addr[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[2]~25_combout\ = (\vga_0|videoGen|char_addr[2]~23_combout\) # ((\vga_0|videoGen|LessThan13~4_combout\ & (\vga_0|videoGen|char_addr[1]~8_combout\ & \vga_0|videoGen|char_addr[2]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~4_combout\,
	datab => \vga_0|videoGen|char_addr[1]~8_combout\,
	datac => \vga_0|videoGen|char_addr[2]~24_combout\,
	datad => \vga_0|videoGen|char_addr[2]~23_combout\,
	combout => \vga_0|videoGen|char_addr[2]~25_combout\);

-- Location: LCCOMB_X27_Y25_N8
\vga_0|videoGen|char_addr[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr\(2) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoGen|char_addr[2]~25_combout\))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|char_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|char_addr\(2),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoGen|char_addr[2]~25_combout\,
	combout => \vga_0|videoGen|char_addr\(2));

-- Location: LCCOMB_X27_Y25_N14
\vga_0|videoGen|char_addr[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[3]~26_combout\ = (\vga_0|videoGen|gameOverT_on~combout\ & (!\vga_0|videoSync|pixel_column\(6) & ((!\vga_0|videoSync|pixel_column\(4))))) # (!\vga_0|videoGen|gameOverT_on~combout\ & (((!\vga_0|videoSync|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(7),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoGen|gameOverT_on~combout\,
	combout => \vga_0|videoGen|char_addr[3]~26_combout\);

-- Location: LCCOMB_X28_Y25_N6
\vga_0|videoGen|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux24~0_combout\ = (\vga_0|videoSync|pixel_column\(4) & (!\vga_0|videoSync|pixel_column\(7) & (\vga_0|videoSync|pixel_column\(5) $ (!\vga_0|videoSync|pixel_column\(6))))) # (!\vga_0|videoSync|pixel_column\(4) & 
-- (!\vga_0|videoSync|pixel_column\(5) & (!\vga_0|videoSync|pixel_column\(6) & \vga_0|videoSync|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(7),
	combout => \vga_0|videoGen|Mux24~0_combout\);

-- Location: LCCOMB_X27_Y25_N20
\vga_0|videoGen|char_addr[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[3]~27_combout\ = (\vga_0|videoGen|placeShip_on~combout\ & (((\vga_0|videoGen|Mux24~0_combout\)))) # (!\vga_0|videoGen|placeShip_on~combout\ & (!\vga_0|videoSync|pixel_column\(5) & (\vga_0|videoGen|char_addr[3]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoGen|placeShip_on~combout\,
	datac => \vga_0|videoGen|char_addr[3]~26_combout\,
	datad => \vga_0|videoGen|Mux24~0_combout\,
	combout => \vga_0|videoGen|char_addr[3]~27_combout\);

-- Location: LCCOMB_X27_Y25_N4
\vga_0|videoGen|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux30~0_combout\ = (\vga_0|videoSync|pixel_column\(7)) # ((\vga_0|videoSync|pixel_column\(5) & (\vga_0|videoSync|pixel_column\(4))) # (!\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoSync|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoSync|pixel_column\(6),
	combout => \vga_0|videoGen|Mux30~0_combout\);

-- Location: LCCOMB_X27_Y25_N10
\vga_0|videoGen|Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux37~0_combout\ = (!\vga_0|videoSync|pixel_column\(6) & (!\vga_0|videoSync|pixel_column\(7) & (\vga_0|videoSync|pixel_column\(5) $ (\vga_0|videoSync|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoSync|pixel_column\(7),
	combout => \vga_0|videoGen|Mux37~0_combout\);

-- Location: LCCOMB_X27_Y25_N30
\vga_0|videoGen|char_addr[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[3]~28_combout\ = (\vga_0|videoGen|LessThan13~3_combout\ & ((\vga_0|videoGen|Equal2~0_combout\ & (!\vga_0|videoGen|Mux30~0_combout\)) # (!\vga_0|videoGen|Equal2~0_combout\ & ((\vga_0|videoGen|Mux37~0_combout\))))) # 
-- (!\vga_0|videoGen|LessThan13~3_combout\ & (((\vga_0|videoGen|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~3_combout\,
	datab => \vga_0|videoGen|Equal2~0_combout\,
	datac => \vga_0|videoGen|Mux30~0_combout\,
	datad => \vga_0|videoGen|Mux37~0_combout\,
	combout => \vga_0|videoGen|char_addr[3]~28_combout\);

-- Location: LCCOMB_X27_Y25_N24
\vga_0|videoGen|char_addr[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[3]~29_combout\ = (!\vga_0|videoGen|char_addr[1]~8_combout\ & ((\vga_0|videoGen|char_addr[0]~12_combout\ & (\vga_0|videoGen|char_addr[3]~27_combout\)) # (!\vga_0|videoGen|char_addr[0]~12_combout\ & 
-- ((\vga_0|videoGen|char_addr[3]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr[0]~12_combout\,
	datab => \vga_0|videoGen|char_addr[1]~8_combout\,
	datac => \vga_0|videoGen|char_addr[3]~27_combout\,
	datad => \vga_0|videoGen|char_addr[3]~28_combout\,
	combout => \vga_0|videoGen|char_addr[3]~29_combout\);

-- Location: LCCOMB_X27_Y25_N6
\vga_0|videoGen|char_addr[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[3]~30_combout\ = (\vga_0|videoGen|char_addr[3]~29_combout\) # ((\vga_0|videoGen|LessThan13~4_combout\ & (!\vga_0|videoSync|pixel_column\(5) & \vga_0|videoGen|char_addr[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~4_combout\,
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoGen|char_addr[3]~29_combout\,
	datad => \vga_0|videoGen|char_addr[1]~8_combout\,
	combout => \vga_0|videoGen|char_addr[3]~30_combout\);

-- Location: LCCOMB_X27_Y25_N2
\vga_0|videoGen|char_addr[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr\(3) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoGen|char_addr[3]~30_combout\))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|char_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|char_addr\(3),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoGen|char_addr[3]~30_combout\,
	combout => \vga_0|videoGen|char_addr\(3));

-- Location: LCCOMB_X25_Y26_N26
\vga_0|videoGen|char_addr[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[4]~33_combout\ = (\vga_0|videoSync|pixel_column\(5) & (((!\vga_0|videoSync|pixel_column\(4)) # (!\vga_0|videoGen|LessThan13~3_combout\)) # (!\vga_0|videoGen|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|Equal3~1_combout\,
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoGen|LessThan13~3_combout\,
	datad => \vga_0|videoSync|pixel_column\(4),
	combout => \vga_0|videoGen|char_addr[4]~33_combout\);

-- Location: LCCOMB_X25_Y26_N24
\vga_0|videoGen|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux23~0_combout\ = (\vga_0|videoSync|pixel_column\(4) & ((\vga_0|videoSync|pixel_column\(6)) # ((!\vga_0|videoSync|pixel_column\(7))))) # (!\vga_0|videoSync|pixel_column\(4) & ((\vga_0|videoSync|pixel_column\(7)) # 
-- (\vga_0|videoSync|pixel_column\(6) $ (\vga_0|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|Mux23~0_combout\);

-- Location: LCCOMB_X25_Y26_N2
\vga_0|videoGen|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux9~0_combout\ = (\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoGen|gameOverT_on~combout\ $ (\vga_0|videoSync|pixel_column\(4))))) # (!\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoSync|pixel_column\(6)) # 
-- (\vga_0|videoGen|gameOverT_on~combout\ $ (\vga_0|videoSync|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoGen|gameOverT_on~combout\,
	datad => \vga_0|videoSync|pixel_column\(4),
	combout => \vga_0|videoGen|Mux9~0_combout\);

-- Location: LCCOMB_X25_Y26_N14
\vga_0|videoGen|char_addr[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[4]~31_combout\ = (\vga_0|videoGen|placeShip_on~combout\ & (((!\vga_0|videoGen|Mux23~0_combout\)))) # (!\vga_0|videoGen|placeShip_on~combout\ & (!\vga_0|videoSync|pixel_column\(7) & ((!\vga_0|videoGen|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoGen|placeShip_on~combout\,
	datac => \vga_0|videoGen|Mux23~0_combout\,
	datad => \vga_0|videoGen|Mux9~0_combout\,
	combout => \vga_0|videoGen|char_addr[4]~31_combout\);

-- Location: LCCOMB_X25_Y25_N10
\vga_0|videoGen|Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux36~0_combout\ = (\vga_0|videoSync|pixel_column\(6)) # ((\vga_0|videoSync|pixel_column\(7)) # (\vga_0|videoSync|pixel_column\(5) $ (\vga_0|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoSync|pixel_column\(7),
	combout => \vga_0|videoGen|Mux36~0_combout\);

-- Location: LCCOMB_X25_Y25_N2
\vga_0|videoGen|char_addr[4]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[4]~52_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoGen|Equal2~0_combout\ & (\vga_0|videoSync|pixel_column\(8) & !\vga_0|videoGen|Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoGen|Equal2~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(8),
	datad => \vga_0|videoGen|Mux36~0_combout\,
	combout => \vga_0|videoGen|char_addr[4]~52_combout\);

-- Location: LCCOMB_X25_Y26_N12
\vga_0|videoGen|char_addr[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[4]~32_combout\ = (!\vga_0|videoGen|char_addr[1]~8_combout\ & ((\vga_0|videoGen|char_addr[4]~52_combout\) # ((\vga_0|videoGen|char_addr[0]~12_combout\ & \vga_0|videoGen|char_addr[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr[0]~12_combout\,
	datab => \vga_0|videoGen|char_addr[1]~8_combout\,
	datac => \vga_0|videoGen|char_addr[4]~31_combout\,
	datad => \vga_0|videoGen|char_addr[4]~52_combout\,
	combout => \vga_0|videoGen|char_addr[4]~32_combout\);

-- Location: LCCOMB_X25_Y26_N28
\vga_0|videoGen|char_addr[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[4]~34_combout\ = (\vga_0|videoGen|char_addr[4]~32_combout\) # ((\vga_0|videoGen|char_addr[1]~8_combout\ & (\vga_0|videoGen|char_addr[4]~33_combout\ & \vga_0|videoGen|LessThan13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|char_addr[1]~8_combout\,
	datab => \vga_0|videoGen|char_addr[4]~33_combout\,
	datac => \vga_0|videoGen|LessThan13~4_combout\,
	datad => \vga_0|videoGen|char_addr[4]~32_combout\,
	combout => \vga_0|videoGen|char_addr[4]~34_combout\);

-- Location: LCCOMB_X25_Y26_N22
\vga_0|videoGen|char_addr[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr\(4) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoGen|char_addr[4]~34_combout\))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|char_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|char_addr\(4),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoGen|char_addr[4]~34_combout\,
	combout => \vga_0|videoGen|char_addr\(4));

-- Location: LCCOMB_X27_Y24_N4
\vga_0|videoGen|char_addr[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~42_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoSync|pixel_column\(8) & ((\vga_0|videoGen|Equal2~0_combout\) # (\vga_0|videoGen|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoGen|Equal2~0_combout\,
	datac => \vga_0|videoGen|Equal3~1_combout\,
	datad => \vga_0|videoSync|pixel_column\(8),
	combout => \vga_0|videoGen|char_addr[5]~42_combout\);

-- Location: LCCOMB_X27_Y24_N20
\vga_0|videoGen|Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux35~0_combout\ = (!\vga_0|videoSync|pixel_column\(6) & (!\vga_0|videoSync|pixel_column\(7) & ((\vga_0|videoSync|pixel_column\(4)) # (\vga_0|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(7),
	combout => \vga_0|videoGen|Mux35~0_combout\);

-- Location: LCCOMB_X28_Y24_N18
\vga_0|videoGen|char_addr[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~35_combout\ = (\vga_0|videoGen|Equal2~0_combout\ & ((\vga_0|videoGen|LessThan13~3_combout\) # ((!\vga_0|videoGen|placeShip_on~combout\ & \vga_0|videoGen|gameOverT_on~combout\)))) # (!\vga_0|videoGen|Equal2~0_combout\ & 
-- (((!\vga_0|videoGen|placeShip_on~combout\ & \vga_0|videoGen|gameOverT_on~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|Equal2~0_combout\,
	datab => \vga_0|videoGen|LessThan13~3_combout\,
	datac => \vga_0|videoGen|placeShip_on~combout\,
	datad => \vga_0|videoGen|gameOverT_on~combout\,
	combout => \vga_0|videoGen|char_addr[5]~35_combout\);

-- Location: LCCOMB_X27_Y24_N6
\vga_0|videoGen|char_addr[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~36_combout\ = (\vga_0|videoSync|pixel_column\(4) & (!\vga_0|videoGen|char_addr[5]~6_combout\ & (\vga_0|videoSync|pixel_column\(5) $ (!\vga_0|videoGen|char_addr[5]~35_combout\)))) # (!\vga_0|videoSync|pixel_column\(4) & 
-- ((\vga_0|videoGen|char_addr[5]~6_combout\ & ((\vga_0|videoGen|char_addr[5]~35_combout\))) # (!\vga_0|videoGen|char_addr[5]~6_combout\ & (\vga_0|videoSync|pixel_column\(5) & !\vga_0|videoGen|char_addr[5]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(4),
	datac => \vga_0|videoGen|char_addr[5]~6_combout\,
	datad => \vga_0|videoGen|char_addr[5]~35_combout\,
	combout => \vga_0|videoGen|char_addr[5]~36_combout\);

-- Location: LCCOMB_X27_Y24_N16
\vga_0|videoGen|char_addr[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~37_combout\ = (\vga_0|videoSync|pixel_column\(6) & (!\vga_0|videoSync|pixel_column\(7) & !\vga_0|videoGen|char_addr[5]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoGen|char_addr[5]~36_combout\,
	combout => \vga_0|videoGen|char_addr[5]~37_combout\);

-- Location: LCCOMB_X28_Y24_N24
\vga_0|videoGen|char_addr[5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~38_combout\ = (\vga_0|videoSync|pixel_column\(4) & (((\vga_0|videoGen|char_addr[5]~35_combout\) # (!\vga_0|videoGen|char_addr[5]~6_combout\)) # (!\vga_0|videoSync|pixel_column\(5)))) # (!\vga_0|videoSync|pixel_column\(4) & 
-- (\vga_0|videoSync|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoGen|char_addr[5]~6_combout\,
	datad => \vga_0|videoGen|char_addr[5]~35_combout\,
	combout => \vga_0|videoGen|char_addr[5]~38_combout\);

-- Location: LCCOMB_X28_Y24_N10
\vga_0|videoGen|char_addr[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~39_combout\ = (\vga_0|videoGen|char_addr[5]~35_combout\ & (((\vga_0|videoSync|pixel_column\(4) & \vga_0|videoSync|pixel_column\(5))) # (!\vga_0|videoGen|char_addr[5]~6_combout\))) # (!\vga_0|videoGen|char_addr[5]~35_combout\ & 
-- ((\vga_0|videoSync|pixel_column\(4) & ((\vga_0|videoGen|char_addr[5]~6_combout\))) # (!\vga_0|videoSync|pixel_column\(4) & (\vga_0|videoSync|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoGen|char_addr[5]~6_combout\,
	datad => \vga_0|videoGen|char_addr[5]~35_combout\,
	combout => \vga_0|videoGen|char_addr[5]~39_combout\);

-- Location: LCCOMB_X28_Y24_N30
\vga_0|videoGen|char_addr[5]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~40_combout\ = (!\vga_0|videoSync|pixel_column\(6) & ((\vga_0|videoSync|pixel_column\(7) & ((!\vga_0|videoGen|char_addr[5]~39_combout\))) # (!\vga_0|videoSync|pixel_column\(7) & (\vga_0|videoGen|char_addr[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoGen|char_addr[5]~38_combout\,
	datad => \vga_0|videoGen|char_addr[5]~39_combout\,
	combout => \vga_0|videoGen|char_addr[5]~40_combout\);

-- Location: LCCOMB_X27_Y24_N30
\vga_0|videoGen|char_addr[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~41_combout\ = (\vga_0|videoGen|hit_on~combout\ & (\vga_0|videoGen|Mux37~0_combout\)) # (!\vga_0|videoGen|hit_on~combout\ & (((\vga_0|videoGen|char_addr[5]~37_combout\) # (\vga_0|videoGen|char_addr[5]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|hit_on~combout\,
	datab => \vga_0|videoGen|Mux37~0_combout\,
	datac => \vga_0|videoGen|char_addr[5]~37_combout\,
	datad => \vga_0|videoGen|char_addr[5]~40_combout\,
	combout => \vga_0|videoGen|char_addr[5]~41_combout\);

-- Location: LCCOMB_X27_Y24_N2
\vga_0|videoGen|char_addr[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[5]~43_combout\ = (\vga_0|videoGen|char_addr[5]~42_combout\ & (\vga_0|videoGen|Mux35~0_combout\)) # (!\vga_0|videoGen|char_addr[5]~42_combout\ & ((\vga_0|videoGen|char_addr[5]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|char_addr[5]~42_combout\,
	datac => \vga_0|videoGen|Mux35~0_combout\,
	datad => \vga_0|videoGen|char_addr[5]~41_combout\,
	combout => \vga_0|videoGen|char_addr[5]~43_combout\);

-- Location: LCCOMB_X27_Y24_N8
\vga_0|videoGen|char_addr[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr\(5) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoGen|char_addr[5]~43_combout\))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|char_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|char_addr\(5),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoGen|char_addr[5]~43_combout\,
	combout => \vga_0|videoGen|char_addr\(5));

-- Location: LCCOMB_X27_Y24_N24
\vga_0|videoGen|char_addr[6]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[6]~46_combout\ = (!\vga_0|videoGen|hit_on~combout\ & (!\vga_0|videoGen|char_addr[5]~42_combout\ & (\vga_0|videoGen|char_addr[5]~6_combout\ $ (!\vga_0|videoGen|char_addr[5]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|hit_on~combout\,
	datab => \vga_0|videoGen|char_addr[5]~42_combout\,
	datac => \vga_0|videoGen|char_addr[5]~6_combout\,
	datad => \vga_0|videoGen|char_addr[5]~35_combout\,
	combout => \vga_0|videoGen|char_addr[6]~46_combout\);

-- Location: LCCOMB_X27_Y24_N28
\vga_0|videoGen|char_addr[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[6]~44_combout\ = (\vga_0|videoSync|pixel_column\(5) & (\vga_0|videoGen|char_addr[5]~6_combout\ & (\vga_0|videoSync|pixel_column\(4) $ (\vga_0|videoGen|char_addr[5]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(4),
	datac => \vga_0|videoGen|char_addr[5]~6_combout\,
	datad => \vga_0|videoGen|char_addr[5]~35_combout\,
	combout => \vga_0|videoGen|char_addr[6]~44_combout\);

-- Location: LCCOMB_X27_Y24_N26
\vga_0|videoGen|char_addr[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[6]~45_combout\ = (!\vga_0|videoSync|pixel_column\(7) & ((\vga_0|videoGen|char_addr[5]~42_combout\) # ((!\vga_0|videoGen|hit_on~combout\ & !\vga_0|videoGen|char_addr[6]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|hit_on~combout\,
	datab => \vga_0|videoGen|char_addr[5]~42_combout\,
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoGen|char_addr[6]~44_combout\,
	combout => \vga_0|videoGen|char_addr[6]~45_combout\);

-- Location: LCCOMB_X27_Y24_N14
\vga_0|videoGen|char_addr[6]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[6]~47_combout\ = (\vga_0|videoGen|char_addr[6]~45_combout\) # ((\vga_0|videoSync|pixel_column\(7) & (!\vga_0|videoSync|pixel_column\(5) & \vga_0|videoGen|char_addr[6]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoGen|char_addr[6]~46_combout\,
	datad => \vga_0|videoGen|char_addr[6]~45_combout\,
	combout => \vga_0|videoGen|char_addr[6]~47_combout\);

-- Location: LCCOMB_X27_Y24_N12
\vga_0|videoGen|char_addr[6]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[6]~48_combout\ = (\vga_0|videoSync|pixel_column\(4) & (!\vga_0|videoGen|char_addr[5]~6_combout\ & (\vga_0|videoSync|pixel_column\(5) $ (!\vga_0|videoGen|char_addr[5]~35_combout\)))) # (!\vga_0|videoSync|pixel_column\(4) & 
-- (((\vga_0|videoGen|char_addr[5]~6_combout\ & \vga_0|videoGen|char_addr[5]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(4),
	datac => \vga_0|videoGen|char_addr[5]~6_combout\,
	datad => \vga_0|videoGen|char_addr[5]~35_combout\,
	combout => \vga_0|videoGen|char_addr[6]~48_combout\);

-- Location: LCCOMB_X27_Y24_N0
\vga_0|videoGen|char_addr[6]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[6]~53_combout\ = (!\vga_0|videoSync|pixel_column\(7) & ((\vga_0|videoGen|hit_on~combout\ & (!\vga_0|videoSync|pixel_column\(6))) # (!\vga_0|videoGen|hit_on~combout\ & (\vga_0|videoSync|pixel_column\(6) & 
-- !\vga_0|videoGen|char_addr[6]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|hit_on~combout\,
	datab => \vga_0|videoSync|pixel_column\(7),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoGen|char_addr[6]~48_combout\,
	combout => \vga_0|videoGen|char_addr[6]~53_combout\);

-- Location: LCCOMB_X27_Y24_N10
\vga_0|videoGen|char_addr[6]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[6]~54_combout\ = (\vga_0|videoGen|char_addr[6]~53_combout\ & (((\vga_0|videoSync|pixel_column\(6)) # (!\vga_0|videoSync|pixel_column\(5))) # (!\vga_0|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoGen|char_addr[6]~53_combout\,
	combout => \vga_0|videoGen|char_addr[6]~54_combout\);

-- Location: LCCOMB_X27_Y24_N22
\vga_0|videoGen|char_addr[6]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr[6]~49_combout\ = (\vga_0|videoSync|pixel_column\(6) & (!\vga_0|videoGen|char_addr[5]~42_combout\ & ((\vga_0|videoGen|char_addr[6]~54_combout\)))) # (!\vga_0|videoSync|pixel_column\(6) & ((\vga_0|videoGen|char_addr[6]~47_combout\) 
-- # ((!\vga_0|videoGen|char_addr[5]~42_combout\ & \vga_0|videoGen|char_addr[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoGen|char_addr[5]~42_combout\,
	datac => \vga_0|videoGen|char_addr[6]~47_combout\,
	datad => \vga_0|videoGen|char_addr[6]~54_combout\,
	combout => \vga_0|videoGen|char_addr[6]~49_combout\);

-- Location: LCCOMB_X27_Y24_N18
\vga_0|videoGen|char_addr[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|char_addr\(6) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoGen|char_addr[6]~49_combout\))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|char_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|char_addr\(6),
	datac => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	datad => \vga_0|videoGen|char_addr[6]~49_combout\,
	combout => \vga_0|videoGen|char_addr\(6));

-- Location: M4K_X26_Y22
\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"003AB400000000B000C00030000000000000300000ED2C0030EAA80000B4780000FAA800001EA80000EAA80000155D4000E1EC0000FFF80000EAAC003FFFF80000EAAC0000FFF80000AABC000040001000FFFFF01F0000000040040000FFFFF038EAAC0000FFFFD000EAEC0000EAB40000EAAC0000FFFFF000EACC00000000050C000000000000B40040001000007E000055555000EB40B000401EA000AD07A000FEAAA0001EAAA000EAAAA0004000B000E81EB000FFFFF000EAAAB000FFFFF000EAAAB000AAAFE000AAAFE000FFFFF000FFFFF000EA00000040001000AABAA0007AAAD000FFFFF000FFFFF000FFFFF0007AAAD000FFFFF000AAEB4000EAAAB0",
	mem_init0 => X"000002B000D001C000030C000001D000004000000000000000C03AB000EABAB0005500B000EABAD000E03AB00000ED0000E010B000EB40B000C0034000EBEAB0002D0000000000000000C000010000000000C000000DDC0000400010000555000000035400EAB7D0002D0A0000E03AB000FFFFC0000001FC00000540000000000005FF00003FD4000007F400000EA0000007F4000000C000001C00000000034001C7034000FF00000387ADEC00003AB000F3FFF00007034000007400002FFFE00009D80002FFFFF000FD5550000C7FD000EAB400FFE14BFF001EB400FFFEBFFF000140000043FD000043F5000007F400001FFF0000FFBEF000C0413000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/battleships.ram0_fontROM_16852496.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "VGA_top_level:vga_0|pixelGenerator:videoGen|fontROM:font_unit|altsyncram:ROM_rtl_0|altsyncram_0771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y23_N0
\vga_0|videoGen|Mux653~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux653~2_combout\ = (\vga_0|videoGen|bit_addr\(0) & ((\vga_0|videoGen|bit_addr\(1)) # ((\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a6\)))) # (!\vga_0|videoGen|bit_addr\(0) & (!\vga_0|videoGen|bit_addr\(1) & 
-- (\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|bit_addr\(0),
	datab => \vga_0|videoGen|bit_addr\(1),
	datac => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a7\,
	datad => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a6\,
	combout => \vga_0|videoGen|Mux653~2_combout\);

-- Location: LCCOMB_X27_Y23_N14
\vga_0|videoGen|Mux653~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux653~3_combout\ = (\vga_0|videoGen|bit_addr\(1) & ((\vga_0|videoGen|Mux653~2_combout\ & (\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\)) # (!\vga_0|videoGen|Mux653~2_combout\ & 
-- ((\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\))))) # (!\vga_0|videoGen|bit_addr\(1) & (((\vga_0|videoGen|Mux653~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datab => \vga_0|videoGen|bit_addr\(1),
	datac => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datad => \vga_0|videoGen|Mux653~2_combout\,
	combout => \vga_0|videoGen|Mux653~3_combout\);

-- Location: LCFF_X31_Y26_N7
\vga_0|videoSync|h_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|h_count\(1));

-- Location: LCFF_X28_Y26_N17
\vga_0|videoSync|pixel_column[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|h_count\(1),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(1));

-- Location: LCCOMB_X28_Y26_N24
\vga_0|videoGen|bit_addr[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|bit_addr\(0) = (GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & ((\vga_0|videoSync|pixel_column\(1)))) # (!GLOBAL(\vga_0|videoGen|char_addr[5]~7clkctrl_outclk\) & (\vga_0|videoGen|bit_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|bit_addr\(0),
	datac => \vga_0|videoSync|pixel_column\(1),
	datad => \vga_0|videoGen|char_addr[5]~7clkctrl_outclk\,
	combout => \vga_0|videoGen|bit_addr\(0));

-- Location: M4K_X26_Y26
\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"003FE000000000B0000030000000000000C0003000F02C000BFFFC000078B40000F55400002D540000EAA80000B0080000B838000000F8003AAAAC0000BFF80000BFF80000FFF80000557C000080000000F82C002FFFFCF00080000000FFF8000AAAAC000000028000B0F80000EAAAA000B0380000BFE00000EAA000000000000C000000000000E000AAAAA0007E00000080002000D00B7000802D50005E0B5000FD5550002D555000BFFFF00080007000BF83E000FFAFE00EBFFFE000002FE000BFFFE000FFFFF000555FD000F4000000FE0BF0002AAAB00080002000FFFFF0007FC1E0000001F000F401F0002FFF8000B401E000BFEFE000FFFE00008BFFE0",
	mem_init0 => X"00000BE00002E00000030C0000E002C00000000000000000002FFFE000BFEFE000002FF000BFE00000BFE03000EAEAA000BFEFE000F00BE000C0000000BFFFE000002D00000000000000C000000000000000C000000EEC00000AAA00008000200000000000EAB28000F02D0000BFE1E000AEAE80000002FC00000A80000000000000AF00003E8000000BF800000C00000000C0000002E000002C00000000038000CB038000FF000002E2F8380055557000F3FFF0000B0380007FFFF4000030000006E40000FD577000000370000CBFE0002A85F0FFD287FF002D7800FFFD7FFF000280000083FE000083FA000002E000000BFE0000FF7DF000C0823000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/battleships.ram0_fontROM_16852496.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "VGA_top_level:vga_0|pixelGenerator:videoGen|fontROM:font_unit|altsyncram:ROM_rtl_0|altsyncram_0771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y23_N12
\vga_0|videoGen|Mux653~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux653~0_combout\ = (\vga_0|videoGen|bit_addr\(0) & (\vga_0|videoGen|bit_addr\(1))) # (!\vga_0|videoGen|bit_addr\(0) & ((\vga_0|videoGen|bit_addr\(1) & (\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\)) # 
-- (!\vga_0|videoGen|bit_addr\(1) & ((\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|bit_addr\(0),
	datab => \vga_0|videoGen|bit_addr\(1),
	datac => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datad => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a3\,
	combout => \vga_0|videoGen|Mux653~0_combout\);

-- Location: LCCOMB_X27_Y23_N22
\vga_0|videoGen|Mux653~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux653~1_combout\ = (\vga_0|videoGen|bit_addr\(0) & ((\vga_0|videoGen|Mux653~0_combout\ & (\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\vga_0|videoGen|Mux653~0_combout\ & 
-- ((\vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a2\))))) # (!\vga_0|videoGen|bit_addr\(0) & (((\vga_0|videoGen|Mux653~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \vga_0|videoGen|bit_addr\(0),
	datac => \vga_0|videoGen|font_unit|ROM_rtl_0|auto_generated|ram_block1a2\,
	datad => \vga_0|videoGen|Mux653~0_combout\,
	combout => \vga_0|videoGen|Mux653~1_combout\);

-- Location: LCCOMB_X27_Y23_N28
\vga_0|videoGen|Mux653~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Mux653~4_combout\ = (\vga_0|videoGen|bit_addr\(2) & ((\vga_0|videoGen|Mux653~1_combout\))) # (!\vga_0|videoGen|bit_addr\(2) & (\vga_0|videoGen|Mux653~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|bit_addr\(2),
	datac => \vga_0|videoGen|Mux653~3_combout\,
	datad => \vga_0|videoGen|Mux653~1_combout\,
	combout => \vga_0|videoGen|Mux653~4_combout\);

-- Location: LCCOMB_X30_Y24_N0
\vga_0|videoGen|LessThan35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan35~2_combout\ = (!\vga_0|videoSync|pixel_row\(5) & (!\vga_0|videoSync|pixel_row\(6) & !\vga_0|videoSync|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datac => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|LessThan35~2_combout\);

-- Location: LCFF_X29_Y24_N21
\vga_0|videoSync|pixel_row[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|v_count\(0),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_row\(0));

-- Location: LCCOMB_X29_Y24_N14
\vga_0|videoGen|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan4~0_combout\ = (\vga_0|videoSync|pixel_row\(2) & (\vga_0|videoSync|pixel_row\(0) & \vga_0|videoSync|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(2),
	datac => \vga_0|videoSync|pixel_row\(0),
	datad => \vga_0|videoSync|pixel_row\(1),
	combout => \vga_0|videoGen|LessThan4~0_combout\);

-- Location: LCCOMB_X31_Y24_N0
\vga_0|videoGen|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan4~1_combout\ = (\vga_0|videoSync|pixel_row\(3)) # ((\vga_0|videoGen|LessThan4~0_combout\) # (!\vga_0|videoGen|LessThan35~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_row\(3),
	datac => \vga_0|videoGen|LessThan35~2_combout\,
	datad => \vga_0|videoGen|LessThan4~0_combout\,
	combout => \vga_0|videoGen|LessThan4~1_combout\);

-- Location: LCCOMB_X29_Y24_N28
\vga_0|videoGen|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan3~0_combout\ = (\vga_0|videoSync|pixel_row\(3) & ((\vga_0|videoSync|pixel_row\(2)) # (\vga_0|videoSync|pixel_row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_row\(3),
	datac => \vga_0|videoSync|pixel_row\(2),
	datad => \vga_0|videoSync|pixel_row\(1),
	combout => \vga_0|videoGen|LessThan3~0_combout\);

-- Location: LCCOMB_X31_Y24_N6
\vga_0|videoGen|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan3~1_combout\ = ((!\vga_0|videoSync|pixel_row\(5) & ((!\vga_0|videoGen|LessThan3~0_combout\) # (!\vga_0|videoSync|pixel_row\(4))))) # (!\vga_0|videoSync|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_row\(4),
	datac => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoGen|LessThan3~0_combout\,
	combout => \vga_0|videoGen|LessThan3~1_combout\);

-- Location: LCCOMB_X31_Y24_N10
\vga_0|videoGen|pixelDraw~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~78_combout\ = (\vga_0|videoSync|pixel_row\(8) & (((!\vga_0|videoSync|pixel_row\(7))) # (!\vga_0|videoGen|LessThan4~1_combout\))) # (!\vga_0|videoSync|pixel_row\(8) & (((\vga_0|videoSync|pixel_row\(7)) # 
-- (!\vga_0|videoGen|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(8),
	datab => \vga_0|videoGen|LessThan4~1_combout\,
	datac => \vga_0|videoSync|pixel_row\(7),
	datad => \vga_0|videoGen|LessThan3~1_combout\,
	combout => \vga_0|videoGen|pixelDraw~78_combout\);

-- Location: LCFF_X28_Y26_N27
\vga_0|videoSync|pixel_column[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|h_count\(0),
	sload => VCC,
	ena => \vga_0|videoSync|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|pixel_column\(0));

-- Location: LCCOMB_X29_Y25_N14
\vga_0|videoGen|LessThan93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan93~0_combout\ = ((!\vga_0|videoSync|pixel_column\(2)) # (!\vga_0|videoSync|pixel_column\(0))) # (!\vga_0|videoSync|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(1),
	datab => \vga_0|videoSync|pixel_column\(0),
	datac => \vga_0|videoSync|pixel_column\(2),
	combout => \vga_0|videoGen|LessThan93~0_combout\);

-- Location: LCCOMB_X31_Y25_N28
\vga_0|videoGen|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan6~0_combout\ = (\vga_0|videoSync|pixel_column\(4) & (\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoSync|pixel_column\(3)) # (!\vga_0|videoGen|LessThan93~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(3),
	datab => \vga_0|videoSync|pixel_column\(4),
	datac => \vga_0|videoGen|LessThan93~0_combout\,
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|LessThan6~0_combout\);

-- Location: LCCOMB_X29_Y25_N10
\vga_0|videoGen|LessThan773~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan773~0_combout\ = (!\vga_0|videoSync|pixel_column\(7) & !\vga_0|videoSync|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoSync|pixel_column\(8),
	combout => \vga_0|videoGen|LessThan773~0_combout\);

-- Location: LCCOMB_X31_Y25_N24
\vga_0|videoGen|pixelDraw~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~75_combout\ = (\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoGen|LessThan773~0_combout\ & ((!\vga_0|videoGen|LessThan6~0_combout\) # (!\vga_0|videoSync|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoGen|LessThan6~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(9),
	datad => \vga_0|videoGen|LessThan773~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~75_combout\);

-- Location: LCCOMB_X30_Y25_N24
\vga_0|videoGen|LessThan373~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan373~2_combout\ = (!\vga_0|videoSync|pixel_column\(4) & !\vga_0|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datac => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|LessThan373~2_combout\);

-- Location: LCCOMB_X31_Y25_N10
\vga_0|videoGen|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan5~0_combout\ = (\vga_0|videoGen|LessThan373~2_combout\ & (((!\vga_0|videoSync|pixel_column\(2) & !\vga_0|videoSync|pixel_column\(1))) # (!\vga_0|videoSync|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(3),
	datab => \vga_0|videoSync|pixel_column\(2),
	datac => \vga_0|videoSync|pixel_column\(1),
	datad => \vga_0|videoGen|LessThan373~2_combout\,
	combout => \vga_0|videoGen|LessThan5~0_combout\);

-- Location: LCCOMB_X31_Y25_N2
\vga_0|videoGen|pixelDraw~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~76_combout\ = (\vga_0|videoSync|pixel_column\(7)) # ((\vga_0|videoSync|pixel_column\(6) & !\vga_0|videoGen|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoGen|LessThan5~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~76_combout\);

-- Location: LCCOMB_X31_Y25_N8
\vga_0|videoGen|pixelDraw~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~77_combout\ = (\vga_0|videoGen|pixelDraw~75_combout\) # ((!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoSync|pixel_column\(8) & \vga_0|videoGen|pixelDraw~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoSync|pixel_column\(8),
	datac => \vga_0|videoGen|pixelDraw~75_combout\,
	datad => \vga_0|videoGen|pixelDraw~76_combout\,
	combout => \vga_0|videoGen|pixelDraw~77_combout\);

-- Location: LCCOMB_X31_Y25_N18
\vga_0|videoGen|pixelDraw~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~74_combout\ = (\vga_0|videoGen|LessThan13~4_combout\ & ((\vga_0|videoSync|pixel_column\(8) & ((!\vga_0|videoGen|LessThan6~0_combout\))) # (!\vga_0|videoSync|pixel_column\(8) & (!\vga_0|videoGen|LessThan5~0_combout\)))) # 
-- (!\vga_0|videoGen|LessThan13~4_combout\ & (((!\vga_0|videoSync|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan5~0_combout\,
	datab => \vga_0|videoGen|LessThan13~4_combout\,
	datac => \vga_0|videoSync|pixel_column\(8),
	datad => \vga_0|videoGen|LessThan6~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~74_combout\);

-- Location: LCCOMB_X31_Y25_N30
\vga_0|videoGen|colorAddress~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~173_combout\ = ((!\vga_0|videoGen|pixelDraw~77_combout\ & ((\vga_0|videoSync|pixel_column\(9)) # (!\vga_0|videoGen|pixelDraw~74_combout\)))) # (!\vga_0|videoGen|pixelDraw~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoGen|pixelDraw~78_combout\,
	datac => \vga_0|videoGen|pixelDraw~77_combout\,
	datad => \vga_0|videoGen|pixelDraw~74_combout\,
	combout => \vga_0|videoGen|colorAddress~173_combout\);

-- Location: LCCOMB_X24_Y23_N16
\vga_0|videoGen|colorAddress~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~174_combout\ = (\vga_0|videoGen|colorAddress~173_combout\ & ((!\vga_0|videoGen|Mux653~4_combout\) # (!\vga_0|videoGen|gameOverT_on~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|gameOverT_on~combout\,
	datac => \vga_0|videoGen|Mux653~4_combout\,
	datad => \vga_0|videoGen|colorAddress~173_combout\,
	combout => \vga_0|videoGen|colorAddress~174_combout\);

-- Location: LCCOMB_X30_Y24_N2
\vga_0|videoGen|LessThan48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan48~0_combout\ = (!\vga_0|videoSync|pixel_row\(3) & ((!\vga_0|videoSync|pixel_row\(2)) # (!\vga_0|videoSync|pixel_row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(3),
	datab => \vga_0|videoSync|pixel_row\(1),
	datac => \vga_0|videoSync|pixel_row\(2),
	combout => \vga_0|videoGen|LessThan48~0_combout\);

-- Location: LCCOMB_X29_Y26_N16
\vga_0|videoGen|pixelDraw~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~29_combout\ = (!\vga_0|videoSync|pixel_row\(8) & (((!\vga_0|videoSync|pixel_row\(5) & !\vga_0|videoSync|pixel_row\(6))) # (!\vga_0|videoSync|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(8),
	datab => \vga_0|videoSync|pixel_row\(5),
	datac => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoSync|pixel_row\(7),
	combout => \vga_0|videoGen|pixelDraw~29_combout\);

-- Location: LCCOMB_X29_Y26_N4
\vga_0|videoGen|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan12~0_combout\ = (\vga_0|videoSync|pixel_row\(5) & (\vga_0|videoSync|pixel_row\(4) & (\vga_0|videoSync|pixel_row\(6) & \vga_0|videoSync|pixel_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_row\(4),
	datac => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoSync|pixel_row\(3),
	combout => \vga_0|videoGen|LessThan12~0_combout\);

-- Location: LCCOMB_X29_Y24_N20
\vga_0|videoGen|LessThan15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan15~0_combout\ = (!\vga_0|videoSync|pixel_row\(2) & (!\vga_0|videoSync|pixel_row\(0) & !\vga_0|videoSync|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(2),
	datac => \vga_0|videoSync|pixel_row\(0),
	datad => \vga_0|videoSync|pixel_row\(1),
	combout => \vga_0|videoGen|LessThan15~0_combout\);

-- Location: LCCOMB_X29_Y26_N12
\vga_0|videoGen|pixelDraw~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~30_combout\ = (\vga_0|videoGen|pixelDraw~29_combout\ & (((\vga_0|videoGen|LessThan12~0_combout\ & !\vga_0|videoGen|LessThan15~0_combout\)) # (!\vga_0|videoGen|LessThan15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan15~1_combout\,
	datab => \vga_0|videoGen|pixelDraw~29_combout\,
	datac => \vga_0|videoGen|LessThan12~0_combout\,
	datad => \vga_0|videoGen|LessThan15~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~30_combout\);

-- Location: LCCOMB_X29_Y26_N2
\vga_0|videoGen|pixelDraw~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~31_combout\ = (\vga_0|videoGen|pixelDraw~30_combout\ & (((\vga_0|videoGen|LessThan48~0_combout\) # (!\vga_0|videoSync|pixel_row\(4))) # (!\vga_0|videoSync|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(7),
	datab => \vga_0|videoSync|pixel_row\(4),
	datac => \vga_0|videoGen|LessThan48~0_combout\,
	datad => \vga_0|videoGen|pixelDraw~30_combout\,
	combout => \vga_0|videoGen|pixelDraw~31_combout\);

-- Location: LCCOMB_X29_Y26_N22
\vga_0|videoGen|LessThan15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan15~1_combout\ = (!\vga_0|videoSync|pixel_row\(8) & !\vga_0|videoSync|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_row\(8),
	datad => \vga_0|videoSync|pixel_row\(7),
	combout => \vga_0|videoGen|LessThan15~1_combout\);

-- Location: LCCOMB_X29_Y26_N26
\vga_0|videoGen|LessThan11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan11~2_combout\ = ((!\vga_0|videoSync|pixel_row\(5) & ((!\vga_0|videoSync|pixel_row\(3)) # (!\vga_0|videoSync|pixel_row\(4))))) # (!\vga_0|videoSync|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_row\(4),
	datac => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoSync|pixel_row\(3),
	combout => \vga_0|videoGen|LessThan11~2_combout\);

-- Location: LCCOMB_X29_Y26_N0
\vga_0|videoGen|pixelDraw~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~46_combout\ = (!\vga_0|videoGen|LessThan11~1_combout\ & (\vga_0|videoGen|LessThan15~1_combout\ & (!\vga_0|videoGen|LessThan12~0_combout\ & !\vga_0|videoGen|LessThan11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan11~1_combout\,
	datab => \vga_0|videoGen|LessThan15~1_combout\,
	datac => \vga_0|videoGen|LessThan12~0_combout\,
	datad => \vga_0|videoGen|LessThan11~2_combout\,
	combout => \vga_0|videoGen|pixelDraw~46_combout\);

-- Location: LCCOMB_X25_Y23_N22
\vga_0|videoGen|colorAddress~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~199_combout\ = (\vga_0|videoGen|pixelDraw~19_combout\ & ((\vga_0|videoGen|pixelDraw~31_combout\) # ((\vga_0|videoGen|colorAddress~174_combout\ & !\vga_0|videoGen|pixelDraw~46_combout\)))) # 
-- (!\vga_0|videoGen|pixelDraw~19_combout\ & (\vga_0|videoGen|colorAddress~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~19_combout\,
	datab => \vga_0|videoGen|colorAddress~174_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|pixelDraw~46_combout\,
	combout => \vga_0|videoGen|colorAddress~199_combout\);

-- Location: LCCOMB_X28_Y26_N16
\vga_0|videoGen|LessThan53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan53~0_combout\ = (\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoSync|pixel_column\(4)) # (\vga_0|videoSync|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(3),
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|LessThan53~0_combout\);

-- Location: LCCOMB_X28_Y26_N20
\vga_0|videoGen|LessThan13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan13~1_combout\ = (!\vga_0|videoSync|pixel_column\(2) & ((!\vga_0|videoSync|pixel_column\(0)) # (!\vga_0|videoSync|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_column\(2),
	datac => \vga_0|videoSync|pixel_column\(1),
	datad => \vga_0|videoSync|pixel_column\(0),
	combout => \vga_0|videoGen|LessThan13~1_combout\);

-- Location: LCCOMB_X25_Y23_N8
\vga_0|videoGen|LessThan13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan13~2_combout\ = (!\vga_0|videoSync|pixel_column\(4) & (!\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoGen|LessThan13~1_combout\) # (!\vga_0|videoSync|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(3),
	datac => \vga_0|videoSync|pixel_column\(5),
	datad => \vga_0|videoGen|LessThan13~1_combout\,
	combout => \vga_0|videoGen|LessThan13~2_combout\);

-- Location: LCCOMB_X30_Y22_N16
\vga_0|videoGen|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan13~0_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (!\vga_0|videoSync|pixel_column\(8) & (!\vga_0|videoSync|pixel_column\(7) & !\vga_0|videoSync|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoSync|pixel_column\(8),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoSync|pixel_column\(6),
	combout => \vga_0|videoGen|LessThan13~0_combout\);

-- Location: LCCOMB_X25_Y23_N2
\vga_0|videoGen|pixelDraw~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~81_combout\ = ((\vga_0|videoGen|LessThan53~0_combout\) # ((\vga_0|videoGen|LessThan13~2_combout\) # (!\vga_0|videoGen|LessThan13~0_combout\))) # (!\vga_0|videoGen|pixelDraw~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~21_combout\,
	datab => \vga_0|videoGen|LessThan53~0_combout\,
	datac => \vga_0|videoGen|LessThan13~2_combout\,
	datad => \vga_0|videoGen|LessThan13~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~81_combout\);

-- Location: LCCOMB_X25_Y23_N16
\vga_0|videoGen|pixelDraw~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~82_combout\ = ((\vga_0|videoGen|LessThan53~0_combout\) # ((\vga_0|videoGen|LessThan13~2_combout\) # (!\vga_0|videoGen|LessThan13~0_combout\))) # (!\vga_0|videoGen|pixelDraw~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~22_combout\,
	datab => \vga_0|videoGen|LessThan53~0_combout\,
	datac => \vga_0|videoGen|LessThan13~2_combout\,
	datad => \vga_0|videoGen|LessThan13~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~82_combout\);

-- Location: LCCOMB_X28_Y24_N26
\vga_0|videoGen|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|Equal3~0_combout\ = (\vga_0|videoSync|pixel_row\(7) & \vga_0|videoSync|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|pixel_row\(7),
	datad => \vga_0|videoSync|pixel_row\(6),
	combout => \vga_0|videoGen|Equal3~0_combout\);

-- Location: LCCOMB_X29_Y24_N4
\vga_0|videoGen|LessThan27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan27~0_combout\ = (!\vga_0|videoSync|pixel_row\(2) & (!\vga_0|videoSync|pixel_row\(3) & ((!\vga_0|videoSync|pixel_row\(1)) # (!\vga_0|videoSync|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(2),
	datab => \vga_0|videoSync|pixel_row\(3),
	datac => \vga_0|videoSync|pixel_row\(0),
	datad => \vga_0|videoSync|pixel_row\(1),
	combout => \vga_0|videoGen|LessThan27~0_combout\);

-- Location: LCCOMB_X29_Y26_N18
\vga_0|videoGen|LessThan27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan27~1_combout\ = ((!\vga_0|videoSync|pixel_row\(5) & ((\vga_0|videoGen|LessThan27~0_combout\) # (!\vga_0|videoSync|pixel_row\(4))))) # (!\vga_0|videoGen|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(4),
	datab => \vga_0|videoSync|pixel_row\(5),
	datac => \vga_0|videoGen|Equal3~0_combout\,
	datad => \vga_0|videoGen|LessThan27~0_combout\,
	combout => \vga_0|videoGen|LessThan27~1_combout\);

-- Location: LCCOMB_X29_Y26_N10
\vga_0|videoGen|pixelDraw~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~22_combout\ = (!\vga_0|videoSync|pixel_row\(8) & (!\vga_0|videoGen|LessThan27~1_combout\ & ((!\vga_0|videoGen|Equal3~0_combout\) # (!\vga_0|videoGen|LessThan28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan28~0_combout\,
	datab => \vga_0|videoGen|Equal3~0_combout\,
	datac => \vga_0|videoSync|pixel_row\(8),
	datad => \vga_0|videoGen|LessThan27~1_combout\,
	combout => \vga_0|videoGen|pixelDraw~22_combout\);

-- Location: LCCOMB_X30_Y22_N8
\vga_0|videoGen|LessThan133~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan133~2_combout\ = (!\vga_0|videoSync|pixel_column\(7) & (!\vga_0|videoSync|pixel_column\(8) & !\vga_0|videoSync|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(8),
	datac => \vga_0|videoSync|pixel_column\(9),
	combout => \vga_0|videoGen|LessThan133~2_combout\);

-- Location: LCCOMB_X30_Y25_N20
\vga_0|videoGen|LessThan94~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan94~0_combout\ = (\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoSync|pixel_column\(3)) # ((\vga_0|videoSync|pixel_column\(4)) # (\vga_0|videoSync|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(3),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoSync|pixel_column\(2),
	combout => \vga_0|videoGen|LessThan94~0_combout\);

-- Location: LCCOMB_X31_Y25_N26
\vga_0|videoGen|LessThan493~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan493~0_combout\ = (!\vga_0|videoSync|pixel_column\(3) & (\vga_0|videoGen|LessThan93~0_combout\ & (!\vga_0|videoSync|pixel_column\(4) & !\vga_0|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(3),
	datab => \vga_0|videoGen|LessThan93~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|LessThan493~0_combout\);

-- Location: LCCOMB_X30_Y22_N26
\vga_0|videoGen|pixelDraw~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~70_combout\ = (\vga_0|videoSync|pixel_column\(6) & (\vga_0|videoGen|LessThan133~2_combout\ & (!\vga_0|videoGen|LessThan94~0_combout\ & !\vga_0|videoGen|LessThan493~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoGen|LessThan133~2_combout\,
	datac => \vga_0|videoGen|LessThan94~0_combout\,
	datad => \vga_0|videoGen|LessThan493~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~70_combout\);

-- Location: LCCOMB_X29_Y22_N18
\vga_0|videoGen|colorAddress~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~128_combout\ = ((!\vga_0|videoGen|pixelDraw~79_combout\ & (!\vga_0|videoGen|pixelDraw~22_combout\ & !\vga_0|videoGen|pixelDraw~31_combout\))) # (!\vga_0|videoGen|pixelDraw~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~79_combout\,
	datab => \vga_0|videoGen|pixelDraw~22_combout\,
	datac => \vga_0|videoGen|pixelDraw~70_combout\,
	datad => \vga_0|videoGen|pixelDraw~31_combout\,
	combout => \vga_0|videoGen|colorAddress~128_combout\);

-- Location: LCCOMB_X30_Y24_N4
\vga_0|videoGen|LessThan47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan47~0_combout\ = (\vga_0|videoSync|pixel_row\(5) & (\vga_0|videoSync|pixel_row\(6) & ((\vga_0|videoSync|pixel_row\(3)) # (\vga_0|videoSync|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(3),
	datab => \vga_0|videoSync|pixel_row\(5),
	datac => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|LessThan47~0_combout\);

-- Location: LCCOMB_X30_Y24_N22
\vga_0|videoGen|pixelDraw~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~35_combout\ = (\vga_0|videoSync|pixel_row\(8) & (((\vga_0|videoGen|LessThan48~0_combout\ & \vga_0|videoGen|LessThan35~2_combout\)) # (!\vga_0|videoSync|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(7),
	datab => \vga_0|videoGen|LessThan48~0_combout\,
	datac => \vga_0|videoSync|pixel_row\(8),
	datad => \vga_0|videoGen|LessThan35~2_combout\,
	combout => \vga_0|videoGen|pixelDraw~35_combout\);

-- Location: LCCOMB_X30_Y24_N20
\vga_0|videoGen|pixelDraw~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~36_combout\ = (\vga_0|videoGen|pixelDraw~35_combout\ & ((\vga_0|videoSync|pixel_row\(7)) # ((!\vga_0|videoGen|LessThan47~1_combout\ & \vga_0|videoGen|LessThan47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan47~1_combout\,
	datab => \vga_0|videoSync|pixel_row\(7),
	datac => \vga_0|videoGen|LessThan47~0_combout\,
	datad => \vga_0|videoGen|pixelDraw~35_combout\,
	combout => \vga_0|videoGen|pixelDraw~36_combout\);

-- Location: LCCOMB_X30_Y24_N14
\vga_0|videoGen|pixelDraw~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~39_combout\ = (!\vga_0|videoSync|pixel_row\(7) & ((\vga_0|videoSync|pixel_row\(5)) # ((\vga_0|videoSync|pixel_row\(3)) # (\vga_0|videoSync|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_row\(7),
	datac => \vga_0|videoSync|pixel_row\(3),
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|pixelDraw~39_combout\);

-- Location: LCCOMB_X29_Y24_N30
\vga_0|videoGen|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan11~0_combout\ = (!\vga_0|videoSync|pixel_row\(1)) # (!\vga_0|videoSync|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(0),
	datad => \vga_0|videoSync|pixel_row\(1),
	combout => \vga_0|videoGen|LessThan11~0_combout\);

-- Location: LCCOMB_X29_Y26_N6
\vga_0|videoGen|LessThan43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan43~0_combout\ = (!\vga_0|videoSync|pixel_row\(5) & !\vga_0|videoSync|pixel_row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_row\(5),
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|LessThan43~0_combout\);

-- Location: LCCOMB_X30_Y24_N28
\vga_0|videoGen|pixelDraw~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~40_combout\ = (\vga_0|videoSync|pixel_row\(8) & ((\vga_0|videoSync|pixel_row\(2)) # ((!\vga_0|videoGen|LessThan43~0_combout\) # (!\vga_0|videoGen|LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(2),
	datab => \vga_0|videoSync|pixel_row\(8),
	datac => \vga_0|videoGen|LessThan11~0_combout\,
	datad => \vga_0|videoGen|LessThan43~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~40_combout\);

-- Location: LCCOMB_X30_Y24_N10
\vga_0|videoGen|pixelDraw~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~41_combout\ = (!\vga_0|videoGen|placeShip_on~0_combout\ & (!\vga_0|videoGen|LessThan47~0_combout\ & (\vga_0|videoGen|pixelDraw~39_combout\ & \vga_0|videoGen|pixelDraw~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|placeShip_on~0_combout\,
	datab => \vga_0|videoGen|LessThan47~0_combout\,
	datac => \vga_0|videoGen|pixelDraw~39_combout\,
	datad => \vga_0|videoGen|pixelDraw~40_combout\,
	combout => \vga_0|videoGen|pixelDraw~41_combout\);

-- Location: LCCOMB_X30_Y22_N2
\vga_0|videoGen|colorAddress~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~126_combout\ = (\vga_0|videoGen|pixelDraw~71_combout\ & (((!\vga_0|videoGen|pixelDraw~36_combout\ & !\vga_0|videoGen|pixelDraw~41_combout\)) # (!\vga_0|videoGen|pixelDraw~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~71_combout\,
	datab => \vga_0|videoGen|pixelDraw~70_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|pixelDraw~41_combout\,
	combout => \vga_0|videoGen|colorAddress~126_combout\);

-- Location: LCCOMB_X29_Y22_N28
\vga_0|videoGen|colorAddress~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~127_combout\ = (\vga_0|videoGen|colorAddress~126_combout\ & ((!\vga_0|videoGen|pixelDraw~70_combout\) # (!\vga_0|videoGen|colorAddress~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~111_combout\,
	datac => \vga_0|videoGen|pixelDraw~70_combout\,
	datad => \vga_0|videoGen|colorAddress~126_combout\,
	combout => \vga_0|videoGen|colorAddress~127_combout\);

-- Location: LCCOMB_X29_Y22_N12
\vga_0|videoGen|colorAddress~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~129_combout\ = (\vga_0|videoGen|colorAddress~128_combout\ & (\vga_0|videoGen|colorAddress~127_combout\ & ((!\vga_0|videoGen|pixelDraw~70_combout\) # (!\vga_0|videoGen|pixelDraw~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~21_combout\,
	datab => \vga_0|videoGen|colorAddress~128_combout\,
	datac => \vga_0|videoGen|pixelDraw~70_combout\,
	datad => \vga_0|videoGen|colorAddress~127_combout\,
	combout => \vga_0|videoGen|colorAddress~129_combout\);

-- Location: LCCOMB_X30_Y22_N28
\vga_0|videoGen|colorAddress~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~124_combout\ = (\vga_0|videoGen|pixelDraw~38_combout\) # ((\vga_0|videoGen|pixelDraw~31_combout\) # ((\vga_0|videoGen|pixelDraw~36_combout\) # (\vga_0|videoGen|pixelDraw~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~38_combout\,
	datab => \vga_0|videoGen|pixelDraw~31_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|pixelDraw~41_combout\,
	combout => \vga_0|videoGen|colorAddress~124_combout\);

-- Location: LCCOMB_X29_Y24_N2
\vga_0|videoGen|LessThan35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan35~0_combout\ = (!\vga_0|videoSync|pixel_row\(6) & (!\vga_0|videoSync|pixel_row\(7) & (!\vga_0|videoSync|pixel_row\(5) & !\vga_0|videoSync|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(6),
	datab => \vga_0|videoSync|pixel_row\(7),
	datac => \vga_0|videoSync|pixel_row\(5),
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|LessThan35~0_combout\);

-- Location: LCCOMB_X29_Y24_N18
\vga_0|videoGen|LessThan32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan32~0_combout\ = (\vga_0|videoSync|pixel_row\(3) & (\vga_0|videoSync|pixel_row\(2) & \vga_0|videoSync|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_row\(3),
	datac => \vga_0|videoSync|pixel_row\(2),
	datad => \vga_0|videoSync|pixel_row\(1),
	combout => \vga_0|videoGen|LessThan32~0_combout\);

-- Location: LCCOMB_X29_Y26_N28
\vga_0|videoGen|LessThan28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan28~0_combout\ = (\vga_0|videoSync|pixel_row\(5) & \vga_0|videoSync|pixel_row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|pixel_row\(5),
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|LessThan28~0_combout\);

-- Location: LCCOMB_X29_Y24_N12
\vga_0|videoGen|LessThan31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan31~0_combout\ = (((!\vga_0|videoSync|pixel_row\(3) & \vga_0|videoGen|LessThan15~0_combout\)) # (!\vga_0|videoGen|LessThan28~0_combout\)) # (!\vga_0|videoGen|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|Equal3~0_combout\,
	datab => \vga_0|videoSync|pixel_row\(3),
	datac => \vga_0|videoGen|LessThan15~0_combout\,
	datad => \vga_0|videoGen|LessThan28~0_combout\,
	combout => \vga_0|videoGen|LessThan31~0_combout\);

-- Location: LCCOMB_X29_Y24_N8
\vga_0|videoGen|pixelDraw~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~33_combout\ = (\vga_0|videoSync|pixel_row\(8) & (\vga_0|videoGen|LessThan35~0_combout\ & (!\vga_0|videoGen|LessThan32~0_combout\))) # (!\vga_0|videoSync|pixel_row\(8) & (((!\vga_0|videoGen|LessThan31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(8),
	datab => \vga_0|videoGen|LessThan35~0_combout\,
	datac => \vga_0|videoGen|LessThan32~0_combout\,
	datad => \vga_0|videoGen|LessThan31~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~33_combout\);

-- Location: LCCOMB_X30_Y23_N12
\vga_0|videoGen|LessThan24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan24~0_combout\ = (\vga_0|videoSync|pixel_row\(4) & ((\vga_0|videoSync|pixel_row\(2)) # ((\vga_0|videoSync|pixel_row\(1)) # (\vga_0|videoSync|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(2),
	datab => \vga_0|videoSync|pixel_row\(4),
	datac => \vga_0|videoSync|pixel_row\(1),
	datad => \vga_0|videoSync|pixel_row\(3),
	combout => \vga_0|videoGen|LessThan24~0_combout\);

-- Location: LCCOMB_X30_Y23_N14
\vga_0|videoGen|pixelDraw~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~20_combout\ = (!\vga_0|videoSync|pixel_row\(8) & (((!\vga_0|videoSync|pixel_row\(5) & !\vga_0|videoGen|LessThan24~0_combout\)) # (!\vga_0|videoGen|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|Equal3~0_combout\,
	datab => \vga_0|videoSync|pixel_row\(8),
	datac => \vga_0|videoSync|pixel_row\(5),
	datad => \vga_0|videoGen|LessThan24~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~20_combout\);

-- Location: LCCOMB_X30_Y23_N20
\vga_0|videoGen|LessThan23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan23~0_combout\ = ((!\vga_0|videoSync|pixel_row\(6) & ((!\vga_0|videoSync|pixel_row\(4)) # (!\vga_0|videoSync|pixel_row\(5))))) # (!\vga_0|videoSync|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_row\(7),
	datac => \vga_0|videoSync|pixel_row\(6),
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|LessThan23~0_combout\);

-- Location: LCCOMB_X30_Y24_N16
\vga_0|videoGen|LessThan23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan23~1_combout\ = (!\vga_0|videoSync|pixel_row\(3) & (((!\vga_0|videoSync|pixel_row\(0) & !\vga_0|videoSync|pixel_row\(1))) # (!\vga_0|videoSync|pixel_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(2),
	datab => \vga_0|videoSync|pixel_row\(3),
	datac => \vga_0|videoSync|pixel_row\(0),
	datad => \vga_0|videoSync|pixel_row\(1),
	combout => \vga_0|videoGen|LessThan23~1_combout\);

-- Location: LCCOMB_X30_Y23_N10
\vga_0|videoGen|LessThan23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan23~2_combout\ = (!\vga_0|videoSync|pixel_row\(8) & ((\vga_0|videoGen|LessThan23~0_combout\) # ((!\vga_0|videoSync|pixel_row\(6) & \vga_0|videoGen|LessThan23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(6),
	datab => \vga_0|videoSync|pixel_row\(8),
	datac => \vga_0|videoGen|LessThan23~0_combout\,
	datad => \vga_0|videoGen|LessThan23~1_combout\,
	combout => \vga_0|videoGen|LessThan23~2_combout\);

-- Location: LCCOMB_X30_Y23_N28
\vga_0|videoGen|pixelDraw~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~21_combout\ = (\vga_0|videoGen|pixelDraw~20_combout\ & !\vga_0|videoGen|LessThan23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoGen|pixelDraw~20_combout\,
	datad => \vga_0|videoGen|LessThan23~2_combout\,
	combout => \vga_0|videoGen|pixelDraw~21_combout\);

-- Location: LCCOMB_X29_Y25_N22
\vga_0|videoGen|LessThan613~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan613~0_combout\ = (!\vga_0|videoSync|pixel_column\(3) & (!\vga_0|videoSync|pixel_column\(2) & !\vga_0|videoSync|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(3),
	datac => \vga_0|videoSync|pixel_column\(2),
	datad => \vga_0|videoSync|pixel_column\(4),
	combout => \vga_0|videoGen|LessThan613~0_combout\);

-- Location: LCCOMB_X30_Y25_N26
\vga_0|videoGen|LessThan134~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan134~0_combout\ = (\vga_0|videoSync|pixel_column\(1)) # ((\vga_0|videoSync|pixel_column\(5)) # (!\vga_0|videoGen|LessThan613~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_column\(1),
	datac => \vga_0|videoSync|pixel_column\(5),
	datad => \vga_0|videoGen|LessThan613~0_combout\,
	combout => \vga_0|videoGen|LessThan134~0_combout\);

-- Location: LCCOMB_X30_Y22_N22
\vga_0|videoGen|pixelDraw~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~67_combout\ = (\vga_0|videoGen|LessThan13~3_combout\ & (((!\vga_0|videoGen|LessThan134~0_combout\ & !\vga_0|videoSync|pixel_column\(6))) # (!\vga_0|videoSync|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoGen|LessThan13~3_combout\,
	datac => \vga_0|videoGen|LessThan134~0_combout\,
	datad => \vga_0|videoSync|pixel_column\(6),
	combout => \vga_0|videoGen|pixelDraw~67_combout\);

-- Location: LCCOMB_X30_Y22_N30
\vga_0|videoGen|pixelDraw~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~68_combout\ = (\vga_0|videoGen|pixelDraw~67_combout\ & (((!\vga_0|videoGen|LessThan133~1_combout\ & \vga_0|videoSync|pixel_column\(6))) # (!\vga_0|videoGen|LessThan133~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan133~1_combout\,
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoGen|LessThan133~2_combout\,
	datad => \vga_0|videoGen|pixelDraw~67_combout\,
	combout => \vga_0|videoGen|pixelDraw~68_combout\);

-- Location: LCCOMB_X29_Y22_N8
\vga_0|videoGen|colorAddress~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~122_combout\ = ((!\vga_0|videoGen|pixelDraw~79_combout\ & (!\vga_0|videoGen|pixelDraw~22_combout\ & !\vga_0|videoGen|pixelDraw~21_combout\))) # (!\vga_0|videoGen|pixelDraw~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~79_combout\,
	datab => \vga_0|videoGen|pixelDraw~22_combout\,
	datac => \vga_0|videoGen|pixelDraw~21_combout\,
	datad => \vga_0|videoGen|pixelDraw~68_combout\,
	combout => \vga_0|videoGen|colorAddress~122_combout\);

-- Location: LCCOMB_X29_Y22_N4
\vga_0|videoGen|colorAddress~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~123_combout\ = (\vga_0|videoGen|colorAddress~122_combout\ & (((!\vga_0|videoGen|pixelDraw~34_combout\ & !\vga_0|videoGen|pixelDraw~33_combout\)) # (!\vga_0|videoGen|pixelDraw~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~34_combout\,
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|colorAddress~122_combout\,
	datad => \vga_0|videoGen|pixelDraw~68_combout\,
	combout => \vga_0|videoGen|colorAddress~123_combout\);

-- Location: LCCOMB_X29_Y22_N20
\vga_0|videoGen|colorAddress~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~125_combout\ = (\vga_0|videoGen|pixelDraw~69_combout\ & (\vga_0|videoGen|colorAddress~123_combout\ & ((!\vga_0|videoGen|pixelDraw~68_combout\) # (!\vga_0|videoGen|colorAddress~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~69_combout\,
	datab => \vga_0|videoGen|colorAddress~124_combout\,
	datac => \vga_0|videoGen|colorAddress~123_combout\,
	datad => \vga_0|videoGen|pixelDraw~68_combout\,
	combout => \vga_0|videoGen|colorAddress~125_combout\);

-- Location: LCCOMB_X30_Y24_N24
\vga_0|videoGen|pixelDraw~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~17_combout\ = (\vga_0|videoSync|pixel_row\(2) & ((\vga_0|videoSync|pixel_row\(5)) # ((\vga_0|videoSync|pixel_row\(1) & \vga_0|videoSync|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(2),
	datab => \vga_0|videoSync|pixel_row\(1),
	datac => \vga_0|videoSync|pixel_row\(0),
	datad => \vga_0|videoSync|pixel_row\(5),
	combout => \vga_0|videoGen|pixelDraw~17_combout\);

-- Location: LCCOMB_X30_Y24_N18
\vga_0|videoGen|pixelDraw~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~18_combout\ = (\vga_0|videoSync|pixel_row\(5) & (((!\vga_0|videoSync|pixel_row\(3) & !\vga_0|videoGen|pixelDraw~17_combout\)) # (!\vga_0|videoSync|pixel_row\(4)))) # (!\vga_0|videoSync|pixel_row\(5) & 
-- ((\vga_0|videoSync|pixel_row\(3)) # ((\vga_0|videoGen|pixelDraw~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(3),
	datab => \vga_0|videoSync|pixel_row\(5),
	datac => \vga_0|videoGen|pixelDraw~17_combout\,
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|pixelDraw~18_combout\);

-- Location: LCCOMB_X30_Y24_N26
\vga_0|videoGen|pixelDraw~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~79_combout\ = (\vga_0|videoGen|pixelDraw~16_combout\ & (\vga_0|videoGen|pixelDraw~18_combout\ & ((\vga_0|videoSync|pixel_row\(4)) # (\vga_0|videoSync|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~16_combout\,
	datab => \vga_0|videoSync|pixel_row\(4),
	datac => \vga_0|videoSync|pixel_row\(5),
	datad => \vga_0|videoGen|pixelDraw~18_combout\,
	combout => \vga_0|videoGen|pixelDraw~79_combout\);

-- Location: LCCOMB_X31_Y23_N18
\vga_0|videoGen|colorAddress~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~75_combout\ = (\vga_0|videoGen|pixelDraw~41_combout\) # ((\vga_0|videoGen|pixelDraw~21_combout\) # ((\vga_0|videoGen|pixelDraw~79_combout\) # (\vga_0|videoGen|pixelDraw~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~41_combout\,
	datab => \vga_0|videoGen|pixelDraw~21_combout\,
	datac => \vga_0|videoGen|pixelDraw~79_combout\,
	datad => \vga_0|videoGen|pixelDraw~36_combout\,
	combout => \vga_0|videoGen|colorAddress~75_combout\);

-- Location: LCCOMB_X25_Y23_N0
\vga_0|videoGen|pixelDraw~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~50_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoSync|pixel_column\(6) & !\vga_0|videoSync|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(7),
	combout => \vga_0|videoGen|pixelDraw~50_combout\);

-- Location: LCCOMB_X25_Y23_N26
\vga_0|videoGen|pixelDraw~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~51_combout\ = (\vga_0|videoSync|pixel_column\(8) & (\vga_0|videoGen|pixelDraw~50_combout\ & (!\vga_0|videoGen|LessThan13~2_combout\ & !\vga_0|videoGen|LessThan53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(8),
	datab => \vga_0|videoGen|pixelDraw~50_combout\,
	datac => \vga_0|videoGen|LessThan13~2_combout\,
	datad => \vga_0|videoGen|LessThan53~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~51_combout\);

-- Location: LCCOMB_X28_Y26_N2
\vga_0|videoGen|LessThan613~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan613~1_combout\ = (!\vga_0|videoSync|pixel_column\(1) & !\vga_0|videoSync|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|pixel_column\(1),
	datad => \vga_0|videoSync|pixel_column\(0),
	combout => \vga_0|videoGen|LessThan613~1_combout\);

-- Location: LCCOMB_X28_Y26_N8
\vga_0|videoGen|LessThan53~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan53~1_combout\ = ((!\vga_0|videoSync|pixel_column\(4) & (!\vga_0|videoSync|pixel_column\(2) & \vga_0|videoGen|LessThan613~1_combout\))) # (!\vga_0|videoGen|LessThan53~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(2),
	datac => \vga_0|videoGen|LessThan613~1_combout\,
	datad => \vga_0|videoGen|LessThan53~0_combout\,
	combout => \vga_0|videoGen|LessThan53~1_combout\);

-- Location: LCCOMB_X28_Y26_N4
\vga_0|videoGen|LessThan54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan54~0_combout\ = (\vga_0|videoSync|pixel_column\(1) & \vga_0|videoSync|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(1),
	datad => \vga_0|videoSync|pixel_column\(2),
	combout => \vga_0|videoGen|LessThan54~0_combout\);

-- Location: LCCOMB_X28_Y25_N16
\vga_0|videoGen|pixelDraw~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~52_combout\ = (\vga_0|videoSync|pixel_column\(7) & (\vga_0|videoGen|LessThan173~0_combout\ & ((!\vga_0|videoGen|LessThan54~0_combout\)))) # (!\vga_0|videoSync|pixel_column\(7) & (((\vga_0|videoSync|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan173~0_combout\,
	datab => \vga_0|videoSync|pixel_column\(7),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoGen|LessThan54~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~52_combout\);

-- Location: LCCOMB_X28_Y25_N22
\vga_0|videoGen|pixelDraw~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~53_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoGen|pixelDraw~52_combout\ & \vga_0|videoSync|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoGen|pixelDraw~52_combout\,
	datad => \vga_0|videoSync|pixel_column\(8),
	combout => \vga_0|videoGen|pixelDraw~53_combout\);

-- Location: LCCOMB_X29_Y25_N24
\vga_0|videoGen|pixelDraw~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~54_combout\ = (\vga_0|videoGen|pixelDraw~53_combout\ & ((\vga_0|videoSync|pixel_column\(7)) # ((\vga_0|videoSync|pixel_column\(9)) # (!\vga_0|videoGen|LessThan53~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoGen|LessThan53~1_combout\,
	datad => \vga_0|videoGen|pixelDraw~53_combout\,
	combout => \vga_0|videoGen|pixelDraw~54_combout\);

-- Location: LCCOMB_X30_Y25_N18
\vga_0|videoGen|colorAddress~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~76_combout\ = (\vga_0|videoGen|pixelDraw~22_combout\ & ((\vga_0|videoGen|pixelDraw~54_combout\))) # (!\vga_0|videoGen|pixelDraw~22_combout\ & (\vga_0|videoGen|pixelDraw~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~22_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|pixelDraw~54_combout\,
	combout => \vga_0|videoGen|colorAddress~76_combout\);

-- Location: LCCOMB_X31_Y23_N16
\vga_0|videoGen|colorAddress~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~77_combout\ = (\vga_0|videoGen|pixelDraw~22_combout\ & ((\vga_0|videoGen|pixelDraw~49_combout\) # ((\vga_0|videoGen|pixelDraw~51_combout\) # (\vga_0|videoGen|colorAddress~76_combout\)))) # 
-- (!\vga_0|videoGen|pixelDraw~22_combout\ & (\vga_0|videoGen|colorAddress~76_combout\ & ((\vga_0|videoGen|pixelDraw~49_combout\) # (\vga_0|videoGen|pixelDraw~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~49_combout\,
	datab => \vga_0|videoGen|pixelDraw~51_combout\,
	datac => \vga_0|videoGen|pixelDraw~22_combout\,
	datad => \vga_0|videoGen|colorAddress~76_combout\,
	combout => \vga_0|videoGen|colorAddress~77_combout\);

-- Location: LCCOMB_X30_Y25_N14
\vga_0|videoGen|pixelDraw~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~47_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoSync|pixel_column\(7) & \vga_0|videoSync|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoSync|pixel_column\(8),
	combout => \vga_0|videoGen|pixelDraw~47_combout\);

-- Location: LCCOMB_X29_Y25_N8
\vga_0|videoGen|LessThan534~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan534~0_combout\ = (\vga_0|videoSync|pixel_column\(7) & (\vga_0|videoSync|pixel_column\(6) & \vga_0|videoSync|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(8),
	combout => \vga_0|videoGen|LessThan534~0_combout\);

-- Location: LCCOMB_X30_Y25_N22
\vga_0|videoGen|pixelDraw~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~48_combout\ = (!\vga_0|videoSync|pixel_column\(6) & (!\vga_0|videoSync|pixel_column\(3) & (\vga_0|videoGen|LessThan373~2_combout\ & \vga_0|videoGen|LessThan93~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(3),
	datac => \vga_0|videoGen|LessThan373~2_combout\,
	datad => \vga_0|videoGen|LessThan93~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~48_combout\);

-- Location: LCCOMB_X30_Y25_N8
\vga_0|videoGen|pixelDraw~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~49_combout\ = (!\vga_0|videoGen|LessThan94~0_combout\ & (\vga_0|videoGen|pixelDraw~47_combout\ & (!\vga_0|videoGen|LessThan534~0_combout\ & !\vga_0|videoGen|pixelDraw~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan94~0_combout\,
	datab => \vga_0|videoGen|pixelDraw~47_combout\,
	datac => \vga_0|videoGen|LessThan534~0_combout\,
	datad => \vga_0|videoGen|pixelDraw~48_combout\,
	combout => \vga_0|videoGen|pixelDraw~49_combout\);

-- Location: LCCOMB_X31_Y23_N14
\vga_0|videoGen|colorAddress~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~78_combout\ = (\vga_0|videoGen|colorAddress~74_combout\ & (!\vga_0|videoGen|colorAddress~77_combout\ & ((!\vga_0|videoGen|pixelDraw~49_combout\) # (!\vga_0|videoGen|colorAddress~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~74_combout\,
	datab => \vga_0|videoGen|colorAddress~75_combout\,
	datac => \vga_0|videoGen|colorAddress~77_combout\,
	datad => \vga_0|videoGen|pixelDraw~49_combout\,
	combout => \vga_0|videoGen|colorAddress~78_combout\);

-- Location: LCCOMB_X31_Y25_N22
\vga_0|videoGen|LessThan693~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan693~0_combout\ = (!\vga_0|videoSync|pixel_column\(8) & (!\vga_0|videoSync|pixel_column\(7) & !\vga_0|videoSync|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_column\(8),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoSync|pixel_column\(6),
	combout => \vga_0|videoGen|LessThan693~0_combout\);

-- Location: LCCOMB_X29_Y25_N16
\vga_0|videoGen|LessThan334~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan334~0_combout\ = (\vga_0|videoSync|pixel_column\(3) & \vga_0|videoSync|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|pixel_column\(3),
	datad => \vga_0|videoSync|pixel_column\(4),
	combout => \vga_0|videoGen|LessThan334~0_combout\);

-- Location: LCCOMB_X28_Y26_N12
\vga_0|videoGen|LessThan293~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan293~0_combout\ = (!\vga_0|videoSync|pixel_column\(5) & (((\vga_0|videoGen|LessThan613~1_combout\) # (!\vga_0|videoGen|LessThan334~0_combout\)) # (!\vga_0|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(2),
	datac => \vga_0|videoGen|LessThan334~0_combout\,
	datad => \vga_0|videoGen|LessThan613~1_combout\,
	combout => \vga_0|videoGen|LessThan293~0_combout\);

-- Location: LCCOMB_X28_Y26_N30
\vga_0|videoGen|LessThan294~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan294~0_combout\ = (\vga_0|videoGen|LessThan334~0_combout\ & (\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoSync|pixel_column\(1)) # (\vga_0|videoSync|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(1),
	datab => \vga_0|videoSync|pixel_column\(2),
	datac => \vga_0|videoGen|LessThan334~0_combout\,
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|LessThan294~0_combout\);

-- Location: LCCOMB_X31_Y26_N28
\vga_0|videoGen|pixelDraw~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~32_combout\ = (\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoGen|LessThan693~0_combout\ & (!\vga_0|videoGen|LessThan293~0_combout\ & !\vga_0|videoGen|LessThan294~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoGen|LessThan693~0_combout\,
	datac => \vga_0|videoGen|LessThan293~0_combout\,
	datad => \vga_0|videoGen|LessThan294~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~32_combout\);

-- Location: LCCOMB_X30_Y26_N26
\vga_0|videoGen|colorAddress~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~45_combout\ = ((!\vga_0|videoGen|pixelDraw~21_combout\ & (!\vga_0|videoGen|pixelDraw~31_combout\ & !\vga_0|videoGen|pixelDraw~79_combout\))) # (!\vga_0|videoGen|pixelDraw~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~21_combout\,
	datab => \vga_0|videoGen|pixelDraw~31_combout\,
	datac => \vga_0|videoGen|pixelDraw~79_combout\,
	datad => \vga_0|videoGen|pixelDraw~32_combout\,
	combout => \vga_0|videoGen|colorAddress~45_combout\);

-- Location: LCCOMB_X29_Y24_N22
\vga_0|videoGen|pixelDraw~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~37_combout\ = (\vga_0|videoSync|pixel_row\(3) & (\vga_0|videoSync|pixel_row\(2) & ((\vga_0|videoSync|pixel_row\(0)) # (\vga_0|videoSync|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(0),
	datab => \vga_0|videoSync|pixel_row\(3),
	datac => \vga_0|videoSync|pixel_row\(2),
	datad => \vga_0|videoSync|pixel_row\(1),
	combout => \vga_0|videoGen|pixelDraw~37_combout\);

-- Location: LCCOMB_X28_Y24_N16
\vga_0|videoGen|pixelDraw~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~83_combout\ = (!\vga_0|videoSync|pixel_row\(7) & ((\vga_0|videoSync|pixel_row\(6)) # ((\vga_0|videoSync|pixel_row\(4)) # (\vga_0|videoGen|pixelDraw~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(6),
	datab => \vga_0|videoSync|pixel_row\(7),
	datac => \vga_0|videoSync|pixel_row\(4),
	datad => \vga_0|videoGen|pixelDraw~37_combout\,
	combout => \vga_0|videoGen|pixelDraw~83_combout\);

-- Location: LCCOMB_X28_Y24_N6
\vga_0|videoGen|pixelDraw~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~84_combout\ = (\vga_0|videoSync|pixel_row\(6) & (!\vga_0|videoSync|pixel_row\(5) & (!\vga_0|videoSync|pixel_row\(4) & !\vga_0|videoGen|LessThan3~0_combout\))) # (!\vga_0|videoSync|pixel_row\(6) & (\vga_0|videoSync|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(6),
	datab => \vga_0|videoSync|pixel_row\(5),
	datac => \vga_0|videoSync|pixel_row\(4),
	datad => \vga_0|videoGen|LessThan3~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~84_combout\);

-- Location: LCCOMB_X28_Y24_N8
\vga_0|videoGen|pixelDraw~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~38_combout\ = (\vga_0|videoSync|pixel_row\(8) & (\vga_0|videoGen|pixelDraw~83_combout\ & \vga_0|videoGen|pixelDraw~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_row\(8),
	datac => \vga_0|videoGen|pixelDraw~83_combout\,
	datad => \vga_0|videoGen|pixelDraw~84_combout\,
	combout => \vga_0|videoGen|pixelDraw~38_combout\);

-- Location: LCCOMB_X30_Y26_N14
\vga_0|videoGen|colorAddress~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~47_combout\ = ((!\vga_0|videoGen|pixelDraw~41_combout\ & (!\vga_0|videoGen|pixelDraw~38_combout\ & !\vga_0|videoGen|pixelDraw~36_combout\))) # (!\vga_0|videoGen|pixelDraw~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~41_combout\,
	datab => \vga_0|videoGen|pixelDraw~38_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|pixelDraw~32_combout\,
	combout => \vga_0|videoGen|colorAddress~47_combout\);

-- Location: LCCOMB_X29_Y25_N26
\vga_0|videoGen|pixelDraw~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~24_combout\ = (\vga_0|videoSync|pixel_column\(7) & (\vga_0|videoSync|pixel_column\(6) & (\vga_0|videoSync|pixel_column\(5) & \vga_0|videoSync|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoSync|pixel_column\(5),
	datad => \vga_0|videoSync|pixel_column\(8),
	combout => \vga_0|videoGen|pixelDraw~24_combout\);

-- Location: LCCOMB_X29_Y25_N12
\vga_0|videoGen|pixelDraw~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~25_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoGen|pixelDraw~24_combout\ & ((!\vga_0|videoGen|LessThan613~1_combout\) # (!\vga_0|videoGen|LessThan613~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoGen|LessThan613~0_combout\,
	datac => \vga_0|videoGen|LessThan613~1_combout\,
	datad => \vga_0|videoGen|pixelDraw~24_combout\,
	combout => \vga_0|videoGen|pixelDraw~25_combout\);

-- Location: LCCOMB_X30_Y25_N0
\vga_0|videoGen|pixelDraw~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~26_combout\ = (\vga_0|videoGen|pixelDraw~25_combout\ & (((!\vga_0|videoGen|LessThan534~0_combout\) # (!\vga_0|videoGen|LessThan334~0_combout\)) # (!\vga_0|videoGen|LessThan54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan54~0_combout\,
	datab => \vga_0|videoGen|LessThan334~0_combout\,
	datac => \vga_0|videoGen|LessThan534~0_combout\,
	datad => \vga_0|videoGen|pixelDraw~25_combout\,
	combout => \vga_0|videoGen|pixelDraw~26_combout\);

-- Location: LCCOMB_X29_Y25_N0
\vga_0|videoGen|LessThan573~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan573~0_combout\ = (!\vga_0|videoSync|pixel_column\(5) & (\vga_0|videoGen|LessThan613~0_combout\ & ((!\vga_0|videoSync|pixel_column\(0)) # (!\vga_0|videoSync|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(1),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(0),
	datad => \vga_0|videoGen|LessThan613~0_combout\,
	combout => \vga_0|videoGen|LessThan573~0_combout\);

-- Location: LCCOMB_X29_Y25_N2
\vga_0|videoGen|pixelDraw~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~23_combout\ = (!\vga_0|videoSync|pixel_column\(5) & (!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoGen|LessThan534~0_combout\ & !\vga_0|videoGen|LessThan573~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoGen|LessThan534~0_combout\,
	datad => \vga_0|videoGen|LessThan573~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~23_combout\);

-- Location: LCCOMB_X31_Y25_N0
\vga_0|videoGen|LessThan254~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan254~0_combout\ = (!\vga_0|videoSync|pixel_column\(5) & (((!\vga_0|videoSync|pixel_column\(4)) # (!\vga_0|videoSync|pixel_column\(3))) # (!\vga_0|videoSync|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(2),
	datab => \vga_0|videoSync|pixel_column\(3),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|LessThan254~0_combout\);

-- Location: LCCOMB_X31_Y25_N14
\vga_0|videoGen|pixelDraw~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~27_combout\ = (!\vga_0|videoSync|pixel_column\(6) & (!\vga_0|videoSync|pixel_column\(8) & (!\vga_0|videoSync|pixel_column\(7) & \vga_0|videoGen|LessThan254~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(8),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoGen|LessThan254~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~27_combout\);

-- Location: LCCOMB_X30_Y25_N10
\vga_0|videoGen|LessThan653~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan653~2_combout\ = (\vga_0|videoSync|pixel_column\(5) & (\vga_0|videoSync|pixel_column\(3) & (\vga_0|videoSync|pixel_column\(4) & !\vga_0|videoGen|LessThan93~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(3),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoGen|LessThan93~0_combout\,
	combout => \vga_0|videoGen|LessThan653~2_combout\);

-- Location: LCCOMB_X31_Y25_N4
\vga_0|videoGen|pixelDraw~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~28_combout\ = (\vga_0|videoSync|pixel_column\(9) & (((\vga_0|videoGen|pixelDraw~27_combout\)))) # (!\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoGen|LessThan534~0_combout\ & ((\vga_0|videoGen|LessThan653~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan534~0_combout\,
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoGen|pixelDraw~27_combout\,
	datad => \vga_0|videoGen|LessThan653~2_combout\,
	combout => \vga_0|videoGen|pixelDraw~28_combout\);

-- Location: LCCOMB_X30_Y26_N12
\vga_0|videoGen|colorAddress~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~44_combout\ = ((!\vga_0|videoGen|pixelDraw~26_combout\ & (!\vga_0|videoGen|pixelDraw~23_combout\ & !\vga_0|videoGen|pixelDraw~28_combout\))) # (!\vga_0|videoGen|pixelDraw~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~22_combout\,
	datab => \vga_0|videoGen|pixelDraw~26_combout\,
	datac => \vga_0|videoGen|pixelDraw~23_combout\,
	datad => \vga_0|videoGen|pixelDraw~28_combout\,
	combout => \vga_0|videoGen|colorAddress~44_combout\);

-- Location: LCCOMB_X30_Y26_N16
\vga_0|videoGen|colorAddress~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~48_combout\ = (\vga_0|videoGen|colorAddress~46_combout\ & (\vga_0|videoGen|colorAddress~45_combout\ & (\vga_0|videoGen|colorAddress~47_combout\ & \vga_0|videoGen|colorAddress~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~46_combout\,
	datab => \vga_0|videoGen|colorAddress~45_combout\,
	datac => \vga_0|videoGen|colorAddress~47_combout\,
	datad => \vga_0|videoGen|colorAddress~44_combout\,
	combout => \vga_0|videoGen|colorAddress~48_combout\);

-- Location: LCCOMB_X30_Y25_N30
\vga_0|videoGen|LessThan734~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan734~0_combout\ = ((\vga_0|videoSync|pixel_column\(6) & ((\vga_0|videoSync|pixel_column\(5)) # (\vga_0|videoGen|LessThan334~0_combout\)))) # (!\vga_0|videoGen|LessThan773~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoGen|LessThan334~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoGen|LessThan773~0_combout\,
	combout => \vga_0|videoGen|LessThan734~0_combout\);

-- Location: LCCOMB_X28_Y26_N28
\vga_0|videoGen|LessThan333~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan333~2_combout\ = (\vga_0|videoGen|LessThan13~1_combout\) # (((!\vga_0|videoSync|pixel_column\(4)) # (!\vga_0|videoSync|pixel_column\(3))) # (!\vga_0|videoSync|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~1_combout\,
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(3),
	datad => \vga_0|videoSync|pixel_column\(4),
	combout => \vga_0|videoGen|LessThan333~2_combout\);

-- Location: LCCOMB_X31_Y25_N16
\vga_0|videoGen|pixelDraw~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~45_combout\ = (\vga_0|videoSync|pixel_column\(9) & (!\vga_0|videoGen|LessThan734~0_combout\ & ((!\vga_0|videoGen|LessThan333~2_combout\) # (!\vga_0|videoGen|LessThan693~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoGen|LessThan693~0_combout\,
	datac => \vga_0|videoGen|LessThan734~0_combout\,
	datad => \vga_0|videoGen|LessThan333~2_combout\,
	combout => \vga_0|videoGen|pixelDraw~45_combout\);

-- Location: LCCOMB_X28_Y25_N24
\vga_0|videoGen|LessThan373~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan373~1_combout\ = (!\vga_0|videoSync|pixel_column\(5) & ((!\vga_0|videoSync|pixel_column\(3)) # (!\vga_0|videoSync|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_column\(4),
	datac => \vga_0|videoSync|pixel_column\(3),
	datad => \vga_0|videoSync|pixel_column\(5),
	combout => \vga_0|videoGen|LessThan373~1_combout\);

-- Location: LCCOMB_X29_Y25_N20
\vga_0|videoGen|pixelDraw~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~42_combout\ = (\vga_0|videoSync|pixel_column\(7) & (!\vga_0|videoSync|pixel_column\(9))) # (!\vga_0|videoSync|pixel_column\(7) & ((\vga_0|videoSync|pixel_column\(8) & (!\vga_0|videoSync|pixel_column\(9))) # 
-- (!\vga_0|videoSync|pixel_column\(8) & ((\vga_0|videoSync|pixel_column\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(8),
	combout => \vga_0|videoGen|pixelDraw~42_combout\);

-- Location: LCCOMB_X29_Y25_N28
\vga_0|videoGen|pixelDraw~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~43_combout\ = (\vga_0|videoGen|pixelDraw~42_combout\ & (((!\vga_0|videoGen|LessThan373~0_combout\ & !\vga_0|videoGen|LessThan373~1_combout\)) # (!\vga_0|videoGen|LessThan773~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan373~0_combout\,
	datab => \vga_0|videoGen|LessThan373~1_combout\,
	datac => \vga_0|videoGen|pixelDraw~42_combout\,
	datad => \vga_0|videoGen|LessThan773~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~43_combout\);

-- Location: LCCOMB_X29_Y25_N18
\vga_0|videoGen|pixelDraw~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~44_combout\ = (\vga_0|videoSync|pixel_column\(9) & (\vga_0|videoGen|pixelDraw~43_combout\ & ((!\vga_0|videoSync|pixel_column\(6)) # (!\vga_0|videoGen|LessThan374~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan374~0_combout\,
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoGen|pixelDraw~43_combout\,
	combout => \vga_0|videoGen|pixelDraw~44_combout\);

-- Location: LCCOMB_X31_Y25_N12
\vga_0|videoGen|colorAddress~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~71_combout\ = ((!\vga_0|videoGen|pixelDraw~45_combout\ & !\vga_0|videoGen|pixelDraw~44_combout\)) # (!\vga_0|videoGen|pixelDraw~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~46_combout\,
	datac => \vga_0|videoGen|pixelDraw~45_combout\,
	datad => \vga_0|videoGen|pixelDraw~44_combout\,
	combout => \vga_0|videoGen|colorAddress~71_combout\);

-- Location: LCCOMB_X29_Y24_N26
\vga_0|videoGen|LessThan36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan36~0_combout\ = (\vga_0|videoSync|pixel_row\(5) & ((\vga_0|videoSync|pixel_row\(4)) # ((\vga_0|videoSync|pixel_row\(3) & \vga_0|videoSync|pixel_row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_row\(3),
	datac => \vga_0|videoSync|pixel_row\(2),
	datad => \vga_0|videoSync|pixel_row\(4),
	combout => \vga_0|videoGen|LessThan36~0_combout\);

-- Location: LCCOMB_X29_Y24_N0
\vga_0|videoGen|LessThan35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan35~1_combout\ = (\vga_0|videoGen|LessThan35~0_combout\ & ((!\vga_0|videoGen|LessThan4~0_combout\) # (!\vga_0|videoSync|pixel_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoSync|pixel_row\(3),
	datac => \vga_0|videoGen|LessThan4~0_combout\,
	datad => \vga_0|videoGen|LessThan35~0_combout\,
	combout => \vga_0|videoGen|LessThan35~1_combout\);

-- Location: LCCOMB_X29_Y24_N16
\vga_0|videoGen|pixelDraw~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~34_combout\ = (\vga_0|videoGen|placeShip_on~0_combout\ & (!\vga_0|videoGen|LessThan36~0_combout\ & (\vga_0|videoSync|pixel_row\(8) & !\vga_0|videoGen|LessThan35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|placeShip_on~0_combout\,
	datab => \vga_0|videoGen|LessThan36~0_combout\,
	datac => \vga_0|videoSync|pixel_row\(8),
	datad => \vga_0|videoGen|LessThan35~1_combout\,
	combout => \vga_0|videoGen|pixelDraw~34_combout\);

-- Location: LCCOMB_X32_Y23_N18
\vga_0|videoGen|colorAddress~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~68_combout\ = ((!\vga_0|videoGen|pixelDraw~33_combout\ & !\vga_0|videoGen|pixelDraw~34_combout\)) # (!\vga_0|videoGen|pixelDraw~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|pixelDraw~34_combout\,
	datad => \vga_0|videoGen|pixelDraw~44_combout\,
	combout => \vga_0|videoGen|colorAddress~68_combout\);

-- Location: LCCOMB_X32_Y23_N8
\vga_0|videoGen|colorAddress~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~69_combout\ = (\vga_0|videoGen|colorAddress~68_combout\ & (((!\vga_0|videoGen|pixelDraw~38_combout\ & !\vga_0|videoGen|pixelDraw~41_combout\)) # (!\vga_0|videoGen|pixelDraw~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~38_combout\,
	datab => \vga_0|videoGen|pixelDraw~41_combout\,
	datac => \vga_0|videoGen|pixelDraw~44_combout\,
	datad => \vga_0|videoGen|colorAddress~68_combout\,
	combout => \vga_0|videoGen|colorAddress~69_combout\);

-- Location: LCCOMB_X32_Y23_N2
\vga_0|videoGen|colorAddress~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~66_combout\ = (\vga_0|videoGen|pixelDraw~31_combout\ & (!\vga_0|videoGen|pixelDraw~44_combout\ & ((!\vga_0|videoGen|pixelDraw~45_combout\) # (!\vga_0|videoGen|pixelDraw~36_combout\)))) # (!\vga_0|videoGen|pixelDraw~31_combout\ 
-- & (((!\vga_0|videoGen|pixelDraw~45_combout\) # (!\vga_0|videoGen|pixelDraw~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~31_combout\,
	datab => \vga_0|videoGen|pixelDraw~44_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|pixelDraw~45_combout\,
	combout => \vga_0|videoGen|colorAddress~66_combout\);

-- Location: LCCOMB_X32_Y23_N0
\vga_0|videoGen|colorAddress~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~67_combout\ = (\vga_0|videoGen|colorAddress~66_combout\ & (((!\vga_0|videoGen|pixelDraw~21_combout\ & !\vga_0|videoGen|pixelDraw~79_combout\)) # (!\vga_0|videoGen|pixelDraw~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~21_combout\,
	datab => \vga_0|videoGen|pixelDraw~79_combout\,
	datac => \vga_0|videoGen|pixelDraw~44_combout\,
	datad => \vga_0|videoGen|colorAddress~66_combout\,
	combout => \vga_0|videoGen|colorAddress~67_combout\);

-- Location: LCCOMB_X32_Y23_N26
\vga_0|videoGen|colorAddress~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~72_combout\ = (\vga_0|videoGen|colorAddress~70_combout\ & (\vga_0|videoGen|colorAddress~71_combout\ & (\vga_0|videoGen|colorAddress~69_combout\ & \vga_0|videoGen|colorAddress~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~70_combout\,
	datab => \vga_0|videoGen|colorAddress~71_combout\,
	datac => \vga_0|videoGen|colorAddress~69_combout\,
	datad => \vga_0|videoGen|colorAddress~67_combout\,
	combout => \vga_0|videoGen|colorAddress~72_combout\);

-- Location: LCCOMB_X32_Y23_N4
\vga_0|videoGen|colorAddress~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~63_combout\ = ((!\vga_0|videoGen|pixelDraw~33_combout\ & !\vga_0|videoGen|pixelDraw~34_combout\)) # (!\vga_0|videoGen|pixelDraw~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|pixelDraw~34_combout\,
	datad => \vga_0|videoGen|pixelDraw~45_combout\,
	combout => \vga_0|videoGen|colorAddress~63_combout\);

-- Location: LCCOMB_X32_Y23_N30
\vga_0|videoGen|colorAddress~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~64_combout\ = (\vga_0|videoGen|colorAddress~63_combout\ & (((!\vga_0|videoGen|pixelDraw~38_combout\ & !\vga_0|videoGen|pixelDraw~41_combout\)) # (!\vga_0|videoGen|pixelDraw~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~38_combout\,
	datab => \vga_0|videoGen|pixelDraw~45_combout\,
	datac => \vga_0|videoGen|colorAddress~63_combout\,
	datad => \vga_0|videoGen|pixelDraw~41_combout\,
	combout => \vga_0|videoGen|colorAddress~64_combout\);

-- Location: LCCOMB_X32_Y23_N28
\vga_0|videoGen|colorAddress~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~57_combout\ = ((!\vga_0|videoGen|pixelDraw~79_combout\ & !\vga_0|videoGen|pixelDraw~31_combout\)) # (!\vga_0|videoGen|pixelDraw~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~79_combout\,
	datac => \vga_0|videoGen|pixelDraw~28_combout\,
	datad => \vga_0|videoGen|pixelDraw~31_combout\,
	combout => \vga_0|videoGen|colorAddress~57_combout\);

-- Location: LCCOMB_X32_Y23_N14
\vga_0|videoGen|colorAddress~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~58_combout\ = (\vga_0|videoGen|colorAddress~57_combout\ & (((!\vga_0|videoGen|pixelDraw~21_combout\ & !\vga_0|videoGen|pixelDraw~33_combout\)) # (!\vga_0|videoGen|pixelDraw~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~21_combout\,
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|pixelDraw~28_combout\,
	datad => \vga_0|videoGen|colorAddress~57_combout\,
	combout => \vga_0|videoGen|colorAddress~58_combout\);

-- Location: LCCOMB_X32_Y23_N20
\vga_0|videoGen|colorAddress~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~61_combout\ = (\vga_0|videoGen|pixelDraw~31_combout\ & (!\vga_0|videoGen|pixelDraw~45_combout\ & ((!\vga_0|videoGen|pixelDraw~46_combout\) # (!\vga_0|videoGen|pixelDraw~32_combout\)))) # (!\vga_0|videoGen|pixelDraw~31_combout\ 
-- & (((!\vga_0|videoGen|pixelDraw~46_combout\)) # (!\vga_0|videoGen|pixelDraw~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~31_combout\,
	datab => \vga_0|videoGen|pixelDraw~32_combout\,
	datac => \vga_0|videoGen|pixelDraw~46_combout\,
	datad => \vga_0|videoGen|pixelDraw~45_combout\,
	combout => \vga_0|videoGen|colorAddress~61_combout\);

-- Location: LCCOMB_X32_Y23_N10
\vga_0|videoGen|colorAddress~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~62_combout\ = (\vga_0|videoGen|colorAddress~61_combout\ & (((!\vga_0|videoGen|pixelDraw~21_combout\ & !\vga_0|videoGen|pixelDraw~79_combout\)) # (!\vga_0|videoGen|pixelDraw~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~21_combout\,
	datab => \vga_0|videoGen|pixelDraw~79_combout\,
	datac => \vga_0|videoGen|colorAddress~61_combout\,
	datad => \vga_0|videoGen|pixelDraw~45_combout\,
	combout => \vga_0|videoGen|colorAddress~62_combout\);

-- Location: LCCOMB_X32_Y23_N24
\vga_0|videoGen|colorAddress~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~65_combout\ = (\vga_0|videoGen|colorAddress~60_combout\ & (\vga_0|videoGen|colorAddress~64_combout\ & (\vga_0|videoGen|colorAddress~58_combout\ & \vga_0|videoGen|colorAddress~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~60_combout\,
	datab => \vga_0|videoGen|colorAddress~64_combout\,
	datac => \vga_0|videoGen|colorAddress~58_combout\,
	datad => \vga_0|videoGen|colorAddress~62_combout\,
	combout => \vga_0|videoGen|colorAddress~65_combout\);

-- Location: LCCOMB_X31_Y23_N4
\vga_0|videoGen|colorAddress~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~73_combout\ = (\vga_0|videoGen|colorAddress~56_combout\ & (\vga_0|videoGen|colorAddress~48_combout\ & (\vga_0|videoGen|colorAddress~72_combout\ & \vga_0|videoGen|colorAddress~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~56_combout\,
	datab => \vga_0|videoGen|colorAddress~48_combout\,
	datac => \vga_0|videoGen|colorAddress~72_combout\,
	datad => \vga_0|videoGen|colorAddress~65_combout\,
	combout => \vga_0|videoGen|colorAddress~73_combout\);

-- Location: LCCOMB_X29_Y25_N30
\vga_0|videoGen|LessThan133~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan133~0_combout\ = ((!\vga_0|videoSync|pixel_column\(1) & !\vga_0|videoSync|pixel_column\(0))) # (!\vga_0|videoSync|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(1),
	datab => \vga_0|videoSync|pixel_column\(0),
	datac => \vga_0|videoSync|pixel_column\(2),
	combout => \vga_0|videoGen|LessThan133~0_combout\);

-- Location: LCCOMB_X30_Y25_N4
\vga_0|videoGen|LessThan133~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan133~1_combout\ = ((!\vga_0|videoSync|pixel_column\(3) & (!\vga_0|videoSync|pixel_column\(4) & \vga_0|videoGen|LessThan133~0_combout\))) # (!\vga_0|videoSync|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(5),
	datab => \vga_0|videoSync|pixel_column\(3),
	datac => \vga_0|videoSync|pixel_column\(4),
	datad => \vga_0|videoGen|LessThan133~0_combout\,
	combout => \vga_0|videoGen|LessThan133~1_combout\);

-- Location: LCCOMB_X30_Y25_N12
\vga_0|videoGen|pixelDraw~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~55_combout\ = (\vga_0|videoSync|pixel_column\(7) & (!\vga_0|videoSync|pixel_column\(9) & ((!\vga_0|videoGen|LessThan134~0_combout\) # (!\vga_0|videoGen|LessThan534~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(9),
	datac => \vga_0|videoGen|LessThan534~0_combout\,
	datad => \vga_0|videoGen|LessThan134~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~55_combout\);

-- Location: LCCOMB_X30_Y25_N2
\vga_0|videoGen|pixelDraw~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~56_combout\ = (\vga_0|videoSync|pixel_column\(8) & (\vga_0|videoGen|pixelDraw~55_combout\ & ((\vga_0|videoSync|pixel_column\(6)) # (!\vga_0|videoGen|LessThan133~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(8),
	datac => \vga_0|videoGen|LessThan133~1_combout\,
	datad => \vga_0|videoGen|pixelDraw~55_combout\,
	combout => \vga_0|videoGen|pixelDraw~56_combout\);

-- Location: LCCOMB_X30_Y23_N18
\vga_0|videoGen|colorAddress~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~85_combout\ = (\vga_0|videoGen|pixelDraw~46_combout\ & (!\vga_0|videoGen|pixelDraw~49_combout\ & ((!\vga_0|videoGen|pixelDraw~54_combout\) # (!\vga_0|videoGen|pixelDraw~36_combout\)))) # (!\vga_0|videoGen|pixelDraw~46_combout\ 
-- & (((!\vga_0|videoGen|pixelDraw~54_combout\)) # (!\vga_0|videoGen|pixelDraw~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~46_combout\,
	datab => \vga_0|videoGen|pixelDraw~36_combout\,
	datac => \vga_0|videoGen|pixelDraw~54_combout\,
	datad => \vga_0|videoGen|pixelDraw~49_combout\,
	combout => \vga_0|videoGen|colorAddress~85_combout\);

-- Location: LCCOMB_X30_Y23_N24
\vga_0|videoGen|colorAddress~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~86_combout\ = (\vga_0|videoGen|colorAddress~85_combout\ & (((!\vga_0|videoGen|pixelDraw~79_combout\ & !\vga_0|videoGen|pixelDraw~31_combout\)) # (!\vga_0|videoGen|pixelDraw~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~79_combout\,
	datab => \vga_0|videoGen|pixelDraw~56_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|colorAddress~85_combout\,
	combout => \vga_0|videoGen|colorAddress~86_combout\);

-- Location: LCCOMB_X30_Y23_N8
\vga_0|videoGen|colorAddress~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~187_combout\ = ((!\vga_0|videoGen|pixelDraw~33_combout\ & ((\vga_0|videoGen|LessThan23~2_combout\) # (!\vga_0|videoGen|pixelDraw~20_combout\)))) # (!\vga_0|videoGen|pixelDraw~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan23~2_combout\,
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|pixelDraw~20_combout\,
	datad => \vga_0|videoGen|pixelDraw~56_combout\,
	combout => \vga_0|videoGen|colorAddress~187_combout\);

-- Location: LCCOMB_X30_Y23_N30
\vga_0|videoGen|colorAddress~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~87_combout\ = (\vga_0|videoGen|colorAddress~187_combout\ & (((!\vga_0|videoGen|pixelDraw~38_combout\ & !\vga_0|videoGen|pixelDraw~34_combout\)) # (!\vga_0|videoGen|pixelDraw~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~38_combout\,
	datab => \vga_0|videoGen|pixelDraw~34_combout\,
	datac => \vga_0|videoGen|colorAddress~187_combout\,
	datad => \vga_0|videoGen|pixelDraw~56_combout\,
	combout => \vga_0|videoGen|colorAddress~87_combout\);

-- Location: LCCOMB_X25_Y23_N4
\vga_0|videoGen|colorAddress~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~90_combout\ = (\vga_0|videoGen|pixelDraw~46_combout\ & (!\vga_0|videoGen|pixelDraw~51_combout\ & ((!\vga_0|videoGen|pixelDraw~21_combout\) # (!\vga_0|videoGen|pixelDraw~23_combout\)))) # (!\vga_0|videoGen|pixelDraw~46_combout\ 
-- & (((!\vga_0|videoGen|pixelDraw~21_combout\) # (!\vga_0|videoGen|pixelDraw~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~46_combout\,
	datab => \vga_0|videoGen|pixelDraw~51_combout\,
	datac => \vga_0|videoGen|pixelDraw~23_combout\,
	datad => \vga_0|videoGen|pixelDraw~21_combout\,
	combout => \vga_0|videoGen|colorAddress~90_combout\);

-- Location: LCCOMB_X30_Y23_N2
\vga_0|videoGen|colorAddress~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~91_combout\ = (\vga_0|videoGen|colorAddress~90_combout\ & (((!\vga_0|videoGen|pixelDraw~56_combout\ & !\vga_0|videoGen|pixelDraw~54_combout\)) # (!\vga_0|videoGen|pixelDraw~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~46_combout\,
	datab => \vga_0|videoGen|pixelDraw~56_combout\,
	datac => \vga_0|videoGen|pixelDraw~54_combout\,
	datad => \vga_0|videoGen|colorAddress~90_combout\,
	combout => \vga_0|videoGen|colorAddress~91_combout\);

-- Location: LCCOMB_X31_Y23_N22
\vga_0|videoGen|colorAddress~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~92_combout\ = (\vga_0|videoGen|colorAddress~89_combout\ & (\vga_0|videoGen|colorAddress~86_combout\ & (\vga_0|videoGen|colorAddress~87_combout\ & \vga_0|videoGen|colorAddress~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~89_combout\,
	datab => \vga_0|videoGen|colorAddress~86_combout\,
	datac => \vga_0|videoGen|colorAddress~87_combout\,
	datad => \vga_0|videoGen|colorAddress~91_combout\,
	combout => \vga_0|videoGen|colorAddress~92_combout\);

-- Location: LCCOMB_X31_Y23_N28
\vga_0|videoGen|colorAddress~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~93_combout\ = (\vga_0|videoGen|colorAddress~92_combout\ & ((!\vga_0|videoGen|pixelDraw~46_combout\) # (!\vga_0|videoGen|pixelDraw~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~23_combout\,
	datac => \vga_0|videoGen|pixelDraw~46_combout\,
	datad => \vga_0|videoGen|colorAddress~92_combout\,
	combout => \vga_0|videoGen|colorAddress~93_combout\);

-- Location: LCCOMB_X31_Y23_N30
\vga_0|videoGen|colorAddress~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~94_combout\ = (\vga_0|videoGen|colorAddress~84_combout\ & (\vga_0|videoGen|colorAddress~78_combout\ & (\vga_0|videoGen|colorAddress~73_combout\ & \vga_0|videoGen|colorAddress~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~84_combout\,
	datab => \vga_0|videoGen|colorAddress~78_combout\,
	datac => \vga_0|videoGen|colorAddress~73_combout\,
	datad => \vga_0|videoGen|colorAddress~93_combout\,
	combout => \vga_0|videoGen|colorAddress~94_combout\);

-- Location: LCCOMB_X31_Y23_N20
\vga_0|videoGen|colorAddress~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~95_combout\ = (\vga_0|videoGen|colorAddress~94_combout\ & ((!\vga_0|videoGen|pixelDraw~36_combout\) # (!\vga_0|videoGen|pixelDraw~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~58_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|colorAddress~94_combout\,
	combout => \vga_0|videoGen|colorAddress~95_combout\);

-- Location: LCCOMB_X29_Y23_N30
\vga_0|videoGen|colorAddress~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~107_combout\ = (\vga_0|videoGen|pixelDraw~33_combout\) # ((\vga_0|videoGen|pixelDraw~22_combout\) # (\vga_0|videoGen|pixelDraw~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~33_combout\,
	datab => \vga_0|videoGen|pixelDraw~22_combout\,
	datac => \vga_0|videoGen|pixelDraw~34_combout\,
	combout => \vga_0|videoGen|colorAddress~107_combout\);

-- Location: LCCOMB_X29_Y23_N8
\vga_0|videoGen|colorAddress~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~106_combout\ = (\vga_0|videoGen|pixelDraw~41_combout\) # ((\vga_0|videoGen|pixelDraw~38_combout\) # (\vga_0|videoGen|pixelDraw~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~41_combout\,
	datac => \vga_0|videoGen|pixelDraw~38_combout\,
	datad => \vga_0|videoGen|pixelDraw~36_combout\,
	combout => \vga_0|videoGen|colorAddress~106_combout\);

-- Location: LCCOMB_X29_Y22_N30
\vga_0|videoGen|LessThan214~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan214~0_combout\ = (\vga_0|videoSync|pixel_column\(6)) # ((\vga_0|videoGen|LessThan334~0_combout\ & (\vga_0|videoSync|pixel_column\(5) & \vga_0|videoGen|LessThan54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoGen|LessThan334~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(5),
	datad => \vga_0|videoGen|LessThan54~0_combout\,
	combout => \vga_0|videoGen|LessThan214~0_combout\);

-- Location: LCCOMB_X29_Y25_N4
\vga_0|videoGen|LessThan213~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan213~0_combout\ = (!\vga_0|videoSync|pixel_column\(6) & (((\vga_0|videoGen|LessThan613~1_combout\ & \vga_0|videoGen|LessThan613~0_combout\)) # (!\vga_0|videoSync|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoGen|LessThan613~1_combout\,
	datad => \vga_0|videoGen|LessThan613~0_combout\,
	combout => \vga_0|videoGen|LessThan213~0_combout\);

-- Location: LCCOMB_X29_Y22_N0
\vga_0|videoGen|pixelDraw~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~61_combout\ = (\vga_0|videoGen|LessThan13~3_combout\ & (!\vga_0|videoGen|LessThan214~0_combout\ & (\vga_0|videoSync|pixel_column\(7) & !\vga_0|videoGen|LessThan213~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~3_combout\,
	datab => \vga_0|videoGen|LessThan214~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoGen|LessThan213~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~61_combout\);

-- Location: LCCOMB_X29_Y22_N16
\vga_0|videoGen|colorAddress~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~115_combout\ = (\vga_0|videoGen|pixelDraw~46_combout\) # ((\vga_0|videoGen|pixelDraw~79_combout\) # (\vga_0|videoGen|pixelDraw~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~46_combout\,
	datac => \vga_0|videoGen|pixelDraw~79_combout\,
	datad => \vga_0|videoGen|pixelDraw~31_combout\,
	combout => \vga_0|videoGen|colorAddress~115_combout\);

-- Location: LCCOMB_X30_Y23_N22
\vga_0|videoGen|colorAddress~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~194_combout\ = (\vga_0|videoGen|pixelDraw~22_combout\) # ((\vga_0|videoGen|pixelDraw~33_combout\) # ((!\vga_0|videoGen|LessThan23~2_combout\ & \vga_0|videoGen|pixelDraw~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan23~2_combout\,
	datab => \vga_0|videoGen|pixelDraw~20_combout\,
	datac => \vga_0|videoGen|pixelDraw~22_combout\,
	datad => \vga_0|videoGen|pixelDraw~33_combout\,
	combout => \vga_0|videoGen|colorAddress~194_combout\);

-- Location: LCCOMB_X29_Y25_N6
\vga_0|videoGen|LessThan294~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan294~1_combout\ = (\vga_0|videoSync|pixel_column\(6) & \vga_0|videoSync|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(7),
	combout => \vga_0|videoGen|LessThan294~1_combout\);

-- Location: LCCOMB_X30_Y25_N28
\vga_0|videoGen|LessThan253~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan253~0_combout\ = (\vga_0|videoGen|LessThan13~3_combout\ & (((!\vga_0|videoSync|pixel_column\(6) & !\vga_0|videoGen|LessThan653~2_combout\)) # (!\vga_0|videoSync|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~3_combout\,
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoGen|LessThan653~2_combout\,
	combout => \vga_0|videoGen|LessThan253~0_combout\);

-- Location: LCCOMB_X30_Y25_N6
\vga_0|videoGen|pixelDraw~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~62_combout\ = (\vga_0|videoGen|LessThan13~3_combout\ & (!\vga_0|videoGen|LessThan253~0_combout\ & ((\vga_0|videoGen|LessThan254~0_combout\) # (!\vga_0|videoGen|LessThan294~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~3_combout\,
	datab => \vga_0|videoGen|LessThan294~1_combout\,
	datac => \vga_0|videoGen|LessThan254~0_combout\,
	datad => \vga_0|videoGen|LessThan253~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~62_combout\);

-- Location: LCCOMB_X30_Y25_N16
\vga_0|videoGen|colorAddress~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~112_combout\ = (\vga_0|videoGen|pixelDraw~62_combout\ & ((\vga_0|videoGen|pixelDraw~46_combout\) # (\vga_0|videoGen|pixelDraw~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~46_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|pixelDraw~62_combout\,
	combout => \vga_0|videoGen|colorAddress~112_combout\);

-- Location: LCCOMB_X30_Y23_N16
\vga_0|videoGen|colorAddress~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~192_combout\ = (\vga_0|videoGen|pixelDraw~79_combout\) # ((\vga_0|videoGen|pixelDraw~22_combout\) # ((\vga_0|videoGen|pixelDraw~20_combout\ & !\vga_0|videoGen|LessThan23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~79_combout\,
	datab => \vga_0|videoGen|pixelDraw~20_combout\,
	datac => \vga_0|videoGen|pixelDraw~22_combout\,
	datad => \vga_0|videoGen|LessThan23~2_combout\,
	combout => \vga_0|videoGen|colorAddress~192_combout\);

-- Location: LCCOMB_X28_Y26_N6
\vga_0|videoGen|pixelDraw~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~63_combout\ = (\vga_0|videoGen|LessThan13~3_combout\ & (\vga_0|videoGen|LessThan294~1_combout\ & (!\vga_0|videoGen|LessThan293~0_combout\ & !\vga_0|videoGen|LessThan294~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~3_combout\,
	datab => \vga_0|videoGen|LessThan294~1_combout\,
	datac => \vga_0|videoGen|LessThan293~0_combout\,
	datad => \vga_0|videoGen|LessThan294~0_combout\,
	combout => \vga_0|videoGen|pixelDraw~63_combout\);

-- Location: LCCOMB_X30_Y23_N6
\vga_0|videoGen|colorAddress~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~109_combout\ = (\vga_0|videoGen|pixelDraw~62_combout\ & ((\vga_0|videoGen|pixelDraw~36_combout\) # (\vga_0|videoGen|pixelDraw~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~36_combout\,
	datac => \vga_0|videoGen|pixelDraw~41_combout\,
	datad => \vga_0|videoGen|pixelDraw~62_combout\,
	combout => \vga_0|videoGen|colorAddress~109_combout\);

-- Location: LCCOMB_X30_Y23_N26
\vga_0|videoGen|colorAddress~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~191_combout\ = (\vga_0|videoGen|pixelDraw~31_combout\) # ((\vga_0|videoGen|pixelDraw~79_combout\) # ((!\vga_0|videoGen|LessThan23~2_combout\ & \vga_0|videoGen|pixelDraw~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan23~2_combout\,
	datab => \vga_0|videoGen|pixelDraw~20_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|pixelDraw~79_combout\,
	combout => \vga_0|videoGen|colorAddress~191_combout\);

-- Location: LCCOMB_X29_Y26_N30
\vga_0|videoGen|colorAddress~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~104_combout\ = (\vga_0|videoGen|pixelDraw~31_combout\) # ((!\vga_0|videoGen|LessThan11~3_combout\ & (\vga_0|videoGen|LessThan15~1_combout\ & !\vga_0|videoGen|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan11~3_combout\,
	datab => \vga_0|videoGen|LessThan15~1_combout\,
	datac => \vga_0|videoGen|LessThan12~0_combout\,
	datad => \vga_0|videoGen|pixelDraw~31_combout\,
	combout => \vga_0|videoGen|colorAddress~104_combout\);

-- Location: LCCOMB_X30_Y23_N0
\vga_0|videoGen|colorAddress~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~102_combout\ = (\vga_0|videoGen|pixelDraw~33_combout\) # ((!\vga_0|videoGen|LessThan23~2_combout\ & \vga_0|videoGen|pixelDraw~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan23~2_combout\,
	datac => \vga_0|videoGen|pixelDraw~20_combout\,
	datad => \vga_0|videoGen|pixelDraw~33_combout\,
	combout => \vga_0|videoGen|colorAddress~102_combout\);

-- Location: LCCOMB_X29_Y24_N10
\vga_0|videoGen|colorAddress~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~100_combout\ = (\vga_0|videoGen|pixelDraw~41_combout\) # ((\vga_0|videoGen|pixelDraw~34_combout\) # (\vga_0|videoGen|pixelDraw~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~41_combout\,
	datac => \vga_0|videoGen|pixelDraw~34_combout\,
	datad => \vga_0|videoGen|pixelDraw~38_combout\,
	combout => \vga_0|videoGen|colorAddress~100_combout\);

-- Location: LCCOMB_X28_Y25_N14
\vga_0|videoGen|LessThan374~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan374~0_combout\ = (\vga_0|videoSync|pixel_column\(4) & (\vga_0|videoSync|pixel_column\(5) & ((\vga_0|videoSync|pixel_column\(3)) # (\vga_0|videoGen|LessThan54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(4),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(3),
	datad => \vga_0|videoGen|LessThan54~0_combout\,
	combout => \vga_0|videoGen|LessThan374~0_combout\);

-- Location: LCCOMB_X28_Y25_N2
\vga_0|videoGen|LessThan373~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan373~0_combout\ = (!\vga_0|videoSync|pixel_column\(1) & (!\vga_0|videoSync|pixel_column\(5) & (!\vga_0|videoSync|pixel_column\(2) & !\vga_0|videoSync|pixel_column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(1),
	datab => \vga_0|videoSync|pixel_column\(5),
	datac => \vga_0|videoSync|pixel_column\(2),
	datad => \vga_0|videoSync|pixel_column\(0),
	combout => \vga_0|videoGen|LessThan373~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
\vga_0|videoGen|LessThan374~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan374~1_combout\ = (!\vga_0|videoSync|pixel_column\(9) & (((!\vga_0|videoSync|pixel_column\(7) & !\vga_0|videoSync|pixel_column\(6))) # (!\vga_0|videoSync|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoSync|pixel_column\(7),
	datac => \vga_0|videoSync|pixel_column\(6),
	datad => \vga_0|videoSync|pixel_column\(8),
	combout => \vga_0|videoGen|LessThan374~1_combout\);

-- Location: LCCOMB_X28_Y25_N12
\vga_0|videoGen|pixelDraw~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~57_combout\ = (\vga_0|videoGen|LessThan374~1_combout\ & (((!\vga_0|videoGen|LessThan373~0_combout\ & !\vga_0|videoGen|LessThan373~1_combout\)) # (!\vga_0|videoGen|LessThan413~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan413~0_combout\,
	datab => \vga_0|videoGen|LessThan373~0_combout\,
	datac => \vga_0|videoGen|LessThan373~1_combout\,
	datad => \vga_0|videoGen|LessThan374~1_combout\,
	combout => \vga_0|videoGen|pixelDraw~57_combout\);

-- Location: LCCOMB_X28_Y25_N10
\vga_0|videoGen|pixelDraw~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~58_combout\ = (\vga_0|videoGen|pixelDraw~57_combout\ & ((\vga_0|videoSync|pixel_column\(8) & ((!\vga_0|videoGen|LessThan374~0_combout\))) # (!\vga_0|videoSync|pixel_column\(8) & (\vga_0|videoSync|pixel_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(9),
	datab => \vga_0|videoSync|pixel_column\(8),
	datac => \vga_0|videoGen|LessThan374~0_combout\,
	datad => \vga_0|videoGen|pixelDraw~57_combout\,
	combout => \vga_0|videoGen|pixelDraw~58_combout\);

-- Location: LCCOMB_X29_Y23_N24
\vga_0|videoGen|colorAddress~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~96_combout\ = ((!\vga_0|videoGen|pixelDraw~34_combout\ & (!\vga_0|videoGen|pixelDraw~38_combout\ & !\vga_0|videoGen|pixelDraw~41_combout\))) # (!\vga_0|videoGen|pixelDraw~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~34_combout\,
	datab => \vga_0|videoGen|pixelDraw~58_combout\,
	datac => \vga_0|videoGen|pixelDraw~38_combout\,
	datad => \vga_0|videoGen|pixelDraw~41_combout\,
	combout => \vga_0|videoGen|colorAddress~96_combout\);

-- Location: LCCOMB_X29_Y23_N10
\vga_0|videoGen|colorAddress~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~188_combout\ = (!\vga_0|videoGen|pixelDraw~33_combout\ & (!\vga_0|videoGen|pixelDraw~22_combout\ & ((\vga_0|videoGen|LessThan23~2_combout\) # (!\vga_0|videoGen|pixelDraw~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~20_combout\,
	datab => \vga_0|videoGen|LessThan23~2_combout\,
	datac => \vga_0|videoGen|pixelDraw~33_combout\,
	datad => \vga_0|videoGen|pixelDraw~22_combout\,
	combout => \vga_0|videoGen|colorAddress~188_combout\);

-- Location: LCCOMB_X29_Y23_N14
\vga_0|videoGen|colorAddress~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~97_combout\ = (\vga_0|videoGen|colorAddress~96_combout\ & (((!\vga_0|videoGen|pixelDraw~79_combout\ & \vga_0|videoGen|colorAddress~188_combout\)) # (!\vga_0|videoGen|pixelDraw~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~58_combout\,
	datab => \vga_0|videoGen|pixelDraw~79_combout\,
	datac => \vga_0|videoGen|colorAddress~96_combout\,
	datad => \vga_0|videoGen|colorAddress~188_combout\,
	combout => \vga_0|videoGen|colorAddress~97_combout\);

-- Location: LCCOMB_X29_Y26_N20
\vga_0|videoGen|LessThan11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan11~3_combout\ = (\vga_0|videoGen|LessThan11~2_combout\) # ((!\vga_0|videoSync|pixel_row\(5) & (!\vga_0|videoSync|pixel_row\(2) & \vga_0|videoGen|LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(5),
	datab => \vga_0|videoSync|pixel_row\(2),
	datac => \vga_0|videoGen|LessThan11~0_combout\,
	datad => \vga_0|videoGen|LessThan11~2_combout\,
	combout => \vga_0|videoGen|LessThan11~3_combout\);

-- Location: LCCOMB_X29_Y26_N14
\vga_0|videoGen|colorAddress~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~189_combout\ = (!\vga_0|videoSync|pixel_row\(8) & (!\vga_0|videoGen|LessThan12~0_combout\ & (!\vga_0|videoGen|LessThan11~3_combout\ & !\vga_0|videoSync|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_row\(8),
	datab => \vga_0|videoGen|LessThan12~0_combout\,
	datac => \vga_0|videoGen|LessThan11~3_combout\,
	datad => \vga_0|videoSync|pixel_row\(7),
	combout => \vga_0|videoGen|colorAddress~189_combout\);

-- Location: LCCOMB_X29_Y26_N8
\vga_0|videoGen|colorAddress~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~98_combout\ = (\vga_0|videoGen|pixelDraw~58_combout\ & ((\vga_0|videoGen|pixelDraw~31_combout\) # (\vga_0|videoGen|colorAddress~189_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~31_combout\,
	datac => \vga_0|videoGen|colorAddress~189_combout\,
	datad => \vga_0|videoGen|pixelDraw~58_combout\,
	combout => \vga_0|videoGen|colorAddress~98_combout\);

-- Location: LCCOMB_X29_Y23_N0
\vga_0|videoGen|colorAddress~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~99_combout\ = (\vga_0|videoGen|colorAddress~97_combout\ & (!\vga_0|videoGen|colorAddress~98_combout\ & ((!\vga_0|videoGen|pixelDraw~36_combout\) # (!\vga_0|videoGen|pixelDraw~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~65_combout\,
	datab => \vga_0|videoGen|pixelDraw~36_combout\,
	datac => \vga_0|videoGen|colorAddress~97_combout\,
	datad => \vga_0|videoGen|colorAddress~98_combout\,
	combout => \vga_0|videoGen|colorAddress~99_combout\);

-- Location: LCCOMB_X29_Y23_N6
\vga_0|videoGen|colorAddress~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~101_combout\ = (\vga_0|videoGen|colorAddress~99_combout\ & ((!\vga_0|videoGen|colorAddress~100_combout\) # (!\vga_0|videoGen|pixelDraw~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~65_combout\,
	datac => \vga_0|videoGen|colorAddress~100_combout\,
	datad => \vga_0|videoGen|colorAddress~99_combout\,
	combout => \vga_0|videoGen|colorAddress~101_combout\);

-- Location: LCCOMB_X29_Y23_N20
\vga_0|videoGen|colorAddress~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~103_combout\ = (\vga_0|videoGen|colorAddress~101_combout\ & (((!\vga_0|videoGen|pixelDraw~22_combout\ & !\vga_0|videoGen|colorAddress~102_combout\)) # (!\vga_0|videoGen|pixelDraw~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~65_combout\,
	datab => \vga_0|videoGen|pixelDraw~22_combout\,
	datac => \vga_0|videoGen|colorAddress~102_combout\,
	datad => \vga_0|videoGen|colorAddress~101_combout\,
	combout => \vga_0|videoGen|colorAddress~103_combout\);

-- Location: LCCOMB_X29_Y23_N26
\vga_0|videoGen|colorAddress~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~105_combout\ = (\vga_0|videoGen|colorAddress~103_combout\ & (((!\vga_0|videoGen|colorAddress~104_combout\ & !\vga_0|videoGen|pixelDraw~79_combout\)) # (!\vga_0|videoGen|pixelDraw~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~65_combout\,
	datab => \vga_0|videoGen|colorAddress~104_combout\,
	datac => \vga_0|videoGen|colorAddress~103_combout\,
	datad => \vga_0|videoGen|pixelDraw~79_combout\,
	combout => \vga_0|videoGen|colorAddress~105_combout\);

-- Location: LCCOMB_X29_Y23_N12
\vga_0|videoGen|colorAddress~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~190_combout\ = (\vga_0|videoGen|colorAddress~105_combout\ & (((!\vga_0|videoGen|colorAddress~106_combout\ & !\vga_0|videoGen|colorAddress~107_combout\)) # (!\vga_0|videoGen|pixelDraw~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~106_combout\,
	datab => \vga_0|videoGen|colorAddress~107_combout\,
	datac => \vga_0|videoGen|pixelDraw~63_combout\,
	datad => \vga_0|videoGen|colorAddress~105_combout\,
	combout => \vga_0|videoGen|colorAddress~190_combout\);

-- Location: LCCOMB_X29_Y23_N28
\vga_0|videoGen|colorAddress~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~108_combout\ = (\vga_0|videoGen|colorAddress~190_combout\ & ((!\vga_0|videoGen|pixelDraw~63_combout\) # (!\vga_0|videoGen|colorAddress~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|colorAddress~191_combout\,
	datac => \vga_0|videoGen|pixelDraw~63_combout\,
	datad => \vga_0|videoGen|colorAddress~190_combout\,
	combout => \vga_0|videoGen|colorAddress~108_combout\);

-- Location: LCCOMB_X29_Y23_N2
\vga_0|videoGen|colorAddress~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~110_combout\ = (!\vga_0|videoGen|colorAddress~109_combout\ & (\vga_0|videoGen|colorAddress~108_combout\ & ((!\vga_0|videoGen|pixelDraw~63_combout\) # (!\vga_0|videoGen|pixelDraw~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~46_combout\,
	datab => \vga_0|videoGen|pixelDraw~63_combout\,
	datac => \vga_0|videoGen|colorAddress~109_combout\,
	datad => \vga_0|videoGen|colorAddress~108_combout\,
	combout => \vga_0|videoGen|colorAddress~110_combout\);

-- Location: LCCOMB_X29_Y23_N18
\vga_0|videoGen|colorAddress~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~193_combout\ = (\vga_0|videoGen|colorAddress~110_combout\ & (((!\vga_0|videoGen|colorAddress~111_combout\ & !\vga_0|videoGen|colorAddress~192_combout\)) # (!\vga_0|videoGen|pixelDraw~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~111_combout\,
	datab => \vga_0|videoGen|colorAddress~192_combout\,
	datac => \vga_0|videoGen|pixelDraw~62_combout\,
	datad => \vga_0|videoGen|colorAddress~110_combout\,
	combout => \vga_0|videoGen|colorAddress~193_combout\);

-- Location: LCCOMB_X29_Y23_N4
\vga_0|videoGen|colorAddress~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~113_combout\ = (!\vga_0|videoGen|colorAddress~112_combout\ & (\vga_0|videoGen|colorAddress~193_combout\ & ((!\vga_0|videoGen|pixelDraw~61_combout\) # (!\vga_0|videoGen|pixelDraw~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~36_combout\,
	datab => \vga_0|videoGen|pixelDraw~61_combout\,
	datac => \vga_0|videoGen|colorAddress~112_combout\,
	datad => \vga_0|videoGen|colorAddress~193_combout\,
	combout => \vga_0|videoGen|colorAddress~113_combout\);

-- Location: LCCOMB_X28_Y23_N28
\vga_0|videoGen|colorAddress~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~195_combout\ = (\vga_0|videoGen|colorAddress~113_combout\ & (((!\vga_0|videoGen|colorAddress~100_combout\ & !\vga_0|videoGen|colorAddress~194_combout\)) # (!\vga_0|videoGen|pixelDraw~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~100_combout\,
	datab => \vga_0|videoGen|pixelDraw~61_combout\,
	datac => \vga_0|videoGen|colorAddress~194_combout\,
	datad => \vga_0|videoGen|colorAddress~113_combout\,
	combout => \vga_0|videoGen|colorAddress~195_combout\);

-- Location: LCCOMB_X28_Y23_N12
\vga_0|videoGen|colorAddress~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~116_combout\ = (\vga_0|videoGen|colorAddress~195_combout\ & ((!\vga_0|videoGen|colorAddress~115_combout\) # (!\vga_0|videoGen|pixelDraw~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~61_combout\,
	datac => \vga_0|videoGen|colorAddress~115_combout\,
	datad => \vga_0|videoGen|colorAddress~195_combout\,
	combout => \vga_0|videoGen|colorAddress~116_combout\);

-- Location: LCCOMB_X28_Y23_N10
\vga_0|videoGen|colorAddress~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~196_combout\ = (\vga_0|videoGen|colorAddress~116_combout\ & (((!\vga_0|videoGen|colorAddress~107_combout\ & !\vga_0|videoGen|colorAddress~106_combout\)) # (!\vga_0|videoGen|pixelDraw~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~60_combout\,
	datab => \vga_0|videoGen|colorAddress~107_combout\,
	datac => \vga_0|videoGen|colorAddress~106_combout\,
	datad => \vga_0|videoGen|colorAddress~116_combout\,
	combout => \vga_0|videoGen|colorAddress~196_combout\);

-- Location: LCCOMB_X28_Y23_N0
\vga_0|videoGen|colorAddress~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~118_combout\ = (\vga_0|videoGen|colorAddress~196_combout\ & (((!\vga_0|videoGen|pixelDraw~79_combout\ & !\vga_0|videoGen|pixelDraw~21_combout\)) # (!\vga_0|videoGen|pixelDraw~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~60_combout\,
	datab => \vga_0|videoGen|pixelDraw~79_combout\,
	datac => \vga_0|videoGen|pixelDraw~21_combout\,
	datad => \vga_0|videoGen|colorAddress~196_combout\,
	combout => \vga_0|videoGen|colorAddress~118_combout\);

-- Location: LCCOMB_X28_Y23_N2
\vga_0|videoGen|colorAddress~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~119_combout\ = (\vga_0|videoGen|colorAddress~95_combout\ & (\vga_0|videoGen|colorAddress~118_combout\ & ((!\vga_0|videoGen|pixelDraw~31_combout\) # (!\vga_0|videoGen|pixelDraw~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~60_combout\,
	datab => \vga_0|videoGen|colorAddress~95_combout\,
	datac => \vga_0|videoGen|pixelDraw~31_combout\,
	datad => \vga_0|videoGen|colorAddress~118_combout\,
	combout => \vga_0|videoGen|colorAddress~119_combout\);

-- Location: LCCOMB_X28_Y23_N16
\vga_0|videoGen|colorAddress~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~130_combout\ = (\vga_0|videoGen|colorAddress~121_combout\ & (\vga_0|videoGen|colorAddress~129_combout\ & (\vga_0|videoGen|colorAddress~125_combout\ & \vga_0|videoGen|colorAddress~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~121_combout\,
	datab => \vga_0|videoGen|colorAddress~129_combout\,
	datac => \vga_0|videoGen|colorAddress~125_combout\,
	datad => \vga_0|videoGen|colorAddress~119_combout\,
	combout => \vga_0|videoGen|colorAddress~130_combout\);

-- Location: LCCOMB_X31_Y25_N20
\vga_0|videoGen|LessThan54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|LessThan54~1_combout\ = (\vga_0|videoSync|pixel_column\(6) & ((\vga_0|videoGen|LessThan54~0_combout\) # ((\vga_0|videoSync|pixel_column\(3)) # (!\vga_0|videoGen|LessThan373~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(6),
	datab => \vga_0|videoGen|LessThan54~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(3),
	datad => \vga_0|videoGen|LessThan373~2_combout\,
	combout => \vga_0|videoGen|LessThan54~1_combout\);

-- Location: LCCOMB_X30_Y22_N12
\vga_0|videoGen|pixelDraw~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~72_combout\ = (\vga_0|videoGen|LessThan133~2_combout\ & (!\vga_0|videoGen|LessThan54~1_combout\ & ((!\vga_0|videoGen|LessThan53~1_combout\) # (!\vga_0|videoGen|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan13~0_combout\,
	datab => \vga_0|videoGen|LessThan133~2_combout\,
	datac => \vga_0|videoGen|LessThan53~1_combout\,
	datad => \vga_0|videoGen|LessThan54~1_combout\,
	combout => \vga_0|videoGen|pixelDraw~72_combout\);

-- Location: LCCOMB_X30_Y22_N14
\vga_0|videoGen|pixelDraw~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~73_combout\ = (!\vga_0|videoGen|pixelDraw~70_combout\) # (!\vga_0|videoGen|pixelDraw~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoGen|pixelDraw~46_combout\,
	datad => \vga_0|videoGen|pixelDraw~70_combout\,
	combout => \vga_0|videoGen|pixelDraw~73_combout\);

-- Location: LCCOMB_X30_Y22_N24
\vga_0|videoGen|colorAddress~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~131_combout\ = (\vga_0|videoGen|pixelDraw~73_combout\ & (((!\vga_0|videoGen|pixelDraw~36_combout\ & !\vga_0|videoGen|pixelDraw~41_combout\)) # (!\vga_0|videoGen|pixelDraw~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~72_combout\,
	datab => \vga_0|videoGen|pixelDraw~73_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|pixelDraw~41_combout\,
	combout => \vga_0|videoGen|colorAddress~131_combout\);

-- Location: LCCOMB_X29_Y22_N22
\vga_0|videoGen|colorAddress~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~132_combout\ = (\vga_0|videoGen|colorAddress~131_combout\ & (((!\vga_0|videoGen|pixelDraw~34_combout\ & !\vga_0|videoGen|pixelDraw~38_combout\)) # (!\vga_0|videoGen|pixelDraw~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~34_combout\,
	datab => \vga_0|videoGen|pixelDraw~38_combout\,
	datac => \vga_0|videoGen|pixelDraw~72_combout\,
	datad => \vga_0|videoGen|colorAddress~131_combout\,
	combout => \vga_0|videoGen|colorAddress~132_combout\);

-- Location: LCCOMB_X29_Y22_N26
\vga_0|videoGen|colorAddress~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~133_combout\ = (\vga_0|videoGen|colorAddress~132_combout\ & ((!\vga_0|videoGen|pixelDraw~72_combout\) # (!\vga_0|videoGen|pixelDraw~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~33_combout\,
	datac => \vga_0|videoGen|pixelDraw~72_combout\,
	datad => \vga_0|videoGen|colorAddress~132_combout\,
	combout => \vga_0|videoGen|colorAddress~133_combout\);

-- Location: LCCOMB_X29_Y22_N2
\vga_0|videoGen|colorAddress~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~135_combout\ = (\vga_0|videoGen|colorAddress~133_combout\ & (((!\vga_0|videoGen|colorAddress~134_combout\ & !\vga_0|videoGen|pixelDraw~46_combout\)) # (!\vga_0|videoGen|pixelDraw~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~134_combout\,
	datab => \vga_0|videoGen|pixelDraw~46_combout\,
	datac => \vga_0|videoGen|pixelDraw~72_combout\,
	datad => \vga_0|videoGen|colorAddress~133_combout\,
	combout => \vga_0|videoGen|colorAddress~135_combout\);

-- Location: LCCOMB_X28_Y23_N30
\vga_0|videoGen|colorAddress~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~138_combout\ = (\vga_0|videoGen|colorAddress~137_combout\ & (\vga_0|videoGen|colorAddress~130_combout\ & \vga_0|videoGen|colorAddress~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~137_combout\,
	datac => \vga_0|videoGen|colorAddress~130_combout\,
	datad => \vga_0|videoGen|colorAddress~135_combout\,
	combout => \vga_0|videoGen|colorAddress~138_combout\);

-- Location: LCCOMB_X25_Y23_N14
\vga_0|videoGen|colorAddress~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~139_combout\ = (\vga_0|videoGen|pixelDraw~80_combout\ & (\vga_0|videoGen|pixelDraw~81_combout\ & (\vga_0|videoGen|pixelDraw~82_combout\ & \vga_0|videoGen|colorAddress~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~80_combout\,
	datab => \vga_0|videoGen|pixelDraw~81_combout\,
	datac => \vga_0|videoGen|pixelDraw~82_combout\,
	datad => \vga_0|videoGen|colorAddress~138_combout\,
	combout => \vga_0|videoGen|colorAddress~139_combout\);

-- Location: LCCOMB_X27_Y26_N12
\vga_0|videoGen|pixelDraw~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~59_combout\ = (\vga_0|videoSync|pixel_column\(7) & (\vga_0|videoGen|LessThan13~3_combout\ & ((!\vga_0|videoGen|LessThan13~1_combout\) # (!\vga_0|videoGen|LessThan173~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|LessThan173~0_combout\,
	datab => \vga_0|videoGen|LessThan13~1_combout\,
	datac => \vga_0|videoSync|pixel_column\(7),
	datad => \vga_0|videoGen|LessThan13~3_combout\,
	combout => \vga_0|videoGen|pixelDraw~59_combout\);

-- Location: LCCOMB_X27_Y26_N26
\vga_0|videoGen|pixelDraw~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~60_combout\ = (\vga_0|videoGen|pixelDraw~59_combout\ & (((!\vga_0|videoSync|pixel_column\(6) & !\vga_0|videoSync|pixel_column\(5))) # (!\vga_0|videoSync|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|pixel_column\(7),
	datab => \vga_0|videoSync|pixel_column\(6),
	datac => \vga_0|videoSync|pixel_column\(5),
	datad => \vga_0|videoGen|pixelDraw~59_combout\,
	combout => \vga_0|videoGen|pixelDraw~60_combout\);

-- Location: LCCOMB_X27_Y22_N0
\vga_0|videoGen|colorAddress~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~120_combout\ = (!\vga_0|videoSync|pixel_column\(9) & ((\vga_0|videoGen|Equal3~1_combout\) # (\vga_0|videoGen|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|Equal3~1_combout\,
	datac => \vga_0|videoSync|pixel_column\(9),
	datad => \vga_0|videoGen|Equal2~0_combout\,
	combout => \vga_0|videoGen|colorAddress~120_combout\);

-- Location: LCCOMB_X31_Y24_N28
\vga_0|videoGen|pixelDraw~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|pixelDraw~66_combout\ = (\vga_0|videoGen|pixelDraw~36_combout\ & \vga_0|videoGen|pixelDraw~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|pixelDraw~44_combout\,
	combout => \vga_0|videoGen|pixelDraw~66_combout\);

-- Location: LCCOMB_X27_Y23_N10
\vga_0|videoGen|colorAddress~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~121_combout\ = (!\vga_0|videoGen|pixelDraw~66_combout\ & (((!\vga_0|videoGen|placeShip_on~combout\ & !\vga_0|videoGen|colorAddress~120_combout\)) # (!\vga_0|videoGen|Mux653~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|placeShip_on~combout\,
	datab => \vga_0|videoGen|colorAddress~120_combout\,
	datac => \vga_0|videoGen|pixelDraw~66_combout\,
	datad => \vga_0|videoGen|Mux653~4_combout\,
	combout => \vga_0|videoGen|colorAddress~121_combout\);

-- Location: LCCOMB_X28_Y22_N14
\vga_0|videoGen|colorAddress~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~198_combout\ = (\vga_0|videoGen|colorAddress~121_combout\ & (\vga_0|videoGen|colorAddress~119_combout\ & ((!\vga_0|videoGen|pixelDraw~60_combout\) # (!\vga_0|videoGen|pixelDraw~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~46_combout\,
	datab => \vga_0|videoGen|pixelDraw~60_combout\,
	datac => \vga_0|videoGen|colorAddress~121_combout\,
	datad => \vga_0|videoGen|colorAddress~119_combout\,
	combout => \vga_0|videoGen|colorAddress~198_combout\);

-- Location: LCCOMB_X30_Y22_N0
\vga_0|videoGen|colorAddress~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~141_combout\ = (\vga_0|videoGen|pixelDraw~68_combout\ & ((\vga_0|videoGen|pixelDraw~38_combout\) # ((\vga_0|videoGen|pixelDraw~41_combout\) # (\vga_0|videoGen|pixelDraw~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~38_combout\,
	datab => \vga_0|videoGen|pixelDraw~41_combout\,
	datac => \vga_0|videoGen|pixelDraw~36_combout\,
	datad => \vga_0|videoGen|pixelDraw~68_combout\,
	combout => \vga_0|videoGen|colorAddress~141_combout\);

-- Location: LCCOMB_X28_Y22_N28
\vga_0|videoGen|colorAddress~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~142_combout\ = (\vga_0|videoGen|pixelDraw~69_combout\ & (\vga_0|videoGen|colorAddress~121_combout\ & (!\vga_0|videoGen|colorAddress~141_combout\ & \vga_0|videoGen|colorAddress~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~69_combout\,
	datab => \vga_0|videoGen|colorAddress~121_combout\,
	datac => \vga_0|videoGen|colorAddress~141_combout\,
	datad => \vga_0|videoGen|colorAddress~119_combout\,
	combout => \vga_0|videoGen|colorAddress~142_combout\);

-- Location: LCCOMB_X28_Y22_N20
\vga_0|videoGen|colorAddress~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~164_combout\ = (\vga_0|videoGen|colorAddress~123_combout\ & (!\vga_0|videoGen|colorAddress~142_combout\ & ((!\vga_0|videoGen|colorAddress~130_combout\) # (!\vga_0|videoGen|colorAddress~131_combout\)))) # 
-- (!\vga_0|videoGen|colorAddress~123_combout\ & (((!\vga_0|videoGen|colorAddress~130_combout\)) # (!\vga_0|videoGen|colorAddress~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~123_combout\,
	datab => \vga_0|videoGen|colorAddress~131_combout\,
	datac => \vga_0|videoGen|colorAddress~130_combout\,
	datad => \vga_0|videoGen|colorAddress~142_combout\,
	combout => \vga_0|videoGen|colorAddress~164_combout\);

-- Location: LCCOMB_X28_Y22_N22
\vga_0|videoGen|colorAddress~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~166_combout\ = (\vga_0|videoGen|colorAddress~121_combout\ & (\vga_0|videoGen|colorAddress~125_combout\ & \vga_0|videoGen|colorAddress~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~121_combout\,
	datab => \vga_0|videoGen|colorAddress~125_combout\,
	datad => \vga_0|videoGen|colorAddress~119_combout\,
	combout => \vga_0|videoGen|colorAddress~166_combout\);

-- Location: LCCOMB_X28_Y22_N6
\vga_0|videoGen|colorAddress~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~167_combout\ = (\vga_0|videoGen|colorAddress~133_combout\ & (!\vga_0|videoGen|colorAddress~130_combout\ & ((!\vga_0|videoGen|colorAddress~166_combout\) # (!\vga_0|videoGen|colorAddress~126_combout\)))) # 
-- (!\vga_0|videoGen|colorAddress~133_combout\ & (((!\vga_0|videoGen|colorAddress~166_combout\)) # (!\vga_0|videoGen|colorAddress~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~133_combout\,
	datab => \vga_0|videoGen|colorAddress~126_combout\,
	datac => \vga_0|videoGen|colorAddress~130_combout\,
	datad => \vga_0|videoGen|colorAddress~166_combout\,
	combout => \vga_0|videoGen|colorAddress~167_combout\);

-- Location: LCCOMB_X28_Y22_N0
\vga_0|videoGen|colorAddress~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~168_combout\ = (\vga_0|videoGen|colorAddress~165_combout\ & (!\vga_0|videoGen|colorAddress~198_combout\ & (\vga_0|videoGen|colorAddress~164_combout\ & \vga_0|videoGen|colorAddress~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~165_combout\,
	datab => \vga_0|videoGen|colorAddress~198_combout\,
	datac => \vga_0|videoGen|colorAddress~164_combout\,
	datad => \vga_0|videoGen|colorAddress~167_combout\,
	combout => \vga_0|videoGen|colorAddress~168_combout\);

-- Location: LCCOMB_X30_Y22_N6
\vga_0|videoGen|colorAddress~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~197_combout\ = (\vga_0|videoGen|pixelDraw~72_combout\ & ((\vga_0|videoGen|pixelDraw~22_combout\) # ((!\vga_0|videoGen|LessThan23~2_combout\ & \vga_0|videoGen|pixelDraw~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~72_combout\,
	datab => \vga_0|videoGen|LessThan23~2_combout\,
	datac => \vga_0|videoGen|pixelDraw~22_combout\,
	datad => \vga_0|videoGen|pixelDraw~20_combout\,
	combout => \vga_0|videoGen|colorAddress~197_combout\);

-- Location: LCCOMB_X28_Y22_N18
\vga_0|videoGen|colorAddress~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~140_combout\ = (\vga_0|videoGen|colorAddress~133_combout\ & (!\vga_0|videoGen|colorAddress~197_combout\ & \vga_0|videoGen|colorAddress~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~133_combout\,
	datab => \vga_0|videoGen|colorAddress~197_combout\,
	datac => \vga_0|videoGen|colorAddress~130_combout\,
	combout => \vga_0|videoGen|colorAddress~140_combout\);

-- Location: LCCOMB_X28_Y22_N8
\vga_0|videoGen|colorAddress~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~201_combout\ = (!\vga_0|videoGen|colorAddress~140_combout\ & (((\vga_0|videoGen|pixelDraw~34_combout\ & \vga_0|videoGen|pixelDraw~68_combout\)) # (!\vga_0|videoGen|colorAddress~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~34_combout\,
	datab => \vga_0|videoGen|colorAddress~142_combout\,
	datac => \vga_0|videoGen|pixelDraw~68_combout\,
	datad => \vga_0|videoGen|colorAddress~140_combout\,
	combout => \vga_0|videoGen|colorAddress~201_combout\);

-- Location: LCCOMB_X28_Y22_N4
\vga_0|videoGen|colorAddress~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~160_combout\ = (\vga_0|videoGen|colorAddress~121_combout\ & (((!\vga_0|videoGen|pixelDraw~21_combout\ & !\vga_0|videoGen|pixelDraw~22_combout\)) # (!\vga_0|videoGen|pixelDraw~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|pixelDraw~21_combout\,
	datab => \vga_0|videoGen|pixelDraw~22_combout\,
	datac => \vga_0|videoGen|colorAddress~121_combout\,
	datad => \vga_0|videoGen|pixelDraw~70_combout\,
	combout => \vga_0|videoGen|colorAddress~160_combout\);

-- Location: LCCOMB_X28_Y22_N26
\vga_0|videoGen|colorAddress~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~161_combout\ = (\vga_0|videoGen|colorAddress~127_combout\ & (\vga_0|videoGen|colorAddress~125_combout\ & (\vga_0|videoGen|colorAddress~160_combout\ & \vga_0|videoGen|colorAddress~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~127_combout\,
	datab => \vga_0|videoGen|colorAddress~125_combout\,
	datac => \vga_0|videoGen|colorAddress~160_combout\,
	datad => \vga_0|videoGen|colorAddress~119_combout\,
	combout => \vga_0|videoGen|colorAddress~161_combout\);

-- Location: LCCOMB_X28_Y22_N30
\vga_0|videoGen|colorAddress~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~162_combout\ = (\vga_0|videoGen|colorAddress~161_combout\ & ((!\vga_0|videoGen|pixelDraw~79_combout\) # (!\vga_0|videoGen|pixelDraw~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_0|videoGen|pixelDraw~70_combout\,
	datac => \vga_0|videoGen|pixelDraw~79_combout\,
	datad => \vga_0|videoGen|colorAddress~161_combout\,
	combout => \vga_0|videoGen|colorAddress~162_combout\);

-- Location: LCCOMB_X28_Y22_N12
\vga_0|videoGen|colorAddress~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~163_combout\ = (!\vga_0|videoGen|colorAddress~162_combout\ & (((!\vga_0|videoGen|colorAddress~135_combout\ & !\vga_0|videoGen|pixelDraw~73_combout\)) # (!\vga_0|videoGen|colorAddress~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~135_combout\,
	datab => \vga_0|videoGen|pixelDraw~73_combout\,
	datac => \vga_0|videoGen|colorAddress~130_combout\,
	datad => \vga_0|videoGen|colorAddress~162_combout\,
	combout => \vga_0|videoGen|colorAddress~163_combout\);

-- Location: LCCOMB_X28_Y23_N6
\vga_0|videoGen|colorAddress~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~169_combout\ = (\vga_0|videoGen|colorAddress~159_combout\ & (\vga_0|videoGen|colorAddress~168_combout\ & (\vga_0|videoGen|colorAddress~201_combout\ & \vga_0|videoGen|colorAddress~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~159_combout\,
	datab => \vga_0|videoGen|colorAddress~168_combout\,
	datac => \vga_0|videoGen|colorAddress~201_combout\,
	datad => \vga_0|videoGen|colorAddress~163_combout\,
	combout => \vga_0|videoGen|colorAddress~169_combout\);

-- Location: LCCOMB_X28_Y23_N4
\vga_0|videoGen|colorAddress~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~171_combout\ = (\vga_0|videoGen|colorAddress~170_combout\ & (!\vga_0|videoGen|colorAddress~138_combout\ & \vga_0|videoGen|colorAddress~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~170_combout\,
	datab => \vga_0|videoGen|colorAddress~138_combout\,
	datad => \vga_0|videoGen|colorAddress~169_combout\,
	combout => \vga_0|videoGen|colorAddress~171_combout\);

-- Location: LCCOMB_X25_Y23_N6
\vga_0|videoGen|colorAddress~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~175_combout\ = (\vga_0|videoGen|colorAddress~139_combout\ & (\vga_0|videoGen|colorAddress~199_combout\ & ((\vga_0|videoGen|colorAddress~172_combout\) # (\vga_0|videoGen|colorAddress~171_combout\)))) # 
-- (!\vga_0|videoGen|colorAddress~139_combout\ & (((\vga_0|videoGen|colorAddress~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~172_combout\,
	datab => \vga_0|videoGen|colorAddress~199_combout\,
	datac => \vga_0|videoGen|colorAddress~139_combout\,
	datad => \vga_0|videoGen|colorAddress~171_combout\,
	combout => \vga_0|videoGen|colorAddress~175_combout\);

-- Location: LCCOMB_X28_Y23_N26
\vga_0|videoGen|colorAddress~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~177_combout\ = (!\vga_0|videoGen|colorAddress~176_combout\ & (!\vga_0|videoGen|colorAddress~138_combout\ & \vga_0|videoGen|colorAddress~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~176_combout\,
	datab => \vga_0|videoGen|colorAddress~138_combout\,
	datad => \vga_0|videoGen|colorAddress~169_combout\,
	combout => \vga_0|videoGen|colorAddress~177_combout\);

-- Location: LCCOMB_X25_Y23_N20
\vga_0|videoGen|colorAddress~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~178_combout\ = (\vga_0|videoGen|colorAddress~139_combout\ & (((!\vga_0|videoGen|colorAddress~174_combout\)) # (!\vga_0|videoGen|colorAddress~172_combout\))) # (!\vga_0|videoGen|colorAddress~139_combout\ & 
-- (((!\vga_0|videoGen|colorAddress~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~172_combout\,
	datab => \vga_0|videoGen|colorAddress~174_combout\,
	datac => \vga_0|videoGen|colorAddress~139_combout\,
	datad => \vga_0|videoGen|colorAddress~177_combout\,
	combout => \vga_0|videoGen|colorAddress~178_combout\);

-- Location: LCCOMB_X25_Y25_N0
\vga_0|videoGen|colorAddress~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~179_combout\ = (\vga_0|videoGen|Equal3~1_combout\ & ((\vga_0|videoSync|pixel_column\(8)))) # (!\vga_0|videoGen|Equal3~1_combout\ & (\vga_0|videoGen|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|Equal3~1_combout\,
	datab => \vga_0|videoGen|Equal2~0_combout\,
	datac => \vga_0|videoSync|pixel_column\(8),
	combout => \vga_0|videoGen|colorAddress~179_combout\);

-- Location: LCCOMB_X28_Y22_N16
\vga_0|videoGen|colorAddress~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~182_combout\ = (\vga_0|videoGen|colorAddress~181_combout\ & (\vga_0|videoGen|colorAddress~125_combout\ & (\vga_0|videoGen|colorAddress~129_combout\ & \vga_0|videoGen|colorAddress~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~181_combout\,
	datab => \vga_0|videoGen|colorAddress~125_combout\,
	datac => \vga_0|videoGen|colorAddress~129_combout\,
	datad => \vga_0|videoGen|colorAddress~135_combout\,
	combout => \vga_0|videoGen|colorAddress~182_combout\);

-- Location: LCCOMB_X25_Y23_N28
\vga_0|videoGen|colorAddress~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~183_combout\ = (\vga_0|videoGen|placeShip_on~combout\ & ((\vga_0|videoGen|Mux653~4_combout\) # ((\vga_0|videoGen|colorAddress~182_combout\ & \vga_0|videoGen|colorAddress~119_combout\)))) # 
-- (!\vga_0|videoGen|placeShip_on~combout\ & (\vga_0|videoGen|colorAddress~182_combout\ & ((\vga_0|videoGen|colorAddress~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|placeShip_on~combout\,
	datab => \vga_0|videoGen|colorAddress~182_combout\,
	datac => \vga_0|videoGen|Mux653~4_combout\,
	datad => \vga_0|videoGen|colorAddress~119_combout\,
	combout => \vga_0|videoGen|colorAddress~183_combout\);

-- Location: LCCOMB_X25_Y23_N18
\vga_0|videoGen|colorAddress~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoGen|colorAddress~185_combout\ = (\vga_0|videoGen|colorAddress~184_combout\ & ((\vga_0|videoGen|colorAddress~179_combout\) # ((!\vga_0|videoGen|Equal3~1_combout\ & \vga_0|videoGen|colorAddress~183_combout\)))) # 
-- (!\vga_0|videoGen|colorAddress~184_combout\ & (((\vga_0|videoGen|colorAddress~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoGen|colorAddress~184_combout\,
	datab => \vga_0|videoGen|Equal3~1_combout\,
	datac => \vga_0|videoGen|colorAddress~179_combout\,
	datad => \vga_0|videoGen|colorAddress~183_combout\,
	combout => \vga_0|videoGen|colorAddress~185_combout\);

-- Location: M4K_X26_Y23
\vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"FFFFFFFC0000000003FFFFFFF003FFFFFFF00000003FF003FF003FF00000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "colorROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "VGA_top_level:vga_0|pixelGenerator:videoGen|colorROM:colors|altsyncram:altsyncram_component|altsyncram_pv71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 30,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 30,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 3,
	port_b_data_width => 30,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	portaaddr => \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \vga_0|videoGen|colors|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y26_N4
\vga_0|videoSync|process_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~3_combout\ = (\vga_0|videoSync|process_1~2_combout\) # (((\vga_0|videoSync|h_count\(8)) # (!\vga_0|videoSync|h_count\(7))) # (!\vga_0|videoSync|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|process_1~2_combout\,
	datab => \vga_0|videoSync|h_count\(9),
	datac => \vga_0|videoSync|h_count\(8),
	datad => \vga_0|videoSync|h_count\(7),
	combout => \vga_0|videoSync|process_1~3_combout\);

-- Location: LCCOMB_X25_Y26_N30
\vga_0|videoSync|process_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~6_combout\ = (\vga_0|videoSync|process_1~3_combout\) # ((\vga_0|videoSync|process_1~4_combout\ & (\vga_0|videoSync|process_1~5_combout\ & \vga_0|videoSync|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|process_1~4_combout\,
	datab => \vga_0|videoSync|process_1~5_combout\,
	datac => \vga_0|videoSync|process_1~3_combout\,
	datad => \vga_0|videoSync|h_count\(6),
	combout => \vga_0|videoSync|process_1~6_combout\);

-- Location: LCFF_X25_Y26_N31
\vga_0|videoSync|horiz_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|process_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|horiz_sync~regout\);

-- Location: LCCOMB_X24_Y26_N20
\vga_0|videoSync|horiz_sync_out~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|horiz_sync_out~feeder_combout\ = \vga_0|videoSync|horiz_sync~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_0|videoSync|horiz_sync~regout\,
	combout => \vga_0|videoSync|horiz_sync_out~feeder_combout\);

-- Location: LCFF_X24_Y26_N21
\vga_0|videoSync|horiz_sync_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|horiz_sync_out~regout\);

-- Location: LCCOMB_X28_Y27_N4
\vga_0|videoSync|process_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~7_combout\ = ((\vga_0|videoSync|v_count\(1) & ((\vga_0|videoSync|v_count\(2)) # (!\vga_0|videoSync|v_count\(0)))) # (!\vga_0|videoSync|v_count\(1) & ((!\vga_0|videoSync|v_count\(2))))) # (!\vga_0|videoSync|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|v_count\(1),
	datab => \vga_0|videoSync|v_count\(3),
	datac => \vga_0|videoSync|v_count\(0),
	datad => \vga_0|videoSync|v_count\(2),
	combout => \vga_0|videoSync|process_1~7_combout\);

-- Location: LCCOMB_X28_Y27_N20
\vga_0|videoSync|process_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|process_1~8_combout\ = (\vga_0|videoSync|v_count\(4)) # (((\vga_0|videoSync|process_1~7_combout\) # (\vga_0|videoSync|v_count\(9))) # (!\vga_0|videoSync|LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_0|videoSync|v_count\(4),
	datab => \vga_0|videoSync|LessThan6~0_combout\,
	datac => \vga_0|videoSync|process_1~7_combout\,
	datad => \vga_0|videoSync|v_count\(9),
	combout => \vga_0|videoSync|process_1~8_combout\);

-- Location: LCFF_X28_Y27_N21
\vga_0|videoSync|vert_sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|vert_sync~regout\);

-- Location: LCCOMB_X24_Y27_N28
\vga_0|videoSync|vert_sync_out~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|vert_sync_out~feeder_combout\ = \vga_0|videoSync|vert_sync~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_0|videoSync|vert_sync~regout\,
	combout => \vga_0|videoSync|vert_sync_out~feeder_combout\);

-- Location: LCFF_X24_Y27_N29
\vga_0|videoSync|vert_sync_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	datain => \vga_0|videoSync|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|vert_sync_out~regout\);

-- Location: LCFF_X25_Y26_N17
\vga_0|videoSync|video_on_h\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|LessThan5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|video_on_h~regout\);

-- Location: LCFF_X28_Y26_N5
\vga_0|videoSync|video_on_v\ : cycloneii_lcell_ff
PORT MAP (
	clk => \vga_0|videoSync|pixel_clock_int~clkctrl_outclk\,
	sdata => \vga_0|videoSync|LessThan6~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga_0|videoSync|video_on_v~regout\);

-- Location: LCCOMB_X25_Y26_N16
\vga_0|videoSync|video_on\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga_0|videoSync|video_on~combout\ = (\vga_0|videoSync|video_on_h~regout\ & \vga_0|videoSync|video_on_v~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_0|videoSync|video_on_h~regout\,
	datad => \vga_0|videoSync|video_on_v~regout\,
	combout => \vga_0|videoSync|video_on~combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
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
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_BCLK~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => AUD_BCLK);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_ADCLRCK~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => AUD_ADCLRCK);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACLRCK~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => AUD_DACLRCK);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SDAT~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => I2C_SDAT);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[0]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DATA_BUS(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[1]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DATA_BUS(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[2]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DATA_BUS(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[3]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DATA_BUS(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[4]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DATA_BUS(4));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[5]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DATA_BUS(5));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[6]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DATA_BUS(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_BUS[7]~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DATA_BUS(7));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AUD_ADCDAT~I\ : cycloneii_io
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
	padio => ww_AUD_ADCDAT);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch~I\ : cycloneii_io
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
	padio => ww_switch);

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\keyboard_clk~I\ : cycloneii_io
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
	padio => ww_keyboard_clk);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\keyboard_data~I\ : cycloneii_io
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
	padio => ww_keyboard_data);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27~I\ : cycloneii_io
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
	padio => ww_CLOCK_27);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(0));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_KEY(3));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_XCK~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_XCK);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACDAT~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACDAT);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SCLK~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_I2C_SCLK);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RS~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RS);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_E~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_E);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_ON~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_ON);

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESET_LED~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESET_LED);

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEC_LED~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEC_LED);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RW~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RW);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[0]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[1]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[2]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[3]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(3));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[4]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[5]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[6]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[7]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[8]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(8));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED[9]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED(9));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[0]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[1]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[2]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[3]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[4]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[5]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[6]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[7]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(7));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[8]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(8));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN[9]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN(9));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[0]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[1]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[2]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[3]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[4]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[5]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[6]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[7]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(7));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[8]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(8));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE[9]~I\ : cycloneii_io
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
	datain => \vga_0|videoGen|colors|altsyncram_component|auto_generated|q_a\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE(9));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HORIZ_SYNC~I\ : cycloneii_io
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
	datain => \vga_0|videoSync|horiz_sync_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HORIZ_SYNC);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VERT_SYNC~I\ : cycloneii_io
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
	datain => \vga_0|videoSync|vert_sync_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VERT_SYNC);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK~I\ : cycloneii_io
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
	datain => \vga_0|videoSync|video_on~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLK~I\ : cycloneii_io
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
	datain => \vga_0|videoSync|pixel_clock_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLK);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\test0~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_test0);

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\test1~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_test1);

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\test2~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_test2);

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\test3~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_test3);

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\test4~I\ : cycloneii_io
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
	datain => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_test4);

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\test11~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_test11);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(7));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(8));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(9));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(10));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[11]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(11));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[12]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(12));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[13]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(13));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[14]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(14));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[15]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(15));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[16]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(16));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[17]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(17));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[18]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(18));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[19]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(19));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[20]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(20));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[21]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(21));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[22]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(22));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[23]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(23));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[24]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(24));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[25]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(25));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[26]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(26));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[27]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(27));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[28]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(28));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[29]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(29));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[30]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(30));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[31]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(31));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[32]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(32));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[33]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(33));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[34]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(34));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[35]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(35));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[36]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(36));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[37]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(37));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[38]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(38));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[39]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(39));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[40]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(40));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[41]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(41));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[42]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(42));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[43]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(43));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[44]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(44));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[45]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(45));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[46]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(46));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[47]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(47));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[48]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(48));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[49]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(49));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[50]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(50));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[51]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(51));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[52]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(52));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[53]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(53));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[54]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(54));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_seq[55]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_seq(55));
END structure;


