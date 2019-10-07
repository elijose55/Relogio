-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/07/2019 14:40:45"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
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
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CPU|PC|toout[0]~8_combout\ : std_logic;
SIGNAL \CPU|PC|toout[3]~15\ : std_logic;
SIGNAL \CPU|PC|toout[4]~16_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|ROM|content~49_combout\ : std_logic;
SIGNAL \CPU|ROM|content~47_combout\ : std_logic;
SIGNAL \CPU|ROM|content~46_combout\ : std_logic;
SIGNAL \CPU|ROM|content~48_combout\ : std_logic;
SIGNAL \CPU|ROM|content~45_combout\ : std_logic;
SIGNAL \CPU|ROM|content~50_combout\ : std_logic;
SIGNAL \CPU|ROM|content~42_combout\ : std_logic;
SIGNAL \CPU|ROM|content~41_combout\ : std_logic;
SIGNAL \CPU|ROM|content~71_combout\ : std_logic;
SIGNAL \CPU|ROM|content~43_combout\ : std_logic;
SIGNAL \CPU|UC|muxJMP~2_combout\ : std_logic;
SIGNAL \CPU|PC|toout[4]~17\ : std_logic;
SIGNAL \CPU|PC|toout[5]~18_combout\ : std_logic;
SIGNAL \CPU|ROM|content~63_combout\ : std_logic;
SIGNAL \CPU|ROM|content~62_combout\ : std_logic;
SIGNAL \CPU|ROM|content~74_combout\ : std_logic;
SIGNAL \CPU|PC|toout[5]~19\ : std_logic;
SIGNAL \CPU|PC|toout[6]~20_combout\ : std_logic;
SIGNAL \CPU|PC|toout[6]~21\ : std_logic;
SIGNAL \CPU|PC|toout[7]~22_combout\ : std_logic;
SIGNAL \CPU|ROM|content~56_combout\ : std_logic;
SIGNAL \CPU|ROM|content~57_combout\ : std_logic;
SIGNAL \CPU|ROM|content~55_combout\ : std_logic;
SIGNAL \CPU|ROM|content~58_combout\ : std_logic;
SIGNAL \CPU|ROM|content~73_combout\ : std_logic;
SIGNAL \CPU|PC|toout[0]~9\ : std_logic;
SIGNAL \CPU|PC|toout[1]~10_combout\ : std_logic;
SIGNAL \CPU|ROM|content~51_combout\ : std_logic;
SIGNAL \CPU|ROM|content~52_combout\ : std_logic;
SIGNAL \CPU|ROM|content~53_combout\ : std_logic;
SIGNAL \CPU|ROM|content~54_combout\ : std_logic;
SIGNAL \CPU|ROM|content~72_combout\ : std_logic;
SIGNAL \CPU|PC|toout[1]~11\ : std_logic;
SIGNAL \CPU|PC|toout[2]~12_combout\ : std_logic;
SIGNAL \CPU|ROM|content~15_combout\ : std_logic;
SIGNAL \CPU|ROM|content~65_combout\ : std_logic;
SIGNAL \CPU|ROM|content~64_combout\ : std_logic;
SIGNAL \CPU|ROM|content~67_combout\ : std_logic;
SIGNAL \CPU|ROM|content~66_combout\ : std_logic;
SIGNAL \CPU|ROM|content~68_combout\ : std_logic;
SIGNAL \CPU|PC|toout[2]~13\ : std_logic;
SIGNAL \CPU|PC|toout[3]~14_combout\ : std_logic;
SIGNAL \CPU|ROM|content~59_combout\ : std_logic;
SIGNAL \CPU|ROM|content~60_combout\ : std_logic;
SIGNAL \CPU|ROM|content~61_combout\ : std_logic;
SIGNAL \CPU|ROM|content~12_combout\ : std_logic;
SIGNAL \CPU|ROM|content~13_combout\ : std_logic;
SIGNAL \CPU|ROM|content~14_combout\ : std_logic;
SIGNAL \CPU|ROM|content~69_combout\ : std_logic;
SIGNAL \CPU|ROM|content~16_combout\ : std_logic;
SIGNAL \DE|CLEAR_TEMPO~6_combout\ : std_logic;
SIGNAL \DE|CLEAR_TEMPO~3_combout\ : std_logic;
SIGNAL \DE|CLEAR_TEMPO~16_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~0_combout\ : std_logic;
SIGNAL \BASE_TEMPO|contador~1_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~1\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~2_combout\ : std_logic;
SIGNAL \BASE_TEMPO|contador~0_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~3\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~4_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~5\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~6_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Equal0~0_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~7\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~8_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~9\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~10_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~11\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~12_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~13\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~14_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~15\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~16_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~17\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~18_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~19\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~20_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~21\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~22_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Equal0~2_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~23\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~24_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~25\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~26_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~27\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~28_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~29\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~30_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Equal0~3_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Equal0~1_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Equal0~4_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~31\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~32_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~33\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~34_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~35\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~36_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~37\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~38_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~39\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~40_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~41\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~42_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~43\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~44_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~45\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~46_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~47\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~48_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~49\ : std_logic;
SIGNAL \BASE_TEMPO|Add0~50_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Equal0~7_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Equal0~6_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Equal0~5_combout\ : std_logic;
SIGNAL \BASE_TEMPO|Equal0~8_combout\ : std_logic;
SIGNAL \BASE_TEMPO|tick~0_combout\ : std_logic;
SIGNAL \BASE_TEMPO|tick~q\ : std_logic;
SIGNAL \CPU|MUXBancoReg|Mux7~9_combout\ : std_logic;
SIGNAL \CPU|ROM|content~37_combout\ : std_logic;
SIGNAL \CPU|ROM|content~38_combout\ : std_logic;
SIGNAL \CPU|ROM|content~39_combout\ : std_logic;
SIGNAL \CPU|ROM|content~35_combout\ : std_logic;
SIGNAL \CPU|ROM|content~40_combout\ : std_logic;
SIGNAL \CPU|ROM|content~44_combout\ : std_logic;
SIGNAL \CPU|MUXBancoReg|Mux7~8_combout\ : std_logic;
SIGNAL \CPU|ROM|content~17_combout\ : std_logic;
SIGNAL \CPU|ROM|content~18_combout\ : std_logic;
SIGNAL \CPU|ROM|content~19_combout\ : std_logic;
SIGNAL \CPU|ROM|content~20_combout\ : std_logic;
SIGNAL \CPU|ROM|content~32_combout\ : std_logic;
SIGNAL \CPU|ROM|content~31_combout\ : std_logic;
SIGNAL \CPU|ROM|content~33_combout\ : std_logic;
SIGNAL \CPU|ROM|content~34_combout\ : std_logic;
SIGNAL \CPU|ROM|content~36_combout\ : std_logic;
SIGNAL \CPU|ROM|content~24_combout\ : std_logic;
SIGNAL \CPU|ROM|content~27_combout\ : std_logic;
SIGNAL \CPU|ROM|content~70_combout\ : std_logic;
SIGNAL \CPU|ROM|content~28_combout\ : std_logic;
SIGNAL \CPU|ROM|content~29_combout\ : std_logic;
SIGNAL \CPU|ROM|content~25_combout\ : std_logic;
SIGNAL \CPU|ROM|content~21_combout\ : std_logic;
SIGNAL \CPU|ROM|content~22_combout\ : std_logic;
SIGNAL \CPU|ROM|content~23_combout\ : std_logic;
SIGNAL \CPU|ROM|content~26_combout\ : std_logic;
SIGNAL \CPU|BR|Equal0~3_combout\ : std_logic;
SIGNAL \CPU|BR|Equal0~2_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~262feeder_combout\ : std_logic;
SIGNAL \CPU|ROM|content~30_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~382_combout\ : std_logic;
SIGNAL \CPU|UC|wrReg~0_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~383_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~262_q\ : std_logic;
SIGNAL \CPU|BR|registrador~376_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~377_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~198_q\ : std_logic;
SIGNAL \CPU|BR|registrador~230feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~378_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~379_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~230_q\ : std_logic;
SIGNAL \CPU|BR|registrador~380_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~381_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~166_q\ : std_logic;
SIGNAL \CPU|BR|registrador~277_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~278_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~182feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~352_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~353_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~182_q\ : std_logic;
SIGNAL \CPU|BR|registrador~358_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~359_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~246_q\ : std_logic;
SIGNAL \CPU|BR|registrador~150feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~356_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~357_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~150_q\ : std_logic;
SIGNAL \CPU|BR|registrador~354_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~355_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~214_q\ : std_logic;
SIGNAL \CPU|BR|registrador~270_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~271_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~222feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~360_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~361_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~222_q\ : std_logic;
SIGNAL \CPU|BR|registrador~366_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~367_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~254_q\ : std_logic;
SIGNAL \CPU|BR|registrador~362_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~363_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~190_q\ : std_logic;
SIGNAL \CPU|BR|registrador~364_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~365_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~158_q\ : std_logic;
SIGNAL \CPU|BR|registrador~272_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~273_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~206feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~368_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~369_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~206_q\ : std_logic;
SIGNAL \CPU|BR|registrador~374_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~375_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~238_q\ : std_logic;
SIGNAL \CPU|BR|registrador~174feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~370_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~371_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~174_q\ : std_logic;
SIGNAL \CPU|BR|registrador~372_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~373_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~142_q\ : std_logic;
SIGNAL \CPU|BR|registrador~274_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~275_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~276_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~279_combout\ : std_logic;
SIGNAL \CPU|BR|saidaA[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~0_combout\ : std_logic;
SIGNAL \CPU|MUXBancoReg|Mux7~11_combout\ : std_logic;
SIGNAL \CPU|MUXBancoReg|Mux7~10_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~134feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~399_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~134_q\ : std_logic;
SIGNAL \CPU|BR|registrador~396_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~126_q\ : std_logic;
SIGNAL \CPU|BR|registrador~118feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~397_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~118_q\ : std_logic;
SIGNAL \CPU|BR|registrador~398_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~110_q\ : std_logic;
SIGNAL \CPU|BR|registrador~287_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~288_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~62feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~384_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~62_q\ : std_logic;
SIGNAL \CPU|BR|registrador~387_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~70_q\ : std_logic;
SIGNAL \CPU|BR|registrador~385_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~54_q\ : std_logic;
SIGNAL \CPU|BR|registrador~386_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~46_q\ : std_logic;
SIGNAL \CPU|BR|registrador~280_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~281_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~388_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~86_q\ : std_logic;
SIGNAL \CPU|BR|registrador~391_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~102_q\ : std_logic;
SIGNAL \CPU|BR|registrador~94feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~389_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~94_q\ : std_logic;
SIGNAL \CPU|BR|registrador~390_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~78_q\ : std_logic;
SIGNAL \CPU|BR|registrador~282_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~283_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~38feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~393_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~38_q\ : std_logic;
SIGNAL \CPU|BR|registrador~392_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~22_q\ : std_logic;
SIGNAL \CPU|BR|registrador~30feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~394_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~30_q\ : std_logic;
SIGNAL \CPU|BR|registrador~395_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~14_q\ : std_logic;
SIGNAL \CPU|BR|registrador~284_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~285_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~286_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~289_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~290_combout\ : std_logic;
SIGNAL \CPU|MUXBancoReg|Mux4~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1\ : std_logic;
SIGNAL \CPU|ULA|Add0~2_combout\ : std_logic;
SIGNAL \CPU|MUXBancoReg|Mux6~0_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~103feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~103_q\ : std_logic;
SIGNAL \CPU|BR|registrador~95_q\ : std_logic;
SIGNAL \CPU|BR|registrador~87feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~87_q\ : std_logic;
SIGNAL \CPU|BR|registrador~79_q\ : std_logic;
SIGNAL \CPU|BR|registrador~322_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~323_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~135_q\ : std_logic;
SIGNAL \CPU|BR|registrador~119feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~119_q\ : std_logic;
SIGNAL \CPU|BR|registrador~127feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~127_q\ : std_logic;
SIGNAL \CPU|BR|registrador~111_q\ : std_logic;
SIGNAL \CPU|BR|registrador~329_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~330_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~39feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~39_q\ : std_logic;
SIGNAL \CPU|BR|registrador~31feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~31_q\ : std_logic;
SIGNAL \CPU|BR|registrador~23_q\ : std_logic;
SIGNAL \CPU|BR|registrador~15_q\ : std_logic;
SIGNAL \CPU|BR|registrador~326_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~327_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~55feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~55_q\ : std_logic;
SIGNAL \CPU|BR|registrador~71_q\ : std_logic;
SIGNAL \CPU|BR|registrador~63feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~63_q\ : std_logic;
SIGNAL \CPU|BR|registrador~47_q\ : std_logic;
SIGNAL \CPU|BR|registrador~324_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~325_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~328_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~331_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~231feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~231_q\ : std_logic;
SIGNAL \CPU|BR|registrador~263feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~263_q\ : std_logic;
SIGNAL \CPU|BR|registrador~199feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~199_q\ : std_logic;
SIGNAL \CPU|BR|registrador~167_q\ : std_logic;
SIGNAL \CPU|BR|registrador~319_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~320_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~255_q\ : std_logic;
SIGNAL \CPU|BR|registrador~191_q\ : std_logic;
SIGNAL \CPU|BR|registrador~223feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~223_q\ : std_logic;
SIGNAL \CPU|BR|registrador~159_q\ : std_logic;
SIGNAL \CPU|BR|registrador~312_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~313_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~215_q\ : std_logic;
SIGNAL \CPU|BR|registrador~247_q\ : std_logic;
SIGNAL \CPU|BR|registrador~151feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~151_q\ : std_logic;
SIGNAL \CPU|BR|registrador~183feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~183_q\ : std_logic;
SIGNAL \CPU|BR|registrador~314_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~315_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~175feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~175_q\ : std_logic;
SIGNAL \CPU|BR|registrador~239_q\ : std_logic;
SIGNAL \CPU|BR|registrador~207feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~207_q\ : std_logic;
SIGNAL \CPU|BR|registrador~143_q\ : std_logic;
SIGNAL \CPU|BR|registrador~316_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~317_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~318_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~321_combout\ : std_logic;
SIGNAL \CPU|BR|saidaA[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~3\ : std_logic;
SIGNAL \CPU|ULA|Add0~4_combout\ : std_logic;
SIGNAL \CPU|MUXBancoReg|Mux5~0_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~64feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~64_q\ : std_logic;
SIGNAL \CPU|BR|registrador~72_q\ : std_logic;
SIGNAL \CPU|BR|registrador~48feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~48_q\ : std_logic;
SIGNAL \CPU|BR|registrador~56_q\ : std_logic;
SIGNAL \CPU|BR|registrador~342_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~343_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~136_q\ : std_logic;
SIGNAL \CPU|BR|registrador~128_q\ : std_logic;
SIGNAL \CPU|BR|registrador~120feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~120_q\ : std_logic;
SIGNAL \CPU|BR|registrador~112_q\ : std_logic;
SIGNAL \CPU|BR|registrador~349_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~350_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~24feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~24_q\ : std_logic;
SIGNAL \CPU|BR|registrador~40_q\ : std_logic;
SIGNAL \CPU|BR|registrador~32feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~32_q\ : std_logic;
SIGNAL \CPU|BR|registrador~16_q\ : std_logic;
SIGNAL \CPU|BR|registrador~346_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~347_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~104feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~104_q\ : std_logic;
SIGNAL \CPU|BR|registrador~88_q\ : std_logic;
SIGNAL \CPU|BR|registrador~96feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~96_q\ : std_logic;
SIGNAL \CPU|BR|registrador~80_q\ : std_logic;
SIGNAL \CPU|BR|registrador~344_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~345_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~348_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~351_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~200feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~200_q\ : std_logic;
SIGNAL \CPU|BR|registrador~264_q\ : std_logic;
SIGNAL \CPU|BR|registrador~232feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~232_q\ : std_logic;
SIGNAL \CPU|BR|registrador~168_q\ : std_logic;
SIGNAL \CPU|BR|registrador~339_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~340_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~224feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~224_q\ : std_logic;
SIGNAL \CPU|BR|registrador~256_q\ : std_logic;
SIGNAL \CPU|BR|registrador~192_q\ : std_logic;
SIGNAL \CPU|BR|registrador~160_q\ : std_logic;
SIGNAL \CPU|BR|registrador~334_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~335_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~208feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~208_q\ : std_logic;
SIGNAL \CPU|BR|registrador~240_q\ : std_logic;
SIGNAL \CPU|BR|registrador~176feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~176_q\ : std_logic;
SIGNAL \CPU|BR|registrador~144_q\ : std_logic;
SIGNAL \CPU|BR|registrador~336_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~337_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~338_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~184feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~184_q\ : std_logic;
SIGNAL \CPU|BR|registrador~248_q\ : std_logic;
SIGNAL \CPU|BR|registrador~216feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~216_q\ : std_logic;
SIGNAL \CPU|BR|registrador~152_q\ : std_logic;
SIGNAL \CPU|BR|registrador~332_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~333_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~341_combout\ : std_logic;
SIGNAL \CPU|BR|saidaA[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~5\ : std_logic;
SIGNAL \CPU|ULA|Add0~6_combout\ : std_logic;
SIGNAL \CPU|MUXBancoReg|Mux4~1_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~257_q\ : std_logic;
SIGNAL \CPU|BR|registrador~193_q\ : std_logic;
SIGNAL \CPU|BR|registrador~225feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~225_q\ : std_logic;
SIGNAL \CPU|BR|registrador~161_q\ : std_logic;
SIGNAL \CPU|BR|registrador~291_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~292_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~233feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~233_q\ : std_logic;
SIGNAL \CPU|BR|registrador~265_q\ : std_logic;
SIGNAL \CPU|BR|registrador~201feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~201_q\ : std_logic;
SIGNAL \CPU|BR|registrador~169_q\ : std_logic;
SIGNAL \CPU|BR|registrador~298_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~299_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~177feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~177_q\ : std_logic;
SIGNAL \CPU|BR|registrador~241_q\ : std_logic;
SIGNAL \CPU|BR|registrador~209feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~209_q\ : std_logic;
SIGNAL \CPU|BR|registrador~145_q\ : std_logic;
SIGNAL \CPU|BR|registrador~295_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~296_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~217_q\ : std_logic;
SIGNAL \CPU|BR|registrador~249_q\ : std_logic;
SIGNAL \CPU|BR|registrador~185feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~185_q\ : std_logic;
SIGNAL \CPU|BR|registrador~153_q\ : std_logic;
SIGNAL \CPU|BR|registrador~293_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~294_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~297_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~300_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~137_q\ : std_logic;
SIGNAL \CPU|BR|registrador~121_q\ : std_logic;
SIGNAL \CPU|BR|registrador~129feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~129_q\ : std_logic;
SIGNAL \CPU|BR|registrador~113_q\ : std_logic;
SIGNAL \CPU|BR|registrador~308_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~309_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~105_q\ : std_logic;
SIGNAL \CPU|BR|registrador~97_q\ : std_logic;
SIGNAL \CPU|BR|registrador~89feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~89_q\ : std_logic;
SIGNAL \CPU|BR|registrador~81_q\ : std_logic;
SIGNAL \CPU|BR|registrador~301_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~302_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~33feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~33_q\ : std_logic;
SIGNAL \CPU|BR|registrador~41_q\ : std_logic;
SIGNAL \CPU|BR|registrador~25feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~25_q\ : std_logic;
SIGNAL \CPU|BR|registrador~17_q\ : std_logic;
SIGNAL \CPU|BR|registrador~305_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~306_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~57feeder_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~57_q\ : std_logic;
SIGNAL \CPU|BR|registrador~73_q\ : std_logic;
SIGNAL \CPU|BR|registrador~65_q\ : std_logic;
SIGNAL \CPU|BR|registrador~49_q\ : std_logic;
SIGNAL \CPU|BR|registrador~303_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~304_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~307_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~310_combout\ : std_logic;
SIGNAL \CPU|BR|saidaA[3]~1_combout\ : std_logic;
SIGNAL \CPU|BR|registrador~311_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[0]~2_combout\ : std_logic;
SIGNAL \DE|LCD_US~0_combout\ : std_logic;
SIGNAL \CPU|UC|Equal4~0_combout\ : std_logic;
SIGNAL \DE|LCD_US~combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[2]~4_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[4]~7_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[4]~8_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[4]~9_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[5]~10_combout\ : std_logic;
SIGNAL \DISPLAY0|rascSaida7seg[6]~11_combout\ : std_logic;
SIGNAL \DE|LCD_DS~0_combout\ : std_logic;
SIGNAL \DE|LCD_DS~combout\ : std_logic;
SIGNAL \DE|LCD_UM~combout\ : std_logic;
SIGNAL \DE|LCD_DM~combout\ : std_logic;
SIGNAL \DE|LCD_UH~combout\ : std_logic;
SIGNAL \DE|LCD_DH~0_combout\ : std_logic;
SIGNAL \DE|LCD_DH~combout\ : std_logic;
SIGNAL \CPU|PC|toout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DISPLAY0|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DISPLAY5|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DISPLAY4|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DISPLAY3|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DISPLAY2|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \DISPLAY1|saida7seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \BASE_TEMPO|contador\ : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY0|saida7seg\(0),
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
	i => \DISPLAY0|saida7seg\(1),
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
	i => \DISPLAY0|saida7seg\(2),
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
	i => \DISPLAY0|saida7seg\(3),
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
	i => \DISPLAY0|saida7seg\(4),
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
	i => \DISPLAY0|saida7seg\(5),
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
	i => \DISPLAY0|saida7seg\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg\(0),
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg\(1),
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg\(2),
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg\(3),
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg\(4),
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg\(5),
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY1|saida7seg\(6),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg\(0),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg\(1),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg\(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg\(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg\(4),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg\(5),
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY2|saida7seg\(6),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg\(0),
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg\(1),
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg\(2),
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg\(3),
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg\(4),
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg\(5),
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY3|saida7seg\(6),
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg\(0),
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg\(1),
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg\(2),
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg\(3),
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg\(4),
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg\(5),
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY4|saida7seg\(6),
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg\(0),
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg\(1),
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg\(2),
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg\(3),
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg\(4),
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg\(5),
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DISPLAY5|saida7seg\(6),
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X110_Y22_N4
\CPU|PC|toout[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[0]~8_combout\ = \CPU|PC|toout\(0) $ (VCC)
-- \CPU|PC|toout[0]~9\ = CARRY(\CPU|PC|toout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|toout\(0),
	datad => VCC,
	combout => \CPU|PC|toout[0]~8_combout\,
	cout => \CPU|PC|toout[0]~9\);

-- Location: LCCOMB_X110_Y22_N10
\CPU|PC|toout[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[3]~14_combout\ = (\CPU|PC|toout\(3) & (!\CPU|PC|toout[2]~13\)) # (!\CPU|PC|toout\(3) & ((\CPU|PC|toout[2]~13\) # (GND)))
-- \CPU|PC|toout[3]~15\ = CARRY((!\CPU|PC|toout[2]~13\) # (!\CPU|PC|toout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|toout\(3),
	datad => VCC,
	cin => \CPU|PC|toout[2]~13\,
	combout => \CPU|PC|toout[3]~14_combout\,
	cout => \CPU|PC|toout[3]~15\);

-- Location: LCCOMB_X110_Y22_N12
\CPU|PC|toout[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[4]~16_combout\ = (\CPU|PC|toout\(4) & (\CPU|PC|toout[3]~15\ $ (GND))) # (!\CPU|PC|toout\(4) & (!\CPU|PC|toout[3]~15\ & VCC))
-- \CPU|PC|toout[4]~17\ = CARRY((\CPU|PC|toout\(4) & !\CPU|PC|toout[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(4),
	datad => VCC,
	cin => \CPU|PC|toout[3]~15\,
	combout => \CPU|PC|toout[4]~16_combout\,
	cout => \CPU|PC|toout[4]~17\);

-- Location: LCCOMB_X108_Y22_N26
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X108_Y23_N4
\CPU|ROM|content~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~49_combout\ = (\CPU|PC|toout\(4)) # ((\CPU|PC|toout\(2)) # ((!\CPU|PC|toout\(0) & \CPU|PC|toout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(0),
	datab => \CPU|PC|toout\(3),
	datac => \CPU|PC|toout\(4),
	datad => \CPU|PC|toout\(2),
	combout => \CPU|ROM|content~49_combout\);

-- Location: LCCOMB_X107_Y23_N22
\CPU|ROM|content~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~47_combout\ = (!\CPU|PC|toout\(2) & (!\CPU|PC|toout\(4) & (\CPU|PC|toout\(3) & \CPU|PC|toout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datab => \CPU|PC|toout\(4),
	datac => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(0),
	combout => \CPU|ROM|content~47_combout\);

-- Location: LCCOMB_X107_Y23_N0
\CPU|ROM|content~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~46_combout\ = (!\CPU|PC|toout\(4) & (!\CPU|PC|toout\(3) & !\CPU|PC|toout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|toout\(4),
	datac => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(2),
	combout => \CPU|ROM|content~46_combout\);

-- Location: LCCOMB_X107_Y23_N8
\CPU|ROM|content~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~48_combout\ = (\CPU|PC|toout\(1) & ((\CPU|PC|toout\(5)) # ((\CPU|ROM|content~46_combout\)))) # (!\CPU|PC|toout\(1) & (!\CPU|PC|toout\(5) & (!\CPU|ROM|content~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(5),
	datac => \CPU|ROM|content~47_combout\,
	datad => \CPU|ROM|content~46_combout\,
	combout => \CPU|ROM|content~48_combout\);

-- Location: LCCOMB_X108_Y23_N2
\CPU|ROM|content~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~45_combout\ = (!\CPU|PC|toout\(0) & (!\CPU|PC|toout\(3) & !\CPU|PC|toout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(0),
	datab => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(4),
	combout => \CPU|ROM|content~45_combout\);

-- Location: LCCOMB_X107_Y23_N6
\CPU|ROM|content~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~50_combout\ = (\CPU|PC|toout\(5) & ((\CPU|ROM|content~48_combout\ & (!\CPU|ROM|content~49_combout\)) # (!\CPU|ROM|content~48_combout\ & ((\CPU|ROM|content~45_combout\))))) # (!\CPU|PC|toout\(5) & (((\CPU|ROM|content~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~49_combout\,
	datab => \CPU|PC|toout\(5),
	datac => \CPU|ROM|content~48_combout\,
	datad => \CPU|ROM|content~45_combout\,
	combout => \CPU|ROM|content~50_combout\);

-- Location: LCCOMB_X109_Y23_N4
\CPU|ROM|content~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~42_combout\ = (!\CPU|PC|toout\(4) & (\CPU|PC|toout\(5) & (\CPU|PC|toout\(2) $ (\CPU|PC|toout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(4),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|PC|toout\(3),
	combout => \CPU|ROM|content~42_combout\);

-- Location: LCCOMB_X109_Y23_N2
\CPU|ROM|content~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~41_combout\ = (\CPU|PC|toout\(5) & (((!\CPU|PC|toout\(3) & \CPU|PC|toout\(1))) # (!\CPU|PC|toout\(2)))) # (!\CPU|PC|toout\(5) & (\CPU|PC|toout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(3),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|PC|toout\(1),
	combout => \CPU|ROM|content~41_combout\);

-- Location: LCCOMB_X109_Y23_N22
\CPU|ROM|content~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~71_combout\ = (!\CPU|PC|toout\(0) & ((\CPU|PC|toout\(4) & (!\CPU|PC|toout\(5))) # (!\CPU|PC|toout\(4) & ((\CPU|ROM|content~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(4),
	datab => \CPU|PC|toout\(5),
	datac => \CPU|PC|toout\(0),
	datad => \CPU|ROM|content~41_combout\,
	combout => \CPU|ROM|content~71_combout\);

-- Location: LCCOMB_X108_Y23_N30
\CPU|ROM|content~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~43_combout\ = (!\CPU|PC|toout\(6) & ((\CPU|ROM|content~71_combout\) # ((\CPU|ROM|content~42_combout\ & \CPU|PC|toout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~42_combout\,
	datab => \CPU|PC|toout\(6),
	datac => \CPU|PC|toout\(0),
	datad => \CPU|ROM|content~71_combout\,
	combout => \CPU|ROM|content~43_combout\);

-- Location: LCCOMB_X107_Y23_N30
\CPU|UC|muxJMP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|UC|muxJMP~2_combout\ = (\CPU|ROM|content~50_combout\ & (\CPU|ROM|content~43_combout\ & (!\CPU|PC|toout\(6) & !\CPU|PC|toout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~50_combout\,
	datab => \CPU|ROM|content~43_combout\,
	datac => \CPU|PC|toout\(6),
	datad => \CPU|PC|toout\(7),
	combout => \CPU|UC|muxJMP~2_combout\);

-- Location: FF_X110_Y22_N13
\CPU|PC|toout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|toout[4]~16_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|muxJMP~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(4));

-- Location: LCCOMB_X110_Y22_N14
\CPU|PC|toout[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[5]~18_combout\ = (\CPU|PC|toout\(5) & (!\CPU|PC|toout[4]~17\)) # (!\CPU|PC|toout\(5) & ((\CPU|PC|toout[4]~17\) # (GND)))
-- \CPU|PC|toout[5]~19\ = CARRY((!\CPU|PC|toout[4]~17\) # (!\CPU|PC|toout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(5),
	datad => VCC,
	cin => \CPU|PC|toout[4]~17\,
	combout => \CPU|PC|toout[5]~18_combout\,
	cout => \CPU|PC|toout[5]~19\);

-- Location: LCCOMB_X109_Y23_N8
\CPU|ROM|content~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~63_combout\ = (\CPU|PC|toout\(4) & (((!\CPU|PC|toout\(5))))) # (!\CPU|PC|toout\(4) & ((\CPU|PC|toout\(2) & (!\CPU|PC|toout\(5) & \CPU|PC|toout\(3))) # (!\CPU|PC|toout\(2) & (\CPU|PC|toout\(5) & !\CPU|PC|toout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(4),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|PC|toout\(3),
	combout => \CPU|ROM|content~63_combout\);

-- Location: LCCOMB_X109_Y23_N10
\CPU|ROM|content~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~62_combout\ = (\CPU|PC|toout\(0)) # ((!\CPU|PC|toout\(5) & \CPU|PC|toout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|toout\(0),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|PC|toout\(1),
	combout => \CPU|ROM|content~62_combout\);

-- Location: LCCOMB_X109_Y23_N28
\CPU|ROM|content~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~74_combout\ = (!\CPU|PC|toout\(7) & (!\CPU|PC|toout\(6) & (\CPU|ROM|content~63_combout\ & !\CPU|ROM|content~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(7),
	datab => \CPU|PC|toout\(6),
	datac => \CPU|ROM|content~63_combout\,
	datad => \CPU|ROM|content~62_combout\,
	combout => \CPU|ROM|content~74_combout\);

-- Location: FF_X110_Y22_N15
\CPU|PC|toout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|toout[5]~18_combout\,
	asdata => \CPU|ROM|content~74_combout\,
	sload => \CPU|UC|muxJMP~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(5));

-- Location: LCCOMB_X110_Y22_N16
\CPU|PC|toout[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[6]~20_combout\ = (\CPU|PC|toout\(6) & (\CPU|PC|toout[5]~19\ $ (GND))) # (!\CPU|PC|toout\(6) & (!\CPU|PC|toout[5]~19\ & VCC))
-- \CPU|PC|toout[6]~21\ = CARRY((\CPU|PC|toout\(6) & !\CPU|PC|toout[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(6),
	datad => VCC,
	cin => \CPU|PC|toout[5]~19\,
	combout => \CPU|PC|toout[6]~20_combout\,
	cout => \CPU|PC|toout[6]~21\);

-- Location: FF_X110_Y22_N17
\CPU|PC|toout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|toout[6]~20_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|muxJMP~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(6));

-- Location: LCCOMB_X110_Y22_N18
\CPU|PC|toout[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[7]~22_combout\ = \CPU|PC|toout[6]~21\ $ (\CPU|PC|toout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|toout\(7),
	cin => \CPU|PC|toout[6]~21\,
	combout => \CPU|PC|toout[7]~22_combout\);

-- Location: FF_X110_Y22_N19
\CPU|PC|toout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|toout[7]~22_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|muxJMP~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(7));

-- Location: LCCOMB_X107_Y23_N20
\CPU|ROM|content~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~56_combout\ = (\CPU|PC|toout\(4)) # ((\CPU|PC|toout\(3)) # ((\CPU|PC|toout\(1) & \CPU|PC|toout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(4),
	datac => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(2),
	combout => \CPU|ROM|content~56_combout\);

-- Location: LCCOMB_X107_Y23_N26
\CPU|ROM|content~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~57_combout\ = (\CPU|PC|toout\(5) & (\CPU|ROM|content~46_combout\)) # (!\CPU|PC|toout\(5) & ((\CPU|ROM|content~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~46_combout\,
	datac => \CPU|PC|toout\(5),
	datad => \CPU|ROM|content~56_combout\,
	combout => \CPU|ROM|content~57_combout\);

-- Location: LCCOMB_X107_Y23_N10
\CPU|ROM|content~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~55_combout\ = (!\CPU|PC|toout\(4) & ((\CPU|PC|toout\(3) & (!\CPU|PC|toout\(1) & !\CPU|PC|toout\(2))) # (!\CPU|PC|toout\(3) & ((\CPU|PC|toout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(4),
	datac => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(2),
	combout => \CPU|ROM|content~55_combout\);

-- Location: LCCOMB_X107_Y23_N16
\CPU|ROM|content~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~58_combout\ = (\CPU|PC|toout\(0) & (\CPU|ROM|content~55_combout\ $ (((!\CPU|PC|toout\(5) & !\CPU|ROM|content~57_combout\))))) # (!\CPU|PC|toout\(0) & (\CPU|ROM|content~57_combout\ & ((\CPU|PC|toout\(5)) # 
-- (!\CPU|ROM|content~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(0),
	datab => \CPU|PC|toout\(5),
	datac => \CPU|ROM|content~57_combout\,
	datad => \CPU|ROM|content~55_combout\,
	combout => \CPU|ROM|content~58_combout\);

-- Location: LCCOMB_X107_Y23_N24
\CPU|ROM|content~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~73_combout\ = (!\CPU|PC|toout\(7) & (!\CPU|PC|toout\(6) & \CPU|ROM|content~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|toout\(7),
	datac => \CPU|PC|toout\(6),
	datad => \CPU|ROM|content~58_combout\,
	combout => \CPU|ROM|content~73_combout\);

-- Location: FF_X110_Y22_N5
\CPU|PC|toout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|toout[0]~8_combout\,
	asdata => \CPU|ROM|content~73_combout\,
	sload => \CPU|UC|muxJMP~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(0));

-- Location: LCCOMB_X110_Y22_N6
\CPU|PC|toout[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[1]~10_combout\ = (\CPU|PC|toout\(1) & (!\CPU|PC|toout[0]~9\)) # (!\CPU|PC|toout\(1) & ((\CPU|PC|toout[0]~9\) # (GND)))
-- \CPU|PC|toout[1]~11\ = CARRY((!\CPU|PC|toout[0]~9\) # (!\CPU|PC|toout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datad => VCC,
	cin => \CPU|PC|toout[0]~9\,
	combout => \CPU|PC|toout[1]~10_combout\,
	cout => \CPU|PC|toout[1]~11\);

-- Location: LCCOMB_X108_Y23_N26
\CPU|ROM|content~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~51_combout\ = (\CPU|PC|toout\(0) & (\CPU|PC|toout\(1) & (\CPU|PC|toout\(4) & !\CPU|PC|toout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(0),
	datab => \CPU|PC|toout\(1),
	datac => \CPU|PC|toout\(4),
	datad => \CPU|PC|toout\(5),
	combout => \CPU|ROM|content~51_combout\);

-- Location: LCCOMB_X109_Y23_N6
\CPU|ROM|content~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~52_combout\ = (\CPU|PC|toout\(2) & (!\CPU|PC|toout\(1) & (\CPU|PC|toout\(0) & !\CPU|PC|toout\(3)))) # (!\CPU|PC|toout\(2) & (\CPU|PC|toout\(3) & ((\CPU|PC|toout\(0)) # (!\CPU|PC|toout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(0),
	datac => \CPU|PC|toout\(2),
	datad => \CPU|PC|toout\(3),
	combout => \CPU|ROM|content~52_combout\);

-- Location: LCCOMB_X108_Y23_N16
\CPU|ROM|content~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~53_combout\ = (\CPU|PC|toout\(0) & (((!\CPU|PC|toout\(1))) # (!\CPU|PC|toout\(3)))) # (!\CPU|PC|toout\(0) & ((\CPU|PC|toout\(2)) # ((\CPU|PC|toout\(3) & \CPU|PC|toout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(0),
	datab => \CPU|PC|toout\(3),
	datac => \CPU|PC|toout\(1),
	datad => \CPU|PC|toout\(2),
	combout => \CPU|ROM|content~53_combout\);

-- Location: LCCOMB_X108_Y23_N6
\CPU|ROM|content~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~54_combout\ = (!\CPU|PC|toout\(4) & ((\CPU|PC|toout\(5) & (\CPU|ROM|content~52_combout\)) # (!\CPU|PC|toout\(5) & ((!\CPU|ROM|content~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~52_combout\,
	datab => \CPU|PC|toout\(4),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|ROM|content~53_combout\,
	combout => \CPU|ROM|content~54_combout\);

-- Location: LCCOMB_X108_Y23_N20
\CPU|ROM|content~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~72_combout\ = (!\CPU|PC|toout\(6) & (!\CPU|PC|toout\(7) & ((\CPU|ROM|content~51_combout\) # (\CPU|ROM|content~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(6),
	datab => \CPU|PC|toout\(7),
	datac => \CPU|ROM|content~51_combout\,
	datad => \CPU|ROM|content~54_combout\,
	combout => \CPU|ROM|content~72_combout\);

-- Location: FF_X110_Y22_N7
\CPU|PC|toout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|toout[1]~10_combout\,
	asdata => \CPU|ROM|content~72_combout\,
	sload => \CPU|UC|muxJMP~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(1));

-- Location: LCCOMB_X110_Y22_N8
\CPU|PC|toout[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|toout[2]~12_combout\ = (\CPU|PC|toout\(2) & (\CPU|PC|toout[1]~11\ $ (GND))) # (!\CPU|PC|toout\(2) & (!\CPU|PC|toout[1]~11\ & VCC))
-- \CPU|PC|toout[2]~13\ = CARRY((\CPU|PC|toout\(2) & !\CPU|PC|toout[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datad => VCC,
	cin => \CPU|PC|toout[1]~11\,
	combout => \CPU|PC|toout[2]~12_combout\,
	cout => \CPU|PC|toout[2]~13\);

-- Location: LCCOMB_X110_Y22_N20
\CPU|ROM|content~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~15_combout\ = (!\CPU|PC|toout\(6) & !\CPU|PC|toout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|toout\(6),
	datad => \CPU|PC|toout\(7),
	combout => \CPU|ROM|content~15_combout\);

-- Location: LCCOMB_X107_Y23_N14
\CPU|ROM|content~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~65_combout\ = (\CPU|PC|toout\(3)) # (\CPU|PC|toout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(4),
	combout => \CPU|ROM|content~65_combout\);

-- Location: LCCOMB_X107_Y23_N12
\CPU|ROM|content~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~64_combout\ = (\CPU|PC|toout\(4) & ((\CPU|PC|toout\(5)) # ((\CPU|PC|toout\(2) & !\CPU|PC|toout\(3))))) # (!\CPU|PC|toout\(4) & (\CPU|PC|toout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datab => \CPU|PC|toout\(3),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|PC|toout\(4),
	combout => \CPU|ROM|content~64_combout\);

-- Location: LCCOMB_X107_Y23_N2
\CPU|ROM|content~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~67_combout\ = (\CPU|PC|toout\(1) & ((\CPU|ROM|content~65_combout\) # ((!\CPU|PC|toout\(5) & \CPU|ROM|content~64_combout\)))) # (!\CPU|PC|toout\(1) & (\CPU|ROM|content~64_combout\ & ((\CPU|PC|toout\(5)) # (!\CPU|ROM|content~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(5),
	datac => \CPU|ROM|content~65_combout\,
	datad => \CPU|ROM|content~64_combout\,
	combout => \CPU|ROM|content~67_combout\);

-- Location: LCCOMB_X107_Y23_N28
\CPU|ROM|content~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~66_combout\ = (\CPU|PC|toout\(5) & (\CPU|ROM|content~64_combout\ $ (((\CPU|ROM|content~65_combout\) # (!\CPU|PC|toout\(1)))))) # (!\CPU|PC|toout\(5) & (\CPU|PC|toout\(1) & (\CPU|ROM|content~65_combout\ & \CPU|ROM|content~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(5),
	datac => \CPU|ROM|content~65_combout\,
	datad => \CPU|ROM|content~64_combout\,
	combout => \CPU|ROM|content~66_combout\);

-- Location: LCCOMB_X106_Y23_N14
\CPU|ROM|content~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~68_combout\ = (\CPU|ROM|content~15_combout\ & ((\CPU|PC|toout\(0) & ((\CPU|ROM|content~66_combout\))) # (!\CPU|PC|toout\(0) & (!\CPU|ROM|content~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~15_combout\,
	datab => \CPU|PC|toout\(0),
	datac => \CPU|ROM|content~67_combout\,
	datad => \CPU|ROM|content~66_combout\,
	combout => \CPU|ROM|content~68_combout\);

-- Location: FF_X110_Y22_N9
\CPU|PC|toout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|toout[2]~12_combout\,
	asdata => \CPU|ROM|content~68_combout\,
	sload => \CPU|UC|muxJMP~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(2));

-- Location: LCCOMB_X107_Y23_N18
\CPU|ROM|content~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~59_combout\ = (\CPU|PC|toout\(2) & (\CPU|PC|toout\(5))) # (!\CPU|PC|toout\(2) & ((\CPU|PC|toout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|PC|toout\(0),
	combout => \CPU|ROM|content~59_combout\);

-- Location: LCCOMB_X109_Y23_N20
\CPU|ROM|content~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~60_combout\ = (\CPU|PC|toout\(4) & (!\CPU|PC|toout\(5) & (!\CPU|PC|toout\(1)))) # (!\CPU|PC|toout\(4) & (\CPU|PC|toout\(3) & (\CPU|PC|toout\(5) $ (!\CPU|PC|toout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(4),
	datab => \CPU|PC|toout\(5),
	datac => \CPU|PC|toout\(1),
	datad => \CPU|PC|toout\(3),
	combout => \CPU|ROM|content~60_combout\);

-- Location: LCCOMB_X106_Y23_N20
\CPU|ROM|content~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~61_combout\ = (\CPU|ROM|content~15_combout\ & ((\CPU|ROM|content~59_combout\ & (!\CPU|PC|toout\(5) & !\CPU|ROM|content~60_combout\)) # (!\CPU|ROM|content~59_combout\ & (\CPU|PC|toout\(5) & \CPU|ROM|content~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~15_combout\,
	datab => \CPU|ROM|content~59_combout\,
	datac => \CPU|PC|toout\(5),
	datad => \CPU|ROM|content~60_combout\,
	combout => \CPU|ROM|content~61_combout\);

-- Location: FF_X110_Y22_N11
\CPU|PC|toout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|toout[3]~14_combout\,
	asdata => \CPU|ROM|content~61_combout\,
	sload => \CPU|UC|muxJMP~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|toout\(3));

-- Location: LCCOMB_X109_Y22_N8
\CPU|ROM|content~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~12_combout\ = (\CPU|PC|toout\(1) & (\CPU|PC|toout\(2) & (!\CPU|PC|toout\(3) & \CPU|PC|toout\(5)))) # (!\CPU|PC|toout\(1) & (!\CPU|PC|toout\(2) & (\CPU|PC|toout\(3) & !\CPU|PC|toout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(5),
	combout => \CPU|ROM|content~12_combout\);

-- Location: LCCOMB_X109_Y22_N26
\CPU|ROM|content~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~13_combout\ = (\CPU|PC|toout\(0) & (!\CPU|PC|toout\(4) & (!\CPU|PC|toout\(7) & !\CPU|PC|toout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(0),
	datab => \CPU|PC|toout\(4),
	datac => \CPU|PC|toout\(7),
	datad => \CPU|PC|toout\(6),
	combout => \CPU|ROM|content~13_combout\);

-- Location: LCCOMB_X109_Y22_N12
\CPU|ROM|content~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~14_combout\ = (\CPU|PC|toout\(0) & (\CPU|PC|toout\(4) & (\CPU|PC|toout\(1) $ (\CPU|PC|toout\(2))))) # (!\CPU|PC|toout\(0) & (\CPU|PC|toout\(1) & ((!\CPU|PC|toout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(4),
	datac => \CPU|PC|toout\(2),
	datad => \CPU|PC|toout\(0),
	combout => \CPU|ROM|content~14_combout\);

-- Location: LCCOMB_X109_Y22_N10
\CPU|ROM|content~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~69_combout\ = (!\CPU|PC|toout\(7) & (!\CPU|PC|toout\(6) & (!\CPU|PC|toout\(5) & \CPU|ROM|content~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(7),
	datab => \CPU|PC|toout\(6),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|ROM|content~14_combout\,
	combout => \CPU|ROM|content~69_combout\);

-- Location: LCCOMB_X109_Y22_N6
\CPU|ROM|content~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~16_combout\ = (\CPU|PC|toout\(3) & (\CPU|ROM|content~12_combout\ & (\CPU|ROM|content~13_combout\))) # (!\CPU|PC|toout\(3) & ((\CPU|ROM|content~69_combout\) # ((\CPU|ROM|content~12_combout\ & \CPU|ROM|content~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(3),
	datab => \CPU|ROM|content~12_combout\,
	datac => \CPU|ROM|content~13_combout\,
	datad => \CPU|ROM|content~69_combout\,
	combout => \CPU|ROM|content~16_combout\);

-- Location: LCCOMB_X108_Y23_N0
\DE|CLEAR_TEMPO~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|CLEAR_TEMPO~6_combout\ = (\CPU|PC|toout\(3) & !\CPU|PC|toout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(5),
	combout => \DE|CLEAR_TEMPO~6_combout\);

-- Location: LCCOMB_X108_Y23_N12
\DE|CLEAR_TEMPO~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|CLEAR_TEMPO~3_combout\ = (\DE|CLEAR_TEMPO~6_combout\ & (!\CPU|PC|toout\(4) & (!\CPU|PC|toout\(1) & !\CPU|PC|toout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE|CLEAR_TEMPO~6_combout\,
	datab => \CPU|PC|toout\(4),
	datac => \CPU|PC|toout\(1),
	datad => \CPU|PC|toout\(2),
	combout => \DE|CLEAR_TEMPO~3_combout\);

-- Location: LCCOMB_X108_Y23_N22
\DE|CLEAR_TEMPO~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|CLEAR_TEMPO~16_combout\ = ((\CPU|PC|toout\(6)) # ((\CPU|PC|toout\(7)) # (!\CPU|PC|toout\(0)))) # (!\DE|CLEAR_TEMPO~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE|CLEAR_TEMPO~3_combout\,
	datab => \CPU|PC|toout\(6),
	datac => \CPU|PC|toout\(0),
	datad => \CPU|PC|toout\(7),
	combout => \DE|CLEAR_TEMPO~16_combout\);

-- Location: LCCOMB_X109_Y25_N6
\BASE_TEMPO|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~0_combout\ = \BASE_TEMPO|contador\(0) $ (VCC)
-- \BASE_TEMPO|Add0~1\ = CARRY(\BASE_TEMPO|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(0),
	datad => VCC,
	combout => \BASE_TEMPO|Add0~0_combout\,
	cout => \BASE_TEMPO|Add0~1\);

-- Location: LCCOMB_X108_Y25_N6
\BASE_TEMPO|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|contador~1_combout\ = (!\BASE_TEMPO|Equal0~8_combout\ & \BASE_TEMPO|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|Equal0~8_combout\,
	datad => \BASE_TEMPO|Add0~0_combout\,
	combout => \BASE_TEMPO|contador~1_combout\);

-- Location: FF_X108_Y25_N7
\BASE_TEMPO|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|contador~1_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(0));

-- Location: LCCOMB_X109_Y25_N8
\BASE_TEMPO|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~2_combout\ = (\BASE_TEMPO|contador\(1) & (!\BASE_TEMPO|Add0~1\)) # (!\BASE_TEMPO|contador\(1) & ((\BASE_TEMPO|Add0~1\) # (GND)))
-- \BASE_TEMPO|Add0~3\ = CARRY((!\BASE_TEMPO|Add0~1\) # (!\BASE_TEMPO|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(1),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~1\,
	combout => \BASE_TEMPO|Add0~2_combout\,
	cout => \BASE_TEMPO|Add0~3\);

-- Location: LCCOMB_X108_Y25_N16
\BASE_TEMPO|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|contador~0_combout\ = (\BASE_TEMPO|Add0~2_combout\ & !\BASE_TEMPO|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BASE_TEMPO|Add0~2_combout\,
	datad => \BASE_TEMPO|Equal0~8_combout\,
	combout => \BASE_TEMPO|contador~0_combout\);

-- Location: FF_X108_Y25_N17
\BASE_TEMPO|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|contador~0_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(1));

-- Location: LCCOMB_X109_Y25_N10
\BASE_TEMPO|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~4_combout\ = (\BASE_TEMPO|contador\(2) & (\BASE_TEMPO|Add0~3\ $ (GND))) # (!\BASE_TEMPO|contador\(2) & (!\BASE_TEMPO|Add0~3\ & VCC))
-- \BASE_TEMPO|Add0~5\ = CARRY((\BASE_TEMPO|contador\(2) & !\BASE_TEMPO|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(2),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~3\,
	combout => \BASE_TEMPO|Add0~4_combout\,
	cout => \BASE_TEMPO|Add0~5\);

-- Location: FF_X109_Y25_N11
\BASE_TEMPO|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~4_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(2));

-- Location: LCCOMB_X109_Y25_N12
\BASE_TEMPO|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~6_combout\ = (\BASE_TEMPO|contador\(3) & (!\BASE_TEMPO|Add0~5\)) # (!\BASE_TEMPO|contador\(3) & ((\BASE_TEMPO|Add0~5\) # (GND)))
-- \BASE_TEMPO|Add0~7\ = CARRY((!\BASE_TEMPO|Add0~5\) # (!\BASE_TEMPO|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(3),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~5\,
	combout => \BASE_TEMPO|Add0~6_combout\,
	cout => \BASE_TEMPO|Add0~7\);

-- Location: FF_X109_Y25_N13
\BASE_TEMPO|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~6_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(3));

-- Location: LCCOMB_X108_Y25_N12
\BASE_TEMPO|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Equal0~0_combout\ = (!\BASE_TEMPO|contador\(0) & (!\BASE_TEMPO|contador\(2) & (!\BASE_TEMPO|contador\(3) & \BASE_TEMPO|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(0),
	datab => \BASE_TEMPO|contador\(2),
	datac => \BASE_TEMPO|contador\(3),
	datad => \BASE_TEMPO|contador\(1),
	combout => \BASE_TEMPO|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y25_N14
\BASE_TEMPO|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~8_combout\ = (\BASE_TEMPO|contador\(4) & (\BASE_TEMPO|Add0~7\ $ (GND))) # (!\BASE_TEMPO|contador\(4) & (!\BASE_TEMPO|Add0~7\ & VCC))
-- \BASE_TEMPO|Add0~9\ = CARRY((\BASE_TEMPO|contador\(4) & !\BASE_TEMPO|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(4),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~7\,
	combout => \BASE_TEMPO|Add0~8_combout\,
	cout => \BASE_TEMPO|Add0~9\);

-- Location: FF_X109_Y25_N15
\BASE_TEMPO|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~8_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(4));

-- Location: LCCOMB_X109_Y25_N16
\BASE_TEMPO|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~10_combout\ = (\BASE_TEMPO|contador\(5) & (!\BASE_TEMPO|Add0~9\)) # (!\BASE_TEMPO|contador\(5) & ((\BASE_TEMPO|Add0~9\) # (GND)))
-- \BASE_TEMPO|Add0~11\ = CARRY((!\BASE_TEMPO|Add0~9\) # (!\BASE_TEMPO|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(5),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~9\,
	combout => \BASE_TEMPO|Add0~10_combout\,
	cout => \BASE_TEMPO|Add0~11\);

-- Location: FF_X109_Y25_N17
\BASE_TEMPO|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~10_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(5));

-- Location: LCCOMB_X109_Y25_N18
\BASE_TEMPO|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~12_combout\ = (\BASE_TEMPO|contador\(6) & (\BASE_TEMPO|Add0~11\ $ (GND))) # (!\BASE_TEMPO|contador\(6) & (!\BASE_TEMPO|Add0~11\ & VCC))
-- \BASE_TEMPO|Add0~13\ = CARRY((\BASE_TEMPO|contador\(6) & !\BASE_TEMPO|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(6),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~11\,
	combout => \BASE_TEMPO|Add0~12_combout\,
	cout => \BASE_TEMPO|Add0~13\);

-- Location: FF_X109_Y25_N19
\BASE_TEMPO|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~12_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(6));

-- Location: LCCOMB_X109_Y25_N20
\BASE_TEMPO|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~14_combout\ = (\BASE_TEMPO|contador\(7) & (!\BASE_TEMPO|Add0~13\)) # (!\BASE_TEMPO|contador\(7) & ((\BASE_TEMPO|Add0~13\) # (GND)))
-- \BASE_TEMPO|Add0~15\ = CARRY((!\BASE_TEMPO|Add0~13\) # (!\BASE_TEMPO|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(7),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~13\,
	combout => \BASE_TEMPO|Add0~14_combout\,
	cout => \BASE_TEMPO|Add0~15\);

-- Location: FF_X109_Y25_N21
\BASE_TEMPO|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~14_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(7));

-- Location: LCCOMB_X109_Y25_N22
\BASE_TEMPO|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~16_combout\ = (\BASE_TEMPO|contador\(8) & (\BASE_TEMPO|Add0~15\ $ (GND))) # (!\BASE_TEMPO|contador\(8) & (!\BASE_TEMPO|Add0~15\ & VCC))
-- \BASE_TEMPO|Add0~17\ = CARRY((\BASE_TEMPO|contador\(8) & !\BASE_TEMPO|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(8),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~15\,
	combout => \BASE_TEMPO|Add0~16_combout\,
	cout => \BASE_TEMPO|Add0~17\);

-- Location: FF_X109_Y25_N23
\BASE_TEMPO|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~16_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(8));

-- Location: LCCOMB_X109_Y25_N24
\BASE_TEMPO|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~18_combout\ = (\BASE_TEMPO|contador\(9) & (!\BASE_TEMPO|Add0~17\)) # (!\BASE_TEMPO|contador\(9) & ((\BASE_TEMPO|Add0~17\) # (GND)))
-- \BASE_TEMPO|Add0~19\ = CARRY((!\BASE_TEMPO|Add0~17\) # (!\BASE_TEMPO|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(9),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~17\,
	combout => \BASE_TEMPO|Add0~18_combout\,
	cout => \BASE_TEMPO|Add0~19\);

-- Location: FF_X109_Y25_N25
\BASE_TEMPO|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~18_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(9));

-- Location: LCCOMB_X109_Y25_N26
\BASE_TEMPO|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~20_combout\ = (\BASE_TEMPO|contador\(10) & (\BASE_TEMPO|Add0~19\ $ (GND))) # (!\BASE_TEMPO|contador\(10) & (!\BASE_TEMPO|Add0~19\ & VCC))
-- \BASE_TEMPO|Add0~21\ = CARRY((\BASE_TEMPO|contador\(10) & !\BASE_TEMPO|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(10),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~19\,
	combout => \BASE_TEMPO|Add0~20_combout\,
	cout => \BASE_TEMPO|Add0~21\);

-- Location: FF_X109_Y25_N27
\BASE_TEMPO|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~20_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(10));

-- Location: LCCOMB_X109_Y25_N28
\BASE_TEMPO|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~22_combout\ = (\BASE_TEMPO|contador\(11) & (!\BASE_TEMPO|Add0~21\)) # (!\BASE_TEMPO|contador\(11) & ((\BASE_TEMPO|Add0~21\) # (GND)))
-- \BASE_TEMPO|Add0~23\ = CARRY((!\BASE_TEMPO|Add0~21\) # (!\BASE_TEMPO|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(11),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~21\,
	combout => \BASE_TEMPO|Add0~22_combout\,
	cout => \BASE_TEMPO|Add0~23\);

-- Location: FF_X109_Y25_N29
\BASE_TEMPO|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~22_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(11));

-- Location: LCCOMB_X109_Y25_N2
\BASE_TEMPO|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Equal0~2_combout\ = (!\BASE_TEMPO|contador\(10) & (!\BASE_TEMPO|contador\(9) & (!\BASE_TEMPO|contador\(8) & !\BASE_TEMPO|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(10),
	datab => \BASE_TEMPO|contador\(9),
	datac => \BASE_TEMPO|contador\(8),
	datad => \BASE_TEMPO|contador\(11),
	combout => \BASE_TEMPO|Equal0~2_combout\);

-- Location: LCCOMB_X109_Y25_N30
\BASE_TEMPO|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~24_combout\ = (\BASE_TEMPO|contador\(12) & (\BASE_TEMPO|Add0~23\ $ (GND))) # (!\BASE_TEMPO|contador\(12) & (!\BASE_TEMPO|Add0~23\ & VCC))
-- \BASE_TEMPO|Add0~25\ = CARRY((\BASE_TEMPO|contador\(12) & !\BASE_TEMPO|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(12),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~23\,
	combout => \BASE_TEMPO|Add0~24_combout\,
	cout => \BASE_TEMPO|Add0~25\);

-- Location: FF_X109_Y25_N31
\BASE_TEMPO|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~24_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(12));

-- Location: LCCOMB_X109_Y24_N0
\BASE_TEMPO|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~26_combout\ = (\BASE_TEMPO|contador\(13) & (!\BASE_TEMPO|Add0~25\)) # (!\BASE_TEMPO|contador\(13) & ((\BASE_TEMPO|Add0~25\) # (GND)))
-- \BASE_TEMPO|Add0~27\ = CARRY((!\BASE_TEMPO|Add0~25\) # (!\BASE_TEMPO|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(13),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~25\,
	combout => \BASE_TEMPO|Add0~26_combout\,
	cout => \BASE_TEMPO|Add0~27\);

-- Location: FF_X109_Y24_N1
\BASE_TEMPO|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~26_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(13));

-- Location: LCCOMB_X109_Y24_N2
\BASE_TEMPO|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~28_combout\ = (\BASE_TEMPO|contador\(14) & (\BASE_TEMPO|Add0~27\ $ (GND))) # (!\BASE_TEMPO|contador\(14) & (!\BASE_TEMPO|Add0~27\ & VCC))
-- \BASE_TEMPO|Add0~29\ = CARRY((\BASE_TEMPO|contador\(14) & !\BASE_TEMPO|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(14),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~27\,
	combout => \BASE_TEMPO|Add0~28_combout\,
	cout => \BASE_TEMPO|Add0~29\);

-- Location: FF_X109_Y24_N3
\BASE_TEMPO|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~28_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(14));

-- Location: LCCOMB_X109_Y24_N4
\BASE_TEMPO|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~30_combout\ = (\BASE_TEMPO|contador\(15) & (!\BASE_TEMPO|Add0~29\)) # (!\BASE_TEMPO|contador\(15) & ((\BASE_TEMPO|Add0~29\) # (GND)))
-- \BASE_TEMPO|Add0~31\ = CARRY((!\BASE_TEMPO|Add0~29\) # (!\BASE_TEMPO|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(15),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~29\,
	combout => \BASE_TEMPO|Add0~30_combout\,
	cout => \BASE_TEMPO|Add0~31\);

-- Location: FF_X109_Y24_N5
\BASE_TEMPO|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~30_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(15));

-- Location: LCCOMB_X109_Y24_N26
\BASE_TEMPO|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Equal0~3_combout\ = (!\BASE_TEMPO|contador\(12) & (!\BASE_TEMPO|contador\(14) & (!\BASE_TEMPO|contador\(15) & !\BASE_TEMPO|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(12),
	datab => \BASE_TEMPO|contador\(14),
	datac => \BASE_TEMPO|contador\(15),
	datad => \BASE_TEMPO|contador\(13),
	combout => \BASE_TEMPO|Equal0~3_combout\);

-- Location: LCCOMB_X109_Y25_N0
\BASE_TEMPO|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Equal0~1_combout\ = (!\BASE_TEMPO|contador\(7) & (!\BASE_TEMPO|contador\(6) & (!\BASE_TEMPO|contador\(4) & !\BASE_TEMPO|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(7),
	datab => \BASE_TEMPO|contador\(6),
	datac => \BASE_TEMPO|contador\(4),
	datad => \BASE_TEMPO|contador\(5),
	combout => \BASE_TEMPO|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y25_N4
\BASE_TEMPO|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Equal0~4_combout\ = (\BASE_TEMPO|Equal0~0_combout\ & (\BASE_TEMPO|Equal0~2_combout\ & (\BASE_TEMPO|Equal0~3_combout\ & \BASE_TEMPO|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|Equal0~0_combout\,
	datab => \BASE_TEMPO|Equal0~2_combout\,
	datac => \BASE_TEMPO|Equal0~3_combout\,
	datad => \BASE_TEMPO|Equal0~1_combout\,
	combout => \BASE_TEMPO|Equal0~4_combout\);

-- Location: LCCOMB_X109_Y24_N6
\BASE_TEMPO|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~32_combout\ = (\BASE_TEMPO|contador\(16) & (\BASE_TEMPO|Add0~31\ $ (GND))) # (!\BASE_TEMPO|contador\(16) & (!\BASE_TEMPO|Add0~31\ & VCC))
-- \BASE_TEMPO|Add0~33\ = CARRY((\BASE_TEMPO|contador\(16) & !\BASE_TEMPO|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(16),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~31\,
	combout => \BASE_TEMPO|Add0~32_combout\,
	cout => \BASE_TEMPO|Add0~33\);

-- Location: FF_X109_Y24_N7
\BASE_TEMPO|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~32_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(16));

-- Location: LCCOMB_X109_Y24_N8
\BASE_TEMPO|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~34_combout\ = (\BASE_TEMPO|contador\(17) & (!\BASE_TEMPO|Add0~33\)) # (!\BASE_TEMPO|contador\(17) & ((\BASE_TEMPO|Add0~33\) # (GND)))
-- \BASE_TEMPO|Add0~35\ = CARRY((!\BASE_TEMPO|Add0~33\) # (!\BASE_TEMPO|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(17),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~33\,
	combout => \BASE_TEMPO|Add0~34_combout\,
	cout => \BASE_TEMPO|Add0~35\);

-- Location: FF_X109_Y24_N9
\BASE_TEMPO|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~34_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(17));

-- Location: LCCOMB_X109_Y24_N10
\BASE_TEMPO|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~36_combout\ = (\BASE_TEMPO|contador\(18) & (\BASE_TEMPO|Add0~35\ $ (GND))) # (!\BASE_TEMPO|contador\(18) & (!\BASE_TEMPO|Add0~35\ & VCC))
-- \BASE_TEMPO|Add0~37\ = CARRY((\BASE_TEMPO|contador\(18) & !\BASE_TEMPO|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(18),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~35\,
	combout => \BASE_TEMPO|Add0~36_combout\,
	cout => \BASE_TEMPO|Add0~37\);

-- Location: FF_X109_Y24_N11
\BASE_TEMPO|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~36_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(18));

-- Location: LCCOMB_X109_Y24_N12
\BASE_TEMPO|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~38_combout\ = (\BASE_TEMPO|contador\(19) & (!\BASE_TEMPO|Add0~37\)) # (!\BASE_TEMPO|contador\(19) & ((\BASE_TEMPO|Add0~37\) # (GND)))
-- \BASE_TEMPO|Add0~39\ = CARRY((!\BASE_TEMPO|Add0~37\) # (!\BASE_TEMPO|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(19),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~37\,
	combout => \BASE_TEMPO|Add0~38_combout\,
	cout => \BASE_TEMPO|Add0~39\);

-- Location: FF_X109_Y24_N13
\BASE_TEMPO|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~38_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(19));

-- Location: LCCOMB_X109_Y24_N14
\BASE_TEMPO|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~40_combout\ = (\BASE_TEMPO|contador\(20) & (\BASE_TEMPO|Add0~39\ $ (GND))) # (!\BASE_TEMPO|contador\(20) & (!\BASE_TEMPO|Add0~39\ & VCC))
-- \BASE_TEMPO|Add0~41\ = CARRY((\BASE_TEMPO|contador\(20) & !\BASE_TEMPO|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(20),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~39\,
	combout => \BASE_TEMPO|Add0~40_combout\,
	cout => \BASE_TEMPO|Add0~41\);

-- Location: FF_X109_Y24_N15
\BASE_TEMPO|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~40_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(20));

-- Location: LCCOMB_X109_Y24_N16
\BASE_TEMPO|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~42_combout\ = (\BASE_TEMPO|contador\(21) & (!\BASE_TEMPO|Add0~41\)) # (!\BASE_TEMPO|contador\(21) & ((\BASE_TEMPO|Add0~41\) # (GND)))
-- \BASE_TEMPO|Add0~43\ = CARRY((!\BASE_TEMPO|Add0~41\) # (!\BASE_TEMPO|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(21),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~41\,
	combout => \BASE_TEMPO|Add0~42_combout\,
	cout => \BASE_TEMPO|Add0~43\);

-- Location: FF_X109_Y24_N17
\BASE_TEMPO|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~42_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(21));

-- Location: LCCOMB_X109_Y24_N18
\BASE_TEMPO|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~44_combout\ = (\BASE_TEMPO|contador\(22) & (\BASE_TEMPO|Add0~43\ $ (GND))) # (!\BASE_TEMPO|contador\(22) & (!\BASE_TEMPO|Add0~43\ & VCC))
-- \BASE_TEMPO|Add0~45\ = CARRY((\BASE_TEMPO|contador\(22) & !\BASE_TEMPO|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(22),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~43\,
	combout => \BASE_TEMPO|Add0~44_combout\,
	cout => \BASE_TEMPO|Add0~45\);

-- Location: FF_X109_Y24_N19
\BASE_TEMPO|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~44_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(22));

-- Location: LCCOMB_X109_Y24_N20
\BASE_TEMPO|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~46_combout\ = (\BASE_TEMPO|contador\(23) & (!\BASE_TEMPO|Add0~45\)) # (!\BASE_TEMPO|contador\(23) & ((\BASE_TEMPO|Add0~45\) # (GND)))
-- \BASE_TEMPO|Add0~47\ = CARRY((!\BASE_TEMPO|Add0~45\) # (!\BASE_TEMPO|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_TEMPO|contador\(23),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~45\,
	combout => \BASE_TEMPO|Add0~46_combout\,
	cout => \BASE_TEMPO|Add0~47\);

-- Location: FF_X109_Y24_N21
\BASE_TEMPO|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~46_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(23));

-- Location: LCCOMB_X109_Y24_N22
\BASE_TEMPO|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~48_combout\ = (\BASE_TEMPO|contador\(24) & (\BASE_TEMPO|Add0~47\ $ (GND))) # (!\BASE_TEMPO|contador\(24) & (!\BASE_TEMPO|Add0~47\ & VCC))
-- \BASE_TEMPO|Add0~49\ = CARRY((\BASE_TEMPO|contador\(24) & !\BASE_TEMPO|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(24),
	datad => VCC,
	cin => \BASE_TEMPO|Add0~47\,
	combout => \BASE_TEMPO|Add0~48_combout\,
	cout => \BASE_TEMPO|Add0~49\);

-- Location: FF_X109_Y24_N23
\BASE_TEMPO|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~48_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(24));

-- Location: LCCOMB_X109_Y24_N24
\BASE_TEMPO|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Add0~50_combout\ = \BASE_TEMPO|Add0~49\ $ (\BASE_TEMPO|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BASE_TEMPO|contador\(25),
	cin => \BASE_TEMPO|Add0~49\,
	combout => \BASE_TEMPO|Add0~50_combout\);

-- Location: FF_X109_Y24_N25
\BASE_TEMPO|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|Add0~50_combout\,
	ena => \DE|CLEAR_TEMPO~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|contador\(25));

-- Location: LCCOMB_X108_Y24_N18
\BASE_TEMPO|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Equal0~7_combout\ = (!\BASE_TEMPO|contador\(25) & !\BASE_TEMPO|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BASE_TEMPO|contador\(25),
	datad => \BASE_TEMPO|contador\(24),
	combout => \BASE_TEMPO|Equal0~7_combout\);

-- Location: LCCOMB_X109_Y24_N30
\BASE_TEMPO|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Equal0~6_combout\ = (!\BASE_TEMPO|contador\(23) & (!\BASE_TEMPO|contador\(21) & (!\BASE_TEMPO|contador\(20) & !\BASE_TEMPO|contador\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(23),
	datab => \BASE_TEMPO|contador\(21),
	datac => \BASE_TEMPO|contador\(20),
	datad => \BASE_TEMPO|contador\(22),
	combout => \BASE_TEMPO|Equal0~6_combout\);

-- Location: LCCOMB_X109_Y24_N28
\BASE_TEMPO|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Equal0~5_combout\ = (!\BASE_TEMPO|contador\(18) & (!\BASE_TEMPO|contador\(19) & (!\BASE_TEMPO|contador\(17) & !\BASE_TEMPO|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|contador\(18),
	datab => \BASE_TEMPO|contador\(19),
	datac => \BASE_TEMPO|contador\(17),
	datad => \BASE_TEMPO|contador\(16),
	combout => \BASE_TEMPO|Equal0~5_combout\);

-- Location: LCCOMB_X108_Y24_N0
\BASE_TEMPO|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|Equal0~8_combout\ = (\BASE_TEMPO|Equal0~4_combout\ & (\BASE_TEMPO|Equal0~7_combout\ & (\BASE_TEMPO|Equal0~6_combout\ & \BASE_TEMPO|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|Equal0~4_combout\,
	datab => \BASE_TEMPO|Equal0~7_combout\,
	datac => \BASE_TEMPO|Equal0~6_combout\,
	datad => \BASE_TEMPO|Equal0~5_combout\,
	combout => \BASE_TEMPO|Equal0~8_combout\);

-- Location: LCCOMB_X108_Y24_N16
\BASE_TEMPO|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_TEMPO|tick~0_combout\ = (\DE|CLEAR_TEMPO~16_combout\ & (\BASE_TEMPO|tick~q\ $ (\BASE_TEMPO|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE|CLEAR_TEMPO~16_combout\,
	datac => \BASE_TEMPO|tick~q\,
	datad => \BASE_TEMPO|Equal0~8_combout\,
	combout => \BASE_TEMPO|tick~0_combout\);

-- Location: FF_X108_Y24_N17
\BASE_TEMPO|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_TEMPO|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_TEMPO|tick~q\);

-- Location: LCCOMB_X108_Y21_N22
\CPU|MUXBancoReg|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUXBancoReg|Mux7~9_combout\ = (\CPU|ROM|content~15_combout\ & ((\CPU|ROM|content~50_combout\ & ((\CPU|ROM|content~73_combout\))) # (!\CPU|ROM|content~50_combout\ & (\BASE_TEMPO|tick~q\)))) # (!\CPU|ROM|content~15_combout\ & (\BASE_TEMPO|tick~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_TEMPO|tick~q\,
	datab => \CPU|ROM|content~73_combout\,
	datac => \CPU|ROM|content~15_combout\,
	datad => \CPU|ROM|content~50_combout\,
	combout => \CPU|MUXBancoReg|Mux7~9_combout\);

-- Location: LCCOMB_X109_Y23_N16
\CPU|ROM|content~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~37_combout\ = (\CPU|PC|toout\(2) & ((\CPU|PC|toout\(5) & ((!\CPU|PC|toout\(3)))) # (!\CPU|PC|toout\(5) & (\CPU|PC|toout\(1))))) # (!\CPU|PC|toout\(2) & ((\CPU|PC|toout\(1) & ((\CPU|PC|toout\(3)))) # (!\CPU|PC|toout\(1) & 
-- (\CPU|PC|toout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|PC|toout\(3),
	combout => \CPU|ROM|content~37_combout\);

-- Location: LCCOMB_X109_Y23_N18
\CPU|ROM|content~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~38_combout\ = (\CPU|PC|toout\(5) & ((\CPU|PC|toout\(2) & (\CPU|PC|toout\(1) & !\CPU|PC|toout\(3))) # (!\CPU|PC|toout\(2) & ((\CPU|PC|toout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|PC|toout\(3),
	combout => \CPU|ROM|content~38_combout\);

-- Location: LCCOMB_X109_Y23_N24
\CPU|ROM|content~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~39_combout\ = (!\CPU|PC|toout\(4) & ((\CPU|PC|toout\(0) & (\CPU|ROM|content~37_combout\)) # (!\CPU|PC|toout\(0) & ((\CPU|ROM|content~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(4),
	datab => \CPU|ROM|content~37_combout\,
	datac => \CPU|PC|toout\(0),
	datad => \CPU|ROM|content~38_combout\,
	combout => \CPU|ROM|content~39_combout\);

-- Location: LCCOMB_X108_Y22_N14
\CPU|ROM|content~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~35_combout\ = (\CPU|PC|toout\(4) & !\CPU|PC|toout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|toout\(4),
	datad => \CPU|PC|toout\(5),
	combout => \CPU|ROM|content~35_combout\);

-- Location: LCCOMB_X108_Y23_N8
\CPU|ROM|content~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~40_combout\ = (\CPU|ROM|content~39_combout\) # ((\CPU|PC|toout\(0) & (\CPU|PC|toout\(1) & \CPU|ROM|content~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(0),
	datab => \CPU|ROM|content~39_combout\,
	datac => \CPU|PC|toout\(1),
	datad => \CPU|ROM|content~35_combout\,
	combout => \CPU|ROM|content~40_combout\);

-- Location: LCCOMB_X108_Y23_N28
\CPU|ROM|content~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~44_combout\ = (\CPU|ROM|content~43_combout\ & !\CPU|PC|toout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM|content~43_combout\,
	datad => \CPU|PC|toout\(7),
	combout => \CPU|ROM|content~44_combout\);

-- Location: LCCOMB_X108_Y21_N28
\CPU|MUXBancoReg|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUXBancoReg|Mux7~8_combout\ = (\CPU|ROM|content~44_combout\ & (((!\CPU|ROM|content~40_combout\ & !\CPU|ROM|content~50_combout\)) # (!\CPU|ROM|content~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~15_combout\,
	datab => \CPU|ROM|content~40_combout\,
	datac => \CPU|ROM|content~44_combout\,
	datad => \CPU|ROM|content~50_combout\,
	combout => \CPU|MUXBancoReg|Mux7~8_combout\);

-- Location: LCCOMB_X111_Y22_N20
\CPU|ROM|content~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~17_combout\ = (\CPU|PC|toout\(4) & (!\CPU|PC|toout\(7) & (!\CPU|PC|toout\(6) & !\CPU|PC|toout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(4),
	datab => \CPU|PC|toout\(7),
	datac => \CPU|PC|toout\(6),
	datad => \CPU|PC|toout\(5),
	combout => \CPU|ROM|content~17_combout\);

-- Location: LCCOMB_X110_Y22_N2
\CPU|ROM|content~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~18_combout\ = (\CPU|PC|toout\(0) & (!\CPU|PC|toout\(5) & ((\CPU|PC|toout\(3)) # (!\CPU|PC|toout\(4))))) # (!\CPU|PC|toout\(0) & (!\CPU|PC|toout\(4) & (\CPU|PC|toout\(5) & \CPU|PC|toout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(4),
	datab => \CPU|PC|toout\(0),
	datac => \CPU|PC|toout\(5),
	datad => \CPU|PC|toout\(3),
	combout => \CPU|ROM|content~18_combout\);

-- Location: LCCOMB_X110_Y22_N28
\CPU|ROM|content~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~19_combout\ = (\CPU|PC|toout\(2) & (\CPU|PC|toout\(1) & (!\CPU|PC|toout\(3)))) # (!\CPU|PC|toout\(2) & (\CPU|ROM|content~18_combout\ & (\CPU|PC|toout\(1) $ (\CPU|PC|toout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(3),
	datad => \CPU|ROM|content~18_combout\,
	combout => \CPU|ROM|content~19_combout\);

-- Location: LCCOMB_X110_Y22_N22
\CPU|ROM|content~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~20_combout\ = (\CPU|ROM|content~19_combout\ & ((\CPU|PC|toout\(2) & ((\CPU|ROM|content~17_combout\))) # (!\CPU|PC|toout\(2) & (\CPU|ROM|content~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datab => \CPU|ROM|content~15_combout\,
	datac => \CPU|ROM|content~17_combout\,
	datad => \CPU|ROM|content~19_combout\,
	combout => \CPU|ROM|content~20_combout\);

-- Location: LCCOMB_X109_Y22_N30
\CPU|ROM|content~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~32_combout\ = (!\CPU|PC|toout\(1) & ((\CPU|PC|toout\(2) & ((!\CPU|PC|toout\(3)))) # (!\CPU|PC|toout\(2) & (\CPU|PC|toout\(0) & \CPU|PC|toout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(0),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(1),
	combout => \CPU|ROM|content~32_combout\);

-- Location: LCCOMB_X109_Y22_N28
\CPU|ROM|content~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~31_combout\ = (\CPU|PC|toout\(2) & (!\CPU|PC|toout\(0) & (!\CPU|PC|toout\(3) & !\CPU|PC|toout\(1)))) # (!\CPU|PC|toout\(2) & (\CPU|PC|toout\(0) $ (((\CPU|PC|toout\(3) & \CPU|PC|toout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(0),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(3),
	datad => \CPU|PC|toout\(1),
	combout => \CPU|ROM|content~31_combout\);

-- Location: LCCOMB_X109_Y22_N0
\CPU|ROM|content~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~33_combout\ = (!\CPU|PC|toout\(4) & ((\CPU|PC|toout\(5) & ((\CPU|ROM|content~31_combout\))) # (!\CPU|PC|toout\(5) & (\CPU|ROM|content~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~32_combout\,
	datab => \CPU|PC|toout\(5),
	datac => \CPU|PC|toout\(4),
	datad => \CPU|ROM|content~31_combout\,
	combout => \CPU|ROM|content~33_combout\);

-- Location: LCCOMB_X110_Y22_N26
\CPU|ROM|content~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~34_combout\ = (\CPU|PC|toout\(3) & ((\CPU|PC|toout\(1)) # ((\CPU|PC|toout\(2) & \CPU|PC|toout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(0),
	datad => \CPU|PC|toout\(3),
	combout => \CPU|ROM|content~34_combout\);

-- Location: LCCOMB_X109_Y22_N2
\CPU|ROM|content~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~36_combout\ = (\CPU|ROM|content~15_combout\ & ((\CPU|ROM|content~33_combout\) # ((\CPU|ROM|content~35_combout\ & \CPU|ROM|content~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~35_combout\,
	datab => \CPU|ROM|content~33_combout\,
	datac => \CPU|ROM|content~15_combout\,
	datad => \CPU|ROM|content~34_combout\,
	combout => \CPU|ROM|content~36_combout\);

-- Location: LCCOMB_X111_Y22_N8
\CPU|ROM|content~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~24_combout\ = (!\CPU|PC|toout\(5) & (!\CPU|PC|toout\(7) & (!\CPU|PC|toout\(6) & !\CPU|PC|toout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(5),
	datab => \CPU|PC|toout\(7),
	datac => \CPU|PC|toout\(6),
	datad => \CPU|PC|toout\(4),
	combout => \CPU|ROM|content~24_combout\);

-- Location: LCCOMB_X111_Y22_N4
\CPU|ROM|content~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~27_combout\ = (\CPU|PC|toout\(3) & (\CPU|PC|toout\(1))) # (!\CPU|PC|toout\(3) & (!\CPU|PC|toout\(1) & \CPU|ROM|content~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(3),
	datab => \CPU|PC|toout\(1),
	datad => \CPU|ROM|content~17_combout\,
	combout => \CPU|ROM|content~27_combout\);

-- Location: LCCOMB_X111_Y22_N12
\CPU|ROM|content~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~70_combout\ = (\CPU|PC|toout\(5) & (!\CPU|PC|toout\(7) & (!\CPU|PC|toout\(6) & !\CPU|PC|toout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(5),
	datab => \CPU|PC|toout\(7),
	datac => \CPU|PC|toout\(6),
	datad => \CPU|PC|toout\(4),
	combout => \CPU|ROM|content~70_combout\);

-- Location: LCCOMB_X111_Y22_N2
\CPU|ROM|content~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~28_combout\ = (\CPU|PC|toout\(2) & (!\CPU|PC|toout\(0) & \CPU|ROM|content~70_combout\)) # (!\CPU|PC|toout\(2) & (\CPU|PC|toout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(0),
	datad => \CPU|ROM|content~70_combout\,
	combout => \CPU|ROM|content~28_combout\);

-- Location: LCCOMB_X111_Y22_N0
\CPU|ROM|content~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~29_combout\ = (\CPU|PC|toout\(2) & ((\CPU|ROM|content~27_combout\ & (\CPU|ROM|content~24_combout\)) # (!\CPU|ROM|content~27_combout\ & ((\CPU|ROM|content~28_combout\))))) # (!\CPU|PC|toout\(2) & (\CPU|ROM|content~28_combout\ & 
-- ((\CPU|ROM|content~24_combout\) # (\CPU|ROM|content~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datab => \CPU|ROM|content~24_combout\,
	datac => \CPU|ROM|content~27_combout\,
	datad => \CPU|ROM|content~28_combout\,
	combout => \CPU|ROM|content~29_combout\);

-- Location: LCCOMB_X110_Y22_N0
\CPU|ROM|content~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~25_combout\ = (\CPU|PC|toout\(1) & (((\CPU|PC|toout\(2)) # (!\CPU|PC|toout\(3))))) # (!\CPU|PC|toout\(1) & (\CPU|PC|toout\(0) $ (((\CPU|PC|toout\(2)) # (\CPU|PC|toout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(1),
	datab => \CPU|PC|toout\(0),
	datac => \CPU|PC|toout\(2),
	datad => \CPU|PC|toout\(3),
	combout => \CPU|ROM|content~25_combout\);

-- Location: LCCOMB_X111_Y22_N22
\CPU|ROM|content~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~21_combout\ = (\CPU|PC|toout\(2) & (\CPU|PC|toout\(1) & (\CPU|PC|toout\(3) & \CPU|ROM|content~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datab => \CPU|PC|toout\(1),
	datac => \CPU|PC|toout\(3),
	datad => \CPU|ROM|content~17_combout\,
	combout => \CPU|ROM|content~21_combout\);

-- Location: LCCOMB_X110_Y22_N24
\CPU|ROM|content~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~22_combout\ = (\CPU|PC|toout\(3) & (!\CPU|PC|toout\(0) & (!\CPU|PC|toout\(2) & \CPU|PC|toout\(1)))) # (!\CPU|PC|toout\(3) & (((\CPU|PC|toout\(2) & !\CPU|PC|toout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(3),
	datab => \CPU|PC|toout\(0),
	datac => \CPU|PC|toout\(2),
	datad => \CPU|PC|toout\(1),
	combout => \CPU|ROM|content~22_combout\);

-- Location: LCCOMB_X110_Y22_N30
\CPU|ROM|content~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~23_combout\ = (!\CPU|PC|toout\(4) & (\CPU|ROM|content~15_combout\ & (\CPU|PC|toout\(5) & \CPU|ROM|content~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(4),
	datab => \CPU|ROM|content~15_combout\,
	datac => \CPU|PC|toout\(5),
	datad => \CPU|ROM|content~22_combout\,
	combout => \CPU|ROM|content~23_combout\);

-- Location: LCCOMB_X111_Y22_N10
\CPU|ROM|content~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~26_combout\ = (\CPU|ROM|content~21_combout\) # ((\CPU|ROM|content~23_combout\) # ((!\CPU|ROM|content~25_combout\ & \CPU|ROM|content~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~25_combout\,
	datab => \CPU|ROM|content~24_combout\,
	datac => \CPU|ROM|content~21_combout\,
	datad => \CPU|ROM|content~23_combout\,
	combout => \CPU|ROM|content~26_combout\);

-- Location: LCCOMB_X111_Y22_N30
\CPU|BR|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|Equal0~3_combout\ = (!\CPU|ROM|content~26_combout\ & ((\CPU|PC|toout\(2) $ (\CPU|PC|toout\(1))) # (!\CPU|ROM|content~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datab => \CPU|ROM|content~29_combout\,
	datac => \CPU|PC|toout\(1),
	datad => \CPU|ROM|content~26_combout\,
	combout => \CPU|BR|Equal0~3_combout\);

-- Location: LCCOMB_X107_Y19_N8
\CPU|BR|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|Equal0~2_combout\ = (!\CPU|ROM|content~20_combout\ & (!\CPU|ROM|content~36_combout\ & (\CPU|BR|Equal0~3_combout\ & !\CPU|ROM|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|Equal0~3_combout\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|Equal0~2_combout\);

-- Location: LCCOMB_X109_Y21_N30
\CPU|BR|registrador~262feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~262feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~262feeder_combout\);

-- Location: LCCOMB_X111_Y22_N18
\CPU|ROM|content~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|content~30_combout\ = (\CPU|ROM|content~29_combout\ & (\CPU|PC|toout\(2) $ (!\CPU|PC|toout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|toout\(2),
	datac => \CPU|PC|toout\(1),
	datad => \CPU|ROM|content~29_combout\,
	combout => \CPU|ROM|content~30_combout\);

-- Location: LCCOMB_X109_Y21_N24
\CPU|BR|registrador~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~382_combout\ = (\CPU|ROM|content~16_combout\ & (\CPU|ROM|content~20_combout\ & (\CPU|ROM|content~26_combout\ & \CPU|ROM|content~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|ROM|content~26_combout\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~382_combout\);

-- Location: LCCOMB_X108_Y21_N30
\CPU|UC|wrReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|UC|wrReg~0_combout\ = (\CPU|ROM|content~15_combout\ & ((\CPU|ROM|content~40_combout\) # ((\CPU|ROM|content~44_combout\ & \CPU|ROM|content~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~15_combout\,
	datab => \CPU|ROM|content~40_combout\,
	datac => \CPU|ROM|content~44_combout\,
	datad => \CPU|ROM|content~50_combout\,
	combout => \CPU|UC|wrReg~0_combout\);

-- Location: LCCOMB_X109_Y21_N22
\CPU|BR|registrador~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~383_combout\ = (\CPU|BR|registrador~382_combout\ & (\CPU|ROM|content~36_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|BR|registrador~382_combout\,
	datac => \CPU|ROM|content~36_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~383_combout\);

-- Location: FF_X109_Y21_N31
\CPU|BR|registrador~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~262feeder_combout\,
	ena => \CPU|BR|registrador~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~262_q\);

-- Location: LCCOMB_X111_Y21_N4
\CPU|BR|registrador~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~376_combout\ = (\CPU|ROM|content~30_combout\ & (\CPU|ROM|content~16_combout\ & (!\CPU|ROM|content~20_combout\ & \CPU|ROM|content~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|ROM|content~20_combout\,
	datad => \CPU|ROM|content~26_combout\,
	combout => \CPU|BR|registrador~376_combout\);

-- Location: LCCOMB_X111_Y21_N10
\CPU|BR|registrador~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~377_combout\ = (\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~376_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~376_combout\,
	combout => \CPU|BR|registrador~377_combout\);

-- Location: FF_X110_Y21_N13
\CPU|BR|registrador~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~198_q\);

-- Location: LCCOMB_X109_Y21_N20
\CPU|BR|registrador~230feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~230feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~230feeder_combout\);

-- Location: LCCOMB_X109_Y20_N26
\CPU|BR|registrador~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~378_combout\ = (!\CPU|ROM|content~16_combout\ & (\CPU|ROM|content~20_combout\ & (\CPU|ROM|content~26_combout\ & \CPU|ROM|content~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|ROM|content~26_combout\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~378_combout\);

-- Location: LCCOMB_X109_Y21_N14
\CPU|BR|registrador~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~379_combout\ = (\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~378_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~378_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~379_combout\);

-- Location: FF_X109_Y21_N21
\CPU|BR|registrador~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~230feeder_combout\,
	ena => \CPU|BR|registrador~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~230_q\);

-- Location: LCCOMB_X111_Y21_N28
\CPU|BR|registrador~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~380_combout\ = (\CPU|ROM|content~30_combout\ & (!\CPU|ROM|content~16_combout\ & (!\CPU|ROM|content~20_combout\ & \CPU|ROM|content~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|ROM|content~20_combout\,
	datad => \CPU|ROM|content~26_combout\,
	combout => \CPU|BR|registrador~380_combout\);

-- Location: LCCOMB_X111_Y21_N30
\CPU|BR|registrador~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~381_combout\ = (\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~380_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~380_combout\,
	combout => \CPU|BR|registrador~381_combout\);

-- Location: FF_X110_Y21_N19
\CPU|BR|registrador~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~166_q\);

-- Location: LCCOMB_X110_Y21_N18
\CPU|BR|registrador~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~277_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~230_q\) # ((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & (((\CPU|BR|registrador~166_q\ & !\CPU|ROM|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|BR|registrador~230_q\,
	datac => \CPU|BR|registrador~166_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~277_combout\);

-- Location: LCCOMB_X110_Y21_N12
\CPU|BR|registrador~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~278_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~277_combout\ & (\CPU|BR|registrador~262_q\)) # (!\CPU|BR|registrador~277_combout\ & ((\CPU|BR|registrador~198_q\))))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~262_q\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|BR|registrador~198_q\,
	datad => \CPU|BR|registrador~277_combout\,
	combout => \CPU|BR|registrador~278_combout\);

-- Location: LCCOMB_X111_Y19_N4
\CPU|BR|registrador~182feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~182feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~182feeder_combout\);

-- Location: LCCOMB_X111_Y19_N24
\CPU|BR|registrador~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~352_combout\ = (!\CPU|ROM|content~20_combout\ & (\CPU|ROM|content~26_combout\ & (!\CPU|ROM|content~30_combout\ & \CPU|ROM|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|ROM|content~26_combout\,
	datac => \CPU|ROM|content~30_combout\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~352_combout\);

-- Location: LCCOMB_X111_Y19_N22
\CPU|BR|registrador~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~353_combout\ = (\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~352_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~352_combout\,
	combout => \CPU|BR|registrador~353_combout\);

-- Location: FF_X111_Y19_N5
\CPU|BR|registrador~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~182feeder_combout\,
	ena => \CPU|BR|registrador~353_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~182_q\);

-- Location: LCCOMB_X110_Y19_N26
\CPU|BR|registrador~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~358_combout\ = (\CPU|ROM|content~26_combout\ & (\CPU|ROM|content~20_combout\ & (\CPU|ROM|content~16_combout\ & !\CPU|ROM|content~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|ROM|content~16_combout\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~358_combout\);

-- Location: LCCOMB_X110_Y19_N12
\CPU|BR|registrador~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~359_combout\ = (\CPU|BR|registrador~358_combout\ & (\CPU|ROM|content~36_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~358_combout\,
	datab => \CPU|ROM|content~36_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~359_combout\);

-- Location: FF_X110_Y19_N17
\CPU|BR|registrador~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~359_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~246_q\);

-- Location: LCCOMB_X111_Y19_N30
\CPU|BR|registrador~150feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~150feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~150feeder_combout\);

-- Location: LCCOMB_X111_Y19_N16
\CPU|BR|registrador~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~356_combout\ = (!\CPU|ROM|content~30_combout\ & (\CPU|ROM|content~26_combout\ & (!\CPU|ROM|content~20_combout\ & !\CPU|ROM|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|ROM|content~26_combout\,
	datac => \CPU|ROM|content~20_combout\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~356_combout\);

-- Location: LCCOMB_X111_Y19_N10
\CPU|BR|registrador~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~357_combout\ = (\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~356_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~356_combout\,
	combout => \CPU|BR|registrador~357_combout\);

-- Location: FF_X111_Y19_N31
\CPU|BR|registrador~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~150feeder_combout\,
	ena => \CPU|BR|registrador~357_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~150_q\);

-- Location: LCCOMB_X110_Y19_N0
\CPU|BR|registrador~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~354_combout\ = (\CPU|ROM|content~26_combout\ & (!\CPU|ROM|content~30_combout\ & (!\CPU|ROM|content~16_combout\ & \CPU|ROM|content~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|ROM|content~16_combout\,
	datad => \CPU|ROM|content~20_combout\,
	combout => \CPU|BR|registrador~354_combout\);

-- Location: LCCOMB_X110_Y19_N20
\CPU|BR|registrador~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~355_combout\ = (!\CPU|UC|wrReg~0_combout\ & (\CPU|BR|registrador~354_combout\ & \CPU|ROM|content~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|wrReg~0_combout\,
	datab => \CPU|BR|registrador~354_combout\,
	datad => \CPU|ROM|content~36_combout\,
	combout => \CPU|BR|registrador~355_combout\);

-- Location: FF_X110_Y19_N21
\CPU|BR|registrador~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~355_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~214_q\);

-- Location: LCCOMB_X110_Y19_N10
\CPU|BR|registrador~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~270_combout\ = (\CPU|ROM|content~16_combout\ & (((\CPU|ROM|content~20_combout\)))) # (!\CPU|ROM|content~16_combout\ & ((\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~214_q\))) # (!\CPU|ROM|content~20_combout\ & 
-- (\CPU|BR|registrador~150_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~150_q\,
	datab => \CPU|BR|registrador~214_q\,
	datac => \CPU|ROM|content~16_combout\,
	datad => \CPU|ROM|content~20_combout\,
	combout => \CPU|BR|registrador~270_combout\);

-- Location: LCCOMB_X110_Y19_N16
\CPU|BR|registrador~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~271_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~270_combout\ & ((\CPU|BR|registrador~246_q\))) # (!\CPU|BR|registrador~270_combout\ & (\CPU|BR|registrador~182_q\)))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~182_q\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|BR|registrador~246_q\,
	datad => \CPU|BR|registrador~270_combout\,
	combout => \CPU|BR|registrador~271_combout\);

-- Location: LCCOMB_X108_Y21_N12
\CPU|BR|registrador~222feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~222feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~222feeder_combout\);

-- Location: LCCOMB_X109_Y21_N4
\CPU|BR|registrador~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~360_combout\ = (!\CPU|ROM|content~16_combout\ & (\CPU|ROM|content~20_combout\ & (!\CPU|ROM|content~26_combout\ & \CPU|ROM|content~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|ROM|content~26_combout\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~360_combout\);

-- Location: LCCOMB_X108_Y21_N16
\CPU|BR|registrador~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~361_combout\ = (\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~360_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~360_combout\,
	combout => \CPU|BR|registrador~361_combout\);

-- Location: FF_X108_Y21_N13
\CPU|BR|registrador~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~222feeder_combout\,
	ena => \CPU|BR|registrador~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~222_q\);

-- Location: LCCOMB_X111_Y19_N28
\CPU|BR|registrador~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~366_combout\ = (\CPU|ROM|content~30_combout\ & (!\CPU|ROM|content~26_combout\ & (\CPU|ROM|content~20_combout\ & \CPU|ROM|content~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|ROM|content~26_combout\,
	datac => \CPU|ROM|content~20_combout\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~366_combout\);

-- Location: LCCOMB_X108_Y19_N8
\CPU|BR|registrador~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~367_combout\ = (\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~366_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datab => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~366_combout\,
	combout => \CPU|BR|registrador~367_combout\);

-- Location: FF_X109_Y22_N15
\CPU|BR|registrador~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~367_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~254_q\);

-- Location: LCCOMB_X107_Y22_N4
\CPU|BR|registrador~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~362_combout\ = (\CPU|ROM|content~30_combout\ & (!\CPU|ROM|content~20_combout\ & (\CPU|ROM|content~16_combout\ & !\CPU|ROM|content~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|ROM|content~16_combout\,
	datad => \CPU|ROM|content~26_combout\,
	combout => \CPU|BR|registrador~362_combout\);

-- Location: LCCOMB_X108_Y19_N28
\CPU|BR|registrador~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~363_combout\ = (\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~362_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datab => \CPU|BR|registrador~362_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~363_combout\);

-- Location: FF_X108_Y19_N29
\CPU|BR|registrador~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~363_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~190_q\);

-- Location: LCCOMB_X111_Y21_N12
\CPU|BR|registrador~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~364_combout\ = (\CPU|ROM|content~30_combout\ & (!\CPU|ROM|content~16_combout\ & (!\CPU|ROM|content~20_combout\ & !\CPU|ROM|content~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|ROM|content~20_combout\,
	datad => \CPU|ROM|content~26_combout\,
	combout => \CPU|BR|registrador~364_combout\);

-- Location: LCCOMB_X111_Y21_N18
\CPU|BR|registrador~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~365_combout\ = (\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~364_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~364_combout\,
	combout => \CPU|BR|registrador~365_combout\);

-- Location: FF_X109_Y22_N25
\CPU|BR|registrador~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~158_q\);

-- Location: LCCOMB_X109_Y22_N24
\CPU|BR|registrador~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~272_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~190_q\) # ((\CPU|ROM|content~20_combout\)))) # (!\CPU|ROM|content~16_combout\ & (((\CPU|BR|registrador~158_q\ & !\CPU|ROM|content~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|BR|registrador~190_q\,
	datac => \CPU|BR|registrador~158_q\,
	datad => \CPU|ROM|content~20_combout\,
	combout => \CPU|BR|registrador~272_combout\);

-- Location: LCCOMB_X109_Y22_N14
\CPU|BR|registrador~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~273_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~272_combout\ & ((\CPU|BR|registrador~254_q\))) # (!\CPU|BR|registrador~272_combout\ & (\CPU|BR|registrador~222_q\)))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~222_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~254_q\,
	datad => \CPU|BR|registrador~272_combout\,
	combout => \CPU|BR|registrador~273_combout\);

-- Location: LCCOMB_X105_Y22_N8
\CPU|BR|registrador~206feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~206feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~206feeder_combout\);

-- Location: LCCOMB_X109_Y20_N28
\CPU|BR|registrador~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~368_combout\ = (!\CPU|ROM|content~16_combout\ & (\CPU|ROM|content~20_combout\ & (!\CPU|ROM|content~26_combout\ & !\CPU|ROM|content~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|ROM|content~26_combout\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~368_combout\);

-- Location: LCCOMB_X105_Y22_N4
\CPU|BR|registrador~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~369_combout\ = (\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~368_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~368_combout\,
	combout => \CPU|BR|registrador~369_combout\);

-- Location: FF_X105_Y22_N9
\CPU|BR|registrador~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~206feeder_combout\,
	ena => \CPU|BR|registrador~369_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~206_q\);

-- Location: LCCOMB_X106_Y22_N20
\CPU|BR|registrador~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~374_combout\ = (!\CPU|ROM|content~26_combout\ & (!\CPU|ROM|content~30_combout\ & (\CPU|ROM|content~16_combout\ & \CPU|ROM|content~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|ROM|content~16_combout\,
	datad => \CPU|ROM|content~20_combout\,
	combout => \CPU|BR|registrador~374_combout\);

-- Location: LCCOMB_X106_Y22_N26
\CPU|BR|registrador~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~375_combout\ = (\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~374_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~374_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~375_combout\);

-- Location: FF_X106_Y22_N11
\CPU|BR|registrador~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~238_q\);

-- Location: LCCOMB_X106_Y22_N4
\CPU|BR|registrador~174feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~174feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~174feeder_combout\);

-- Location: LCCOMB_X106_Y22_N14
\CPU|BR|registrador~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~370_combout\ = (!\CPU|ROM|content~26_combout\ & (\CPU|ROM|content~16_combout\ & (!\CPU|ROM|content~30_combout\ & !\CPU|ROM|content~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|ROM|content~30_combout\,
	datad => \CPU|ROM|content~20_combout\,
	combout => \CPU|BR|registrador~370_combout\);

-- Location: LCCOMB_X106_Y22_N8
\CPU|BR|registrador~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~371_combout\ = (!\CPU|UC|wrReg~0_combout\ & (\CPU|BR|registrador~370_combout\ & \CPU|ROM|content~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|wrReg~0_combout\,
	datab => \CPU|BR|registrador~370_combout\,
	datac => \CPU|ROM|content~36_combout\,
	combout => \CPU|BR|registrador~371_combout\);

-- Location: FF_X106_Y22_N5
\CPU|BR|registrador~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~174feeder_combout\,
	ena => \CPU|BR|registrador~371_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~174_q\);

-- Location: LCCOMB_X107_Y22_N26
\CPU|BR|registrador~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~372_combout\ = (!\CPU|ROM|content~30_combout\ & (!\CPU|ROM|content~20_combout\ & (!\CPU|ROM|content~16_combout\ & !\CPU|ROM|content~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|ROM|content~16_combout\,
	datad => \CPU|ROM|content~26_combout\,
	combout => \CPU|BR|registrador~372_combout\);

-- Location: LCCOMB_X106_Y22_N30
\CPU|BR|registrador~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~373_combout\ = (!\CPU|UC|wrReg~0_combout\ & (\CPU|ROM|content~36_combout\ & \CPU|BR|registrador~372_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|wrReg~0_combout\,
	datac => \CPU|ROM|content~36_combout\,
	datad => \CPU|BR|registrador~372_combout\,
	combout => \CPU|BR|registrador~373_combout\);

-- Location: FF_X105_Y22_N15
\CPU|BR|registrador~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~373_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~142_q\);

-- Location: LCCOMB_X105_Y22_N14
\CPU|BR|registrador~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~274_combout\ = (\CPU|ROM|content~20_combout\ & (((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & ((\CPU|ROM|content~16_combout\ & (\CPU|BR|registrador~174_q\)) # (!\CPU|ROM|content~16_combout\ & 
-- ((\CPU|BR|registrador~142_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~174_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~142_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~274_combout\);

-- Location: LCCOMB_X106_Y22_N10
\CPU|BR|registrador~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~275_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~274_combout\ & ((\CPU|BR|registrador~238_q\))) # (!\CPU|BR|registrador~274_combout\ & (\CPU|BR|registrador~206_q\)))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~206_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~238_q\,
	datad => \CPU|BR|registrador~274_combout\,
	combout => \CPU|BR|registrador~275_combout\);

-- Location: LCCOMB_X106_Y22_N28
\CPU|BR|registrador~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~276_combout\ = (\CPU|ROM|content~26_combout\ & (\CPU|ROM|content~30_combout\)) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~273_combout\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~275_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|BR|registrador~273_combout\,
	datad => \CPU|BR|registrador~275_combout\,
	combout => \CPU|BR|registrador~276_combout\);

-- Location: LCCOMB_X110_Y19_N22
\CPU|BR|registrador~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~279_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~276_combout\ & (\CPU|BR|registrador~278_combout\)) # (!\CPU|BR|registrador~276_combout\ & ((\CPU|BR|registrador~271_combout\))))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~278_combout\,
	datab => \CPU|BR|registrador~271_combout\,
	datac => \CPU|ROM|content~26_combout\,
	datad => \CPU|BR|registrador~276_combout\,
	combout => \CPU|BR|registrador~279_combout\);

-- Location: LCCOMB_X109_Y19_N28
\CPU|BR|saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaA[0]~0_combout\ = (!\CPU|BR|Equal0~2_combout\ & ((\CPU|ROM|content~36_combout\ & ((\CPU|BR|registrador~279_combout\))) # (!\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|Equal0~2_combout\,
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~289_combout\,
	datad => \CPU|BR|registrador~279_combout\,
	combout => \CPU|BR|saidaA[0]~0_combout\);

-- Location: LCCOMB_X109_Y19_N18
\CPU|ULA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~0_combout\ = (\CPU|ROM|content~73_combout\ & (\CPU|BR|saidaA[0]~0_combout\ $ (VCC))) # (!\CPU|ROM|content~73_combout\ & (\CPU|BR|saidaA[0]~0_combout\ & VCC))
-- \CPU|ULA|Add0~1\ = CARRY((\CPU|ROM|content~73_combout\ & \CPU|BR|saidaA[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~73_combout\,
	datab => \CPU|BR|saidaA[0]~0_combout\,
	datad => VCC,
	combout => \CPU|ULA|Add0~0_combout\,
	cout => \CPU|ULA|Add0~1\);

-- Location: LCCOMB_X108_Y23_N10
\CPU|MUXBancoReg|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUXBancoReg|Mux7~11_combout\ = (!\CPU|PC|toout\(7) & ((\CPU|ROM|content~43_combout\) # ((!\CPU|PC|toout\(6) & \CPU|ROM|content~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~43_combout\,
	datab => \CPU|PC|toout\(6),
	datac => \CPU|ROM|content~40_combout\,
	datad => \CPU|PC|toout\(7),
	combout => \CPU|MUXBancoReg|Mux7~11_combout\);

-- Location: LCCOMB_X108_Y21_N24
\CPU|MUXBancoReg|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUXBancoReg|Mux7~10_combout\ = (\CPU|MUXBancoReg|Mux7~11_combout\ & (((\CPU|MUXBancoReg|Mux7~8_combout\ & \CPU|ULA|Add0~0_combout\)))) # (!\CPU|MUXBancoReg|Mux7~11_combout\ & (\CPU|MUXBancoReg|Mux7~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXBancoReg|Mux7~9_combout\,
	datab => \CPU|MUXBancoReg|Mux7~8_combout\,
	datac => \CPU|ULA|Add0~0_combout\,
	datad => \CPU|MUXBancoReg|Mux7~11_combout\,
	combout => \CPU|MUXBancoReg|Mux7~10_combout\);

-- Location: LCCOMB_X108_Y21_N10
\CPU|BR|registrador~134feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~134feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~134feeder_combout\);

-- Location: LCCOMB_X108_Y21_N14
\CPU|BR|registrador~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~399_combout\ = (!\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~382_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~382_combout\,
	combout => \CPU|BR|registrador~399_combout\);

-- Location: FF_X108_Y21_N11
\CPU|BR|registrador~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~134feeder_combout\,
	ena => \CPU|BR|registrador~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~134_q\);

-- Location: LCCOMB_X112_Y22_N8
\CPU|BR|registrador~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~396_combout\ = (\CPU|BR|registrador~366_combout\ & (!\CPU|ROM|content~36_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~366_combout\,
	datac => \CPU|ROM|content~36_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~396_combout\);

-- Location: FF_X112_Y22_N5
\CPU|BR|registrador~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~396_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~126_q\);

-- Location: LCCOMB_X113_Y22_N28
\CPU|BR|registrador~118feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~118feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~118feeder_combout\);

-- Location: LCCOMB_X110_Y19_N4
\CPU|BR|registrador~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~397_combout\ = (\CPU|BR|registrador~358_combout\ & (!\CPU|ROM|content~36_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~358_combout\,
	datab => \CPU|ROM|content~36_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~397_combout\);

-- Location: FF_X113_Y22_N29
\CPU|BR|registrador~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~118feeder_combout\,
	ena => \CPU|BR|registrador~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~118_q\);

-- Location: LCCOMB_X112_Y22_N22
\CPU|BR|registrador~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~398_combout\ = (!\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~374_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~374_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~398_combout\);

-- Location: FF_X112_Y22_N19
\CPU|BR|registrador~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~110_q\);

-- Location: LCCOMB_X112_Y22_N18
\CPU|BR|registrador~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~287_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~118_q\) # ((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & (((\CPU|BR|registrador~110_q\ & !\CPU|ROM|content~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~118_q\,
	datac => \CPU|BR|registrador~110_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~287_combout\);

-- Location: LCCOMB_X112_Y22_N4
\CPU|BR|registrador~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~288_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~287_combout\ & (\CPU|BR|registrador~134_q\)) # (!\CPU|BR|registrador~287_combout\ & ((\CPU|BR|registrador~126_q\))))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~134_q\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|BR|registrador~126_q\,
	datad => \CPU|BR|registrador~287_combout\,
	combout => \CPU|BR|registrador~288_combout\);

-- Location: LCCOMB_X107_Y22_N24
\CPU|BR|registrador~62feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~62feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~62feeder_combout\);

-- Location: LCCOMB_X107_Y22_N20
\CPU|BR|registrador~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~384_combout\ = (!\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~362_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datab => \CPU|BR|registrador~362_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~384_combout\);

-- Location: FF_X107_Y22_N25
\CPU|BR|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~62feeder_combout\,
	ena => \CPU|BR|registrador~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~62_q\);

-- Location: LCCOMB_X108_Y22_N8
\CPU|BR|registrador~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~387_combout\ = (!\CPU|UC|wrReg~0_combout\ & (!\CPU|ROM|content~36_combout\ & \CPU|BR|registrador~376_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|wrReg~0_combout\,
	datac => \CPU|ROM|content~36_combout\,
	datad => \CPU|BR|registrador~376_combout\,
	combout => \CPU|BR|registrador~387_combout\);

-- Location: FF_X108_Y22_N21
\CPU|BR|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~70_q\);

-- Location: LCCOMB_X108_Y22_N28
\CPU|BR|registrador~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~385_combout\ = (\CPU|BR|registrador~352_combout\ & (!\CPU|ROM|content~36_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~352_combout\,
	datab => \CPU|ROM|content~36_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~385_combout\);

-- Location: FF_X108_Y22_N29
\CPU|BR|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~54_q\);

-- Location: LCCOMB_X107_Y22_N30
\CPU|BR|registrador~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~386_combout\ = (!\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~370_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datab => \CPU|BR|registrador~370_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~386_combout\);

-- Location: FF_X107_Y22_N31
\CPU|BR|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~46_q\);

-- Location: LCCOMB_X108_Y22_N10
\CPU|BR|registrador~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~280_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~54_q\) # ((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & (((\CPU|BR|registrador~46_q\ & !\CPU|ROM|content~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~54_q\,
	datab => \CPU|BR|registrador~46_q\,
	datac => \CPU|ROM|content~26_combout\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~280_combout\);

-- Location: LCCOMB_X108_Y22_N20
\CPU|BR|registrador~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~281_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~280_combout\ & ((\CPU|BR|registrador~70_q\))) # (!\CPU|BR|registrador~280_combout\ & (\CPU|BR|registrador~62_q\)))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|BR|registrador~62_q\,
	datac => \CPU|BR|registrador~70_q\,
	datad => \CPU|BR|registrador~280_combout\,
	combout => \CPU|BR|registrador~281_combout\);

-- Location: LCCOMB_X109_Y20_N4
\CPU|BR|registrador~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~388_combout\ = (\CPU|BR|registrador~354_combout\ & (!\CPU|UC|wrReg~0_combout\ & !\CPU|ROM|content~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~354_combout\,
	datab => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|ROM|content~36_combout\,
	combout => \CPU|BR|registrador~388_combout\);

-- Location: FF_X109_Y20_N5
\CPU|BR|registrador~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~86_q\);

-- Location: LCCOMB_X109_Y20_N22
\CPU|BR|registrador~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~391_combout\ = (!\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~378_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datab => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~378_combout\,
	combout => \CPU|BR|registrador~391_combout\);

-- Location: FF_X109_Y20_N31
\CPU|BR|registrador~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~102_q\);

-- Location: LCCOMB_X110_Y20_N12
\CPU|BR|registrador~94feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~94feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~94feeder_combout\);

-- Location: LCCOMB_X109_Y21_N16
\CPU|BR|registrador~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~389_combout\ = (!\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~360_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~360_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~389_combout\);

-- Location: FF_X110_Y20_N13
\CPU|BR|registrador~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~94feeder_combout\,
	ena => \CPU|BR|registrador~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~94_q\);

-- Location: LCCOMB_X109_Y20_N24
\CPU|BR|registrador~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~390_combout\ = (!\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~368_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~368_combout\,
	combout => \CPU|BR|registrador~390_combout\);

-- Location: FF_X110_Y20_N19
\CPU|BR|registrador~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~78_q\);

-- Location: LCCOMB_X110_Y20_N18
\CPU|BR|registrador~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~282_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~94_q\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~78_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~94_q\,
	datab => \CPU|ROM|content~26_combout\,
	datac => \CPU|BR|registrador~78_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~282_combout\);

-- Location: LCCOMB_X109_Y20_N30
\CPU|BR|registrador~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~283_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~282_combout\ & ((\CPU|BR|registrador~102_q\))) # (!\CPU|BR|registrador~282_combout\ & (\CPU|BR|registrador~86_q\)))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~86_q\,
	datac => \CPU|BR|registrador~102_q\,
	datad => \CPU|BR|registrador~282_combout\,
	combout => \CPU|BR|registrador~283_combout\);

-- Location: LCCOMB_X111_Y21_N0
\CPU|BR|registrador~38feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~38feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~38feeder_combout\);

-- Location: LCCOMB_X111_Y21_N20
\CPU|BR|registrador~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~393_combout\ = (!\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~380_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~380_combout\,
	combout => \CPU|BR|registrador~393_combout\);

-- Location: FF_X111_Y21_N1
\CPU|BR|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~38feeder_combout\,
	ena => \CPU|BR|registrador~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~38_q\);

-- Location: LCCOMB_X111_Y19_N14
\CPU|BR|registrador~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~392_combout\ = (\CPU|BR|registrador~356_combout\ & (!\CPU|UC|wrReg~0_combout\ & !\CPU|ROM|content~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|BR|registrador~356_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|ROM|content~36_combout\,
	combout => \CPU|BR|registrador~392_combout\);

-- Location: FF_X111_Y22_N25
\CPU|BR|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~22_q\);

-- Location: LCCOMB_X111_Y21_N6
\CPU|BR|registrador~30feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~30feeder_combout\ = \CPU|MUXBancoReg|Mux7~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux7~10_combout\,
	combout => \CPU|BR|registrador~30feeder_combout\);

-- Location: LCCOMB_X111_Y21_N14
\CPU|BR|registrador~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~394_combout\ = (!\CPU|ROM|content~36_combout\ & (!\CPU|UC|wrReg~0_combout\ & \CPU|BR|registrador~364_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|UC|wrReg~0_combout\,
	datad => \CPU|BR|registrador~364_combout\,
	combout => \CPU|BR|registrador~394_combout\);

-- Location: FF_X111_Y21_N7
\CPU|BR|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~30feeder_combout\,
	ena => \CPU|BR|registrador~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~30_q\);

-- Location: LCCOMB_X107_Y22_N16
\CPU|BR|registrador~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~395_combout\ = (!\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~372_combout\ & !\CPU|UC|wrReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~372_combout\,
	datad => \CPU|UC|wrReg~0_combout\,
	combout => \CPU|BR|registrador~395_combout\);

-- Location: FF_X111_Y22_N7
\CPU|BR|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux7~10_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~395_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~14_q\);

-- Location: LCCOMB_X111_Y22_N6
\CPU|BR|registrador~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~284_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~30_q\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~30_q\,
	datac => \CPU|BR|registrador~14_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~284_combout\);

-- Location: LCCOMB_X111_Y22_N24
\CPU|BR|registrador~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~285_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~284_combout\ & (\CPU|BR|registrador~38_q\)) # (!\CPU|BR|registrador~284_combout\ & ((\CPU|BR|registrador~22_q\))))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~38_q\,
	datac => \CPU|BR|registrador~22_q\,
	datad => \CPU|BR|registrador~284_combout\,
	combout => \CPU|BR|registrador~285_combout\);

-- Location: LCCOMB_X109_Y19_N16
\CPU|BR|registrador~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~286_combout\ = (\CPU|ROM|content~16_combout\ & (\CPU|ROM|content~20_combout\)) # (!\CPU|ROM|content~16_combout\ & ((\CPU|ROM|content~20_combout\ & (\CPU|BR|registrador~283_combout\)) # (!\CPU|ROM|content~20_combout\ & 
-- ((\CPU|BR|registrador~285_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~283_combout\,
	datad => \CPU|BR|registrador~285_combout\,
	combout => \CPU|BR|registrador~286_combout\);

-- Location: LCCOMB_X109_Y19_N30
\CPU|BR|registrador~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~289_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~286_combout\ & (\CPU|BR|registrador~288_combout\)) # (!\CPU|BR|registrador~286_combout\ & ((\CPU|BR|registrador~281_combout\))))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|BR|registrador~288_combout\,
	datac => \CPU|BR|registrador~281_combout\,
	datad => \CPU|BR|registrador~286_combout\,
	combout => \CPU|BR|registrador~289_combout\);

-- Location: LCCOMB_X108_Y19_N22
\CPU|BR|registrador~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~290_combout\ = (\CPU|ROM|content~36_combout\ & ((\CPU|BR|registrador~279_combout\))) # (!\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~289_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~289_combout\,
	datab => \CPU|ROM|content~36_combout\,
	datad => \CPU|BR|registrador~279_combout\,
	combout => \CPU|BR|registrador~290_combout\);

-- Location: LCCOMB_X108_Y21_N20
\CPU|MUXBancoReg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUXBancoReg|Mux4~0_combout\ = (\CPU|ROM|content~15_combout\ & (!\CPU|ROM|content~40_combout\ & (!\CPU|ROM|content~44_combout\ & \CPU|ROM|content~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~15_combout\,
	datab => \CPU|ROM|content~40_combout\,
	datac => \CPU|ROM|content~44_combout\,
	datad => \CPU|ROM|content~50_combout\,
	combout => \CPU|MUXBancoReg|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y19_N20
\CPU|ULA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~2_combout\ = (\CPU|ROM|content~72_combout\ & ((\CPU|BR|saidaA[1]~2_combout\ & (\CPU|ULA|Add0~1\ & VCC)) # (!\CPU|BR|saidaA[1]~2_combout\ & (!\CPU|ULA|Add0~1\)))) # (!\CPU|ROM|content~72_combout\ & ((\CPU|BR|saidaA[1]~2_combout\ & 
-- (!\CPU|ULA|Add0~1\)) # (!\CPU|BR|saidaA[1]~2_combout\ & ((\CPU|ULA|Add0~1\) # (GND)))))
-- \CPU|ULA|Add0~3\ = CARRY((\CPU|ROM|content~72_combout\ & (!\CPU|BR|saidaA[1]~2_combout\ & !\CPU|ULA|Add0~1\)) # (!\CPU|ROM|content~72_combout\ & ((!\CPU|ULA|Add0~1\) # (!\CPU|BR|saidaA[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~72_combout\,
	datab => \CPU|BR|saidaA[1]~2_combout\,
	datad => VCC,
	cin => \CPU|ULA|Add0~1\,
	combout => \CPU|ULA|Add0~2_combout\,
	cout => \CPU|ULA|Add0~3\);

-- Location: LCCOMB_X109_Y19_N6
\CPU|MUXBancoReg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUXBancoReg|Mux6~0_combout\ = (\CPU|MUXBancoReg|Mux4~0_combout\ & ((\CPU|ROM|content~72_combout\) # ((\CPU|MUXBancoReg|Mux7~8_combout\ & \CPU|ULA|Add0~2_combout\)))) # (!\CPU|MUXBancoReg|Mux4~0_combout\ & (\CPU|MUXBancoReg|Mux7~8_combout\ & 
-- ((\CPU|ULA|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXBancoReg|Mux4~0_combout\,
	datab => \CPU|MUXBancoReg|Mux7~8_combout\,
	datac => \CPU|ROM|content~72_combout\,
	datad => \CPU|ULA|Add0~2_combout\,
	combout => \CPU|MUXBancoReg|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y20_N10
\CPU|BR|registrador~103feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~103feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~103feeder_combout\);

-- Location: FF_X109_Y20_N11
\CPU|BR|registrador~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~103feeder_combout\,
	ena => \CPU|BR|registrador~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~103_q\);

-- Location: FF_X110_Y20_N21
\CPU|BR|registrador~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~95_q\);

-- Location: LCCOMB_X109_Y20_N12
\CPU|BR|registrador~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~87feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~87feeder_combout\);

-- Location: FF_X109_Y20_N13
\CPU|BR|registrador~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~87feeder_combout\,
	ena => \CPU|BR|registrador~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~87_q\);

-- Location: FF_X110_Y20_N3
\CPU|BR|registrador~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~79_q\);

-- Location: LCCOMB_X110_Y20_N2
\CPU|BR|registrador~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~322_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~87_q\) # ((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & (((\CPU|BR|registrador~79_q\ & !\CPU|ROM|content~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~87_q\,
	datab => \CPU|ROM|content~26_combout\,
	datac => \CPU|BR|registrador~79_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~322_combout\);

-- Location: LCCOMB_X110_Y20_N20
\CPU|BR|registrador~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~323_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~322_combout\ & (\CPU|BR|registrador~103_q\)) # (!\CPU|BR|registrador~322_combout\ & ((\CPU|BR|registrador~95_q\))))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|BR|registrador~103_q\,
	datac => \CPU|BR|registrador~95_q\,
	datad => \CPU|BR|registrador~322_combout\,
	combout => \CPU|BR|registrador~323_combout\);

-- Location: FF_X109_Y19_N7
\CPU|BR|registrador~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|MUXBancoReg|Mux6~0_combout\,
	ena => \CPU|BR|registrador~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~135_q\);

-- Location: LCCOMB_X113_Y19_N20
\CPU|BR|registrador~119feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~119feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~119feeder_combout\);

-- Location: FF_X113_Y19_N21
\CPU|BR|registrador~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~119feeder_combout\,
	ena => \CPU|BR|registrador~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~119_q\);

-- Location: LCCOMB_X112_Y22_N0
\CPU|BR|registrador~127feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~127feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~127feeder_combout\);

-- Location: FF_X112_Y22_N1
\CPU|BR|registrador~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~127feeder_combout\,
	ena => \CPU|BR|registrador~396_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~127_q\);

-- Location: FF_X112_Y22_N7
\CPU|BR|registrador~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~111_q\);

-- Location: LCCOMB_X112_Y22_N6
\CPU|BR|registrador~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~329_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~127_q\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~111_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~127_q\,
	datac => \CPU|BR|registrador~111_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~329_combout\);

-- Location: LCCOMB_X112_Y19_N8
\CPU|BR|registrador~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~330_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~329_combout\ & (\CPU|BR|registrador~135_q\)) # (!\CPU|BR|registrador~329_combout\ & ((\CPU|BR|registrador~119_q\))))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~135_q\,
	datac => \CPU|BR|registrador~119_q\,
	datad => \CPU|BR|registrador~329_combout\,
	combout => \CPU|BR|registrador~330_combout\);

-- Location: LCCOMB_X112_Y19_N10
\CPU|BR|registrador~39feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~39feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~39feeder_combout\);

-- Location: FF_X112_Y19_N11
\CPU|BR|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~39feeder_combout\,
	ena => \CPU|BR|registrador~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~39_q\);

-- Location: LCCOMB_X112_Y19_N4
\CPU|BR|registrador~31feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~31feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~31feeder_combout\);

-- Location: FF_X112_Y19_N5
\CPU|BR|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~31feeder_combout\,
	ena => \CPU|BR|registrador~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~31_q\);

-- Location: FF_X111_Y22_N5
\CPU|BR|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~23_q\);

-- Location: FF_X111_Y22_N29
\CPU|BR|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~395_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~15_q\);

-- Location: LCCOMB_X111_Y22_N28
\CPU|BR|registrador~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~326_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~23_q\) # ((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & (((\CPU|BR|registrador~15_q\ & !\CPU|ROM|content~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~23_q\,
	datac => \CPU|BR|registrador~15_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~326_combout\);

-- Location: LCCOMB_X110_Y19_N30
\CPU|BR|registrador~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~327_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~326_combout\ & (\CPU|BR|registrador~39_q\)) # (!\CPU|BR|registrador~326_combout\ & ((\CPU|BR|registrador~31_q\))))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~39_q\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|BR|registrador~31_q\,
	datad => \CPU|BR|registrador~326_combout\,
	combout => \CPU|BR|registrador~327_combout\);

-- Location: LCCOMB_X108_Y22_N24
\CPU|BR|registrador~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~55feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~55feeder_combout\);

-- Location: FF_X108_Y22_N25
\CPU|BR|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~55feeder_combout\,
	ena => \CPU|BR|registrador~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~55_q\);

-- Location: FF_X108_Y22_N31
\CPU|BR|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~71_q\);

-- Location: LCCOMB_X107_Y22_N28
\CPU|BR|registrador~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~63feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~63feeder_combout\);

-- Location: FF_X107_Y22_N29
\CPU|BR|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~63feeder_combout\,
	ena => \CPU|BR|registrador~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~63_q\);

-- Location: FF_X107_Y22_N11
\CPU|BR|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~47_q\);

-- Location: LCCOMB_X107_Y22_N10
\CPU|BR|registrador~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~324_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~63_q\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~63_q\,
	datac => \CPU|BR|registrador~47_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~324_combout\);

-- Location: LCCOMB_X108_Y22_N30
\CPU|BR|registrador~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~325_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~324_combout\ & ((\CPU|BR|registrador~71_q\))) # (!\CPU|BR|registrador~324_combout\ & (\CPU|BR|registrador~55_q\)))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~55_q\,
	datac => \CPU|BR|registrador~71_q\,
	datad => \CPU|BR|registrador~324_combout\,
	combout => \CPU|BR|registrador~325_combout\);

-- Location: LCCOMB_X109_Y19_N0
\CPU|BR|registrador~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~328_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|ROM|content~20_combout\) # ((\CPU|BR|registrador~325_combout\)))) # (!\CPU|ROM|content~16_combout\ & (!\CPU|ROM|content~20_combout\ & (\CPU|BR|registrador~327_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~327_combout\,
	datad => \CPU|BR|registrador~325_combout\,
	combout => \CPU|BR|registrador~328_combout\);

-- Location: LCCOMB_X109_Y19_N8
\CPU|BR|registrador~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~331_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~328_combout\ & ((\CPU|BR|registrador~330_combout\))) # (!\CPU|BR|registrador~328_combout\ & (\CPU|BR|registrador~323_combout\)))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|BR|registrador~323_combout\,
	datac => \CPU|BR|registrador~330_combout\,
	datad => \CPU|BR|registrador~328_combout\,
	combout => \CPU|BR|registrador~331_combout\);

-- Location: LCCOMB_X109_Y21_N28
\CPU|BR|registrador~231feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~231feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~231feeder_combout\);

-- Location: FF_X109_Y21_N29
\CPU|BR|registrador~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~231feeder_combout\,
	ena => \CPU|BR|registrador~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~231_q\);

-- Location: LCCOMB_X109_Y21_N26
\CPU|BR|registrador~263feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~263feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~263feeder_combout\);

-- Location: FF_X109_Y21_N27
\CPU|BR|registrador~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~263feeder_combout\,
	ena => \CPU|BR|registrador~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~263_q\);

-- Location: LCCOMB_X110_Y21_N28
\CPU|BR|registrador~199feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~199feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~199feeder_combout\);

-- Location: FF_X110_Y21_N29
\CPU|BR|registrador~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~199feeder_combout\,
	ena => \CPU|BR|registrador~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~199_q\);

-- Location: FF_X110_Y21_N11
\CPU|BR|registrador~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~167_q\);

-- Location: LCCOMB_X110_Y21_N10
\CPU|BR|registrador~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~319_combout\ = (\CPU|ROM|content~20_combout\ & (((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & ((\CPU|ROM|content~16_combout\ & (\CPU|BR|registrador~199_q\)) # (!\CPU|ROM|content~16_combout\ & 
-- ((\CPU|BR|registrador~167_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|BR|registrador~199_q\,
	datac => \CPU|BR|registrador~167_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~319_combout\);

-- Location: LCCOMB_X110_Y21_N20
\CPU|BR|registrador~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~320_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~319_combout\ & ((\CPU|BR|registrador~263_q\))) # (!\CPU|BR|registrador~319_combout\ & (\CPU|BR|registrador~231_q\)))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|BR|registrador~231_q\,
	datac => \CPU|BR|registrador~263_q\,
	datad => \CPU|BR|registrador~319_combout\,
	combout => \CPU|BR|registrador~320_combout\);

-- Location: FF_X108_Y19_N23
\CPU|BR|registrador~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~367_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~255_q\);

-- Location: FF_X108_Y19_N11
\CPU|BR|registrador~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~363_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~191_q\);

-- Location: LCCOMB_X108_Y21_N0
\CPU|BR|registrador~223feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~223feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~223feeder_combout\);

-- Location: FF_X108_Y21_N1
\CPU|BR|registrador~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~223feeder_combout\,
	ena => \CPU|BR|registrador~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~223_q\);

-- Location: FF_X109_Y22_N21
\CPU|BR|registrador~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~159_q\);

-- Location: LCCOMB_X109_Y22_N20
\CPU|BR|registrador~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~312_combout\ = (\CPU|ROM|content~16_combout\ & (((\CPU|ROM|content~20_combout\)))) # (!\CPU|ROM|content~16_combout\ & ((\CPU|ROM|content~20_combout\ & (\CPU|BR|registrador~223_q\)) # (!\CPU|ROM|content~20_combout\ & 
-- ((\CPU|BR|registrador~159_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|BR|registrador~223_q\,
	datac => \CPU|BR|registrador~159_q\,
	datad => \CPU|ROM|content~20_combout\,
	combout => \CPU|BR|registrador~312_combout\);

-- Location: LCCOMB_X108_Y19_N10
\CPU|BR|registrador~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~313_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~312_combout\ & (\CPU|BR|registrador~255_q\)) # (!\CPU|BR|registrador~312_combout\ & ((\CPU|BR|registrador~191_q\))))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|BR|registrador~255_q\,
	datac => \CPU|BR|registrador~191_q\,
	datad => \CPU|BR|registrador~312_combout\,
	combout => \CPU|BR|registrador~313_combout\);

-- Location: FF_X110_Y19_N13
\CPU|BR|registrador~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~355_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~215_q\);

