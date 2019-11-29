-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/29/2019 15:55:20"

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

ENTITY 	mips IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	PC_out : BUFFER std_logic_vector(31 DOWNTO 0);
	ULA_out : BUFFER std_logic_vector(31 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- PC_out[0]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[1]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[2]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[3]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[5]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[6]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[7]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[8]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[9]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[10]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[11]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[12]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[13]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[14]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[15]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[16]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[17]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[18]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[19]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[20]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[21]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[22]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[23]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[24]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[25]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[26]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[27]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[28]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[29]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[30]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out[31]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[0]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[1]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[2]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[3]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[4]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[5]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[6]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[8]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[9]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[10]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[11]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[12]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[13]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[14]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[15]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[16]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[17]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[18]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[19]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[20]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[21]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[22]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[23]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[24]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[25]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[26]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[27]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[28]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[29]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[30]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_out[31]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_PC_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PC_out[0]~output_o\ : std_logic;
SIGNAL \PC_out[1]~output_o\ : std_logic;
SIGNAL \PC_out[2]~output_o\ : std_logic;
SIGNAL \PC_out[3]~output_o\ : std_logic;
SIGNAL \PC_out[4]~output_o\ : std_logic;
SIGNAL \PC_out[5]~output_o\ : std_logic;
SIGNAL \PC_out[6]~output_o\ : std_logic;
SIGNAL \PC_out[7]~output_o\ : std_logic;
SIGNAL \PC_out[8]~output_o\ : std_logic;
SIGNAL \PC_out[9]~output_o\ : std_logic;
SIGNAL \PC_out[10]~output_o\ : std_logic;
SIGNAL \PC_out[11]~output_o\ : std_logic;
SIGNAL \PC_out[12]~output_o\ : std_logic;
SIGNAL \PC_out[13]~output_o\ : std_logic;
SIGNAL \PC_out[14]~output_o\ : std_logic;
SIGNAL \PC_out[15]~output_o\ : std_logic;
SIGNAL \PC_out[16]~output_o\ : std_logic;
SIGNAL \PC_out[17]~output_o\ : std_logic;
SIGNAL \PC_out[18]~output_o\ : std_logic;
SIGNAL \PC_out[19]~output_o\ : std_logic;
SIGNAL \PC_out[20]~output_o\ : std_logic;
SIGNAL \PC_out[21]~output_o\ : std_logic;
SIGNAL \PC_out[22]~output_o\ : std_logic;
SIGNAL \PC_out[23]~output_o\ : std_logic;
SIGNAL \PC_out[24]~output_o\ : std_logic;
SIGNAL \PC_out[25]~output_o\ : std_logic;
SIGNAL \PC_out[26]~output_o\ : std_logic;
SIGNAL \PC_out[27]~output_o\ : std_logic;
SIGNAL \PC_out[28]~output_o\ : std_logic;
SIGNAL \PC_out[29]~output_o\ : std_logic;
SIGNAL \PC_out[30]~output_o\ : std_logic;
SIGNAL \PC_out[31]~output_o\ : std_logic;
SIGNAL \ULA_out[0]~output_o\ : std_logic;
SIGNAL \ULA_out[1]~output_o\ : std_logic;
SIGNAL \ULA_out[2]~output_o\ : std_logic;
SIGNAL \ULA_out[3]~output_o\ : std_logic;
SIGNAL \ULA_out[4]~output_o\ : std_logic;
SIGNAL \ULA_out[5]~output_o\ : std_logic;
SIGNAL \ULA_out[6]~output_o\ : std_logic;
SIGNAL \ULA_out[7]~output_o\ : std_logic;
SIGNAL \ULA_out[8]~output_o\ : std_logic;
SIGNAL \ULA_out[9]~output_o\ : std_logic;
SIGNAL \ULA_out[10]~output_o\ : std_logic;
SIGNAL \ULA_out[11]~output_o\ : std_logic;
SIGNAL \ULA_out[12]~output_o\ : std_logic;
SIGNAL \ULA_out[13]~output_o\ : std_logic;
SIGNAL \ULA_out[14]~output_o\ : std_logic;
SIGNAL \ULA_out[15]~output_o\ : std_logic;
SIGNAL \ULA_out[16]~output_o\ : std_logic;
SIGNAL \ULA_out[17]~output_o\ : std_logic;
SIGNAL \ULA_out[18]~output_o\ : std_logic;
SIGNAL \ULA_out[19]~output_o\ : std_logic;
SIGNAL \ULA_out[20]~output_o\ : std_logic;
SIGNAL \ULA_out[21]~output_o\ : std_logic;
SIGNAL \ULA_out[22]~output_o\ : std_logic;
SIGNAL \ULA_out[23]~output_o\ : std_logic;
SIGNAL \ULA_out[24]~output_o\ : std_logic;
SIGNAL \ULA_out[25]~output_o\ : std_logic;
SIGNAL \ULA_out[26]~output_o\ : std_logic;
SIGNAL \ULA_out[27]~output_o\ : std_logic;
SIGNAL \ULA_out[28]~output_o\ : std_logic;
SIGNAL \ULA_out[29]~output_o\ : std_logic;
SIGNAL \ULA_out[30]~output_o\ : std_logic;
SIGNAL \ULA_out[31]~output_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \FD|ROM|memROM~19_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~20_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[10]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[108]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[72]~30_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[72]~feeder_combout\ : std_logic;
SIGNAL \FD|PC|data_s[2]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~17_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~14_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~18_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|UC|pontosDeControle[0]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|UC|Equal4~0_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[2]~2_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[2]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[143]~0_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[147]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[106]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~24_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~30_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[6]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[1]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~41_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~26_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~32_combout\ : std_logic;
SIGNAL \FD|REG_1|data_s[19]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[8]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[3]~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[3]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~25_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~31_combout\ : std_logic;
SIGNAL \FD|REG_1|data_s[16]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[5]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~27_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~33_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~40_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~22_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~23_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~29_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[13]~feeder_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~2_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~0_combout\ : std_logic;
SIGNAL \FD|UC|Equal2~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[73]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|Equal0~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~39_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~60_combout\ : std_logic;
SIGNAL \FD|BR|Equal1~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~56_combout\ : std_logic;
SIGNAL \FD|UC|Equal3~0_combout\ : std_logic;
SIGNAL \FD|UC|Equal2~1_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[102]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[6]~feeder_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~3_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~50_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~48_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[7]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[8]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~56_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[10]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[13]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~44_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[45]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[69]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[71]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[71]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~4_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~5_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[30]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~7_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[29]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~9_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[28]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~10_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[63]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~13_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[26]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~14_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~15_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[25]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[59]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~16_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[57]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~19_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[23]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~20_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~22_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~23_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[21]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~25_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[20]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~27_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[19]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[49]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~26_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~28_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[45]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~32_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~33_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[16]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~32_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~33_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~34_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~35_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[15]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~34_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[41]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~35_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~36_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~37_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~39_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[13]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~41_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[11]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~42_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~43_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~44_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~45_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[10]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~46_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~47_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[9]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~48_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~49_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[7]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~52_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~53_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~54_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[4]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~58_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~59_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~60_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~61_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~62_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~63_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~1\ : std_logic;
SIGNAL \FD|ULA|Add1~3\ : std_logic;
SIGNAL \FD|ULA|Add1~5\ : std_logic;
SIGNAL \FD|ULA|Add1~7\ : std_logic;
SIGNAL \FD|ULA|Add1~9\ : std_logic;
SIGNAL \FD|ULA|Add1~11\ : std_logic;
SIGNAL \FD|ULA|Add1~13\ : std_logic;
SIGNAL \FD|ULA|Add1~15\ : std_logic;
SIGNAL \FD|ULA|Add1~17\ : std_logic;
SIGNAL \FD|ULA|Add1~19\ : std_logic;
SIGNAL \FD|ULA|Add1~21\ : std_logic;
SIGNAL \FD|ULA|Add1~23\ : std_logic;
SIGNAL \FD|ULA|Add1~25\ : std_logic;
SIGNAL \FD|ULA|Add1~27\ : std_logic;
SIGNAL \FD|ULA|Add1~29\ : std_logic;
SIGNAL \FD|ULA|Add1~31\ : std_logic;
SIGNAL \FD|ULA|Add1~33\ : std_logic;
SIGNAL \FD|ULA|Add1~35\ : std_logic;
SIGNAL \FD|ULA|Add1~37\ : std_logic;
SIGNAL \FD|ULA|Add1~39\ : std_logic;
SIGNAL \FD|ULA|Add1~41\ : std_logic;
SIGNAL \FD|ULA|Add1~43\ : std_logic;
SIGNAL \FD|ULA|Add1~45\ : std_logic;
SIGNAL \FD|ULA|Add1~47\ : std_logic;
SIGNAL \FD|ULA|Add1~49\ : std_logic;
SIGNAL \FD|ULA|Add1~51\ : std_logic;
SIGNAL \FD|ULA|Add1~53\ : std_logic;
SIGNAL \FD|ULA|Add1~55\ : std_logic;
SIGNAL \FD|ULA|Add1~57\ : std_logic;
SIGNAL \FD|ULA|Add1~59\ : std_logic;
SIGNAL \FD|ULA|Add1~60_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~1\ : std_logic;
SIGNAL \FD|ULA|soma[1]~3\ : std_logic;
SIGNAL \FD|ULA|soma[2]~5\ : std_logic;
SIGNAL \FD|ULA|soma[3]~7\ : std_logic;
SIGNAL \FD|ULA|soma[4]~9\ : std_logic;
SIGNAL \FD|ULA|soma[5]~11\ : std_logic;
SIGNAL \FD|ULA|soma[6]~13\ : std_logic;
SIGNAL \FD|ULA|soma[7]~15\ : std_logic;
SIGNAL \FD|ULA|soma[8]~17\ : std_logic;
SIGNAL \FD|ULA|soma[9]~19\ : std_logic;
SIGNAL \FD|ULA|soma[10]~21\ : std_logic;
SIGNAL \FD|ULA|soma[11]~23\ : std_logic;
SIGNAL \FD|ULA|soma[12]~25\ : std_logic;
SIGNAL \FD|ULA|soma[13]~27\ : std_logic;
SIGNAL \FD|ULA|soma[14]~29\ : std_logic;
SIGNAL \FD|ULA|soma[15]~31\ : std_logic;
SIGNAL \FD|ULA|soma[16]~33\ : std_logic;
SIGNAL \FD|ULA|soma[17]~35\ : std_logic;
SIGNAL \FD|ULA|soma[18]~37\ : std_logic;
SIGNAL \FD|ULA|soma[19]~39\ : std_logic;
SIGNAL \FD|ULA|soma[20]~41\ : std_logic;
SIGNAL \FD|ULA|soma[21]~43\ : std_logic;
SIGNAL \FD|ULA|soma[22]~45\ : std_logic;
SIGNAL \FD|ULA|soma[23]~47\ : std_logic;
SIGNAL \FD|ULA|soma[24]~49\ : std_logic;
SIGNAL \FD|ULA|soma[25]~51\ : std_logic;
SIGNAL \FD|ULA|soma[26]~53\ : std_logic;
SIGNAL \FD|ULA|soma[27]~55\ : std_logic;
SIGNAL \FD|ULA|soma[28]~57\ : std_logic;
SIGNAL \FD|ULA|soma[29]~59\ : std_logic;
SIGNAL \FD|ULA|soma[30]~60_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~3_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[28]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[29]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[31]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[32]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[34]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[30]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~7_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~58_combout\ : std_logic;
SIGNAL \FD|ULA|soma[29]~58_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[34]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[29]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~9_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~56_combout\ : std_logic;
SIGNAL \FD|ULA|soma[28]~56_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[33]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[28]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~11_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~54_combout\ : std_logic;
SIGNAL \FD|ULA|soma[27]~54_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~13_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~52_combout\ : std_logic;
SIGNAL \FD|ULA|soma[26]~52_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[31]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[26]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~15_combout\ : std_logic;
SIGNAL \FD|ULA|soma[25]~50_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~50_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[25]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~16_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~17_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[24]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~48_combout\ : std_logic;
SIGNAL \FD|ULA|soma[24]~48_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[29]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[24]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~19_combout\ : std_logic;
SIGNAL \FD|ULA|soma[23]~46_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~46_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[28]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[23]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~20_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~21_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[22]~10_combout\ : std_logic;
SIGNAL \FD|ULA|soma[22]~44_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~44_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[27]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[22]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~22_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~23_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~42_combout\ : std_logic;
SIGNAL \FD|ULA|soma[21]~42_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[21]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~25_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~40_combout\ : std_logic;
SIGNAL \FD|ULA|soma[20]~40_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[25]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[20]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~1_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|ULA|soma[19]~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[24]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[19]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~29_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[18]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~36_combout\ : std_logic;
SIGNAL \FD|ULA|soma[18]~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[23]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[17]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[19]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[20]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[21]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[22]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[23]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[18]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~31_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[17]~15_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~34_combout\ : std_logic;
SIGNAL \FD|ULA|soma[17]~34_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[22]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[17]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~42_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~43_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[16]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|ULA|Add1~32_combout\ : std_logic;
SIGNAL \FD|ULA|soma[16]~32_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[16]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~45_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[15]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|ULA|soma[15]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~30_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[20]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[15]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~36_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~37_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[14]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~28_combout\ : std_logic;
SIGNAL \FD|ULA|soma[14]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[14]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~39_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~26_combout\ : std_logic;
SIGNAL \FD|ULA|soma[13]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[13]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~41_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~24_combout\ : std_logic;
SIGNAL \FD|ULA|soma[12]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[17]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~46_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~47_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|ULA|Add1~22_combout\ : std_logic;
SIGNAL \FD|ULA|soma[11]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[11]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~50_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~51_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|ULA|soma[10]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~6_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~20_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~5_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[15]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[10]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~57_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[9]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|ULA|Add1~18_combout\ : std_logic;
SIGNAL \FD|ULA|soma[9]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[9]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~49_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[8]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~16_combout\ : std_logic;
SIGNAL \FD|ULA|soma[8]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[8]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~51_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~14_combout\ : std_logic;
SIGNAL \FD|ULA|soma[7]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|REG_4|data_s[12]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[7]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~52_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~53_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[6]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~12_combout\ : std_logic;
SIGNAL \FD|ULA|soma[6]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[6]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~54_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[5]~27_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~10_combout\ : std_logic;
SIGNAL \FD|ULA|soma[5]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|REG_4|data_s[10]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[5]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~57_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~8_combout\ : std_logic;
SIGNAL \FD|ULA|soma[4]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[9]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[4]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~58_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~59_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[3]~29_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~6_combout\ : std_logic;
SIGNAL \FD|ULA|soma[3]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[8]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[3]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~61_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[2]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~4_combout\ : std_logic;
SIGNAL \FD|ULA|soma[2]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~3_combout\ : std_logic;
SIGNAL \FD|REG_4|data_s[7]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[2]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~62_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~63_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[1]~31_combout\ : std_logic;
SIGNAL \FD|ULA|soma[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[1]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~1_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~0_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~5_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~2_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~3_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[31]~1_combout\ : std_logic;
SIGNAL \FD|ULA|soma[30]~61\ : std_logic;
SIGNAL \FD|ULA|soma[31]~62_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[31]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~61\ : std_logic;
SIGNAL \FD|ULA|Add1~62_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~8_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~9_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~5_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~6_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~7_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~10_combout\ : std_logic;
SIGNAL \FD|sel_mux_beq~combout\ : std_logic;
SIGNAL \FD|Somador|saida[4]~5\ : std_logic;
SIGNAL \FD|Somador|saida[5]~6_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[111]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[110]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~1\ : std_logic;
SIGNAL \FD|Somador|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[72]~31\ : std_logic;
SIGNAL \FD|REG_3|data_s[73]~33\ : std_logic;
SIGNAL \FD|REG_3|data_s[74]~35\ : std_logic;
SIGNAL \FD|REG_3|data_s[75]~36_combout\ : std_logic;
SIGNAL \FD|PC|data_s[5]~3_combout\ : std_logic;
SIGNAL \FD|Somador|saida[5]~7\ : std_logic;
SIGNAL \FD|Somador|saida[6]~8_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[112]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[75]~37\ : std_logic;
SIGNAL \FD|REG_3|data_s[76]~38_combout\ : std_logic;
SIGNAL \FD|PC|data_s[6]~4_combout\ : std_logic;
SIGNAL \FD|Somador|saida[6]~9\ : std_logic;
SIGNAL \FD|Somador|saida[7]~10_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[113]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[76]~39\ : std_logic;
SIGNAL \FD|REG_3|data_s[77]~40_combout\ : std_logic;
SIGNAL \FD|PC|data_s[7]~5_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~21_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~28_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[73]~32_combout\ : std_logic;
SIGNAL \FD|PC|data_s[3]~1_combout\ : std_logic;
SIGNAL \FD|Somador|saida[3]~3\ : std_logic;
SIGNAL \FD|Somador|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[74]~34_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~15_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~16_combout\ : std_logic;
SIGNAL \FD|UC|pontosDeControle[10]~0_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[70]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[7]~11\ : std_logic;
SIGNAL \FD|Somador|saida[8]~12_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[114]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[77]~41\ : std_logic;
SIGNAL \FD|REG_3|data_s[78]~42_combout\ : std_logic;
SIGNAL \FD|PC|data_s[8]~6_combout\ : std_logic;
SIGNAL \FD|Somador|saida[8]~13\ : std_logic;
SIGNAL \FD|Somador|saida[9]~14_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[78]~43\ : std_logic;
SIGNAL \FD|REG_3|data_s[79]~44_combout\ : std_logic;
SIGNAL \FD|PC|data_s[9]~7_combout\ : std_logic;
SIGNAL \FD|PC|data_s[9]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[9]~15\ : std_logic;
SIGNAL \FD|Somador|saida[10]~16_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[116]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[79]~45\ : std_logic;
SIGNAL \FD|REG_3|data_s[80]~46_combout\ : std_logic;
SIGNAL \FD|PC|data_s[10]~8_combout\ : std_logic;
SIGNAL \FD|Somador|saida[10]~17\ : std_logic;
SIGNAL \FD|Somador|saida[11]~18_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[80]~47\ : std_logic;
SIGNAL \FD|REG_3|data_s[81]~48_combout\ : std_logic;
SIGNAL \FD|PC|data_s[11]~9_combout\ : std_logic;
SIGNAL \FD|Somador|saida[11]~19\ : std_logic;
SIGNAL \FD|Somador|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[118]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[81]~49\ : std_logic;
SIGNAL \FD|REG_3|data_s[82]~50_combout\ : std_logic;
SIGNAL \FD|PC|data_s[12]~10_combout\ : std_logic;
SIGNAL \FD|Somador|saida[12]~21\ : std_logic;
SIGNAL \FD|Somador|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[82]~51\ : std_logic;
SIGNAL \FD|REG_3|data_s[83]~52_combout\ : std_logic;
SIGNAL \FD|PC|data_s[13]~11_combout\ : std_logic;
SIGNAL \FD|Somador|saida[13]~23\ : std_logic;
SIGNAL \FD|Somador|saida[14]~24_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[83]~53\ : std_logic;
SIGNAL \FD|REG_3|data_s[84]~54_combout\ : std_logic;
SIGNAL \FD|PC|data_s[14]~12_combout\ : std_logic;
SIGNAL \FD|Somador|saida[14]~25\ : std_logic;
SIGNAL \FD|Somador|saida[15]~26_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[121]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[84]~55\ : std_logic;
SIGNAL \FD|REG_3|data_s[85]~56_combout\ : std_logic;
SIGNAL \FD|PC|data_s[15]~13_combout\ : std_logic;
SIGNAL \FD|Somador|saida[15]~27\ : std_logic;
SIGNAL \FD|Somador|saida[16]~28_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[122]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[85]~57\ : std_logic;
SIGNAL \FD|REG_3|data_s[86]~58_combout\ : std_logic;
SIGNAL \FD|PC|data_s[16]~14_combout\ : std_logic;
SIGNAL \FD|Somador|saida[16]~29\ : std_logic;
SIGNAL \FD|Somador|saida[17]~30_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[123]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[86]~59\ : std_logic;
SIGNAL \FD|REG_3|data_s[87]~60_combout\ : std_logic;
SIGNAL \FD|PC|data_s[17]~15_combout\ : std_logic;
SIGNAL \FD|Somador|saida[17]~31\ : std_logic;
SIGNAL \FD|Somador|saida[18]~32_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[124]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[87]~61\ : std_logic;
SIGNAL \FD|REG_3|data_s[88]~62_combout\ : std_logic;
SIGNAL \FD|PC|data_s[18]~16_combout\ : std_logic;
SIGNAL \FD|Somador|saida[18]~33\ : std_logic;
SIGNAL \FD|Somador|saida[19]~34_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[125]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[88]~63\ : std_logic;
SIGNAL \FD|REG_3|data_s[89]~64_combout\ : std_logic;
SIGNAL \FD|PC|data_s[19]~17_combout\ : std_logic;
SIGNAL \FD|Somador|saida[19]~35\ : std_logic;
SIGNAL \FD|Somador|saida[20]~36_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[126]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[89]~65\ : std_logic;
SIGNAL \FD|REG_3|data_s[90]~66_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[20]~1_combout\ : std_logic;
SIGNAL \FD|Somador|saida[20]~37\ : std_logic;
SIGNAL \FD|Somador|saida[21]~38_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[90]~67\ : std_logic;
SIGNAL \FD|REG_3|data_s[91]~68_combout\ : std_logic;
SIGNAL \FD|PC|data_s[21]~18_combout\ : std_logic;
SIGNAL \FD|Somador|saida[21]~39\ : std_logic;
SIGNAL \FD|Somador|saida[22]~40_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[128]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[91]~69\ : std_logic;
SIGNAL \FD|REG_3|data_s[92]~70_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[22]~2_combout\ : std_logic;
SIGNAL \FD|Somador|saida[22]~41\ : std_logic;
SIGNAL \FD|Somador|saida[23]~42_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[129]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[92]~71\ : std_logic;
SIGNAL \FD|REG_3|data_s[93]~72_combout\ : std_logic;
SIGNAL \FD|PC|data_s[23]~19_combout\ : std_logic;
SIGNAL \FD|Somador|saida[23]~43\ : std_logic;
SIGNAL \FD|Somador|saida[24]~44_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[130]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[93]~73\ : std_logic;
SIGNAL \FD|REG_3|data_s[94]~74_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[24]~3_combout\ : std_logic;
SIGNAL \FD|Somador|saida[24]~45\ : std_logic;
SIGNAL \FD|Somador|saida[25]~46_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[94]~75\ : std_logic;
SIGNAL \FD|REG_3|data_s[95]~76_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[25]~4_combout\ : std_logic;
SIGNAL \FD|Somador|saida[25]~47\ : std_logic;
SIGNAL \FD|Somador|saida[26]~48_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[95]~77\ : std_logic;
SIGNAL \FD|REG_3|data_s[96]~78_combout\ : std_logic;
SIGNAL \FD|PC|data_s[26]~20_combout\ : std_logic;
SIGNAL \FD|Somador|saida[26]~49\ : std_logic;
SIGNAL \FD|Somador|saida[27]~50_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[133]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[96]~79\ : std_logic;
SIGNAL \FD|REG_3|data_s[97]~80_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|Somador|saida[27]~51\ : std_logic;
SIGNAL \FD|Somador|saida[28]~52_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[134]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[97]~81\ : std_logic;
SIGNAL \FD|REG_3|data_s[98]~82_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[28]~6_combout\ : std_logic;
SIGNAL \FD|Somador|saida[28]~53\ : std_logic;
SIGNAL \FD|Somador|saida[29]~54_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[135]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[98]~83\ : std_logic;
SIGNAL \FD|REG_3|data_s[99]~84_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[29]~7_combout\ : std_logic;
SIGNAL \FD|Somador|saida[29]~55\ : std_logic;
SIGNAL \FD|Somador|saida[30]~56_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[136]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[99]~85\ : std_logic;
SIGNAL \FD|REG_3|data_s[100]~86_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[30]~8_combout\ : std_logic;
SIGNAL \FD|Somador|saida[30]~57\ : std_logic;
SIGNAL \FD|Somador|saida[31]~58_combout\ : std_logic;
SIGNAL \FD|REG_2|data_s[137]~feeder_combout\ : std_logic;
SIGNAL \FD|REG_3|data_s[100]~87\ : std_logic;
SIGNAL \FD|REG_3|data_s[101]~88_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[31]~9_combout\ : std_logic;
SIGNAL \H0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \H0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \H0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \H0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \H0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \H0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \H0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \H1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \H1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \H1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \H1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \H1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \H1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \H1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \H2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \H2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \H2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \H2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \H2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \H2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \H2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \H3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \H3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \H3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \H3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \H3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \H3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \H3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \H4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \H4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \H4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \H4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \H4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \H4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \H4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \H5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \H5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \H5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \H5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \H5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \H5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \H5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \H6|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \H6|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \H6|rascSaida7seg~2_combout\ : std_logic;
SIGNAL \H6|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \H6|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \H6|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \H6|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \H7|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \H7|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \H7|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \H7|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \H7|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \H7|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \H7|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|REG_1|data_s\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|REG_3|data_s\ : std_logic_vector(106 DOWNTO 0);
SIGNAL \FD|REG_4|data_s\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \FD|REG_2|data_s\ : std_logic_vector(147 DOWNTO 0);
SIGNAL \H6|ALT_INV_rascSaida7seg[4]~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY <= KEY;
PC_out <= ww_PC_out;
ULA_out <= ww_ULA_out;
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

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~1_combout\ & \FD|mux_Ula_Memoria|saida[30]~2_combout\ & \FD|mux_Ula_Memoria|saida[29]~3_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~4_combout\ & \FD|mux_Ula_Memoria|saida[27]~5_combout\ & \FD|mux_Ula_Memoria|saida[26]~6_combout\ & \FD|mux_Ula_Memoria|saida[25]~7_combout\ & \FD|mux_Ula_Memoria|saida[24]~8_combout\ & \FD|mux_Ula_Memoria|saida[23]~9_combout\
& \FD|mux_Ula_Memoria|saida[22]~10_combout\ & \FD|mux_Ula_Memoria|saida[21]~11_combout\ & \FD|mux_Ula_Memoria|saida[20]~12_combout\ & \FD|mux_Ula_Memoria|saida[19]~13_combout\ & \FD|mux_Ula_Memoria|saida[18]~14_combout\ & 
\FD|mux_Ula_Memoria|saida[17]~15_combout\ & \FD|mux_Ula_Memoria|saida[16]~16_combout\ & \FD|mux_Ula_Memoria|saida[15]~17_combout\ & \FD|mux_Ula_Memoria|saida[14]~18_combout\ & \FD|mux_Ula_Memoria|saida[13]~19_combout\ & 
\FD|mux_Ula_Memoria|saida[12]~20_combout\ & \FD|mux_Ula_Memoria|saida[11]~21_combout\ & \FD|mux_Ula_Memoria|saida[10]~22_combout\ & \FD|mux_Ula_Memoria|saida[9]~23_combout\ & \FD|mux_Ula_Memoria|saida[8]~24_combout\ & 
\FD|mux_Ula_Memoria|saida[7]~25_combout\ & \FD|mux_Ula_Memoria|saida[6]~26_combout\ & \FD|mux_Ula_Memoria|saida[5]~27_combout\ & \FD|mux_Ula_Memoria|saida[4]~28_combout\ & \FD|mux_Ula_Memoria|saida[3]~29_combout\ & \FD|mux_Ula_Memoria|saida[2]~30_combout\
& \FD|mux_Ula_Memoria|saida[1]~31_combout\ & \FD|mux_Ula_Memoria|saida[0]~0_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_4|data_s\(2) & \FD|REG_4|data_s\(3) & \FD|REG_4|data_s\(2) & \FD|REG_4|data_s\(1) & \FD|REG_4|data_s\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~32_combout\ & \~GND~combout\ & \FD|ROM|memROM~30_combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~1_combout\ & \FD|mux_Ula_Memoria|saida[30]~2_combout\ & \FD|mux_Ula_Memoria|saida[29]~3_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~4_combout\ & \FD|mux_Ula_Memoria|saida[27]~5_combout\ & \FD|mux_Ula_Memoria|saida[26]~6_combout\ & \FD|mux_Ula_Memoria|saida[25]~7_combout\ & \FD|mux_Ula_Memoria|saida[24]~8_combout\ & \FD|mux_Ula_Memoria|saida[23]~9_combout\
& \FD|mux_Ula_Memoria|saida[22]~10_combout\ & \FD|mux_Ula_Memoria|saida[21]~11_combout\ & \FD|mux_Ula_Memoria|saida[20]~12_combout\ & \FD|mux_Ula_Memoria|saida[19]~13_combout\ & \FD|mux_Ula_Memoria|saida[18]~14_combout\ & 
\FD|mux_Ula_Memoria|saida[17]~15_combout\ & \FD|mux_Ula_Memoria|saida[16]~16_combout\ & \FD|mux_Ula_Memoria|saida[15]~17_combout\ & \FD|mux_Ula_Memoria|saida[14]~18_combout\ & \FD|mux_Ula_Memoria|saida[13]~19_combout\ & 
\FD|mux_Ula_Memoria|saida[12]~20_combout\ & \FD|mux_Ula_Memoria|saida[11]~21_combout\ & \FD|mux_Ula_Memoria|saida[10]~22_combout\ & \FD|mux_Ula_Memoria|saida[9]~23_combout\ & \FD|mux_Ula_Memoria|saida[8]~24_combout\ & 
\FD|mux_Ula_Memoria|saida[7]~25_combout\ & \FD|mux_Ula_Memoria|saida[6]~26_combout\ & \FD|mux_Ula_Memoria|saida[5]~27_combout\ & \FD|mux_Ula_Memoria|saida[4]~28_combout\ & \FD|mux_Ula_Memoria|saida[3]~29_combout\ & \FD|mux_Ula_Memoria|saida[2]~30_combout\
& \FD|mux_Ula_Memoria|saida[1]~31_combout\ & \FD|mux_Ula_Memoria|saida[0]~0_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_4|data_s\(2) & \FD|REG_4|data_s\(3) & \FD|REG_4|data_s\(2) & \FD|REG_4|data_s\(1) & \FD|REG_4|data_s\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~33_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|REG_3|data_s\(36) & \FD|REG_3|data_s\(35) & \FD|REG_3|data_s\(34) & \FD|REG_3|data_s\(33) & \FD|REG_3|data_s\(32) & \FD|REG_3|data_s\(31) & 
\FD|REG_3|data_s\(30) & \FD|REG_3|data_s\(29) & \FD|REG_3|data_s\(28) & \FD|REG_3|data_s\(27) & \FD|REG_3|data_s\(26) & \FD|REG_3|data_s\(25) & \FD|REG_3|data_s\(24) & \FD|REG_3|data_s\(5));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|REG_3|data_s\(44) & \FD|REG_3|data_s\(43) & \FD|REG_3|data_s\(42) & \FD|REG_3|data_s\(41) & \FD|REG_3|data_s\(40) & \FD|REG_3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\FD|REG_3|data_s\(23) & \FD|REG_3|data_s\(22) & \FD|REG_3|data_s\(21) & \FD|REG_3|data_s\(20) & \FD|REG_3|data_s\(19) & \FD|REG_3|data_s\(18) & \FD|REG_3|data_s\(17) & 
\FD|REG_3|data_s\(16) & \FD|REG_3|data_s\(15) & \FD|REG_3|data_s\(14) & \FD|REG_3|data_s\(13) & \FD|REG_3|data_s\(12) & \FD|REG_3|data_s\(11) & \FD|REG_3|data_s\(10) & \FD|REG_3|data_s\(9) & \FD|REG_3|data_s\(8) & \FD|REG_3|data_s\(7) & 
\FD|REG_3|data_s\(6));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\FD|REG_3|data_s\(44) & \FD|REG_3|data_s\(43) & \FD|REG_3|data_s\(42) & \FD|REG_3|data_s\(41) & \FD|REG_3|data_s\(40) & \FD|REG_3|data_s\(39));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(4);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(5);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(6);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(7);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(8);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(9);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(10);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(11);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(12);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(13);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(14);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(15);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(16);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(17);
\H6|ALT_INV_rascSaida7seg[4]~4_combout\ <= NOT \H6|rascSaida7seg[4]~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y58_N23
\PC_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => \PC_out[0]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\PC_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => \PC_out[1]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\PC_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(2),
	devoe => ww_devoe,
	o => \PC_out[2]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\PC_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(3),
	devoe => ww_devoe,
	o => \PC_out[3]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\PC_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(4),
	devoe => ww_devoe,
	o => \PC_out[4]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\PC_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(5),
	devoe => ww_devoe,
	o => \PC_out[5]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\PC_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(6),
	devoe => ww_devoe,
	o => \PC_out[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\PC_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(7),
	devoe => ww_devoe,
	o => \PC_out[7]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\PC_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(8),
	devoe => ww_devoe,
	o => \PC_out[8]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\PC_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(9),
	devoe => ww_devoe,
	o => \PC_out[9]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\PC_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(10),
	devoe => ww_devoe,
	o => \PC_out[10]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\PC_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(11),
	devoe => ww_devoe,
	o => \PC_out[11]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\PC_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(12),
	devoe => ww_devoe,
	o => \PC_out[12]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\PC_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(13),
	devoe => ww_devoe,
	o => \PC_out[13]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\PC_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(14),
	devoe => ww_devoe,
	o => \PC_out[14]~output_o\);

-- Location: IOOBUF_X115_Y43_N9
\PC_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(15),
	devoe => ww_devoe,
	o => \PC_out[15]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\PC_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(16),
	devoe => ww_devoe,
	o => \PC_out[16]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\PC_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(17),
	devoe => ww_devoe,
	o => \PC_out[17]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\PC_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(18),
	devoe => ww_devoe,
	o => \PC_out[18]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\PC_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(19),
	devoe => ww_devoe,
	o => \PC_out[19]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\PC_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(20),
	devoe => ww_devoe,
	o => \PC_out[20]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\PC_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(21),
	devoe => ww_devoe,
	o => \PC_out[21]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\PC_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(22),
	devoe => ww_devoe,
	o => \PC_out[22]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\PC_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(23),
	devoe => ww_devoe,
	o => \PC_out[23]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\PC_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(24),
	devoe => ww_devoe,
	o => \PC_out[24]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\PC_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(25),
	devoe => ww_devoe,
	o => \PC_out[25]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\PC_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(26),
	devoe => ww_devoe,
	o => \PC_out[26]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\PC_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(27),
	devoe => ww_devoe,
	o => \PC_out[27]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\PC_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(28),
	devoe => ww_devoe,
	o => \PC_out[28]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\PC_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(29),
	devoe => ww_devoe,
	o => \PC_out[29]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\PC_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(30),
	devoe => ww_devoe,
	o => \PC_out[30]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\PC_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(31),
	devoe => ww_devoe,
	o => \PC_out[31]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\ULA_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux31~5_combout\,
	devoe => ww_devoe,
	o => \ULA_out[0]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\ULA_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux30~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[1]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\ULA_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[2]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\ULA_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux28~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[3]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\ULA_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux27~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[4]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\ULA_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux26~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\ULA_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux25~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[6]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\ULA_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux24~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[7]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\ULA_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux23~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[8]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\ULA_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux22~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[9]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\ULA_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux21~5_combout\,
	devoe => ww_devoe,
	o => \ULA_out[10]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\ULA_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux20~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[11]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\ULA_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux19~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[12]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\ULA_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux18~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[13]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\ULA_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux17~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[14]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\ULA_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[15]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\ULA_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux15~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[16]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\ULA_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux14~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[17]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\ULA_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux13~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[18]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\ULA_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[19]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\ULA_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[20]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\ULA_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux10~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[21]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\ULA_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux9~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[22]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\ULA_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux8~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[23]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\ULA_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[24]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\ULA_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[25]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\ULA_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[26]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\ULA_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[27]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\ULA_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[28]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\ULA_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[29]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\ULA_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[30]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\ULA_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \ULA_out[31]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|rascSaida7seg[0]~0_combout\,
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
	i => \H0|rascSaida7seg[1]~1_combout\,
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
	i => \H0|rascSaida7seg[2]~2_combout\,
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
	i => \H0|rascSaida7seg[3]~3_combout\,
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
	i => \H0|rascSaida7seg[4]~4_combout\,
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
	i => \H0|rascSaida7seg[5]~5_combout\,
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
	i => \H0|rascSaida7seg[6]~6_combout\,
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
	i => \H1|rascSaida7seg[0]~0_combout\,
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
	i => \H1|rascSaida7seg[1]~1_combout\,
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
	i => \H1|rascSaida7seg[2]~2_combout\,
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
	i => \H1|rascSaida7seg[3]~3_combout\,
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
	i => \H1|rascSaida7seg[4]~4_combout\,
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
	i => \H1|rascSaida7seg[5]~5_combout\,
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
	i => \H1|rascSaida7seg[6]~6_combout\,
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
	i => \H2|rascSaida7seg[0]~0_combout\,
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
	i => \H2|rascSaida7seg[1]~1_combout\,
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
	i => \H2|rascSaida7seg[2]~2_combout\,
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
	i => \H2|rascSaida7seg[3]~3_combout\,
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
	i => \H2|rascSaida7seg[4]~4_combout\,
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
	i => \H2|rascSaida7seg[5]~5_combout\,
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
	i => \H2|rascSaida7seg[6]~6_combout\,
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
	i => \H3|rascSaida7seg[0]~0_combout\,
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
	i => \H3|rascSaida7seg[1]~1_combout\,
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
	i => \H3|rascSaida7seg[2]~2_combout\,
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
	i => \H3|rascSaida7seg[3]~3_combout\,
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
	i => \H3|rascSaida7seg[4]~4_combout\,
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
	i => \H3|rascSaida7seg[5]~5_combout\,
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
	i => \H3|rascSaida7seg[6]~6_combout\,
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
	i => \H4|rascSaida7seg[0]~0_combout\,
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
	i => \H4|rascSaida7seg[1]~1_combout\,
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
	i => \H4|rascSaida7seg[2]~2_combout\,
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
	i => \H4|rascSaida7seg[3]~3_combout\,
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
	i => \H4|rascSaida7seg[4]~4_combout\,
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
	i => \H4|rascSaida7seg[5]~5_combout\,
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
	i => \H4|rascSaida7seg[6]~6_combout\,
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
	i => \H5|rascSaida7seg[0]~0_combout\,
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
	i => \H5|rascSaida7seg[1]~1_combout\,
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
	i => \H5|rascSaida7seg[2]~2_combout\,
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
	i => \H5|rascSaida7seg[3]~3_combout\,
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
	i => \H5|rascSaida7seg[4]~4_combout\,
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
	i => \H5|rascSaida7seg[5]~5_combout\,
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
	i => \H5|rascSaida7seg[6]~6_combout\,
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
	i => \H6|rascSaida7seg[0]~0_combout\,
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
	i => \H6|rascSaida7seg[1]~1_combout\,
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
	i => \H6|rascSaida7seg~2_combout\,
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
	i => \H6|rascSaida7seg[3]~3_combout\,
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
	i => \H6|ALT_INV_rascSaida7seg[4]~4_combout\,
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
	i => \H6|rascSaida7seg[5]~5_combout\,
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
	i => \H6|rascSaida7seg[6]~6_combout\,
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
	i => \H7|rascSaida7seg[0]~0_combout\,
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
	i => \H7|rascSaida7seg[1]~1_combout\,
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
	i => \H7|rascSaida7seg[2]~2_combout\,
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
	i => \H7|rascSaida7seg[3]~3_combout\,
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
	i => \H7|rascSaida7seg[4]~4_combout\,
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
	i => \H7|rascSaida7seg[5]~5_combout\,
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
	i => \H7|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X113_Y40_N26
\FD|ROM|memROM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~19_combout\ = (\FD|PC|data_s\(3) & (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(2) & \FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(2) & !\FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~19_combout\);

-- Location: LCCOMB_X113_Y40_N30
\FD|ROM|memROM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~20_combout\ = (!\FD|PC|data_s\(7) & (\FD|ROM|memROM~19_combout\ & !\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~19_combout\,
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~20_combout\);

-- Location: FF_X113_Y40_N31
\FD|REG_1|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(0));

-- Location: LCCOMB_X108_Y39_N4
\FD|REG_2|data_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[10]~feeder_combout\ = \FD|REG_1|data_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(0),
	combout => \FD|REG_2|data_s[10]~feeder_combout\);

-- Location: FF_X108_Y39_N5
\FD|REG_2|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(10));

-- Location: LCCOMB_X114_Y43_N2
\FD|Somador|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[2]~0_combout\ = \FD|PC|data_s\(2) $ (VCC)
-- \FD|Somador|saida[2]~1\ = CARRY(\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datad => VCC,
	combout => \FD|Somador|saida[2]~0_combout\,
	cout => \FD|Somador|saida[2]~1\);

-- Location: FF_X114_Y43_N3
\FD|REG_1|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(34));

-- Location: LCCOMB_X114_Y39_N0
\FD|REG_2|data_s[108]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[108]~feeder_combout\ = \FD|REG_1|data_s\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(34),
	combout => \FD|REG_2|data_s[108]~feeder_combout\);

-- Location: FF_X114_Y39_N1
\FD|REG_2|data_s[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[108]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(108));

-- Location: LCCOMB_X114_Y39_N2
\FD|REG_3|data_s[72]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[72]~30_combout\ = (\FD|REG_2|data_s\(10) & (\FD|REG_2|data_s\(108) $ (VCC))) # (!\FD|REG_2|data_s\(10) & (\FD|REG_2|data_s\(108) & VCC))
-- \FD|REG_3|data_s[72]~31\ = CARRY((\FD|REG_2|data_s\(10) & \FD|REG_2|data_s\(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(10),
	datab => \FD|REG_2|data_s\(108),
	datad => VCC,
	combout => \FD|REG_3|data_s[72]~30_combout\,
	cout => \FD|REG_3|data_s[72]~31\);

-- Location: LCCOMB_X113_Y39_N20
\FD|REG_3|data_s[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[72]~feeder_combout\ = \FD|REG_3|data_s[72]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s[72]~30_combout\,
	combout => \FD|REG_3|data_s[72]~feeder_combout\);

-- Location: FF_X113_Y39_N21
\FD|REG_3|data_s[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(72));

-- Location: LCCOMB_X113_Y43_N8
\FD|PC|data_s[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[2]~0_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(72))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(72),
	datab => \FD|Somador|saida[2]~0_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[2]~0_combout\);

-- Location: FF_X113_Y43_N9
\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[2]~0_combout\,
	asdata => \FD|REG_1|data_s\(0),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

-- Location: LCCOMB_X113_Y41_N18
\FD|ROM|memROM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~17_combout\ = (\FD|PC|data_s\(3) & !\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~17_combout\);

-- Location: LCCOMB_X113_Y41_N16
\FD|ROM|memROM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~14_combout\ = (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~14_combout\);

-- Location: LCCOMB_X113_Y41_N20
\FD|ROM|memROM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~18_combout\ = (\FD|PC|data_s\(4) & (\FD|ROM|memROM~17_combout\ & (\FD|ROM|memROM~14_combout\ & \FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|ROM|memROM~17_combout\,
	datac => \FD|ROM|memROM~14_combout\,
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~18_combout\);

-- Location: FF_X113_Y41_N21
\FD|REG_1|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(28));

-- Location: LCCOMB_X113_Y41_N6
\FD|ROM|memROM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = (\FD|PC|data_s\(4)) # ((\FD|PC|data_s\(6) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(3)))) # (!\FD|PC|data_s\(6) & ((\FD|PC|data_s\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~12_combout\);

-- Location: LCCOMB_X113_Y41_N14
\FD|ROM|memROM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = (!\FD|ROM|memROM~12_combout\ & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~12_combout\,
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~13_combout\);

-- Location: FF_X113_Y41_N15
\FD|REG_1|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(27));

-- Location: FF_X113_Y41_N9
\FD|REG_1|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(31));

-- Location: LCCOMB_X106_Y40_N14
\FD|UC|pontosDeControle[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC|pontosDeControle[0]~1_combout\ = (\FD|REG_1|data_s\(28) & (!\FD|REG_1|data_s\(29) & (!\FD|REG_1|data_s\(27) & !\FD|REG_1|data_s\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_1|data_s\(28),
	datab => \FD|REG_1|data_s\(29),
	datac => \FD|REG_1|data_s\(27),
	datad => \FD|REG_1|data_s\(31),
	combout => \FD|UC|pontosDeControle[0]~1_combout\);

-- Location: FF_X110_Y40_N11
\FD|REG_2|data_s[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|UC|pontosDeControle[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(139));

-- Location: FF_X112_Y38_N27
\FD|REG_3|data_s[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(139),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(104));

-- Location: LCCOMB_X103_Y39_N10
\FD|BR|bancoReg_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X103_Y39_N11
\FD|BR|bancoReg_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(74));

-- Location: LCCOMB_X106_Y40_N26
\FD|UC|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC|Equal4~0_combout\ = (!\FD|REG_1|data_s\(27) & (!\FD|REG_1|data_s\(29) & (!\FD|REG_1|data_s\(28) & !\FD|REG_1|data_s\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_1|data_s\(27),
	datab => \FD|REG_1|data_s\(29),
	datac => \FD|REG_1|data_s\(28),
	datad => \FD|REG_1|data_s\(31),
	combout => \FD|UC|Equal4~0_combout\);

-- Location: FF_X106_Y40_N27
\FD|REG_2|data_s[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|UC|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(142));

-- Location: FF_X108_Y39_N17
\FD|REG_2|data_s[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(41));

-- Location: LCCOMB_X112_Y40_N12
\FD|mux_Rd_Rt|saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[2]~2_combout\ = (\FD|REG_2|data_s\(142) & \FD|REG_2|data_s\(41))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Rd_Rt|saida[2]~2_combout\);

-- Location: LCCOMB_X113_Y40_N0
\FD|REG_3|data_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[2]~feeder_combout\ = \FD|mux_Rd_Rt|saida[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Rd_Rt|saida[2]~2_combout\,
	combout => \FD|REG_3|data_s[2]~feeder_combout\);

-- Location: FF_X113_Y40_N1
\FD|REG_3|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(2));

-- Location: FF_X114_Y40_N25
\FD|REG_4|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(2));

-- Location: LCCOMB_X111_Y42_N22
\FD|BR|bancoReg_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\ = \FD|REG_4|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_4|data_s\(2),
	combout => \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X111_Y42_N23
\FD|BR|bancoReg_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(5));

-- Location: LCCOMB_X106_Y40_N24
\FD|REG_2|data_s[143]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[143]~0_combout\ = (!\FD|REG_1|data_s\(29) & (!\FD|REG_1|data_s\(28) & (\FD|REG_1|data_s\(27) $ (!\FD|REG_1|data_s\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_1|data_s\(27),
	datab => \FD|REG_1|data_s\(29),
	datac => \FD|REG_1|data_s\(28),
	datad => \FD|REG_1|data_s\(31),
	combout => \FD|REG_2|data_s[143]~0_combout\);

-- Location: LCCOMB_X107_Y40_N6
\FD|REG_2|data_s[147]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[147]~feeder_combout\ = \FD|REG_2|data_s[143]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s[143]~0_combout\,
	combout => \FD|REG_2|data_s[147]~feeder_combout\);

-- Location: FF_X107_Y40_N7
\FD|REG_2|data_s[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[147]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(147));

-- Location: LCCOMB_X107_Y40_N24
\FD|REG_3|data_s[106]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[106]~feeder_combout\ = \FD|REG_2|data_s\(147)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(147),
	combout => \FD|REG_3|data_s[106]~feeder_combout\);

-- Location: FF_X107_Y40_N25
\FD|REG_3|data_s[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[106]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(106));

-- Location: LCCOMB_X107_Y40_N2
\FD|REG_4|data_s[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[70]~feeder_combout\ = \FD|REG_3|data_s\(106)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(106),
	combout => \FD|REG_4|data_s[70]~feeder_combout\);

-- Location: FF_X107_Y40_N3
\FD|REG_4|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(70));

-- Location: LCCOMB_X111_Y42_N18
\FD|BR|bancoReg_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\ = \FD|REG_4|data_s\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_4|data_s\(70),
	combout => \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X111_Y42_N19
\FD|BR|bancoReg_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(0));

-- Location: LCCOMB_X113_Y40_N8
\FD|ROM|memROM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~24_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(4) & ((!\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~24_combout\);

-- Location: LCCOMB_X113_Y40_N10
\FD|ROM|memROM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~30_combout\ = (!\FD|PC|data_s\(7) & (\FD|ROM|memROM~24_combout\ & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~24_combout\,
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~30_combout\);

-- Location: FF_X113_Y40_N11
\FD|REG_1|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(5));

-- Location: LCCOMB_X112_Y39_N8
\FD|REG_2|data_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[6]~feeder_combout\ = \FD|REG_1|data_s\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(5),
	combout => \FD|REG_2|data_s[6]~feeder_combout\);

-- Location: FF_X112_Y39_N9
\FD|REG_2|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(6));

-- Location: LCCOMB_X114_Y37_N12
\FD|mux_Rd_Rt|saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[1]~1_combout\ = (\FD|REG_2|data_s\(142) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(142) & (\FD|REG_2|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datac => \FD|REG_2|data_s\(6),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Rd_Rt|saida[1]~1_combout\);

-- Location: FF_X114_Y37_N13
\FD|REG_3|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Rd_Rt|saida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(1));

-- Location: FF_X114_Y40_N13
\FD|REG_4|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(1));

-- Location: FF_X111_Y42_N5
\FD|BR|bancoReg_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_4|data_s\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(3));

-- Location: LCCOMB_X111_Y42_N28
\FD|BR|bancoReg_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\ = \FD|REG_4|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_4|data_s\(2),
	combout => \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X111_Y42_N29
\FD|BR|bancoReg_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(9));

-- Location: LCCOMB_X111_Y42_N4
\FD|BR|bancoReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~41_combout\ = (!\FD|BR|bancoReg_rtl_0_bypass\(5) & (\FD|BR|bancoReg_rtl_0_bypass\(0) & (!\FD|BR|bancoReg_rtl_0_bypass\(3) & !\FD|BR|bancoReg_rtl_0_bypass\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(5),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(0),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(3),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(9),
	combout => \FD|BR|bancoReg~41_combout\);

-- Location: LCCOMB_X113_Y41_N26
\FD|ROM|memROM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~26_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~26_combout\);

-- Location: LCCOMB_X114_Y41_N10
\FD|ROM|memROM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~32_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~26_combout\,
	combout => \FD|ROM|memROM~32_combout\);

-- Location: LCCOMB_X114_Y41_N30
\FD|REG_1|data_s[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_1|data_s[19]~feeder_combout\ = \FD|ROM|memROM~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~32_combout\,
	combout => \FD|REG_1|data_s[19]~feeder_combout\);

-- Location: FF_X114_Y41_N31
\FD|REG_1|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_1|data_s[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(19));

-- Location: LCCOMB_X114_Y41_N22
\FD|REG_2|data_s[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[8]~feeder_combout\ = \FD|REG_1|data_s\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(19),
	combout => \FD|REG_2|data_s[8]~feeder_combout\);

-- Location: FF_X114_Y41_N23
\FD|REG_2|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(8));

-- Location: LCCOMB_X114_Y37_N18
\FD|mux_Rd_Rt|saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[3]~3_combout\ = (\FD|REG_2|data_s\(142) & (\FD|REG_2|data_s\(6))) # (!\FD|REG_2|data_s\(142) & ((\FD|REG_2|data_s\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(6),
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|REG_2|data_s\(8),
	combout => \FD|mux_Rd_Rt|saida[3]~3_combout\);

-- Location: FF_X114_Y37_N19
\FD|REG_3|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Rd_Rt|saida[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(3));

-- Location: LCCOMB_X114_Y37_N0
\FD|REG_4|data_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[3]~feeder_combout\ = \FD|REG_3|data_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(3),
	combout => \FD|REG_4|data_s[3]~feeder_combout\);

-- Location: FF_X114_Y37_N1
\FD|REG_4|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(3));

-- Location: LCCOMB_X112_Y40_N30
\FD|BR|bancoReg_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[7]~feeder_combout\ = \FD|REG_4|data_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_4|data_s\(3),
	combout => \FD|BR|bancoReg_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X112_Y40_N31
\FD|BR|bancoReg_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(7));

-- Location: LCCOMB_X112_Y40_N28
\FD|BR|bancoReg_rtl_0_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[8]~feeder_combout\ = \FD|ROM|memROM~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|memROM~30_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X112_Y40_N29
\FD|BR|bancoReg_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(8));

-- Location: LCCOMB_X113_Y40_N28
\FD|ROM|memROM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~25_combout\ = (\FD|PC|data_s\(2)) # ((\FD|PC|data_s\(3) & ((!\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4)))) # (!\FD|PC|data_s\(3) & ((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~25_combout\);

-- Location: LCCOMB_X113_Y40_N24
\FD|ROM|memROM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~31_combout\ = (!\FD|PC|data_s\(7) & (!\FD|ROM|memROM~25_combout\ & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datab => \FD|ROM|memROM~25_combout\,
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~31_combout\);

-- Location: LCCOMB_X113_Y40_N2
\FD|REG_1|data_s[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_1|data_s[16]~feeder_combout\ = \FD|ROM|memROM~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|memROM~31_combout\,
	combout => \FD|REG_1|data_s[16]~feeder_combout\);

-- Location: FF_X113_Y40_N3
\FD|REG_1|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_1|data_s[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(16));

-- Location: LCCOMB_X113_Y40_N6
\FD|REG_2|data_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[5]~feeder_combout\ = \FD|REG_1|data_s\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(16),
	combout => \FD|REG_2|data_s[5]~feeder_combout\);

-- Location: FF_X113_Y40_N7
\FD|REG_2|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(5));

-- Location: LCCOMB_X112_Y40_N26
\FD|mux_Rd_Rt|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[0]~0_combout\ = (\FD|REG_2|data_s\(142) & (\FD|REG_2|data_s\(41))) # (!\FD|REG_2|data_s\(142) & ((\FD|REG_2|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(41),
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|REG_2|data_s\(5),
	combout => \FD|mux_Rd_Rt|saida[0]~0_combout\);

-- Location: FF_X112_Y40_N27
\FD|REG_3|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Rd_Rt|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(0));

-- Location: FF_X112_Y40_N15
\FD|REG_4|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(0));

-- Location: FF_X112_Y40_N17
\FD|BR|bancoReg_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_4|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(1));

-- Location: LCCOMB_X113_Y40_N22
\FD|ROM|memROM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~27_combout\ = (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (((\FD|PC|data_s\(3) & \FD|PC|data_s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~27_combout\);

-- Location: LCCOMB_X113_Y40_N20
\FD|ROM|memROM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~33_combout\ = (!\FD|PC|data_s\(7) & (\FD|ROM|memROM~27_combout\ & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~27_combout\,
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~33_combout\);

-- Location: FF_X112_Y40_N5
\FD|BR|bancoReg_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|ROM|memROM~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(2));

-- Location: LCCOMB_X112_Y40_N16
\FD|BR|bancoReg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(7) & (\FD|BR|bancoReg_rtl_0_bypass\(8) & (\FD|BR|bancoReg_rtl_0_bypass\(1) $ (!\FD|BR|bancoReg_rtl_0_bypass\(2))))) # (!\FD|BR|bancoReg_rtl_0_bypass\(7) & (!\FD|BR|bancoReg_rtl_0_bypass\(8) & 
-- (\FD|BR|bancoReg_rtl_0_bypass\(1) $ (!\FD|BR|bancoReg_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(7),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(8),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(1),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(2),
	combout => \FD|BR|bancoReg~40_combout\);

-- Location: LCCOMB_X103_Y39_N28
\FD|BR|saidaA[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~2_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(74) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(74),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[31]~2_combout\);

-- Location: LCCOMB_X113_Y41_N24
\FD|ROM|memROM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~22_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(3) & (\FD|ROM|memROM~14_combout\ & !\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(3),
	datac => \FD|ROM|memROM~14_combout\,
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~22_combout\);

-- Location: FF_X113_Y41_N25
\FD|REG_1|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(2));

-- Location: FF_X108_Y39_N7
\FD|REG_2|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(12));

-- Location: LCCOMB_X111_Y39_N24
\FD|UCULA|ALUctr[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~0_combout\ = (!\FD|REG_2|data_s\(10) & (!\FD|REG_2|data_s\(12) & !\FD|REG_2|data_s\(139)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(10),
	datac => \FD|REG_2|data_s\(12),
	datad => \FD|REG_2|data_s\(139),
	combout => \FD|UCULA|ALUctr[2]~0_combout\);

-- Location: LCCOMB_X113_Y40_N18
\FD|ROM|memROM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~23_combout\ = (\FD|PC|data_s\(3) & (((\FD|PC|data_s\(2))) # (!\FD|PC|data_s\(4)))) # (!\FD|PC|data_s\(3) & ((\FD|PC|data_s\(4)) # ((\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~23_combout\);

-- Location: LCCOMB_X113_Y40_N4
\FD|ROM|memROM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~29_combout\ = (!\FD|PC|data_s\(7) & (!\FD|ROM|memROM~23_combout\ & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datab => \FD|ROM|memROM~23_combout\,
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~29_combout\);

-- Location: FF_X113_Y40_N5
\FD|REG_1|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(3));

-- Location: LCCOMB_X105_Y39_N12
\FD|REG_2|data_s[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[13]~feeder_combout\ = \FD|REG_1|data_s\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(3),
	combout => \FD|REG_2|data_s[13]~feeder_combout\);

-- Location: FF_X105_Y39_N13
\FD|REG_2|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(13));

-- Location: LCCOMB_X111_Y38_N30
\FD|UCULA|ALUctr[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~2_combout\ = ((\FD|UCULA|ALUctr[2]~0_combout\ & ((\FD|REG_2|data_s\(11)) # (!\FD|REG_2|data_s\(13))))) # (!\FD|REG_2|data_s\(142))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(11),
	datab => \FD|UCULA|ALUctr[2]~0_combout\,
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|REG_2|data_s\(13),
	combout => \FD|UCULA|ALUctr[1]~2_combout\);

-- Location: LCCOMB_X111_Y38_N24
\FD|UCULA|ALUctr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~1_combout\ = (\FD|REG_2|data_s\(142) & (\FD|REG_2|data_s\(11) & (\FD|UCULA|ALUctr[2]~0_combout\))) # (!\FD|REG_2|data_s\(142) & (((\FD|REG_2|data_s\(139)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(11),
	datab => \FD|REG_2|data_s\(142),
	datac => \FD|UCULA|ALUctr[2]~0_combout\,
	datad => \FD|REG_2|data_s\(139),
	combout => \FD|UCULA|ALUctr[2]~1_combout\);

-- Location: LCCOMB_X111_Y38_N26
\FD|ULA|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~0_combout\ = (!\FD|UCULA|ALUctr[1]~2_combout\ & !\FD|UCULA|ALUctr[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|UCULA|ALUctr[2]~1_combout\,
	combout => \FD|ULA|Mux31~0_combout\);

-- Location: LCCOMB_X108_Y39_N12
\FD|UC|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC|Equal2~0_combout\ = (\FD|REG_1|data_s\(31) & (!\FD|REG_1|data_s\(28) & \FD|REG_1|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_1|data_s\(31),
	datac => \FD|REG_1|data_s\(28),
	datad => \FD|REG_1|data_s\(27),
	combout => \FD|UC|Equal2~0_combout\);

-- Location: FF_X108_Y39_N13
\FD|REG_2|data_s[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|UC|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(138));

-- Location: LCCOMB_X103_Y38_N0
\FD|BR|bancoReg_rtl_1_bypass[73]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[73]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[31]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[31]~1_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[73]~feeder_combout\);

-- Location: FF_X103_Y38_N1
\FD|BR|bancoReg_rtl_1_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[73]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(73));

-- Location: LCCOMB_X103_Y40_N30
\FD|BR|bancoReg_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[0]~0_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X103_Y40_N31
\FD|BR|bancoReg_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(11));

-- Location: FF_X113_Y40_N21
\FD|REG_1|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(21));

-- Location: LCCOMB_X112_Y40_N0
\FD|BR|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal0~0_combout\ = (\FD|REG_1|data_s\(21)) # (\FD|REG_1|data_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_1|data_s\(21),
	datad => \FD|REG_1|data_s\(5),
	combout => \FD|BR|Equal0~0_combout\);

-- Location: LCCOMB_X103_Y38_N18
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

-- Location: LCCOMB_X114_Y44_N30
\FD|BR|bancoReg_rtl_1_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X114_Y44_N31
\FD|BR|bancoReg_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(16));

-- Location: FF_X110_Y40_N3
\FD|BR|bancoReg_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_4|data_s\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(9));

-- Location: FF_X112_Y40_N11
\FD|BR|bancoReg_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_4|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(1));

-- Location: LCCOMB_X114_Y40_N2
\FD|BR|bancoReg_rtl_1_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[3]~feeder_combout\ = \FD|REG_4|data_s\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_4|data_s\(1),
	combout => \FD|BR|bancoReg_rtl_1_bypass[3]~feeder_combout\);

-- Location: FF_X114_Y40_N3
\FD|BR|bancoReg_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(3));

-- Location: FF_X112_Y40_N23
\FD|BR|bancoReg_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|ROM|memROM~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(4));

-- Location: FF_X113_Y40_N25
\FD|BR|bancoReg_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(2));

-- Location: LCCOMB_X112_Y40_N22
\FD|BR|bancoReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(1) & (\FD|BR|bancoReg_rtl_1_bypass\(2) & (\FD|BR|bancoReg_rtl_1_bypass\(3) $ (!\FD|BR|bancoReg_rtl_1_bypass\(4))))) # (!\FD|BR|bancoReg_rtl_1_bypass\(1) & (!\FD|BR|bancoReg_rtl_1_bypass\(2) & 
-- (\FD|BR|bancoReg_rtl_1_bypass\(3) $ (!\FD|BR|bancoReg_rtl_1_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(1),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(3),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(4),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(2),
	combout => \FD|BR|bancoReg~38_combout\);

-- Location: LCCOMB_X111_Y42_N12
\FD|BR|bancoReg_rtl_1_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\ = \FD|REG_4|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_4|data_s\(2),
	combout => \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\);

-- Location: FF_X111_Y42_N13
\FD|BR|bancoReg_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(5));

-- Location: LCCOMB_X111_Y42_N16
\FD|BR|bancoReg_rtl_1_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\ = \FD|REG_4|data_s\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_4|data_s\(70),
	combout => \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X111_Y42_N17
\FD|BR|bancoReg_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(0));

-- Location: FF_X111_Y42_N3
\FD|BR|bancoReg_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_4|data_s\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(7));

-- Location: FF_X114_Y41_N11
\FD|BR|bancoReg_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(8));

-- Location: LCCOMB_X111_Y42_N2
\FD|BR|bancoReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~39_combout\ = (!\FD|BR|bancoReg_rtl_1_bypass\(5) & (\FD|BR|bancoReg_rtl_1_bypass\(0) & (\FD|BR|bancoReg_rtl_1_bypass\(7) $ (!\FD|BR|bancoReg_rtl_1_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(5),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(0),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(7),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(8),
	combout => \FD|BR|bancoReg~39_combout\);

-- Location: LCCOMB_X107_Y39_N14
\FD|BR|saidaB[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~60_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(16) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(16),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[2]~60_combout\);

-- Location: FF_X108_Y39_N1
\FD|BR|bancoReg_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[2]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(15));

-- Location: LCCOMB_X112_Y41_N16
\FD|BR|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal1~0_combout\ = (!\FD|REG_1|data_s\(19) & (!\FD|REG_1|data_s\(5) & !\FD|REG_1|data_s\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_1|data_s\(19),
	datac => \FD|REG_1|data_s\(5),
	datad => \FD|REG_1|data_s\(16),
	combout => \FD|BR|Equal1~0_combout\);

-- Location: FF_X108_Y36_N29
\FD|BR|bancoReg_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(19));

-- Location: LCCOMB_X114_Y37_N14
\FD|BR|bancoReg_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X114_Y37_N15
\FD|BR|bancoReg_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(20));

-- Location: LCCOMB_X110_Y37_N14
\FD|BR|saidaA[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~56_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(20) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(20),
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[4]~56_combout\);

-- Location: LCCOMB_X106_Y40_N30
\FD|UC|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC|Equal3~0_combout\ = (\FD|REG_1|data_s\(27) & (!\FD|REG_1|data_s\(29) & (!\FD|REG_1|data_s\(28) & \FD|REG_1|data_s\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_1|data_s\(27),
	datab => \FD|REG_1|data_s\(29),
	datac => \FD|REG_1|data_s\(28),
	datad => \FD|REG_1|data_s\(31),
	combout => \FD|UC|Equal3~0_combout\);

-- Location: FF_X106_Y40_N31
\FD|REG_2|data_s[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|UC|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(146));

-- Location: FF_X106_Y40_N5
\FD|REG_3|data_s[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(146),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(105));

-- Location: FF_X106_Y40_N3
\FD|REG_4|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(105),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(69));

-- Location: LCCOMB_X106_Y40_N6
\FD|UC|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC|Equal2~1_combout\ = (\FD|REG_1|data_s\(27) & (\FD|REG_1|data_s\(29) & (!\FD|REG_1|data_s\(28) & \FD|REG_1|data_s\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_1|data_s\(27),
	datab => \FD|REG_1|data_s\(29),
	datac => \FD|REG_1|data_s\(28),
	datad => \FD|REG_1|data_s\(31),
	combout => \FD|UC|Equal2~1_combout\);

-- Location: FF_X106_Y40_N7
\FD|REG_2|data_s[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|UC|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(143));

-- Location: LCCOMB_X105_Y40_N20
\FD|REG_3|data_s[102]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[102]~feeder_combout\ = \FD|REG_2|data_s\(143)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(143),
	combout => \FD|REG_3|data_s[102]~feeder_combout\);

-- Location: FF_X105_Y40_N21
\FD|REG_3|data_s[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[102]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(102));

-- Location: LCCOMB_X107_Y40_N20
\FD|REG_3|data_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[6]~feeder_combout\ = \FD|REG_2|data_s\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_2|data_s\(43),
	combout => \FD|REG_3|data_s[6]~feeder_combout\);

-- Location: FF_X107_Y40_N21
\FD|REG_3|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(6));

-- Location: FF_X105_Y40_N17
\FD|BR|bancoReg_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[5]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(21));

-- Location: LCCOMB_X108_Y39_N8
\FD|UCULA|ALUctr[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~3_combout\ = (\FD|REG_2|data_s\(12) & (\FD|REG_2|data_s\(10) & (!\FD|REG_2|data_s\(11) & !\FD|REG_2|data_s\(13)))) # (!\FD|REG_2|data_s\(12) & (!\FD|REG_2|data_s\(10) & (\FD|REG_2|data_s\(11) & \FD|REG_2|data_s\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(12),
	datab => \FD|REG_2|data_s\(10),
	datac => \FD|REG_2|data_s\(11),
	datad => \FD|REG_2|data_s\(13),
	combout => \FD|UCULA|ALUctr[0]~3_combout\);

-- Location: LCCOMB_X111_Y38_N0
\FD|UCULA|ALUctr[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~4_combout\ = (\FD|REG_2|data_s\(142) & (!\FD|REG_2|data_s\(139) & \FD|UCULA|ALUctr[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(142),
	datac => \FD|REG_2|data_s\(139),
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|UCULA|ALUctr[0]~4_combout\);

-- Location: LCCOMB_X111_Y38_N18
\FD|ULA|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~3_combout\ = (\FD|UCULA|ALUctr[2]~1_combout\) # ((!\FD|UCULA|ALUctr[1]~2_combout\ & \FD|UCULA|ALUctr[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|UCULA|ALUctr[2]~1_combout\,
	datad => \FD|UCULA|ALUctr[0]~4_combout\,
	combout => \FD|ULA|Mux21~3_combout\);

-- Location: LCCOMB_X111_Y38_N22
\FD|ULA|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~2_combout\ = ((\FD|UCULA|ALUctr[2]~0_combout\ & !\FD|REG_2|data_s\(13))) # (!\FD|REG_2|data_s\(142))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[2]~0_combout\,
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|REG_2|data_s\(13),
	combout => \FD|ULA|Mux21~2_combout\);

-- Location: FF_X108_Y40_N11
\FD|BR|bancoReg_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[6]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(23));

-- Location: LCCOMB_X109_Y40_N10
\FD|BR|bancoReg_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X109_Y40_N11
\FD|BR|bancoReg_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(26));

-- Location: LCCOMB_X108_Y40_N20
\FD|BR|saidaA[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~50_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(26) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(26),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[7]~50_combout\);

-- Location: FF_X105_Y39_N15
\FD|BR|bancoReg_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[7]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(25));

-- Location: LCCOMB_X106_Y39_N14
\FD|BR|bancoReg_rtl_1_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[27]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[8]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[8]~24_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[27]~feeder_combout\);

-- Location: FF_X106_Y39_N15
\FD|BR|bancoReg_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(27));

-- Location: LCCOMB_X107_Y39_N30
\FD|BR|bancoReg_rtl_1_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X107_Y39_N31
\FD|BR|bancoReg_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(28));

-- Location: LCCOMB_X107_Y39_N4
\FD|BR|saidaB[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~48_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(28) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(28),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[8]~48_combout\);

-- Location: LCCOMB_X107_Y40_N14
\FD|REG_3|data_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[7]~feeder_combout\ = \FD|REG_2|data_s\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_2|data_s\(44),
	combout => \FD|REG_3|data_s[7]~feeder_combout\);

-- Location: FF_X107_Y40_N15
\FD|REG_3|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(7));

-- Location: LCCOMB_X105_Y40_N2
\FD|REG_3|data_s[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[8]~feeder_combout\ = \FD|REG_2|data_s\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(45),
	combout => \FD|REG_3|data_s[8]~feeder_combout\);

-- Location: FF_X105_Y40_N3
\FD|REG_3|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(8));

-- Location: LCCOMB_X111_Y41_N18
\FD|BR|bancoReg_rtl_1_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X111_Y41_N19
\FD|BR|bancoReg_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(20));

-- Location: LCCOMB_X111_Y41_N12
\FD|BR|saidaB[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~56_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(20) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(20),
	combout => \FD|BR|saidaB[4]~56_combout\);

-- Location: LCCOMB_X112_Y40_N18
\FD|REG_3|data_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[10]~feeder_combout\ = \FD|REG_2|data_s\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(47),
	combout => \FD|REG_3|data_s[10]~feeder_combout\);

-- Location: FF_X112_Y40_N19
\FD|REG_3|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(10));

-- Location: FF_X108_Y40_N15
\FD|REG_3|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(11));

-- Location: LCCOMB_X106_Y40_N8
\FD|BR|bancoReg_rtl_1_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[25]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[7]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[7]~25_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[25]~feeder_combout\);

-- Location: FF_X106_Y40_N9
\FD|BR|bancoReg_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(25));

-- Location: LCCOMB_X107_Y40_N22
\FD|REG_3|data_s[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[13]~feeder_combout\ = \FD|REG_2|data_s\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(50),
	combout => \FD|REG_3|data_s[13]~feeder_combout\);

-- Location: FF_X107_Y40_N23
\FD|REG_3|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(13));

-- Location: LCCOMB_X105_Y37_N24
\FD|BR|bancoReg_rtl_1_bypass[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[35]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[12]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[12]~20_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[35]~feeder_combout\);

-- Location: FF_X105_Y37_N25
\FD|BR|bancoReg_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(35));

-- Location: LCCOMB_X114_Y44_N8
\FD|BR|bancoReg_rtl_1_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\);

-- Location: FF_X114_Y44_N9
\FD|BR|bancoReg_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(36));

-- Location: LCCOMB_X109_Y41_N22
\FD|BR|saidaB[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~40_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(36) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(36),
	combout => \FD|BR|saidaB[12]~40_combout\);

-- Location: LCCOMB_X108_Y37_N26
\FD|BR|bancoReg_rtl_0_bypass[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[37]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[13]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[13]~19_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[37]~feeder_combout\);

-- Location: FF_X108_Y37_N27
\FD|BR|bancoReg_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(37));

-- Location: LCCOMB_X114_Y37_N28
\FD|BR|bancoReg_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X114_Y37_N29
\FD|BR|bancoReg_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(38));

-- Location: LCCOMB_X110_Y37_N24
\FD|BR|saidaA[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~38_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(38) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(38),
	combout => \FD|BR|saidaA[13]~38_combout\);

-- Location: LCCOMB_X112_Y39_N28
\FD|BR|bancoReg_rtl_1_bypass[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[14]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[14]~18_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\);

-- Location: FF_X112_Y39_N29
\FD|BR|bancoReg_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(39));

-- Location: FF_X105_Y37_N13
\FD|BR|bancoReg_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(31));

-- Location: LCCOMB_X107_Y39_N12
\FD|BR|bancoReg_rtl_1_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\);

-- Location: FF_X107_Y39_N13
\FD|BR|bancoReg_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(32));

-- Location: LCCOMB_X107_Y39_N22
\FD|BR|saidaB[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~44_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(32) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(32),
	combout => \FD|BR|saidaB[10]~44_combout\);

-- Location: FF_X105_Y39_N11
\FD|BR|bancoReg_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[11]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(33));

-- Location: LCCOMB_X114_Y36_N10
\FD|BR|bancoReg_rtl_1_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\);

-- Location: FF_X114_Y36_N11
\FD|BR|bancoReg_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(46));

-- Location: LCCOMB_X107_Y38_N26
\FD|BR|saidaB[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~30_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(46) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(46),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[17]~30_combout\);

-- Location: LCCOMB_X106_Y38_N4
\FD|BR|bancoReg_rtl_1_bypass[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[45]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[17]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[17]~15_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[45]~feeder_combout\);

-- Location: FF_X106_Y38_N5
\FD|BR|bancoReg_rtl_1_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(45));

-- Location: LCCOMB_X111_Y41_N16
\FD|BR|bancoReg_rtl_1_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\);

-- Location: FF_X111_Y41_N17
\FD|BR|bancoReg_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(48));

-- Location: LCCOMB_X111_Y41_N6
\FD|BR|saidaB[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~28_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(48) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(48),
	combout => \FD|BR|saidaB[18]~28_combout\);

-- Location: LCCOMB_X103_Y38_N28
\FD|BR|bancoReg_rtl_1_bypass[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[18]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[18]~14_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\);

-- Location: FF_X103_Y38_N29
\FD|BR|bancoReg_rtl_1_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(47));

-- Location: LCCOMB_X107_Y39_N18
\FD|BR|bancoReg_rtl_1_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X107_Y39_N19
\FD|BR|bancoReg_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(12));

-- Location: LCCOMB_X107_Y39_N8
\FD|BR|saidaB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~0_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(12) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(12),
	combout => \FD|BR|saidaB[0]~0_combout\);

-- Location: LCCOMB_X103_Y39_N6
\FD|BR|bancoReg_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X103_Y39_N7
\FD|BR|bancoReg_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(52));

-- Location: LCCOMB_X103_Y39_N24
\FD|BR|saidaA[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~24_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(52) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(52),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[20]~24_combout\);

-- Location: FF_X105_Y40_N19
\FD|BR|bancoReg_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(53));

-- Location: LCCOMB_X109_Y40_N26
\FD|BR|bancoReg_rtl_1_bypass[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[22]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[22]~10_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\);

-- Location: FF_X109_Y40_N27
\FD|BR|bancoReg_rtl_1_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[55]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(55));

-- Location: LCCOMB_X106_Y38_N0
\FD|BR|bancoReg_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X106_Y38_N1
\FD|BR|bancoReg_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(58));

-- Location: LCCOMB_X106_Y38_N14
\FD|BR|saidaA[23]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~18_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(58) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(58),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[23]~18_combout\);

-- Location: FF_X105_Y38_N1
\FD|BR|bancoReg_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(57));

-- Location: FF_X103_Y38_N21
\FD|BR|bancoReg_rtl_1_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(59));

-- Location: FF_X105_Y40_N15
\FD|BR|bancoReg_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(61));

-- Location: LCCOMB_X106_Y40_N12
\FD|BR|bancoReg_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X106_Y40_N13
\FD|BR|bancoReg_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(62));

-- Location: LCCOMB_X106_Y40_N4
\FD|BR|saidaA[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~14_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(62) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(62),
	combout => \FD|BR|saidaA[25]~14_combout\);

-- Location: FF_X105_Y37_N23
\FD|BR|bancoReg_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(63));

-- Location: LCCOMB_X114_Y37_N26
\FD|BR|bancoReg_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X114_Y37_N27
\FD|BR|bancoReg_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(64));

-- Location: LCCOMB_X111_Y37_N8
\FD|BR|saidaA[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~12_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(64) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(64),
	combout => \FD|BR|saidaA[26]~12_combout\);

-- Location: LCCOMB_X110_Y40_N28
\FD|BR|bancoReg_rtl_1_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\);

-- Location: FF_X110_Y40_N29
\FD|BR|bancoReg_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(66));

-- Location: LCCOMB_X110_Y40_N2
\FD|BR|saidaB[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~10_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(66) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(66),
	combout => \FD|BR|saidaB[27]~10_combout\);

-- Location: FF_X110_Y40_N21
\FD|BR|bancoReg_rtl_1_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[27]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(65));

-- Location: FF_X105_Y40_N11
\FD|BR|bancoReg_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(67));

-- Location: LCCOMB_X106_Y40_N10
\FD|BR|bancoReg_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X106_Y40_N11
\FD|BR|bancoReg_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(68));

-- Location: LCCOMB_X106_Y40_N2
\FD|BR|saidaA[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~8_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(68) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(68),
	combout => \FD|BR|saidaA[28]~8_combout\);

-- Location: LCCOMB_X114_Y37_N16
\FD|BR|bancoReg_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X114_Y37_N17
\FD|BR|bancoReg_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(70));

-- Location: LCCOMB_X111_Y37_N30
\FD|BR|saidaA[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~6_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(70) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(70),
	combout => \FD|BR|saidaA[29]~6_combout\);

-- Location: LCCOMB_X105_Y37_N30
\FD|BR|bancoReg_rtl_0_bypass[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[69]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[29]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[29]~3_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[69]~feeder_combout\);

-- Location: FF_X105_Y37_N31
\FD|BR|bancoReg_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(69));

-- Location: LCCOMB_X114_Y37_N8
\FD|BR|bancoReg_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X114_Y37_N9
\FD|BR|bancoReg_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(72));

-- Location: LCCOMB_X111_Y37_N4
\FD|BR|saidaA[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~4_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(72) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(72),
	combout => \FD|BR|saidaA[30]~4_combout\);

-- Location: LCCOMB_X109_Y40_N20
\FD|BR|bancoReg_rtl_0_bypass[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[71]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[30]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[30]~2_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[71]~feeder_combout\);

-- Location: FF_X109_Y40_N21
\FD|BR|bancoReg_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[71]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(71));

-- Location: M9K_X104_Y38_N0
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000000D00000000C00000000B00000000A00000000900000000A000000006000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_4|data_s\(70),
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X112_Y38_N12
\FD|BR|saidaA[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~5_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[30]~4_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\))) # (!\FD|BR|saidaA[30]~4_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[30]~4_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(71),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\,
	combout => \FD|BR|saidaA[30]~5_combout\);

-- Location: FF_X112_Y38_N13
\FD|REG_2|data_s[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(104));

-- Location: LCCOMB_X106_Y39_N16
\FD|BR|bancoReg_rtl_1_bypass[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[71]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[30]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[30]~2_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[71]~feeder_combout\);

-- Location: FF_X106_Y39_N17
\FD|BR|bancoReg_rtl_1_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[71]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(71));

-- Location: M9K_X104_Y39_N0
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000000D00000000C00000000B00000000A00000000900000000A000000006000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_4|data_s\(70),
	portbre => VCC,
	clk0 => \KEY[0]~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X107_Y40_N30
\FD|BR|bancoReg_rtl_1_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\);

-- Location: FF_X107_Y40_N31
\FD|BR|bancoReg_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(72));

-- Location: LCCOMB_X107_Y39_N10
\FD|BR|saidaB[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~4_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(72) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(72),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[30]~4_combout\);

-- Location: LCCOMB_X107_Y39_N28
\FD|BR|saidaB[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~5_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[30]~4_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\))) # (!\FD|BR|saidaB[30]~4_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(71),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\,
	datad => \FD|BR|saidaB[30]~4_combout\,
	combout => \FD|BR|saidaB[30]~5_combout\);

-- Location: FF_X107_Y39_N29
\FD|REG_2|data_s[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(72));

-- Location: LCCOMB_X108_Y38_N2
\FD|mux_Banco_Ula|saida[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[30]~2_combout\ = (\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(41))) # (!\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(138),
	datac => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(72),
	combout => \FD|mux_Banco_Ula|saida[30]~2_combout\);

-- Location: FF_X105_Y37_N9
\FD|BR|bancoReg_rtl_1_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(69));

-- Location: LCCOMB_X114_Y37_N10
\FD|BR|bancoReg_rtl_1_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\);

-- Location: FF_X114_Y37_N11
\FD|BR|bancoReg_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(70));

-- Location: LCCOMB_X109_Y41_N6
\FD|BR|saidaB[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~6_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(70) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(70),
	combout => \FD|BR|saidaB[29]~6_combout\);

-- Location: LCCOMB_X108_Y41_N16
\FD|BR|saidaB[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~7_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[29]~6_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\))) # (!\FD|BR|saidaB[29]~6_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(69),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[29]~6_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\,
	combout => \FD|BR|saidaB[29]~7_combout\);

-- Location: FF_X108_Y41_N17
\FD|REG_2|data_s[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(71));

-- Location: LCCOMB_X109_Y41_N12
\FD|mux_Banco_Ula|saida[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[29]~3_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(138),
	datac => \FD|REG_2|data_s\(71),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[29]~3_combout\);

-- Location: FF_X105_Y40_N25
\FD|BR|bancoReg_rtl_1_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[28]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(67));

-- Location: LCCOMB_X110_Y40_N16
\FD|BR|bancoReg_rtl_1_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\);

-- Location: FF_X110_Y40_N17
\FD|BR|bancoReg_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(68));

-- Location: LCCOMB_X109_Y41_N0
\FD|BR|saidaB[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~8_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(68) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(68),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[28]~8_combout\);

-- Location: LCCOMB_X109_Y41_N30
\FD|BR|saidaB[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~9_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[28]~8_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\))) # (!\FD|BR|saidaB[28]~8_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(67),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[28]~8_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\,
	combout => \FD|BR|saidaB[28]~9_combout\);

-- Location: FF_X109_Y41_N31
\FD|REG_2|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(70));

-- Location: LCCOMB_X109_Y41_N28
\FD|mux_Banco_Ula|saida[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[28]~4_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(138),
	datac => \FD|REG_2|data_s\(70),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[28]~4_combout\);

-- Location: LCCOMB_X111_Y40_N2
\FD|BR|bancoReg_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X111_Y40_N3
\FD|BR|bancoReg_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(66));

-- Location: LCCOMB_X110_Y40_N22
\FD|BR|saidaA[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~10_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(66) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(66),
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[27]~10_combout\);

-- Location: FF_X110_Y40_N27
\FD|BR|bancoReg_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(65));

-- Location: LCCOMB_X110_Y40_N18
\FD|BR|saidaA[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~11_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[27]~10_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\)) # (!\FD|BR|saidaA[27]~10_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|saidaA[27]~10_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(65),
	combout => \FD|BR|saidaA[27]~11_combout\);

-- Location: FF_X110_Y40_N19
\FD|REG_2|data_s[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(101));

-- Location: LCCOMB_X114_Y41_N2
\FD|BR|bancoReg_rtl_1_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\);

-- Location: FF_X114_Y41_N3
\FD|BR|bancoReg_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(64));

-- Location: LCCOMB_X109_Y41_N26
\FD|BR|saidaB[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~12_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(64) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(64),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[26]~12_combout\);

-- Location: LCCOMB_X105_Y37_N16
\FD|BR|bancoReg_rtl_1_bypass[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[63]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[26]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[26]~6_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[63]~feeder_combout\);

-- Location: FF_X105_Y37_N17
\FD|BR|bancoReg_rtl_1_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(63));

-- Location: LCCOMB_X109_Y41_N18
\FD|BR|saidaB[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~13_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[26]~12_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\)) # (!\FD|BR|saidaB[26]~12_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[26]~12_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(63),
	combout => \FD|BR|saidaB[26]~13_combout\);

-- Location: FF_X109_Y41_N19
\FD|REG_2|data_s[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(68));

-- Location: LCCOMB_X109_Y41_N4
\FD|mux_Banco_Ula|saida[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[26]~6_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(68)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(138),
	datab => \FD|REG_2|data_s\(68),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[26]~6_combout\);

-- Location: FF_X105_Y40_N1
\FD|BR|bancoReg_rtl_1_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[25]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(61));

-- Location: LCCOMB_X114_Y44_N24
\FD|BR|bancoReg_rtl_1_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\);

-- Location: FF_X114_Y44_N25
\FD|BR|bancoReg_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(62));

-- Location: LCCOMB_X109_Y41_N16
\FD|BR|saidaB[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~14_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(62) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(62),
	combout => \FD|BR|saidaB[25]~14_combout\);

-- Location: LCCOMB_X109_Y41_N2
\FD|BR|saidaB[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~15_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[25]~14_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\))) # (!\FD|BR|saidaB[25]~14_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(61),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\,
	datad => \FD|BR|saidaB[25]~14_combout\,
	combout => \FD|BR|saidaB[25]~15_combout\);

-- Location: FF_X109_Y41_N3
\FD|REG_2|data_s[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(67));

-- Location: LCCOMB_X109_Y41_N24
\FD|mux_Banco_Ula|saida[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[25]~7_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(138),
	datab => \FD|REG_2|data_s\(67),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[25]~7_combout\);

-- Location: LCCOMB_X103_Y38_N26
\FD|BR|bancoReg_rtl_0_bypass[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[59]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[24]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[24]~8_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[59]~feeder_combout\);

-- Location: FF_X103_Y38_N27
\FD|BR|bancoReg_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[59]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(59));

-- Location: LCCOMB_X114_Y36_N4
\FD|BR|bancoReg_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X114_Y36_N5
\FD|BR|bancoReg_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(60));

-- Location: LCCOMB_X110_Y36_N0
\FD|BR|saidaA[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~16_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(60) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(60),
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[24]~16_combout\);

-- Location: LCCOMB_X105_Y38_N4
\FD|BR|saidaA[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~17_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[24]~16_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\))) # (!\FD|BR|saidaA[24]~16_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(59),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\,
	datad => \FD|BR|saidaA[24]~16_combout\,
	combout => \FD|BR|saidaA[24]~17_combout\);

-- Location: FF_X105_Y38_N5
\FD|REG_2|data_s[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(98));

-- Location: LCCOMB_X105_Y38_N30
\FD|BR|bancoReg_rtl_1_bypass[57]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[57]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[23]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[23]~9_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[57]~feeder_combout\);

-- Location: FF_X105_Y38_N31
\FD|BR|bancoReg_rtl_1_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[57]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(57));

-- Location: LCCOMB_X111_Y40_N4
\FD|BR|bancoReg_rtl_1_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\);

-- Location: FF_X111_Y40_N5
\FD|BR|bancoReg_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(58));

-- Location: LCCOMB_X107_Y38_N24
\FD|BR|saidaB[23]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~18_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(58) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(58),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[23]~18_combout\);

-- Location: LCCOMB_X105_Y38_N10
\FD|BR|saidaB[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~19_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[23]~18_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\)) # (!\FD|BR|saidaB[23]~18_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(57))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(57),
	datad => \FD|BR|saidaB[23]~18_combout\,
	combout => \FD|BR|saidaB[23]~19_combout\);

-- Location: FF_X105_Y38_N11
\FD|REG_2|data_s[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(65));

-- Location: LCCOMB_X105_Y38_N20
\FD|mux_Banco_Ula|saida[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[23]~9_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(65),
	datac => \FD|REG_2|data_s\(138),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[23]~9_combout\);

-- Location: FF_X108_Y38_N13
\FD|BR|bancoReg_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[22]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(55));

-- Location: LCCOMB_X112_Y40_N20
\FD|BR|bancoReg_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X112_Y40_N21
\FD|BR|bancoReg_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(56));

-- Location: LCCOMB_X112_Y40_N14
\FD|BR|saidaA[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~20_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(56) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(56),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[22]~20_combout\);

-- Location: LCCOMB_X108_Y38_N14
\FD|BR|saidaA[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~21_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[22]~20_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\))) # (!\FD|BR|saidaA[22]~20_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(55),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\,
	datad => \FD|BR|saidaA[22]~20_combout\,
	combout => \FD|BR|saidaA[22]~21_combout\);

-- Location: FF_X108_Y38_N15
\FD|REG_2|data_s[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(96));

-- Location: LCCOMB_X105_Y40_N8
\FD|BR|bancoReg_rtl_1_bypass[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[21]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[21]~11_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\);

-- Location: FF_X105_Y40_N9
\FD|BR|bancoReg_rtl_1_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(53));

-- Location: LCCOMB_X107_Y40_N0
\FD|BR|bancoReg_rtl_1_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\);

-- Location: FF_X107_Y40_N1
\FD|BR|bancoReg_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(54));

-- Location: LCCOMB_X107_Y40_N10
\FD|BR|saidaB[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~22_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(54) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(54),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[21]~22_combout\);

-- Location: LCCOMB_X107_Y40_N8
\FD|BR|saidaB[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~23_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[21]~22_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\))) # (!\FD|BR|saidaB[21]~22_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(53),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\,
	datad => \FD|BR|saidaB[21]~22_combout\,
	combout => \FD|BR|saidaB[21]~23_combout\);

-- Location: FF_X107_Y40_N9
\FD|REG_2|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[21]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(63));

-- Location: LCCOMB_X108_Y38_N4
\FD|mux_Banco_Ula|saida[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[21]~11_combout\ = (\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(41))) # (!\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(41),
	datac => \FD|REG_2|data_s\(63),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[21]~11_combout\);

-- Location: LCCOMB_X103_Y40_N28
\FD|BR|bancoReg_rtl_1_bypass[51]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[20]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[20]~12_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\);

-- Location: FF_X103_Y40_N29
\FD|BR|bancoReg_rtl_1_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(51));

-- Location: LCCOMB_X109_Y40_N2
\FD|BR|bancoReg_rtl_1_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\);

-- Location: FF_X109_Y40_N3
\FD|BR|bancoReg_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(52));

-- Location: LCCOMB_X109_Y40_N24
\FD|BR|saidaB[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~24_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(52) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(52),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[20]~24_combout\);

-- Location: LCCOMB_X109_Y40_N22
\FD|BR|saidaB[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~25_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[20]~24_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\))) # (!\FD|BR|saidaB[20]~24_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(51),
	datab => \FD|BR|saidaB[20]~24_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\,
	combout => \FD|BR|saidaB[20]~25_combout\);

-- Location: FF_X109_Y40_N23
\FD|REG_2|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(62));

-- Location: LCCOMB_X109_Y40_N8
\FD|mux_Banco_Ula|saida[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[20]~12_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(62),
	datab => \FD|REG_2|data_s\(138),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[20]~12_combout\);

-- Location: LCCOMB_X111_Y41_N28
\FD|BR|bancoReg_rtl_1_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\);

-- Location: FF_X111_Y41_N29
\FD|BR|bancoReg_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(50));

-- Location: LCCOMB_X111_Y41_N2
\FD|BR|saidaB[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~26_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(50) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(50),
	combout => \FD|BR|saidaB[19]~26_combout\);

-- Location: FF_X109_Y38_N27
\FD|BR|bancoReg_rtl_1_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[19]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(49));

-- Location: LCCOMB_X113_Y38_N28
\FD|BR|saidaB[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~27_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[19]~26_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\)) # (!\FD|BR|saidaB[19]~26_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[19]~26_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(49),
	combout => \FD|BR|saidaB[19]~27_combout\);

-- Location: FF_X113_Y38_N29
\FD|REG_2|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(61));

-- Location: LCCOMB_X113_Y38_N22
\FD|mux_Banco_Ula|saida[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[19]~13_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(61),
	datac => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[19]~13_combout\);

-- Location: LCCOMB_X108_Y40_N28
\FD|BR|bancoReg_rtl_0_bypass[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[49]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[19]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[19]~13_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[49]~feeder_combout\);

-- Location: FF_X108_Y40_N29
\FD|BR|bancoReg_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(49));

-- Location: LCCOMB_X111_Y40_N6
\FD|BR|bancoReg_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X111_Y40_N7
\FD|BR|bancoReg_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(50));

-- Location: LCCOMB_X108_Y40_N10
\FD|BR|saidaA[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~26_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(50) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(50),
	combout => \FD|BR|saidaA[19]~26_combout\);

-- Location: LCCOMB_X108_Y40_N24
\FD|BR|saidaA[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~27_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[19]~26_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\))) # (!\FD|BR|saidaA[19]~26_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(49),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\,
	datad => \FD|BR|saidaA[19]~26_combout\,
	combout => \FD|BR|saidaA[19]~27_combout\);

-- Location: FF_X108_Y40_N25
\FD|REG_2|data_s[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(93));

-- Location: FF_X103_Y38_N15
\FD|BR|bancoReg_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(47));

-- Location: LCCOMB_X114_Y37_N4
\FD|BR|bancoReg_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X114_Y37_N5
\FD|BR|bancoReg_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(48));

-- Location: LCCOMB_X110_Y37_N22
\FD|BR|saidaA[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~28_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(48) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(48),
	datac => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[18]~28_combout\);

-- Location: LCCOMB_X106_Y38_N8
\FD|BR|saidaA[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~29_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[18]~28_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\)) # (!\FD|BR|saidaA[18]~28_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(47),
	datac => \FD|BR|saidaA[18]~28_combout\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[18]~29_combout\);

-- Location: FF_X106_Y38_N9
\FD|REG_2|data_s[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[18]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(92));

-- Location: LCCOMB_X114_Y36_N12
\FD|BR|bancoReg_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X114_Y36_N13
\FD|BR|bancoReg_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(46));

-- Location: LCCOMB_X110_Y36_N26
\FD|BR|saidaA[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~30_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(46) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(46),
	combout => \FD|BR|saidaA[17]~30_combout\);

-- Location: LCCOMB_X107_Y38_N4
\FD|BR|bancoReg_rtl_0_bypass[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[45]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[17]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[17]~15_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[45]~feeder_combout\);

-- Location: FF_X107_Y38_N5
\FD|BR|bancoReg_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(45));

-- Location: LCCOMB_X108_Y38_N26
\FD|BR|saidaA[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~31_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[17]~30_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\))) # (!\FD|BR|saidaA[17]~30_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[17]~30_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(45),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\,
	combout => \FD|BR|saidaA[17]~31_combout\);

-- Location: FF_X109_Y38_N3
\FD|REG_2|data_s[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|BR|saidaA[17]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(91));

-- Location: FF_X106_Y38_N15
\FD|BR|bancoReg_rtl_1_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[16]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(43));

-- Location: LCCOMB_X107_Y38_N10
\FD|BR|bancoReg_rtl_1_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\);

-- Location: FF_X107_Y38_N11
\FD|BR|bancoReg_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(44));

-- Location: LCCOMB_X107_Y38_N16
\FD|BR|saidaB[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~32_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(44) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(44),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[16]~32_combout\);

-- Location: LCCOMB_X107_Y38_N28
\FD|BR|saidaB[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~33_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[16]~32_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\))) # (!\FD|BR|saidaB[16]~32_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(43),
	datab => \FD|BR|saidaB[16]~32_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\,
	combout => \FD|BR|saidaB[16]~33_combout\);

-- Location: FF_X107_Y38_N29
\FD|REG_2|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(58));

-- Location: LCCOMB_X107_Y38_N30
\FD|mux_Banco_Ula|saida[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[16]~16_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(58),
	datac => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[16]~16_combout\);

-- Location: LCCOMB_X106_Y38_N26
\FD|BR|bancoReg_rtl_0_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[16]~16_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\);

-- Location: FF_X106_Y38_N27
\FD|BR|bancoReg_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(43));

-- Location: LCCOMB_X114_Y37_N30
\FD|BR|bancoReg_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X114_Y37_N31
\FD|BR|bancoReg_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(44));

-- Location: LCCOMB_X106_Y38_N20
\FD|BR|saidaA[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~32_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(44) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(44),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[16]~32_combout\);

-- Location: LCCOMB_X106_Y38_N2
\FD|BR|saidaA[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~33_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[16]~32_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\))) # (!\FD|BR|saidaA[16]~32_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(43),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\,
	datad => \FD|BR|saidaA[16]~32_combout\,
	combout => \FD|BR|saidaA[16]~33_combout\);

-- Location: FF_X106_Y38_N3
\FD|REG_2|data_s[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(90));

-- Location: FF_X109_Y40_N17
\FD|BR|bancoReg_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[15]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(41));

-- Location: LCCOMB_X114_Y44_N26
\FD|BR|bancoReg_rtl_1_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\);

-- Location: FF_X114_Y44_N27
\FD|BR|bancoReg_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(42));

-- Location: LCCOMB_X109_Y41_N14
\FD|BR|saidaB[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~34_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(42) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(42),
	combout => \FD|BR|saidaB[15]~34_combout\);

-- Location: LCCOMB_X108_Y41_N30
\FD|BR|saidaB[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~35_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[15]~34_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\))) # (!\FD|BR|saidaB[15]~34_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(41),
	datab => \FD|BR|saidaB[15]~34_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\,
	combout => \FD|BR|saidaB[15]~35_combout\);

-- Location: FF_X108_Y41_N31
\FD|REG_2|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(57));

-- Location: LCCOMB_X108_Y41_N28
\FD|mux_Banco_Ula|saida[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[15]~17_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(57),
	datac => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[15]~17_combout\);

-- Location: LCCOMB_X112_Y40_N24
\FD|BR|bancoReg_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X112_Y40_N25
\FD|BR|bancoReg_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(42));

-- Location: LCCOMB_X110_Y40_N6
\FD|BR|saidaA[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~34_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(42) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(42),
	combout => \FD|BR|saidaA[15]~34_combout\);

-- Location: LCCOMB_X110_Y40_N0
\FD|BR|bancoReg_rtl_0_bypass[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[41]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[15]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[15]~17_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[41]~feeder_combout\);

-- Location: FF_X110_Y40_N1
\FD|BR|bancoReg_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(41));

-- Location: LCCOMB_X110_Y40_N30
\FD|BR|saidaA[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~35_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[15]~34_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\))) # (!\FD|BR|saidaA[15]~34_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[15]~34_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(41),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\,
	combout => \FD|BR|saidaA[15]~35_combout\);

-- Location: FF_X110_Y40_N31
\FD|REG_2|data_s[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(89));

-- Location: FF_X111_Y40_N13
\FD|BR|bancoReg_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(39));

-- Location: LCCOMB_X112_Y40_N2
\FD|BR|bancoReg_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X112_Y40_N3
\FD|BR|bancoReg_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(40));

-- Location: LCCOMB_X112_Y40_N4
\FD|BR|saidaA[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~36_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(40) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(40),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[14]~36_combout\);

-- Location: LCCOMB_X111_Y40_N24
\FD|BR|saidaA[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~37_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[14]~36_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\))) # (!\FD|BR|saidaA[14]~36_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(39),
	datab => \FD|BR|saidaA[14]~36_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\,
	combout => \FD|BR|saidaA[14]~37_combout\);

-- Location: FF_X111_Y40_N25
\FD|REG_2|data_s[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(88));

-- Location: LCCOMB_X108_Y37_N12
\FD|BR|bancoReg_rtl_1_bypass[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[13]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[13]~19_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\);

-- Location: FF_X108_Y37_N13
\FD|BR|bancoReg_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(37));

-- Location: LCCOMB_X111_Y41_N4
\FD|BR|bancoReg_rtl_1_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\);

-- Location: FF_X111_Y41_N5
\FD|BR|bancoReg_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(38));

-- Location: LCCOMB_X109_Y41_N8
\FD|BR|saidaB[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(38) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(38),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[13]~38_combout\);

-- Location: LCCOMB_X109_Y37_N12
\FD|BR|saidaB[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~39_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[13]~38_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\))) # (!\FD|BR|saidaB[13]~38_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(37),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[13]~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\,
	combout => \FD|BR|saidaB[13]~39_combout\);

-- Location: FF_X109_Y37_N13
\FD|REG_2|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(55));

-- Location: LCCOMB_X109_Y37_N14
\FD|mux_Banco_Ula|saida[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[13]~19_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(55),
	datab => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[13]~19_combout\);

-- Location: FF_X105_Y37_N15
\FD|BR|bancoReg_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(35));

-- Location: LCCOMB_X114_Y37_N22
\FD|BR|bancoReg_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X114_Y37_N23
\FD|BR|bancoReg_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(36));

-- Location: LCCOMB_X110_Y37_N30
\FD|BR|saidaA[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(36) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(36),
	combout => \FD|BR|saidaA[12]~40_combout\);

-- Location: LCCOMB_X110_Y37_N20
\FD|BR|saidaA[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~41_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[12]~40_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\))) # (!\FD|BR|saidaA[12]~40_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(35),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|saidaA[12]~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\,
	combout => \FD|BR|saidaA[12]~41_combout\);

-- Location: FF_X110_Y37_N21
\FD|REG_2|data_s[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(86));

-- Location: LCCOMB_X106_Y39_N10
\FD|mux_Banco_Ula|saida[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[11]~21_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(53),
	datac => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[11]~21_combout\);

-- Location: LCCOMB_X106_Y40_N20
\FD|BR|bancoReg_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X106_Y40_N21
\FD|BR|bancoReg_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(34));

-- Location: LCCOMB_X106_Y40_N28
\FD|BR|saidaA[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~42_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(34) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(34),
	combout => \FD|BR|saidaA[11]~42_combout\);

-- Location: FF_X105_Y39_N31
\FD|BR|bancoReg_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(33));

-- Location: LCCOMB_X105_Y39_N20
\FD|BR|saidaA[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~43_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[11]~42_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\)) # (!\FD|BR|saidaA[11]~42_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[11]~42_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(33),
	combout => \FD|BR|saidaA[11]~43_combout\);

-- Location: FF_X110_Y39_N23
\FD|REG_2|data_s[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|BR|saidaA[11]~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(85));

-- Location: LCCOMB_X114_Y37_N20
\FD|BR|bancoReg_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X114_Y37_N21
\FD|BR|bancoReg_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(32));

-- Location: LCCOMB_X110_Y37_N16
\FD|BR|saidaA[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~44_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(32) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(32),
	combout => \FD|BR|saidaA[10]~44_combout\);

-- Location: LCCOMB_X105_Y37_N18
\FD|BR|bancoReg_rtl_0_bypass[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[31]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[10]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[10]~22_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[31]~feeder_combout\);

-- Location: FF_X105_Y37_N19
\FD|BR|bancoReg_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(31));

-- Location: LCCOMB_X109_Y37_N10
\FD|BR|saidaA[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~45_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[10]~44_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\)) # (!\FD|BR|saidaA[10]~44_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\,
	datab => \FD|BR|saidaA[10]~44_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(31),
	combout => \FD|BR|saidaA[10]~45_combout\);

-- Location: FF_X109_Y37_N11
\FD|REG_2|data_s[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(84));

-- Location: LCCOMB_X107_Y39_N24
\FD|mux_Banco_Ula|saida[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[10]~22_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(52),
	datac => \FD|REG_2|data_s\(138),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[10]~22_combout\);

-- Location: LCCOMB_X105_Y37_N10
\FD|BR|bancoReg_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[29]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[9]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[9]~23_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X105_Y37_N11
\FD|BR|bancoReg_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(29));

-- Location: LCCOMB_X114_Y37_N6
\FD|BR|bancoReg_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X114_Y37_N7
\FD|BR|bancoReg_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(30));

-- Location: LCCOMB_X110_Y37_N10
\FD|BR|saidaA[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~46_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(30) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(30),
	combout => \FD|BR|saidaA[9]~46_combout\);

-- Location: LCCOMB_X109_Y37_N30
\FD|BR|saidaA[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~47_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[9]~46_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\))) # (!\FD|BR|saidaA[9]~46_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(29),
	datab => \FD|BR|saidaA[9]~46_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\,
	combout => \FD|BR|saidaA[9]~47_combout\);

-- Location: FF_X109_Y37_N31
\FD|REG_2|data_s[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(83));

-- Location: LCCOMB_X108_Y39_N6
\FD|mux_Banco_Ula|saida[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[9]~23_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(51),
	datab => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[9]~23_combout\);

-- Location: LCCOMB_X106_Y37_N0
\FD|BR|bancoReg_rtl_0_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[8]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[8]~24_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\);

-- Location: FF_X106_Y37_N1
\FD|BR|bancoReg_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(27));

-- Location: LCCOMB_X114_Y37_N24
\FD|BR|bancoReg_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X114_Y37_N25
\FD|BR|bancoReg_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(28));

-- Location: LCCOMB_X110_Y37_N0
\FD|BR|saidaA[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~48_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(28) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(28),
	combout => \FD|BR|saidaA[8]~48_combout\);

-- Location: LCCOMB_X109_Y37_N0
\FD|BR|saidaA[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~49_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[8]~48_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\))) # (!\FD|BR|saidaA[8]~48_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(27),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|saidaA[8]~48_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\,
	combout => \FD|BR|saidaA[8]~49_combout\);

-- Location: FF_X109_Y37_N1
\FD|REG_2|data_s[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[8]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(82));

-- Location: LCCOMB_X109_Y40_N30
\FD|mux_Banco_Ula|saida[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[7]~25_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(49),
	datab => \FD|REG_2|data_s\(138),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[7]~25_combout\);

-- Location: LCCOMB_X114_Y36_N6
\FD|BR|bancoReg_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X114_Y36_N7
\FD|BR|bancoReg_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(24));

-- Location: LCCOMB_X110_Y36_N12
\FD|BR|saidaA[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~52_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(24) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(24),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[6]~52_combout\);

-- Location: FF_X108_Y40_N23
\FD|BR|bancoReg_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(23));

-- Location: LCCOMB_X108_Y39_N26
\FD|BR|saidaA[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~53_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[6]~52_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\))) # (!\FD|BR|saidaA[6]~52_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[6]~52_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(23),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\,
	combout => \FD|BR|saidaA[6]~53_combout\);

-- Location: FF_X109_Y39_N21
\FD|REG_2|data_s[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|BR|saidaA[6]~53_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(80));

-- Location: FF_X105_Y40_N23
\FD|BR|bancoReg_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(21));

-- Location: LCCOMB_X111_Y40_N26
\FD|BR|bancoReg_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X111_Y40_N27
\FD|BR|bancoReg_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(22));

-- Location: LCCOMB_X110_Y40_N20
\FD|BR|saidaA[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~54_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(22) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(22),
	combout => \FD|BR|saidaA[5]~54_combout\);

-- Location: LCCOMB_X110_Y40_N14
\FD|BR|saidaA[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~55_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[5]~54_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\))) # (!\FD|BR|saidaA[5]~54_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(21),
	datab => \FD|BR|saidaA[5]~54_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[5]~55_combout\);

-- Location: FF_X110_Y40_N15
\FD|REG_2|data_s[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[5]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(79));

-- Location: LCCOMB_X108_Y39_N28
\FD|mux_Banco_Ula|saida[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[4]~28_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(46),
	datab => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[4]~28_combout\);

-- Location: FF_X105_Y39_N27
\FD|BR|bancoReg_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(17));

-- Location: LCCOMB_X106_Y40_N22
\FD|BR|bancoReg_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X106_Y40_N23
\FD|BR|bancoReg_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(18));

-- Location: LCCOMB_X106_Y40_N0
\FD|BR|saidaA[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~58_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(18) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(18),
	combout => \FD|BR|saidaA[3]~58_combout\);

-- Location: LCCOMB_X105_Y39_N16
\FD|BR|saidaA[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~59_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[3]~58_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\))) # (!\FD|BR|saidaA[3]~58_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(17),
	datac => \FD|BR|saidaA[3]~58_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\,
	combout => \FD|BR|saidaA[3]~59_combout\);

-- Location: FF_X105_Y39_N17
\FD|REG_2|data_s[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(77));

-- Location: LCCOMB_X114_Y36_N24
\FD|BR|bancoReg_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X114_Y36_N25
\FD|BR|bancoReg_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(16));

-- Location: LCCOMB_X110_Y36_N30
\FD|BR|saidaA[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~60_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(16) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~41_combout\,
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(16),
	combout => \FD|BR|saidaA[2]~60_combout\);

-- Location: FF_X108_Y36_N15
\FD|BR|bancoReg_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(15));

-- Location: LCCOMB_X109_Y36_N6
\FD|BR|saidaA[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~61_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[2]~60_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\))) # (!\FD|BR|saidaA[2]~60_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[2]~60_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(15),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\,
	combout => \FD|BR|saidaA[2]~61_combout\);

-- Location: FF_X110_Y39_N21
\FD|REG_2|data_s[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|BR|saidaA[2]~61_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(76));

-- Location: LCCOMB_X108_Y40_N12
\FD|BR|bancoReg_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X108_Y40_N13
\FD|BR|bancoReg_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(14));

-- Location: LCCOMB_X108_Y40_N14
\FD|BR|saidaA[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~62_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(14) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(14),
	combout => \FD|BR|saidaA[1]~62_combout\);

-- Location: FF_X108_Y40_N3
\FD|BR|bancoReg_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(13));

-- Location: LCCOMB_X108_Y36_N16
\FD|BR|saidaA[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~63_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[1]~62_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\)) # (!\FD|BR|saidaA[1]~62_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[1]~62_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(13),
	combout => \FD|BR|saidaA[1]~63_combout\);

-- Location: FF_X109_Y39_N17
\FD|REG_2|data_s[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|BR|saidaA[1]~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(75));

-- Location: LCCOMB_X108_Y39_N2
\FD|mux_Banco_Ula|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[0]~0_combout\ = (\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(10))) # (!\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(10),
	datac => \FD|REG_2|data_s\(42),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[0]~0_combout\);

-- Location: LCCOMB_X109_Y39_N0
\FD|ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~0_combout\ = (\FD|REG_2|data_s\(74) & ((GND) # (!\FD|mux_Banco_Ula|saida[0]~0_combout\))) # (!\FD|REG_2|data_s\(74) & (\FD|mux_Banco_Ula|saida[0]~0_combout\ $ (GND)))
-- \FD|ULA|Add1~1\ = CARRY((\FD|REG_2|data_s\(74)) # (!\FD|mux_Banco_Ula|saida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(74),
	datab => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datad => VCC,
	combout => \FD|ULA|Add1~0_combout\,
	cout => \FD|ULA|Add1~1\);

-- Location: LCCOMB_X109_Y39_N2
\FD|ULA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|REG_2|data_s\(75) & (!\FD|ULA|Add1~1\)) # (!\FD|REG_2|data_s\(75) & ((\FD|ULA|Add1~1\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|REG_2|data_s\(75) & 
-- (\FD|ULA|Add1~1\ & VCC)) # (!\FD|REG_2|data_s\(75) & (!\FD|ULA|Add1~1\))))
-- \FD|ULA|Add1~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((!\FD|ULA|Add1~1\) # (!\FD|REG_2|data_s\(75)))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & (!\FD|REG_2|data_s\(75) & !\FD|ULA|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datab => \FD|REG_2|data_s\(75),
	datad => VCC,
	cin => \FD|ULA|Add1~1\,
	combout => \FD|ULA|Add1~2_combout\,
	cout => \FD|ULA|Add1~3\);

-- Location: LCCOMB_X109_Y39_N4
\FD|ULA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~4_combout\ = ((\FD|mux_Banco_Ula|saida[2]~30_combout\ $ (\FD|REG_2|data_s\(76) $ (\FD|ULA|Add1~3\)))) # (GND)
-- \FD|ULA|Add1~5\ = CARRY((\FD|mux_Banco_Ula|saida[2]~30_combout\ & (\FD|REG_2|data_s\(76) & !\FD|ULA|Add1~3\)) # (!\FD|mux_Banco_Ula|saida[2]~30_combout\ & ((\FD|REG_2|data_s\(76)) # (!\FD|ULA|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|REG_2|data_s\(76),
	datad => VCC,
	cin => \FD|ULA|Add1~3\,
	combout => \FD|ULA|Add1~4_combout\,
	cout => \FD|ULA|Add1~5\);

-- Location: LCCOMB_X109_Y39_N6
\FD|ULA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|REG_2|data_s\(77) & (!\FD|ULA|Add1~5\)) # (!\FD|REG_2|data_s\(77) & ((\FD|ULA|Add1~5\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|REG_2|data_s\(77) & 
-- (\FD|ULA|Add1~5\ & VCC)) # (!\FD|REG_2|data_s\(77) & (!\FD|ULA|Add1~5\))))
-- \FD|ULA|Add1~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((!\FD|ULA|Add1~5\) # (!\FD|REG_2|data_s\(77)))) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & (!\FD|REG_2|data_s\(77) & !\FD|ULA|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datab => \FD|REG_2|data_s\(77),
	datad => VCC,
	cin => \FD|ULA|Add1~5\,
	combout => \FD|ULA|Add1~6_combout\,
	cout => \FD|ULA|Add1~7\);

-- Location: LCCOMB_X109_Y39_N8
\FD|ULA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~8_combout\ = ((\FD|REG_2|data_s\(78) $ (\FD|mux_Banco_Ula|saida[4]~28_combout\ $ (\FD|ULA|Add1~7\)))) # (GND)
-- \FD|ULA|Add1~9\ = CARRY((\FD|REG_2|data_s\(78) & ((!\FD|ULA|Add1~7\) # (!\FD|mux_Banco_Ula|saida[4]~28_combout\))) # (!\FD|REG_2|data_s\(78) & (!\FD|mux_Banco_Ula|saida[4]~28_combout\ & !\FD|ULA|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(78),
	datab => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~7\,
	combout => \FD|ULA|Add1~8_combout\,
	cout => \FD|ULA|Add1~9\);

-- Location: LCCOMB_X109_Y39_N10
\FD|ULA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~10_combout\ = (\FD|REG_2|data_s\(79) & ((\FD|mux_Banco_Ula|saida[5]~27_combout\ & (!\FD|ULA|Add1~9\)) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & (\FD|ULA|Add1~9\ & VCC)))) # (!\FD|REG_2|data_s\(79) & ((\FD|mux_Banco_Ula|saida[5]~27_combout\ 
-- & ((\FD|ULA|Add1~9\) # (GND))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & (!\FD|ULA|Add1~9\))))
-- \FD|ULA|Add1~11\ = CARRY((\FD|REG_2|data_s\(79) & (\FD|mux_Banco_Ula|saida[5]~27_combout\ & !\FD|ULA|Add1~9\)) # (!\FD|REG_2|data_s\(79) & ((\FD|mux_Banco_Ula|saida[5]~27_combout\) # (!\FD|ULA|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(79),
	datab => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~9\,
	combout => \FD|ULA|Add1~10_combout\,
	cout => \FD|ULA|Add1~11\);

-- Location: LCCOMB_X109_Y39_N12
\FD|ULA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~12_combout\ = ((\FD|mux_Banco_Ula|saida[6]~26_combout\ $ (\FD|REG_2|data_s\(80) $ (\FD|ULA|Add1~11\)))) # (GND)
-- \FD|ULA|Add1~13\ = CARRY((\FD|mux_Banco_Ula|saida[6]~26_combout\ & (\FD|REG_2|data_s\(80) & !\FD|ULA|Add1~11\)) # (!\FD|mux_Banco_Ula|saida[6]~26_combout\ & ((\FD|REG_2|data_s\(80)) # (!\FD|ULA|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datab => \FD|REG_2|data_s\(80),
	datad => VCC,
	cin => \FD|ULA|Add1~11\,
	combout => \FD|ULA|Add1~12_combout\,
	cout => \FD|ULA|Add1~13\);

-- Location: LCCOMB_X109_Y39_N14
\FD|ULA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~14_combout\ = (\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|REG_2|data_s\(81) & (!\FD|ULA|Add1~13\)) # (!\FD|REG_2|data_s\(81) & ((\FD|ULA|Add1~13\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|REG_2|data_s\(81) & 
-- (\FD|ULA|Add1~13\ & VCC)) # (!\FD|REG_2|data_s\(81) & (!\FD|ULA|Add1~13\))))
-- \FD|ULA|Add1~15\ = CARRY((\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((!\FD|ULA|Add1~13\) # (!\FD|REG_2|data_s\(81)))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & (!\FD|REG_2|data_s\(81) & !\FD|ULA|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datab => \FD|REG_2|data_s\(81),
	datad => VCC,
	cin => \FD|ULA|Add1~13\,
	combout => \FD|ULA|Add1~14_combout\,
	cout => \FD|ULA|Add1~15\);

-- Location: LCCOMB_X109_Y39_N16
\FD|ULA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~16_combout\ = ((\FD|REG_2|data_s\(82) $ (\FD|mux_Banco_Ula|saida[8]~24_combout\ $ (\FD|ULA|Add1~15\)))) # (GND)
-- \FD|ULA|Add1~17\ = CARRY((\FD|REG_2|data_s\(82) & ((!\FD|ULA|Add1~15\) # (!\FD|mux_Banco_Ula|saida[8]~24_combout\))) # (!\FD|REG_2|data_s\(82) & (!\FD|mux_Banco_Ula|saida[8]~24_combout\ & !\FD|ULA|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(82),
	datab => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~15\,
	combout => \FD|ULA|Add1~16_combout\,
	cout => \FD|ULA|Add1~17\);

-- Location: LCCOMB_X109_Y39_N18
\FD|ULA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~18_combout\ = (\FD|REG_2|data_s\(83) & ((\FD|mux_Banco_Ula|saida[9]~23_combout\ & (!\FD|ULA|Add1~17\)) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & (\FD|ULA|Add1~17\ & VCC)))) # (!\FD|REG_2|data_s\(83) & 
-- ((\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|ULA|Add1~17\) # (GND))) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & (!\FD|ULA|Add1~17\))))
-- \FD|ULA|Add1~19\ = CARRY((\FD|REG_2|data_s\(83) & (\FD|mux_Banco_Ula|saida[9]~23_combout\ & !\FD|ULA|Add1~17\)) # (!\FD|REG_2|data_s\(83) & ((\FD|mux_Banco_Ula|saida[9]~23_combout\) # (!\FD|ULA|Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(83),
	datab => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~17\,
	combout => \FD|ULA|Add1~18_combout\,
	cout => \FD|ULA|Add1~19\);

-- Location: LCCOMB_X109_Y39_N20
\FD|ULA|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~20_combout\ = ((\FD|REG_2|data_s\(84) $ (\FD|mux_Banco_Ula|saida[10]~22_combout\ $ (\FD|ULA|Add1~19\)))) # (GND)
-- \FD|ULA|Add1~21\ = CARRY((\FD|REG_2|data_s\(84) & ((!\FD|ULA|Add1~19\) # (!\FD|mux_Banco_Ula|saida[10]~22_combout\))) # (!\FD|REG_2|data_s\(84) & (!\FD|mux_Banco_Ula|saida[10]~22_combout\ & !\FD|ULA|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(84),
	datab => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~19\,
	combout => \FD|ULA|Add1~20_combout\,
	cout => \FD|ULA|Add1~21\);

-- Location: LCCOMB_X109_Y39_N22
\FD|ULA|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~22_combout\ = (\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|REG_2|data_s\(85) & (!\FD|ULA|Add1~21\)) # (!\FD|REG_2|data_s\(85) & ((\FD|ULA|Add1~21\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|REG_2|data_s\(85) & 
-- (\FD|ULA|Add1~21\ & VCC)) # (!\FD|REG_2|data_s\(85) & (!\FD|ULA|Add1~21\))))
-- \FD|ULA|Add1~23\ = CARRY((\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((!\FD|ULA|Add1~21\) # (!\FD|REG_2|data_s\(85)))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & (!\FD|REG_2|data_s\(85) & !\FD|ULA|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datab => \FD|REG_2|data_s\(85),
	datad => VCC,
	cin => \FD|ULA|Add1~21\,
	combout => \FD|ULA|Add1~22_combout\,
	cout => \FD|ULA|Add1~23\);

-- Location: LCCOMB_X109_Y39_N24
\FD|ULA|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~20_combout\ $ (\FD|REG_2|data_s\(86) $ (\FD|ULA|Add1~23\)))) # (GND)
-- \FD|ULA|Add1~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~20_combout\ & (\FD|REG_2|data_s\(86) & !\FD|ULA|Add1~23\)) # (!\FD|mux_Banco_Ula|saida[12]~20_combout\ & ((\FD|REG_2|data_s\(86)) # (!\FD|ULA|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datab => \FD|REG_2|data_s\(86),
	datad => VCC,
	cin => \FD|ULA|Add1~23\,
	combout => \FD|ULA|Add1~24_combout\,
	cout => \FD|ULA|Add1~25\);

-- Location: LCCOMB_X109_Y39_N26
\FD|ULA|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~26_combout\ = (\FD|REG_2|data_s\(87) & ((\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|ULA|Add1~25\)) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & (\FD|ULA|Add1~25\ & VCC)))) # (!\FD|REG_2|data_s\(87) & 
-- ((\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|ULA|Add1~25\) # (GND))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|ULA|Add1~25\))))
-- \FD|ULA|Add1~27\ = CARRY((\FD|REG_2|data_s\(87) & (\FD|mux_Banco_Ula|saida[13]~19_combout\ & !\FD|ULA|Add1~25\)) # (!\FD|REG_2|data_s\(87) & ((\FD|mux_Banco_Ula|saida[13]~19_combout\) # (!\FD|ULA|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(87),
	datab => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~25\,
	combout => \FD|ULA|Add1~26_combout\,
	cout => \FD|ULA|Add1~27\);

-- Location: LCCOMB_X109_Y39_N28
\FD|ULA|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~28_combout\ = ((\FD|REG_2|data_s\(88) $ (\FD|mux_Banco_Ula|saida[14]~18_combout\ $ (\FD|ULA|Add1~27\)))) # (GND)
-- \FD|ULA|Add1~29\ = CARRY((\FD|REG_2|data_s\(88) & ((!\FD|ULA|Add1~27\) # (!\FD|mux_Banco_Ula|saida[14]~18_combout\))) # (!\FD|REG_2|data_s\(88) & (!\FD|mux_Banco_Ula|saida[14]~18_combout\ & !\FD|ULA|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(88),
	datab => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~27\,
	combout => \FD|ULA|Add1~28_combout\,
	cout => \FD|ULA|Add1~29\);

-- Location: LCCOMB_X109_Y39_N30
\FD|ULA|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~30_combout\ = (\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|REG_2|data_s\(89) & (!\FD|ULA|Add1~29\)) # (!\FD|REG_2|data_s\(89) & ((\FD|ULA|Add1~29\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|REG_2|data_s\(89) & 
-- (\FD|ULA|Add1~29\ & VCC)) # (!\FD|REG_2|data_s\(89) & (!\FD|ULA|Add1~29\))))
-- \FD|ULA|Add1~31\ = CARRY((\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((!\FD|ULA|Add1~29\) # (!\FD|REG_2|data_s\(89)))) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & (!\FD|REG_2|data_s\(89) & !\FD|ULA|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datab => \FD|REG_2|data_s\(89),
	datad => VCC,
	cin => \FD|ULA|Add1~29\,
	combout => \FD|ULA|Add1~30_combout\,
	cout => \FD|ULA|Add1~31\);

-- Location: LCCOMB_X109_Y38_N0
\FD|ULA|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~32_combout\ = ((\FD|mux_Banco_Ula|saida[16]~16_combout\ $ (\FD|REG_2|data_s\(90) $ (\FD|ULA|Add1~31\)))) # (GND)
-- \FD|ULA|Add1~33\ = CARRY((\FD|mux_Banco_Ula|saida[16]~16_combout\ & (\FD|REG_2|data_s\(90) & !\FD|ULA|Add1~31\)) # (!\FD|mux_Banco_Ula|saida[16]~16_combout\ & ((\FD|REG_2|data_s\(90)) # (!\FD|ULA|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datab => \FD|REG_2|data_s\(90),
	datad => VCC,
	cin => \FD|ULA|Add1~31\,
	combout => \FD|ULA|Add1~32_combout\,
	cout => \FD|ULA|Add1~33\);

-- Location: LCCOMB_X109_Y38_N2
\FD|ULA|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~34_combout\ = (\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|REG_2|data_s\(91) & (!\FD|ULA|Add1~33\)) # (!\FD|REG_2|data_s\(91) & ((\FD|ULA|Add1~33\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|REG_2|data_s\(91) & 
-- (\FD|ULA|Add1~33\ & VCC)) # (!\FD|REG_2|data_s\(91) & (!\FD|ULA|Add1~33\))))
-- \FD|ULA|Add1~35\ = CARRY((\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((!\FD|ULA|Add1~33\) # (!\FD|REG_2|data_s\(91)))) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & (!\FD|REG_2|data_s\(91) & !\FD|ULA|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datab => \FD|REG_2|data_s\(91),
	datad => VCC,
	cin => \FD|ULA|Add1~33\,
	combout => \FD|ULA|Add1~34_combout\,
	cout => \FD|ULA|Add1~35\);

-- Location: LCCOMB_X109_Y38_N4
\FD|ULA|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~36_combout\ = ((\FD|mux_Banco_Ula|saida[18]~14_combout\ $ (\FD|REG_2|data_s\(92) $ (\FD|ULA|Add1~35\)))) # (GND)
-- \FD|ULA|Add1~37\ = CARRY((\FD|mux_Banco_Ula|saida[18]~14_combout\ & (\FD|REG_2|data_s\(92) & !\FD|ULA|Add1~35\)) # (!\FD|mux_Banco_Ula|saida[18]~14_combout\ & ((\FD|REG_2|data_s\(92)) # (!\FD|ULA|Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datab => \FD|REG_2|data_s\(92),
	datad => VCC,
	cin => \FD|ULA|Add1~35\,
	combout => \FD|ULA|Add1~36_combout\,
	cout => \FD|ULA|Add1~37\);

-- Location: LCCOMB_X109_Y38_N6
\FD|ULA|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~38_combout\ = (\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|REG_2|data_s\(93) & (!\FD|ULA|Add1~37\)) # (!\FD|REG_2|data_s\(93) & ((\FD|ULA|Add1~37\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|REG_2|data_s\(93) & 
-- (\FD|ULA|Add1~37\ & VCC)) # (!\FD|REG_2|data_s\(93) & (!\FD|ULA|Add1~37\))))
-- \FD|ULA|Add1~39\ = CARRY((\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((!\FD|ULA|Add1~37\) # (!\FD|REG_2|data_s\(93)))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|REG_2|data_s\(93) & !\FD|ULA|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datab => \FD|REG_2|data_s\(93),
	datad => VCC,
	cin => \FD|ULA|Add1~37\,
	combout => \FD|ULA|Add1~38_combout\,
	cout => \FD|ULA|Add1~39\);

-- Location: LCCOMB_X109_Y38_N8
\FD|ULA|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~40_combout\ = ((\FD|REG_2|data_s\(94) $ (\FD|mux_Banco_Ula|saida[20]~12_combout\ $ (\FD|ULA|Add1~39\)))) # (GND)
-- \FD|ULA|Add1~41\ = CARRY((\FD|REG_2|data_s\(94) & ((!\FD|ULA|Add1~39\) # (!\FD|mux_Banco_Ula|saida[20]~12_combout\))) # (!\FD|REG_2|data_s\(94) & (!\FD|mux_Banco_Ula|saida[20]~12_combout\ & !\FD|ULA|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(94),
	datab => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~39\,
	combout => \FD|ULA|Add1~40_combout\,
	cout => \FD|ULA|Add1~41\);

-- Location: LCCOMB_X109_Y38_N10
\FD|ULA|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~42_combout\ = (\FD|REG_2|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|ULA|Add1~41\)) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & (\FD|ULA|Add1~41\ & VCC)))) # (!\FD|REG_2|data_s\(95) & 
-- ((\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|ULA|Add1~41\) # (GND))) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|ULA|Add1~41\))))
-- \FD|ULA|Add1~43\ = CARRY((\FD|REG_2|data_s\(95) & (\FD|mux_Banco_Ula|saida[21]~11_combout\ & !\FD|ULA|Add1~41\)) # (!\FD|REG_2|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~11_combout\) # (!\FD|ULA|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(95),
	datab => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~41\,
	combout => \FD|ULA|Add1~42_combout\,
	cout => \FD|ULA|Add1~43\);

-- Location: LCCOMB_X109_Y38_N12
\FD|ULA|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~44_combout\ = ((\FD|mux_Banco_Ula|saida[22]~10_combout\ $ (\FD|REG_2|data_s\(96) $ (\FD|ULA|Add1~43\)))) # (GND)
-- \FD|ULA|Add1~45\ = CARRY((\FD|mux_Banco_Ula|saida[22]~10_combout\ & (\FD|REG_2|data_s\(96) & !\FD|ULA|Add1~43\)) # (!\FD|mux_Banco_Ula|saida[22]~10_combout\ & ((\FD|REG_2|data_s\(96)) # (!\FD|ULA|Add1~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datab => \FD|REG_2|data_s\(96),
	datad => VCC,
	cin => \FD|ULA|Add1~43\,
	combout => \FD|ULA|Add1~44_combout\,
	cout => \FD|ULA|Add1~45\);

-- Location: LCCOMB_X109_Y38_N14
\FD|ULA|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~46_combout\ = (\FD|REG_2|data_s\(97) & ((\FD|mux_Banco_Ula|saida[23]~9_combout\ & (!\FD|ULA|Add1~45\)) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & (\FD|ULA|Add1~45\ & VCC)))) # (!\FD|REG_2|data_s\(97) & 
-- ((\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((\FD|ULA|Add1~45\) # (GND))) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & (!\FD|ULA|Add1~45\))))
-- \FD|ULA|Add1~47\ = CARRY((\FD|REG_2|data_s\(97) & (\FD|mux_Banco_Ula|saida[23]~9_combout\ & !\FD|ULA|Add1~45\)) # (!\FD|REG_2|data_s\(97) & ((\FD|mux_Banco_Ula|saida[23]~9_combout\) # (!\FD|ULA|Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(97),
	datab => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~45\,
	combout => \FD|ULA|Add1~46_combout\,
	cout => \FD|ULA|Add1~47\);

-- Location: LCCOMB_X109_Y38_N16
\FD|ULA|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~48_combout\ = ((\FD|REG_2|data_s\(98) $ (\FD|mux_Banco_Ula|saida[24]~8_combout\ $ (\FD|ULA|Add1~47\)))) # (GND)
-- \FD|ULA|Add1~49\ = CARRY((\FD|REG_2|data_s\(98) & ((!\FD|ULA|Add1~47\) # (!\FD|mux_Banco_Ula|saida[24]~8_combout\))) # (!\FD|REG_2|data_s\(98) & (!\FD|mux_Banco_Ula|saida[24]~8_combout\ & !\FD|ULA|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(98),
	datab => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~47\,
	combout => \FD|ULA|Add1~48_combout\,
	cout => \FD|ULA|Add1~49\);

-- Location: LCCOMB_X109_Y38_N18
\FD|ULA|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~50_combout\ = (\FD|REG_2|data_s\(99) & ((\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|ULA|Add1~49\)) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & (\FD|ULA|Add1~49\ & VCC)))) # (!\FD|REG_2|data_s\(99) & 
-- ((\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|ULA|Add1~49\) # (GND))) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|ULA|Add1~49\))))
-- \FD|ULA|Add1~51\ = CARRY((\FD|REG_2|data_s\(99) & (\FD|mux_Banco_Ula|saida[25]~7_combout\ & !\FD|ULA|Add1~49\)) # (!\FD|REG_2|data_s\(99) & ((\FD|mux_Banco_Ula|saida[25]~7_combout\) # (!\FD|ULA|Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(99),
	datab => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~49\,
	combout => \FD|ULA|Add1~50_combout\,
	cout => \FD|ULA|Add1~51\);

-- Location: LCCOMB_X109_Y38_N20
\FD|ULA|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~52_combout\ = ((\FD|REG_2|data_s\(100) $ (\FD|mux_Banco_Ula|saida[26]~6_combout\ $ (\FD|ULA|Add1~51\)))) # (GND)
-- \FD|ULA|Add1~53\ = CARRY((\FD|REG_2|data_s\(100) & ((!\FD|ULA|Add1~51\) # (!\FD|mux_Banco_Ula|saida[26]~6_combout\))) # (!\FD|REG_2|data_s\(100) & (!\FD|mux_Banco_Ula|saida[26]~6_combout\ & !\FD|ULA|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(100),
	datab => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~51\,
	combout => \FD|ULA|Add1~52_combout\,
	cout => \FD|ULA|Add1~53\);

-- Location: LCCOMB_X109_Y38_N22
\FD|ULA|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~54_combout\ = (\FD|REG_2|data_s\(101) & ((\FD|mux_Banco_Ula|saida[27]~5_combout\ & (!\FD|ULA|Add1~53\)) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & (\FD|ULA|Add1~53\ & VCC)))) # (!\FD|REG_2|data_s\(101) & 
-- ((\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|ULA|Add1~53\) # (GND))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & (!\FD|ULA|Add1~53\))))
-- \FD|ULA|Add1~55\ = CARRY((\FD|REG_2|data_s\(101) & (\FD|mux_Banco_Ula|saida[27]~5_combout\ & !\FD|ULA|Add1~53\)) # (!\FD|REG_2|data_s\(101) & ((\FD|mux_Banco_Ula|saida[27]~5_combout\) # (!\FD|ULA|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(101),
	datab => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~53\,
	combout => \FD|ULA|Add1~54_combout\,
	cout => \FD|ULA|Add1~55\);

-- Location: LCCOMB_X109_Y38_N24
\FD|ULA|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~56_combout\ = ((\FD|mux_Banco_Ula|saida[28]~4_combout\ $ (\FD|REG_2|data_s\(102) $ (\FD|ULA|Add1~55\)))) # (GND)
-- \FD|ULA|Add1~57\ = CARRY((\FD|mux_Banco_Ula|saida[28]~4_combout\ & (\FD|REG_2|data_s\(102) & !\FD|ULA|Add1~55\)) # (!\FD|mux_Banco_Ula|saida[28]~4_combout\ & ((\FD|REG_2|data_s\(102)) # (!\FD|ULA|Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datab => \FD|REG_2|data_s\(102),
	datad => VCC,
	cin => \FD|ULA|Add1~55\,
	combout => \FD|ULA|Add1~56_combout\,
	cout => \FD|ULA|Add1~57\);

-- Location: LCCOMB_X109_Y38_N26
\FD|ULA|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~58_combout\ = (\FD|REG_2|data_s\(103) & ((\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|ULA|Add1~57\)) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & (\FD|ULA|Add1~57\ & VCC)))) # (!\FD|REG_2|data_s\(103) & 
-- ((\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|ULA|Add1~57\) # (GND))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|ULA|Add1~57\))))
-- \FD|ULA|Add1~59\ = CARRY((\FD|REG_2|data_s\(103) & (\FD|mux_Banco_Ula|saida[29]~3_combout\ & !\FD|ULA|Add1~57\)) # (!\FD|REG_2|data_s\(103) & ((\FD|mux_Banco_Ula|saida[29]~3_combout\) # (!\FD|ULA|Add1~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(103),
	datab => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~57\,
	combout => \FD|ULA|Add1~58_combout\,
	cout => \FD|ULA|Add1~59\);

-- Location: LCCOMB_X109_Y38_N28
\FD|ULA|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~60_combout\ = ((\FD|mux_Banco_Ula|saida[30]~2_combout\ $ (\FD|REG_2|data_s\(104) $ (\FD|ULA|Add1~59\)))) # (GND)
-- \FD|ULA|Add1~61\ = CARRY((\FD|mux_Banco_Ula|saida[30]~2_combout\ & (\FD|REG_2|data_s\(104) & !\FD|ULA|Add1~59\)) # (!\FD|mux_Banco_Ula|saida[30]~2_combout\ & ((\FD|REG_2|data_s\(104)) # (!\FD|ULA|Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datab => \FD|REG_2|data_s\(104),
	datad => VCC,
	cin => \FD|ULA|Add1~59\,
	combout => \FD|ULA|Add1~60_combout\,
	cout => \FD|ULA|Add1~61\);

-- Location: LCCOMB_X110_Y39_N0
\FD|ULA|soma[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[0]~0_combout\ = (\FD|REG_2|data_s\(74) & (\FD|mux_Banco_Ula|saida[0]~0_combout\ $ (VCC))) # (!\FD|REG_2|data_s\(74) & (\FD|mux_Banco_Ula|saida[0]~0_combout\ & VCC))
-- \FD|ULA|soma[0]~1\ = CARRY((\FD|REG_2|data_s\(74) & \FD|mux_Banco_Ula|saida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(74),
	datab => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datad => VCC,
	combout => \FD|ULA|soma[0]~0_combout\,
	cout => \FD|ULA|soma[0]~1\);

-- Location: LCCOMB_X110_Y39_N2
\FD|ULA|soma[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[1]~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|REG_2|data_s\(75) & (\FD|ULA|soma[0]~1\ & VCC)) # (!\FD|REG_2|data_s\(75) & (!\FD|ULA|soma[0]~1\)))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|REG_2|data_s\(75) & 
-- (!\FD|ULA|soma[0]~1\)) # (!\FD|REG_2|data_s\(75) & ((\FD|ULA|soma[0]~1\) # (GND)))))
-- \FD|ULA|soma[1]~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~31_combout\ & (!\FD|REG_2|data_s\(75) & !\FD|ULA|soma[0]~1\)) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((!\FD|ULA|soma[0]~1\) # (!\FD|REG_2|data_s\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datab => \FD|REG_2|data_s\(75),
	datad => VCC,
	cin => \FD|ULA|soma[0]~1\,
	combout => \FD|ULA|soma[1]~2_combout\,
	cout => \FD|ULA|soma[1]~3\);

-- Location: LCCOMB_X110_Y39_N4
\FD|ULA|soma[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[2]~4_combout\ = ((\FD|mux_Banco_Ula|saida[2]~30_combout\ $ (\FD|REG_2|data_s\(76) $ (!\FD|ULA|soma[1]~3\)))) # (GND)
-- \FD|ULA|soma[2]~5\ = CARRY((\FD|mux_Banco_Ula|saida[2]~30_combout\ & ((\FD|REG_2|data_s\(76)) # (!\FD|ULA|soma[1]~3\))) # (!\FD|mux_Banco_Ula|saida[2]~30_combout\ & (\FD|REG_2|data_s\(76) & !\FD|ULA|soma[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|REG_2|data_s\(76),
	datad => VCC,
	cin => \FD|ULA|soma[1]~3\,
	combout => \FD|ULA|soma[2]~4_combout\,
	cout => \FD|ULA|soma[2]~5\);

-- Location: LCCOMB_X110_Y39_N6
\FD|ULA|soma[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[3]~6_combout\ = (\FD|REG_2|data_s\(77) & ((\FD|mux_Banco_Ula|saida[3]~29_combout\ & (\FD|ULA|soma[2]~5\ & VCC)) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & (!\FD|ULA|soma[2]~5\)))) # (!\FD|REG_2|data_s\(77) & 
-- ((\FD|mux_Banco_Ula|saida[3]~29_combout\ & (!\FD|ULA|soma[2]~5\)) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|ULA|soma[2]~5\) # (GND)))))
-- \FD|ULA|soma[3]~7\ = CARRY((\FD|REG_2|data_s\(77) & (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & !\FD|ULA|soma[2]~5\)) # (!\FD|REG_2|data_s\(77) & ((!\FD|ULA|soma[2]~5\) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(77),
	datab => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[2]~5\,
	combout => \FD|ULA|soma[3]~6_combout\,
	cout => \FD|ULA|soma[3]~7\);

-- Location: LCCOMB_X110_Y39_N8
\FD|ULA|soma[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[4]~8_combout\ = ((\FD|mux_Banco_Ula|saida[4]~28_combout\ $ (\FD|REG_2|data_s\(78) $ (!\FD|ULA|soma[3]~7\)))) # (GND)
-- \FD|ULA|soma[4]~9\ = CARRY((\FD|mux_Banco_Ula|saida[4]~28_combout\ & ((\FD|REG_2|data_s\(78)) # (!\FD|ULA|soma[3]~7\))) # (!\FD|mux_Banco_Ula|saida[4]~28_combout\ & (\FD|REG_2|data_s\(78) & !\FD|ULA|soma[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	datab => \FD|REG_2|data_s\(78),
	datad => VCC,
	cin => \FD|ULA|soma[3]~7\,
	combout => \FD|ULA|soma[4]~8_combout\,
	cout => \FD|ULA|soma[4]~9\);

-- Location: LCCOMB_X110_Y39_N10
\FD|ULA|soma[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[5]~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|REG_2|data_s\(79) & (\FD|ULA|soma[4]~9\ & VCC)) # (!\FD|REG_2|data_s\(79) & (!\FD|ULA|soma[4]~9\)))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|REG_2|data_s\(79) & 
-- (!\FD|ULA|soma[4]~9\)) # (!\FD|REG_2|data_s\(79) & ((\FD|ULA|soma[4]~9\) # (GND)))))
-- \FD|ULA|soma[5]~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~27_combout\ & (!\FD|REG_2|data_s\(79) & !\FD|ULA|soma[4]~9\)) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((!\FD|ULA|soma[4]~9\) # (!\FD|REG_2|data_s\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datab => \FD|REG_2|data_s\(79),
	datad => VCC,
	cin => \FD|ULA|soma[4]~9\,
	combout => \FD|ULA|soma[5]~10_combout\,
	cout => \FD|ULA|soma[5]~11\);

-- Location: LCCOMB_X110_Y39_N12
\FD|ULA|soma[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[6]~12_combout\ = ((\FD|mux_Banco_Ula|saida[6]~26_combout\ $ (\FD|REG_2|data_s\(80) $ (!\FD|ULA|soma[5]~11\)))) # (GND)
-- \FD|ULA|soma[6]~13\ = CARRY((\FD|mux_Banco_Ula|saida[6]~26_combout\ & ((\FD|REG_2|data_s\(80)) # (!\FD|ULA|soma[5]~11\))) # (!\FD|mux_Banco_Ula|saida[6]~26_combout\ & (\FD|REG_2|data_s\(80) & !\FD|ULA|soma[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datab => \FD|REG_2|data_s\(80),
	datad => VCC,
	cin => \FD|ULA|soma[5]~11\,
	combout => \FD|ULA|soma[6]~12_combout\,
	cout => \FD|ULA|soma[6]~13\);

-- Location: LCCOMB_X110_Y39_N14
\FD|ULA|soma[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[7]~14_combout\ = (\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|REG_2|data_s\(81) & (\FD|ULA|soma[6]~13\ & VCC)) # (!\FD|REG_2|data_s\(81) & (!\FD|ULA|soma[6]~13\)))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|REG_2|data_s\(81) & 
-- (!\FD|ULA|soma[6]~13\)) # (!\FD|REG_2|data_s\(81) & ((\FD|ULA|soma[6]~13\) # (GND)))))
-- \FD|ULA|soma[7]~15\ = CARRY((\FD|mux_Banco_Ula|saida[7]~25_combout\ & (!\FD|REG_2|data_s\(81) & !\FD|ULA|soma[6]~13\)) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((!\FD|ULA|soma[6]~13\) # (!\FD|REG_2|data_s\(81)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datab => \FD|REG_2|data_s\(81),
	datad => VCC,
	cin => \FD|ULA|soma[6]~13\,
	combout => \FD|ULA|soma[7]~14_combout\,
	cout => \FD|ULA|soma[7]~15\);

-- Location: LCCOMB_X110_Y39_N16
\FD|ULA|soma[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[8]~16_combout\ = ((\FD|REG_2|data_s\(82) $ (\FD|mux_Banco_Ula|saida[8]~24_combout\ $ (!\FD|ULA|soma[7]~15\)))) # (GND)
-- \FD|ULA|soma[8]~17\ = CARRY((\FD|REG_2|data_s\(82) & ((\FD|mux_Banco_Ula|saida[8]~24_combout\) # (!\FD|ULA|soma[7]~15\))) # (!\FD|REG_2|data_s\(82) & (\FD|mux_Banco_Ula|saida[8]~24_combout\ & !\FD|ULA|soma[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(82),
	datab => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[7]~15\,
	combout => \FD|ULA|soma[8]~16_combout\,
	cout => \FD|ULA|soma[8]~17\);

-- Location: LCCOMB_X110_Y39_N18
\FD|ULA|soma[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[9]~18_combout\ = (\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|REG_2|data_s\(83) & (\FD|ULA|soma[8]~17\ & VCC)) # (!\FD|REG_2|data_s\(83) & (!\FD|ULA|soma[8]~17\)))) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|REG_2|data_s\(83) & 
-- (!\FD|ULA|soma[8]~17\)) # (!\FD|REG_2|data_s\(83) & ((\FD|ULA|soma[8]~17\) # (GND)))))
-- \FD|ULA|soma[9]~19\ = CARRY((\FD|mux_Banco_Ula|saida[9]~23_combout\ & (!\FD|REG_2|data_s\(83) & !\FD|ULA|soma[8]~17\)) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((!\FD|ULA|soma[8]~17\) # (!\FD|REG_2|data_s\(83)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datab => \FD|REG_2|data_s\(83),
	datad => VCC,
	cin => \FD|ULA|soma[8]~17\,
	combout => \FD|ULA|soma[9]~18_combout\,
	cout => \FD|ULA|soma[9]~19\);

-- Location: LCCOMB_X110_Y39_N20
\FD|ULA|soma[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[10]~20_combout\ = ((\FD|REG_2|data_s\(84) $ (\FD|mux_Banco_Ula|saida[10]~22_combout\ $ (!\FD|ULA|soma[9]~19\)))) # (GND)
-- \FD|ULA|soma[10]~21\ = CARRY((\FD|REG_2|data_s\(84) & ((\FD|mux_Banco_Ula|saida[10]~22_combout\) # (!\FD|ULA|soma[9]~19\))) # (!\FD|REG_2|data_s\(84) & (\FD|mux_Banco_Ula|saida[10]~22_combout\ & !\FD|ULA|soma[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(84),
	datab => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[9]~19\,
	combout => \FD|ULA|soma[10]~20_combout\,
	cout => \FD|ULA|soma[10]~21\);

-- Location: LCCOMB_X110_Y39_N22
\FD|ULA|soma[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[11]~22_combout\ = (\FD|REG_2|data_s\(85) & ((\FD|mux_Banco_Ula|saida[11]~21_combout\ & (\FD|ULA|soma[10]~21\ & VCC)) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & (!\FD|ULA|soma[10]~21\)))) # (!\FD|REG_2|data_s\(85) & 
-- ((\FD|mux_Banco_Ula|saida[11]~21_combout\ & (!\FD|ULA|soma[10]~21\)) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|ULA|soma[10]~21\) # (GND)))))
-- \FD|ULA|soma[11]~23\ = CARRY((\FD|REG_2|data_s\(85) & (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & !\FD|ULA|soma[10]~21\)) # (!\FD|REG_2|data_s\(85) & ((!\FD|ULA|soma[10]~21\) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(85),
	datab => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[10]~21\,
	combout => \FD|ULA|soma[11]~22_combout\,
	cout => \FD|ULA|soma[11]~23\);

-- Location: LCCOMB_X110_Y39_N24
\FD|ULA|soma[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[12]~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~20_combout\ $ (\FD|REG_2|data_s\(86) $ (!\FD|ULA|soma[11]~23\)))) # (GND)
-- \FD|ULA|soma[12]~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~20_combout\ & ((\FD|REG_2|data_s\(86)) # (!\FD|ULA|soma[11]~23\))) # (!\FD|mux_Banco_Ula|saida[12]~20_combout\ & (\FD|REG_2|data_s\(86) & !\FD|ULA|soma[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datab => \FD|REG_2|data_s\(86),
	datad => VCC,
	cin => \FD|ULA|soma[11]~23\,
	combout => \FD|ULA|soma[12]~24_combout\,
	cout => \FD|ULA|soma[12]~25\);

-- Location: LCCOMB_X110_Y39_N26
\FD|ULA|soma[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[13]~26_combout\ = (\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|REG_2|data_s\(87) & (\FD|ULA|soma[12]~25\ & VCC)) # (!\FD|REG_2|data_s\(87) & (!\FD|ULA|soma[12]~25\)))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|REG_2|data_s\(87) 
-- & (!\FD|ULA|soma[12]~25\)) # (!\FD|REG_2|data_s\(87) & ((\FD|ULA|soma[12]~25\) # (GND)))))
-- \FD|ULA|soma[13]~27\ = CARRY((\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|REG_2|data_s\(87) & !\FD|ULA|soma[12]~25\)) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((!\FD|ULA|soma[12]~25\) # (!\FD|REG_2|data_s\(87)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datab => \FD|REG_2|data_s\(87),
	datad => VCC,
	cin => \FD|ULA|soma[12]~25\,
	combout => \FD|ULA|soma[13]~26_combout\,
	cout => \FD|ULA|soma[13]~27\);

-- Location: LCCOMB_X110_Y39_N28
\FD|ULA|soma[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[14]~28_combout\ = ((\FD|mux_Banco_Ula|saida[14]~18_combout\ $ (\FD|REG_2|data_s\(88) $ (!\FD|ULA|soma[13]~27\)))) # (GND)
-- \FD|ULA|soma[14]~29\ = CARRY((\FD|mux_Banco_Ula|saida[14]~18_combout\ & ((\FD|REG_2|data_s\(88)) # (!\FD|ULA|soma[13]~27\))) # (!\FD|mux_Banco_Ula|saida[14]~18_combout\ & (\FD|REG_2|data_s\(88) & !\FD|ULA|soma[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datab => \FD|REG_2|data_s\(88),
	datad => VCC,
	cin => \FD|ULA|soma[13]~27\,
	combout => \FD|ULA|soma[14]~28_combout\,
	cout => \FD|ULA|soma[14]~29\);

-- Location: LCCOMB_X110_Y39_N30
\FD|ULA|soma[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[15]~30_combout\ = (\FD|REG_2|data_s\(89) & ((\FD|mux_Banco_Ula|saida[15]~17_combout\ & (\FD|ULA|soma[14]~29\ & VCC)) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & (!\FD|ULA|soma[14]~29\)))) # (!\FD|REG_2|data_s\(89) & 
-- ((\FD|mux_Banco_Ula|saida[15]~17_combout\ & (!\FD|ULA|soma[14]~29\)) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|ULA|soma[14]~29\) # (GND)))))
-- \FD|ULA|soma[15]~31\ = CARRY((\FD|REG_2|data_s\(89) & (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & !\FD|ULA|soma[14]~29\)) # (!\FD|REG_2|data_s\(89) & ((!\FD|ULA|soma[14]~29\) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(89),
	datab => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[14]~29\,
	combout => \FD|ULA|soma[15]~30_combout\,
	cout => \FD|ULA|soma[15]~31\);

-- Location: LCCOMB_X110_Y38_N0
\FD|ULA|soma[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[16]~32_combout\ = ((\FD|REG_2|data_s\(90) $ (\FD|mux_Banco_Ula|saida[16]~16_combout\ $ (!\FD|ULA|soma[15]~31\)))) # (GND)
-- \FD|ULA|soma[16]~33\ = CARRY((\FD|REG_2|data_s\(90) & ((\FD|mux_Banco_Ula|saida[16]~16_combout\) # (!\FD|ULA|soma[15]~31\))) # (!\FD|REG_2|data_s\(90) & (\FD|mux_Banco_Ula|saida[16]~16_combout\ & !\FD|ULA|soma[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(90),
	datab => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[15]~31\,
	combout => \FD|ULA|soma[16]~32_combout\,
	cout => \FD|ULA|soma[16]~33\);

-- Location: LCCOMB_X110_Y38_N2
\FD|ULA|soma[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[17]~34_combout\ = (\FD|REG_2|data_s\(91) & ((\FD|mux_Banco_Ula|saida[17]~15_combout\ & (\FD|ULA|soma[16]~33\ & VCC)) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & (!\FD|ULA|soma[16]~33\)))) # (!\FD|REG_2|data_s\(91) & 
-- ((\FD|mux_Banco_Ula|saida[17]~15_combout\ & (!\FD|ULA|soma[16]~33\)) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|ULA|soma[16]~33\) # (GND)))))
-- \FD|ULA|soma[17]~35\ = CARRY((\FD|REG_2|data_s\(91) & (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & !\FD|ULA|soma[16]~33\)) # (!\FD|REG_2|data_s\(91) & ((!\FD|ULA|soma[16]~33\) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(91),
	datab => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[16]~33\,
	combout => \FD|ULA|soma[17]~34_combout\,
	cout => \FD|ULA|soma[17]~35\);

-- Location: LCCOMB_X110_Y38_N4
\FD|ULA|soma[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[18]~36_combout\ = ((\FD|REG_2|data_s\(92) $ (\FD|mux_Banco_Ula|saida[18]~14_combout\ $ (!\FD|ULA|soma[17]~35\)))) # (GND)
-- \FD|ULA|soma[18]~37\ = CARRY((\FD|REG_2|data_s\(92) & ((\FD|mux_Banco_Ula|saida[18]~14_combout\) # (!\FD|ULA|soma[17]~35\))) # (!\FD|REG_2|data_s\(92) & (\FD|mux_Banco_Ula|saida[18]~14_combout\ & !\FD|ULA|soma[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(92),
	datab => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[17]~35\,
	combout => \FD|ULA|soma[18]~36_combout\,
	cout => \FD|ULA|soma[18]~37\);

-- Location: LCCOMB_X110_Y38_N6
\FD|ULA|soma[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[19]~38_combout\ = (\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|REG_2|data_s\(93) & (\FD|ULA|soma[18]~37\ & VCC)) # (!\FD|REG_2|data_s\(93) & (!\FD|ULA|soma[18]~37\)))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|REG_2|data_s\(93) 
-- & (!\FD|ULA|soma[18]~37\)) # (!\FD|REG_2|data_s\(93) & ((\FD|ULA|soma[18]~37\) # (GND)))))
-- \FD|ULA|soma[19]~39\ = CARRY((\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|REG_2|data_s\(93) & !\FD|ULA|soma[18]~37\)) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((!\FD|ULA|soma[18]~37\) # (!\FD|REG_2|data_s\(93)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datab => \FD|REG_2|data_s\(93),
	datad => VCC,
	cin => \FD|ULA|soma[18]~37\,
	combout => \FD|ULA|soma[19]~38_combout\,
	cout => \FD|ULA|soma[19]~39\);

-- Location: LCCOMB_X110_Y38_N8
\FD|ULA|soma[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[20]~40_combout\ = ((\FD|REG_2|data_s\(94) $ (\FD|mux_Banco_Ula|saida[20]~12_combout\ $ (!\FD|ULA|soma[19]~39\)))) # (GND)
-- \FD|ULA|soma[20]~41\ = CARRY((\FD|REG_2|data_s\(94) & ((\FD|mux_Banco_Ula|saida[20]~12_combout\) # (!\FD|ULA|soma[19]~39\))) # (!\FD|REG_2|data_s\(94) & (\FD|mux_Banco_Ula|saida[20]~12_combout\ & !\FD|ULA|soma[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(94),
	datab => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[19]~39\,
	combout => \FD|ULA|soma[20]~40_combout\,
	cout => \FD|ULA|soma[20]~41\);

-- Location: LCCOMB_X110_Y38_N10
\FD|ULA|soma[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[21]~42_combout\ = (\FD|REG_2|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~11_combout\ & (\FD|ULA|soma[20]~41\ & VCC)) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|ULA|soma[20]~41\)))) # (!\FD|REG_2|data_s\(95) & 
-- ((\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|ULA|soma[20]~41\)) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|ULA|soma[20]~41\) # (GND)))))
-- \FD|ULA|soma[21]~43\ = CARRY((\FD|REG_2|data_s\(95) & (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & !\FD|ULA|soma[20]~41\)) # (!\FD|REG_2|data_s\(95) & ((!\FD|ULA|soma[20]~41\) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(95),
	datab => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[20]~41\,
	combout => \FD|ULA|soma[21]~42_combout\,
	cout => \FD|ULA|soma[21]~43\);

-- Location: LCCOMB_X110_Y38_N12
\FD|ULA|soma[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[22]~44_combout\ = ((\FD|REG_2|data_s\(96) $ (\FD|mux_Banco_Ula|saida[22]~10_combout\ $ (!\FD|ULA|soma[21]~43\)))) # (GND)
-- \FD|ULA|soma[22]~45\ = CARRY((\FD|REG_2|data_s\(96) & ((\FD|mux_Banco_Ula|saida[22]~10_combout\) # (!\FD|ULA|soma[21]~43\))) # (!\FD|REG_2|data_s\(96) & (\FD|mux_Banco_Ula|saida[22]~10_combout\ & !\FD|ULA|soma[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(96),
	datab => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[21]~43\,
	combout => \FD|ULA|soma[22]~44_combout\,
	cout => \FD|ULA|soma[22]~45\);

-- Location: LCCOMB_X110_Y38_N14
\FD|ULA|soma[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[23]~46_combout\ = (\FD|REG_2|data_s\(97) & ((\FD|mux_Banco_Ula|saida[23]~9_combout\ & (\FD|ULA|soma[22]~45\ & VCC)) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & (!\FD|ULA|soma[22]~45\)))) # (!\FD|REG_2|data_s\(97) & 
-- ((\FD|mux_Banco_Ula|saida[23]~9_combout\ & (!\FD|ULA|soma[22]~45\)) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((\FD|ULA|soma[22]~45\) # (GND)))))
-- \FD|ULA|soma[23]~47\ = CARRY((\FD|REG_2|data_s\(97) & (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & !\FD|ULA|soma[22]~45\)) # (!\FD|REG_2|data_s\(97) & ((!\FD|ULA|soma[22]~45\) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(97),
	datab => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[22]~45\,
	combout => \FD|ULA|soma[23]~46_combout\,
	cout => \FD|ULA|soma[23]~47\);

-- Location: LCCOMB_X110_Y38_N16
\FD|ULA|soma[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[24]~48_combout\ = ((\FD|REG_2|data_s\(98) $ (\FD|mux_Banco_Ula|saida[24]~8_combout\ $ (!\FD|ULA|soma[23]~47\)))) # (GND)
-- \FD|ULA|soma[24]~49\ = CARRY((\FD|REG_2|data_s\(98) & ((\FD|mux_Banco_Ula|saida[24]~8_combout\) # (!\FD|ULA|soma[23]~47\))) # (!\FD|REG_2|data_s\(98) & (\FD|mux_Banco_Ula|saida[24]~8_combout\ & !\FD|ULA|soma[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(98),
	datab => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[23]~47\,
	combout => \FD|ULA|soma[24]~48_combout\,
	cout => \FD|ULA|soma[24]~49\);

-- Location: LCCOMB_X110_Y38_N18
\FD|ULA|soma[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[25]~50_combout\ = (\FD|REG_2|data_s\(99) & ((\FD|mux_Banco_Ula|saida[25]~7_combout\ & (\FD|ULA|soma[24]~49\ & VCC)) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|ULA|soma[24]~49\)))) # (!\FD|REG_2|data_s\(99) & 
-- ((\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|ULA|soma[24]~49\)) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|ULA|soma[24]~49\) # (GND)))))
-- \FD|ULA|soma[25]~51\ = CARRY((\FD|REG_2|data_s\(99) & (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & !\FD|ULA|soma[24]~49\)) # (!\FD|REG_2|data_s\(99) & ((!\FD|ULA|soma[24]~49\) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(99),
	datab => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[24]~49\,
	combout => \FD|ULA|soma[25]~50_combout\,
	cout => \FD|ULA|soma[25]~51\);

-- Location: LCCOMB_X110_Y38_N20
\FD|ULA|soma[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[26]~52_combout\ = ((\FD|REG_2|data_s\(100) $ (\FD|mux_Banco_Ula|saida[26]~6_combout\ $ (!\FD|ULA|soma[25]~51\)))) # (GND)
-- \FD|ULA|soma[26]~53\ = CARRY((\FD|REG_2|data_s\(100) & ((\FD|mux_Banco_Ula|saida[26]~6_combout\) # (!\FD|ULA|soma[25]~51\))) # (!\FD|REG_2|data_s\(100) & (\FD|mux_Banco_Ula|saida[26]~6_combout\ & !\FD|ULA|soma[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(100),
	datab => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[25]~51\,
	combout => \FD|ULA|soma[26]~52_combout\,
	cout => \FD|ULA|soma[26]~53\);

-- Location: LCCOMB_X110_Y38_N22
\FD|ULA|soma[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[27]~54_combout\ = (\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|REG_2|data_s\(101) & (\FD|ULA|soma[26]~53\ & VCC)) # (!\FD|REG_2|data_s\(101) & (!\FD|ULA|soma[26]~53\)))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|REG_2|data_s\(101) 
-- & (!\FD|ULA|soma[26]~53\)) # (!\FD|REG_2|data_s\(101) & ((\FD|ULA|soma[26]~53\) # (GND)))))
-- \FD|ULA|soma[27]~55\ = CARRY((\FD|mux_Banco_Ula|saida[27]~5_combout\ & (!\FD|REG_2|data_s\(101) & !\FD|ULA|soma[26]~53\)) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((!\FD|ULA|soma[26]~53\) # (!\FD|REG_2|data_s\(101)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datab => \FD|REG_2|data_s\(101),
	datad => VCC,
	cin => \FD|ULA|soma[26]~53\,
	combout => \FD|ULA|soma[27]~54_combout\,
	cout => \FD|ULA|soma[27]~55\);

-- Location: LCCOMB_X110_Y38_N24
\FD|ULA|soma[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[28]~56_combout\ = ((\FD|REG_2|data_s\(102) $ (\FD|mux_Banco_Ula|saida[28]~4_combout\ $ (!\FD|ULA|soma[27]~55\)))) # (GND)
-- \FD|ULA|soma[28]~57\ = CARRY((\FD|REG_2|data_s\(102) & ((\FD|mux_Banco_Ula|saida[28]~4_combout\) # (!\FD|ULA|soma[27]~55\))) # (!\FD|REG_2|data_s\(102) & (\FD|mux_Banco_Ula|saida[28]~4_combout\ & !\FD|ULA|soma[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(102),
	datab => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[27]~55\,
	combout => \FD|ULA|soma[28]~56_combout\,
	cout => \FD|ULA|soma[28]~57\);

-- Location: LCCOMB_X110_Y38_N26
\FD|ULA|soma[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[29]~58_combout\ = (\FD|REG_2|data_s\(103) & ((\FD|mux_Banco_Ula|saida[29]~3_combout\ & (\FD|ULA|soma[28]~57\ & VCC)) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|ULA|soma[28]~57\)))) # (!\FD|REG_2|data_s\(103) & 
-- ((\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|ULA|soma[28]~57\)) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|ULA|soma[28]~57\) # (GND)))))
-- \FD|ULA|soma[29]~59\ = CARRY((\FD|REG_2|data_s\(103) & (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & !\FD|ULA|soma[28]~57\)) # (!\FD|REG_2|data_s\(103) & ((!\FD|ULA|soma[28]~57\) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(103),
	datab => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[28]~57\,
	combout => \FD|ULA|soma[29]~58_combout\,
	cout => \FD|ULA|soma[29]~59\);

-- Location: LCCOMB_X110_Y38_N28
\FD|ULA|soma[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[30]~60_combout\ = ((\FD|REG_2|data_s\(104) $ (\FD|mux_Banco_Ula|saida[30]~2_combout\ $ (!\FD|ULA|soma[29]~59\)))) # (GND)
-- \FD|ULA|soma[30]~61\ = CARRY((\FD|REG_2|data_s\(104) & ((\FD|mux_Banco_Ula|saida[30]~2_combout\) # (!\FD|ULA|soma[29]~59\))) # (!\FD|REG_2|data_s\(104) & (\FD|mux_Banco_Ula|saida[30]~2_combout\ & !\FD|ULA|soma[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(104),
	datab => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[29]~59\,
	combout => \FD|ULA|soma[30]~60_combout\,
	cout => \FD|ULA|soma[30]~61\);

-- Location: LCCOMB_X111_Y38_N20
\FD|ULA|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~4_combout\ = (\FD|ULA|soma[30]~60_combout\ & ((\FD|REG_2|data_s\(139)) # ((!\FD|REG_2|data_s\(142)) # (!\FD|UCULA|ALUctr[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(139),
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|ULA|soma[30]~60_combout\,
	combout => \FD|ULA|Mux1~4_combout\);

-- Location: LCCOMB_X112_Y38_N2
\FD|ULA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~60_combout\ & (\FD|ULA|Mux21~2_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux1~4_combout\) # (!\FD|ULA|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Add1~60_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux1~4_combout\,
	combout => \FD|ULA|Mux1~2_combout\);

-- Location: LCCOMB_X112_Y38_N4
\FD|ULA|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(104) & ((\FD|mux_Banco_Ula|saida[30]~2_combout\) # (!\FD|ULA|Mux1~2_combout\))) # (!\FD|REG_2|data_s\(104) & (\FD|mux_Banco_Ula|saida[30]~2_combout\ & !\FD|ULA|Mux1~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(104),
	datab => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux1~2_combout\,
	combout => \FD|ULA|Mux1~3_combout\);

-- Location: FF_X112_Y38_N5
\FD|REG_3|data_s[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(67));

-- Location: FF_X112_Y38_N25
\FD|REG_4|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(67),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(35));

-- Location: FF_X114_Y40_N9
\FD|REG_3|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(61),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(24));

-- Location: FF_X108_Y40_N21
\FD|REG_3|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(25));

-- Location: FF_X107_Y40_N19
\FD|REG_3|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(63),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(26));

-- Location: FF_X109_Y40_N31
\FD|REG_3|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(64),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(27));

-- Location: LCCOMB_X105_Y40_N26
\FD|REG_3|data_s[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[28]~feeder_combout\ = \FD|REG_2|data_s\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_2|data_s\(65),
	combout => \FD|REG_3|data_s[28]~feeder_combout\);

-- Location: FF_X105_Y40_N27
\FD|REG_3|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(28));

-- Location: LCCOMB_X107_Y40_N4
\FD|REG_3|data_s[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[29]~feeder_combout\ = \FD|REG_2|data_s\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(66),
	combout => \FD|REG_3|data_s[29]~feeder_combout\);

-- Location: FF_X107_Y40_N5
\FD|REG_3|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(29));

-- Location: FF_X110_Y40_N23
\FD|REG_3|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(67),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(30));

-- Location: LCCOMB_X108_Y40_N8
\FD|REG_3|data_s[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[31]~feeder_combout\ = \FD|REG_2|data_s\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(68),
	combout => \FD|REG_3|data_s[31]~feeder_combout\);

-- Location: FF_X108_Y40_N9
\FD|REG_3|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(31));

-- Location: LCCOMB_X108_Y40_N26
\FD|REG_3|data_s[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[32]~feeder_combout\ = \FD|REG_2|data_s\(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(69),
	combout => \FD|REG_3|data_s[32]~feeder_combout\);

-- Location: FF_X108_Y40_N27
\FD|REG_3|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(32));

-- Location: FF_X109_Y40_N5
\FD|REG_3|data_s[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(70),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(33));

-- Location: LCCOMB_X108_Y40_N0
\FD|REG_3|data_s[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[34]~feeder_combout\ = \FD|REG_2|data_s\(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(71),
	combout => \FD|REG_3|data_s[34]~feeder_combout\);

-- Location: FF_X108_Y40_N1
\FD|REG_3|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(34));

-- Location: FF_X107_Y40_N27
\FD|REG_3|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(72),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(35));

-- Location: FF_X105_Y40_N5
\FD|REG_3|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(73),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(36));

-- Location: M9K_X104_Y40_N0
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_3|data_s\(102),
	portare => VCC,
	clk0 => \KEY[0]~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y40_N12
\FD|mux_Ula_Memoria|saida[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[30]~2_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(35),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\,
	datad => \FD|REG_4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[30]~2_combout\);

-- Location: LCCOMB_X111_Y37_N24
\FD|BR|saidaA[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~7_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[29]~6_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\))) # (!\FD|BR|saidaA[29]~6_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[29]~6_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(69),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[29]~7_combout\);

-- Location: FF_X111_Y37_N25
\FD|REG_2|data_s[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(103));

-- Location: LCCOMB_X110_Y37_N2
\FD|ULA|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~4_combout\ = (\FD|ULA|soma[29]~58_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|ULA|soma[29]~58_combout\,
	combout => \FD|ULA|Mux2~4_combout\);

-- Location: LCCOMB_X110_Y37_N6
\FD|ULA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~58_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux2~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~2_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Add1~58_combout\,
	datad => \FD|ULA|Mux2~4_combout\,
	combout => \FD|ULA|Mux2~2_combout\);

-- Location: LCCOMB_X110_Y37_N8
\FD|ULA|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(103) & ((\FD|mux_Banco_Ula|saida[29]~3_combout\) # (!\FD|ULA|Mux2~2_combout\))) # (!\FD|REG_2|data_s\(103) & (\FD|mux_Banco_Ula|saida[29]~3_combout\ & !\FD|ULA|Mux2~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(103),
	datab => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux2~2_combout\,
	combout => \FD|ULA|Mux2~3_combout\);

-- Location: FF_X110_Y37_N9
\FD|REG_3|data_s[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(66));

-- Location: LCCOMB_X106_Y37_N26
\FD|REG_4|data_s[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[34]~feeder_combout\ = \FD|REG_3|data_s\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(66),
	combout => \FD|REG_4|data_s[34]~feeder_combout\);

-- Location: FF_X106_Y37_N27
\FD|REG_4|data_s[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(34));

-- Location: LCCOMB_X105_Y37_N8
\FD|mux_Ula_Memoria|saida[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[29]~3_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(34),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\,
	combout => \FD|mux_Ula_Memoria|saida[29]~3_combout\);

-- Location: LCCOMB_X106_Y40_N18
\FD|BR|saidaA[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~9_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[28]~8_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\))) # (!\FD|BR|saidaA[28]~8_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(67),
	datab => \FD|BR|saidaA[28]~8_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[28]~9_combout\);

-- Location: FF_X106_Y40_N19
\FD|REG_2|data_s[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(102));

-- Location: LCCOMB_X111_Y39_N2
\FD|ULA|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~4_combout\ = (\FD|ULA|soma[28]~56_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[28]~56_combout\,
	combout => \FD|ULA|Mux3~4_combout\);

-- Location: LCCOMB_X111_Y39_N10
\FD|ULA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~56_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux3~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~56_combout\,
	datad => \FD|ULA|Mux3~4_combout\,
	combout => \FD|ULA|Mux3~2_combout\);

-- Location: LCCOMB_X111_Y39_N0
\FD|ULA|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(102) & ((\FD|mux_Banco_Ula|saida[28]~4_combout\) # (!\FD|ULA|Mux3~2_combout\))) # (!\FD|REG_2|data_s\(102) & (\FD|mux_Banco_Ula|saida[28]~4_combout\ & !\FD|ULA|Mux3~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(102),
	datab => \FD|ULA|Mux31~0_combout\,
	datac => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datad => \FD|ULA|Mux3~2_combout\,
	combout => \FD|ULA|Mux3~3_combout\);

-- Location: FF_X111_Y39_N1
\FD|REG_3|data_s[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(65));

-- Location: LCCOMB_X111_Y40_N28
\FD|REG_4|data_s[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[33]~feeder_combout\ = \FD|REG_3|data_s\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(65),
	combout => \FD|REG_4|data_s[33]~feeder_combout\);

-- Location: FF_X111_Y40_N29
\FD|REG_4|data_s[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(33));

-- Location: LCCOMB_X105_Y40_N10
\FD|mux_Ula_Memoria|saida[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[28]~4_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(69),
	datac => \FD|REG_4|data_s\(33),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\,
	combout => \FD|mux_Ula_Memoria|saida[28]~4_combout\);

-- Location: LCCOMB_X109_Y40_N28
\FD|BR|saidaB[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~11_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[27]~10_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\))) # (!\FD|BR|saidaB[27]~10_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[27]~10_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(65),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\,
	combout => \FD|BR|saidaB[27]~11_combout\);

-- Location: FF_X109_Y40_N29
\FD|REG_2|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(69));

-- Location: LCCOMB_X109_Y40_N16
\FD|mux_Banco_Ula|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[27]~5_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(69),
	datab => \FD|REG_2|data_s\(138),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[27]~5_combout\);

-- Location: LCCOMB_X110_Y40_N10
\FD|ULA|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~4_combout\ = (\FD|ULA|soma[27]~54_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|REG_2|data_s\(139),
	datad => \FD|ULA|soma[27]~54_combout\,
	combout => \FD|ULA|Mux4~4_combout\);

-- Location: LCCOMB_X110_Y40_N24
\FD|ULA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~54_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux4~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~54_combout\,
	datad => \FD|ULA|Mux4~4_combout\,
	combout => \FD|ULA|Mux4~2_combout\);

-- Location: LCCOMB_X110_Y40_N4
\FD|ULA|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|REG_2|data_s\(101)) # (!\FD|ULA|Mux4~2_combout\))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & (\FD|REG_2|data_s\(101) & !\FD|ULA|Mux4~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datab => \FD|REG_2|data_s\(101),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux4~2_combout\,
	combout => \FD|ULA|Mux4~3_combout\);

-- Location: FF_X110_Y40_N5
\FD|REG_3|data_s[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(64));

-- Location: FF_X110_Y40_N7
\FD|REG_4|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(64),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(32));

-- Location: LCCOMB_X110_Y40_N26
\FD|mux_Ula_Memoria|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[27]~5_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(69),
	datac => \FD|REG_4|data_s\(32),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\,
	combout => \FD|mux_Ula_Memoria|saida[27]~5_combout\);

-- Location: LCCOMB_X111_Y37_N10
\FD|BR|saidaA[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~13_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[26]~12_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\))) # (!\FD|BR|saidaA[26]~12_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(63),
	datac => \FD|BR|saidaA[26]~12_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\,
	combout => \FD|BR|saidaA[26]~13_combout\);

-- Location: FF_X111_Y37_N11
\FD|REG_2|data_s[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(100));

-- Location: LCCOMB_X111_Y37_N20
\FD|ULA|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~4_combout\ = (\FD|ULA|soma[26]~52_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(142),
	datac => \FD|ULA|soma[26]~52_combout\,
	datad => \FD|REG_2|data_s\(139),
	combout => \FD|ULA|Mux5~4_combout\);

-- Location: LCCOMB_X111_Y37_N0
\FD|ULA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~52_combout\ & (\FD|ULA|Mux21~2_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux5~4_combout\) # (!\FD|ULA|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~52_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux5~4_combout\,
	combout => \FD|ULA|Mux5~2_combout\);

-- Location: LCCOMB_X111_Y37_N6
\FD|ULA|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(100) & ((\FD|mux_Banco_Ula|saida[26]~6_combout\) # (!\FD|ULA|Mux5~2_combout\))) # (!\FD|REG_2|data_s\(100) & (\FD|mux_Banco_Ula|saida[26]~6_combout\ & !\FD|ULA|Mux5~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(100),
	datab => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux5~2_combout\,
	combout => \FD|ULA|Mux5~3_combout\);

-- Location: FF_X111_Y37_N7
\FD|REG_3|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(63));

-- Location: LCCOMB_X111_Y37_N26
\FD|REG_4|data_s[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[31]~feeder_combout\ = \FD|REG_3|data_s\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(63),
	combout => \FD|REG_4|data_s[31]~feeder_combout\);

-- Location: FF_X111_Y37_N27
\FD|REG_4|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(31));

-- Location: LCCOMB_X105_Y37_N22
\FD|mux_Ula_Memoria|saida[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[26]~6_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(31),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\,
	combout => \FD|mux_Ula_Memoria|saida[26]~6_combout\);

-- Location: LCCOMB_X106_Y40_N16
\FD|BR|saidaA[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~15_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[25]~14_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\))) # (!\FD|BR|saidaA[25]~14_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(61),
	datac => \FD|BR|saidaA[25]~14_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\,
	combout => \FD|BR|saidaA[25]~15_combout\);

-- Location: FF_X106_Y40_N17
\FD|REG_2|data_s[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(99));

-- Location: LCCOMB_X111_Y39_N4
\FD|ULA|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~4_combout\ = (\FD|ULA|soma[25]~50_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(142),
	datac => \FD|ULA|soma[25]~50_combout\,
	datad => \FD|REG_2|data_s\(139),
	combout => \FD|ULA|Mux6~4_combout\);

-- Location: LCCOMB_X111_Y39_N6
\FD|ULA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Add1~50_combout\)))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux6~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux6~4_combout\,
	datad => \FD|ULA|Add1~50_combout\,
	combout => \FD|ULA|Mux6~2_combout\);

-- Location: LCCOMB_X111_Y39_N8
\FD|ULA|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(99) & ((\FD|mux_Banco_Ula|saida[25]~7_combout\) # (!\FD|ULA|Mux6~2_combout\))) # (!\FD|REG_2|data_s\(99) & (\FD|mux_Banco_Ula|saida[25]~7_combout\ & !\FD|ULA|Mux6~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(99),
	datab => \FD|ULA|Mux31~0_combout\,
	datac => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datad => \FD|ULA|Mux6~2_combout\,
	combout => \FD|ULA|Mux6~3_combout\);

-- Location: FF_X111_Y39_N9
\FD|REG_3|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(62));

-- Location: FF_X106_Y40_N1
\FD|REG_4|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(30));

-- Location: LCCOMB_X105_Y40_N14
\FD|mux_Ula_Memoria|saida[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[25]~7_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(69),
	datac => \FD|REG_4|data_s\(30),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\,
	combout => \FD|mux_Ula_Memoria|saida[25]~7_combout\);

-- Location: LCCOMB_X107_Y38_N8
\FD|BR|bancoReg_rtl_1_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\);

-- Location: FF_X107_Y38_N9
\FD|BR|bancoReg_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(60));

-- Location: LCCOMB_X107_Y38_N18
\FD|BR|saidaB[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~16_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(60) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(60),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[24]~16_combout\);

-- Location: LCCOMB_X107_Y38_N20
\FD|BR|saidaB[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~17_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[24]~16_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\))) # (!\FD|BR|saidaB[24]~16_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(59),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\,
	datad => \FD|BR|saidaB[24]~16_combout\,
	combout => \FD|BR|saidaB[24]~17_combout\);

-- Location: FF_X107_Y38_N21
\FD|REG_2|data_s[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(66));

-- Location: LCCOMB_X107_Y38_N14
\FD|mux_Banco_Ula|saida[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[24]~8_combout\ = (\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(41))) # (!\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(138),
	datad => \FD|REG_2|data_s\(66),
	combout => \FD|mux_Banco_Ula|saida[24]~8_combout\);

-- Location: LCCOMB_X110_Y36_N16
\FD|ULA|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~4_combout\ = (\FD|ULA|soma[24]~48_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[24]~48_combout\,
	combout => \FD|ULA|Mux7~4_combout\);

-- Location: LCCOMB_X110_Y36_N20
\FD|ULA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~48_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux7~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~48_combout\,
	datad => \FD|ULA|Mux7~4_combout\,
	combout => \FD|ULA|Mux7~2_combout\);

-- Location: LCCOMB_X110_Y36_N22
\FD|ULA|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[24]~8_combout\ & ((\FD|REG_2|data_s\(98)) # (!\FD|ULA|Mux7~2_combout\))) # (!\FD|mux_Banco_Ula|saida[24]~8_combout\ & (\FD|REG_2|data_s\(98) & !\FD|ULA|Mux7~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datab => \FD|ULA|Mux31~0_combout\,
	datac => \FD|REG_2|data_s\(98),
	datad => \FD|ULA|Mux7~2_combout\,
	combout => \FD|ULA|Mux7~3_combout\);

-- Location: FF_X110_Y36_N23
\FD|REG_3|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(61));

-- Location: LCCOMB_X114_Y36_N22
\FD|REG_4|data_s[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[29]~feeder_combout\ = \FD|REG_3|data_s\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(61),
	combout => \FD|REG_4|data_s[29]~feeder_combout\);

-- Location: FF_X114_Y36_N23
\FD|REG_4|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(29));

-- Location: LCCOMB_X103_Y38_N20
\FD|mux_Ula_Memoria|saida[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[24]~8_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(69),
	datac => \FD|REG_4|data_s\(29),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\,
	combout => \FD|mux_Ula_Memoria|saida[24]~8_combout\);

-- Location: LCCOMB_X105_Y38_N18
\FD|BR|saidaA[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~19_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[23]~18_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\))) # (!\FD|BR|saidaA[23]~18_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[23]~18_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(57),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\,
	combout => \FD|BR|saidaA[23]~19_combout\);

-- Location: FF_X105_Y38_N19
\FD|REG_2|data_s[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(97));

-- Location: LCCOMB_X105_Y38_N22
\FD|ULA|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~4_combout\ = (\FD|ULA|soma[23]~46_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(142),
	datac => \FD|REG_2|data_s\(139),
	datad => \FD|ULA|soma[23]~46_combout\,
	combout => \FD|ULA|Mux8~4_combout\);

-- Location: LCCOMB_X105_Y38_N2
\FD|ULA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Add1~46_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux8~4_combout\)))) # (!\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~2_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Mux8~4_combout\,
	datad => \FD|ULA|Add1~46_combout\,
	combout => \FD|ULA|Mux8~2_combout\);

-- Location: LCCOMB_X105_Y38_N28
\FD|ULA|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(97) & ((\FD|mux_Banco_Ula|saida[23]~9_combout\) # (!\FD|ULA|Mux8~2_combout\))) # (!\FD|REG_2|data_s\(97) & (\FD|mux_Banco_Ula|saida[23]~9_combout\ & !\FD|ULA|Mux8~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(97),
	datab => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux8~2_combout\,
	combout => \FD|ULA|Mux8~3_combout\);

-- Location: FF_X105_Y38_N29
\FD|REG_3|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(60));

-- Location: LCCOMB_X105_Y38_N26
\FD|REG_4|data_s[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[28]~feeder_combout\ = \FD|REG_3|data_s\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(60),
	combout => \FD|REG_4|data_s[28]~feeder_combout\);

-- Location: FF_X105_Y38_N27
\FD|REG_4|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(28));

-- Location: LCCOMB_X105_Y38_N0
\FD|mux_Ula_Memoria|saida[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[23]~9_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(69),
	datac => \FD|REG_4|data_s\(28),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\,
	combout => \FD|mux_Ula_Memoria|saida[23]~9_combout\);

-- Location: LCCOMB_X113_Y40_N16
\FD|BR|bancoReg_rtl_1_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\);

-- Location: FF_X113_Y40_N17
\FD|BR|bancoReg_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(56));

-- Location: LCCOMB_X109_Y40_N6
\FD|BR|saidaB[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~20_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(56) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(56),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[22]~20_combout\);

-- Location: LCCOMB_X109_Y40_N14
\FD|BR|saidaB[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~21_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[22]~20_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\))) # (!\FD|BR|saidaB[22]~20_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(55),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\,
	datad => \FD|BR|saidaB[22]~20_combout\,
	combout => \FD|BR|saidaB[22]~21_combout\);

-- Location: FF_X109_Y40_N15
\FD|REG_2|data_s[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(64));

-- Location: LCCOMB_X108_Y38_N12
\FD|mux_Banco_Ula|saida[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[22]~10_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(64),
	datab => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[22]~10_combout\);

-- Location: LCCOMB_X108_Y38_N22
\FD|ULA|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~4_combout\ = (\FD|ULA|soma[22]~44_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|REG_2|data_s\(139),
	datad => \FD|ULA|soma[22]~44_combout\,
	combout => \FD|ULA|Mux9~4_combout\);

-- Location: LCCOMB_X108_Y38_N10
\FD|ULA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Add1~44_combout\)))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux9~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux9~4_combout\,
	datad => \FD|ULA|Add1~44_combout\,
	combout => \FD|ULA|Mux9~2_combout\);

-- Location: LCCOMB_X108_Y38_N0
\FD|ULA|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[22]~10_combout\ & ((\FD|REG_2|data_s\(96)) # (!\FD|ULA|Mux9~2_combout\))) # (!\FD|mux_Banco_Ula|saida[22]~10_combout\ & (\FD|REG_2|data_s\(96) & !\FD|ULA|Mux9~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datab => \FD|REG_2|data_s\(96),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux9~2_combout\,
	combout => \FD|ULA|Mux9~3_combout\);

-- Location: FF_X108_Y38_N1
\FD|REG_3|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(59));

-- Location: LCCOMB_X108_Y40_N16
\FD|REG_4|data_s[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[27]~feeder_combout\ = \FD|REG_3|data_s\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(59),
	combout => \FD|REG_4|data_s[27]~feeder_combout\);

-- Location: FF_X108_Y40_N17
\FD|REG_4|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(27));

-- Location: LCCOMB_X105_Y40_N24
\FD|mux_Ula_Memoria|saida[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[22]~10_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(69),
	datab => \FD|REG_4|data_s\(27),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \FD|mux_Ula_Memoria|saida[22]~10_combout\);

-- Location: LCCOMB_X112_Y40_N8
\FD|BR|bancoReg_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X112_Y40_N9
\FD|BR|bancoReg_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(54));

-- Location: LCCOMB_X108_Y40_N18
\FD|BR|saidaA[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~22_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(54) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(54),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[21]~22_combout\);

-- Location: LCCOMB_X105_Y38_N16
\FD|BR|saidaA[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~23_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[21]~22_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\))) # (!\FD|BR|saidaA[21]~22_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(53),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\,
	datad => \FD|BR|saidaA[21]~22_combout\,
	combout => \FD|BR|saidaA[21]~23_combout\);

-- Location: FF_X105_Y38_N17
\FD|REG_2|data_s[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[21]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(95));

-- Location: LCCOMB_X108_Y38_N20
\FD|ULA|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~4_combout\ = (\FD|ULA|soma[21]~42_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|REG_2|data_s\(139),
	datad => \FD|ULA|soma[21]~42_combout\,
	combout => \FD|ULA|Mux10~4_combout\);

-- Location: LCCOMB_X108_Y38_N18
\FD|ULA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~42_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux10~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~42_combout\,
	datad => \FD|ULA|Mux10~4_combout\,
	combout => \FD|ULA|Mux10~2_combout\);

-- Location: LCCOMB_X108_Y38_N28
\FD|ULA|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(95) & ((\FD|mux_Banco_Ula|saida[21]~11_combout\) # (!\FD|ULA|Mux10~2_combout\))) # (!\FD|REG_2|data_s\(95) & (\FD|mux_Banco_Ula|saida[21]~11_combout\ & 
-- !\FD|ULA|Mux10~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(95),
	datab => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux10~2_combout\,
	combout => \FD|ULA|Mux10~3_combout\);

-- Location: FF_X108_Y38_N29
\FD|REG_3|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(58));

-- Location: FF_X105_Y40_N31
\FD|REG_4|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(26));

-- Location: LCCOMB_X105_Y40_N18
\FD|mux_Ula_Memoria|saida[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[21]~11_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(69),
	datac => \FD|REG_4|data_s\(26),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\,
	combout => \FD|mux_Ula_Memoria|saida[21]~11_combout\);

-- Location: FF_X103_Y40_N19
\FD|BR|bancoReg_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(51));

-- Location: LCCOMB_X103_Y38_N22
\FD|BR|saidaA[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~25_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[20]~24_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\)) # (!\FD|BR|saidaA[20]~24_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[20]~24_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(51),
	combout => \FD|BR|saidaA[20]~25_combout\);

-- Location: FF_X103_Y38_N23
\FD|REG_2|data_s[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(94));

-- Location: LCCOMB_X105_Y38_N24
\FD|ULA|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~4_combout\ = (\FD|ULA|soma[20]~40_combout\ & ((\FD|REG_2|data_s\(139)) # ((!\FD|UCULA|ALUctr[0]~3_combout\) # (!\FD|REG_2|data_s\(142)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(139),
	datab => \FD|REG_2|data_s\(142),
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[20]~40_combout\,
	combout => \FD|ULA|Mux11~4_combout\);

-- Location: LCCOMB_X105_Y38_N6
\FD|ULA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~40_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux11~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~2_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Add1~40_combout\,
	datad => \FD|ULA|Mux11~4_combout\,
	combout => \FD|ULA|Mux11~2_combout\);

-- Location: LCCOMB_X105_Y38_N8
\FD|ULA|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(94) & ((\FD|mux_Banco_Ula|saida[20]~12_combout\) # (!\FD|ULA|Mux11~2_combout\))) # (!\FD|REG_2|data_s\(94) & (\FD|mux_Banco_Ula|saida[20]~12_combout\ & 
-- !\FD|ULA|Mux11~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(94),
	datab => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux11~2_combout\,
	combout => \FD|ULA|Mux11~3_combout\);

-- Location: FF_X105_Y38_N9
\FD|REG_3|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(57));

-- Location: LCCOMB_X103_Y40_N12
\FD|REG_4|data_s[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[25]~feeder_combout\ = \FD|REG_3|data_s\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(57),
	combout => \FD|REG_4|data_s[25]~feeder_combout\);

-- Location: FF_X103_Y40_N13
\FD|REG_4|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(25));

-- Location: LCCOMB_X103_Y40_N18
\FD|mux_Ula_Memoria|saida[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[20]~12_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(25),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \FD|mux_Ula_Memoria|saida[20]~12_combout\);

-- Location: FF_X103_Y40_N25
\FD|BR|bancoReg_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(11));

-- Location: LCCOMB_X108_Y39_N22
\FD|BR|saidaB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~1_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[0]~0_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\)) # (!\FD|BR|saidaB[0]~0_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[0]~0_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(11),
	combout => \FD|BR|saidaB[0]~1_combout\);

-- Location: FF_X108_Y39_N23
\FD|REG_2|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(42));

-- Location: FF_X105_Y40_N13
\FD|REG_3|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(42),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(5));

-- Location: LCCOMB_X108_Y38_N30
\FD|ULA|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~4_combout\ = (\FD|ULA|soma[19]~38_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|REG_2|data_s\(139),
	datad => \FD|ULA|soma[19]~38_combout\,
	combout => \FD|ULA|Mux12~4_combout\);

-- Location: LCCOMB_X108_Y38_N6
\FD|ULA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Add1~38_combout\)))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux12~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux12~4_combout\,
	datad => \FD|ULA|Add1~38_combout\,
	combout => \FD|ULA|Mux12~2_combout\);

-- Location: LCCOMB_X108_Y38_N8
\FD|ULA|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(93) & ((\FD|mux_Banco_Ula|saida[19]~13_combout\) # (!\FD|ULA|Mux12~2_combout\))) # (!\FD|REG_2|data_s\(93) & (\FD|mux_Banco_Ula|saida[19]~13_combout\ & 
-- !\FD|ULA|Mux12~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(93),
	datab => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux12~2_combout\,
	combout => \FD|ULA|Mux12~3_combout\);

-- Location: FF_X108_Y38_N9
\FD|REG_3|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(56));

-- Location: LCCOMB_X108_Y40_N30
\FD|REG_4|data_s[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[24]~feeder_combout\ = \FD|REG_3|data_s\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(56),
	combout => \FD|REG_4|data_s[24]~feeder_combout\);

-- Location: FF_X108_Y40_N31
\FD|REG_4|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(24));

-- Location: LCCOMB_X105_Y40_N4
\FD|mux_Ula_Memoria|saida[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[19]~13_combout\ = (\FD|REG_4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\)) # (!\FD|REG_4|data_s\(69) & ((\FD|REG_4|data_s\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\,
	datad => \FD|REG_4|data_s\(24),
	combout => \FD|mux_Ula_Memoria|saida[19]~13_combout\);

-- Location: LCCOMB_X111_Y38_N4
\FD|BR|saidaB[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~29_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[18]~28_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\))) # (!\FD|BR|saidaB[18]~28_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[18]~28_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(47),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\,
	combout => \FD|BR|saidaB[18]~29_combout\);

-- Location: FF_X111_Y38_N5
\FD|REG_2|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[18]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(60));

-- Location: LCCOMB_X111_Y38_N2
\FD|mux_Banco_Ula|saida[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[18]~14_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(138),
	datab => \FD|REG_2|data_s\(60),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[18]~14_combout\);

-- Location: LCCOMB_X106_Y38_N10
\FD|ULA|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~4_combout\ = (\FD|ULA|soma[18]~36_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|ULA|soma[18]~36_combout\,
	combout => \FD|ULA|Mux13~4_combout\);

-- Location: LCCOMB_X106_Y38_N12
\FD|ULA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~36_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux13~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~36_combout\,
	datad => \FD|ULA|Mux13~4_combout\,
	combout => \FD|ULA|Mux13~2_combout\);

-- Location: LCCOMB_X106_Y38_N22
\FD|ULA|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[18]~14_combout\ & ((\FD|REG_2|data_s\(92)) # (!\FD|ULA|Mux13~2_combout\))) # (!\FD|mux_Banco_Ula|saida[18]~14_combout\ & (\FD|REG_2|data_s\(92) & 
-- !\FD|ULA|Mux13~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datab => \FD|REG_2|data_s\(92),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux13~3_combout\);

-- Location: FF_X106_Y38_N23
\FD|REG_3|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux13~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(55));

-- Location: LCCOMB_X103_Y38_N12
\FD|REG_4|data_s[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[23]~feeder_combout\ = \FD|REG_3|data_s\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(55),
	combout => \FD|REG_4|data_s[23]~feeder_combout\);

-- Location: FF_X103_Y38_N13
\FD|REG_4|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(23));

-- Location: LCCOMB_X108_Y41_N26
\FD|REG_3|data_s[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[17]~feeder_combout\ = \FD|REG_2|data_s\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(54),
	combout => \FD|REG_3|data_s[17]~feeder_combout\);

-- Location: FF_X108_Y41_N27
\FD|REG_3|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(17));

-- Location: FF_X112_Y40_N13
\FD|REG_3|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(55),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(18));

-- Location: LCCOMB_X112_Y39_N14
\FD|REG_3|data_s[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[19]~feeder_combout\ = \FD|REG_2|data_s\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(56),
	combout => \FD|REG_3|data_s[19]~feeder_combout\);

-- Location: FF_X112_Y39_N15
\FD|REG_3|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(19));

-- Location: LCCOMB_X107_Y40_N16
\FD|REG_3|data_s[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[20]~feeder_combout\ = \FD|REG_2|data_s\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_2|data_s\(57),
	combout => \FD|REG_3|data_s[20]~feeder_combout\);

-- Location: FF_X107_Y40_N17
\FD|REG_3|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(20));

-- Location: LCCOMB_X103_Y40_N16
\FD|REG_3|data_s[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[21]~feeder_combout\ = \FD|REG_2|data_s\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_2|data_s\(58),
	combout => \FD|REG_3|data_s[21]~feeder_combout\);

-- Location: FF_X103_Y40_N17
\FD|REG_3|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(21));

-- Location: LCCOMB_X103_Y40_N26
\FD|REG_3|data_s[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[22]~feeder_combout\ = \FD|REG_2|data_s\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(59),
	combout => \FD|REG_3|data_s[22]~feeder_combout\);

-- Location: FF_X103_Y40_N27
\FD|REG_3|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(22));

-- Location: LCCOMB_X111_Y40_N18
\FD|REG_3|data_s[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[23]~feeder_combout\ = \FD|REG_2|data_s\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(60),
	combout => \FD|REG_3|data_s[23]~feeder_combout\);

-- Location: FF_X111_Y40_N19
\FD|REG_3|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(23));

-- Location: M9K_X104_Y40_N0
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|REG_3|data_s\(102),
	portare => VCC,
	clk0 => \KEY[0]~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X103_Y38_N14
\FD|mux_Ula_Memoria|saida[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[18]~14_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(23),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\,
	combout => \FD|mux_Ula_Memoria|saida[18]~14_combout\);

-- Location: LCCOMB_X107_Y38_N12
\FD|BR|saidaB[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~31_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[17]~30_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\))) # (!\FD|BR|saidaB[17]~30_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[17]~30_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(45),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\,
	combout => \FD|BR|saidaB[17]~31_combout\);

-- Location: FF_X107_Y38_N13
\FD|REG_2|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[17]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(59));

-- Location: LCCOMB_X107_Y38_N6
\FD|mux_Banco_Ula|saida[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[17]~15_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(59),
	datab => \FD|REG_2|data_s\(138),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[17]~15_combout\);

-- Location: LCCOMB_X106_Y38_N16
\FD|ULA|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~4_combout\ = (\FD|ULA|soma[17]~34_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|ULA|soma[17]~34_combout\,
	combout => \FD|ULA|Mux14~4_combout\);

-- Location: LCCOMB_X106_Y38_N24
\FD|ULA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~34_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux14~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~34_combout\,
	datad => \FD|ULA|Mux14~4_combout\,
	combout => \FD|ULA|Mux14~2_combout\);

-- Location: LCCOMB_X106_Y38_N18
\FD|ULA|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|REG_2|data_s\(91)) # (!\FD|ULA|Mux14~2_combout\))) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & (\FD|REG_2|data_s\(91) & 
-- !\FD|ULA|Mux14~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datab => \FD|REG_2|data_s\(91),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux14~2_combout\,
	combout => \FD|ULA|Mux14~3_combout\);

-- Location: FF_X106_Y38_N19
\FD|REG_3|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(54));

-- Location: LCCOMB_X105_Y38_N12
\FD|REG_4|data_s[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[22]~feeder_combout\ = \FD|REG_3|data_s\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(54),
	combout => \FD|REG_4|data_s[22]~feeder_combout\);

-- Location: FF_X105_Y38_N13
\FD|REG_4|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(22));

-- Location: LCCOMB_X105_Y38_N14
\FD|mux_Ula_Memoria|saida[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[17]~15_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(22),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\,
	combout => \FD|mux_Ula_Memoria|saida[17]~15_combout\);

-- Location: LCCOMB_X107_Y39_N16
\FD|BR|bancoReg_rtl_1_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\);

-- Location: FF_X107_Y39_N17
\FD|BR|bancoReg_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(34));

-- Location: LCCOMB_X107_Y39_N2
\FD|BR|saidaB[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~42_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(34) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(34),
	combout => \FD|BR|saidaB[11]~42_combout\);

-- Location: LCCOMB_X106_Y39_N12
\FD|BR|saidaB[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~43_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[11]~42_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\))) # (!\FD|BR|saidaB[11]~42_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(33),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\,
	datad => \FD|BR|saidaB[11]~42_combout\,
	combout => \FD|BR|saidaB[11]~43_combout\);

-- Location: FF_X106_Y39_N13
\FD|REG_2|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(53));

-- Location: LCCOMB_X105_Y40_N28
\FD|REG_3|data_s[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[16]~feeder_combout\ = \FD|REG_2|data_s\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_2|data_s\(53),
	combout => \FD|REG_3|data_s[16]~feeder_combout\);

-- Location: FF_X105_Y40_N29
\FD|REG_3|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(16));

-- Location: LCCOMB_X106_Y38_N6
\FD|ULA|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~4_combout\ = (\FD|ULA|soma[16]~32_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|ULA|soma[16]~32_combout\,
	datad => \FD|REG_2|data_s\(142),
	combout => \FD|ULA|Mux15~4_combout\);

-- Location: LCCOMB_X106_Y38_N28
\FD|ULA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~32_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux15~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~32_combout\,
	datad => \FD|ULA|Mux15~4_combout\,
	combout => \FD|ULA|Mux15~2_combout\);

-- Location: LCCOMB_X106_Y38_N30
\FD|ULA|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[16]~16_combout\ & ((\FD|REG_2|data_s\(90)) # (!\FD|ULA|Mux15~2_combout\))) # (!\FD|mux_Banco_Ula|saida[16]~16_combout\ & (\FD|REG_2|data_s\(90) & 
-- !\FD|ULA|Mux15~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datab => \FD|REG_2|data_s\(90),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux15~2_combout\,
	combout => \FD|ULA|Mux15~3_combout\);

-- Location: FF_X106_Y38_N31
\FD|REG_3|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(53));

-- Location: FF_X106_Y40_N29
\FD|REG_4|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(21));

-- Location: LCCOMB_X105_Y40_N0
\FD|mux_Ula_Memoria|saida[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[16]~16_combout\ = (\FD|REG_4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\)) # (!\FD|REG_4|data_s\(69) & ((\FD|REG_4|data_s\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\,
	datab => \FD|REG_4|data_s\(21),
	datad => \FD|REG_4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[16]~16_combout\);

-- Location: LCCOMB_X107_Y39_N26
\FD|BR|saidaB[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~45_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[10]~44_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\))) # (!\FD|BR|saidaB[10]~44_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(31),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[10]~44_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\,
	combout => \FD|BR|saidaB[10]~45_combout\);

-- Location: FF_X107_Y39_N27
\FD|REG_2|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(52));

-- Location: LCCOMB_X103_Y40_N22
\FD|REG_3|data_s[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[15]~feeder_combout\ = \FD|REG_2|data_s\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_2|data_s\(52),
	combout => \FD|REG_3|data_s[15]~feeder_combout\);

-- Location: FF_X103_Y40_N23
\FD|REG_3|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(15));

-- Location: LCCOMB_X111_Y40_N30
\FD|ULA|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~4_combout\ = (\FD|ULA|soma[15]~30_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|ULA|soma[15]~30_combout\,
	datad => \FD|REG_2|data_s\(139),
	combout => \FD|ULA|Mux16~4_combout\);

-- Location: LCCOMB_X111_Y40_N10
\FD|ULA|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Add1~30_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux16~4_combout\)))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~4_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux21~3_combout\,
	datad => \FD|ULA|Add1~30_combout\,
	combout => \FD|ULA|Mux16~2_combout\);

-- Location: LCCOMB_X111_Y40_N16
\FD|ULA|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(89) & ((\FD|mux_Banco_Ula|saida[15]~17_combout\) # (!\FD|ULA|Mux16~2_combout\))) # (!\FD|REG_2|data_s\(89) & (\FD|mux_Banco_Ula|saida[15]~17_combout\ & 
-- !\FD|ULA|Mux16~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(89),
	datab => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux16~2_combout\,
	combout => \FD|ULA|Mux16~3_combout\);

-- Location: FF_X111_Y40_N17
\FD|REG_3|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(52));

-- Location: LCCOMB_X111_Y40_N14
\FD|REG_4|data_s[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[20]~feeder_combout\ = \FD|REG_3|data_s\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(52),
	combout => \FD|REG_4|data_s[20]~feeder_combout\);

-- Location: FF_X111_Y40_N15
\FD|REG_4|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(20));

-- Location: LCCOMB_X105_Y40_N16
\FD|mux_Ula_Memoria|saida[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[15]~17_combout\ = (\FD|REG_4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\)) # (!\FD|REG_4|data_s\(69) & ((\FD|REG_4|data_s\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\,
	datab => \FD|REG_4|data_s\(20),
	datad => \FD|REG_4|data_s\(69),
	combout => \FD|mux_Ula_Memoria|saida[15]~17_combout\);

-- Location: LCCOMB_X112_Y39_N30
\FD|BR|bancoReg_rtl_1_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\);

-- Location: FF_X112_Y39_N31
\FD|BR|bancoReg_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(40));

-- Location: LCCOMB_X112_Y39_N24
\FD|BR|saidaB[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~36_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(40) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(40),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[14]~36_combout\);

-- Location: LCCOMB_X112_Y39_N2
\FD|BR|saidaB[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~37_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[14]~36_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\))) # (!\FD|BR|saidaB[14]~36_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(39),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\,
	datad => \FD|BR|saidaB[14]~36_combout\,
	combout => \FD|BR|saidaB[14]~37_combout\);

-- Location: FF_X112_Y39_N3
\FD|REG_2|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(56));

-- Location: LCCOMB_X112_Y39_N12
\FD|mux_Banco_Ula|saida[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[14]~18_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(6)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(56),
	datac => \FD|REG_2|data_s\(6),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[14]~18_combout\);

-- Location: LCCOMB_X111_Y40_N20
\FD|ULA|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~4_combout\ = (\FD|ULA|soma[14]~28_combout\ & ((\FD|REG_2|data_s\(139)) # ((!\FD|REG_2|data_s\(142)) # (!\FD|UCULA|ALUctr[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(139),
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|ULA|soma[14]~28_combout\,
	combout => \FD|ULA|Mux17~4_combout\);

-- Location: LCCOMB_X111_Y40_N22
\FD|ULA|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~28_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux17~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~28_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux21~3_combout\,
	datad => \FD|ULA|Mux17~4_combout\,
	combout => \FD|ULA|Mux17~2_combout\);

-- Location: LCCOMB_X111_Y40_N8
\FD|ULA|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[14]~18_combout\ & ((\FD|REG_2|data_s\(88)) # (!\FD|ULA|Mux17~2_combout\))) # (!\FD|mux_Banco_Ula|saida[14]~18_combout\ & (\FD|REG_2|data_s\(88) & 
-- !\FD|ULA|Mux17~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datab => \FD|REG_2|data_s\(88),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux17~2_combout\,
	combout => \FD|ULA|Mux17~3_combout\);

-- Location: FF_X111_Y40_N9
\FD|REG_3|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux17~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(51));

-- Location: FF_X111_Y40_N1
\FD|REG_4|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(51),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(19));

-- Location: LCCOMB_X111_Y40_N12
\FD|mux_Ula_Memoria|saida[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[14]~18_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(69),
	datac => \FD|REG_4|data_s\(19),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \FD|mux_Ula_Memoria|saida[14]~18_combout\);

-- Location: LCCOMB_X109_Y37_N2
\FD|BR|saidaA[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~39_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[13]~38_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\))) # (!\FD|BR|saidaA[13]~38_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(37),
	datab => \FD|BR|saidaA[13]~38_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\,
	combout => \FD|BR|saidaA[13]~39_combout\);

-- Location: FF_X109_Y37_N3
\FD|REG_2|data_s[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(87));

-- Location: LCCOMB_X109_Y37_N6
\FD|ULA|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~4_combout\ = (\FD|ULA|soma[13]~26_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|ULA|soma[13]~26_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux18~4_combout\);

-- Location: LCCOMB_X109_Y37_N24
\FD|ULA|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~26_combout\ & (\FD|ULA|Mux21~2_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux18~4_combout\) # (!\FD|ULA|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~26_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux18~4_combout\,
	combout => \FD|ULA|Mux18~2_combout\);

-- Location: LCCOMB_X109_Y37_N8
\FD|ULA|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(87) & ((\FD|mux_Banco_Ula|saida[13]~19_combout\) # (!\FD|ULA|Mux18~2_combout\))) # (!\FD|REG_2|data_s\(87) & (\FD|mux_Banco_Ula|saida[13]~19_combout\ & 
-- !\FD|ULA|Mux18~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|REG_2|data_s\(87),
	datac => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datad => \FD|ULA|Mux18~2_combout\,
	combout => \FD|ULA|Mux18~3_combout\);

-- Location: FF_X109_Y37_N9
\FD|REG_3|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(50));

-- Location: FF_X108_Y37_N5
\FD|REG_4|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(50),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(18));

-- Location: LCCOMB_X105_Y37_N20
\FD|mux_Ula_Memoria|saida[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[13]~19_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(18),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \FD|mux_Ula_Memoria|saida[13]~19_combout\);

-- Location: LCCOMB_X109_Y41_N10
\FD|BR|saidaB[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~41_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[12]~40_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\))) # (!\FD|BR|saidaB[12]~40_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(35),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[12]~40_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\,
	combout => \FD|BR|saidaB[12]~41_combout\);

-- Location: FF_X109_Y41_N11
\FD|REG_2|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(54));

-- Location: LCCOMB_X109_Y41_N20
\FD|mux_Banco_Ula|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[12]~20_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(54),
	datac => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[12]~20_combout\);

-- Location: LCCOMB_X110_Y37_N12
\FD|ULA|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~4_combout\ = (\FD|ULA|soma[12]~24_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[12]~24_combout\,
	combout => \FD|ULA|Mux19~4_combout\);

-- Location: LCCOMB_X110_Y37_N18
\FD|ULA|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~24_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux19~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~2_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Add1~24_combout\,
	datad => \FD|ULA|Mux19~4_combout\,
	combout => \FD|ULA|Mux19~2_combout\);

-- Location: LCCOMB_X110_Y37_N28
\FD|ULA|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[12]~20_combout\ & ((\FD|REG_2|data_s\(86)) # (!\FD|ULA|Mux19~2_combout\))) # (!\FD|mux_Banco_Ula|saida[12]~20_combout\ & (\FD|REG_2|data_s\(86) & 
-- !\FD|ULA|Mux19~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datab => \FD|REG_2|data_s\(86),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux19~2_combout\,
	combout => \FD|ULA|Mux19~3_combout\);

-- Location: FF_X110_Y37_N29
\FD|REG_3|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(49));

-- Location: LCCOMB_X114_Y37_N2
\FD|REG_4|data_s[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[17]~feeder_combout\ = \FD|REG_3|data_s\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(49),
	combout => \FD|REG_4|data_s[17]~feeder_combout\);

-- Location: FF_X114_Y37_N3
\FD|REG_4|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(17));

-- Location: LCCOMB_X105_Y37_N14
\FD|mux_Ula_Memoria|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[12]~20_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(17),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\,
	combout => \FD|mux_Ula_Memoria|saida[12]~20_combout\);

-- Location: LCCOMB_X107_Y40_N28
\FD|BR|bancoReg_rtl_1_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X107_Y40_N29
\FD|BR|bancoReg_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(30));

-- Location: LCCOMB_X107_Y39_N0
\FD|BR|saidaB[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~46_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(30) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(30),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[9]~46_combout\);

-- Location: FF_X105_Y37_N29
\FD|BR|bancoReg_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(29));

-- Location: LCCOMB_X108_Y39_N10
\FD|BR|saidaB[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~47_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[9]~46_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\)) # (!\FD|BR|saidaB[9]~46_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[9]~46_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(29),
	combout => \FD|BR|saidaB[9]~47_combout\);

-- Location: FF_X108_Y39_N11
\FD|REG_2|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(51));

-- Location: FF_X108_Y40_N19
\FD|REG_3|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(51),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(14));

-- Location: LCCOMB_X106_Y39_N18
\FD|ULA|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~4_combout\ = (\FD|ULA|soma[11]~22_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(142),
	datac => \FD|ULA|soma[11]~22_combout\,
	datad => \FD|REG_2|data_s\(139),
	combout => \FD|ULA|Mux20~4_combout\);

-- Location: LCCOMB_X106_Y39_N28
\FD|ULA|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~22_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux20~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~2_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Add1~22_combout\,
	datad => \FD|ULA|Mux20~4_combout\,
	combout => \FD|ULA|Mux20~2_combout\);

-- Location: LCCOMB_X106_Y39_N30
\FD|ULA|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|REG_2|data_s\(85)) # (!\FD|ULA|Mux20~2_combout\))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & (\FD|REG_2|data_s\(85) & 
-- !\FD|ULA|Mux20~2_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datab => \FD|ULA|Mux31~0_combout\,
	datac => \FD|REG_2|data_s\(85),
	datad => \FD|ULA|Mux20~2_combout\,
	combout => \FD|ULA|Mux20~3_combout\);

-- Location: FF_X106_Y39_N31
\FD|REG_3|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(48));

-- Location: FF_X106_Y39_N25
\FD|REG_4|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(16));

-- Location: LCCOMB_X105_Y39_N30
\FD|mux_Ula_Memoria|saida[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[11]~21_combout\ = (\FD|REG_4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\)) # (!\FD|REG_4|data_s\(69) & ((\FD|REG_4|data_s\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \FD|REG_4|data_s\(16),
	combout => \FD|mux_Ula_Memoria|saida[11]~21_combout\);

-- Location: LCCOMB_X112_Y40_N6
\FD|BR|bancoReg_rtl_1_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X112_Y40_N7
\FD|BR|bancoReg_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(26));

-- Location: LCCOMB_X109_Y40_N0
\FD|BR|saidaB[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~50_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(26) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(26),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[7]~50_combout\);

-- Location: LCCOMB_X109_Y40_N12
\FD|BR|saidaB[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~51_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[7]~50_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\))) # (!\FD|BR|saidaB[7]~50_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(25),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\,
	datad => \FD|BR|saidaB[7]~50_combout\,
	combout => \FD|BR|saidaB[7]~51_combout\);

-- Location: FF_X109_Y40_N13
\FD|REG_2|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[7]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(49));

-- Location: FF_X108_Y40_N7
\FD|REG_3|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_2|data_s\(49),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(12));

-- Location: LCCOMB_X111_Y37_N22
\FD|ULA|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~6_combout\ = (\FD|ULA|soma[10]~20_combout\ & ((\FD|REG_2|data_s\(139)) # ((!\FD|UCULA|ALUctr[0]~3_combout\) # (!\FD|REG_2|data_s\(142)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(139),
	datab => \FD|REG_2|data_s\(142),
	datac => \FD|ULA|soma[10]~20_combout\,
	datad => \FD|UCULA|ALUctr[0]~3_combout\,
	combout => \FD|ULA|Mux21~6_combout\);

-- Location: LCCOMB_X111_Y37_N28
\FD|ULA|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~4_combout\ = (\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux21~2_combout\ & \FD|ULA|Add1~20_combout\)))) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux21~6_combout\) # ((!\FD|ULA|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~6_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Add1~20_combout\,
	combout => \FD|ULA|Mux21~4_combout\);

-- Location: LCCOMB_X111_Y37_N2
\FD|ULA|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~5_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(84) & ((\FD|mux_Banco_Ula|saida[10]~22_combout\) # (!\FD|ULA|Mux21~4_combout\))) # (!\FD|REG_2|data_s\(84) & (\FD|mux_Banco_Ula|saida[10]~22_combout\ & 
-- !\FD|ULA|Mux21~4_combout\)))) # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(84),
	datab => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux21~4_combout\,
	combout => \FD|ULA|Mux21~5_combout\);

-- Location: FF_X111_Y37_N3
\FD|REG_3|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux21~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(47));

-- Location: LCCOMB_X111_Y37_N12
\FD|REG_4|data_s[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[15]~feeder_combout\ = \FD|REG_3|data_s\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(47),
	combout => \FD|REG_4|data_s[15]~feeder_combout\);

-- Location: FF_X111_Y37_N13
\FD|REG_4|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(15));

-- Location: LCCOMB_X105_Y37_N12
\FD|mux_Ula_Memoria|saida[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[10]~22_combout\ = (\FD|REG_4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\)) # (!\FD|REG_4|data_s\(69) & ((\FD|REG_4|data_s\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\,
	datad => \FD|REG_4|data_s\(15),
	combout => \FD|mux_Ula_Memoria|saida[10]~22_combout\);

-- Location: FF_X108_Y39_N29
\FD|BR|bancoReg_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|mux_Ula_Memoria|saida[4]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(19));

-- Location: LCCOMB_X108_Y39_N30
\FD|BR|saidaB[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~57_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[4]~56_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\)) # (!\FD|BR|saidaB[4]~56_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[4]~56_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(19),
	combout => \FD|BR|saidaB[4]~57_combout\);

-- Location: FF_X108_Y39_N31
\FD|REG_2|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(46));

-- Location: LCCOMB_X107_Y40_N12
\FD|REG_3|data_s[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[9]~feeder_combout\ = \FD|REG_2|data_s\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_2|data_s\(46),
	combout => \FD|REG_3|data_s[9]~feeder_combout\);

-- Location: FF_X107_Y40_N13
\FD|REG_3|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(9));

-- Location: LCCOMB_X109_Y37_N20
\FD|ULA|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~4_combout\ = (\FD|ULA|soma[9]~18_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|ULA|soma[9]~18_combout\,
	combout => \FD|ULA|Mux22~4_combout\);

-- Location: LCCOMB_X109_Y37_N16
\FD|ULA|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~18_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux22~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~18_combout\,
	datab => \FD|ULA|Mux22~4_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux22~2_combout\);

-- Location: LCCOMB_X109_Y37_N4
\FD|ULA|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(83) & ((\FD|mux_Banco_Ula|saida[9]~23_combout\) # (!\FD|ULA|Mux22~2_combout\))) # (!\FD|REG_2|data_s\(83) & (\FD|mux_Banco_Ula|saida[9]~23_combout\ & !\FD|ULA|Mux22~2_combout\)))) 
-- # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(83),
	datab => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux22~2_combout\,
	combout => \FD|ULA|Mux22~3_combout\);

-- Location: FF_X109_Y37_N5
\FD|REG_3|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(46));

-- Location: FF_X109_Y37_N27
\FD|REG_4|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(14));

-- Location: LCCOMB_X105_Y37_N28
\FD|mux_Ula_Memoria|saida[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[9]~23_combout\ = (\FD|REG_4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\)) # (!\FD|REG_4|data_s\(69) & ((\FD|REG_4|data_s\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \FD|REG_4|data_s\(14),
	combout => \FD|mux_Ula_Memoria|saida[9]~23_combout\);

-- Location: LCCOMB_X107_Y39_N6
\FD|BR|saidaB[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~49_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[8]~48_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\))) # (!\FD|BR|saidaB[8]~48_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(27),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[8]~48_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\,
	combout => \FD|BR|saidaB[8]~49_combout\);

-- Location: FF_X107_Y39_N7
\FD|REG_2|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[8]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(50));

-- Location: LCCOMB_X107_Y39_N20
\FD|mux_Banco_Ula|saida[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[8]~24_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(50),
	datac => \FD|REG_2|data_s\(138),
	datad => \FD|REG_2|data_s\(41),
	combout => \FD|mux_Banco_Ula|saida[8]~24_combout\);

-- Location: LCCOMB_X109_Y37_N18
\FD|ULA|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~4_combout\ = (\FD|ULA|soma[8]~16_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|ULA|soma[8]~16_combout\,
	combout => \FD|ULA|Mux23~4_combout\);

-- Location: LCCOMB_X109_Y37_N28
\FD|ULA|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~16_combout\ & (\FD|ULA|Mux21~2_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux23~4_combout\) # (!\FD|ULA|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~16_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Mux21~2_combout\,
	datad => \FD|ULA|Mux23~4_combout\,
	combout => \FD|ULA|Mux23~2_combout\);

-- Location: LCCOMB_X109_Y37_N22
\FD|ULA|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[8]~24_combout\ & ((\FD|REG_2|data_s\(82)) # (!\FD|ULA|Mux23~2_combout\))) # (!\FD|mux_Banco_Ula|saida[8]~24_combout\ & (\FD|REG_2|data_s\(82) & !\FD|ULA|Mux23~2_combout\)))) 
-- # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datab => \FD|REG_2|data_s\(82),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux23~2_combout\,
	combout => \FD|ULA|Mux23~3_combout\);

-- Location: FF_X109_Y37_N23
\FD|REG_3|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux23~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(45));

-- Location: FF_X109_Y37_N15
\FD|REG_4|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(13));

-- Location: LCCOMB_X105_Y37_N26
\FD|mux_Ula_Memoria|saida[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[8]~24_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(13),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \FD|mux_Ula_Memoria|saida[8]~24_combout\);

-- Location: LCCOMB_X105_Y39_N14
\FD|BR|saidaA[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~51_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[7]~50_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\))) # (!\FD|BR|saidaA[7]~50_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[7]~50_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(25),
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\,
	combout => \FD|BR|saidaA[7]~51_combout\);

-- Location: FF_X109_Y39_N25
\FD|REG_2|data_s[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|BR|saidaA[7]~51_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(81));

-- Location: LCCOMB_X110_Y36_N6
\FD|ULA|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~4_combout\ = (\FD|ULA|soma[7]~14_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|ULA|soma[7]~14_combout\,
	datad => \FD|REG_2|data_s\(142),
	combout => \FD|ULA|Mux24~4_combout\);

-- Location: LCCOMB_X110_Y36_N2
\FD|ULA|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~14_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux24~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~14_combout\,
	datad => \FD|ULA|Mux24~4_combout\,
	combout => \FD|ULA|Mux24~2_combout\);

-- Location: LCCOMB_X111_Y36_N26
\FD|ULA|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(81) & ((\FD|mux_Banco_Ula|saida[7]~25_combout\) # (!\FD|ULA|Mux24~2_combout\))) # (!\FD|REG_2|data_s\(81) & (\FD|mux_Banco_Ula|saida[7]~25_combout\ & !\FD|ULA|Mux24~2_combout\)))) 
-- # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(81),
	datab => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \FD|ULA|Mux24~3_combout\);

-- Location: FF_X111_Y36_N27
\FD|REG_3|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(44));

-- Location: LCCOMB_X105_Y40_N6
\FD|REG_4|data_s[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[12]~feeder_combout\ = \FD|REG_3|data_s\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(44),
	combout => \FD|REG_4|data_s[12]~feeder_combout\);

-- Location: FF_X105_Y40_N7
\FD|REG_4|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(12));

-- Location: LCCOMB_X105_Y40_N30
\FD|mux_Ula_Memoria|saida[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[7]~25_combout\ = (\FD|REG_4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\)) # (!\FD|REG_4|data_s\(69) & ((\FD|REG_4|data_s\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(69),
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \FD|REG_4|data_s\(12),
	combout => \FD|mux_Ula_Memoria|saida[7]~25_combout\);

-- Location: LCCOMB_X110_Y40_N12
\FD|BR|bancoReg_rtl_1_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X110_Y40_N13
\FD|BR|bancoReg_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(24));

-- Location: LCCOMB_X109_Y40_N18
\FD|BR|saidaB[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~52_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(24) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(24),
	combout => \FD|BR|saidaB[6]~52_combout\);

-- Location: LCCOMB_X108_Y39_N20
\FD|BR|saidaB[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~53_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[6]~52_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\))) # (!\FD|BR|saidaB[6]~52_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(23),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\,
	datad => \FD|BR|saidaB[6]~52_combout\,
	combout => \FD|BR|saidaB[6]~53_combout\);

-- Location: FF_X108_Y39_N21
\FD|REG_2|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[6]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(48));

-- Location: LCCOMB_X108_Y39_N16
\FD|mux_Banco_Ula|saida[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[6]~26_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(41)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(48),
	datac => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[6]~26_combout\);

-- Location: LCCOMB_X110_Y36_N28
\FD|ULA|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~4_combout\ = (\FD|ULA|soma[6]~12_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|ULA|soma[6]~12_combout\,
	datad => \FD|REG_2|data_s\(142),
	combout => \FD|ULA|Mux25~4_combout\);

-- Location: LCCOMB_X110_Y36_N8
\FD|ULA|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~12_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux25~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~12_combout\,
	datad => \FD|ULA|Mux25~4_combout\,
	combout => \FD|ULA|Mux25~2_combout\);

-- Location: LCCOMB_X111_Y36_N28
\FD|ULA|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~3_combout\ = (\FD|ULA|Mux25~2_combout\ & (((\FD|REG_2|data_s\(80) & \FD|mux_Banco_Ula|saida[6]~26_combout\)) # (!\FD|ULA|Mux31~0_combout\))) # (!\FD|ULA|Mux25~2_combout\ & (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(80)) # 
-- (\FD|mux_Banco_Ula|saida[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|REG_2|data_s\(80),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	combout => \FD|ULA|Mux25~3_combout\);

-- Location: FF_X111_Y36_N29
\FD|REG_3|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux25~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(43));

-- Location: FF_X109_Y40_N9
\FD|REG_4|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(43),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(11));

-- Location: LCCOMB_X108_Y40_N22
\FD|mux_Ula_Memoria|saida[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[6]~26_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(11),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \FD|mux_Ula_Memoria|saida[6]~26_combout\);

-- Location: LCCOMB_X112_Y39_N22
\FD|BR|bancoReg_rtl_1_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X112_Y39_N23
\FD|BR|bancoReg_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(22));

-- Location: LCCOMB_X112_Y39_N16
\FD|BR|saidaB[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~54_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(22) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(22),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[5]~54_combout\);

-- Location: LCCOMB_X112_Y39_N26
\FD|BR|saidaB[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~55_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[5]~54_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\))) # (!\FD|BR|saidaB[5]~54_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(21),
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\,
	datac => \FD|BR|saidaB[5]~54_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[5]~55_combout\);

-- Location: FF_X112_Y39_N27
\FD|REG_2|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[5]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(47));

-- Location: LCCOMB_X112_Y39_N4
\FD|mux_Banco_Ula|saida[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[5]~27_combout\ = (\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(6)))) # (!\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(47),
	datac => \FD|REG_2|data_s\(6),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[5]~27_combout\);

-- Location: LCCOMB_X110_Y36_N18
\FD|ULA|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~4_combout\ = (\FD|ULA|soma[5]~10_combout\ & ((\FD|REG_2|data_s\(139)) # ((!\FD|REG_2|data_s\(142)) # (!\FD|UCULA|ALUctr[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[5]~10_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|REG_2|data_s\(142),
	combout => \FD|ULA|Mux26~4_combout\);

-- Location: LCCOMB_X110_Y36_N14
\FD|ULA|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~10_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux26~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~10_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux26~4_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux26~2_combout\);

-- Location: LCCOMB_X111_Y36_N30
\FD|ULA|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|REG_2|data_s\(79)) # (!\FD|ULA|Mux26~2_combout\))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & (\FD|REG_2|data_s\(79) & !\FD|ULA|Mux26~2_combout\)))) 
-- # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datab => \FD|REG_2|data_s\(79),
	datac => \FD|ULA|Mux31~0_combout\,
	datad => \FD|ULA|Mux26~2_combout\,
	combout => \FD|ULA|Mux26~3_combout\);

-- Location: FF_X111_Y36_N31
\FD|REG_3|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(42));

-- Location: LCCOMB_X110_Y40_N8
\FD|REG_4|data_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[10]~feeder_combout\ = \FD|REG_3|data_s\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(42),
	combout => \FD|REG_4|data_s[10]~feeder_combout\);

-- Location: FF_X110_Y40_N9
\FD|REG_4|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(10));

-- Location: LCCOMB_X105_Y40_N22
\FD|mux_Ula_Memoria|saida[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[5]~27_combout\ = (\FD|REG_4|data_s\(69) & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\)) # (!\FD|REG_4|data_s\(69) & ((\FD|REG_4|data_s\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(69),
	datac => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \FD|REG_4|data_s\(10),
	combout => \FD|mux_Ula_Memoria|saida[5]~27_combout\);

-- Location: LCCOMB_X109_Y36_N12
\FD|BR|saidaA[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~57_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[4]~56_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\))) # (!\FD|BR|saidaA[4]~56_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(19),
	datab => \FD|BR|saidaA[4]~56_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\,
	combout => \FD|BR|saidaA[4]~57_combout\);

-- Location: FF_X109_Y36_N13
\FD|REG_2|data_s[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(78));

-- Location: LCCOMB_X110_Y36_N24
\FD|ULA|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~4_combout\ = (\FD|ULA|soma[4]~8_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(142),
	datac => \FD|REG_2|data_s\(139),
	datad => \FD|ULA|soma[4]~8_combout\,
	combout => \FD|ULA|Mux27~4_combout\);

-- Location: LCCOMB_X110_Y36_N4
\FD|ULA|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~8_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux27~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~8_combout\,
	datad => \FD|ULA|Mux27~4_combout\,
	combout => \FD|ULA|Mux27~2_combout\);

-- Location: LCCOMB_X111_Y36_N24
\FD|ULA|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(78) & ((\FD|mux_Banco_Ula|saida[4]~28_combout\) # (!\FD|ULA|Mux27~2_combout\))) # (!\FD|REG_2|data_s\(78) & (!\FD|ULA|Mux27~2_combout\ & \FD|mux_Banco_Ula|saida[4]~28_combout\)))) 
-- # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|REG_2|data_s\(78),
	datac => \FD|ULA|Mux27~2_combout\,
	datad => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	combout => \FD|ULA|Mux27~3_combout\);

-- Location: FF_X111_Y36_N25
\FD|REG_3|data_s[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(41));

-- Location: LCCOMB_X111_Y36_N10
\FD|REG_4|data_s[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[9]~feeder_combout\ = \FD|REG_3|data_s\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(41),
	combout => \FD|REG_4|data_s[9]~feeder_combout\);

-- Location: FF_X111_Y36_N11
\FD|REG_4|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(9));

-- Location: LCCOMB_X108_Y36_N28
\FD|mux_Ula_Memoria|saida[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[4]~28_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(9),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \FD|mux_Ula_Memoria|saida[4]~28_combout\);

-- Location: LCCOMB_X105_Y39_N28
\FD|BR|bancoReg_rtl_1_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|mux_Ula_Memoria|saida[3]~29_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\);

-- Location: FF_X105_Y39_N29
\FD|BR|bancoReg_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(17));

-- Location: LCCOMB_X105_Y39_N6
\FD|BR|bancoReg_rtl_1_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X105_Y39_N7
\FD|BR|bancoReg_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(18));

-- Location: LCCOMB_X105_Y39_N8
\FD|BR|saidaB[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~58_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(18) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(18),
	combout => \FD|BR|saidaB[3]~58_combout\);

-- Location: LCCOMB_X105_Y39_N0
\FD|BR|saidaB[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~59_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[3]~58_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\)) # (!\FD|BR|saidaB[3]~58_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(17),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[3]~58_combout\,
	combout => \FD|BR|saidaB[3]~59_combout\);

-- Location: FF_X105_Y39_N1
\FD|REG_2|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(45));

-- Location: LCCOMB_X105_Y39_N10
\FD|mux_Banco_Ula|saida[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[3]~29_combout\ = (\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(13))) # (!\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(13),
	datab => \FD|REG_2|data_s\(45),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[3]~29_combout\);

-- Location: LCCOMB_X111_Y39_N22
\FD|ULA|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~4_combout\ = (\FD|ULA|soma[3]~6_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|ULA|soma[3]~6_combout\,
	datad => \FD|REG_2|data_s\(142),
	combout => \FD|ULA|Mux28~4_combout\);

-- Location: LCCOMB_X111_Y39_N26
\FD|ULA|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~6_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux28~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~6_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux28~4_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux28~2_combout\);

-- Location: LCCOMB_X111_Y39_N16
\FD|ULA|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~3_combout\ = (\FD|ULA|Mux28~2_combout\ & (((\FD|mux_Banco_Ula|saida[3]~29_combout\ & \FD|REG_2|data_s\(77))) # (!\FD|ULA|Mux31~0_combout\))) # (!\FD|ULA|Mux28~2_combout\ & (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[3]~29_combout\) 
-- # (\FD|REG_2|data_s\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datab => \FD|REG_2|data_s\(77),
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux28~3_combout\);

-- Location: FF_X111_Y39_N17
\FD|REG_3|data_s[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux28~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(40));

-- Location: LCCOMB_X105_Y39_N4
\FD|REG_4|data_s[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[8]~feeder_combout\ = \FD|REG_3|data_s\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(40),
	combout => \FD|REG_4|data_s[8]~feeder_combout\);

-- Location: FF_X105_Y39_N5
\FD|REG_4|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(8));

-- Location: LCCOMB_X105_Y39_N26
\FD|mux_Ula_Memoria|saida[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[3]~29_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(8),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \FD|mux_Ula_Memoria|saida[3]~29_combout\);

-- Location: LCCOMB_X108_Y39_N18
\FD|BR|saidaB[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~61_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[2]~60_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\))) # (!\FD|BR|saidaB[2]~60_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[2]~60_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(15),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\,
	combout => \FD|BR|saidaB[2]~61_combout\);

-- Location: FF_X108_Y39_N19
\FD|REG_2|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(44));

-- Location: LCCOMB_X108_Y39_N0
\FD|mux_Banco_Ula|saida[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[2]~30_combout\ = (\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(12))) # (!\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(12),
	datab => \FD|REG_2|data_s\(44),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[2]~30_combout\);

-- Location: LCCOMB_X111_Y39_N28
\FD|ULA|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~4_combout\ = (\FD|ULA|soma[2]~4_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|REG_2|data_s\(142))) # (!\FD|UCULA|ALUctr[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~3_combout\,
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|ULA|soma[2]~4_combout\,
	datad => \FD|REG_2|data_s\(142),
	combout => \FD|ULA|Mux29~4_combout\);

-- Location: LCCOMB_X111_Y39_N14
\FD|ULA|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~2_combout\ = (\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Add1~4_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (((\FD|ULA|Mux29~4_combout\)) # (!\FD|ULA|Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~3_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Add1~4_combout\,
	datad => \FD|ULA|Mux29~4_combout\,
	combout => \FD|ULA|Mux29~2_combout\);

-- Location: LCCOMB_X111_Y39_N20
\FD|ULA|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~3_combout\ = (\FD|ULA|Mux29~2_combout\ & (((\FD|mux_Banco_Ula|saida[2]~30_combout\ & \FD|REG_2|data_s\(76))) # (!\FD|ULA|Mux31~0_combout\))) # (!\FD|ULA|Mux29~2_combout\ & (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[2]~30_combout\) 
-- # (\FD|REG_2|data_s\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|REG_2|data_s\(76),
	datac => \FD|ULA|Mux29~2_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux29~3_combout\);

-- Location: FF_X111_Y39_N21
\FD|REG_3|data_s[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux29~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(39));

-- Location: LCCOMB_X114_Y36_N28
\FD|REG_4|data_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_4|data_s[7]~feeder_combout\ = \FD|REG_3|data_s\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_3|data_s\(39),
	combout => \FD|REG_4|data_s[7]~feeder_combout\);

-- Location: FF_X114_Y36_N29
\FD|REG_4|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_4|data_s[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(7));

-- Location: LCCOMB_X108_Y36_N14
\FD|mux_Ula_Memoria|saida[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[2]~30_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(7),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \FD|mux_Ula_Memoria|saida[2]~30_combout\);

-- Location: LCCOMB_X111_Y41_N10
\FD|BR|bancoReg_rtl_1_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X111_Y41_N11
\FD|BR|bancoReg_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(14));

-- Location: LCCOMB_X111_Y41_N20
\FD|BR|saidaB[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~62_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(14) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(14),
	combout => \FD|BR|saidaB[1]~62_combout\);

-- Location: LCCOMB_X108_Y40_N4
\FD|BR|bancoReg_rtl_1_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[1]~31_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\);

-- Location: FF_X108_Y40_N5
\FD|BR|bancoReg_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(13));

-- Location: LCCOMB_X108_Y39_N14
\FD|BR|saidaB[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~63_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[1]~62_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\)) # (!\FD|BR|saidaB[1]~62_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\,
	datab => \FD|BR|saidaB[1]~62_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(13),
	combout => \FD|BR|saidaB[1]~63_combout\);

-- Location: FF_X108_Y39_N15
\FD|REG_2|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[1]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(43));

-- Location: LCCOMB_X108_Y39_N24
\FD|mux_Banco_Ula|saida[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[1]~31_combout\ = (\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(11))) # (!\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(11),
	datac => \FD|REG_2|data_s\(43),
	datad => \FD|REG_2|data_s\(138),
	combout => \FD|mux_Banco_Ula|saida[1]~31_combout\);

-- Location: LCCOMB_X111_Y39_N18
\FD|ULA|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~4_combout\ = (\FD|ULA|soma[1]~2_combout\ & (((\FD|REG_2|data_s\(139)) # (!\FD|UCULA|ALUctr[0]~3_combout\)) # (!\FD|REG_2|data_s\(142))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(142),
	datab => \FD|REG_2|data_s\(139),
	datac => \FD|UCULA|ALUctr[0]~3_combout\,
	datad => \FD|ULA|soma[1]~2_combout\,
	combout => \FD|ULA|Mux30~4_combout\);

-- Location: LCCOMB_X111_Y39_N12
\FD|ULA|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Add1~2_combout\))) # (!\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Mux30~4_combout\)))) # (!\FD|ULA|Mux21~2_combout\ & (((!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~2_combout\,
	datab => \FD|ULA|Mux30~4_combout\,
	datac => \FD|ULA|Add1~2_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ULA|Mux30~2_combout\);

-- Location: LCCOMB_X112_Y39_N6
\FD|ULA|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|REG_2|data_s\(75)) # (!\FD|ULA|Mux30~2_combout\))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & (\FD|REG_2|data_s\(75) & !\FD|ULA|Mux30~2_combout\)))) 
-- # (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datac => \FD|REG_2|data_s\(75),
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux30~3_combout\);

-- Location: FF_X112_Y39_N7
\FD|REG_3|data_s[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(38));

-- Location: FF_X112_Y40_N1
\FD|REG_4|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(6));

-- Location: LCCOMB_X108_Y40_N2
\FD|mux_Ula_Memoria|saida[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[1]~31_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(6),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \FD|mux_Ula_Memoria|saida[1]~31_combout\);

-- Location: LCCOMB_X103_Y39_N12
\FD|BR|bancoReg_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X103_Y39_N13
\FD|BR|bancoReg_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(12));

-- Location: LCCOMB_X103_Y39_N18
\FD|BR|saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~0_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(12) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(12),
	datac => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[0]~0_combout\);

-- Location: LCCOMB_X103_Y39_N8
\FD|BR|saidaA[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~1_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[0]~0_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\FD|BR|saidaA[0]~0_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(11),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \FD|BR|saidaA[0]~0_combout\,
	combout => \FD|BR|saidaA[0]~1_combout\);

-- Location: FF_X109_Y39_N11
\FD|REG_2|data_s[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|BR|saidaA[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(74));

-- Location: LCCOMB_X111_Y39_N30
\FD|ULA|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~1_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(74) & ((\FD|UCULA|ALUctr[0]~4_combout\) # (\FD|mux_Banco_Ula|saida[0]~0_combout\))) # (!\FD|REG_2|data_s\(74) & (\FD|UCULA|ALUctr[0]~4_combout\ & 
-- \FD|mux_Banco_Ula|saida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(74),
	datab => \FD|UCULA|ALUctr[0]~4_combout\,
	datac => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datad => \FD|ULA|Mux31~0_combout\,
	combout => \FD|ULA|Mux31~1_combout\);

-- Location: LCCOMB_X111_Y38_N8
\FD|ULA|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~2_combout\ = (\FD|UCULA|ALUctr[2]~1_combout\ & (\FD|ULA|Add1~0_combout\)) # (!\FD|UCULA|ALUctr[2]~1_combout\ & ((\FD|ULA|soma[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[2]~1_combout\,
	datac => \FD|ULA|Add1~0_combout\,
	datad => \FD|ULA|soma[0]~0_combout\,
	combout => \FD|ULA|Mux31~2_combout\);

-- Location: LCCOMB_X111_Y38_N12
\FD|ULA|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~3_combout\ = \FD|ULA|Add1~62_combout\ $ (((\FD|mux_Banco_Ula|saida[31]~1_combout\ & (\FD|REG_2|data_s\(105) & !\FD|ULA|Mux0~3_combout\)) # (!\FD|mux_Banco_Ula|saida[31]~1_combout\ & (!\FD|REG_2|data_s\(105) & \FD|ULA|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|REG_2|data_s\(105),
	datac => \FD|ULA|Add1~62_combout\,
	datad => \FD|ULA|Mux0~3_combout\,
	combout => \FD|ULA|Mux31~3_combout\);

-- Location: LCCOMB_X111_Y38_N6
\FD|ULA|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~4_combout\ = (\FD|UCULA|ALUctr[0]~4_combout\ & (\FD|UCULA|ALUctr[2]~1_combout\ & ((\FD|ULA|Mux31~3_combout\)))) # (!\FD|UCULA|ALUctr[0]~4_combout\ & (((\FD|ULA|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~4_combout\,
	datab => \FD|UCULA|ALUctr[2]~1_combout\,
	datac => \FD|ULA|Mux31~2_combout\,
	datad => \FD|ULA|Mux31~3_combout\,
	combout => \FD|ULA|Mux31~4_combout\);

-- Location: LCCOMB_X111_Y38_N14
\FD|ULA|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~5_combout\ = (\FD|ULA|Mux31~1_combout\) # ((\FD|UCULA|ALUctr[1]~2_combout\ & \FD|ULA|Mux31~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|ULA|Mux31~1_combout\,
	datad => \FD|ULA|Mux31~4_combout\,
	combout => \FD|ULA|Mux31~5_combout\);

-- Location: FF_X111_Y38_N15
\FD|REG_3|data_s[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux31~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(37));

-- Location: FF_X111_Y38_N3
\FD|REG_4|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(5));

-- Location: LCCOMB_X103_Y40_N24
\FD|mux_Ula_Memoria|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[0]~0_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_4|data_s\(5),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \FD|mux_Ula_Memoria|saida[0]~0_combout\);

-- Location: LCCOMB_X105_Y39_N22
\FD|BR|bancoReg_rtl_1_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\);

-- Location: FF_X105_Y39_N23
\FD|BR|bancoReg_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(74));

-- Location: LCCOMB_X105_Y39_N24
\FD|BR|saidaB[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~2_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(74) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(74),
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[31]~2_combout\);

-- Location: LCCOMB_X105_Y39_N18
\FD|BR|saidaB[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~3_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[31]~2_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\))) # (!\FD|BR|saidaB[31]~2_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(73),
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[31]~2_combout\,
	combout => \FD|BR|saidaB[31]~3_combout\);

-- Location: FF_X105_Y39_N19
\FD|REG_2|data_s[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaB[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(73));

-- Location: LCCOMB_X108_Y38_N16
\FD|mux_Banco_Ula|saida[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[31]~1_combout\ = (\FD|REG_2|data_s\(138) & (\FD|REG_2|data_s\(41))) # (!\FD|REG_2|data_s\(138) & ((\FD|REG_2|data_s\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(138),
	datac => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(73),
	combout => \FD|mux_Banco_Ula|saida[31]~1_combout\);

-- Location: LCCOMB_X110_Y38_N30
\FD|ULA|soma[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[31]~62_combout\ = \FD|mux_Banco_Ula|saida[31]~1_combout\ $ (\FD|REG_2|data_s\(105) $ (\FD|ULA|soma[30]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|REG_2|data_s\(105),
	cin => \FD|ULA|soma[30]~61\,
	combout => \FD|ULA|soma[31]~62_combout\);

-- Location: LCCOMB_X111_Y38_N10
\FD|ULA|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~4_combout\ = (\FD|ULA|soma[31]~62_combout\ & ((\FD|REG_2|data_s\(139)) # ((!\FD|REG_2|data_s\(142)) # (!\FD|UCULA|ALUctr[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(139),
	datab => \FD|UCULA|ALUctr[0]~3_combout\,
	datac => \FD|REG_2|data_s\(142),
	datad => \FD|ULA|soma[31]~62_combout\,
	combout => \FD|ULA|Mux0~4_combout\);

-- Location: LCCOMB_X111_Y38_N16
\FD|ULA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~2_combout\ = (\FD|ULA|Mux21~2_combout\ & ((\FD|ULA|Mux21~3_combout\ & (\FD|ULA|Add1~62_combout\)) # (!\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux0~4_combout\))))) # (!\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~2_combout\,
	datab => \FD|ULA|Mux21~3_combout\,
	datac => \FD|ULA|Add1~62_combout\,
	datad => \FD|ULA|Mux0~4_combout\,
	combout => \FD|ULA|Mux0~2_combout\);

-- Location: LCCOMB_X111_Y38_N28
\FD|ULA|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~3_combout\ = (\FD|ULA|Mux31~0_combout\ & ((\FD|REG_2|data_s\(105) & ((\FD|mux_Banco_Ula|saida[31]~1_combout\) # (!\FD|ULA|Mux0~2_combout\))) # (!\FD|REG_2|data_s\(105) & (\FD|mux_Banco_Ula|saida[31]~1_combout\ & !\FD|ULA|Mux0~2_combout\)))) # 
-- (!\FD|ULA|Mux31~0_combout\ & (((\FD|ULA|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|REG_2|data_s\(105),
	datac => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datad => \FD|ULA|Mux0~2_combout\,
	combout => \FD|ULA|Mux0~3_combout\);

-- Location: FF_X111_Y38_N29
\FD|REG_3|data_s[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(68));

-- Location: FF_X111_Y38_N19
\FD|REG_4|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_3|data_s\(68),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_4|data_s\(36));

-- Location: LCCOMB_X103_Y38_N2
\FD|mux_Ula_Memoria|saida[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[31]~1_combout\ = (\FD|REG_4|data_s\(69) & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\))) # (!\FD|REG_4|data_s\(69) & (\FD|REG_4|data_s\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_4|data_s\(36),
	datac => \FD|REG_4|data_s\(69),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\,
	combout => \FD|mux_Ula_Memoria|saida[31]~1_combout\);

-- Location: FF_X103_Y38_N3
\FD|BR|bancoReg_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_Ula_Memoria|saida[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(73));

-- Location: LCCOMB_X103_Y38_N24
\FD|BR|saidaA[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~3_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[31]~2_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\))) # (!\FD|BR|saidaA[31]~2_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[31]~2_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(73),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\,
	combout => \FD|BR|saidaA[31]~3_combout\);

-- Location: FF_X103_Y38_N25
\FD|REG_2|data_s[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|BR|saidaA[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(105));

-- Location: LCCOMB_X109_Y38_N30
\FD|ULA|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~62_combout\ = \FD|REG_2|data_s\(105) $ (\FD|ULA|Add1~61\ $ (!\FD|mux_Banco_Ula|saida[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(105),
	datad => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	cin => \FD|ULA|Add1~61\,
	combout => \FD|ULA|Add1~62_combout\);

-- Location: LCCOMB_X112_Y38_N28
\FD|ULA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~8_combout\ = (!\FD|ULA|Add1~48_combout\ & (!\FD|ULA|Add1~50_combout\ & (!\FD|ULA|Add1~46_combout\ & !\FD|ULA|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~48_combout\,
	datab => \FD|ULA|Add1~50_combout\,
	datac => \FD|ULA|Add1~46_combout\,
	datad => \FD|ULA|Add1~52_combout\,
	combout => \FD|ULA|Equal0~8_combout\);

-- Location: LCCOMB_X112_Y38_N14
\FD|ULA|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~9_combout\ = (!\FD|ULA|Add1~58_combout\ & \FD|ULA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Add1~58_combout\,
	datad => \FD|ULA|Equal0~8_combout\,
	combout => \FD|ULA|Equal0~9_combout\);

-- Location: LCCOMB_X108_Y38_N24
\FD|ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~0_combout\ = (!\FD|ULA|Add1~38_combout\ & (!\FD|ULA|Add1~42_combout\ & (!\FD|ULA|Add1~40_combout\ & !\FD|ULA|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~38_combout\,
	datab => \FD|ULA|Add1~42_combout\,
	datac => \FD|ULA|Add1~40_combout\,
	datad => \FD|ULA|Add1~44_combout\,
	combout => \FD|ULA|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y38_N22
\FD|ULA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~1_combout\ = (!\FD|ULA|Add1~36_combout\ & (!\FD|ULA|Add1~30_combout\ & (!\FD|ULA|Add1~34_combout\ & !\FD|ULA|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~36_combout\,
	datab => \FD|ULA|Add1~30_combout\,
	datac => \FD|ULA|Add1~34_combout\,
	datad => \FD|ULA|Add1~32_combout\,
	combout => \FD|ULA|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y38_N0
\FD|ULA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~2_combout\ = (!\FD|ULA|Add1~10_combout\ & (!\FD|ULA|Add1~6_combout\ & (!\FD|ULA|Add1~12_combout\ & !\FD|ULA|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~10_combout\,
	datab => \FD|ULA|Add1~6_combout\,
	datac => \FD|ULA|Add1~12_combout\,
	datad => \FD|ULA|Add1~8_combout\,
	combout => \FD|ULA|Equal0~2_combout\);

-- Location: LCCOMB_X112_Y38_N30
\FD|ULA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~3_combout\ = (!\FD|ULA|Add1~14_combout\ & (!\FD|ULA|Add1~18_combout\ & (!\FD|ULA|Add1~16_combout\ & !\FD|ULA|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Add1~18_combout\,
	datac => \FD|ULA|Add1~16_combout\,
	datad => \FD|ULA|Add1~20_combout\,
	combout => \FD|ULA|Equal0~3_combout\);

-- Location: LCCOMB_X112_Y39_N18
\FD|ULA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~4_combout\ = (!\FD|ULA|Add1~24_combout\ & (!\FD|ULA|Add1~22_combout\ & (!\FD|ULA|Add1~26_combout\ & !\FD|ULA|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~24_combout\,
	datab => \FD|ULA|Add1~22_combout\,
	datac => \FD|ULA|Add1~26_combout\,
	datad => \FD|ULA|Add1~28_combout\,
	combout => \FD|ULA|Equal0~4_combout\);

-- Location: LCCOMB_X112_Y39_N20
\FD|ULA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~5_combout\ = (!\FD|ULA|Add1~4_combout\ & (!\FD|ULA|Add1~2_combout\ & (!\FD|ULA|Add1~0_combout\ & \FD|ULA|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~4_combout\,
	datab => \FD|ULA|Add1~2_combout\,
	datac => \FD|ULA|Add1~0_combout\,
	datad => \FD|ULA|Equal0~4_combout\,
	combout => \FD|ULA|Equal0~5_combout\);

-- Location: LCCOMB_X112_Y38_N20
\FD|ULA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~6_combout\ = (\FD|ULA|Equal0~1_combout\ & (\FD|ULA|Equal0~2_combout\ & (\FD|ULA|Equal0~3_combout\ & \FD|ULA|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~1_combout\,
	datab => \FD|ULA|Equal0~2_combout\,
	datac => \FD|ULA|Equal0~3_combout\,
	datad => \FD|ULA|Equal0~5_combout\,
	combout => \FD|ULA|Equal0~6_combout\);

-- Location: LCCOMB_X112_Y38_N6
\FD|ULA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~7_combout\ = (!\FD|ULA|Add1~54_combout\ & (!\FD|ULA|Add1~56_combout\ & (\FD|ULA|Equal0~0_combout\ & \FD|ULA|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~54_combout\,
	datab => \FD|ULA|Add1~56_combout\,
	datac => \FD|ULA|Equal0~0_combout\,
	datad => \FD|ULA|Equal0~6_combout\,
	combout => \FD|ULA|Equal0~7_combout\);

-- Location: LCCOMB_X112_Y38_N16
\FD|ULA|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~10_combout\ = (!\FD|ULA|Add1~62_combout\ & (!\FD|ULA|Add1~60_combout\ & (\FD|ULA|Equal0~9_combout\ & \FD|ULA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~62_combout\,
	datab => \FD|ULA|Add1~60_combout\,
	datac => \FD|ULA|Equal0~9_combout\,
	datad => \FD|ULA|Equal0~7_combout\,
	combout => \FD|ULA|Equal0~10_combout\);

-- Location: FF_X112_Y38_N17
\FD|REG_3|data_s[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ULA|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(69));

-- Location: LCCOMB_X112_Y38_N26
\FD|sel_mux_beq\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|sel_mux_beq~combout\ = (\FD|REG_3|data_s\(104) & \FD|REG_3|data_s\(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_3|data_s\(104),
	datad => \FD|REG_3|data_s\(69),
	combout => \FD|sel_mux_beq~combout\);

-- Location: LCCOMB_X114_Y43_N6
\FD|Somador|saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[4]~4_combout\ = (\FD|PC|data_s\(4) & (\FD|Somador|saida[3]~3\ $ (GND))) # (!\FD|PC|data_s\(4) & (!\FD|Somador|saida[3]~3\ & VCC))
-- \FD|Somador|saida[4]~5\ = CARRY((\FD|PC|data_s\(4) & !\FD|Somador|saida[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datad => VCC,
	cin => \FD|Somador|saida[3]~3\,
	combout => \FD|Somador|saida[4]~4_combout\,
	cout => \FD|Somador|saida[4]~5\);

-- Location: LCCOMB_X114_Y43_N8
\FD|Somador|saida[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[5]~6_combout\ = (\FD|PC|data_s\(5) & (!\FD|Somador|saida[4]~5\)) # (!\FD|PC|data_s\(5) & ((\FD|Somador|saida[4]~5\) # (GND)))
-- \FD|Somador|saida[5]~7\ = CARRY((!\FD|Somador|saida[4]~5\) # (!\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(5),
	datad => VCC,
	cin => \FD|Somador|saida[4]~5\,
	combout => \FD|Somador|saida[5]~6_combout\,
	cout => \FD|Somador|saida[5]~7\);

-- Location: FF_X114_Y43_N9
\FD|REG_1|data_s[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(37));

-- Location: LCCOMB_X114_Y40_N0
\FD|REG_2|data_s[111]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[111]~feeder_combout\ = \FD|REG_1|data_s\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(37),
	combout => \FD|REG_2|data_s[111]~feeder_combout\);

-- Location: FF_X114_Y40_N1
\FD|REG_2|data_s[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[111]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(111));

-- Location: FF_X114_Y43_N7
\FD|REG_1|data_s[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(36));

-- Location: LCCOMB_X114_Y40_N30
\FD|REG_2|data_s[110]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[110]~feeder_combout\ = \FD|REG_1|data_s\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(36),
	combout => \FD|REG_2|data_s[110]~feeder_combout\);

-- Location: FF_X114_Y40_N31
\FD|REG_2|data_s[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[110]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(110));

-- Location: LCCOMB_X114_Y43_N4
\FD|Somador|saida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[3]~2_combout\ = (\FD|PC|data_s\(3) & (!\FD|Somador|saida[2]~1\)) # (!\FD|PC|data_s\(3) & ((\FD|Somador|saida[2]~1\) # (GND)))
-- \FD|Somador|saida[3]~3\ = CARRY((!\FD|Somador|saida[2]~1\) # (!\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(3),
	datad => VCC,
	cin => \FD|Somador|saida[2]~1\,
	combout => \FD|Somador|saida[3]~2_combout\,
	cout => \FD|Somador|saida[3]~3\);

-- Location: FF_X114_Y43_N5
\FD|REG_1|data_s[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(35));

-- Location: FF_X114_Y39_N3
\FD|REG_2|data_s[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(35),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(109));

-- Location: LCCOMB_X114_Y39_N4
\FD|REG_3|data_s[73]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[73]~32_combout\ = (\FD|REG_2|data_s\(11) & ((\FD|REG_2|data_s\(109) & (\FD|REG_3|data_s[72]~31\ & VCC)) # (!\FD|REG_2|data_s\(109) & (!\FD|REG_3|data_s[72]~31\)))) # (!\FD|REG_2|data_s\(11) & ((\FD|REG_2|data_s\(109) & 
-- (!\FD|REG_3|data_s[72]~31\)) # (!\FD|REG_2|data_s\(109) & ((\FD|REG_3|data_s[72]~31\) # (GND)))))
-- \FD|REG_3|data_s[73]~33\ = CARRY((\FD|REG_2|data_s\(11) & (!\FD|REG_2|data_s\(109) & !\FD|REG_3|data_s[72]~31\)) # (!\FD|REG_2|data_s\(11) & ((!\FD|REG_3|data_s[72]~31\) # (!\FD|REG_2|data_s\(109)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(11),
	datab => \FD|REG_2|data_s\(109),
	datad => VCC,
	cin => \FD|REG_3|data_s[72]~31\,
	combout => \FD|REG_3|data_s[73]~32_combout\,
	cout => \FD|REG_3|data_s[73]~33\);

-- Location: LCCOMB_X114_Y39_N6
\FD|REG_3|data_s[74]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[74]~34_combout\ = ((\FD|REG_2|data_s\(110) $ (\FD|REG_2|data_s\(12) $ (!\FD|REG_3|data_s[73]~33\)))) # (GND)
-- \FD|REG_3|data_s[74]~35\ = CARRY((\FD|REG_2|data_s\(110) & ((\FD|REG_2|data_s\(12)) # (!\FD|REG_3|data_s[73]~33\))) # (!\FD|REG_2|data_s\(110) & (\FD|REG_2|data_s\(12) & !\FD|REG_3|data_s[73]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(110),
	datab => \FD|REG_2|data_s\(12),
	datad => VCC,
	cin => \FD|REG_3|data_s[73]~33\,
	combout => \FD|REG_3|data_s[74]~34_combout\,
	cout => \FD|REG_3|data_s[74]~35\);

-- Location: LCCOMB_X114_Y39_N8
\FD|REG_3|data_s[75]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[75]~36_combout\ = (\FD|REG_2|data_s\(111) & ((\FD|REG_2|data_s\(13) & (\FD|REG_3|data_s[74]~35\ & VCC)) # (!\FD|REG_2|data_s\(13) & (!\FD|REG_3|data_s[74]~35\)))) # (!\FD|REG_2|data_s\(111) & ((\FD|REG_2|data_s\(13) & 
-- (!\FD|REG_3|data_s[74]~35\)) # (!\FD|REG_2|data_s\(13) & ((\FD|REG_3|data_s[74]~35\) # (GND)))))
-- \FD|REG_3|data_s[75]~37\ = CARRY((\FD|REG_2|data_s\(111) & (!\FD|REG_2|data_s\(13) & !\FD|REG_3|data_s[74]~35\)) # (!\FD|REG_2|data_s\(111) & ((!\FD|REG_3|data_s[74]~35\) # (!\FD|REG_2|data_s\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(111),
	datab => \FD|REG_2|data_s\(13),
	datad => VCC,
	cin => \FD|REG_3|data_s[74]~35\,
	combout => \FD|REG_3|data_s[75]~36_combout\,
	cout => \FD|REG_3|data_s[75]~37\);

-- Location: FF_X114_Y39_N9
\FD|REG_3|data_s[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[75]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(75));

-- Location: LCCOMB_X113_Y40_N12
\FD|PC|data_s[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[5]~3_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(75))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|REG_3|data_s\(75),
	datad => \FD|Somador|saida[5]~6_combout\,
	combout => \FD|PC|data_s[5]~3_combout\);

-- Location: FF_X113_Y40_N13
\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[5]~3_combout\,
	asdata => \FD|REG_1|data_s\(3),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

-- Location: LCCOMB_X114_Y43_N10
\FD|Somador|saida[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[6]~8_combout\ = (\FD|PC|data_s\(6) & (\FD|Somador|saida[5]~7\ $ (GND))) # (!\FD|PC|data_s\(6) & (!\FD|Somador|saida[5]~7\ & VCC))
-- \FD|Somador|saida[6]~9\ = CARRY((\FD|PC|data_s\(6) & !\FD|Somador|saida[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(6),
	datad => VCC,
	cin => \FD|Somador|saida[5]~7\,
	combout => \FD|Somador|saida[6]~8_combout\,
	cout => \FD|Somador|saida[6]~9\);

-- Location: FF_X114_Y43_N11
\FD|REG_1|data_s[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(38));

-- Location: LCCOMB_X113_Y39_N14
\FD|REG_2|data_s[112]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[112]~feeder_combout\ = \FD|REG_1|data_s\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(38),
	combout => \FD|REG_2|data_s[112]~feeder_combout\);

-- Location: FF_X113_Y39_N15
\FD|REG_2|data_s[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[112]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(112));

-- Location: LCCOMB_X114_Y39_N10
\FD|REG_3|data_s[76]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[76]~38_combout\ = ((\FD|REG_2|data_s\(112) $ (\FD|REG_2|data_s\(41) $ (!\FD|REG_3|data_s[75]~37\)))) # (GND)
-- \FD|REG_3|data_s[76]~39\ = CARRY((\FD|REG_2|data_s\(112) & ((\FD|REG_2|data_s\(41)) # (!\FD|REG_3|data_s[75]~37\))) # (!\FD|REG_2|data_s\(112) & (\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[75]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(112),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[75]~37\,
	combout => \FD|REG_3|data_s[76]~38_combout\,
	cout => \FD|REG_3|data_s[76]~39\);

-- Location: FF_X114_Y39_N11
\FD|REG_3|data_s[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[76]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(76));

-- Location: LCCOMB_X113_Y43_N6
\FD|PC|data_s[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[6]~4_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(76))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(76),
	datab => \FD|Somador|saida[6]~8_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[6]~4_combout\);

-- Location: FF_X113_Y43_N7
\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[6]~4_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

-- Location: LCCOMB_X114_Y43_N12
\FD|Somador|saida[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[7]~10_combout\ = (\FD|PC|data_s\(7) & (!\FD|Somador|saida[6]~9\)) # (!\FD|PC|data_s\(7) & ((\FD|Somador|saida[6]~9\) # (GND)))
-- \FD|Somador|saida[7]~11\ = CARRY((!\FD|Somador|saida[6]~9\) # (!\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datad => VCC,
	cin => \FD|Somador|saida[6]~9\,
	combout => \FD|Somador|saida[7]~10_combout\,
	cout => \FD|Somador|saida[7]~11\);

-- Location: FF_X114_Y43_N13
\FD|REG_1|data_s[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(39));

-- Location: LCCOMB_X113_Y39_N16
\FD|REG_2|data_s[113]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[113]~feeder_combout\ = \FD|REG_1|data_s\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(39),
	combout => \FD|REG_2|data_s[113]~feeder_combout\);

-- Location: FF_X113_Y39_N17
\FD|REG_2|data_s[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[113]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(113));

-- Location: LCCOMB_X114_Y39_N12
\FD|REG_3|data_s[77]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[77]~40_combout\ = (\FD|REG_2|data_s\(113) & ((\FD|REG_2|data_s\(6) & (\FD|REG_3|data_s[76]~39\ & VCC)) # (!\FD|REG_2|data_s\(6) & (!\FD|REG_3|data_s[76]~39\)))) # (!\FD|REG_2|data_s\(113) & ((\FD|REG_2|data_s\(6) & 
-- (!\FD|REG_3|data_s[76]~39\)) # (!\FD|REG_2|data_s\(6) & ((\FD|REG_3|data_s[76]~39\) # (GND)))))
-- \FD|REG_3|data_s[77]~41\ = CARRY((\FD|REG_2|data_s\(113) & (!\FD|REG_2|data_s\(6) & !\FD|REG_3|data_s[76]~39\)) # (!\FD|REG_2|data_s\(113) & ((!\FD|REG_3|data_s[76]~39\) # (!\FD|REG_2|data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(113),
	datab => \FD|REG_2|data_s\(6),
	datad => VCC,
	cin => \FD|REG_3|data_s[76]~39\,
	combout => \FD|REG_3|data_s[77]~40_combout\,
	cout => \FD|REG_3|data_s[77]~41\);

-- Location: FF_X114_Y39_N13
\FD|REG_3|data_s[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[77]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(77));

-- Location: LCCOMB_X113_Y43_N12
\FD|PC|data_s[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[7]~5_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(77))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(77),
	datab => \FD|Somador|saida[7]~10_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[7]~5_combout\);

-- Location: FF_X113_Y43_N13
\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[7]~5_combout\,
	asdata => \FD|REG_1|data_s\(5),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

-- Location: LCCOMB_X113_Y41_N0
\FD|ROM|memROM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~21_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(4) & (!\FD|PC|data_s\(2))) # (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(2) & !\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(3),
	combout => \FD|ROM|memROM~21_combout\);

-- Location: LCCOMB_X114_Y41_N18
\FD|ROM|memROM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~28_combout\ = (!\FD|PC|data_s\(7) & (\FD|ROM|memROM~21_combout\ & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~21_combout\,
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~28_combout\);

-- Location: FF_X114_Y41_N19
\FD|REG_1|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(1));

-- Location: FF_X108_Y39_N9
\FD|REG_2|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(11));

-- Location: FF_X114_Y39_N5
\FD|REG_3|data_s[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[73]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(73));

-- Location: LCCOMB_X113_Y43_N18
\FD|PC|data_s[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[3]~1_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(73))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(73),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[3]~2_combout\,
	combout => \FD|PC|data_s[3]~1_combout\);

-- Location: FF_X113_Y43_N19
\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[3]~1_combout\,
	asdata => \FD|REG_1|data_s\(1),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

-- Location: FF_X114_Y39_N7
\FD|REG_3|data_s[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[74]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(74));

-- Location: LCCOMB_X113_Y43_N16
\FD|PC|data_s[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~2_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_3|data_s\(74)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[4]~4_combout\,
	datab => \FD|REG_3|data_s\(74),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[4]~2_combout\);

-- Location: FF_X113_Y43_N17
\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[4]~2_combout\,
	asdata => \FD|REG_1|data_s\(2),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

-- Location: LCCOMB_X113_Y41_N8
\FD|ROM|memROM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~15_combout\ = (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(3) & (\FD|ROM|memROM~14_combout\ & !\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(3),
	datac => \FD|ROM|memROM~14_combout\,
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~15_combout\);

-- Location: LCCOMB_X113_Y41_N10
\FD|ROM|memROM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~16_combout\ = (\FD|ROM|memROM~15_combout\ & !\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~15_combout\,
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~16_combout\);

-- Location: FF_X113_Y41_N11
\FD|REG_1|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|ROM|memROM~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(29));

-- Location: LCCOMB_X113_Y41_N30
\FD|UC|pontosDeControle[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UC|pontosDeControle[10]~0_combout\ = (!\FD|REG_1|data_s\(29) & (!\FD|REG_1|data_s\(31) & (\FD|REG_1|data_s\(27) & !\FD|REG_1|data_s\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_1|data_s\(29),
	datab => \FD|REG_1|data_s\(31),
	datac => \FD|REG_1|data_s\(27),
	datad => \FD|REG_1|data_s\(28),
	combout => \FD|UC|pontosDeControle[10]~0_combout\);

-- Location: FF_X114_Y40_N15
\FD|REG_1|data_s[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|PC|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(32));

-- Location: FF_X114_Y40_N21
\FD|REG_2|data_s[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(32),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(106));

-- Location: LCCOMB_X114_Y40_N28
\FD|REG_3|data_s[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[70]~feeder_combout\ = \FD|REG_2|data_s\(106)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_2|data_s\(106),
	combout => \FD|REG_3|data_s[70]~feeder_combout\);

-- Location: FF_X114_Y40_N29
\FD|REG_3|data_s[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(70));

-- Location: LCCOMB_X114_Y40_N4
\FD|mux_jump|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[0]~0_combout\ = (!\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|sel_mux_beq~combout\ & ((\FD|REG_3|data_s\(70)))) # (!\FD|sel_mux_beq~combout\ & (\FD|PC|data_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC|pontosDeControle[10]~0_combout\,
	datab => \FD|sel_mux_beq~combout\,
	datac => \FD|PC|data_s\(0),
	datad => \FD|REG_3|data_s\(70),
	combout => \FD|mux_jump|saida[0]~0_combout\);

-- Location: FF_X114_Y40_N5
\FD|PC|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(0));

-- Location: LCCOMB_X114_Y43_N14
\FD|Somador|saida[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[8]~12_combout\ = (\FD|PC|data_s\(8) & (\FD|Somador|saida[7]~11\ $ (GND))) # (!\FD|PC|data_s\(8) & (!\FD|Somador|saida[7]~11\ & VCC))
-- \FD|Somador|saida[8]~13\ = CARRY((\FD|PC|data_s\(8) & !\FD|Somador|saida[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(8),
	datad => VCC,
	cin => \FD|Somador|saida[7]~11\,
	combout => \FD|Somador|saida[8]~12_combout\,
	cout => \FD|Somador|saida[8]~13\);

-- Location: FF_X114_Y43_N15
\FD|REG_1|data_s[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(40));

-- Location: LCCOMB_X113_Y39_N30
\FD|REG_2|data_s[114]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[114]~feeder_combout\ = \FD|REG_1|data_s\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(40),
	combout => \FD|REG_2|data_s[114]~feeder_combout\);

-- Location: FF_X113_Y39_N31
\FD|REG_2|data_s[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[114]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(114));

-- Location: LCCOMB_X114_Y39_N14
\FD|REG_3|data_s[78]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[78]~42_combout\ = ((\FD|REG_2|data_s\(114) $ (\FD|REG_2|data_s\(41) $ (!\FD|REG_3|data_s[77]~41\)))) # (GND)
-- \FD|REG_3|data_s[78]~43\ = CARRY((\FD|REG_2|data_s\(114) & ((\FD|REG_2|data_s\(41)) # (!\FD|REG_3|data_s[77]~41\))) # (!\FD|REG_2|data_s\(114) & (\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[77]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(114),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[77]~41\,
	combout => \FD|REG_3|data_s[78]~42_combout\,
	cout => \FD|REG_3|data_s[78]~43\);

-- Location: FF_X114_Y39_N15
\FD|REG_3|data_s[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[78]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(78));

-- Location: LCCOMB_X113_Y43_N30
\FD|PC|data_s[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[8]~6_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(78))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(78),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[8]~12_combout\,
	combout => \FD|PC|data_s[8]~6_combout\);

-- Location: FF_X113_Y43_N31
\FD|PC|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[8]~6_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(8));

-- Location: LCCOMB_X114_Y43_N16
\FD|Somador|saida[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[9]~14_combout\ = (\FD|PC|data_s\(9) & (!\FD|Somador|saida[8]~13\)) # (!\FD|PC|data_s\(9) & ((\FD|Somador|saida[8]~13\) # (GND)))
-- \FD|Somador|saida[9]~15\ = CARRY((!\FD|Somador|saida[8]~13\) # (!\FD|PC|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(9),
	datad => VCC,
	cin => \FD|Somador|saida[8]~13\,
	combout => \FD|Somador|saida[9]~14_combout\,
	cout => \FD|Somador|saida[9]~15\);

-- Location: FF_X114_Y43_N17
\FD|REG_1|data_s[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(41));

-- Location: FF_X113_Y39_N13
\FD|REG_2|data_s[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(41),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(115));

-- Location: LCCOMB_X114_Y39_N16
\FD|REG_3|data_s[79]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[79]~44_combout\ = (\FD|REG_2|data_s\(115) & ((\FD|REG_2|data_s\(41) & (\FD|REG_3|data_s[78]~43\ & VCC)) # (!\FD|REG_2|data_s\(41) & (!\FD|REG_3|data_s[78]~43\)))) # (!\FD|REG_2|data_s\(115) & ((\FD|REG_2|data_s\(41) & 
-- (!\FD|REG_3|data_s[78]~43\)) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_3|data_s[78]~43\) # (GND)))))
-- \FD|REG_3|data_s[79]~45\ = CARRY((\FD|REG_2|data_s\(115) & (!\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[78]~43\)) # (!\FD|REG_2|data_s\(115) & ((!\FD|REG_3|data_s[78]~43\) # (!\FD|REG_2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(115),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[78]~43\,
	combout => \FD|REG_3|data_s[79]~44_combout\,
	cout => \FD|REG_3|data_s[79]~45\);

-- Location: FF_X114_Y39_N17
\FD|REG_3|data_s[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[79]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(79));

-- Location: LCCOMB_X114_Y43_N0
\FD|PC|data_s[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[9]~7_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(79))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[9]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|REG_3|data_s\(79),
	datad => \FD|Somador|saida[9]~14_combout\,
	combout => \FD|PC|data_s[9]~7_combout\);

-- Location: LCCOMB_X113_Y43_N28
\FD|PC|data_s[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[9]~feeder_combout\ = \FD|PC|data_s[9]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s[9]~7_combout\,
	combout => \FD|PC|data_s[9]~feeder_combout\);

-- Location: FF_X113_Y43_N29
\FD|PC|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[9]~feeder_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(9));

-- Location: LCCOMB_X114_Y43_N18
\FD|Somador|saida[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[10]~16_combout\ = (\FD|PC|data_s\(10) & (\FD|Somador|saida[9]~15\ $ (GND))) # (!\FD|PC|data_s\(10) & (!\FD|Somador|saida[9]~15\ & VCC))
-- \FD|Somador|saida[10]~17\ = CARRY((\FD|PC|data_s\(10) & !\FD|Somador|saida[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(10),
	datad => VCC,
	cin => \FD|Somador|saida[9]~15\,
	combout => \FD|Somador|saida[10]~16_combout\,
	cout => \FD|Somador|saida[10]~17\);

-- Location: FF_X114_Y43_N19
\FD|REG_1|data_s[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(42));

-- Location: LCCOMB_X114_Y40_N6
\FD|REG_2|data_s[116]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[116]~feeder_combout\ = \FD|REG_1|data_s\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(42),
	combout => \FD|REG_2|data_s[116]~feeder_combout\);

-- Location: FF_X114_Y40_N7
\FD|REG_2|data_s[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[116]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(116));

-- Location: LCCOMB_X114_Y39_N18
\FD|REG_3|data_s[80]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[80]~46_combout\ = ((\FD|REG_2|data_s\(116) $ (\FD|REG_2|data_s\(41) $ (!\FD|REG_3|data_s[79]~45\)))) # (GND)
-- \FD|REG_3|data_s[80]~47\ = CARRY((\FD|REG_2|data_s\(116) & ((\FD|REG_2|data_s\(41)) # (!\FD|REG_3|data_s[79]~45\))) # (!\FD|REG_2|data_s\(116) & (\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[79]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(116),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[79]~45\,
	combout => \FD|REG_3|data_s[80]~46_combout\,
	cout => \FD|REG_3|data_s[80]~47\);

-- Location: FF_X114_Y39_N19
\FD|REG_3|data_s[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[80]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(80));

-- Location: LCCOMB_X113_Y43_N10
\FD|PC|data_s[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[10]~8_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_3|data_s\(80)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[10]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[10]~16_combout\,
	datab => \FD|REG_3|data_s\(80),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[10]~8_combout\);

-- Location: FF_X113_Y43_N11
\FD|PC|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[10]~8_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(10));

-- Location: LCCOMB_X114_Y43_N20
\FD|Somador|saida[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[11]~18_combout\ = (\FD|PC|data_s\(11) & (!\FD|Somador|saida[10]~17\)) # (!\FD|PC|data_s\(11) & ((\FD|Somador|saida[10]~17\) # (GND)))
-- \FD|Somador|saida[11]~19\ = CARRY((!\FD|Somador|saida[10]~17\) # (!\FD|PC|data_s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(11),
	datad => VCC,
	cin => \FD|Somador|saida[10]~17\,
	combout => \FD|Somador|saida[11]~18_combout\,
	cout => \FD|Somador|saida[11]~19\);

-- Location: FF_X114_Y43_N21
\FD|REG_1|data_s[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(43));

-- Location: FF_X114_Y40_N27
\FD|REG_2|data_s[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(43),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(117));

-- Location: LCCOMB_X114_Y39_N20
\FD|REG_3|data_s[81]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[81]~48_combout\ = (\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(117) & (\FD|REG_3|data_s[80]~47\ & VCC)) # (!\FD|REG_2|data_s\(117) & (!\FD|REG_3|data_s[80]~47\)))) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(117) & 
-- (!\FD|REG_3|data_s[80]~47\)) # (!\FD|REG_2|data_s\(117) & ((\FD|REG_3|data_s[80]~47\) # (GND)))))
-- \FD|REG_3|data_s[81]~49\ = CARRY((\FD|REG_2|data_s\(41) & (!\FD|REG_2|data_s\(117) & !\FD|REG_3|data_s[80]~47\)) # (!\FD|REG_2|data_s\(41) & ((!\FD|REG_3|data_s[80]~47\) # (!\FD|REG_2|data_s\(117)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(117),
	datad => VCC,
	cin => \FD|REG_3|data_s[80]~47\,
	combout => \FD|REG_3|data_s[81]~48_combout\,
	cout => \FD|REG_3|data_s[81]~49\);

-- Location: FF_X114_Y39_N21
\FD|REG_3|data_s[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[81]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(81));

-- Location: LCCOMB_X113_Y43_N0
\FD|PC|data_s[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[11]~9_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_3|data_s\(81)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[11]~18_combout\,
	datab => \FD|REG_3|data_s\(81),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[11]~9_combout\);

-- Location: FF_X113_Y43_N1
\FD|PC|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[11]~9_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(11));

-- Location: LCCOMB_X114_Y43_N22
\FD|Somador|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[12]~20_combout\ = (\FD|PC|data_s\(12) & (\FD|Somador|saida[11]~19\ $ (GND))) # (!\FD|PC|data_s\(12) & (!\FD|Somador|saida[11]~19\ & VCC))
-- \FD|Somador|saida[12]~21\ = CARRY((\FD|PC|data_s\(12) & !\FD|Somador|saida[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(12),
	datad => VCC,
	cin => \FD|Somador|saida[11]~19\,
	combout => \FD|Somador|saida[12]~20_combout\,
	cout => \FD|Somador|saida[12]~21\);

-- Location: FF_X114_Y43_N23
\FD|REG_1|data_s[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(44));

-- Location: LCCOMB_X114_Y44_N0
\FD|REG_2|data_s[118]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[118]~feeder_combout\ = \FD|REG_1|data_s\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(44),
	combout => \FD|REG_2|data_s[118]~feeder_combout\);

-- Location: FF_X114_Y44_N1
\FD|REG_2|data_s[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[118]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(118));

-- Location: LCCOMB_X114_Y39_N22
\FD|REG_3|data_s[82]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[82]~50_combout\ = ((\FD|REG_2|data_s\(118) $ (\FD|REG_2|data_s\(41) $ (!\FD|REG_3|data_s[81]~49\)))) # (GND)
-- \FD|REG_3|data_s[82]~51\ = CARRY((\FD|REG_2|data_s\(118) & ((\FD|REG_2|data_s\(41)) # (!\FD|REG_3|data_s[81]~49\))) # (!\FD|REG_2|data_s\(118) & (\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[81]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(118),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[81]~49\,
	combout => \FD|REG_3|data_s[82]~50_combout\,
	cout => \FD|REG_3|data_s[82]~51\);

-- Location: FF_X114_Y39_N23
\FD|REG_3|data_s[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[82]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(82));

-- Location: LCCOMB_X113_Y43_N2
\FD|PC|data_s[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[12]~10_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_3|data_s\(82)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[12]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[12]~20_combout\,
	datab => \FD|REG_3|data_s\(82),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[12]~10_combout\);

-- Location: FF_X113_Y43_N3
\FD|PC|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[12]~10_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(12));

-- Location: LCCOMB_X114_Y43_N24
\FD|Somador|saida[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[13]~22_combout\ = (\FD|PC|data_s\(13) & (!\FD|Somador|saida[12]~21\)) # (!\FD|PC|data_s\(13) & ((\FD|Somador|saida[12]~21\) # (GND)))
-- \FD|Somador|saida[13]~23\ = CARRY((!\FD|Somador|saida[12]~21\) # (!\FD|PC|data_s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(13),
	datad => VCC,
	cin => \FD|Somador|saida[12]~21\,
	combout => \FD|Somador|saida[13]~22_combout\,
	cout => \FD|Somador|saida[13]~23\);

-- Location: FF_X114_Y43_N25
\FD|REG_1|data_s[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(45));

-- Location: FF_X114_Y40_N11
\FD|REG_2|data_s[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(119));

-- Location: LCCOMB_X114_Y39_N24
\FD|REG_3|data_s[83]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[83]~52_combout\ = (\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(119) & (\FD|REG_3|data_s[82]~51\ & VCC)) # (!\FD|REG_2|data_s\(119) & (!\FD|REG_3|data_s[82]~51\)))) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(119) & 
-- (!\FD|REG_3|data_s[82]~51\)) # (!\FD|REG_2|data_s\(119) & ((\FD|REG_3|data_s[82]~51\) # (GND)))))
-- \FD|REG_3|data_s[83]~53\ = CARRY((\FD|REG_2|data_s\(41) & (!\FD|REG_2|data_s\(119) & !\FD|REG_3|data_s[82]~51\)) # (!\FD|REG_2|data_s\(41) & ((!\FD|REG_3|data_s[82]~51\) # (!\FD|REG_2|data_s\(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(119),
	datad => VCC,
	cin => \FD|REG_3|data_s[82]~51\,
	combout => \FD|REG_3|data_s[83]~52_combout\,
	cout => \FD|REG_3|data_s[83]~53\);

-- Location: FF_X114_Y39_N25
\FD|REG_3|data_s[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[83]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(83));

-- Location: LCCOMB_X113_Y43_N24
\FD|PC|data_s[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[13]~11_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_3|data_s\(83)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[13]~22_combout\,
	datab => \FD|REG_3|data_s\(83),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[13]~11_combout\);

-- Location: FF_X113_Y43_N25
\FD|PC|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[13]~11_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(13));

-- Location: LCCOMB_X114_Y43_N26
\FD|Somador|saida[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[14]~24_combout\ = (\FD|PC|data_s\(14) & (\FD|Somador|saida[13]~23\ $ (GND))) # (!\FD|PC|data_s\(14) & (!\FD|Somador|saida[13]~23\ & VCC))
-- \FD|Somador|saida[14]~25\ = CARRY((\FD|PC|data_s\(14) & !\FD|Somador|saida[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(14),
	datad => VCC,
	cin => \FD|Somador|saida[13]~23\,
	combout => \FD|Somador|saida[14]~24_combout\,
	cout => \FD|Somador|saida[14]~25\);

-- Location: FF_X114_Y43_N27
\FD|REG_1|data_s[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[14]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(46));

-- Location: FF_X114_Y43_N1
\FD|REG_2|data_s[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(120));

-- Location: LCCOMB_X114_Y39_N26
\FD|REG_3|data_s[84]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[84]~54_combout\ = ((\FD|REG_2|data_s\(120) $ (\FD|REG_2|data_s\(41) $ (!\FD|REG_3|data_s[83]~53\)))) # (GND)
-- \FD|REG_3|data_s[84]~55\ = CARRY((\FD|REG_2|data_s\(120) & ((\FD|REG_2|data_s\(41)) # (!\FD|REG_3|data_s[83]~53\))) # (!\FD|REG_2|data_s\(120) & (\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[83]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(120),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[83]~53\,
	combout => \FD|REG_3|data_s[84]~54_combout\,
	cout => \FD|REG_3|data_s[84]~55\);

-- Location: FF_X114_Y39_N27
\FD|REG_3|data_s[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[84]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(84));

-- Location: LCCOMB_X113_Y43_N26
\FD|PC|data_s[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[14]~12_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(84))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[14]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(84),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[14]~24_combout\,
	combout => \FD|PC|data_s[14]~12_combout\);

-- Location: FF_X113_Y43_N27
\FD|PC|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[14]~12_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(14));

-- Location: LCCOMB_X114_Y43_N28
\FD|Somador|saida[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[15]~26_combout\ = (\FD|PC|data_s\(15) & (!\FD|Somador|saida[14]~25\)) # (!\FD|PC|data_s\(15) & ((\FD|Somador|saida[14]~25\) # (GND)))
-- \FD|Somador|saida[15]~27\ = CARRY((!\FD|Somador|saida[14]~25\) # (!\FD|PC|data_s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(15),
	datad => VCC,
	cin => \FD|Somador|saida[14]~25\,
	combout => \FD|Somador|saida[15]~26_combout\,
	cout => \FD|Somador|saida[15]~27\);

-- Location: FF_X114_Y43_N29
\FD|REG_1|data_s[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(47));

-- Location: LCCOMB_X114_Y44_N22
\FD|REG_2|data_s[121]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[121]~feeder_combout\ = \FD|REG_1|data_s\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(47),
	combout => \FD|REG_2|data_s[121]~feeder_combout\);

-- Location: FF_X114_Y44_N23
\FD|REG_2|data_s[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[121]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(121));

-- Location: LCCOMB_X114_Y39_N28
\FD|REG_3|data_s[85]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[85]~56_combout\ = (\FD|REG_2|data_s\(121) & ((\FD|REG_2|data_s\(41) & (\FD|REG_3|data_s[84]~55\ & VCC)) # (!\FD|REG_2|data_s\(41) & (!\FD|REG_3|data_s[84]~55\)))) # (!\FD|REG_2|data_s\(121) & ((\FD|REG_2|data_s\(41) & 
-- (!\FD|REG_3|data_s[84]~55\)) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_3|data_s[84]~55\) # (GND)))))
-- \FD|REG_3|data_s[85]~57\ = CARRY((\FD|REG_2|data_s\(121) & (!\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[84]~55\)) # (!\FD|REG_2|data_s\(121) & ((!\FD|REG_3|data_s[84]~55\) # (!\FD|REG_2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(121),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[84]~55\,
	combout => \FD|REG_3|data_s[85]~56_combout\,
	cout => \FD|REG_3|data_s[85]~57\);

-- Location: FF_X114_Y39_N29
\FD|REG_3|data_s[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[85]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(85));

-- Location: LCCOMB_X113_Y43_N20
\FD|PC|data_s[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[15]~13_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(85))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[15]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(85),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[15]~26_combout\,
	combout => \FD|PC|data_s[15]~13_combout\);

-- Location: FF_X113_Y43_N21
\FD|PC|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[15]~13_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(15));

-- Location: LCCOMB_X114_Y43_N30
\FD|Somador|saida[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[16]~28_combout\ = (\FD|PC|data_s\(16) & (\FD|Somador|saida[15]~27\ $ (GND))) # (!\FD|PC|data_s\(16) & (!\FD|Somador|saida[15]~27\ & VCC))
-- \FD|Somador|saida[16]~29\ = CARRY((\FD|PC|data_s\(16) & !\FD|Somador|saida[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(16),
	datad => VCC,
	cin => \FD|Somador|saida[15]~27\,
	combout => \FD|Somador|saida[16]~28_combout\,
	cout => \FD|Somador|saida[16]~29\);

-- Location: FF_X114_Y43_N31
\FD|REG_1|data_s[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[16]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(48));

-- Location: LCCOMB_X114_Y44_N12
\FD|REG_2|data_s[122]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[122]~feeder_combout\ = \FD|REG_1|data_s\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(48),
	combout => \FD|REG_2|data_s[122]~feeder_combout\);

-- Location: FF_X114_Y44_N13
\FD|REG_2|data_s[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[122]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(122));

-- Location: LCCOMB_X114_Y39_N30
\FD|REG_3|data_s[86]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[86]~58_combout\ = ((\FD|REG_2|data_s\(122) $ (\FD|REG_2|data_s\(6) $ (!\FD|REG_3|data_s[85]~57\)))) # (GND)
-- \FD|REG_3|data_s[86]~59\ = CARRY((\FD|REG_2|data_s\(122) & ((\FD|REG_2|data_s\(6)) # (!\FD|REG_3|data_s[85]~57\))) # (!\FD|REG_2|data_s\(122) & (\FD|REG_2|data_s\(6) & !\FD|REG_3|data_s[85]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(122),
	datab => \FD|REG_2|data_s\(6),
	datad => VCC,
	cin => \FD|REG_3|data_s[85]~57\,
	combout => \FD|REG_3|data_s[86]~58_combout\,
	cout => \FD|REG_3|data_s[86]~59\);

-- Location: FF_X114_Y39_N31
\FD|REG_3|data_s[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[86]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(86));

-- Location: LCCOMB_X113_Y43_N14
\FD|PC|data_s[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[16]~14_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_3|data_s\(86)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[16]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[16]~28_combout\,
	datab => \FD|REG_3|data_s\(86),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[16]~14_combout\);

-- Location: FF_X113_Y43_N15
\FD|PC|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[16]~14_combout\,
	asdata => \FD|REG_1|data_s\(5),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(16));

-- Location: LCCOMB_X114_Y42_N0
\FD|Somador|saida[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[17]~30_combout\ = (\FD|PC|data_s\(17) & (!\FD|Somador|saida[16]~29\)) # (!\FD|PC|data_s\(17) & ((\FD|Somador|saida[16]~29\) # (GND)))
-- \FD|Somador|saida[17]~31\ = CARRY((!\FD|Somador|saida[16]~29\) # (!\FD|PC|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(17),
	datad => VCC,
	cin => \FD|Somador|saida[16]~29\,
	combout => \FD|Somador|saida[17]~30_combout\,
	cout => \FD|Somador|saida[17]~31\);

-- Location: FF_X114_Y42_N1
\FD|REG_1|data_s[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[17]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(49));

-- Location: LCCOMB_X114_Y41_N20
\FD|REG_2|data_s[123]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[123]~feeder_combout\ = \FD|REG_1|data_s\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(49),
	combout => \FD|REG_2|data_s[123]~feeder_combout\);

-- Location: FF_X114_Y41_N21
\FD|REG_2|data_s[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[123]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(123));

-- Location: LCCOMB_X114_Y38_N0
\FD|REG_3|data_s[87]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[87]~60_combout\ = (\FD|REG_2|data_s\(123) & ((\FD|REG_2|data_s\(41) & (\FD|REG_3|data_s[86]~59\ & VCC)) # (!\FD|REG_2|data_s\(41) & (!\FD|REG_3|data_s[86]~59\)))) # (!\FD|REG_2|data_s\(123) & ((\FD|REG_2|data_s\(41) & 
-- (!\FD|REG_3|data_s[86]~59\)) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_3|data_s[86]~59\) # (GND)))))
-- \FD|REG_3|data_s[87]~61\ = CARRY((\FD|REG_2|data_s\(123) & (!\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[86]~59\)) # (!\FD|REG_2|data_s\(123) & ((!\FD|REG_3|data_s[86]~59\) # (!\FD|REG_2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(123),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[86]~59\,
	combout => \FD|REG_3|data_s[87]~60_combout\,
	cout => \FD|REG_3|data_s[87]~61\);

-- Location: FF_X114_Y38_N1
\FD|REG_3|data_s[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[87]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(87));

-- Location: LCCOMB_X113_Y42_N16
\FD|PC|data_s[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[17]~15_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|REG_3|data_s\(87)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[17]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|Somador|saida[17]~30_combout\,
	datad => \FD|REG_3|data_s\(87),
	combout => \FD|PC|data_s[17]~15_combout\);

-- Location: FF_X113_Y42_N17
\FD|PC|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[17]~15_combout\,
	asdata => \FD|REG_1|data_s\(28),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(17));

-- Location: LCCOMB_X114_Y42_N2
\FD|Somador|saida[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[18]~32_combout\ = (\FD|PC|data_s\(18) & (\FD|Somador|saida[17]~31\ $ (GND))) # (!\FD|PC|data_s\(18) & (!\FD|Somador|saida[17]~31\ & VCC))
-- \FD|Somador|saida[18]~33\ = CARRY((\FD|PC|data_s\(18) & !\FD|Somador|saida[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(18),
	datad => VCC,
	cin => \FD|Somador|saida[17]~31\,
	combout => \FD|Somador|saida[18]~32_combout\,
	cout => \FD|Somador|saida[18]~33\);

-- Location: FF_X114_Y42_N3
\FD|REG_1|data_s[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[18]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(50));

-- Location: LCCOMB_X113_Y38_N4
\FD|REG_2|data_s[124]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[124]~feeder_combout\ = \FD|REG_1|data_s\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(50),
	combout => \FD|REG_2|data_s[124]~feeder_combout\);

-- Location: FF_X113_Y38_N5
\FD|REG_2|data_s[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[124]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(124));

-- Location: LCCOMB_X114_Y38_N2
\FD|REG_3|data_s[88]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[88]~62_combout\ = ((\FD|REG_2|data_s\(41) $ (\FD|REG_2|data_s\(124) $ (!\FD|REG_3|data_s[87]~61\)))) # (GND)
-- \FD|REG_3|data_s[88]~63\ = CARRY((\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(124)) # (!\FD|REG_3|data_s[87]~61\))) # (!\FD|REG_2|data_s\(41) & (\FD|REG_2|data_s\(124) & !\FD|REG_3|data_s[87]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(124),
	datad => VCC,
	cin => \FD|REG_3|data_s[87]~61\,
	combout => \FD|REG_3|data_s[88]~62_combout\,
	cout => \FD|REG_3|data_s[88]~63\);

-- Location: FF_X114_Y38_N3
\FD|REG_3|data_s[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[88]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(88));

-- Location: LCCOMB_X114_Y41_N16
\FD|PC|data_s[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[18]~16_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(88))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[18]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|REG_3|data_s\(88),
	datad => \FD|Somador|saida[18]~32_combout\,
	combout => \FD|PC|data_s[18]~16_combout\);

-- Location: FF_X114_Y41_N17
\FD|PC|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[18]~16_combout\,
	asdata => \FD|REG_1|data_s\(16),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(18));

-- Location: LCCOMB_X114_Y42_N4
\FD|Somador|saida[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[19]~34_combout\ = (\FD|PC|data_s\(19) & (!\FD|Somador|saida[18]~33\)) # (!\FD|PC|data_s\(19) & ((\FD|Somador|saida[18]~33\) # (GND)))
-- \FD|Somador|saida[19]~35\ = CARRY((!\FD|Somador|saida[18]~33\) # (!\FD|PC|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(19),
	datad => VCC,
	cin => \FD|Somador|saida[18]~33\,
	combout => \FD|Somador|saida[19]~34_combout\,
	cout => \FD|Somador|saida[19]~35\);

-- Location: FF_X114_Y42_N5
\FD|REG_1|data_s[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(51));

-- Location: LCCOMB_X113_Y42_N8
\FD|REG_2|data_s[125]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[125]~feeder_combout\ = \FD|REG_1|data_s\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(51),
	combout => \FD|REG_2|data_s[125]~feeder_combout\);

-- Location: FF_X113_Y42_N9
\FD|REG_2|data_s[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[125]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(125));

-- Location: LCCOMB_X114_Y38_N4
\FD|REG_3|data_s[89]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[89]~64_combout\ = (\FD|REG_2|data_s\(125) & ((\FD|REG_2|data_s\(41) & (\FD|REG_3|data_s[88]~63\ & VCC)) # (!\FD|REG_2|data_s\(41) & (!\FD|REG_3|data_s[88]~63\)))) # (!\FD|REG_2|data_s\(125) & ((\FD|REG_2|data_s\(41) & 
-- (!\FD|REG_3|data_s[88]~63\)) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_3|data_s[88]~63\) # (GND)))))
-- \FD|REG_3|data_s[89]~65\ = CARRY((\FD|REG_2|data_s\(125) & (!\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[88]~63\)) # (!\FD|REG_2|data_s\(125) & ((!\FD|REG_3|data_s[88]~63\) # (!\FD|REG_2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(125),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[88]~63\,
	combout => \FD|REG_3|data_s[89]~64_combout\,
	cout => \FD|REG_3|data_s[89]~65\);

-- Location: FF_X114_Y38_N5
\FD|REG_3|data_s[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[89]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(89));

-- Location: LCCOMB_X113_Y42_N6
\FD|PC|data_s[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[19]~17_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(89))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[19]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|REG_3|data_s\(89),
	datad => \FD|Somador|saida[19]~34_combout\,
	combout => \FD|PC|data_s[19]~17_combout\);

-- Location: FF_X113_Y42_N7
\FD|PC|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[19]~17_combout\,
	asdata => \FD|REG_1|data_s\(5),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(19));

-- Location: LCCOMB_X114_Y42_N6
\FD|Somador|saida[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[20]~36_combout\ = (\FD|PC|data_s\(20) & (\FD|Somador|saida[19]~35\ $ (GND))) # (!\FD|PC|data_s\(20) & (!\FD|Somador|saida[19]~35\ & VCC))
-- \FD|Somador|saida[20]~37\ = CARRY((\FD|PC|data_s\(20) & !\FD|Somador|saida[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(20),
	datad => VCC,
	cin => \FD|Somador|saida[19]~35\,
	combout => \FD|Somador|saida[20]~36_combout\,
	cout => \FD|Somador|saida[20]~37\);

-- Location: FF_X114_Y42_N7
\FD|REG_1|data_s[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[20]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(52));

-- Location: LCCOMB_X113_Y42_N30
\FD|REG_2|data_s[126]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[126]~feeder_combout\ = \FD|REG_1|data_s\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(52),
	combout => \FD|REG_2|data_s[126]~feeder_combout\);

-- Location: FF_X113_Y42_N31
\FD|REG_2|data_s[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[126]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(126));

-- Location: LCCOMB_X114_Y38_N6
\FD|REG_3|data_s[90]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[90]~66_combout\ = ((\FD|REG_2|data_s\(41) $ (\FD|REG_2|data_s\(126) $ (!\FD|REG_3|data_s[89]~65\)))) # (GND)
-- \FD|REG_3|data_s[90]~67\ = CARRY((\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(126)) # (!\FD|REG_3|data_s[89]~65\))) # (!\FD|REG_2|data_s\(41) & (\FD|REG_2|data_s\(126) & !\FD|REG_3|data_s[89]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(126),
	datad => VCC,
	cin => \FD|REG_3|data_s[89]~65\,
	combout => \FD|REG_3|data_s[90]~66_combout\,
	cout => \FD|REG_3|data_s[90]~67\);

-- Location: FF_X114_Y38_N7
\FD|REG_3|data_s[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[90]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(90));

-- Location: LCCOMB_X114_Y41_N24
\FD|mux_jump|saida[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[20]~1_combout\ = (!\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|sel_mux_beq~combout\ & ((\FD|REG_3|data_s\(90)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[20]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|UC|pontosDeControle[10]~0_combout\,
	datac => \FD|Somador|saida[20]~36_combout\,
	datad => \FD|REG_3|data_s\(90),
	combout => \FD|mux_jump|saida[20]~1_combout\);

-- Location: FF_X114_Y41_N25
\FD|PC|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(20));

-- Location: LCCOMB_X114_Y42_N8
\FD|Somador|saida[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[21]~38_combout\ = (\FD|PC|data_s\(21) & (!\FD|Somador|saida[20]~37\)) # (!\FD|PC|data_s\(21) & ((\FD|Somador|saida[20]~37\) # (GND)))
-- \FD|Somador|saida[21]~39\ = CARRY((!\FD|Somador|saida[20]~37\) # (!\FD|PC|data_s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(21),
	datad => VCC,
	cin => \FD|Somador|saida[20]~37\,
	combout => \FD|Somador|saida[21]~38_combout\,
	cout => \FD|Somador|saida[21]~39\);

-- Location: FF_X114_Y42_N9
\FD|REG_1|data_s[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[21]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(53));

-- Location: FF_X114_Y38_N31
\FD|REG_2|data_s[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(127));

-- Location: LCCOMB_X114_Y38_N8
\FD|REG_3|data_s[91]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[91]~68_combout\ = (\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(127) & (\FD|REG_3|data_s[90]~67\ & VCC)) # (!\FD|REG_2|data_s\(127) & (!\FD|REG_3|data_s[90]~67\)))) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(127) & 
-- (!\FD|REG_3|data_s[90]~67\)) # (!\FD|REG_2|data_s\(127) & ((\FD|REG_3|data_s[90]~67\) # (GND)))))
-- \FD|REG_3|data_s[91]~69\ = CARRY((\FD|REG_2|data_s\(41) & (!\FD|REG_2|data_s\(127) & !\FD|REG_3|data_s[90]~67\)) # (!\FD|REG_2|data_s\(41) & ((!\FD|REG_3|data_s[90]~67\) # (!\FD|REG_2|data_s\(127)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(127),
	datad => VCC,
	cin => \FD|REG_3|data_s[90]~67\,
	combout => \FD|REG_3|data_s[91]~68_combout\,
	cout => \FD|REG_3|data_s[91]~69\);

-- Location: FF_X114_Y38_N9
\FD|REG_3|data_s[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[91]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(91));

-- Location: LCCOMB_X114_Y41_N12
\FD|PC|data_s[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[21]~18_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(91))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[21]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|REG_3|data_s\(91),
	datad => \FD|Somador|saida[21]~38_combout\,
	combout => \FD|PC|data_s[21]~18_combout\);

-- Location: FF_X114_Y41_N13
\FD|PC|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[21]~18_combout\,
	asdata => \FD|REG_1|data_s\(19),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(21));

-- Location: LCCOMB_X114_Y42_N10
\FD|Somador|saida[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[22]~40_combout\ = (\FD|PC|data_s\(22) & (\FD|Somador|saida[21]~39\ $ (GND))) # (!\FD|PC|data_s\(22) & (!\FD|Somador|saida[21]~39\ & VCC))
-- \FD|Somador|saida[22]~41\ = CARRY((\FD|PC|data_s\(22) & !\FD|Somador|saida[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(22),
	datad => VCC,
	cin => \FD|Somador|saida[21]~39\,
	combout => \FD|Somador|saida[22]~40_combout\,
	cout => \FD|Somador|saida[22]~41\);

-- Location: FF_X114_Y42_N11
\FD|REG_1|data_s[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[22]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(54));

-- Location: LCCOMB_X114_Y40_N16
\FD|REG_2|data_s[128]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[128]~feeder_combout\ = \FD|REG_1|data_s\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(54),
	combout => \FD|REG_2|data_s[128]~feeder_combout\);

-- Location: FF_X114_Y40_N17
\FD|REG_2|data_s[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[128]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(128));

-- Location: LCCOMB_X114_Y38_N10
\FD|REG_3|data_s[92]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[92]~70_combout\ = ((\FD|REG_2|data_s\(41) $ (\FD|REG_2|data_s\(128) $ (!\FD|REG_3|data_s[91]~69\)))) # (GND)
-- \FD|REG_3|data_s[92]~71\ = CARRY((\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(128)) # (!\FD|REG_3|data_s[91]~69\))) # (!\FD|REG_2|data_s\(41) & (\FD|REG_2|data_s\(128) & !\FD|REG_3|data_s[91]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(128),
	datad => VCC,
	cin => \FD|REG_3|data_s[91]~69\,
	combout => \FD|REG_3|data_s[92]~70_combout\,
	cout => \FD|REG_3|data_s[92]~71\);

-- Location: FF_X114_Y38_N11
\FD|REG_3|data_s[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[92]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(92));

-- Location: LCCOMB_X114_Y41_N14
\FD|mux_jump|saida[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[22]~2_combout\ = (!\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(92))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[22]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|UC|pontosDeControle[10]~0_combout\,
	datac => \FD|REG_3|data_s\(92),
	datad => \FD|Somador|saida[22]~40_combout\,
	combout => \FD|mux_jump|saida[22]~2_combout\);

-- Location: FF_X114_Y41_N15
\FD|PC|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[22]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(22));

-- Location: LCCOMB_X114_Y42_N12
\FD|Somador|saida[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[23]~42_combout\ = (\FD|PC|data_s\(23) & (!\FD|Somador|saida[22]~41\)) # (!\FD|PC|data_s\(23) & ((\FD|Somador|saida[22]~41\) # (GND)))
-- \FD|Somador|saida[23]~43\ = CARRY((!\FD|Somador|saida[22]~41\) # (!\FD|PC|data_s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(23),
	datad => VCC,
	cin => \FD|Somador|saida[22]~41\,
	combout => \FD|Somador|saida[23]~42_combout\,
	cout => \FD|Somador|saida[23]~43\);

-- Location: FF_X114_Y42_N13
\FD|REG_1|data_s[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[23]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(55));

-- Location: LCCOMB_X113_Y42_N24
\FD|REG_2|data_s[129]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[129]~feeder_combout\ = \FD|REG_1|data_s\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(55),
	combout => \FD|REG_2|data_s[129]~feeder_combout\);

-- Location: FF_X113_Y42_N25
\FD|REG_2|data_s[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[129]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(129));

-- Location: LCCOMB_X114_Y38_N12
\FD|REG_3|data_s[93]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[93]~72_combout\ = (\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(129) & (\FD|REG_3|data_s[92]~71\ & VCC)) # (!\FD|REG_2|data_s\(129) & (!\FD|REG_3|data_s[92]~71\)))) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(129) & 
-- (!\FD|REG_3|data_s[92]~71\)) # (!\FD|REG_2|data_s\(129) & ((\FD|REG_3|data_s[92]~71\) # (GND)))))
-- \FD|REG_3|data_s[93]~73\ = CARRY((\FD|REG_2|data_s\(41) & (!\FD|REG_2|data_s\(129) & !\FD|REG_3|data_s[92]~71\)) # (!\FD|REG_2|data_s\(41) & ((!\FD|REG_3|data_s[92]~71\) # (!\FD|REG_2|data_s\(129)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(129),
	datad => VCC,
	cin => \FD|REG_3|data_s[92]~71\,
	combout => \FD|REG_3|data_s[93]~72_combout\,
	cout => \FD|REG_3|data_s[93]~73\);

-- Location: FF_X114_Y38_N13
\FD|REG_3|data_s[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[93]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(93));

-- Location: LCCOMB_X113_Y40_N14
\FD|PC|data_s[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[23]~19_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(93))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[23]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|REG_3|data_s\(93),
	datad => \FD|Somador|saida[23]~42_combout\,
	combout => \FD|PC|data_s[23]~19_combout\);

-- Location: FF_X113_Y40_N15
\FD|PC|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[23]~19_combout\,
	asdata => \FD|REG_1|data_s\(21),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(23));

-- Location: LCCOMB_X114_Y42_N14
\FD|Somador|saida[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[24]~44_combout\ = (\FD|PC|data_s\(24) & (\FD|Somador|saida[23]~43\ $ (GND))) # (!\FD|PC|data_s\(24) & (!\FD|Somador|saida[23]~43\ & VCC))
-- \FD|Somador|saida[24]~45\ = CARRY((\FD|PC|data_s\(24) & !\FD|Somador|saida[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(24),
	datad => VCC,
	cin => \FD|Somador|saida[23]~43\,
	combout => \FD|Somador|saida[24]~44_combout\,
	cout => \FD|Somador|saida[24]~45\);

-- Location: FF_X114_Y42_N15
\FD|REG_1|data_s[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[24]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(56));

-- Location: LCCOMB_X113_Y42_N18
\FD|REG_2|data_s[130]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[130]~feeder_combout\ = \FD|REG_1|data_s\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(56),
	combout => \FD|REG_2|data_s[130]~feeder_combout\);

-- Location: FF_X113_Y42_N19
\FD|REG_2|data_s[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[130]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(130));

-- Location: LCCOMB_X114_Y38_N14
\FD|REG_3|data_s[94]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[94]~74_combout\ = ((\FD|REG_2|data_s\(130) $ (\FD|REG_2|data_s\(41) $ (!\FD|REG_3|data_s[93]~73\)))) # (GND)
-- \FD|REG_3|data_s[94]~75\ = CARRY((\FD|REG_2|data_s\(130) & ((\FD|REG_2|data_s\(41)) # (!\FD|REG_3|data_s[93]~73\))) # (!\FD|REG_2|data_s\(130) & (\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[93]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(130),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[93]~73\,
	combout => \FD|REG_3|data_s[94]~74_combout\,
	cout => \FD|REG_3|data_s[94]~75\);

-- Location: FF_X114_Y38_N15
\FD|REG_3|data_s[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[94]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(94));

-- Location: LCCOMB_X114_Y41_N0
\FD|mux_jump|saida[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[24]~3_combout\ = (!\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(94))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[24]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|UC|pontosDeControle[10]~0_combout\,
	datac => \FD|REG_3|data_s\(94),
	datad => \FD|Somador|saida[24]~44_combout\,
	combout => \FD|mux_jump|saida[24]~3_combout\);

-- Location: FF_X114_Y41_N1
\FD|PC|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[24]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(24));

-- Location: LCCOMB_X114_Y42_N16
\FD|Somador|saida[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[25]~46_combout\ = (\FD|PC|data_s\(25) & (!\FD|Somador|saida[24]~45\)) # (!\FD|PC|data_s\(25) & ((\FD|Somador|saida[24]~45\) # (GND)))
-- \FD|Somador|saida[25]~47\ = CARRY((!\FD|Somador|saida[24]~45\) # (!\FD|PC|data_s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(25),
	datad => VCC,
	cin => \FD|Somador|saida[24]~45\,
	combout => \FD|Somador|saida[25]~46_combout\,
	cout => \FD|Somador|saida[25]~47\);

-- Location: FF_X114_Y42_N17
\FD|REG_1|data_s[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[25]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(57));

-- Location: FF_X114_Y40_N23
\FD|REG_2|data_s[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(57),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(131));

-- Location: LCCOMB_X114_Y38_N16
\FD|REG_3|data_s[95]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[95]~76_combout\ = (\FD|REG_2|data_s\(131) & ((\FD|REG_2|data_s\(41) & (\FD|REG_3|data_s[94]~75\ & VCC)) # (!\FD|REG_2|data_s\(41) & (!\FD|REG_3|data_s[94]~75\)))) # (!\FD|REG_2|data_s\(131) & ((\FD|REG_2|data_s\(41) & 
-- (!\FD|REG_3|data_s[94]~75\)) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_3|data_s[94]~75\) # (GND)))))
-- \FD|REG_3|data_s[95]~77\ = CARRY((\FD|REG_2|data_s\(131) & (!\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[94]~75\)) # (!\FD|REG_2|data_s\(131) & ((!\FD|REG_3|data_s[94]~75\) # (!\FD|REG_2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(131),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[94]~75\,
	combout => \FD|REG_3|data_s[95]~76_combout\,
	cout => \FD|REG_3|data_s[95]~77\);

-- Location: FF_X114_Y38_N17
\FD|REG_3|data_s[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[95]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(95));

-- Location: LCCOMB_X114_Y41_N8
\FD|mux_jump|saida[25]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[25]~4_combout\ = (!\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(95))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[25]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(95),
	datab => \FD|UC|pontosDeControle[10]~0_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[25]~46_combout\,
	combout => \FD|mux_jump|saida[25]~4_combout\);

-- Location: FF_X114_Y41_N9
\FD|PC|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(25));

-- Location: LCCOMB_X114_Y42_N18
\FD|Somador|saida[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[26]~48_combout\ = (\FD|PC|data_s\(26) & (\FD|Somador|saida[25]~47\ $ (GND))) # (!\FD|PC|data_s\(26) & (!\FD|Somador|saida[25]~47\ & VCC))
-- \FD|Somador|saida[26]~49\ = CARRY((\FD|PC|data_s\(26) & !\FD|Somador|saida[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(26),
	datad => VCC,
	cin => \FD|Somador|saida[25]~47\,
	combout => \FD|Somador|saida[26]~48_combout\,
	cout => \FD|Somador|saida[26]~49\);

-- Location: FF_X114_Y42_N19
\FD|REG_1|data_s[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[26]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(58));

-- Location: FF_X114_Y40_N19
\FD|REG_2|data_s[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \FD|REG_1|data_s\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(132));

-- Location: LCCOMB_X114_Y38_N18
\FD|REG_3|data_s[96]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[96]~78_combout\ = ((\FD|REG_2|data_s\(132) $ (\FD|REG_2|data_s\(41) $ (!\FD|REG_3|data_s[95]~77\)))) # (GND)
-- \FD|REG_3|data_s[96]~79\ = CARRY((\FD|REG_2|data_s\(132) & ((\FD|REG_2|data_s\(41)) # (!\FD|REG_3|data_s[95]~77\))) # (!\FD|REG_2|data_s\(132) & (\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[95]~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(132),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[95]~77\,
	combout => \FD|REG_3|data_s[96]~78_combout\,
	cout => \FD|REG_3|data_s[96]~79\);

-- Location: FF_X114_Y38_N19
\FD|REG_3|data_s[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[96]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(96));

-- Location: LCCOMB_X113_Y42_N20
\FD|PC|data_s[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[26]~20_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(96))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[26]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|REG_3|data_s\(96),
	datad => \FD|Somador|saida[26]~48_combout\,
	combout => \FD|PC|data_s[26]~20_combout\);

-- Location: FF_X113_Y42_N21
\FD|PC|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|PC|data_s[26]~20_combout\,
	asdata => \FD|REG_1|data_s\(5),
	sload => \FD|UC|pontosDeControle[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(26));

-- Location: LCCOMB_X114_Y42_N20
\FD|Somador|saida[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[27]~50_combout\ = (\FD|PC|data_s\(27) & (!\FD|Somador|saida[26]~49\)) # (!\FD|PC|data_s\(27) & ((\FD|Somador|saida[26]~49\) # (GND)))
-- \FD|Somador|saida[27]~51\ = CARRY((!\FD|Somador|saida[26]~49\) # (!\FD|PC|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(27),
	datad => VCC,
	cin => \FD|Somador|saida[26]~49\,
	combout => \FD|Somador|saida[27]~50_combout\,
	cout => \FD|Somador|saida[27]~51\);

-- Location: FF_X114_Y42_N21
\FD|REG_1|data_s[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[27]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(59));

-- Location: LCCOMB_X114_Y41_N28
\FD|REG_2|data_s[133]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[133]~feeder_combout\ = \FD|REG_1|data_s\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(59),
	combout => \FD|REG_2|data_s[133]~feeder_combout\);

-- Location: FF_X114_Y41_N29
\FD|REG_2|data_s[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[133]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(133));

-- Location: LCCOMB_X114_Y38_N20
\FD|REG_3|data_s[97]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[97]~80_combout\ = (\FD|REG_2|data_s\(133) & ((\FD|REG_2|data_s\(41) & (\FD|REG_3|data_s[96]~79\ & VCC)) # (!\FD|REG_2|data_s\(41) & (!\FD|REG_3|data_s[96]~79\)))) # (!\FD|REG_2|data_s\(133) & ((\FD|REG_2|data_s\(41) & 
-- (!\FD|REG_3|data_s[96]~79\)) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_3|data_s[96]~79\) # (GND)))))
-- \FD|REG_3|data_s[97]~81\ = CARRY((\FD|REG_2|data_s\(133) & (!\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[96]~79\)) # (!\FD|REG_2|data_s\(133) & ((!\FD|REG_3|data_s[96]~79\) # (!\FD|REG_2|data_s\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(133),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[96]~79\,
	combout => \FD|REG_3|data_s[97]~80_combout\,
	cout => \FD|REG_3|data_s[97]~81\);

-- Location: FF_X114_Y38_N21
\FD|REG_3|data_s[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[97]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(97));

-- Location: LCCOMB_X114_Y41_N6
\FD|mux_jump|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[27]~5_combout\ = (!\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(97))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[27]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(97),
	datab => \FD|UC|pontosDeControle[10]~0_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[27]~50_combout\,
	combout => \FD|mux_jump|saida[27]~5_combout\);

-- Location: FF_X114_Y41_N7
\FD|PC|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(27));

-- Location: LCCOMB_X114_Y42_N22
\FD|Somador|saida[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[28]~52_combout\ = (\FD|PC|data_s\(28) & (\FD|Somador|saida[27]~51\ $ (GND))) # (!\FD|PC|data_s\(28) & (!\FD|Somador|saida[27]~51\ & VCC))
-- \FD|Somador|saida[28]~53\ = CARRY((\FD|PC|data_s\(28) & !\FD|Somador|saida[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(28),
	datad => VCC,
	cin => \FD|Somador|saida[27]~51\,
	combout => \FD|Somador|saida[28]~52_combout\,
	cout => \FD|Somador|saida[28]~53\);

-- Location: FF_X114_Y42_N23
\FD|REG_1|data_s[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[28]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(60));

-- Location: LCCOMB_X113_Y42_N28
\FD|REG_2|data_s[134]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[134]~feeder_combout\ = \FD|REG_1|data_s\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(60),
	combout => \FD|REG_2|data_s[134]~feeder_combout\);

-- Location: FF_X113_Y42_N29
\FD|REG_2|data_s[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[134]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(134));

-- Location: LCCOMB_X114_Y38_N22
\FD|REG_3|data_s[98]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[98]~82_combout\ = ((\FD|REG_2|data_s\(134) $ (\FD|REG_2|data_s\(41) $ (!\FD|REG_3|data_s[97]~81\)))) # (GND)
-- \FD|REG_3|data_s[98]~83\ = CARRY((\FD|REG_2|data_s\(134) & ((\FD|REG_2|data_s\(41)) # (!\FD|REG_3|data_s[97]~81\))) # (!\FD|REG_2|data_s\(134) & (\FD|REG_2|data_s\(41) & !\FD|REG_3|data_s[97]~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(134),
	datab => \FD|REG_2|data_s\(41),
	datad => VCC,
	cin => \FD|REG_3|data_s[97]~81\,
	combout => \FD|REG_3|data_s[98]~82_combout\,
	cout => \FD|REG_3|data_s[98]~83\);

-- Location: FF_X114_Y38_N23
\FD|REG_3|data_s[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[98]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(98));

-- Location: LCCOMB_X113_Y42_N14
\FD|mux_jump|saida[28]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[28]~6_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|Somador|saida[28]~52_combout\))) # (!\FD|UC|pontosDeControle[10]~0_combout\ & (\FD|REG_3|data_s\(98))))) # (!\FD|sel_mux_beq~combout\ & 
-- (((\FD|Somador|saida[28]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_3|data_s\(98),
	datab => \FD|Somador|saida[28]~52_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|UC|pontosDeControle[10]~0_combout\,
	combout => \FD|mux_jump|saida[28]~6_combout\);

-- Location: FF_X113_Y42_N15
\FD|PC|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[28]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(28));

-- Location: LCCOMB_X114_Y42_N24
\FD|Somador|saida[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[29]~54_combout\ = (\FD|PC|data_s\(29) & (!\FD|Somador|saida[28]~53\)) # (!\FD|PC|data_s\(29) & ((\FD|Somador|saida[28]~53\) # (GND)))
-- \FD|Somador|saida[29]~55\ = CARRY((!\FD|Somador|saida[28]~53\) # (!\FD|PC|data_s\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(29),
	datad => VCC,
	cin => \FD|Somador|saida[28]~53\,
	combout => \FD|Somador|saida[29]~54_combout\,
	cout => \FD|Somador|saida[29]~55\);

-- Location: FF_X114_Y42_N25
\FD|REG_1|data_s[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[29]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(61));

-- Location: LCCOMB_X114_Y41_N4
\FD|REG_2|data_s[135]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[135]~feeder_combout\ = \FD|REG_1|data_s\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(61),
	combout => \FD|REG_2|data_s[135]~feeder_combout\);

-- Location: FF_X114_Y41_N5
\FD|REG_2|data_s[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[135]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(135));

-- Location: LCCOMB_X114_Y38_N24
\FD|REG_3|data_s[99]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[99]~84_combout\ = (\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(135) & (\FD|REG_3|data_s[98]~83\ & VCC)) # (!\FD|REG_2|data_s\(135) & (!\FD|REG_3|data_s[98]~83\)))) # (!\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(135) & 
-- (!\FD|REG_3|data_s[98]~83\)) # (!\FD|REG_2|data_s\(135) & ((\FD|REG_3|data_s[98]~83\) # (GND)))))
-- \FD|REG_3|data_s[99]~85\ = CARRY((\FD|REG_2|data_s\(41) & (!\FD|REG_2|data_s\(135) & !\FD|REG_3|data_s[98]~83\)) # (!\FD|REG_2|data_s\(41) & ((!\FD|REG_3|data_s[98]~83\) # (!\FD|REG_2|data_s\(135)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(135),
	datad => VCC,
	cin => \FD|REG_3|data_s[98]~83\,
	combout => \FD|REG_3|data_s[99]~84_combout\,
	cout => \FD|REG_3|data_s[99]~85\);

-- Location: FF_X114_Y38_N25
\FD|REG_3|data_s[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[99]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(99));

-- Location: LCCOMB_X113_Y42_N4
\FD|mux_jump|saida[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[29]~7_combout\ = (\FD|UC|pontosDeControle[10]~0_combout\ & (((\FD|Somador|saida[29]~54_combout\)))) # (!\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(99))) # (!\FD|sel_mux_beq~combout\ & 
-- ((\FD|Somador|saida[29]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC|pontosDeControle[10]~0_combout\,
	datab => \FD|REG_3|data_s\(99),
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[29]~54_combout\,
	combout => \FD|mux_jump|saida[29]~7_combout\);

-- Location: FF_X113_Y42_N5
\FD|PC|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(29));

-- Location: LCCOMB_X114_Y42_N26
\FD|Somador|saida[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[30]~56_combout\ = (\FD|PC|data_s\(30) & (\FD|Somador|saida[29]~55\ $ (GND))) # (!\FD|PC|data_s\(30) & (!\FD|Somador|saida[29]~55\ & VCC))
-- \FD|Somador|saida[30]~57\ = CARRY((\FD|PC|data_s\(30) & !\FD|Somador|saida[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(30),
	datad => VCC,
	cin => \FD|Somador|saida[29]~55\,
	combout => \FD|Somador|saida[30]~56_combout\,
	cout => \FD|Somador|saida[30]~57\);

-- Location: FF_X114_Y42_N27
\FD|REG_1|data_s[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[30]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(62));

-- Location: LCCOMB_X114_Y44_N14
\FD|REG_2|data_s[136]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[136]~feeder_combout\ = \FD|REG_1|data_s\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_1|data_s\(62),
	combout => \FD|REG_2|data_s[136]~feeder_combout\);

-- Location: FF_X114_Y44_N15
\FD|REG_2|data_s[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[136]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(136));

-- Location: LCCOMB_X114_Y38_N26
\FD|REG_3|data_s[100]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[100]~86_combout\ = ((\FD|REG_2|data_s\(41) $ (\FD|REG_2|data_s\(136) $ (!\FD|REG_3|data_s[99]~85\)))) # (GND)
-- \FD|REG_3|data_s[100]~87\ = CARRY((\FD|REG_2|data_s\(41) & ((\FD|REG_2|data_s\(136)) # (!\FD|REG_3|data_s[99]~85\))) # (!\FD|REG_2|data_s\(41) & (\FD|REG_2|data_s\(136) & !\FD|REG_3|data_s[99]~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_2|data_s\(41),
	datab => \FD|REG_2|data_s\(136),
	datad => VCC,
	cin => \FD|REG_3|data_s[99]~85\,
	combout => \FD|REG_3|data_s[100]~86_combout\,
	cout => \FD|REG_3|data_s[100]~87\);

-- Location: FF_X114_Y38_N27
\FD|REG_3|data_s[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[100]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(100));

-- Location: LCCOMB_X113_Y42_N10
\FD|mux_jump|saida[30]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[30]~8_combout\ = (\FD|UC|pontosDeControle[10]~0_combout\ & (((\FD|Somador|saida[30]~56_combout\)))) # (!\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(100))) # (!\FD|sel_mux_beq~combout\ & 
-- ((\FD|Somador|saida[30]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC|pontosDeControle[10]~0_combout\,
	datab => \FD|REG_3|data_s\(100),
	datac => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[30]~56_combout\,
	combout => \FD|mux_jump|saida[30]~8_combout\);

-- Location: FF_X113_Y42_N11
\FD|PC|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[30]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(30));

-- Location: LCCOMB_X114_Y42_N28
\FD|Somador|saida[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[31]~58_combout\ = \FD|PC|data_s\(31) $ (\FD|Somador|saida[30]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(31),
	cin => \FD|Somador|saida[30]~57\,
	combout => \FD|Somador|saida[31]~58_combout\);

-- Location: FF_X114_Y42_N29
\FD|REG_1|data_s[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|Somador|saida[31]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_1|data_s\(63));

-- Location: LCCOMB_X114_Y41_N26
\FD|REG_2|data_s[137]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_2|data_s[137]~feeder_combout\ = \FD|REG_1|data_s\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|REG_1|data_s\(63),
	combout => \FD|REG_2|data_s[137]~feeder_combout\);

-- Location: FF_X114_Y41_N27
\FD|REG_2|data_s[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_2|data_s[137]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_2|data_s\(137));

-- Location: LCCOMB_X114_Y38_N28
\FD|REG_3|data_s[101]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|REG_3|data_s[101]~88_combout\ = \FD|REG_2|data_s\(41) $ (\FD|REG_3|data_s[100]~87\ $ (\FD|REG_2|data_s\(137)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_2|data_s\(41),
	datad => \FD|REG_2|data_s\(137),
	cin => \FD|REG_3|data_s[100]~87\,
	combout => \FD|REG_3|data_s[101]~88_combout\);

-- Location: FF_X114_Y38_N29
\FD|REG_3|data_s[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|REG_3|data_s[101]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_3|data_s\(101));

-- Location: LCCOMB_X114_Y42_N30
\FD|mux_jump|saida[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[31]~9_combout\ = (\FD|UC|pontosDeControle[10]~0_combout\ & (((\FD|Somador|saida[31]~58_combout\)))) # (!\FD|UC|pontosDeControle[10]~0_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|REG_3|data_s\(101))) # (!\FD|sel_mux_beq~combout\ & 
-- ((\FD|Somador|saida[31]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UC|pontosDeControle[10]~0_combout\,
	datab => \FD|sel_mux_beq~combout\,
	datac => \FD|REG_3|data_s\(101),
	datad => \FD|Somador|saida[31]~58_combout\,
	combout => \FD|mux_jump|saida[31]~9_combout\);

-- Location: FF_X114_Y42_N31
\FD|PC|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FD|mux_jump|saida[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(31));

-- Location: LCCOMB_X114_Y57_N20
\H0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux29~3_combout\ & (!\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux28~3_combout\ $ (!\FD|ULA|Mux31~5_combout\)))) # (!\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux31~5_combout\ & (\FD|ULA|Mux30~3_combout\ $ 
-- (!\FD|ULA|Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux30~3_combout\,
	datac => \FD|ULA|Mux28~3_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \H0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y57_N22
\H0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux31~5_combout\ $ (((\FD|ULA|Mux30~3_combout\) # (\FD|ULA|Mux28~3_combout\))))) # (!\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux28~3_combout\ & 
-- \FD|ULA|Mux31~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux30~3_combout\,
	datac => \FD|ULA|Mux28~3_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \H0|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y57_N12
\H0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux28~3_combout\ & ((\FD|ULA|Mux30~3_combout\) # (!\FD|ULA|Mux31~5_combout\)))) # (!\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux30~3_combout\ & (!\FD|ULA|Mux28~3_combout\ & 
-- !\FD|ULA|Mux31~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux30~3_combout\,
	datac => \FD|ULA|Mux28~3_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \H0|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X114_Y57_N6
\H0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux30~3_combout\ & ((\FD|ULA|Mux29~3_combout\ & ((\FD|ULA|Mux31~5_combout\))) # (!\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux28~3_combout\ & !\FD|ULA|Mux31~5_combout\)))) # (!\FD|ULA|Mux30~3_combout\ & 
-- (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux29~3_combout\ $ (\FD|ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux30~3_combout\,
	datac => \FD|ULA|Mux28~3_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \H0|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y57_N28
\H0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux30~3_combout\ & (((!\FD|ULA|Mux28~3_combout\ & \FD|ULA|Mux31~5_combout\)))) # (!\FD|ULA|Mux30~3_combout\ & ((\FD|ULA|Mux29~3_combout\ & (!\FD|ULA|Mux28~3_combout\)) # (!\FD|ULA|Mux29~3_combout\ & 
-- ((\FD|ULA|Mux31~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux30~3_combout\,
	datac => \FD|ULA|Mux28~3_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \H0|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y57_N2
\H0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux31~5_combout\ & (\FD|ULA|Mux30~3_combout\ $ (\FD|ULA|Mux28~3_combout\)))) # (!\FD|ULA|Mux29~3_combout\ & (!\FD|ULA|Mux28~3_combout\ & ((\FD|ULA|Mux30~3_combout\) # 
-- (\FD|ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux30~3_combout\,
	datac => \FD|ULA|Mux28~3_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \H0|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y57_N0
\H0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H0|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux31~5_combout\ & (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux29~3_combout\ $ (!\FD|ULA|Mux30~3_combout\)))) # (!\FD|ULA|Mux31~5_combout\ & (!\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux29~3_combout\ $ 
-- (!\FD|ULA|Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~3_combout\,
	datab => \FD|ULA|Mux30~3_combout\,
	datac => \FD|ULA|Mux28~3_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \H0|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X111_Y36_N16
\H1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux26~3_combout\ $ (\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux24~3_combout\ & (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux27~3_combout\ $ 
-- (\FD|ULA|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \H1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X111_Y36_N22
\H1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux25~3_combout\ & (\FD|ULA|Mux27~3_combout\ $ (((\FD|ULA|Mux24~3_combout\) # (\FD|ULA|Mux26~3_combout\))))) # (!\FD|ULA|Mux25~3_combout\ & (\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux27~3_combout\ & 
-- \FD|ULA|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \H1|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X111_Y36_N20
\H1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux25~3_combout\ & ((\FD|ULA|Mux26~3_combout\) # (!\FD|ULA|Mux27~3_combout\)))) # (!\FD|ULA|Mux24~3_combout\ & (!\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux26~3_combout\ & 
-- !\FD|ULA|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \H1|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X111_Y36_N14
\H1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux27~3_combout\ & ((\FD|ULA|Mux25~3_combout\))) # (!\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux24~3_combout\ & !\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux26~3_combout\ & 
-- (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux27~3_combout\ $ (\FD|ULA|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \H1|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X111_Y36_N12
\H1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux26~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux27~3_combout\))) # (!\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux25~3_combout\ & (!\FD|ULA|Mux24~3_combout\)) # (!\FD|ULA|Mux25~3_combout\ & 
-- ((\FD|ULA|Mux27~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \H1|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X111_Y36_N18
\H1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux24~3_combout\ $ (((\FD|ULA|Mux26~3_combout\) # (!\FD|ULA|Mux25~3_combout\))))) # (!\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux26~3_combout\ & 
-- !\FD|ULA|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \H1|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X111_Y36_N8
\H1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H1|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux26~3_combout\ $ (!\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux24~3_combout\ $ 
-- (!\FD|ULA|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~3_combout\,
	datab => \FD|ULA|Mux27~3_combout\,
	datac => \FD|ULA|Mux26~3_combout\,
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \H1|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X114_Y19_N20
\H2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux20~3_combout\ & (\FD|ULA|Mux23~3_combout\ & (\FD|ULA|Mux22~3_combout\ $ (\FD|ULA|Mux21~5_combout\)))) # (!\FD|ULA|Mux20~3_combout\ & (!\FD|ULA|Mux22~3_combout\ & (\FD|ULA|Mux23~3_combout\ $ 
-- (\FD|ULA|Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux22~3_combout\,
	datac => \FD|ULA|Mux20~3_combout\,
	datad => \FD|ULA|Mux21~5_combout\,
	combout => \H2|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\H2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux21~5_combout\ & (\FD|ULA|Mux23~3_combout\ $ (((\FD|ULA|Mux22~3_combout\) # (\FD|ULA|Mux20~3_combout\))))) # (!\FD|ULA|Mux21~5_combout\ & (\FD|ULA|Mux23~3_combout\ & (\FD|ULA|Mux22~3_combout\ & 
-- \FD|ULA|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux22~3_combout\,
	datac => \FD|ULA|Mux20~3_combout\,
	datad => \FD|ULA|Mux21~5_combout\,
	combout => \H2|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y19_N4
\H2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux20~3_combout\ & (\FD|ULA|Mux21~5_combout\ & ((\FD|ULA|Mux22~3_combout\) # (!\FD|ULA|Mux23~3_combout\)))) # (!\FD|ULA|Mux20~3_combout\ & (!\FD|ULA|Mux23~3_combout\ & (\FD|ULA|Mux22~3_combout\ & 
-- !\FD|ULA|Mux21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux22~3_combout\,
	datac => \FD|ULA|Mux20~3_combout\,
	datad => \FD|ULA|Mux21~5_combout\,
	combout => \H2|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X114_Y19_N26
\H2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux22~3_combout\ & ((\FD|ULA|Mux23~3_combout\ & ((\FD|ULA|Mux21~5_combout\))) # (!\FD|ULA|Mux23~3_combout\ & (\FD|ULA|Mux20~3_combout\ & !\FD|ULA|Mux21~5_combout\)))) # (!\FD|ULA|Mux22~3_combout\ & 
-- (!\FD|ULA|Mux20~3_combout\ & (\FD|ULA|Mux23~3_combout\ $ (\FD|ULA|Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux22~3_combout\,
	datac => \FD|ULA|Mux20~3_combout\,
	datad => \FD|ULA|Mux21~5_combout\,
	combout => \H2|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y19_N28
\H2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux22~3_combout\ & (\FD|ULA|Mux23~3_combout\ & (!\FD|ULA|Mux20~3_combout\))) # (!\FD|ULA|Mux22~3_combout\ & ((\FD|ULA|Mux21~5_combout\ & ((!\FD|ULA|Mux20~3_combout\))) # (!\FD|ULA|Mux21~5_combout\ & 
-- (\FD|ULA|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux22~3_combout\,
	datac => \FD|ULA|Mux20~3_combout\,
	datad => \FD|ULA|Mux21~5_combout\,
	combout => \H2|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y19_N10
\H2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux23~3_combout\ & (\FD|ULA|Mux20~3_combout\ $ (((\FD|ULA|Mux22~3_combout\) # (!\FD|ULA|Mux21~5_combout\))))) # (!\FD|ULA|Mux23~3_combout\ & (\FD|ULA|Mux22~3_combout\ & (!\FD|ULA|Mux20~3_combout\ & 
-- !\FD|ULA|Mux21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux22~3_combout\,
	datac => \FD|ULA|Mux20~3_combout\,
	datad => \FD|ULA|Mux21~5_combout\,
	combout => \H2|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y19_N0
\H2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H2|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux23~3_combout\ & (!\FD|ULA|Mux20~3_combout\ & (\FD|ULA|Mux22~3_combout\ $ (!\FD|ULA|Mux21~5_combout\)))) # (!\FD|ULA|Mux23~3_combout\ & (!\FD|ULA|Mux22~3_combout\ & (\FD|ULA|Mux20~3_combout\ $ 
-- (!\FD|ULA|Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux22~3_combout\,
	datac => \FD|ULA|Mux20~3_combout\,
	datad => \FD|ULA|Mux21~5_combout\,
	combout => \H2|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X112_Y25_N8
\H3|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux19~3_combout\ & (\FD|ULA|Mux18~3_combout\ $ (\FD|ULA|Mux17~3_combout\)))) # (!\FD|ULA|Mux16~3_combout\ & (!\FD|ULA|Mux18~3_combout\ & (\FD|ULA|Mux19~3_combout\ $ 
-- (\FD|ULA|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux19~3_combout\,
	datac => \FD|ULA|Mux18~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \H3|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X112_Y25_N10
\H3|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux17~3_combout\ & (\FD|ULA|Mux19~3_combout\ $ (((\FD|ULA|Mux16~3_combout\) # (\FD|ULA|Mux18~3_combout\))))) # (!\FD|ULA|Mux17~3_combout\ & (\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux19~3_combout\ & 
-- \FD|ULA|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux19~3_combout\,
	datac => \FD|ULA|Mux18~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \H3|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X112_Y25_N4
\H3|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux17~3_combout\ & ((\FD|ULA|Mux18~3_combout\) # (!\FD|ULA|Mux19~3_combout\)))) # (!\FD|ULA|Mux16~3_combout\ & (!\FD|ULA|Mux19~3_combout\ & (\FD|ULA|Mux18~3_combout\ & 
-- !\FD|ULA|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux19~3_combout\,
	datac => \FD|ULA|Mux18~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \H3|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X112_Y25_N2
\H3|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux18~3_combout\ & ((\FD|ULA|Mux19~3_combout\ & ((\FD|ULA|Mux17~3_combout\))) # (!\FD|ULA|Mux19~3_combout\ & (\FD|ULA|Mux16~3_combout\ & !\FD|ULA|Mux17~3_combout\)))) # (!\FD|ULA|Mux18~3_combout\ & 
-- (!\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux19~3_combout\ $ (\FD|ULA|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux19~3_combout\,
	datac => \FD|ULA|Mux18~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \H3|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X112_Y25_N12
\H3|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux18~3_combout\ & (!\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux19~3_combout\))) # (!\FD|ULA|Mux18~3_combout\ & ((\FD|ULA|Mux17~3_combout\ & (!\FD|ULA|Mux16~3_combout\)) # (!\FD|ULA|Mux17~3_combout\ & 
-- ((\FD|ULA|Mux19~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux19~3_combout\,
	datac => \FD|ULA|Mux18~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \H3|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X112_Y25_N30
\H3|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux19~3_combout\ & (\FD|ULA|Mux16~3_combout\ $ (((\FD|ULA|Mux18~3_combout\) # (!\FD|ULA|Mux17~3_combout\))))) # (!\FD|ULA|Mux19~3_combout\ & (!\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux18~3_combout\ & 
-- !\FD|ULA|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux19~3_combout\,
	datac => \FD|ULA|Mux18~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \H3|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X112_Y25_N16
\H3|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H3|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux19~3_combout\ & (!\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux18~3_combout\ $ (!\FD|ULA|Mux17~3_combout\)))) # (!\FD|ULA|Mux19~3_combout\ & (!\FD|ULA|Mux18~3_combout\ & (\FD|ULA|Mux16~3_combout\ $ 
-- (!\FD|ULA|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux19~3_combout\,
	datac => \FD|ULA|Mux18~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \H3|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X94_Y4_N28
\H4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux13~3_combout\ & (!\FD|ULA|Mux14~3_combout\ & (\FD|ULA|Mux15~3_combout\ $ (!\FD|ULA|Mux12~3_combout\)))) # (!\FD|ULA|Mux13~3_combout\ & (\FD|ULA|Mux15~3_combout\ & (\FD|ULA|Mux14~3_combout\ $ 
-- (!\FD|ULA|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~3_combout\,
	datab => \FD|ULA|Mux13~3_combout\,
	datac => \FD|ULA|Mux15~3_combout\,
	datad => \FD|ULA|Mux12~3_combout\,
	combout => \H4|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X94_Y4_N14
\H4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux13~3_combout\ & (\FD|ULA|Mux15~3_combout\ $ (((\FD|ULA|Mux14~3_combout\) # (\FD|ULA|Mux12~3_combout\))))) # (!\FD|ULA|Mux13~3_combout\ & (\FD|ULA|Mux14~3_combout\ & (\FD|ULA|Mux15~3_combout\ & 
-- \FD|ULA|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~3_combout\,
	datab => \FD|ULA|Mux13~3_combout\,
	datac => \FD|ULA|Mux15~3_combout\,
	datad => \FD|ULA|Mux12~3_combout\,
	combout => \H4|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X94_Y4_N12
\H4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux13~3_combout\ & (\FD|ULA|Mux12~3_combout\ & ((\FD|ULA|Mux14~3_combout\) # (!\FD|ULA|Mux15~3_combout\)))) # (!\FD|ULA|Mux13~3_combout\ & (\FD|ULA|Mux14~3_combout\ & (!\FD|ULA|Mux15~3_combout\ & 
-- !\FD|ULA|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~3_combout\,
	datab => \FD|ULA|Mux13~3_combout\,
	datac => \FD|ULA|Mux15~3_combout\,
	datad => \FD|ULA|Mux12~3_combout\,
	combout => \H4|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X94_Y4_N30
\H4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux14~3_combout\ & ((\FD|ULA|Mux13~3_combout\ & (\FD|ULA|Mux15~3_combout\)) # (!\FD|ULA|Mux13~3_combout\ & (!\FD|ULA|Mux15~3_combout\ & \FD|ULA|Mux12~3_combout\)))) # (!\FD|ULA|Mux14~3_combout\ & 
-- (!\FD|ULA|Mux12~3_combout\ & (\FD|ULA|Mux13~3_combout\ $ (\FD|ULA|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~3_combout\,
	datab => \FD|ULA|Mux13~3_combout\,
	datac => \FD|ULA|Mux15~3_combout\,
	datad => \FD|ULA|Mux12~3_combout\,
	combout => \H4|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X94_Y4_N24
\H4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux14~3_combout\ & (((\FD|ULA|Mux15~3_combout\ & !\FD|ULA|Mux12~3_combout\)))) # (!\FD|ULA|Mux14~3_combout\ & ((\FD|ULA|Mux13~3_combout\ & ((!\FD|ULA|Mux12~3_combout\))) # (!\FD|ULA|Mux13~3_combout\ & 
-- (\FD|ULA|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~3_combout\,
	datab => \FD|ULA|Mux13~3_combout\,
	datac => \FD|ULA|Mux15~3_combout\,
	datad => \FD|ULA|Mux12~3_combout\,
	combout => \H4|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X94_Y4_N22
\H4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux14~3_combout\ & (!\FD|ULA|Mux12~3_combout\ & ((\FD|ULA|Mux15~3_combout\) # (!\FD|ULA|Mux13~3_combout\)))) # (!\FD|ULA|Mux14~3_combout\ & (\FD|ULA|Mux15~3_combout\ & (\FD|ULA|Mux13~3_combout\ $ 
-- (!\FD|ULA|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~3_combout\,
	datab => \FD|ULA|Mux13~3_combout\,
	datac => \FD|ULA|Mux15~3_combout\,
	datad => \FD|ULA|Mux12~3_combout\,
	combout => \H4|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X94_Y4_N16
\H4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H4|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux15~3_combout\ & (!\FD|ULA|Mux12~3_combout\ & (\FD|ULA|Mux14~3_combout\ $ (!\FD|ULA|Mux13~3_combout\)))) # (!\FD|ULA|Mux15~3_combout\ & (!\FD|ULA|Mux14~3_combout\ & (\FD|ULA|Mux13~3_combout\ $ 
-- (!\FD|ULA|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~3_combout\,
	datab => \FD|ULA|Mux13~3_combout\,
	datac => \FD|ULA|Mux15~3_combout\,
	datad => \FD|ULA|Mux12~3_combout\,
	combout => \H4|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X86_Y2_N20
\H5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|rascSaida7seg[0]~0_combout\ = (\FD|ULA|Mux9~3_combout\ & (!\FD|ULA|Mux10~3_combout\ & (\FD|ULA|Mux11~3_combout\ $ (!\FD|ULA|Mux8~3_combout\)))) # (!\FD|ULA|Mux9~3_combout\ & (\FD|ULA|Mux11~3_combout\ & (\FD|ULA|Mux10~3_combout\ $ 
-- (!\FD|ULA|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux9~3_combout\,
	datab => \FD|ULA|Mux11~3_combout\,
	datac => \FD|ULA|Mux10~3_combout\,
	datad => \FD|ULA|Mux8~3_combout\,
	combout => \H5|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X86_Y2_N6
\H5|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|rascSaida7seg[1]~1_combout\ = (\FD|ULA|Mux9~3_combout\ & (\FD|ULA|Mux11~3_combout\ $ (((\FD|ULA|Mux10~3_combout\) # (\FD|ULA|Mux8~3_combout\))))) # (!\FD|ULA|Mux9~3_combout\ & (\FD|ULA|Mux11~3_combout\ & (\FD|ULA|Mux10~3_combout\ & 
-- \FD|ULA|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux9~3_combout\,
	datab => \FD|ULA|Mux11~3_combout\,
	datac => \FD|ULA|Mux10~3_combout\,
	datad => \FD|ULA|Mux8~3_combout\,
	combout => \H5|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X86_Y2_N12
\H5|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|rascSaida7seg[2]~2_combout\ = (\FD|ULA|Mux9~3_combout\ & (\FD|ULA|Mux8~3_combout\ & ((\FD|ULA|Mux10~3_combout\) # (!\FD|ULA|Mux11~3_combout\)))) # (!\FD|ULA|Mux9~3_combout\ & (!\FD|ULA|Mux11~3_combout\ & (\FD|ULA|Mux10~3_combout\ & 
-- !\FD|ULA|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux9~3_combout\,
	datab => \FD|ULA|Mux11~3_combout\,
	datac => \FD|ULA|Mux10~3_combout\,
	datad => \FD|ULA|Mux8~3_combout\,
	combout => \H5|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X86_Y2_N26
\H5|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|rascSaida7seg[3]~3_combout\ = (\FD|ULA|Mux10~3_combout\ & ((\FD|ULA|Mux9~3_combout\ & (\FD|ULA|Mux11~3_combout\)) # (!\FD|ULA|Mux9~3_combout\ & (!\FD|ULA|Mux11~3_combout\ & \FD|ULA|Mux8~3_combout\)))) # (!\FD|ULA|Mux10~3_combout\ & 
-- (!\FD|ULA|Mux8~3_combout\ & (\FD|ULA|Mux9~3_combout\ $ (\FD|ULA|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux9~3_combout\,
	datab => \FD|ULA|Mux11~3_combout\,
	datac => \FD|ULA|Mux10~3_combout\,
	datad => \FD|ULA|Mux8~3_combout\,
	combout => \H5|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X86_Y2_N28
\H5|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|rascSaida7seg[4]~4_combout\ = (\FD|ULA|Mux10~3_combout\ & (((\FD|ULA|Mux11~3_combout\ & !\FD|ULA|Mux8~3_combout\)))) # (!\FD|ULA|Mux10~3_combout\ & ((\FD|ULA|Mux9~3_combout\ & ((!\FD|ULA|Mux8~3_combout\))) # (!\FD|ULA|Mux9~3_combout\ & 
-- (\FD|ULA|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux9~3_combout\,
	datab => \FD|ULA|Mux11~3_combout\,
	datac => \FD|ULA|Mux10~3_combout\,
	datad => \FD|ULA|Mux8~3_combout\,
	combout => \H5|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X86_Y2_N30
\H5|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|rascSaida7seg[5]~5_combout\ = (\FD|ULA|Mux9~3_combout\ & (\FD|ULA|Mux11~3_combout\ & (\FD|ULA|Mux10~3_combout\ $ (\FD|ULA|Mux8~3_combout\)))) # (!\FD|ULA|Mux9~3_combout\ & (!\FD|ULA|Mux8~3_combout\ & ((\FD|ULA|Mux11~3_combout\) # 
-- (\FD|ULA|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux9~3_combout\,
	datab => \FD|ULA|Mux11~3_combout\,
	datac => \FD|ULA|Mux10~3_combout\,
	datad => \FD|ULA|Mux8~3_combout\,
	combout => \H5|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X86_Y2_N24
\H5|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H5|rascSaida7seg[6]~6_combout\ = (\FD|ULA|Mux11~3_combout\ & (!\FD|ULA|Mux8~3_combout\ & (\FD|ULA|Mux9~3_combout\ $ (!\FD|ULA|Mux10~3_combout\)))) # (!\FD|ULA|Mux11~3_combout\ & (!\FD|ULA|Mux10~3_combout\ & (\FD|ULA|Mux9~3_combout\ $ 
-- (!\FD|ULA|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux9~3_combout\,
	datab => \FD|ULA|Mux11~3_combout\,
	datac => \FD|ULA|Mux10~3_combout\,
	datad => \FD|ULA|Mux8~3_combout\,
	combout => \H5|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X114_Y40_N10
\H6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H6|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(2) & (!\FD|PC|data_s\(0) & !\FD|PC|data_s\(3))) # (!\FD|PC|data_s\(2) & (\FD|PC|data_s\(0) & \FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \H6|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y40_N24
\H6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H6|rascSaida7seg[1]~1_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (\FD|PC|data_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \H6|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y40_N18
\H6|rascSaida7seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H6|rascSaida7seg~2_combout\ = (\FD|PC|data_s\(3) & \FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \H6|rascSaida7seg~2_combout\);

-- Location: LCCOMB_X114_Y40_N8
\H6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H6|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(2) & ((\FD|PC|data_s\(0)) # (!\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \H6|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y40_N26
\H6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H6|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(3)) # ((!\FD|PC|data_s\(2) & !\FD|PC|data_s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \H6|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y40_N12
\H6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H6|rascSaida7seg[5]~5_combout\ = (\FD|PC|data_s\(0) & !\FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \H6|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y40_N22
\H6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H6|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(2) & (\FD|PC|data_s\(0) $ (\FD|PC|data_s\(3)))) # (!\FD|PC|data_s\(2) & (!\FD|PC|data_s\(0) & !\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \H6|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X113_Y43_N4
\H7|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \H7|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(7) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) $ (\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (\FD|PC|data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(6),
	combout => \H7|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X113_Y41_N12
\H7|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \H7|rascSaida7seg[1]~1_combout\ = (\FD|PC|data_s\(6) & (\FD|PC|data_s\(4) $ (((\FD|PC|data_s\(5)) # (\FD|PC|data_s\(7)))))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(5) & (\FD|PC|data_s\(7) & \FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \H7|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X113_Y43_N22
\H7|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \H7|rascSaida7seg[2]~2_combout\ = (\FD|PC|data_s\(7) & (\FD|PC|data_s\(6) & ((\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) & !\FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(6),
	combout => \H7|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X113_Y41_N22
\H7|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \H7|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(5) & ((\FD|PC|data_s\(6) & ((\FD|PC|data_s\(4)))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(7) & !\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(6) $ 
-- (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \H7|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X113_Y41_N28
\H7|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \H7|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(5) & (((!\FD|PC|data_s\(7) & \FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(5) & ((\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7))) # (!\FD|PC|data_s\(6) & ((\FD|PC|data_s\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \H7|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X113_Y41_N2
\H7|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \H7|rascSaida7seg[5]~5_combout\ = (\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & ((\FD|PC|data_s\(4)) # (!\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(6) $ (!\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \H7|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X113_Y41_N4
\H7|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \H7|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(5) $ (!\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(6) $ (!\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \H7|rascSaida7seg[6]~6_combout\);

ww_PC_out(0) <= \PC_out[0]~output_o\;

ww_PC_out(1) <= \PC_out[1]~output_o\;

ww_PC_out(2) <= \PC_out[2]~output_o\;

ww_PC_out(3) <= \PC_out[3]~output_o\;

ww_PC_out(4) <= \PC_out[4]~output_o\;

ww_PC_out(5) <= \PC_out[5]~output_o\;

ww_PC_out(6) <= \PC_out[6]~output_o\;

ww_PC_out(7) <= \PC_out[7]~output_o\;

ww_PC_out(8) <= \PC_out[8]~output_o\;

ww_PC_out(9) <= \PC_out[9]~output_o\;

ww_PC_out(10) <= \PC_out[10]~output_o\;

ww_PC_out(11) <= \PC_out[11]~output_o\;

ww_PC_out(12) <= \PC_out[12]~output_o\;

ww_PC_out(13) <= \PC_out[13]~output_o\;

ww_PC_out(14) <= \PC_out[14]~output_o\;

ww_PC_out(15) <= \PC_out[15]~output_o\;

ww_PC_out(16) <= \PC_out[16]~output_o\;

ww_PC_out(17) <= \PC_out[17]~output_o\;

ww_PC_out(18) <= \PC_out[18]~output_o\;

ww_PC_out(19) <= \PC_out[19]~output_o\;

ww_PC_out(20) <= \PC_out[20]~output_o\;

ww_PC_out(21) <= \PC_out[21]~output_o\;

ww_PC_out(22) <= \PC_out[22]~output_o\;

ww_PC_out(23) <= \PC_out[23]~output_o\;

ww_PC_out(24) <= \PC_out[24]~output_o\;

ww_PC_out(25) <= \PC_out[25]~output_o\;

ww_PC_out(26) <= \PC_out[26]~output_o\;

ww_PC_out(27) <= \PC_out[27]~output_o\;

ww_PC_out(28) <= \PC_out[28]~output_o\;

ww_PC_out(29) <= \PC_out[29]~output_o\;

ww_PC_out(30) <= \PC_out[30]~output_o\;

ww_PC_out(31) <= \PC_out[31]~output_o\;

ww_ULA_out(0) <= \ULA_out[0]~output_o\;

ww_ULA_out(1) <= \ULA_out[1]~output_o\;

ww_ULA_out(2) <= \ULA_out[2]~output_o\;

ww_ULA_out(3) <= \ULA_out[3]~output_o\;

ww_ULA_out(4) <= \ULA_out[4]~output_o\;

ww_ULA_out(5) <= \ULA_out[5]~output_o\;

ww_ULA_out(6) <= \ULA_out[6]~output_o\;

ww_ULA_out(7) <= \ULA_out[7]~output_o\;

ww_ULA_out(8) <= \ULA_out[8]~output_o\;

ww_ULA_out(9) <= \ULA_out[9]~output_o\;

ww_ULA_out(10) <= \ULA_out[10]~output_o\;

ww_ULA_out(11) <= \ULA_out[11]~output_o\;

ww_ULA_out(12) <= \ULA_out[12]~output_o\;

ww_ULA_out(13) <= \ULA_out[13]~output_o\;

ww_ULA_out(14) <= \ULA_out[14]~output_o\;

ww_ULA_out(15) <= \ULA_out[15]~output_o\;

ww_ULA_out(16) <= \ULA_out[16]~output_o\;

ww_ULA_out(17) <= \ULA_out[17]~output_o\;

ww_ULA_out(18) <= \ULA_out[18]~output_o\;

ww_ULA_out(19) <= \ULA_out[19]~output_o\;

ww_ULA_out(20) <= \ULA_out[20]~output_o\;

ww_ULA_out(21) <= \ULA_out[21]~output_o\;

ww_ULA_out(22) <= \ULA_out[22]~output_o\;

ww_ULA_out(23) <= \ULA_out[23]~output_o\;

ww_ULA_out(24) <= \ULA_out[24]~output_o\;

ww_ULA_out(25) <= \ULA_out[25]~output_o\;

ww_ULA_out(26) <= \ULA_out[26]~output_o\;

ww_ULA_out(27) <= \ULA_out[27]~output_o\;

ww_ULA_out(28) <= \ULA_out[28]~output_o\;

ww_ULA_out(29) <= \ULA_out[29]~output_o\;

ww_ULA_out(30) <= \ULA_out[30]~output_o\;

ww_ULA_out(31) <= \ULA_out[31]~output_o\;

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