-- Location: FF_X110_Y19_N9
\CPU|BR|registrador~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~359_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~247_q\);

-- Location: LCCOMB_X111_Y19_N6
\CPU|BR|registrador~151feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~151feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~151feeder_combout\);

-- Location: FF_X111_Y19_N7
\CPU|BR|registrador~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~151feeder_combout\,
	ena => \CPU|BR|registrador~357_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~151_q\);

-- Location: LCCOMB_X111_Y19_N0
\CPU|BR|registrador~183feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~183feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~183feeder_combout\);

-- Location: FF_X111_Y19_N1
\CPU|BR|registrador~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~183feeder_combout\,
	ena => \CPU|BR|registrador~353_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~183_q\);

-- Location: LCCOMB_X110_Y19_N6
\CPU|BR|registrador~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~314_combout\ = (\CPU|ROM|content~16_combout\ & (((\CPU|BR|registrador~183_q\) # (\CPU|ROM|content~20_combout\)))) # (!\CPU|ROM|content~16_combout\ & (\CPU|BR|registrador~151_q\ & ((!\CPU|ROM|content~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~151_q\,
	datab => \CPU|BR|registrador~183_q\,
	datac => \CPU|ROM|content~16_combout\,
	datad => \CPU|ROM|content~20_combout\,
	combout => \CPU|BR|registrador~314_combout\);

-- Location: LCCOMB_X110_Y19_N8
\CPU|BR|registrador~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~315_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~314_combout\ & ((\CPU|BR|registrador~247_q\))) # (!\CPU|BR|registrador~314_combout\ & (\CPU|BR|registrador~215_q\)))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~215_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~247_q\,
	datad => \CPU|BR|registrador~314_combout\,
	combout => \CPU|BR|registrador~315_combout\);

-- Location: LCCOMB_X106_Y22_N22
\CPU|BR|registrador~175feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~175feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~175feeder_combout\);

-- Location: FF_X106_Y22_N23
\CPU|BR|registrador~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~175feeder_combout\,
	ena => \CPU|BR|registrador~371_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~175_q\);

-- Location: FF_X106_Y22_N17
\CPU|BR|registrador~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~239_q\);

-- Location: LCCOMB_X105_Y22_N28
\CPU|BR|registrador~207feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~207feeder_combout\ = \CPU|MUXBancoReg|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux6~0_combout\,
	combout => \CPU|BR|registrador~207feeder_combout\);

-- Location: FF_X105_Y22_N29
\CPU|BR|registrador~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~207feeder_combout\,
	ena => \CPU|BR|registrador~369_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~207_q\);

-- Location: FF_X105_Y22_N11
\CPU|BR|registrador~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux6~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~373_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~143_q\);

-- Location: LCCOMB_X105_Y22_N10
\CPU|BR|registrador~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~316_combout\ = (\CPU|ROM|content~16_combout\ & (((\CPU|ROM|content~20_combout\)))) # (!\CPU|ROM|content~16_combout\ & ((\CPU|ROM|content~20_combout\ & (\CPU|BR|registrador~207_q\)) # (!\CPU|ROM|content~20_combout\ & 
-- ((\CPU|BR|registrador~143_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~207_q\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|BR|registrador~143_q\,
	datad => \CPU|ROM|content~20_combout\,
	combout => \CPU|BR|registrador~316_combout\);

-- Location: LCCOMB_X106_Y22_N16
\CPU|BR|registrador~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~317_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~316_combout\ & ((\CPU|BR|registrador~239_q\))) # (!\CPU|BR|registrador~316_combout\ & (\CPU|BR|registrador~175_q\)))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~175_q\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|BR|registrador~239_q\,
	datad => \CPU|BR|registrador~316_combout\,
	combout => \CPU|BR|registrador~317_combout\);

-- Location: LCCOMB_X110_Y19_N18
\CPU|BR|registrador~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~318_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\) # ((\CPU|BR|registrador~315_combout\)))) # (!\CPU|ROM|content~26_combout\ & (!\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|BR|registrador~315_combout\,
	datad => \CPU|BR|registrador~317_combout\,
	combout => \CPU|BR|registrador~318_combout\);

-- Location: LCCOMB_X110_Y19_N24
\CPU|BR|registrador~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~321_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~318_combout\ & (\CPU|BR|registrador~320_combout\)) # (!\CPU|BR|registrador~318_combout\ & ((\CPU|BR|registrador~313_combout\))))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|BR|registrador~320_combout\,
	datac => \CPU|BR|registrador~313_combout\,
	datad => \CPU|BR|registrador~318_combout\,
	combout => \CPU|BR|registrador~321_combout\);

-- Location: LCCOMB_X109_Y19_N14
\CPU|BR|saidaA[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaA[1]~2_combout\ = (!\CPU|BR|Equal0~2_combout\ & ((\CPU|ROM|content~36_combout\ & ((\CPU|BR|registrador~321_combout\))) # (!\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|Equal0~2_combout\,
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~331_combout\,
	datad => \CPU|BR|registrador~321_combout\,
	combout => \CPU|BR|saidaA[1]~2_combout\);

-- Location: LCCOMB_X109_Y19_N22
\CPU|ULA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~4_combout\ = ((\CPU|BR|saidaA[2]~3_combout\ $ (\CPU|ROM|content~68_combout\ $ (!\CPU|ULA|Add0~3\)))) # (GND)
-- \CPU|ULA|Add0~5\ = CARRY((\CPU|BR|saidaA[2]~3_combout\ & ((\CPU|ROM|content~68_combout\) # (!\CPU|ULA|Add0~3\))) # (!\CPU|BR|saidaA[2]~3_combout\ & (\CPU|ROM|content~68_combout\ & !\CPU|ULA|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[2]~3_combout\,
	datab => \CPU|ROM|content~68_combout\,
	datad => VCC,
	cin => \CPU|ULA|Add0~3\,
	combout => \CPU|ULA|Add0~4_combout\,
	cout => \CPU|ULA|Add0~5\);

-- Location: LCCOMB_X109_Y19_N10
\CPU|MUXBancoReg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUXBancoReg|Mux5~0_combout\ = (\CPU|MUXBancoReg|Mux4~0_combout\ & ((\CPU|ROM|content~68_combout\) # ((\CPU|ULA|Add0~4_combout\ & \CPU|MUXBancoReg|Mux7~8_combout\)))) # (!\CPU|MUXBancoReg|Mux4~0_combout\ & (((\CPU|ULA|Add0~4_combout\ & 
-- \CPU|MUXBancoReg|Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXBancoReg|Mux4~0_combout\,
	datab => \CPU|ROM|content~68_combout\,
	datac => \CPU|ULA|Add0~4_combout\,
	datad => \CPU|MUXBancoReg|Mux7~8_combout\,
	combout => \CPU|MUXBancoReg|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y22_N12
\CPU|BR|registrador~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~64feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~64feeder_combout\);

-- Location: FF_X107_Y22_N13
\CPU|BR|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~64feeder_combout\,
	ena => \CPU|BR|registrador~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~64_q\);

-- Location: FF_X108_Y22_N7
\CPU|BR|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~72_q\);

-- Location: LCCOMB_X107_Y22_N18
\CPU|BR|registrador~48feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~48feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~48feeder_combout\);

-- Location: FF_X107_Y22_N19
\CPU|BR|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~48feeder_combout\,
	ena => \CPU|BR|registrador~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~48_q\);

-- Location: FF_X108_Y22_N17
\CPU|BR|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~56_q\);

-- Location: LCCOMB_X108_Y22_N16
\CPU|BR|registrador~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~342_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|BR|registrador~56_q\) # (\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & (\CPU|BR|registrador~48_q\ & ((!\CPU|ROM|content~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~48_q\,
	datac => \CPU|BR|registrador~56_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~342_combout\);

-- Location: LCCOMB_X108_Y22_N6
\CPU|BR|registrador~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~343_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~342_combout\ & ((\CPU|BR|registrador~72_q\))) # (!\CPU|BR|registrador~342_combout\ & (\CPU|BR|registrador~64_q\)))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~64_q\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|BR|registrador~72_q\,
	datad => \CPU|BR|registrador~342_combout\,
	combout => \CPU|BR|registrador~343_combout\);

-- Location: FF_X109_Y19_N11
\CPU|BR|registrador~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|MUXBancoReg|Mux5~0_combout\,
	ena => \CPU|BR|registrador~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~136_q\);

-- Location: FF_X112_Y22_N13
\CPU|BR|registrador~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~396_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~128_q\);

-- Location: LCCOMB_X113_Y19_N12
\CPU|BR|registrador~120feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~120feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~120feeder_combout\);

-- Location: FF_X113_Y19_N13
\CPU|BR|registrador~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~120feeder_combout\,
	ena => \CPU|BR|registrador~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~120_q\);

-- Location: FF_X112_Y22_N11
\CPU|BR|registrador~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~112_q\);

-- Location: LCCOMB_X112_Y22_N10
\CPU|BR|registrador~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~349_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~120_q\) # ((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & (((\CPU|BR|registrador~112_q\ & !\CPU|ROM|content~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~120_q\,
	datac => \CPU|BR|registrador~112_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~349_combout\);

-- Location: LCCOMB_X112_Y22_N12
\CPU|BR|registrador~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~350_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~349_combout\ & (\CPU|BR|registrador~136_q\)) # (!\CPU|BR|registrador~349_combout\ & ((\CPU|BR|registrador~128_q\))))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~136_q\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|BR|registrador~128_q\,
	datad => \CPU|BR|registrador~349_combout\,
	combout => \CPU|BR|registrador~350_combout\);

-- Location: LCCOMB_X113_Y19_N22
\CPU|BR|registrador~24feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~24feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~24feeder_combout\);

-- Location: FF_X113_Y19_N23
\CPU|BR|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~24feeder_combout\,
	ena => \CPU|BR|registrador~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~24_q\);

-- Location: FF_X112_Y19_N21
\CPU|BR|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~40_q\);

-- Location: LCCOMB_X112_Y19_N6
\CPU|BR|registrador~32feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~32feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~32feeder_combout\);

-- Location: FF_X112_Y19_N7
\CPU|BR|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~32feeder_combout\,
	ena => \CPU|BR|registrador~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~32_q\);

-- Location: FF_X111_Y22_N15
\CPU|BR|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~395_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~16_q\);

-- Location: LCCOMB_X111_Y22_N14
\CPU|BR|registrador~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~346_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~32_q\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~32_q\,
	datac => \CPU|BR|registrador~16_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~346_combout\);

-- Location: LCCOMB_X112_Y19_N20
\CPU|BR|registrador~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~347_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~346_combout\ & ((\CPU|BR|registrador~40_q\))) # (!\CPU|BR|registrador~346_combout\ & (\CPU|BR|registrador~24_q\)))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~24_q\,
	datac => \CPU|BR|registrador~40_q\,
	datad => \CPU|BR|registrador~346_combout\,
	combout => \CPU|BR|registrador~347_combout\);

-- Location: LCCOMB_X109_Y20_N18
\CPU|BR|registrador~104feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~104feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~104feeder_combout\);

-- Location: FF_X109_Y20_N19
\CPU|BR|registrador~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~104feeder_combout\,
	ena => \CPU|BR|registrador~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~104_q\);

-- Location: FF_X109_Y20_N17
\CPU|BR|registrador~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~88_q\);

-- Location: LCCOMB_X110_Y20_N24
\CPU|BR|registrador~96feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~96feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~96feeder_combout\);

-- Location: FF_X110_Y20_N25
\CPU|BR|registrador~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~96feeder_combout\,
	ena => \CPU|BR|registrador~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~96_q\);

-- Location: FF_X110_Y20_N7
\CPU|BR|registrador~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~80_q\);

-- Location: LCCOMB_X110_Y20_N6
\CPU|BR|registrador~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~344_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~96_q\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~96_q\,
	datab => \CPU|ROM|content~26_combout\,
	datac => \CPU|BR|registrador~80_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~344_combout\);

-- Location: LCCOMB_X109_Y20_N16
\CPU|BR|registrador~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~345_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~344_combout\ & (\CPU|BR|registrador~104_q\)) # (!\CPU|BR|registrador~344_combout\ & ((\CPU|BR|registrador~88_q\))))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~104_q\,
	datac => \CPU|BR|registrador~88_q\,
	datad => \CPU|BR|registrador~344_combout\,
	combout => \CPU|BR|registrador~345_combout\);

-- Location: LCCOMB_X109_Y19_N12
\CPU|BR|registrador~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~348_combout\ = (\CPU|ROM|content~16_combout\ & (\CPU|ROM|content~20_combout\)) # (!\CPU|ROM|content~16_combout\ & ((\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~345_combout\))) # (!\CPU|ROM|content~20_combout\ & 
-- (\CPU|BR|registrador~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~347_combout\,
	datad => \CPU|BR|registrador~345_combout\,
	combout => \CPU|BR|registrador~348_combout\);

-- Location: LCCOMB_X109_Y19_N4
\CPU|BR|registrador~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~351_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~348_combout\ & ((\CPU|BR|registrador~350_combout\))) # (!\CPU|BR|registrador~348_combout\ & (\CPU|BR|registrador~343_combout\)))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|BR|registrador~343_combout\,
	datac => \CPU|BR|registrador~350_combout\,
	datad => \CPU|BR|registrador~348_combout\,
	combout => \CPU|BR|registrador~351_combout\);

-- Location: LCCOMB_X110_Y21_N22
\CPU|BR|registrador~200feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~200feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~200feeder_combout\);

-- Location: FF_X110_Y21_N23
\CPU|BR|registrador~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~200feeder_combout\,
	ena => \CPU|BR|registrador~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~200_q\);

-- Location: FF_X109_Y21_N7
\CPU|BR|registrador~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~264_q\);

-- Location: LCCOMB_X109_Y21_N8
\CPU|BR|registrador~232feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~232feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~232feeder_combout\);

-- Location: FF_X109_Y21_N9
\CPU|BR|registrador~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~232feeder_combout\,
	ena => \CPU|BR|registrador~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~232_q\);

-- Location: FF_X110_Y21_N5
\CPU|BR|registrador~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~168_q\);

-- Location: LCCOMB_X110_Y21_N4
\CPU|BR|registrador~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~339_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~232_q\) # ((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & (((\CPU|BR|registrador~168_q\ & !\CPU|ROM|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|BR|registrador~232_q\,
	datac => \CPU|BR|registrador~168_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~339_combout\);

-- Location: LCCOMB_X109_Y21_N6
\CPU|BR|registrador~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~340_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~339_combout\ & ((\CPU|BR|registrador~264_q\))) # (!\CPU|BR|registrador~339_combout\ & (\CPU|BR|registrador~200_q\)))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~16_combout\,
	datab => \CPU|BR|registrador~200_q\,
	datac => \CPU|BR|registrador~264_q\,
	datad => \CPU|BR|registrador~339_combout\,
	combout => \CPU|BR|registrador~340_combout\);

-- Location: LCCOMB_X108_Y21_N26
\CPU|BR|registrador~224feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~224feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~224feeder_combout\);

-- Location: FF_X108_Y21_N27
\CPU|BR|registrador~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~224feeder_combout\,
	ena => \CPU|BR|registrador~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~224_q\);

-- Location: FF_X109_Y22_N5
\CPU|BR|registrador~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~367_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~256_q\);

-- Location: FF_X108_Y19_N9
\CPU|BR|registrador~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~363_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~192_q\);

-- Location: FF_X109_Y22_N19
\CPU|BR|registrador~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~160_q\);

-- Location: LCCOMB_X109_Y22_N18
\CPU|BR|registrador~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~334_combout\ = (\CPU|ROM|content~20_combout\ & (((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & ((\CPU|ROM|content~16_combout\ & (\CPU|BR|registrador~192_q\)) # (!\CPU|ROM|content~16_combout\ & 
-- ((\CPU|BR|registrador~160_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~192_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~160_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~334_combout\);

-- Location: LCCOMB_X109_Y22_N4
\CPU|BR|registrador~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~335_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~334_combout\ & ((\CPU|BR|registrador~256_q\))) # (!\CPU|BR|registrador~334_combout\ & (\CPU|BR|registrador~224_q\)))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~224_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~256_q\,
	datad => \CPU|BR|registrador~334_combout\,
	combout => \CPU|BR|registrador~335_combout\);

-- Location: LCCOMB_X105_Y22_N16
\CPU|BR|registrador~208feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~208feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~208feeder_combout\);

-- Location: FF_X105_Y22_N17
\CPU|BR|registrador~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~208feeder_combout\,
	ena => \CPU|BR|registrador~369_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~208_q\);

-- Location: FF_X106_Y22_N25
\CPU|BR|registrador~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~240_q\);

-- Location: LCCOMB_X106_Y22_N18
\CPU|BR|registrador~176feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~176feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~176feeder_combout\);

-- Location: FF_X106_Y22_N19
\CPU|BR|registrador~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~176feeder_combout\,
	ena => \CPU|BR|registrador~371_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~176_q\);

-- Location: FF_X105_Y22_N31
\CPU|BR|registrador~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~373_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~144_q\);

-- Location: LCCOMB_X105_Y22_N30
\CPU|BR|registrador~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~336_combout\ = (\CPU|ROM|content~20_combout\ & (((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & ((\CPU|ROM|content~16_combout\ & (\CPU|BR|registrador~176_q\)) # (!\CPU|ROM|content~16_combout\ & 
-- ((\CPU|BR|registrador~144_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~176_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~144_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~336_combout\);

-- Location: LCCOMB_X106_Y22_N24
\CPU|BR|registrador~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~337_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~336_combout\ & ((\CPU|BR|registrador~240_q\))) # (!\CPU|BR|registrador~336_combout\ & (\CPU|BR|registrador~208_q\)))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~208_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~240_q\,
	datad => \CPU|BR|registrador~336_combout\,
	combout => \CPU|BR|registrador~337_combout\);

-- Location: LCCOMB_X109_Y22_N22
\CPU|BR|registrador~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~338_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~335_combout\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~337_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~335_combout\,
	datac => \CPU|ROM|content~30_combout\,
	datad => \CPU|BR|registrador~337_combout\,
	combout => \CPU|BR|registrador~338_combout\);

-- Location: LCCOMB_X111_Y19_N20
\CPU|BR|registrador~184feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~184feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~184feeder_combout\);

-- Location: FF_X111_Y19_N21
\CPU|BR|registrador~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~184feeder_combout\,
	ena => \CPU|BR|registrador~353_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~184_q\);

-- Location: FF_X110_Y19_N3
\CPU|BR|registrador~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~359_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~248_q\);

-- Location: LCCOMB_X110_Y19_N28
\CPU|BR|registrador~216feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~216feeder_combout\ = \CPU|MUXBancoReg|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux5~0_combout\,
	combout => \CPU|BR|registrador~216feeder_combout\);

-- Location: FF_X110_Y19_N29
\CPU|BR|registrador~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~216feeder_combout\,
	ena => \CPU|BR|registrador~355_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~216_q\);

-- Location: FF_X111_Y19_N27
\CPU|BR|registrador~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux5~0_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~357_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~152_q\);

-- Location: LCCOMB_X111_Y19_N26
\CPU|BR|registrador~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~332_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~216_q\) # ((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & (((\CPU|BR|registrador~152_q\ & !\CPU|ROM|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|BR|registrador~216_q\,
	datac => \CPU|BR|registrador~152_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~332_combout\);

-- Location: LCCOMB_X110_Y19_N2
\CPU|BR|registrador~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~333_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~332_combout\ & ((\CPU|BR|registrador~248_q\))) # (!\CPU|BR|registrador~332_combout\ & (\CPU|BR|registrador~184_q\)))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~184_q\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|BR|registrador~248_q\,
	datad => \CPU|BR|registrador~332_combout\,
	combout => \CPU|BR|registrador~333_combout\);

-- Location: LCCOMB_X109_Y22_N16
\CPU|BR|registrador~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~341_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~338_combout\ & (\CPU|BR|registrador~340_combout\)) # (!\CPU|BR|registrador~338_combout\ & ((\CPU|BR|registrador~333_combout\))))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~340_combout\,
	datac => \CPU|BR|registrador~338_combout\,
	datad => \CPU|BR|registrador~333_combout\,
	combout => \CPU|BR|registrador~341_combout\);

-- Location: LCCOMB_X109_Y19_N26
\CPU|BR|saidaA[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaA[2]~3_combout\ = (\CPU|ROM|content~36_combout\ & (((\CPU|BR|registrador~341_combout\)))) # (!\CPU|ROM|content~36_combout\ & (!\CPU|BR|Equal0~2_combout\ & (\CPU|BR|registrador~351_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|Equal0~2_combout\,
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~351_combout\,
	datad => \CPU|BR|registrador~341_combout\,
	combout => \CPU|BR|saidaA[2]~3_combout\);

-- Location: LCCOMB_X109_Y19_N24
\CPU|ULA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~6_combout\ = \CPU|ROM|content~61_combout\ $ (\CPU|ULA|Add0~5\ $ (\CPU|BR|saidaA[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~61_combout\,
	datad => \CPU|BR|saidaA[3]~1_combout\,
	cin => \CPU|ULA|Add0~5\,
	combout => \CPU|ULA|Add0~6_combout\);

-- Location: LCCOMB_X109_Y19_N2
\CPU|MUXBancoReg|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUXBancoReg|Mux4~1_combout\ = (\CPU|MUXBancoReg|Mux4~0_combout\ & ((\CPU|ROM|content~61_combout\) # ((\CPU|MUXBancoReg|Mux7~8_combout\ & \CPU|ULA|Add0~6_combout\)))) # (!\CPU|MUXBancoReg|Mux4~0_combout\ & (\CPU|MUXBancoReg|Mux7~8_combout\ & 
-- ((\CPU|ULA|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXBancoReg|Mux4~0_combout\,
	datab => \CPU|MUXBancoReg|Mux7~8_combout\,
	datac => \CPU|ROM|content~61_combout\,
	datad => \CPU|ULA|Add0~6_combout\,
	combout => \CPU|MUXBancoReg|Mux4~1_combout\);

-- Location: FF_X108_Y19_N1
\CPU|BR|registrador~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~367_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~257_q\);

-- Location: FF_X107_Y19_N31
\CPU|BR|registrador~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~363_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~193_q\);

-- Location: LCCOMB_X106_Y19_N16
\CPU|BR|registrador~225feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~225feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~225feeder_combout\);

-- Location: FF_X106_Y19_N17
\CPU|BR|registrador~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~225feeder_combout\,
	ena => \CPU|BR|registrador~361_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~225_q\);

-- Location: FF_X107_Y19_N25
\CPU|BR|registrador~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~161_q\);

-- Location: LCCOMB_X107_Y19_N24
\CPU|BR|registrador~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~291_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~225_q\) # ((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & (((\CPU|BR|registrador~161_q\ & !\CPU|ROM|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~225_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~161_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~291_combout\);

-- Location: LCCOMB_X107_Y19_N30
\CPU|BR|registrador~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~292_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~291_combout\ & (\CPU|BR|registrador~257_q\)) # (!\CPU|BR|registrador~291_combout\ & ((\CPU|BR|registrador~193_q\))))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~257_q\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|BR|registrador~193_q\,
	datad => \CPU|BR|registrador~291_combout\,
	combout => \CPU|BR|registrador~292_combout\);

-- Location: LCCOMB_X109_Y21_N12
\CPU|BR|registrador~233feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~233feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~233feeder_combout\);

-- Location: FF_X109_Y21_N13
\CPU|BR|registrador~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~233feeder_combout\,
	ena => \CPU|BR|registrador~379_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~233_q\);

-- Location: FF_X109_Y21_N11
\CPU|BR|registrador~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~265_q\);

-- Location: LCCOMB_X110_Y21_N16
\CPU|BR|registrador~201feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~201feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~201feeder_combout\);

-- Location: FF_X110_Y21_N17
\CPU|BR|registrador~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~201feeder_combout\,
	ena => \CPU|BR|registrador~377_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~201_q\);

-- Location: FF_X110_Y21_N27
\CPU|BR|registrador~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~169_q\);

-- Location: LCCOMB_X110_Y21_N26
\CPU|BR|registrador~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~298_combout\ = (\CPU|ROM|content~20_combout\ & (((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & ((\CPU|ROM|content~16_combout\ & (\CPU|BR|registrador~201_q\)) # (!\CPU|ROM|content~16_combout\ & 
-- ((\CPU|BR|registrador~169_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|BR|registrador~201_q\,
	datac => \CPU|BR|registrador~169_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~298_combout\);

-- Location: LCCOMB_X109_Y21_N10
\CPU|BR|registrador~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~299_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~298_combout\ & ((\CPU|BR|registrador~265_q\))) # (!\CPU|BR|registrador~298_combout\ & (\CPU|BR|registrador~233_q\)))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~233_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~265_q\,
	datad => \CPU|BR|registrador~298_combout\,
	combout => \CPU|BR|registrador~299_combout\);

-- Location: LCCOMB_X106_Y22_N6
\CPU|BR|registrador~177feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~177feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~177feeder_combout\);

-- Location: FF_X106_Y22_N7
\CPU|BR|registrador~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~177feeder_combout\,
	ena => \CPU|BR|registrador~371_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~177_q\);

-- Location: FF_X106_Y22_N13
\CPU|BR|registrador~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~375_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~241_q\);

-- Location: LCCOMB_X105_Y22_N12
\CPU|BR|registrador~209feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~209feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~209feeder_combout\);

-- Location: FF_X105_Y22_N13
\CPU|BR|registrador~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~209feeder_combout\,
	ena => \CPU|BR|registrador~369_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~209_q\);

-- Location: FF_X105_Y22_N19
\CPU|BR|registrador~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~373_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~145_q\);

-- Location: LCCOMB_X105_Y22_N18
\CPU|BR|registrador~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~295_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~209_q\) # ((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & (((\CPU|BR|registrador~145_q\ & !\CPU|ROM|content~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~209_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~145_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~295_combout\);

-- Location: LCCOMB_X106_Y22_N12
\CPU|BR|registrador~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~296_combout\ = (\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~295_combout\ & ((\CPU|BR|registrador~241_q\))) # (!\CPU|BR|registrador~295_combout\ & (\CPU|BR|registrador~177_q\)))) # (!\CPU|ROM|content~16_combout\ & 
-- (((\CPU|BR|registrador~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~177_q\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|BR|registrador~241_q\,
	datad => \CPU|BR|registrador~295_combout\,
	combout => \CPU|BR|registrador~296_combout\);

-- Location: FF_X110_Y19_N5
\CPU|BR|registrador~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~355_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~217_q\);

-- Location: FF_X110_Y19_N15
\CPU|BR|registrador~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~359_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~249_q\);

-- Location: LCCOMB_X111_Y19_N8
\CPU|BR|registrador~185feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~185feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~185feeder_combout\);

-- Location: FF_X111_Y19_N9
\CPU|BR|registrador~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~185feeder_combout\,
	ena => \CPU|BR|registrador~353_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~185_q\);

-- Location: FF_X111_Y19_N3
\CPU|BR|registrador~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~357_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~153_q\);

-- Location: LCCOMB_X111_Y19_N2
\CPU|BR|registrador~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~293_combout\ = (\CPU|ROM|content~20_combout\ & (((\CPU|ROM|content~16_combout\)))) # (!\CPU|ROM|content~20_combout\ & ((\CPU|ROM|content~16_combout\ & (\CPU|BR|registrador~185_q\)) # (!\CPU|ROM|content~16_combout\ & 
-- ((\CPU|BR|registrador~153_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|BR|registrador~185_q\,
	datac => \CPU|BR|registrador~153_q\,
	datad => \CPU|ROM|content~16_combout\,
	combout => \CPU|BR|registrador~293_combout\);

-- Location: LCCOMB_X110_Y19_N14
\CPU|BR|registrador~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~294_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~293_combout\ & ((\CPU|BR|registrador~249_q\))) # (!\CPU|BR|registrador~293_combout\ & (\CPU|BR|registrador~217_q\)))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~217_q\,
	datab => \CPU|ROM|content~20_combout\,
	datac => \CPU|BR|registrador~249_q\,
	datad => \CPU|BR|registrador~293_combout\,
	combout => \CPU|BR|registrador~294_combout\);

-- Location: LCCOMB_X107_Y19_N18
\CPU|BR|registrador~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~297_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\) # ((\CPU|BR|registrador~294_combout\)))) # (!\CPU|ROM|content~26_combout\ & (!\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~296_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|BR|registrador~296_combout\,
	datad => \CPU|BR|registrador~294_combout\,
	combout => \CPU|BR|registrador~297_combout\);

-- Location: LCCOMB_X107_Y19_N4
\CPU|BR|registrador~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~300_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~297_combout\ & ((\CPU|BR|registrador~299_combout\))) # (!\CPU|BR|registrador~297_combout\ & (\CPU|BR|registrador~292_combout\)))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~292_combout\,
	datab => \CPU|ROM|content~30_combout\,
	datac => \CPU|BR|registrador~299_combout\,
	datad => \CPU|BR|registrador~297_combout\,
	combout => \CPU|BR|registrador~300_combout\);

-- Location: FF_X109_Y19_N3
\CPU|BR|registrador~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|MUXBancoReg|Mux4~1_combout\,
	ena => \CPU|BR|registrador~399_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~137_q\);

-- Location: FF_X109_Y19_N25
\CPU|BR|registrador~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~397_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~121_q\);

-- Location: LCCOMB_X112_Y22_N24
\CPU|BR|registrador~129feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~129feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~129feeder_combout\);

-- Location: FF_X112_Y22_N25
\CPU|BR|registrador~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~129feeder_combout\,
	ena => \CPU|BR|registrador~396_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~129_q\);

-- Location: FF_X112_Y22_N3
\CPU|BR|registrador~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~398_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~113_q\);

-- Location: LCCOMB_X112_Y22_N2
\CPU|BR|registrador~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~308_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~129_q\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~113_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~129_q\,
	datac => \CPU|BR|registrador~113_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~308_combout\);

-- Location: LCCOMB_X107_Y19_N28
\CPU|BR|registrador~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~309_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~308_combout\ & (\CPU|BR|registrador~137_q\)) # (!\CPU|BR|registrador~308_combout\ & ((\CPU|BR|registrador~121_q\))))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~137_q\,
	datab => \CPU|BR|registrador~121_q\,
	datac => \CPU|ROM|content~26_combout\,
	datad => \CPU|BR|registrador~308_combout\,
	combout => \CPU|BR|registrador~309_combout\);

-- Location: FF_X109_Y20_N23
\CPU|BR|registrador~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~105_q\);

-- Location: FF_X110_Y20_N29
\CPU|BR|registrador~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~389_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~97_q\);

-- Location: LCCOMB_X109_Y20_N8
\CPU|BR|registrador~89feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~89feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~89feeder_combout\);

-- Location: FF_X109_Y20_N9
\CPU|BR|registrador~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~89feeder_combout\,
	ena => \CPU|BR|registrador~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~89_q\);

-- Location: FF_X110_Y20_N11
\CPU|BR|registrador~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~390_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~81_q\);

-- Location: LCCOMB_X110_Y20_N10
\CPU|BR|registrador~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~301_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~89_q\) # ((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & (((\CPU|BR|registrador~81_q\ & !\CPU|ROM|content~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~89_q\,
	datab => \CPU|ROM|content~26_combout\,
	datac => \CPU|BR|registrador~81_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~301_combout\);

-- Location: LCCOMB_X110_Y20_N28
\CPU|BR|registrador~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~302_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~301_combout\ & (\CPU|BR|registrador~105_q\)) # (!\CPU|BR|registrador~301_combout\ & ((\CPU|BR|registrador~97_q\))))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|BR|registrador~105_q\,
	datac => \CPU|BR|registrador~97_q\,
	datad => \CPU|BR|registrador~301_combout\,
	combout => \CPU|BR|registrador~302_combout\);

-- Location: LCCOMB_X112_Y19_N28
\CPU|BR|registrador~33feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~33feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~33feeder_combout\);

-- Location: FF_X112_Y19_N29
\CPU|BR|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~33feeder_combout\,
	ena => \CPU|BR|registrador~394_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~33_q\);

-- Location: FF_X112_Y19_N3
\CPU|BR|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~41_q\);

-- Location: LCCOMB_X111_Y22_N16
\CPU|BR|registrador~25feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~25feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~25feeder_combout\);

-- Location: FF_X111_Y22_N17
\CPU|BR|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~25feeder_combout\,
	ena => \CPU|BR|registrador~392_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~25_q\);

-- Location: FF_X111_Y22_N27
\CPU|BR|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~395_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~17_q\);

-- Location: LCCOMB_X111_Y22_N26
\CPU|BR|registrador~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~305_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~25_q\) # ((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & (((\CPU|BR|registrador~17_q\ & !\CPU|ROM|content~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~25_q\,
	datac => \CPU|BR|registrador~17_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~305_combout\);

-- Location: LCCOMB_X112_Y19_N2
\CPU|BR|registrador~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~306_combout\ = (\CPU|ROM|content~30_combout\ & ((\CPU|BR|registrador~305_combout\ & ((\CPU|BR|registrador~41_q\))) # (!\CPU|BR|registrador~305_combout\ & (\CPU|BR|registrador~33_q\)))) # (!\CPU|ROM|content~30_combout\ & 
-- (((\CPU|BR|registrador~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~30_combout\,
	datab => \CPU|BR|registrador~33_q\,
	datac => \CPU|BR|registrador~41_q\,
	datad => \CPU|BR|registrador~305_combout\,
	combout => \CPU|BR|registrador~306_combout\);

-- Location: LCCOMB_X108_Y22_N12
\CPU|BR|registrador~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~57feeder_combout\ = \CPU|MUXBancoReg|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUXBancoReg|Mux4~1_combout\,
	combout => \CPU|BR|registrador~57feeder_combout\);

-- Location: FF_X108_Y22_N13
\CPU|BR|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|BR|registrador~57feeder_combout\,
	ena => \CPU|BR|registrador~385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~57_q\);

-- Location: FF_X108_Y22_N19
\CPU|BR|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~73_q\);

-- Location: FF_X107_Y22_N21
\CPU|BR|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~65_q\);

-- Location: FF_X107_Y22_N15
\CPU|BR|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|MUXBancoReg|Mux4~1_combout\,
	sload => VCC,
	ena => \CPU|BR|registrador~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BR|registrador~49_q\);

-- Location: LCCOMB_X107_Y22_N14
\CPU|BR|registrador~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~303_combout\ = (\CPU|ROM|content~26_combout\ & (((\CPU|ROM|content~30_combout\)))) # (!\CPU|ROM|content~26_combout\ & ((\CPU|ROM|content~30_combout\ & (\CPU|BR|registrador~65_q\)) # (!\CPU|ROM|content~30_combout\ & 
-- ((\CPU|BR|registrador~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~26_combout\,
	datab => \CPU|BR|registrador~65_q\,
	datac => \CPU|BR|registrador~49_q\,
	datad => \CPU|ROM|content~30_combout\,
	combout => \CPU|BR|registrador~303_combout\);

-- Location: LCCOMB_X108_Y22_N18
\CPU|BR|registrador~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~304_combout\ = (\CPU|ROM|content~26_combout\ & ((\CPU|BR|registrador~303_combout\ & ((\CPU|BR|registrador~73_q\))) # (!\CPU|BR|registrador~303_combout\ & (\CPU|BR|registrador~57_q\)))) # (!\CPU|ROM|content~26_combout\ & 
-- (((\CPU|BR|registrador~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~57_q\,
	datab => \CPU|ROM|content~26_combout\,
	datac => \CPU|BR|registrador~73_q\,
	datad => \CPU|BR|registrador~303_combout\,
	combout => \CPU|BR|registrador~304_combout\);

-- Location: LCCOMB_X107_Y19_N10
\CPU|BR|registrador~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~307_combout\ = (\CPU|ROM|content~20_combout\ & (\CPU|ROM|content~16_combout\)) # (!\CPU|ROM|content~20_combout\ & ((\CPU|ROM|content~16_combout\ & ((\CPU|BR|registrador~304_combout\))) # (!\CPU|ROM|content~16_combout\ & 
-- (\CPU|BR|registrador~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|ROM|content~16_combout\,
	datac => \CPU|BR|registrador~306_combout\,
	datad => \CPU|BR|registrador~304_combout\,
	combout => \CPU|BR|registrador~307_combout\);

-- Location: LCCOMB_X107_Y19_N2
\CPU|BR|registrador~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~310_combout\ = (\CPU|ROM|content~20_combout\ & ((\CPU|BR|registrador~307_combout\ & (\CPU|BR|registrador~309_combout\)) # (!\CPU|BR|registrador~307_combout\ & ((\CPU|BR|registrador~302_combout\))))) # (!\CPU|ROM|content~20_combout\ & 
-- (((\CPU|BR|registrador~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~20_combout\,
	datab => \CPU|BR|registrador~309_combout\,
	datac => \CPU|BR|registrador~302_combout\,
	datad => \CPU|BR|registrador~307_combout\,
	combout => \CPU|BR|registrador~310_combout\);

-- Location: LCCOMB_X107_Y19_N16
\CPU|BR|saidaA[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|saidaA[3]~1_combout\ = (!\CPU|BR|Equal0~2_combout\ & ((\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~300_combout\)) # (!\CPU|ROM|content~36_combout\ & ((\CPU|BR|registrador~310_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|Equal0~2_combout\,
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~300_combout\,
	datad => \CPU|BR|registrador~310_combout\,
	combout => \CPU|BR|saidaA[3]~1_combout\);

-- Location: LCCOMB_X107_Y19_N6
\CPU|BR|registrador~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|BR|registrador~311_combout\ = (\CPU|ROM|content~36_combout\ & (\CPU|BR|registrador~300_combout\)) # (!\CPU|ROM|content~36_combout\ & ((\CPU|BR|registrador~310_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|content~36_combout\,
	datac => \CPU|BR|registrador~300_combout\,
	datad => \CPU|BR|registrador~310_combout\,
	combout => \CPU|BR|registrador~311_combout\);

-- Location: LCCOMB_X108_Y19_N14
\DISPLAY0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[0]~0_combout\ = (\CPU|BR|saidaA[3]~1_combout\ & ((\CPU|BR|saidaA[1]~2_combout\ $ (!\CPU|BR|saidaA[2]~3_combout\)))) # (!\CPU|BR|saidaA[3]~1_combout\ & ((\CPU|BR|saidaA[1]~2_combout\) # ((\CPU|BR|registrador~311_combout\ & 
-- \CPU|BR|saidaA[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[3]~1_combout\,
	datab => \CPU|BR|registrador~311_combout\,
	datac => \CPU|BR|saidaA[1]~2_combout\,
	datad => \CPU|BR|saidaA[2]~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X108_Y19_N24
\DISPLAY0|rascSaida7seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[0]~1_combout\ = (!\CPU|BR|saidaA[1]~2_combout\ & (\CPU|BR|saidaA[2]~3_combout\ & ((!\CPU|BR|registrador~311_combout\) # (!\CPU|BR|saidaA[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[3]~1_combout\,
	datab => \CPU|BR|registrador~311_combout\,
	datac => \CPU|BR|saidaA[1]~2_combout\,
	datad => \CPU|BR|saidaA[2]~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[0]~1_combout\);

-- Location: LCCOMB_X108_Y19_N6
\DISPLAY0|rascSaida7seg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[0]~2_combout\ = (\DISPLAY0|rascSaida7seg[0]~0_combout\ & (((\DISPLAY0|rascSaida7seg[0]~1_combout\)))) # (!\DISPLAY0|rascSaida7seg[0]~0_combout\ & ((\DISPLAY0|rascSaida7seg[0]~1_combout\ & (!\CPU|BR|registrador~290_combout\)) # 
-- (!\DISPLAY0|rascSaida7seg[0]~1_combout\ & ((\CPU|BR|saidaA[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~290_combout\,
	datab => \CPU|BR|saidaA[0]~0_combout\,
	datac => \DISPLAY0|rascSaida7seg[0]~0_combout\,
	datad => \DISPLAY0|rascSaida7seg[0]~1_combout\,
	combout => \DISPLAY0|rascSaida7seg[0]~2_combout\);

-- Location: LCCOMB_X106_Y23_N16
\DE|LCD_US~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|LCD_US~0_combout\ = (!\CPU|ROM|content~61_combout\ & (!\CPU|ROM|content~74_combout\ & (!\CPU|ROM|content~68_combout\ & \CPU|ROM|content~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~61_combout\,
	datab => \CPU|ROM|content~74_combout\,
	datac => \CPU|ROM|content~68_combout\,
	datad => \CPU|ROM|content~73_combout\,
	combout => \DE|LCD_US~0_combout\);

-- Location: LCCOMB_X107_Y23_N4
\CPU|UC|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|UC|Equal4~0_combout\ = (!\CPU|ROM|content~50_combout\ & (\CPU|ROM|content~40_combout\ & (\CPU|ROM|content~15_combout\ & \CPU|ROM|content~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~50_combout\,
	datab => \CPU|ROM|content~40_combout\,
	datac => \CPU|ROM|content~15_combout\,
	datad => \CPU|ROM|content~44_combout\,
	combout => \CPU|UC|Equal4~0_combout\);

-- Location: LCCOMB_X106_Y23_N8
\DE|LCD_US\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|LCD_US~combout\ = (\DE|LCD_US~0_combout\ & (\CPU|ROM|content~72_combout\ & \CPU|UC|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE|LCD_US~0_combout\,
	datac => \CPU|ROM|content~72_combout\,
	datad => \CPU|UC|Equal4~0_combout\,
	combout => \DE|LCD_US~combout\);

-- Location: DDIOOUTCELL_X69_Y73_N25
\DISPLAY0|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[0]~2_combout\,
	ena => \DE|LCD_US~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY0|saida7seg\(0));

-- Location: LCCOMB_X108_Y19_N4
\DISPLAY0|rascSaida7seg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[1]~3_combout\ = (\CPU|BR|saidaA[1]~2_combout\ & ((\CPU|BR|saidaA[0]~0_combout\ & (\CPU|BR|saidaA[3]~1_combout\)) # (!\CPU|BR|saidaA[0]~0_combout\ & ((\CPU|BR|saidaA[2]~3_combout\))))) # (!\CPU|BR|saidaA[1]~2_combout\ & 
-- (\CPU|BR|saidaA[2]~3_combout\ & (\CPU|BR|saidaA[0]~0_combout\ $ (\CPU|BR|saidaA[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[1]~2_combout\,
	datab => \CPU|BR|saidaA[0]~0_combout\,
	datac => \CPU|BR|saidaA[3]~1_combout\,
	datad => \CPU|BR|saidaA[2]~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[1]~3_combout\);

-- Location: DDIOOUTCELL_X107_Y73_N25
\DISPLAY0|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[1]~3_combout\,
	ena => \DE|LCD_US~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY0|saida7seg\(1));

-- Location: LCCOMB_X108_Y19_N0
\DISPLAY0|rascSaida7seg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[2]~4_combout\ = (\CPU|BR|saidaA[2]~3_combout\ & (!\CPU|BR|saidaA[1]~2_combout\ & \CPU|BR|saidaA[0]~0_combout\)) # (!\CPU|BR|saidaA[2]~3_combout\ & (\CPU|BR|saidaA[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[2]~3_combout\,
	datab => \CPU|BR|saidaA[1]~2_combout\,
	datad => \CPU|BR|saidaA[0]~0_combout\,
	combout => \DISPLAY0|rascSaida7seg[2]~4_combout\);

-- Location: LCCOMB_X108_Y19_N2
\DISPLAY0|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[2]~5_combout\ = (\CPU|BR|saidaA[3]~1_combout\ & (\CPU|BR|saidaA[2]~3_combout\ & ((!\DISPLAY0|rascSaida7seg[2]~4_combout\)))) # (!\CPU|BR|saidaA[3]~1_combout\ & (!\CPU|BR|saidaA[2]~3_combout\ & (!\CPU|BR|registrador~290_combout\ & 
-- \DISPLAY0|rascSaida7seg[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[3]~1_combout\,
	datab => \CPU|BR|saidaA[2]~3_combout\,
	datac => \CPU|BR|registrador~290_combout\,
	datad => \DISPLAY0|rascSaida7seg[2]~4_combout\,
	combout => \DISPLAY0|rascSaida7seg[2]~5_combout\);

-- Location: DDIOOUTCELL_X67_Y73_N25
\DISPLAY0|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[2]~5_combout\,
	ena => \DE|LCD_US~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY0|saida7seg\(2));

-- Location: LCCOMB_X108_Y19_N16
\DISPLAY0|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[3]~6_combout\ = (\CPU|BR|saidaA[1]~2_combout\ & ((\CPU|BR|saidaA[0]~0_combout\ & ((\CPU|BR|saidaA[2]~3_combout\))) # (!\CPU|BR|saidaA[0]~0_combout\ & (\CPU|BR|saidaA[3]~1_combout\ & !\CPU|BR|saidaA[2]~3_combout\)))) # 
-- (!\CPU|BR|saidaA[1]~2_combout\ & (!\CPU|BR|saidaA[3]~1_combout\ & (\CPU|BR|saidaA[0]~0_combout\ $ (\CPU|BR|saidaA[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[1]~2_combout\,
	datab => \CPU|BR|saidaA[0]~0_combout\,
	datac => \CPU|BR|saidaA[3]~1_combout\,
	datad => \CPU|BR|saidaA[2]~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[3]~6_combout\);

-- Location: DDIOOUTCELL_X115_Y50_N4
\DISPLAY0|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[3]~6_combout\,
	ena => \DE|LCD_US~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY0|saida7seg\(3));

-- Location: LCCOMB_X108_Y19_N30
\DISPLAY0|rascSaida7seg[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[4]~7_combout\ = (\CPU|BR|saidaA[0]~0_combout\ & ((\CPU|BR|saidaA[3]~1_combout\ & (!\CPU|BR|saidaA[1]~2_combout\)) # (!\CPU|BR|saidaA[3]~1_combout\ & ((\CPU|BR|saidaA[1]~2_combout\) # (!\CPU|BR|saidaA[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[3]~1_combout\,
	datab => \CPU|BR|saidaA[0]~0_combout\,
	datac => \CPU|BR|saidaA[1]~2_combout\,
	datad => \CPU|BR|saidaA[2]~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[4]~7_combout\);

-- Location: LCCOMB_X108_Y19_N12
\DISPLAY0|rascSaida7seg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[4]~8_combout\ = (!\CPU|BR|saidaA[1]~2_combout\ & \CPU|BR|saidaA[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|BR|saidaA[1]~2_combout\,
	datad => \CPU|BR|saidaA[2]~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[4]~8_combout\);

-- Location: LCCOMB_X108_Y19_N26
\DISPLAY0|rascSaida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[4]~9_combout\ = (\DISPLAY0|rascSaida7seg[4]~8_combout\ & (((\CPU|BR|registrador~290_combout\ & !\DISPLAY0|rascSaida7seg[4]~7_combout\)) # (!\CPU|BR|registrador~311_combout\))) # (!\DISPLAY0|rascSaida7seg[4]~8_combout\ & 
-- (((\DISPLAY0|rascSaida7seg[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|registrador~290_combout\,
	datab => \CPU|BR|registrador~311_combout\,
	datac => \DISPLAY0|rascSaida7seg[4]~7_combout\,
	datad => \DISPLAY0|rascSaida7seg[4]~8_combout\,
	combout => \DISPLAY0|rascSaida7seg[4]~9_combout\);

-- Location: DDIOOUTCELL_X115_Y54_N18
\DISPLAY0|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[4]~9_combout\,
	ena => \DE|LCD_US~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY0|saida7seg\(4));

-- Location: LCCOMB_X108_Y19_N20
\DISPLAY0|rascSaida7seg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[5]~10_combout\ = (\CPU|BR|saidaA[2]~3_combout\ & (\CPU|BR|saidaA[0]~0_combout\ & (\CPU|BR|saidaA[3]~1_combout\ $ (\CPU|BR|saidaA[1]~2_combout\)))) # (!\CPU|BR|saidaA[2]~3_combout\ & (!\CPU|BR|saidaA[3]~1_combout\ & 
-- ((\CPU|BR|saidaA[0]~0_combout\) # (\CPU|BR|saidaA[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[3]~1_combout\,
	datab => \CPU|BR|saidaA[2]~3_combout\,
	datac => \CPU|BR|saidaA[0]~0_combout\,
	datad => \CPU|BR|saidaA[1]~2_combout\,
	combout => \DISPLAY0|rascSaida7seg[5]~10_combout\);

-- Location: DDIOOUTCELL_X115_Y67_N18
\DISPLAY0|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[5]~10_combout\,
	ena => \DE|LCD_US~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY0|saida7seg\(5));

-- Location: LCCOMB_X108_Y19_N18
\DISPLAY0|rascSaida7seg[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DISPLAY0|rascSaida7seg[6]~11_combout\ = (\CPU|BR|saidaA[0]~0_combout\ & (!\CPU|BR|saidaA[3]~1_combout\ & (\CPU|BR|saidaA[1]~2_combout\ $ (!\CPU|BR|saidaA[2]~3_combout\)))) # (!\CPU|BR|saidaA[0]~0_combout\ & (!\CPU|BR|saidaA[1]~2_combout\ & 
-- (\CPU|BR|saidaA[3]~1_combout\ $ (!\CPU|BR|saidaA[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BR|saidaA[1]~2_combout\,
	datab => \CPU|BR|saidaA[0]~0_combout\,
	datac => \CPU|BR|saidaA[3]~1_combout\,
	datad => \CPU|BR|saidaA[2]~3_combout\,
	combout => \DISPLAY0|rascSaida7seg[6]~11_combout\);

-- Location: DDIOOUTCELL_X115_Y69_N4
\DISPLAY0|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[6]~11_combout\,
	ena => \DE|LCD_US~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY0|saida7seg\(6));

-- Location: LCCOMB_X106_Y23_N26
\DE|LCD_DS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|LCD_DS~0_combout\ = (\CPU|UC|Equal4~0_combout\ & (!\CPU|ROM|content~74_combout\ & (\CPU|ROM|content~68_combout\ & !\CPU|ROM|content~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|Equal4~0_combout\,
	datab => \CPU|ROM|content~74_combout\,
	datac => \CPU|ROM|content~68_combout\,
	datad => \CPU|ROM|content~61_combout\,
	combout => \DE|LCD_DS~0_combout\);

-- Location: LCCOMB_X114_Y23_N12
\DE|LCD_DS\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|LCD_DS~combout\ = (!\CPU|ROM|content~72_combout\ & (!\CPU|ROM|content~73_combout\ & \DE|LCD_DS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~72_combout\,
	datac => \CPU|ROM|content~73_combout\,
	datad => \DE|LCD_DS~0_combout\,
	combout => \DE|LCD_DS~combout\);

-- Location: DDIOOUTCELL_X115_Y41_N4
\DISPLAY1|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[0]~2_combout\,
	ena => \DE|LCD_DS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY1|saida7seg\(0));

-- Location: DDIOOUTCELL_X115_Y30_N11
\DISPLAY1|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[1]~3_combout\,
	ena => \DE|LCD_DS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY1|saida7seg\(1));

-- Location: DDIOOUTCELL_X115_Y25_N25
\DISPLAY1|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[2]~5_combout\,
	ena => \DE|LCD_DS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY1|saida7seg\(2));

-- Location: DDIOOUTCELL_X115_Y30_N4
\DISPLAY1|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[3]~6_combout\,
	ena => \DE|LCD_DS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY1|saida7seg\(3));

-- Location: DDIOOUTCELL_X115_Y20_N11
\DISPLAY1|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[4]~9_combout\,
	ena => \DE|LCD_DS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY1|saida7seg\(4));

-- Location: DDIOOUTCELL_X115_Y22_N4
\DISPLAY1|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[5]~10_combout\,
	ena => \DE|LCD_DS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY1|saida7seg\(5));

-- Location: DDIOOUTCELL_X115_Y28_N11
\DISPLAY1|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[6]~11_combout\,
	ena => \DE|LCD_DS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY1|saida7seg\(6));

-- Location: LCCOMB_X114_Y23_N14
\DE|LCD_UM\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|LCD_UM~combout\ = (!\CPU|ROM|content~72_combout\ & (\CPU|ROM|content~73_combout\ & \DE|LCD_DS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~72_combout\,
	datac => \CPU|ROM|content~73_combout\,
	datad => \DE|LCD_DS~0_combout\,
	combout => \DE|LCD_UM~combout\);

-- Location: DDIOOUTCELL_X115_Y17_N11
\DISPLAY2|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[0]~2_combout\,
	ena => \DE|LCD_UM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY2|saida7seg\(0));

-- Location: DDIOOUTCELL_X115_Y16_N4
\DISPLAY2|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[1]~3_combout\,
	ena => \DE|LCD_UM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY2|saida7seg\(1));

-- Location: DDIOOUTCELL_X115_Y19_N11
\DISPLAY2|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[2]~5_combout\,
	ena => \DE|LCD_UM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY2|saida7seg\(2));

-- Location: DDIOOUTCELL_X115_Y19_N4
\DISPLAY2|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[3]~6_combout\,
	ena => \DE|LCD_UM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY2|saida7seg\(3));

-- Location: DDIOOUTCELL_X115_Y18_N4
\DISPLAY2|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[4]~9_combout\,
	ena => \DE|LCD_UM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY2|saida7seg\(4));

-- Location: DDIOOUTCELL_X115_Y20_N4
\DISPLAY2|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[5]~10_combout\,
	ena => \DE|LCD_UM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY2|saida7seg\(5));

-- Location: DDIOOUTCELL_X115_Y21_N18
\DISPLAY2|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[6]~11_combout\,
	ena => \DE|LCD_UM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY2|saida7seg\(6));

-- Location: LCCOMB_X106_Y23_N28
\DE|LCD_DM\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|LCD_DM~combout\ = (\DE|LCD_DS~0_combout\ & (\CPU|ROM|content~72_combout\ & !\CPU|ROM|content~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE|LCD_DS~0_combout\,
	datac => \CPU|ROM|content~72_combout\,
	datad => \CPU|ROM|content~73_combout\,
	combout => \DE|LCD_DM~combout\);

-- Location: DDIOOUTCELL_X115_Y25_N18
\DISPLAY3|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[0]~2_combout\,
	ena => \DE|LCD_DM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY3|saida7seg\(0));

-- Location: DDIOOUTCELL_X115_Y29_N4
\DISPLAY3|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[1]~3_combout\,
	ena => \DE|LCD_DM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY3|saida7seg\(1));

-- Location: DDIOOUTCELL_X100_Y0_N4
\DISPLAY3|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[2]~5_combout\,
	ena => \DE|LCD_DM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY3|saida7seg\(2));

-- Location: DDIOOUTCELL_X111_Y0_N4
\DISPLAY3|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[3]~6_combout\,
	ena => \DE|LCD_DM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY3|saida7seg\(3));

-- Location: DDIOOUTCELL_X105_Y0_N25
\DISPLAY3|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[4]~9_combout\,
	ena => \DE|LCD_DM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY3|saida7seg\(4));

-- Location: DDIOOUTCELL_X105_Y0_N11
\DISPLAY3|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[5]~10_combout\,
	ena => \DE|LCD_DM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY3|saida7seg\(5));

-- Location: DDIOOUTCELL_X105_Y0_N4
\DISPLAY3|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[6]~11_combout\,
	ena => \DE|LCD_DM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY3|saida7seg\(6));

-- Location: LCCOMB_X106_Y23_N22
\DE|LCD_UH\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|LCD_UH~combout\ = (\DE|LCD_DS~0_combout\ & (\CPU|ROM|content~72_combout\ & \CPU|ROM|content~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE|LCD_DS~0_combout\,
	datac => \CPU|ROM|content~72_combout\,
	datad => \CPU|ROM|content~73_combout\,
	combout => \DE|LCD_UH~combout\);

-- Location: DDIOOUTCELL_X98_Y0_N25
\DISPLAY4|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[0]~2_combout\,
	ena => \DE|LCD_UH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY4|saida7seg\(0));

-- Location: DDIOOUTCELL_X107_Y0_N11
\DISPLAY4|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[1]~3_combout\,
	ena => \DE|LCD_UH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY4|saida7seg\(1));

-- Location: DDIOOUTCELL_X74_Y0_N11
\DISPLAY4|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[2]~5_combout\,
	ena => \DE|LCD_UH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY4|saida7seg\(2));

-- Location: DDIOOUTCELL_X74_Y0_N4
\DISPLAY4|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[3]~6_combout\,
	ena => \DE|LCD_UH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY4|saida7seg\(3));

-- Location: DDIOOUTCELL_X83_Y0_N25
\DISPLAY4|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[4]~9_combout\,
	ena => \DE|LCD_UH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY4|saida7seg\(4));

-- Location: DDIOOUTCELL_X83_Y0_N18
\DISPLAY4|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[5]~10_combout\,
	ena => \DE|LCD_UH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY4|saida7seg\(5));

-- Location: DDIOOUTCELL_X79_Y0_N25
\DISPLAY4|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[6]~11_combout\,
	ena => \DE|LCD_UH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY4|saida7seg\(6));

-- Location: LCCOMB_X106_Y23_N24
\DE|LCD_DH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|LCD_DH~0_combout\ = (!\CPU|ROM|content~72_combout\ & (!\CPU|ROM|content~73_combout\ & (!\CPU|ROM|content~68_combout\ & \CPU|ROM|content~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|content~72_combout\,
	datab => \CPU|ROM|content~73_combout\,
	datac => \CPU|ROM|content~68_combout\,
	datad => \CPU|ROM|content~61_combout\,
	combout => \DE|LCD_DH~0_combout\);

-- Location: LCCOMB_X106_Y23_N30
\DE|LCD_DH\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE|LCD_DH~combout\ = (\CPU|UC|Equal4~0_combout\ & (\DE|LCD_DH~0_combout\ & !\CPU|ROM|content~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|Equal4~0_combout\,
	datab => \DE|LCD_DH~0_combout\,
	datad => \CPU|ROM|content~74_combout\,
	combout => \DE|LCD_DH~combout\);

-- Location: DDIOOUTCELL_X85_Y0_N11
\DISPLAY5|saida7seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[0]~2_combout\,
	ena => \DE|LCD_DH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY5|saida7seg\(0));

-- Location: DDIOOUTCELL_X87_Y0_N18
\DISPLAY5|saida7seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[1]~3_combout\,
	ena => \DE|LCD_DH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY5|saida7seg\(1));

-- Location: DDIOOUTCELL_X98_Y0_N18
\DISPLAY5|saida7seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[2]~5_combout\,
	ena => \DE|LCD_DH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY5|saida7seg\(2));

-- Location: DDIOOUTCELL_X72_Y0_N4
\DISPLAY5|saida7seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[3]~6_combout\,
	ena => \DE|LCD_DH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY5|saida7seg\(3));

-- Location: DDIOOUTCELL_X72_Y0_N11
\DISPLAY5|saida7seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[4]~9_combout\,
	ena => \DE|LCD_DH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY5|saida7seg\(4));

-- Location: DDIOOUTCELL_X79_Y0_N18
\DISPLAY5|saida7seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[5]~10_combout\,
	ena => \DE|LCD_DH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY5|saida7seg\(5));

-- Location: DDIOOUTCELL_X69_Y0_N4
\DISPLAY5|saida7seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DISPLAY0|rascSaida7seg[6]~11_combout\,
	ena => \DE|LCD_DH~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY5|saida7seg\(6));

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

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


