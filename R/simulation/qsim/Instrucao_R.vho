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

-- DATE "10/24/2019 16:44:30"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOP_LEVEL_R IS
    PORT (
	Clk : IN std_logic;
	enable_pc : IN std_logic;
	reset_pc : IN std_logic;
	escreveC : IN std_logic;
	Saida : BUFFER std_logic_vector(31 DOWNTO 0);
	SaidaA1 : BUFFER std_logic_vector(31 DOWNTO 0);
	SaidaB1 : BUFFER std_logic_vector(31 DOWNTO 0);
	SaidaROM : BUFFER std_logic_vector(31 DOWNTO 0);
	SaidaFunct : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END TOP_LEVEL_R;

-- Design Ports Information
-- Saida[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[9]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[12]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[13]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[14]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[16]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[17]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[18]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[19]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[20]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[21]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[22]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[23]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[24]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[25]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[26]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[27]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[28]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[29]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[30]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[31]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[8]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[9]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[11]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[12]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[14]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[16]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[17]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[18]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[19]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[20]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[21]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[22]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[23]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[24]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[25]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[26]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[27]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[28]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[29]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[30]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaA1[31]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[5]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[11]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[12]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[13]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[14]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[15]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[16]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[17]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[18]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[19]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[20]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[21]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[22]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[23]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[24]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[25]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[26]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[27]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[28]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[30]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaB1[31]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[5]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[6]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[9]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[10]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[11]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[12]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[13]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[14]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[15]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[16]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[17]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[18]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[20]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[21]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[22]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[23]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[24]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[25]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[26]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[27]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[28]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[29]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[30]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaROM[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaFunct[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaFunct[1]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaFunct[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaFunct[3]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaFunct[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaidaFunct[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_pc	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_pc	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- escreveC	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TOP_LEVEL_R IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_enable_pc : std_logic;
SIGNAL ww_reset_pc : std_logic;
SIGNAL ww_escreveC : std_logic;
SIGNAL ww_Saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SaidaA1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SaidaB1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SaidaROM : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SaidaFunct : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|PC|output[2]~0_combout\ : std_logic;
SIGNAL \reset_pc~input_o\ : std_logic;
SIGNAL \enable_pc~input_o\ : std_logic;
SIGNAL \PC|Somador|Add0~9_sumout\ : std_logic;
SIGNAL \PC|Somador|Add0~10\ : std_logic;
SIGNAL \PC|Somador|Add0~13_sumout\ : std_logic;
SIGNAL \PC|Somador|Add0~14\ : std_logic;
SIGNAL \PC|Somador|Add0~17_sumout\ : std_logic;
SIGNAL \PC|Somador|Add0~18\ : std_logic;
SIGNAL \PC|Somador|Add0~5_sumout\ : std_logic;
SIGNAL \PC|Somador|Add0~6\ : std_logic;
SIGNAL \PC|Somador|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \escreveC~input_o\ : std_logic;
SIGNAL \BANCO|registrador~1300_combout\ : std_logic;
SIGNAL \BANCO|registrador~166_q\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \BANCO|registrador~1301_combout\ : std_logic;
SIGNAL \BANCO|registrador~1299_combout\ : std_logic;
SIGNAL \BANCO|registrador~134_q\ : std_logic;
SIGNAL \BANCO|registrador~1297_combout\ : std_logic;
SIGNAL \BANCO|registrador~38_q\ : std_logic;
SIGNAL \BANCO|registrador~1298_combout\ : std_logic;
SIGNAL \BANCO|registrador~102_q\ : std_logic;
SIGNAL \BANCO|registrador~1169_combout\ : std_logic;
SIGNAL \BANCO|saidaA[0]~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~1138_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|Mux31~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~167_q\ : std_logic;
SIGNAL \BANCO|registrador~1303_combout\ : std_logic;
SIGNAL \BANCO|registrador~135_q\ : std_logic;
SIGNAL \BANCO|registrador~39_q\ : std_logic;
SIGNAL \BANCO|registrador~1302_combout\ : std_logic;
SIGNAL \BANCO|registrador~103_q\ : std_logic;
SIGNAL \BANCO|registrador~1173_combout\ : std_logic;
SIGNAL \BANCO|saidaA[1]~1_combout\ : std_logic;
SIGNAL \BANCO|registrador~1139_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Mux30~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~168_q\ : std_logic;
SIGNAL \BANCO|registrador~40_q\ : std_logic;
SIGNAL \BANCO|registrador~136_q\ : std_logic;
SIGNAL \BANCO|registrador~104_q\ : std_logic;
SIGNAL \BANCO|registrador~1177_combout\ : std_logic;
SIGNAL \BANCO|saidaA[2]~2_combout\ : std_logic;
SIGNAL \BANCO|registrador~1140_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Mux29~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~137_q\ : std_logic;
SIGNAL \BANCO|registrador~105_q\ : std_logic;
SIGNAL \BANCO|registrador~41_q\ : std_logic;
SIGNAL \BANCO|registrador~1141_combout\ : std_logic;
SIGNAL \BANCO|registrador~169_q\ : std_logic;
SIGNAL \BANCO|registrador~1181_combout\ : std_logic;
SIGNAL \BANCO|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Mux28~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~170_q\ : std_logic;
SIGNAL \BANCO|registrador~106_q\ : std_logic;
SIGNAL \BANCO|registrador~42_q\ : std_logic;
SIGNAL \BANCO|registrador~138_q\ : std_logic;
SIGNAL \BANCO|registrador~1185_combout\ : std_logic;
SIGNAL \BANCO|saidaA[4]~4_combout\ : std_logic;
SIGNAL \BANCO|registrador~1142_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Mux27~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~171feeder_combout\ : std_logic;
SIGNAL \BANCO|registrador~171_q\ : std_logic;
SIGNAL \BANCO|registrador~139_q\ : std_logic;
SIGNAL \BANCO|registrador~107_q\ : std_logic;
SIGNAL \BANCO|registrador~43_q\ : std_logic;
SIGNAL \BANCO|registrador~1189_combout\ : std_logic;
SIGNAL \BANCO|saidaA[5]~5_combout\ : std_logic;
SIGNAL \BANCO|registrador~1143_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Mux26~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~172_q\ : std_logic;
SIGNAL \BANCO|registrador~44_q\ : std_logic;
SIGNAL \BANCO|registrador~108_q\ : std_logic;
SIGNAL \BANCO|registrador~140_q\ : std_logic;
SIGNAL \BANCO|registrador~1193_combout\ : std_logic;
SIGNAL \BANCO|saidaA[6]~6_combout\ : std_logic;
SIGNAL \BANCO|registrador~1144_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|Mux25~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~173feeder_combout\ : std_logic;
SIGNAL \BANCO|registrador~173_q\ : std_logic;
SIGNAL \BANCO|registrador~109_q\ : std_logic;
SIGNAL \BANCO|registrador~45_q\ : std_logic;
SIGNAL \BANCO|registrador~141_q\ : std_logic;
SIGNAL \BANCO|registrador~1197_combout\ : std_logic;
SIGNAL \BANCO|saidaA[7]~7_combout\ : std_logic;
SIGNAL \BANCO|registrador~1145_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|Mux24~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~174_q\ : std_logic;
SIGNAL \BANCO|registrador~46_q\ : std_logic;
SIGNAL \BANCO|registrador~142_q\ : std_logic;
SIGNAL \BANCO|registrador~110_q\ : std_logic;
SIGNAL \BANCO|registrador~1201_combout\ : std_logic;
SIGNAL \BANCO|saidaA[8]~8_combout\ : std_logic;
SIGNAL \BANCO|registrador~1146_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|Mux23~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~175feeder_combout\ : std_logic;
SIGNAL \BANCO|registrador~175_q\ : std_logic;
SIGNAL \BANCO|registrador~143_q\ : std_logic;
SIGNAL \BANCO|registrador~111_q\ : std_logic;
SIGNAL \BANCO|registrador~47_q\ : std_logic;
SIGNAL \BANCO|registrador~1205_combout\ : std_logic;
SIGNAL \BANCO|saidaA[9]~9_combout\ : std_logic;
SIGNAL \BANCO|registrador~1147_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|Mux22~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~176_q\ : std_logic;
SIGNAL \BANCO|registrador~144_q\ : std_logic;
SIGNAL \BANCO|registrador~48_q\ : std_logic;
SIGNAL \BANCO|registrador~112_q\ : std_logic;
SIGNAL \BANCO|registrador~1209_combout\ : std_logic;
SIGNAL \BANCO|saidaA[10]~10_combout\ : std_logic;
SIGNAL \BANCO|registrador~1148_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|Mux21~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~177_q\ : std_logic;
SIGNAL \BANCO|registrador~113feeder_combout\ : std_logic;
SIGNAL \BANCO|registrador~113_q\ : std_logic;
SIGNAL \BANCO|registrador~49_q\ : std_logic;
SIGNAL \BANCO|registrador~145_q\ : std_logic;
SIGNAL \BANCO|registrador~1213_combout\ : std_logic;
SIGNAL \BANCO|saidaA[11]~11_combout\ : std_logic;
SIGNAL \BANCO|registrador~1149_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|Mux20~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~178_q\ : std_logic;
SIGNAL \BANCO|registrador~114_q\ : std_logic;
SIGNAL \BANCO|registrador~146_q\ : std_logic;
SIGNAL \BANCO|registrador~50_q\ : std_logic;
SIGNAL \BANCO|registrador~1217_combout\ : std_logic;
SIGNAL \BANCO|saidaA[12]~12_combout\ : std_logic;
SIGNAL \BANCO|registrador~1150_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|Mux19~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~179feeder_combout\ : std_logic;
SIGNAL \BANCO|registrador~179_q\ : std_logic;
SIGNAL \BANCO|registrador~147_q\ : std_logic;
SIGNAL \BANCO|registrador~51_q\ : std_logic;
SIGNAL \BANCO|registrador~115_q\ : std_logic;
SIGNAL \BANCO|registrador~1221_combout\ : std_logic;
SIGNAL \BANCO|registrador~1062_combout\ : std_logic;
SIGNAL \BANCO|saidaA[13]~13_combout\ : std_logic;
SIGNAL \BANCO|registrador~1151_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|Mux18~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~180feeder_combout\ : std_logic;
SIGNAL \BANCO|registrador~180_q\ : std_logic;
SIGNAL \BANCO|registrador~148_q\ : std_logic;
SIGNAL \BANCO|registrador~52_q\ : std_logic;
SIGNAL \BANCO|registrador~116_q\ : std_logic;
SIGNAL \BANCO|registrador~1225_combout\ : std_logic;
SIGNAL \BANCO|registrador~1066_combout\ : std_logic;
SIGNAL \BANCO|saidaA[14]~14_combout\ : std_logic;
SIGNAL \BANCO|registrador~1152_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|Mux17~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~149_q\ : std_logic;
SIGNAL \BANCO|registrador~117_q\ : std_logic;
SIGNAL \BANCO|registrador~53_q\ : std_logic;
SIGNAL \BANCO|registrador~1153_combout\ : std_logic;
SIGNAL \BANCO|registrador~181_q\ : std_logic;
SIGNAL \BANCO|registrador~1229_combout\ : std_logic;
SIGNAL \BANCO|registrador~1070_combout\ : std_logic;
SIGNAL \BANCO|saidaA[15]~15_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|Mux16~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~182_q\ : std_logic;
SIGNAL \BANCO|registrador~150_q\ : std_logic;
SIGNAL \BANCO|registrador~118_q\ : std_logic;
SIGNAL \BANCO|registrador~54_q\ : std_logic;
SIGNAL \BANCO|registrador~1233_combout\ : std_logic;
SIGNAL \BANCO|registrador~1074_combout\ : std_logic;
SIGNAL \BANCO|saidaA[16]~16_combout\ : std_logic;
SIGNAL \BANCO|registrador~1154_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|Mux15~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~183_q\ : std_logic;
SIGNAL \BANCO|registrador~55_q\ : std_logic;
SIGNAL \BANCO|registrador~119_q\ : std_logic;
SIGNAL \BANCO|registrador~151_q\ : std_logic;
SIGNAL \BANCO|registrador~1237_combout\ : std_logic;
SIGNAL \BANCO|registrador~1078_combout\ : std_logic;
SIGNAL \BANCO|saidaA[17]~17_combout\ : std_logic;
SIGNAL \BANCO|registrador~1155_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|Mux14~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~184_q\ : std_logic;
SIGNAL \BANCO|registrador~56_q\ : std_logic;
SIGNAL \BANCO|registrador~120_q\ : std_logic;
SIGNAL \BANCO|registrador~152_q\ : std_logic;
SIGNAL \BANCO|registrador~1241_combout\ : std_logic;
SIGNAL \BANCO|registrador~1082_combout\ : std_logic;
SIGNAL \BANCO|saidaA[18]~18_combout\ : std_logic;
SIGNAL \BANCO|registrador~1156_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|Mux13~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~185_q\ : std_logic;
SIGNAL \BANCO|registrador~57_q\ : std_logic;
SIGNAL \BANCO|registrador~121_q\ : std_logic;
SIGNAL \BANCO|registrador~153_q\ : std_logic;
SIGNAL \BANCO|registrador~1245_combout\ : std_logic;
SIGNAL \BANCO|registrador~1086_combout\ : std_logic;
SIGNAL \BANCO|saidaA[19]~19_combout\ : std_logic;
SIGNAL \BANCO|registrador~1157_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|Mux12~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~186_q\ : std_logic;
SIGNAL \BANCO|registrador~122_q\ : std_logic;
SIGNAL \BANCO|registrador~58_q\ : std_logic;
SIGNAL \BANCO|registrador~154_q\ : std_logic;
SIGNAL \BANCO|registrador~1249_combout\ : std_logic;
SIGNAL \BANCO|registrador~1090_combout\ : std_logic;
SIGNAL \BANCO|saidaA[20]~20_combout\ : std_logic;
SIGNAL \BANCO|registrador~1158_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|Mux11~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~187_q\ : std_logic;
SIGNAL \BANCO|registrador~155_q\ : std_logic;
SIGNAL \BANCO|registrador~123_q\ : std_logic;
SIGNAL \BANCO|registrador~59_q\ : std_logic;
SIGNAL \BANCO|registrador~1253_combout\ : std_logic;
SIGNAL \BANCO|registrador~1094_combout\ : std_logic;
SIGNAL \BANCO|saidaA[21]~21_combout\ : std_logic;
SIGNAL \BANCO|registrador~1159_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|Mux10~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~188_q\ : std_logic;
SIGNAL \BANCO|registrador~156_q\ : std_logic;
SIGNAL \BANCO|registrador~124_q\ : std_logic;
SIGNAL \BANCO|registrador~60_q\ : std_logic;
SIGNAL \BANCO|registrador~1257_combout\ : std_logic;
SIGNAL \BANCO|registrador~1098_combout\ : std_logic;
SIGNAL \BANCO|saidaA[22]~22_combout\ : std_logic;
SIGNAL \BANCO|registrador~1160_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|Mux9~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~189_q\ : std_logic;
SIGNAL \BANCO|registrador~61feeder_combout\ : std_logic;
SIGNAL \BANCO|registrador~61_q\ : std_logic;
SIGNAL \BANCO|registrador~157_q\ : std_logic;
SIGNAL \BANCO|registrador~125_q\ : std_logic;
SIGNAL \BANCO|registrador~1261_combout\ : std_logic;
SIGNAL \BANCO|registrador~1102_combout\ : std_logic;
SIGNAL \BANCO|saidaA[23]~23_combout\ : std_logic;
SIGNAL \BANCO|registrador~1161_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|Mux8~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~190_q\ : std_logic;
SIGNAL \BANCO|registrador~62feeder_combout\ : std_logic;
SIGNAL \BANCO|registrador~62_q\ : std_logic;
SIGNAL \BANCO|registrador~126_q\ : std_logic;
SIGNAL \BANCO|registrador~158_q\ : std_logic;
SIGNAL \BANCO|registrador~1265_combout\ : std_logic;
SIGNAL \BANCO|registrador~1106_combout\ : std_logic;
SIGNAL \BANCO|saidaA[24]~24_combout\ : std_logic;
SIGNAL \BANCO|registrador~1162_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|Mux7~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~127_q\ : std_logic;
SIGNAL \BANCO|registrador~63_q\ : std_logic;
SIGNAL \BANCO|registrador~159_q\ : std_logic;
SIGNAL \BANCO|registrador~1269_combout\ : std_logic;
SIGNAL \BANCO|registrador~191_q\ : std_logic;
SIGNAL \BANCO|registrador~1110_combout\ : std_logic;
SIGNAL \BANCO|saidaA[25]~25_combout\ : std_logic;
SIGNAL \BANCO|registrador~1163_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|Mux6~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~192_q\ : std_logic;
SIGNAL \BANCO|registrador~128_q\ : std_logic;
SIGNAL \BANCO|registrador~160_q\ : std_logic;
SIGNAL \BANCO|registrador~64_q\ : std_logic;
SIGNAL \BANCO|registrador~1273_combout\ : std_logic;
SIGNAL \BANCO|registrador~1114_combout\ : std_logic;
SIGNAL \BANCO|saidaA[26]~26_combout\ : std_logic;
SIGNAL \BANCO|registrador~1164_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|Mux5~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~193_q\ : std_logic;
SIGNAL \BANCO|registrador~161feeder_combout\ : std_logic;
SIGNAL \BANCO|registrador~161_q\ : std_logic;
SIGNAL \BANCO|registrador~65_q\ : std_logic;
SIGNAL \BANCO|registrador~129_q\ : std_logic;
SIGNAL \BANCO|registrador~1277_combout\ : std_logic;
SIGNAL \BANCO|registrador~1118_combout\ : std_logic;
SIGNAL \BANCO|saidaA[27]~27_combout\ : std_logic;
SIGNAL \BANCO|registrador~1165_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|Mux4~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~162_q\ : std_logic;
SIGNAL \BANCO|registrador~130_q\ : std_logic;
SIGNAL \BANCO|registrador~66_q\ : std_logic;
SIGNAL \BANCO|registrador~1166_combout\ : std_logic;
SIGNAL \BANCO|registrador~1281_combout\ : std_logic;
SIGNAL \BANCO|registrador~194_q\ : std_logic;
SIGNAL \BANCO|registrador~1122_combout\ : std_logic;
SIGNAL \BANCO|saidaA[28]~28_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Mux3~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~195_q\ : std_logic;
SIGNAL \BANCO|registrador~67_q\ : std_logic;
SIGNAL \BANCO|registrador~163_q\ : std_logic;
SIGNAL \BANCO|registrador~131_q\ : std_logic;
SIGNAL \BANCO|registrador~1285_combout\ : std_logic;
SIGNAL \BANCO|registrador~1126_combout\ : std_logic;
SIGNAL \BANCO|saidaA[29]~29_combout\ : std_logic;
SIGNAL \BANCO|registrador~1167_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|Mux2~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~196_q\ : std_logic;
SIGNAL \BANCO|registrador~164_q\ : std_logic;
SIGNAL \BANCO|registrador~68_q\ : std_logic;
SIGNAL \BANCO|registrador~132_q\ : std_logic;
SIGNAL \BANCO|registrador~1289_combout\ : std_logic;
SIGNAL \BANCO|registrador~1130_combout\ : std_logic;
SIGNAL \BANCO|saidaA[30]~30_combout\ : std_logic;
SIGNAL \BANCO|registrador~1168_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|Mux1~0_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \ULA|Mux0~0_combout\ : std_logic;
SIGNAL \BANCO|registrador~197_q\ : std_logic;
SIGNAL \BANCO|registrador~165_q\ : std_logic;
SIGNAL \BANCO|registrador~69_q\ : std_logic;
SIGNAL \BANCO|registrador~133_q\ : std_logic;
SIGNAL \BANCO|registrador~1293_combout\ : std_logic;
SIGNAL \BANCO|registrador~1134_combout\ : std_logic;
SIGNAL \BANCO|saidaA[31]~31_combout\ : std_logic;
SIGNAL \BANCO|saidaB[0]~0_combout\ : std_logic;
SIGNAL \BANCO|saidaB[1]~1_combout\ : std_logic;
SIGNAL \BANCO|saidaB[2]~2_combout\ : std_logic;
SIGNAL \BANCO|saidaB[3]~3_combout\ : std_logic;
SIGNAL \BANCO|saidaB[4]~4_combout\ : std_logic;
SIGNAL \BANCO|saidaB[5]~5_combout\ : std_logic;
SIGNAL \BANCO|saidaB[6]~6_combout\ : std_logic;
SIGNAL \BANCO|saidaB[7]~7_combout\ : std_logic;
SIGNAL \BANCO|saidaB[8]~8_combout\ : std_logic;
SIGNAL \BANCO|saidaB[9]~9_combout\ : std_logic;
SIGNAL \BANCO|saidaB[10]~10_combout\ : std_logic;
SIGNAL \BANCO|saidaB[11]~11_combout\ : std_logic;
SIGNAL \BANCO|saidaB[12]~12_combout\ : std_logic;
SIGNAL \BANCO|saidaB[13]~13_combout\ : std_logic;
SIGNAL \BANCO|saidaB[14]~14_combout\ : std_logic;
SIGNAL \BANCO|saidaB[15]~15_combout\ : std_logic;
SIGNAL \BANCO|saidaB[16]~16_combout\ : std_logic;
SIGNAL \BANCO|saidaB[17]~17_combout\ : std_logic;
SIGNAL \BANCO|saidaB[18]~18_combout\ : std_logic;
SIGNAL \BANCO|saidaB[19]~19_combout\ : std_logic;
SIGNAL \BANCO|saidaB[20]~20_combout\ : std_logic;
SIGNAL \BANCO|saidaB[21]~21_combout\ : std_logic;
SIGNAL \BANCO|saidaB[22]~22_combout\ : std_logic;
SIGNAL \BANCO|saidaB[23]~23_combout\ : std_logic;
SIGNAL \BANCO|saidaB[24]~24_combout\ : std_logic;
SIGNAL \BANCO|saidaB[25]~25_combout\ : std_logic;
SIGNAL \BANCO|saidaB[26]~26_combout\ : std_logic;
SIGNAL \BANCO|saidaB[27]~27_combout\ : std_logic;
SIGNAL \BANCO|saidaB[28]~28_combout\ : std_logic;
SIGNAL \BANCO|saidaB[29]~29_combout\ : std_logic;
SIGNAL \BANCO|saidaB[30]~30_combout\ : std_logic;
SIGNAL \BANCO|saidaB[31]~31_combout\ : std_logic;
SIGNAL \PC|PC|output\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~151_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~119_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~150_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~118_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~149_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~117_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~148_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~116_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~147_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~115_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~146_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~114_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~145_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~113_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~144_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~112_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~143_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~111_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~142_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~110_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~141_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~109_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~140_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~108_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~139_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~107_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~138_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~106_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~137_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~105_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~136_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~104_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~102_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1134_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1130_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1126_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1114_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|PC|ALT_INV_output\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1293_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~197_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1289_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~196_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1285_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~195_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1281_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~194_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1277_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~193_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1273_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~192_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1269_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~191_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1265_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~190_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1261_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~189_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1257_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~188_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1253_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~187_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1249_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~186_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1245_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~185_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1241_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~184_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1237_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~183_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1233_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~182_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1229_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~181_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1225_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~180_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1221_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~179_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1217_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~178_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1213_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~177_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1209_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~176_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1205_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~175_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1201_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~174_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1197_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~173_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1193_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~172_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1189_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~171_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1185_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~170_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1181_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~169_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1177_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~168_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1173_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~167_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1169_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~166_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~165_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~133_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~164_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~132_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~163_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~131_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~162_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~130_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~161_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~129_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~160_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~128_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~159_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~127_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~158_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~126_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~157_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~125_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~156_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~124_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~155_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~123_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~154_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~122_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~153_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~121_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~152_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~120_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1166_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1165_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1164_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1163_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1162_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1161_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1160_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1159_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1158_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1157_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1156_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1155_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1154_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1153_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1152_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1151_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1150_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1149_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1148_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1147_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1146_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1145_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1144_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1143_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1142_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1141_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1140_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1139_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~135_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~103_q\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1138_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~134_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[30]~30_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[29]~29_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[28]~28_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[26]~26_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[25]~25_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[24]~24_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[23]~23_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[22]~22_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[21]~21_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[20]~20_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[19]~19_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[18]~18_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[17]~17_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[16]~16_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[15]~15_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[14]~14_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[13]~13_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[8]~8_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[7]~7_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[6]~6_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[3]~3_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ALT_INV_escreveC~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_pc~input_o\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1168_combout\ : std_logic;
SIGNAL \BANCO|ALT_INV_registrador~1167_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_enable_pc <= enable_pc;
ww_reset_pc <= reset_pc;
ww_escreveC <= escreveC;
Saida <= ww_Saida;
SaidaA1 <= ww_SaidaA1;
SaidaB1 <= ww_SaidaB1;
SaidaROM <= ww_SaidaROM;
SaidaFunct <= ww_SaidaFunct;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\BANCO|ALT_INV_registrador~56_q\ <= NOT \BANCO|registrador~56_q\;
\BANCO|ALT_INV_registrador~151_q\ <= NOT \BANCO|registrador~151_q\;
\BANCO|ALT_INV_registrador~119_q\ <= NOT \BANCO|registrador~119_q\;
\BANCO|ALT_INV_registrador~55_q\ <= NOT \BANCO|registrador~55_q\;
\BANCO|ALT_INV_registrador~150_q\ <= NOT \BANCO|registrador~150_q\;
\BANCO|ALT_INV_registrador~118_q\ <= NOT \BANCO|registrador~118_q\;
\BANCO|ALT_INV_registrador~54_q\ <= NOT \BANCO|registrador~54_q\;
\BANCO|ALT_INV_registrador~149_q\ <= NOT \BANCO|registrador~149_q\;
\BANCO|ALT_INV_registrador~117_q\ <= NOT \BANCO|registrador~117_q\;
\BANCO|ALT_INV_registrador~53_q\ <= NOT \BANCO|registrador~53_q\;
\BANCO|ALT_INV_registrador~148_q\ <= NOT \BANCO|registrador~148_q\;
\BANCO|ALT_INV_registrador~116_q\ <= NOT \BANCO|registrador~116_q\;
\BANCO|ALT_INV_registrador~52_q\ <= NOT \BANCO|registrador~52_q\;
\BANCO|ALT_INV_registrador~147_q\ <= NOT \BANCO|registrador~147_q\;
\BANCO|ALT_INV_registrador~115_q\ <= NOT \BANCO|registrador~115_q\;
\BANCO|ALT_INV_registrador~51_q\ <= NOT \BANCO|registrador~51_q\;
\BANCO|ALT_INV_registrador~146_q\ <= NOT \BANCO|registrador~146_q\;
\BANCO|ALT_INV_registrador~114_q\ <= NOT \BANCO|registrador~114_q\;
\BANCO|ALT_INV_registrador~50_q\ <= NOT \BANCO|registrador~50_q\;
\BANCO|ALT_INV_registrador~145_q\ <= NOT \BANCO|registrador~145_q\;
\BANCO|ALT_INV_registrador~113_q\ <= NOT \BANCO|registrador~113_q\;
\BANCO|ALT_INV_registrador~49_q\ <= NOT \BANCO|registrador~49_q\;
\BANCO|ALT_INV_registrador~144_q\ <= NOT \BANCO|registrador~144_q\;
\BANCO|ALT_INV_registrador~112_q\ <= NOT \BANCO|registrador~112_q\;
\BANCO|ALT_INV_registrador~48_q\ <= NOT \BANCO|registrador~48_q\;
\BANCO|ALT_INV_registrador~143_q\ <= NOT \BANCO|registrador~143_q\;
\BANCO|ALT_INV_registrador~111_q\ <= NOT \BANCO|registrador~111_q\;
\BANCO|ALT_INV_registrador~47_q\ <= NOT \BANCO|registrador~47_q\;
\BANCO|ALT_INV_registrador~142_q\ <= NOT \BANCO|registrador~142_q\;
\BANCO|ALT_INV_registrador~110_q\ <= NOT \BANCO|registrador~110_q\;
\BANCO|ALT_INV_registrador~46_q\ <= NOT \BANCO|registrador~46_q\;
\BANCO|ALT_INV_registrador~141_q\ <= NOT \BANCO|registrador~141_q\;
\BANCO|ALT_INV_registrador~109_q\ <= NOT \BANCO|registrador~109_q\;
\BANCO|ALT_INV_registrador~45_q\ <= NOT \BANCO|registrador~45_q\;
\BANCO|ALT_INV_registrador~140_q\ <= NOT \BANCO|registrador~140_q\;
\BANCO|ALT_INV_registrador~108_q\ <= NOT \BANCO|registrador~108_q\;
\BANCO|ALT_INV_registrador~44_q\ <= NOT \BANCO|registrador~44_q\;
\BANCO|ALT_INV_registrador~139_q\ <= NOT \BANCO|registrador~139_q\;
\BANCO|ALT_INV_registrador~107_q\ <= NOT \BANCO|registrador~107_q\;
\BANCO|ALT_INV_registrador~43_q\ <= NOT \BANCO|registrador~43_q\;
\BANCO|ALT_INV_registrador~138_q\ <= NOT \BANCO|registrador~138_q\;
\BANCO|ALT_INV_registrador~106_q\ <= NOT \BANCO|registrador~106_q\;
\BANCO|ALT_INV_registrador~42_q\ <= NOT \BANCO|registrador~42_q\;
\BANCO|ALT_INV_registrador~137_q\ <= NOT \BANCO|registrador~137_q\;
\BANCO|ALT_INV_registrador~105_q\ <= NOT \BANCO|registrador~105_q\;
\BANCO|ALT_INV_registrador~41_q\ <= NOT \BANCO|registrador~41_q\;
\BANCO|ALT_INV_registrador~136_q\ <= NOT \BANCO|registrador~136_q\;
\BANCO|ALT_INV_registrador~104_q\ <= NOT \BANCO|registrador~104_q\;
\BANCO|ALT_INV_registrador~40_q\ <= NOT \BANCO|registrador~40_q\;
\BANCO|ALT_INV_registrador~39_q\ <= NOT \BANCO|registrador~39_q\;
\BANCO|ALT_INV_registrador~102_q\ <= NOT \BANCO|registrador~102_q\;
\BANCO|ALT_INV_registrador~38_q\ <= NOT \BANCO|registrador~38_q\;
\BANCO|ALT_INV_registrador~1134_combout\ <= NOT \BANCO|registrador~1134_combout\;
\BANCO|ALT_INV_registrador~1130_combout\ <= NOT \BANCO|registrador~1130_combout\;
\BANCO|ALT_INV_registrador~1126_combout\ <= NOT \BANCO|registrador~1126_combout\;
\BANCO|ALT_INV_registrador~1122_combout\ <= NOT \BANCO|registrador~1122_combout\;
\BANCO|ALT_INV_registrador~1118_combout\ <= NOT \BANCO|registrador~1118_combout\;
\BANCO|ALT_INV_registrador~1114_combout\ <= NOT \BANCO|registrador~1114_combout\;
\BANCO|ALT_INV_registrador~1110_combout\ <= NOT \BANCO|registrador~1110_combout\;
\BANCO|ALT_INV_registrador~1106_combout\ <= NOT \BANCO|registrador~1106_combout\;
\BANCO|ALT_INV_registrador~1102_combout\ <= NOT \BANCO|registrador~1102_combout\;
\BANCO|ALT_INV_registrador~1098_combout\ <= NOT \BANCO|registrador~1098_combout\;
\BANCO|ALT_INV_registrador~1094_combout\ <= NOT \BANCO|registrador~1094_combout\;
\BANCO|ALT_INV_registrador~1090_combout\ <= NOT \BANCO|registrador~1090_combout\;
\BANCO|ALT_INV_registrador~1086_combout\ <= NOT \BANCO|registrador~1086_combout\;
\BANCO|ALT_INV_registrador~1082_combout\ <= NOT \BANCO|registrador~1082_combout\;
\BANCO|ALT_INV_registrador~1078_combout\ <= NOT \BANCO|registrador~1078_combout\;
\BANCO|ALT_INV_registrador~1074_combout\ <= NOT \BANCO|registrador~1074_combout\;
\BANCO|ALT_INV_registrador~1070_combout\ <= NOT \BANCO|registrador~1070_combout\;
\BANCO|ALT_INV_registrador~1066_combout\ <= NOT \BANCO|registrador~1066_combout\;
\BANCO|ALT_INV_registrador~1062_combout\ <= NOT \BANCO|registrador~1062_combout\;
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\ULA|ALT_INV_Add0~121_sumout\ <= NOT \ULA|Add0~121_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add0~113_sumout\ <= NOT \ULA|Add0~113_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add0~105_sumout\ <= NOT \ULA|Add0~105_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add0~97_sumout\ <= NOT \ULA|Add0~97_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Mux30~0_combout\ <= NOT \ULA|Mux30~0_combout\;
\ULA|ALT_INV_Mux31~0_combout\ <= NOT \ULA|Mux31~0_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\PC|PC|ALT_INV_output\(5) <= NOT \PC|PC|output\(5);
\PC|PC|ALT_INV_output\(4) <= NOT \PC|PC|output\(4);
\PC|PC|ALT_INV_output\(3) <= NOT \PC|PC|output\(3);
\PC|PC|ALT_INV_output\(2) <= NOT \PC|PC|output\(2);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|PC|ALT_INV_output\(6) <= NOT \PC|PC|output\(6);
\PC|PC|ALT_INV_output\(7) <= NOT \PC|PC|output\(7);
\BANCO|ALT_INV_registrador~1293_combout\ <= NOT \BANCO|registrador~1293_combout\;
\BANCO|ALT_INV_registrador~197_q\ <= NOT \BANCO|registrador~197_q\;
\BANCO|ALT_INV_registrador~1289_combout\ <= NOT \BANCO|registrador~1289_combout\;
\BANCO|ALT_INV_registrador~196_q\ <= NOT \BANCO|registrador~196_q\;
\BANCO|ALT_INV_registrador~1285_combout\ <= NOT \BANCO|registrador~1285_combout\;
\BANCO|ALT_INV_registrador~195_q\ <= NOT \BANCO|registrador~195_q\;
\BANCO|ALT_INV_registrador~1281_combout\ <= NOT \BANCO|registrador~1281_combout\;
\BANCO|ALT_INV_registrador~194_q\ <= NOT \BANCO|registrador~194_q\;
\BANCO|ALT_INV_registrador~1277_combout\ <= NOT \BANCO|registrador~1277_combout\;
\BANCO|ALT_INV_registrador~193_q\ <= NOT \BANCO|registrador~193_q\;
\BANCO|ALT_INV_registrador~1273_combout\ <= NOT \BANCO|registrador~1273_combout\;
\BANCO|ALT_INV_registrador~192_q\ <= NOT \BANCO|registrador~192_q\;
\BANCO|ALT_INV_registrador~1269_combout\ <= NOT \BANCO|registrador~1269_combout\;
\BANCO|ALT_INV_registrador~191_q\ <= NOT \BANCO|registrador~191_q\;
\BANCO|ALT_INV_registrador~1265_combout\ <= NOT \BANCO|registrador~1265_combout\;
\BANCO|ALT_INV_registrador~190_q\ <= NOT \BANCO|registrador~190_q\;
\BANCO|ALT_INV_registrador~1261_combout\ <= NOT \BANCO|registrador~1261_combout\;
\BANCO|ALT_INV_registrador~189_q\ <= NOT \BANCO|registrador~189_q\;
\BANCO|ALT_INV_registrador~1257_combout\ <= NOT \BANCO|registrador~1257_combout\;
\BANCO|ALT_INV_registrador~188_q\ <= NOT \BANCO|registrador~188_q\;
\BANCO|ALT_INV_registrador~1253_combout\ <= NOT \BANCO|registrador~1253_combout\;
\BANCO|ALT_INV_registrador~187_q\ <= NOT \BANCO|registrador~187_q\;
\BANCO|ALT_INV_registrador~1249_combout\ <= NOT \BANCO|registrador~1249_combout\;
\BANCO|ALT_INV_registrador~186_q\ <= NOT \BANCO|registrador~186_q\;
\BANCO|ALT_INV_registrador~1245_combout\ <= NOT \BANCO|registrador~1245_combout\;
\BANCO|ALT_INV_registrador~185_q\ <= NOT \BANCO|registrador~185_q\;
\BANCO|ALT_INV_registrador~1241_combout\ <= NOT \BANCO|registrador~1241_combout\;
\BANCO|ALT_INV_registrador~184_q\ <= NOT \BANCO|registrador~184_q\;
\BANCO|ALT_INV_registrador~1237_combout\ <= NOT \BANCO|registrador~1237_combout\;
\BANCO|ALT_INV_registrador~183_q\ <= NOT \BANCO|registrador~183_q\;
\BANCO|ALT_INV_registrador~1233_combout\ <= NOT \BANCO|registrador~1233_combout\;
\BANCO|ALT_INV_registrador~182_q\ <= NOT \BANCO|registrador~182_q\;
\BANCO|ALT_INV_registrador~1229_combout\ <= NOT \BANCO|registrador~1229_combout\;
\BANCO|ALT_INV_registrador~181_q\ <= NOT \BANCO|registrador~181_q\;
\BANCO|ALT_INV_registrador~1225_combout\ <= NOT \BANCO|registrador~1225_combout\;
\BANCO|ALT_INV_registrador~180_q\ <= NOT \BANCO|registrador~180_q\;
\BANCO|ALT_INV_registrador~1221_combout\ <= NOT \BANCO|registrador~1221_combout\;
\BANCO|ALT_INV_registrador~179_q\ <= NOT \BANCO|registrador~179_q\;
\BANCO|ALT_INV_registrador~1217_combout\ <= NOT \BANCO|registrador~1217_combout\;
\BANCO|ALT_INV_registrador~178_q\ <= NOT \BANCO|registrador~178_q\;
\BANCO|ALT_INV_registrador~1213_combout\ <= NOT \BANCO|registrador~1213_combout\;
\BANCO|ALT_INV_registrador~177_q\ <= NOT \BANCO|registrador~177_q\;
\BANCO|ALT_INV_registrador~1209_combout\ <= NOT \BANCO|registrador~1209_combout\;
\BANCO|ALT_INV_registrador~176_q\ <= NOT \BANCO|registrador~176_q\;
\BANCO|ALT_INV_registrador~1205_combout\ <= NOT \BANCO|registrador~1205_combout\;
\BANCO|ALT_INV_registrador~175_q\ <= NOT \BANCO|registrador~175_q\;
\BANCO|ALT_INV_registrador~1201_combout\ <= NOT \BANCO|registrador~1201_combout\;
\BANCO|ALT_INV_registrador~174_q\ <= NOT \BANCO|registrador~174_q\;
\BANCO|ALT_INV_registrador~1197_combout\ <= NOT \BANCO|registrador~1197_combout\;
\BANCO|ALT_INV_registrador~173_q\ <= NOT \BANCO|registrador~173_q\;
\BANCO|ALT_INV_registrador~1193_combout\ <= NOT \BANCO|registrador~1193_combout\;
\BANCO|ALT_INV_registrador~172_q\ <= NOT \BANCO|registrador~172_q\;
\BANCO|ALT_INV_registrador~1189_combout\ <= NOT \BANCO|registrador~1189_combout\;
\BANCO|ALT_INV_registrador~171_q\ <= NOT \BANCO|registrador~171_q\;
\BANCO|ALT_INV_registrador~1185_combout\ <= NOT \BANCO|registrador~1185_combout\;
\BANCO|ALT_INV_registrador~170_q\ <= NOT \BANCO|registrador~170_q\;
\BANCO|ALT_INV_registrador~1181_combout\ <= NOT \BANCO|registrador~1181_combout\;
\BANCO|ALT_INV_registrador~169_q\ <= NOT \BANCO|registrador~169_q\;
\BANCO|ALT_INV_registrador~1177_combout\ <= NOT \BANCO|registrador~1177_combout\;
\BANCO|ALT_INV_registrador~168_q\ <= NOT \BANCO|registrador~168_q\;
\BANCO|ALT_INV_registrador~1173_combout\ <= NOT \BANCO|registrador~1173_combout\;
\BANCO|ALT_INV_registrador~167_q\ <= NOT \BANCO|registrador~167_q\;
\BANCO|ALT_INV_registrador~1169_combout\ <= NOT \BANCO|registrador~1169_combout\;
\BANCO|ALT_INV_registrador~166_q\ <= NOT \BANCO|registrador~166_q\;
\BANCO|ALT_INV_registrador~165_q\ <= NOT \BANCO|registrador~165_q\;
\BANCO|ALT_INV_registrador~133_q\ <= NOT \BANCO|registrador~133_q\;
\BANCO|ALT_INV_registrador~69_q\ <= NOT \BANCO|registrador~69_q\;
\BANCO|ALT_INV_registrador~164_q\ <= NOT \BANCO|registrador~164_q\;
\BANCO|ALT_INV_registrador~132_q\ <= NOT \BANCO|registrador~132_q\;
\BANCO|ALT_INV_registrador~68_q\ <= NOT \BANCO|registrador~68_q\;
\BANCO|ALT_INV_registrador~163_q\ <= NOT \BANCO|registrador~163_q\;
\BANCO|ALT_INV_registrador~131_q\ <= NOT \BANCO|registrador~131_q\;
\BANCO|ALT_INV_registrador~67_q\ <= NOT \BANCO|registrador~67_q\;
\BANCO|ALT_INV_registrador~162_q\ <= NOT \BANCO|registrador~162_q\;
\BANCO|ALT_INV_registrador~130_q\ <= NOT \BANCO|registrador~130_q\;
\BANCO|ALT_INV_registrador~66_q\ <= NOT \BANCO|registrador~66_q\;
\BANCO|ALT_INV_registrador~161_q\ <= NOT \BANCO|registrador~161_q\;
\BANCO|ALT_INV_registrador~129_q\ <= NOT \BANCO|registrador~129_q\;
\BANCO|ALT_INV_registrador~65_q\ <= NOT \BANCO|registrador~65_q\;
\BANCO|ALT_INV_registrador~160_q\ <= NOT \BANCO|registrador~160_q\;
\BANCO|ALT_INV_registrador~128_q\ <= NOT \BANCO|registrador~128_q\;
\BANCO|ALT_INV_registrador~64_q\ <= NOT \BANCO|registrador~64_q\;
\BANCO|ALT_INV_registrador~159_q\ <= NOT \BANCO|registrador~159_q\;
\BANCO|ALT_INV_registrador~127_q\ <= NOT \BANCO|registrador~127_q\;
\BANCO|ALT_INV_registrador~63_q\ <= NOT \BANCO|registrador~63_q\;
\BANCO|ALT_INV_registrador~158_q\ <= NOT \BANCO|registrador~158_q\;
\BANCO|ALT_INV_registrador~126_q\ <= NOT \BANCO|registrador~126_q\;
\BANCO|ALT_INV_registrador~62_q\ <= NOT \BANCO|registrador~62_q\;
\BANCO|ALT_INV_registrador~157_q\ <= NOT \BANCO|registrador~157_q\;
\BANCO|ALT_INV_registrador~125_q\ <= NOT \BANCO|registrador~125_q\;
\BANCO|ALT_INV_registrador~61_q\ <= NOT \BANCO|registrador~61_q\;
\BANCO|ALT_INV_registrador~156_q\ <= NOT \BANCO|registrador~156_q\;
\BANCO|ALT_INV_registrador~124_q\ <= NOT \BANCO|registrador~124_q\;
\BANCO|ALT_INV_registrador~60_q\ <= NOT \BANCO|registrador~60_q\;
\BANCO|ALT_INV_registrador~155_q\ <= NOT \BANCO|registrador~155_q\;
\BANCO|ALT_INV_registrador~123_q\ <= NOT \BANCO|registrador~123_q\;
\BANCO|ALT_INV_registrador~59_q\ <= NOT \BANCO|registrador~59_q\;
\BANCO|ALT_INV_registrador~154_q\ <= NOT \BANCO|registrador~154_q\;
\BANCO|ALT_INV_registrador~122_q\ <= NOT \BANCO|registrador~122_q\;
\BANCO|ALT_INV_registrador~58_q\ <= NOT \BANCO|registrador~58_q\;
\BANCO|ALT_INV_registrador~153_q\ <= NOT \BANCO|registrador~153_q\;
\BANCO|ALT_INV_registrador~121_q\ <= NOT \BANCO|registrador~121_q\;
\BANCO|ALT_INV_registrador~57_q\ <= NOT \BANCO|registrador~57_q\;
\BANCO|ALT_INV_registrador~152_q\ <= NOT \BANCO|registrador~152_q\;
\BANCO|ALT_INV_registrador~120_q\ <= NOT \BANCO|registrador~120_q\;
\BANCO|ALT_INV_registrador~1166_combout\ <= NOT \BANCO|registrador~1166_combout\;
\BANCO|ALT_INV_registrador~1165_combout\ <= NOT \BANCO|registrador~1165_combout\;
\BANCO|ALT_INV_registrador~1164_combout\ <= NOT \BANCO|registrador~1164_combout\;
\BANCO|ALT_INV_registrador~1163_combout\ <= NOT \BANCO|registrador~1163_combout\;
\BANCO|ALT_INV_registrador~1162_combout\ <= NOT \BANCO|registrador~1162_combout\;
\BANCO|ALT_INV_registrador~1161_combout\ <= NOT \BANCO|registrador~1161_combout\;
\BANCO|ALT_INV_registrador~1160_combout\ <= NOT \BANCO|registrador~1160_combout\;
\BANCO|ALT_INV_registrador~1159_combout\ <= NOT \BANCO|registrador~1159_combout\;
\BANCO|ALT_INV_registrador~1158_combout\ <= NOT \BANCO|registrador~1158_combout\;
\BANCO|ALT_INV_registrador~1157_combout\ <= NOT \BANCO|registrador~1157_combout\;
\BANCO|ALT_INV_registrador~1156_combout\ <= NOT \BANCO|registrador~1156_combout\;
\BANCO|ALT_INV_registrador~1155_combout\ <= NOT \BANCO|registrador~1155_combout\;
\BANCO|ALT_INV_registrador~1154_combout\ <= NOT \BANCO|registrador~1154_combout\;
\BANCO|ALT_INV_registrador~1153_combout\ <= NOT \BANCO|registrador~1153_combout\;
\BANCO|ALT_INV_registrador~1152_combout\ <= NOT \BANCO|registrador~1152_combout\;
\BANCO|ALT_INV_registrador~1151_combout\ <= NOT \BANCO|registrador~1151_combout\;
\BANCO|ALT_INV_registrador~1150_combout\ <= NOT \BANCO|registrador~1150_combout\;
\BANCO|ALT_INV_registrador~1149_combout\ <= NOT \BANCO|registrador~1149_combout\;
\BANCO|ALT_INV_registrador~1148_combout\ <= NOT \BANCO|registrador~1148_combout\;
\BANCO|ALT_INV_registrador~1147_combout\ <= NOT \BANCO|registrador~1147_combout\;
\BANCO|ALT_INV_registrador~1146_combout\ <= NOT \BANCO|registrador~1146_combout\;
\BANCO|ALT_INV_registrador~1145_combout\ <= NOT \BANCO|registrador~1145_combout\;
\BANCO|ALT_INV_registrador~1144_combout\ <= NOT \BANCO|registrador~1144_combout\;
\BANCO|ALT_INV_registrador~1143_combout\ <= NOT \BANCO|registrador~1143_combout\;
\BANCO|ALT_INV_registrador~1142_combout\ <= NOT \BANCO|registrador~1142_combout\;
\BANCO|ALT_INV_registrador~1141_combout\ <= NOT \BANCO|registrador~1141_combout\;
\BANCO|ALT_INV_registrador~1140_combout\ <= NOT \BANCO|registrador~1140_combout\;
\BANCO|ALT_INV_registrador~1139_combout\ <= NOT \BANCO|registrador~1139_combout\;
\BANCO|ALT_INV_registrador~135_q\ <= NOT \BANCO|registrador~135_q\;
\BANCO|ALT_INV_registrador~103_q\ <= NOT \BANCO|registrador~103_q\;
\BANCO|ALT_INV_registrador~1138_combout\ <= NOT \BANCO|registrador~1138_combout\;
\BANCO|ALT_INV_registrador~134_q\ <= NOT \BANCO|registrador~134_q\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\BANCO|ALT_INV_saidaA[30]~30_combout\ <= NOT \BANCO|saidaA[30]~30_combout\;
\BANCO|ALT_INV_saidaA[29]~29_combout\ <= NOT \BANCO|saidaA[29]~29_combout\;
\BANCO|ALT_INV_saidaA[28]~28_combout\ <= NOT \BANCO|saidaA[28]~28_combout\;
\BANCO|ALT_INV_saidaA[27]~27_combout\ <= NOT \BANCO|saidaA[27]~27_combout\;
\BANCO|ALT_INV_saidaA[26]~26_combout\ <= NOT \BANCO|saidaA[26]~26_combout\;
\BANCO|ALT_INV_saidaA[25]~25_combout\ <= NOT \BANCO|saidaA[25]~25_combout\;
\BANCO|ALT_INV_saidaA[24]~24_combout\ <= NOT \BANCO|saidaA[24]~24_combout\;
\BANCO|ALT_INV_saidaA[23]~23_combout\ <= NOT \BANCO|saidaA[23]~23_combout\;
\BANCO|ALT_INV_saidaA[22]~22_combout\ <= NOT \BANCO|saidaA[22]~22_combout\;
\BANCO|ALT_INV_saidaA[21]~21_combout\ <= NOT \BANCO|saidaA[21]~21_combout\;
\BANCO|ALT_INV_saidaA[20]~20_combout\ <= NOT \BANCO|saidaA[20]~20_combout\;
\BANCO|ALT_INV_saidaA[19]~19_combout\ <= NOT \BANCO|saidaA[19]~19_combout\;
\BANCO|ALT_INV_saidaA[18]~18_combout\ <= NOT \BANCO|saidaA[18]~18_combout\;
\BANCO|ALT_INV_saidaA[17]~17_combout\ <= NOT \BANCO|saidaA[17]~17_combout\;
\BANCO|ALT_INV_saidaA[16]~16_combout\ <= NOT \BANCO|saidaA[16]~16_combout\;
\BANCO|ALT_INV_saidaA[15]~15_combout\ <= NOT \BANCO|saidaA[15]~15_combout\;
\BANCO|ALT_INV_saidaA[14]~14_combout\ <= NOT \BANCO|saidaA[14]~14_combout\;
\BANCO|ALT_INV_saidaA[13]~13_combout\ <= NOT \BANCO|saidaA[13]~13_combout\;
\BANCO|ALT_INV_saidaA[12]~12_combout\ <= NOT \BANCO|saidaA[12]~12_combout\;
\BANCO|ALT_INV_saidaA[11]~11_combout\ <= NOT \BANCO|saidaA[11]~11_combout\;
\BANCO|ALT_INV_saidaA[10]~10_combout\ <= NOT \BANCO|saidaA[10]~10_combout\;
\BANCO|ALT_INV_saidaA[9]~9_combout\ <= NOT \BANCO|saidaA[9]~9_combout\;
\BANCO|ALT_INV_saidaA[8]~8_combout\ <= NOT \BANCO|saidaA[8]~8_combout\;
\BANCO|ALT_INV_saidaA[7]~7_combout\ <= NOT \BANCO|saidaA[7]~7_combout\;
\BANCO|ALT_INV_saidaA[6]~6_combout\ <= NOT \BANCO|saidaA[6]~6_combout\;
\BANCO|ALT_INV_saidaA[5]~5_combout\ <= NOT \BANCO|saidaA[5]~5_combout\;
\BANCO|ALT_INV_saidaA[4]~4_combout\ <= NOT \BANCO|saidaA[4]~4_combout\;
\BANCO|ALT_INV_saidaA[3]~3_combout\ <= NOT \BANCO|saidaA[3]~3_combout\;
\BANCO|ALT_INV_saidaA[2]~2_combout\ <= NOT \BANCO|saidaA[2]~2_combout\;
\BANCO|ALT_INV_saidaA[1]~1_combout\ <= NOT \BANCO|saidaA[1]~1_combout\;
\BANCO|ALT_INV_saidaA[0]~0_combout\ <= NOT \BANCO|saidaA[0]~0_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ALT_INV_escreveC~input_o\ <= NOT \escreveC~input_o\;
\ALT_INV_reset_pc~input_o\ <= NOT \reset_pc~input_o\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\BANCO|ALT_INV_registrador~1168_combout\ <= NOT \BANCO|registrador~1168_combout\;
\BANCO|ALT_INV_registrador~1167_combout\ <= NOT \BANCO|registrador~1167_combout\;

-- Location: IOOBUF_X50_Y0_N76
\Saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux31~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(0));

-- Location: IOOBUF_X32_Y0_N19
\Saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux30~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(1));

-- Location: IOOBUF_X89_Y6_N56
\Saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux29~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(2));

-- Location: IOOBUF_X50_Y0_N42
\Saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(3));

-- Location: IOOBUF_X89_Y38_N39
\Saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(4));

-- Location: IOOBUF_X64_Y0_N2
\Saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(5));

-- Location: IOOBUF_X89_Y4_N45
\Saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(6));

-- Location: IOOBUF_X28_Y0_N53
\Saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(7));

-- Location: IOOBUF_X89_Y6_N5
\Saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(8));

-- Location: IOOBUF_X89_Y4_N79
\Saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(9));

-- Location: IOOBUF_X40_Y0_N2
\Saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(10));

-- Location: IOOBUF_X58_Y0_N42
\Saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(11));

-- Location: IOOBUF_X89_Y38_N5
\Saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(12));

-- Location: IOOBUF_X68_Y0_N19
\Saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(13));

-- Location: IOOBUF_X78_Y81_N19
\Saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(14));

-- Location: IOOBUF_X54_Y0_N36
\Saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(15));

-- Location: IOOBUF_X56_Y0_N19
\Saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(16));

-- Location: IOOBUF_X80_Y81_N19
\Saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(17));

-- Location: IOOBUF_X38_Y0_N19
\Saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(18));

-- Location: IOOBUF_X52_Y0_N53
\Saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(19));

-- Location: IOOBUF_X89_Y8_N56
\Saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(20));

-- Location: IOOBUF_X32_Y0_N36
\Saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(21));

-- Location: IOOBUF_X68_Y0_N2
\Saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(22));

-- Location: IOOBUF_X89_Y36_N56
\Saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(23));

-- Location: IOOBUF_X34_Y0_N42
\Saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(24));

-- Location: IOOBUF_X52_Y0_N36
\Saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(25));

-- Location: IOOBUF_X50_Y0_N59
\Saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(26));

-- Location: IOOBUF_X80_Y81_N53
\Saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(27));

-- Location: IOOBUF_X54_Y0_N19
\Saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(28));

-- Location: IOOBUF_X54_Y0_N53
\Saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(29));

-- Location: IOOBUF_X89_Y37_N5
\Saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(30));

-- Location: IOOBUF_X72_Y0_N2
\Saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida(31));

-- Location: IOOBUF_X89_Y35_N96
\SaidaA1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(0));

-- Location: IOOBUF_X89_Y37_N39
\SaidaA1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(1));

-- Location: IOOBUF_X40_Y0_N53
\SaidaA1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(2));

-- Location: IOOBUF_X78_Y81_N2
\SaidaA1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(3));

-- Location: IOOBUF_X40_Y0_N19
\SaidaA1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(4));

-- Location: IOOBUF_X89_Y35_N79
\SaidaA1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(5));

-- Location: IOOBUF_X60_Y0_N19
\SaidaA1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(6));

-- Location: IOOBUF_X89_Y35_N45
\SaidaA1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(7));

-- Location: IOOBUF_X78_Y81_N36
\SaidaA1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(8));

-- Location: IOOBUF_X64_Y0_N19
\SaidaA1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(9));

-- Location: IOOBUF_X40_Y0_N36
\SaidaA1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(10));

-- Location: IOOBUF_X89_Y36_N22
\SaidaA1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(11));

-- Location: IOOBUF_X38_Y0_N36
\SaidaA1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(12));

-- Location: IOOBUF_X56_Y0_N2
\SaidaA1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(13));

-- Location: IOOBUF_X38_Y0_N53
\SaidaA1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(14));

-- Location: IOOBUF_X56_Y0_N36
\SaidaA1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(15));

-- Location: IOOBUF_X50_Y0_N93
\SaidaA1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(16));

-- Location: IOOBUF_X89_Y38_N56
\SaidaA1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(17));

-- Location: IOOBUF_X89_Y9_N39
\SaidaA1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(18));

-- Location: IOOBUF_X89_Y4_N62
\SaidaA1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(19));

-- Location: IOOBUF_X80_Y81_N2
\SaidaA1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(20));

-- Location: IOOBUF_X89_Y8_N22
\SaidaA1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(21));

-- Location: IOOBUF_X72_Y0_N53
\SaidaA1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(22));

-- Location: IOOBUF_X89_Y8_N39
\SaidaA1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(23));

-- Location: IOOBUF_X34_Y0_N76
\SaidaA1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(24));

-- Location: IOOBUF_X72_Y0_N36
\SaidaA1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(25));

-- Location: IOOBUF_X70_Y0_N36
\SaidaA1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(26));

-- Location: IOOBUF_X36_Y0_N53
\SaidaA1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(27));

-- Location: IOOBUF_X70_Y0_N19
\SaidaA1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(28));

-- Location: IOOBUF_X89_Y8_N5
\SaidaA1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(29));

-- Location: IOOBUF_X89_Y36_N5
\SaidaA1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(30));

-- Location: IOOBUF_X36_Y0_N36
\SaidaA1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_SaidaA1(31));

-- Location: IOOBUF_X52_Y0_N19
\SaidaB1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(0));

-- Location: IOOBUF_X66_Y0_N59
\SaidaB1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(1));

-- Location: IOOBUF_X62_Y0_N2
\SaidaB1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(2));

-- Location: IOOBUF_X58_Y0_N76
\SaidaB1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(3));

-- Location: IOOBUF_X68_Y0_N53
\SaidaB1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(4));

-- Location: IOOBUF_X72_Y0_N19
\SaidaB1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(5));

-- Location: IOOBUF_X89_Y9_N56
\SaidaB1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(6));

-- Location: IOOBUF_X56_Y0_N53
\SaidaB1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(7));

-- Location: IOOBUF_X64_Y0_N53
\SaidaB1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(8));

-- Location: IOOBUF_X60_Y0_N53
\SaidaB1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(9));

-- Location: IOOBUF_X66_Y0_N93
\SaidaB1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(10));

-- Location: IOOBUF_X52_Y0_N2
\SaidaB1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(11));

-- Location: IOOBUF_X78_Y81_N53
\SaidaB1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(12));

-- Location: IOOBUF_X34_Y0_N59
\SaidaB1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(13));

-- Location: IOOBUF_X89_Y37_N22
\SaidaB1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(14));

-- Location: IOOBUF_X30_Y0_N2
\SaidaB1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(15));

-- Location: IOOBUF_X60_Y0_N2
\SaidaB1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(16));

-- Location: IOOBUF_X62_Y0_N53
\SaidaB1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(17));

-- Location: IOOBUF_X89_Y37_N56
\SaidaB1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(18));

-- Location: IOOBUF_X34_Y0_N93
\SaidaB1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(19));

-- Location: IOOBUF_X89_Y4_N96
\SaidaB1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(20));

-- Location: IOOBUF_X38_Y0_N2
\SaidaB1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(21));

-- Location: IOOBUF_X68_Y0_N36
\SaidaB1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(22));

-- Location: IOOBUF_X62_Y0_N19
\SaidaB1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(23));

-- Location: IOOBUF_X60_Y0_N36
\SaidaB1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(24));

-- Location: IOOBUF_X54_Y0_N2
\SaidaB1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(25));

-- Location: IOOBUF_X66_Y0_N42
\SaidaB1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(26));

-- Location: IOOBUF_X58_Y0_N59
\SaidaB1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(27));

-- Location: IOOBUF_X64_Y0_N36
\SaidaB1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(28));

-- Location: IOOBUF_X66_Y0_N76
\SaidaB1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(29));

-- Location: IOOBUF_X62_Y0_N36
\SaidaB1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(30));

-- Location: IOOBUF_X32_Y0_N2
\SaidaB1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_SaidaB1(31));

-- Location: IOOBUF_X30_Y81_N19
\SaidaROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(0));

-- Location: IOOBUF_X62_Y81_N19
\SaidaROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(1));

-- Location: IOOBUF_X2_Y0_N76
\SaidaROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(2));

-- Location: IOOBUF_X28_Y0_N2
\SaidaROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(3));

-- Location: IOOBUF_X34_Y81_N59
\SaidaROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(4));

-- Location: IOOBUF_X89_Y6_N22
\SaidaROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(5));

-- Location: IOOBUF_X84_Y81_N19
\SaidaROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(6));

-- Location: IOOBUF_X58_Y81_N42
\SaidaROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(7));

-- Location: IOOBUF_X34_Y81_N76
\SaidaROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(8));

-- Location: IOOBUF_X72_Y81_N36
\SaidaROM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(9));

-- Location: IOOBUF_X88_Y81_N37
\SaidaROM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(10));

-- Location: IOOBUF_X62_Y81_N2
\SaidaROM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(11));

-- Location: IOOBUF_X70_Y0_N2
\SaidaROM[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(12));

-- Location: IOOBUF_X36_Y0_N2
\SaidaROM[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(13));

-- Location: IOOBUF_X26_Y0_N93
\SaidaROM[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(14));

-- Location: IOOBUF_X56_Y81_N2
\SaidaROM[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(15));

-- Location: IOOBUF_X70_Y0_N53
\SaidaROM[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(16));

-- Location: IOOBUF_X36_Y0_N19
\SaidaROM[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(17));

-- Location: IOOBUF_X88_Y81_N3
\SaidaROM[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(18));

-- Location: IOOBUF_X66_Y81_N42
\SaidaROM[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(19));

-- Location: IOOBUF_X26_Y0_N42
\SaidaROM[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(20));

-- Location: IOOBUF_X89_Y9_N5
\SaidaROM[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(21));

-- Location: IOOBUF_X89_Y9_N22
\SaidaROM[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(22));

-- Location: IOOBUF_X62_Y81_N36
\SaidaROM[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_SaidaROM(23));

-- Location: IOOBUF_X40_Y81_N53
\SaidaROM[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(24));

-- Location: IOOBUF_X54_Y81_N36
\SaidaROM[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(25));

-- Location: IOOBUF_X89_Y38_N22
\SaidaROM[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(26));

-- Location: IOOBUF_X74_Y81_N59
\SaidaROM[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(27));

-- Location: IOOBUF_X4_Y0_N36
\SaidaROM[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(28));

-- Location: IOOBUF_X4_Y0_N2
\SaidaROM[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(29));

-- Location: IOOBUF_X32_Y81_N2
\SaidaROM[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(30));

-- Location: IOOBUF_X54_Y81_N19
\SaidaROM[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaROM(31));

-- Location: IOOBUF_X60_Y81_N36
\SaidaFunct[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaFunct(0));

-- Location: IOOBUF_X68_Y81_N53
\SaidaFunct[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_SaidaFunct(1));

-- Location: IOOBUF_X74_Y81_N76
\SaidaFunct[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaFunct(2));

-- Location: IOOBUF_X82_Y81_N42
\SaidaFunct[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaFunct(3));

-- Location: IOOBUF_X70_Y81_N53
\SaidaFunct[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SaidaFunct(4));

-- Location: IOOBUF_X89_Y6_N39
\SaidaFunct[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_SaidaFunct(5));

-- Location: IOIBUF_X89_Y35_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X78_Y11_N39
\PC|PC|output[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|PC|output[2]~0_combout\ = !\PC|PC|output\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|PC|ALT_INV_output\(2),
	combout => \PC|PC|output[2]~0_combout\);

-- Location: IOIBUF_X89_Y36_N38
\reset_pc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_pc,
	o => \reset_pc~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\enable_pc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable_pc,
	o => \enable_pc~input_o\);

-- Location: FF_X78_Y12_N8
\PC|PC|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \PC|PC|output[2]~0_combout\,
	clrn => \ALT_INV_reset_pc~input_o\,
	sload => VCC,
	ena => \enable_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC|output\(2));

-- Location: MLABCELL_X78_Y12_N30
\PC|Somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|Somador|Add0~9_sumout\ = SUM(( \PC|PC|output\(3) ) + ( \PC|PC|output\(2) ) + ( !VCC ))
-- \PC|Somador|Add0~10\ = CARRY(( \PC|PC|output\(3) ) + ( \PC|PC|output\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|PC|ALT_INV_output\(2),
	datad => \PC|PC|ALT_INV_output\(3),
	cin => GND,
	sumout => \PC|Somador|Add0~9_sumout\,
	cout => \PC|Somador|Add0~10\);

-- Location: FF_X78_Y12_N32
\PC|PC|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \PC|Somador|Add0~9_sumout\,
	clrn => \ALT_INV_reset_pc~input_o\,
	ena => \enable_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC|output\(3));

-- Location: MLABCELL_X78_Y12_N33
\PC|Somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|Somador|Add0~13_sumout\ = SUM(( \PC|PC|output\(4) ) + ( GND ) + ( \PC|Somador|Add0~10\ ))
-- \PC|Somador|Add0~14\ = CARRY(( \PC|PC|output\(4) ) + ( GND ) + ( \PC|Somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|PC|ALT_INV_output\(4),
	cin => \PC|Somador|Add0~10\,
	sumout => \PC|Somador|Add0~13_sumout\,
	cout => \PC|Somador|Add0~14\);

-- Location: FF_X78_Y12_N35
\PC|PC|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \PC|Somador|Add0~13_sumout\,
	clrn => \ALT_INV_reset_pc~input_o\,
	ena => \enable_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC|output\(4));

-- Location: MLABCELL_X78_Y12_N36
\PC|Somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|Somador|Add0~17_sumout\ = SUM(( \PC|PC|output\(5) ) + ( GND ) + ( \PC|Somador|Add0~14\ ))
-- \PC|Somador|Add0~18\ = CARRY(( \PC|PC|output\(5) ) + ( GND ) + ( \PC|Somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|PC|ALT_INV_output\(5),
	cin => \PC|Somador|Add0~14\,
	sumout => \PC|Somador|Add0~17_sumout\,
	cout => \PC|Somador|Add0~18\);

-- Location: FF_X78_Y12_N38
\PC|PC|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \PC|Somador|Add0~17_sumout\,
	clrn => \ALT_INV_reset_pc~input_o\,
	ena => \enable_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC|output\(5));

-- Location: MLABCELL_X78_Y12_N39
\PC|Somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|Somador|Add0~5_sumout\ = SUM(( \PC|PC|output\(6) ) + ( GND ) + ( \PC|Somador|Add0~18\ ))
-- \PC|Somador|Add0~6\ = CARRY(( \PC|PC|output\(6) ) + ( GND ) + ( \PC|Somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|PC|ALT_INV_output\(6),
	cin => \PC|Somador|Add0~18\,
	sumout => \PC|Somador|Add0~5_sumout\,
	cout => \PC|Somador|Add0~6\);

-- Location: FF_X78_Y12_N41
\PC|PC|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \PC|Somador|Add0~5_sumout\,
	clrn => \ALT_INV_reset_pc~input_o\,
	ena => \enable_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC|output\(6));

-- Location: MLABCELL_X78_Y12_N42
\PC|Somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|Somador|Add0~1_sumout\ = SUM(( \PC|PC|output\(7) ) + ( GND ) + ( \PC|Somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|PC|ALT_INV_output\(7),
	cin => \PC|Somador|Add0~6\,
	sumout => \PC|Somador|Add0~1_sumout\);

-- Location: FF_X78_Y12_N44
\PC|PC|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \PC|Somador|Add0~1_sumout\,
	clrn => \ALT_INV_reset_pc~input_o\,
	ena => \enable_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC|output\(7));

-- Location: MLABCELL_X78_Y12_N51
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\PC|PC|output\(7) & !\PC|PC|output\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|PC|ALT_INV_output\(7),
	datac => \PC|PC|ALT_INV_output\(6),
	combout => \ROM|memROM~0_combout\);

-- Location: MLABCELL_X78_Y11_N57
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \ROM|memROM~0_combout\ & ( (((\PC|PC|output\(3) & \PC|PC|output\(2))) # (\PC|PC|output\(4))) # (\PC|PC|output\(5)) ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC|ALT_INV_output\(5),
	datab => \PC|PC|ALT_INV_output\(4),
	datac => \PC|PC|ALT_INV_output\(3),
	datad => \PC|PC|ALT_INV_output\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

-- Location: MLABCELL_X78_Y12_N9
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \PC|PC|output\(3) & ( !\PC|PC|output\(2) & ( (!\PC|PC|output\(4) & (!\PC|PC|output\(7) & (!\PC|PC|output\(6) & !\PC|PC|output\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC|ALT_INV_output\(4),
	datab => \PC|PC|ALT_INV_output\(7),
	datac => \PC|PC|ALT_INV_output\(6),
	datad => \PC|PC|ALT_INV_output\(5),
	datae => \PC|PC|ALT_INV_output\(3),
	dataf => \PC|PC|ALT_INV_output\(2),
	combout => \ROM|memROM~2_combout\);

-- Location: MLABCELL_X78_Y12_N57
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( !\PC|PC|output\(5) & ( !\PC|PC|output\(6) & ( (!\PC|PC|output\(7) & (!\PC|PC|output\(4) & (!\PC|PC|output\(2) $ (!\PC|PC|output\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC|ALT_INV_output\(7),
	datab => \PC|PC|ALT_INV_output\(2),
	datac => \PC|PC|ALT_INV_output\(3),
	datad => \PC|PC|ALT_INV_output\(4),
	datae => \PC|PC|ALT_INV_output\(5),
	dataf => \PC|PC|ALT_INV_output\(6),
	combout => \ROM|memROM~6_combout\);

-- Location: MLABCELL_X78_Y12_N0
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\PC|PC|output\(3) & ( !\PC|PC|output\(6) & ( (!\PC|PC|output\(4) & (!\PC|PC|output\(2) & (!\PC|PC|output\(5) & !\PC|PC|output\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC|ALT_INV_output\(4),
	datab => \PC|PC|ALT_INV_output\(2),
	datac => \PC|PC|ALT_INV_output\(5),
	datad => \PC|PC|ALT_INV_output\(7),
	datae => \PC|PC|ALT_INV_output\(3),
	dataf => \PC|PC|ALT_INV_output\(6),
	combout => \ROM|memROM~4_combout\);

-- Location: MLABCELL_X78_Y12_N48
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\PC|PC|output\(6) & ( (!\PC|PC|output\(5) & (!\PC|PC|output\(7) & (!\PC|PC|output\(4) & !\PC|PC|output\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC|ALT_INV_output\(5),
	datab => \PC|PC|ALT_INV_output\(7),
	datac => \PC|PC|ALT_INV_output\(4),
	datad => \PC|PC|ALT_INV_output\(3),
	dataf => \PC|PC|ALT_INV_output\(6),
	combout => \ROM|memROM~3_combout\);

-- Location: MLABCELL_X78_Y11_N54
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \PC|PC|output\(2) & ( (!\PC|PC|output\(5) & (!\PC|PC|output\(4) & !\PC|PC|output\(3))) ) ) # ( !\PC|PC|output\(2) & ( (!\PC|PC|output\(5) & (!\PC|PC|output\(4) & \PC|PC|output\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC|ALT_INV_output\(5),
	datab => \PC|PC|ALT_INV_output\(4),
	datac => \PC|PC|ALT_INV_output\(3),
	dataf => \PC|PC|ALT_INV_output\(2),
	combout => \ROM|memROM~5_combout\);

-- Location: IOIBUF_X30_Y0_N35
\escreveC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_escreveC,
	o => \escreveC~input_o\);

-- Location: MLABCELL_X78_Y11_N36
\BANCO|registrador~1300\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1300_combout\ = ( \escreveC~input_o\ & ( (\ROM|memROM~4_combout\ & (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~0_combout\) # (!\ROM|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010100000000000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ALT_INV_escreveC~input_o\,
	combout => \BANCO|registrador~1300_combout\);

-- Location: FF_X77_Y13_N14
\BANCO|registrador~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~1_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~166_q\);

-- Location: MLABCELL_X78_Y12_N6
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \PC|PC|output\(2) & ( !\PC|PC|output\(3) & ( (!\PC|PC|output\(4) & (!\PC|PC|output\(7) & (!\PC|PC|output\(5) & !\PC|PC|output\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC|ALT_INV_output\(4),
	datab => \PC|PC|ALT_INV_output\(7),
	datac => \PC|PC|ALT_INV_output\(5),
	datad => \PC|PC|ALT_INV_output\(6),
	datae => \PC|PC|ALT_INV_output\(2),
	dataf => \PC|PC|ALT_INV_output\(3),
	combout => \ROM|memROM~7_combout\);

-- Location: MLABCELL_X78_Y13_N45
\BANCO|registrador~1301\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1301_combout\ = !\ULA|Mux31~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Mux31~0_combout\,
	combout => \BANCO|registrador~1301_combout\);

-- Location: MLABCELL_X78_Y11_N3
\BANCO|registrador~1299\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1299_combout\ = ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~5_combout\ & (\ROM|memROM~2_combout\ & (\escreveC~input_o\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ALT_INV_escreveC~input_o\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCO|registrador~1299_combout\);

-- Location: FF_X78_Y13_N47
\BANCO|registrador~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~1301_combout\,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~134_q\);

-- Location: MLABCELL_X78_Y11_N33
\BANCO|registrador~1297\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1297_combout\ = ( \escreveC~input_o\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & ((!\ROM|memROM~5_combout\) # (!\ROM|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ALT_INV_escreveC~input_o\,
	combout => \BANCO|registrador~1297_combout\);

-- Location: FF_X78_Y13_N32
\BANCO|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~1_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~38_q\);

-- Location: MLABCELL_X78_Y11_N30
\BANCO|registrador~1298\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1298_combout\ = ( !\ROM|memROM~2_combout\ & ( (\ROM|memROM~5_combout\ & (\ROM|memROM~0_combout\ & (\escreveC~input_o\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ALT_INV_escreveC~input_o\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1298_combout\);

-- Location: FF_X78_Y13_N14
\BANCO|registrador~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~1_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~102_q\);

-- Location: MLABCELL_X78_Y13_N15
\BANCO|registrador~1169\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1169_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((\BANCO|registrador~102_q\))) # (\ROM|memROM~3_combout\ & (!\BANCO|registrador~134_q\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\ROM|memROM~3_combout\) # 
-- (\BANCO|registrador~38_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000011111010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~134_q\,
	datab => \BANCO|ALT_INV_registrador~38_q\,
	datac => \BANCO|ALT_INV_registrador~102_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1169_combout\);

-- Location: MLABCELL_X78_Y13_N6
\BANCO|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[0]~0_combout\ = ( \BANCO|registrador~1169_combout\ & ( (!\ROM|memROM~2_combout\ & \ROM|memROM~3_combout\) ) ) # ( !\BANCO|registrador~1169_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~166_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \BANCO|ALT_INV_registrador~166_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1169_combout\,
	combout => \BANCO|saidaA[0]~0_combout\);

-- Location: MLABCELL_X78_Y13_N39
\BANCO|registrador~1138\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1138_combout\ = ( \ROM|memROM~6_combout\ & ( (!\BANCO|registrador~134_q\) # (!\ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & ((\BANCO|registrador~38_q\))) # (\ROM|memROM~4_combout\ & 
-- (\BANCO|registrador~102_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~134_q\,
	datab => \BANCO|ALT_INV_registrador~102_q\,
	datac => \BANCO|ALT_INV_registrador~38_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1138_combout\);

-- Location: LABCELL_X79_Y13_N0
\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( \ROM|memROM~2_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

-- Location: LABCELL_X79_Y13_N3
\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \BANCO|saidaA[0]~0_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1138_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \BANCO|saidaA[0]~0_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1138_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BANCO|ALT_INV_saidaA[0]~0_combout\,
	dataf => \BANCO|ALT_INV_registrador~1138_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

-- Location: LABCELL_X77_Y13_N9
\ULA|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux31~0_combout\ = ( \ULA|Add0~1_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|Mux31~0_combout\);

-- Location: FF_X77_Y13_N40
\BANCO|registrador~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~5_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~167_q\);

-- Location: MLABCELL_X78_Y13_N57
\BANCO|registrador~1303\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1303_combout\ = !\ULA|Mux30~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ALT_INV_Mux30~0_combout\,
	combout => \BANCO|registrador~1303_combout\);

-- Location: FF_X78_Y13_N59
\BANCO|registrador~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~1303_combout\,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~135_q\);

-- Location: FF_X77_Y13_N11
\BANCO|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~5_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~39_q\);

-- Location: MLABCELL_X78_Y13_N36
\BANCO|registrador~1302\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1302_combout\ = !\ULA|Mux30~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Mux30~0_combout\,
	combout => \BANCO|registrador~1302_combout\);

-- Location: FF_X78_Y13_N38
\BANCO|registrador~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~1302_combout\,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~103_q\);

-- Location: LABCELL_X77_Y13_N39
\BANCO|registrador~1173\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1173_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\BANCO|registrador~103_q\))) # (\ROM|memROM~3_combout\ & (!\BANCO|registrador~135_q\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~39_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111100001010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~135_q\,
	datab => \BANCO|ALT_INV_registrador~39_q\,
	datac => \BANCO|ALT_INV_registrador~103_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1173_combout\);

-- Location: LABCELL_X77_Y13_N6
\BANCO|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[1]~1_combout\ = ( \BANCO|registrador~1173_combout\ & ( (!\ROM|memROM~2_combout\ & \ROM|memROM~3_combout\) ) ) # ( !\BANCO|registrador~1173_combout\ & ( (!\ROM|memROM~7_combout\ & (\BANCO|registrador~167_q\ & \ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \BANCO|ALT_INV_registrador~167_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1173_combout\,
	combout => \BANCO|saidaA[1]~1_combout\);

-- Location: MLABCELL_X78_Y13_N21
\BANCO|registrador~1139\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1139_combout\ = ( \ROM|memROM~6_combout\ & ( (!\BANCO|registrador~135_q\ & \ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & ((\BANCO|registrador~39_q\))) # (\ROM|memROM~4_combout\ & 
-- (!\BANCO|registrador~103_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011111010101000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~103_q\,
	datab => \BANCO|ALT_INV_registrador~135_q\,
	datac => \BANCO|ALT_INV_registrador~39_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1139_combout\);

-- Location: LABCELL_X79_Y13_N6
\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \BANCO|saidaA[1]~1_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1139_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \BANCO|saidaA[1]~1_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1139_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[1]~1_combout\,
	dataf => \BANCO|ALT_INV_registrador~1139_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

-- Location: MLABCELL_X78_Y13_N18
\ULA|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux30~0_combout\ = ( \ULA|Add0~5_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|Mux30~0_combout\);

-- Location: FF_X77_Y13_N58
\BANCO|registrador~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~168_q\);

-- Location: FF_X78_Y13_N29
\BANCO|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~40_q\);

-- Location: FF_X78_Y13_N44
\BANCO|registrador~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~136_q\);

-- Location: FF_X78_Y13_N2
\BANCO|registrador~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~104_q\);

-- Location: MLABCELL_X78_Y13_N33
\BANCO|registrador~1177\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1177_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((\BANCO|registrador~104_q\))) # (\ROM|memROM~3_combout\ & (\BANCO|registrador~136_q\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~40_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~40_q\,
	datab => \BANCO|ALT_INV_registrador~136_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~104_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1177_combout\);

-- Location: MLABCELL_X78_Y13_N27
\BANCO|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[2]~2_combout\ = ( \BANCO|registrador~1177_combout\ & ( (!\ROM|memROM~2_combout\ & \ROM|memROM~3_combout\) ) ) # ( !\BANCO|registrador~1177_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~168_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \BANCO|ALT_INV_registrador~168_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1177_combout\,
	combout => \BANCO|saidaA[2]~2_combout\);

-- Location: MLABCELL_X78_Y13_N0
\BANCO|registrador~1140\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1140_combout\ = ( \BANCO|registrador~136_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & (\BANCO|registrador~40_q\))) # (\ROM|memROM~4_combout\ & (((\BANCO|registrador~104_q\)) # (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\BANCO|registrador~136_q\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & (\BANCO|registrador~40_q\)) # (\ROM|memROM~4_combout\ & ((\BANCO|registrador~104_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~40_q\,
	datad => \BANCO|ALT_INV_registrador~104_q\,
	dataf => \BANCO|ALT_INV_registrador~136_q\,
	combout => \BANCO|registrador~1140_combout\);

-- Location: LABCELL_X79_Y13_N9
\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \BANCO|saidaA[2]~2_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1140_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \BANCO|saidaA[2]~2_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1140_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[2]~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1140_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

-- Location: LABCELL_X81_Y10_N48
\ULA|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux29~0_combout\ = ( \ULA|Add0~9_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \ULA|Mux29~0_combout\);

-- Location: FF_X80_Y13_N23
\BANCO|registrador~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~13_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~137_q\);

-- Location: FF_X80_Y13_N41
\BANCO|registrador~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~13_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~105_q\);

-- Location: FF_X80_Y13_N43
\BANCO|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~13_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~41_q\);

-- Location: LABCELL_X80_Y13_N36
\BANCO|registrador~1141\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1141_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~6_combout\ & ( \BANCO|registrador~137_q\ ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ & ( \BANCO|registrador~105_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( 
-- !\ROM|memROM~6_combout\ & ( \BANCO|registrador~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~137_q\,
	datab => \BANCO|ALT_INV_registrador~105_q\,
	datac => \BANCO|ALT_INV_registrador~41_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1141_combout\);

-- Location: FF_X77_Y12_N22
\BANCO|registrador~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~13_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~169_q\);

-- Location: MLABCELL_X78_Y12_N15
\BANCO|registrador~1181\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1181_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~105_q\)) # (\ROM|memROM~3_combout\ & ((\BANCO|registrador~137_q\))) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~41_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~41_q\,
	datab => \BANCO|ALT_INV_registrador~105_q\,
	datac => \BANCO|ALT_INV_registrador~137_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1181_combout\);

-- Location: MLABCELL_X78_Y12_N18
\BANCO|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[3]~3_combout\ = ( \BANCO|registrador~1181_combout\ & ( (\ROM|memROM~3_combout\ & !\ROM|memROM~2_combout\) ) ) # ( !\BANCO|registrador~1181_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~169_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BANCO|ALT_INV_registrador~169_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1181_combout\,
	combout => \BANCO|saidaA[3]~3_combout\);

-- Location: LABCELL_X79_Y13_N12
\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1141_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \BANCO|saidaA[3]~3_combout\ ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1141_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \BANCO|saidaA[3]~3_combout\ ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_registrador~1141_combout\,
	dataf => \BANCO|ALT_INV_saidaA[3]~3_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

-- Location: LABCELL_X81_Y12_N33
\ULA|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux28~0_combout\ = ( \ULA|Add0~13_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|Mux28~0_combout\);

-- Location: FF_X77_Y13_N37
\BANCO|registrador~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~17_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~170_q\);

-- Location: FF_X78_Y12_N56
\BANCO|registrador~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~17_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~106_q\);

-- Location: FF_X77_Y12_N1
\BANCO|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~17_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~42_q\);

-- Location: FF_X77_Y12_N56
\BANCO|registrador~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~17_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~138_q\);

-- Location: MLABCELL_X78_Y12_N24
\BANCO|registrador~1185\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1185_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~106_q\)) # (\ROM|memROM~3_combout\ & ((\BANCO|registrador~138_q\))) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~42_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~106_q\,
	datab => \BANCO|ALT_INV_registrador~42_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~138_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1185_combout\);

-- Location: MLABCELL_X78_Y12_N21
\BANCO|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[4]~4_combout\ = ( \BANCO|registrador~1185_combout\ & ( (\ROM|memROM~3_combout\ & !\ROM|memROM~2_combout\) ) ) # ( !\BANCO|registrador~1185_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \BANCO|registrador~170_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BANCO|ALT_INV_registrador~170_q\,
	dataf => \BANCO|ALT_INV_registrador~1185_combout\,
	combout => \BANCO|saidaA[4]~4_combout\);

-- Location: LABCELL_X77_Y12_N45
\BANCO|registrador~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1142_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~6_combout\ & ( \BANCO|registrador~138_q\ ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ & ( \BANCO|registrador~106_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( 
-- !\ROM|memROM~6_combout\ & ( \BANCO|registrador~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~138_q\,
	datab => \BANCO|ALT_INV_registrador~106_q\,
	datac => \BANCO|ALT_INV_registrador~42_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1142_combout\);

-- Location: LABCELL_X79_Y13_N15
\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \BANCO|saidaA[4]~4_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1142_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \BANCO|saidaA[4]~4_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1142_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[4]~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1142_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

-- Location: LABCELL_X79_Y14_N33
\ULA|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux27~0_combout\ = ( \ULA|Add0~17_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \ULA|Mux27~0_combout\);

-- Location: LABCELL_X80_Y11_N27
\BANCO|registrador~171feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~171feeder_combout\ = ( \ULA|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \BANCO|registrador~171feeder_combout\);

-- Location: FF_X80_Y11_N28
\BANCO|registrador~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~171feeder_combout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~171_q\);

-- Location: FF_X78_Y11_N38
\BANCO|registrador~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~21_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~139_q\);

-- Location: FF_X78_Y11_N29
\BANCO|registrador~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~21_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~107_q\);

-- Location: FF_X78_Y11_N47
\BANCO|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~21_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~43_q\);

-- Location: MLABCELL_X78_Y11_N24
\BANCO|registrador~1189\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1189_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~2_combout\ ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~139_q\ & \ROM|memROM~7_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & ((\BANCO|registrador~43_q\))) # (\ROM|memROM~7_combout\ & (\BANCO|registrador~107_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~139_q\,
	datab => \BANCO|ALT_INV_registrador~107_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BANCO|ALT_INV_registrador~43_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1189_combout\);

-- Location: MLABCELL_X78_Y11_N12
\BANCO|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[5]~5_combout\ = ( \BANCO|registrador~1189_combout\ & ( (\ROM|memROM~3_combout\ & !\ROM|memROM~2_combout\) ) ) # ( !\BANCO|registrador~1189_combout\ & ( (\BANCO|registrador~171_q\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~171_q\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1189_combout\,
	combout => \BANCO|saidaA[5]~5_combout\);

-- Location: MLABCELL_X78_Y11_N48
\BANCO|registrador~1143\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1143_combout\ = ( \BANCO|registrador~43_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\)) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & (\BANCO|registrador~107_q\)) # (\ROM|memROM~6_combout\ & 
-- ((\BANCO|registrador~139_q\))))) ) ) # ( !\BANCO|registrador~43_q\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & (\BANCO|registrador~107_q\)) # (\ROM|memROM~6_combout\ & ((\BANCO|registrador~139_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~107_q\,
	datad => \BANCO|ALT_INV_registrador~139_q\,
	dataf => \BANCO|ALT_INV_registrador~43_q\,
	combout => \BANCO|registrador~1143_combout\);

-- Location: LABCELL_X79_Y13_N18
\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \BANCO|saidaA[5]~5_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1143_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \BANCO|saidaA[5]~5_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1143_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[5]~5_combout\,
	dataf => \BANCO|ALT_INV_registrador~1143_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

-- Location: LABCELL_X80_Y11_N15
\ULA|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux26~0_combout\ = ( \ULA|Add0~21_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \ULA|Mux26~0_combout\);

-- Location: FF_X79_Y12_N40
\BANCO|registrador~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~25_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~172_q\);

-- Location: FF_X78_Y13_N35
\BANCO|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~25_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~44_q\);

-- Location: FF_X78_Y13_N17
\BANCO|registrador~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~25_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~108_q\);

-- Location: FF_X78_Y13_N20
\BANCO|registrador~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~25_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~140_q\);

-- Location: LABCELL_X77_Y13_N54
\BANCO|registrador~1193\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1193_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~108_q\)) # (\ROM|memROM~3_combout\ & ((\BANCO|registrador~140_q\))) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~44_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~44_q\,
	datab => \BANCO|ALT_INV_registrador~108_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~140_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1193_combout\);

-- Location: MLABCELL_X78_Y13_N9
\BANCO|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[6]~6_combout\ = ( \BANCO|registrador~1193_combout\ & ( (!\ROM|memROM~2_combout\ & \ROM|memROM~3_combout\) ) ) # ( !\BANCO|registrador~1193_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~172_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \BANCO|ALT_INV_registrador~172_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1193_combout\,
	combout => \BANCO|saidaA[6]~6_combout\);

-- Location: MLABCELL_X78_Y13_N42
\BANCO|registrador~1144\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1144_combout\ = ( \ROM|memROM~6_combout\ & ( (\BANCO|registrador~140_q\ & \ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & ((\BANCO|registrador~44_q\))) # (\ROM|memROM~4_combout\ & 
-- (\BANCO|registrador~108_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~108_q\,
	datab => \BANCO|ALT_INV_registrador~140_q\,
	datac => \BANCO|ALT_INV_registrador~44_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1144_combout\);

-- Location: LABCELL_X79_Y13_N21
\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \BANCO|saidaA[6]~6_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1144_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \BANCO|saidaA[6]~6_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1144_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[6]~6_combout\,
	dataf => \BANCO|ALT_INV_registrador~1144_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

-- Location: LABCELL_X80_Y11_N54
\ULA|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux25~0_combout\ = ( !\ROM|memROM~1_combout\ & ( \ULA|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Add0~25_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ULA|Mux25~0_combout\);

-- Location: LABCELL_X80_Y11_N33
\BANCO|registrador~173feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~173feeder_combout\ = ( \ULA|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \BANCO|registrador~173feeder_combout\);

-- Location: FF_X80_Y11_N35
\BANCO|registrador~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~173feeder_combout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~173_q\);

-- Location: FF_X79_Y11_N32
\BANCO|registrador~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~29_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~109_q\);

-- Location: FF_X79_Y11_N41
\BANCO|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~29_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~45_q\);

-- Location: FF_X79_Y11_N26
\BANCO|registrador~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~29_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~141_q\);

-- Location: LABCELL_X79_Y11_N33
\BANCO|registrador~1197\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1197_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~2_combout\ ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~2_combout\ & ( (\ROM|memROM~7_combout\ & \BANCO|registrador~141_q\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & ((\BANCO|registrador~45_q\))) # (\ROM|memROM~7_combout\ & (\BANCO|registrador~109_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~109_q\,
	datab => \BANCO|ALT_INV_registrador~45_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BANCO|ALT_INV_registrador~141_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1197_combout\);

-- Location: LABCELL_X79_Y11_N36
\BANCO|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[7]~7_combout\ = ( \ROM|memROM~3_combout\ & ( \BANCO|registrador~1197_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( \ROM|memROM~3_combout\ & ( !\BANCO|registrador~1197_combout\ & ( (\BANCO|registrador~173_q\ & (\ROM|memROM~2_combout\ & 
-- !\ROM|memROM~7_combout\)) ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\BANCO|registrador~1197_combout\ & ( (\BANCO|registrador~173_q\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~173_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1197_combout\,
	combout => \BANCO|saidaA[7]~7_combout\);

-- Location: LABCELL_X79_Y11_N54
\BANCO|registrador~1145\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1145_combout\ = ( \ROM|memROM~4_combout\ & ( (!\ROM|memROM~6_combout\ & ((\BANCO|registrador~109_q\))) # (\ROM|memROM~6_combout\ & (\BANCO|registrador~141_q\)) ) ) # ( !\ROM|memROM~4_combout\ & ( (\BANCO|registrador~45_q\ & 
-- !\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~141_q\,
	datab => \BANCO|ALT_INV_registrador~45_q\,
	datac => \BANCO|ALT_INV_registrador~109_q\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \BANCO|registrador~1145_combout\);

-- Location: LABCELL_X79_Y13_N24
\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \BANCO|saidaA[7]~7_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1145_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( \BANCO|saidaA[7]~7_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1145_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_saidaA[7]~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1145_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

-- Location: LABCELL_X80_Y11_N51
\ULA|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux24~0_combout\ = ( \ULA|Add0~29_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \ULA|Mux24~0_combout\);

-- Location: FF_X80_Y11_N1
\BANCO|registrador~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~33_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~174_q\);

-- Location: FF_X79_Y11_N2
\BANCO|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~33_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~46_q\);

-- Location: FF_X79_Y11_N47
\BANCO|registrador~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~33_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~142_q\);

-- Location: FF_X79_Y11_N14
\BANCO|registrador~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~33_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~110_q\);

-- Location: LABCELL_X79_Y11_N15
\BANCO|registrador~1201\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1201_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~2_combout\ ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~142_q\ & \ROM|memROM~7_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\BANCO|registrador~46_q\)) # (\ROM|memROM~7_combout\ & ((\BANCO|registrador~110_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~46_q\,
	datab => \BANCO|ALT_INV_registrador~142_q\,
	datac => \BANCO|ALT_INV_registrador~110_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1201_combout\);

-- Location: LABCELL_X79_Y11_N3
\BANCO|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[8]~8_combout\ = ( \BANCO|registrador~1201_combout\ & ( (!\ROM|memROM~2_combout\ & \ROM|memROM~3_combout\) ) ) # ( !\BANCO|registrador~1201_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~174_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \BANCO|ALT_INV_registrador~174_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1201_combout\,
	combout => \BANCO|saidaA[8]~8_combout\);

-- Location: LABCELL_X79_Y11_N42
\BANCO|registrador~1146\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1146_combout\ = ( \ROM|memROM~6_combout\ & ( (\ROM|memROM~4_combout\ & \BANCO|registrador~142_q\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & (\BANCO|registrador~46_q\)) # (\ROM|memROM~4_combout\ & 
-- ((\BANCO|registrador~110_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~46_q\,
	datab => \BANCO|ALT_INV_registrador~110_q\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BANCO|ALT_INV_registrador~142_q\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1146_combout\);

-- Location: LABCELL_X79_Y13_N27
\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( \BANCO|saidaA[8]~8_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1146_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( \BANCO|saidaA[8]~8_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1146_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_saidaA[8]~8_combout\,
	dataf => \BANCO|ALT_INV_registrador~1146_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

-- Location: LABCELL_X80_Y11_N3
\ULA|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux23~0_combout\ = ( \ULA|Add0~33_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~33_sumout\,
	combout => \ULA|Mux23~0_combout\);

-- Location: LABCELL_X80_Y11_N21
\BANCO|registrador~175feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~175feeder_combout\ = ( \ULA|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \BANCO|registrador~175feeder_combout\);

-- Location: FF_X80_Y11_N22
\BANCO|registrador~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~175feeder_combout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~175_q\);

-- Location: FF_X78_Y11_N20
\BANCO|registrador~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~37_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~143_q\);

-- Location: FF_X78_Y11_N8
\BANCO|registrador~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~37_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~111_q\);

-- Location: FF_X78_Y11_N55
\BANCO|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~37_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~47_q\);

-- Location: MLABCELL_X78_Y11_N9
\BANCO|registrador~1205\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1205_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((\BANCO|registrador~111_q\))) # (\ROM|memROM~3_combout\ & (\BANCO|registrador~143_q\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & 
-- \BANCO|registrador~47_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~143_q\,
	datab => \BANCO|ALT_INV_registrador~111_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~47_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1205_combout\);

-- Location: MLABCELL_X78_Y11_N21
\BANCO|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[9]~9_combout\ = ( \BANCO|registrador~1205_combout\ & ( (\ROM|memROM~3_combout\ & !\ROM|memROM~2_combout\) ) ) # ( !\BANCO|registrador~1205_combout\ & ( (\BANCO|registrador~175_q\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~175_q\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1205_combout\,
	combout => \BANCO|saidaA[9]~9_combout\);

-- Location: MLABCELL_X78_Y11_N51
\BANCO|registrador~1147\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1147_combout\ = ( \BANCO|registrador~143_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & ((\BANCO|registrador~47_q\)))) # (\ROM|memROM~4_combout\ & (((\BANCO|registrador~111_q\)) # (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\BANCO|registrador~143_q\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((\BANCO|registrador~47_q\))) # (\ROM|memROM~4_combout\ & (\BANCO|registrador~111_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000010101100111010001010110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~111_q\,
	datad => \BANCO|ALT_INV_registrador~47_q\,
	dataf => \BANCO|ALT_INV_registrador~143_q\,
	combout => \BANCO|registrador~1147_combout\);

-- Location: LABCELL_X79_Y13_N30
\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( \BANCO|saidaA[9]~9_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1147_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( \BANCO|saidaA[9]~9_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1147_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[9]~9_combout\,
	dataf => \BANCO|ALT_INV_registrador~1147_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

-- Location: LABCELL_X80_Y11_N6
\ULA|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux22~0_combout\ = ( \ULA|Add0~37_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \ULA|Mux22~0_combout\);

-- Location: FF_X79_Y14_N23
\BANCO|registrador~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~41_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~176_q\);

-- Location: FF_X78_Y14_N53
\BANCO|registrador~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~41_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~144_q\);

-- Location: FF_X78_Y14_N22
\BANCO|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~41_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~48_q\);

-- Location: FF_X78_Y14_N14
\BANCO|registrador~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~41_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~112_q\);

-- Location: MLABCELL_X78_Y14_N57
\BANCO|registrador~1209\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1209_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & ((\BANCO|registrador~112_q\))) # 
-- (\ROM|memROM~3_combout\ & (\BANCO|registrador~144_q\)) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( (\BANCO|registrador~48_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011110000111100000101111101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~144_q\,
	datab => \BANCO|ALT_INV_registrador~48_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~112_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \BANCO|registrador~1209_combout\);

-- Location: MLABCELL_X78_Y14_N9
\BANCO|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[10]~10_combout\ = ( !\BANCO|registrador~1209_combout\ & ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & \BANCO|registrador~176_q\) ) ) ) # ( \BANCO|registrador~1209_combout\ & ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~176_q\,
	datae => \BANCO|ALT_INV_registrador~1209_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|saidaA[10]~10_combout\);

-- Location: MLABCELL_X78_Y14_N48
\BANCO|registrador~1148\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1148_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~6_combout\ & ( \BANCO|registrador~144_q\ ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ & ( \BANCO|registrador~112_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( 
-- !\ROM|memROM~6_combout\ & ( \BANCO|registrador~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~144_q\,
	datab => \BANCO|ALT_INV_registrador~48_q\,
	datad => \BANCO|ALT_INV_registrador~112_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1148_combout\);

-- Location: LABCELL_X79_Y13_N33
\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( \BANCO|saidaA[10]~10_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1148_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( \BANCO|saidaA[10]~10_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1148_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[10]~10_combout\,
	dataf => \BANCO|ALT_INV_registrador~1148_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

-- Location: MLABCELL_X82_Y12_N48
\ULA|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux21~0_combout\ = ( \ULA|Add0~41_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~41_sumout\,
	combout => \ULA|Mux21~0_combout\);

-- Location: FF_X79_Y14_N37
\BANCO|registrador~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~45_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~177_q\);

-- Location: LABCELL_X80_Y14_N51
\BANCO|registrador~113feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~113feeder_combout\ = ( \ULA|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \BANCO|registrador~113feeder_combout\);

-- Location: FF_X80_Y14_N53
\BANCO|registrador~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~113feeder_combout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~113_q\);

-- Location: FF_X80_Y13_N13
\BANCO|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~45_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~49_q\);

-- Location: FF_X80_Y13_N11
\BANCO|registrador~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~45_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~145_q\);

-- Location: MLABCELL_X78_Y14_N18
\BANCO|registrador~1213\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1213_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~113_q\)) # 
-- (\ROM|memROM~3_combout\ & ((\BANCO|registrador~145_q\))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( (\BANCO|registrador~49_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000001111111101010101000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~113_q\,
	datab => \BANCO|ALT_INV_registrador~49_q\,
	datac => \BANCO|ALT_INV_registrador~145_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \BANCO|registrador~1213_combout\);

-- Location: MLABCELL_X78_Y14_N45
\BANCO|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[11]~11_combout\ = ( \BANCO|registrador~1213_combout\ & ( (!\ROM|memROM~2_combout\ & \ROM|memROM~3_combout\) ) ) # ( !\BANCO|registrador~1213_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~177_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \BANCO|ALT_INV_registrador~177_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1213_combout\,
	combout => \BANCO|saidaA[11]~11_combout\);

-- Location: LABCELL_X80_Y13_N0
\BANCO|registrador~1149\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1149_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~6_combout\ & ( \BANCO|registrador~145_q\ ) ) ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~6_combout\ & ( \BANCO|registrador~113_q\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( 
-- !\ROM|memROM~6_combout\ & ( \BANCO|registrador~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO|ALT_INV_registrador~145_q\,
	datac => \BANCO|ALT_INV_registrador~49_q\,
	datad => \BANCO|ALT_INV_registrador~113_q\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1149_combout\);

-- Location: LABCELL_X79_Y13_N36
\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( \BANCO|saidaA[11]~11_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1149_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( \BANCO|saidaA[11]~11_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1149_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[11]~11_combout\,
	dataf => \BANCO|ALT_INV_registrador~1149_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

-- Location: LABCELL_X80_Y11_N36
\ULA|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux20~0_combout\ = ( \ULA|Add0~45_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \ULA|Mux20~0_combout\);

-- Location: FF_X79_Y14_N5
\BANCO|registrador~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~49_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~178_q\);

-- Location: FF_X78_Y14_N26
\BANCO|registrador~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~49_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~114_q\);

-- Location: FF_X78_Y13_N53
\BANCO|registrador~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~49_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~146_q\);

-- Location: FF_X78_Y14_N56
\BANCO|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~49_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~50_q\);

-- Location: MLABCELL_X78_Y14_N27
\BANCO|registrador~1217\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1217_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~114_q\)) # (\ROM|memROM~3_combout\ & ((\BANCO|registrador~146_q\))) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & 
-- \BANCO|registrador~50_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~114_q\,
	datab => \BANCO|ALT_INV_registrador~146_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~50_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1217_combout\);

-- Location: MLABCELL_X78_Y14_N42
\BANCO|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[12]~12_combout\ = ( \BANCO|registrador~1217_combout\ & ( (!\ROM|memROM~2_combout\ & \ROM|memROM~3_combout\) ) ) # ( !\BANCO|registrador~1217_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~178_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \BANCO|ALT_INV_registrador~178_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1217_combout\,
	combout => \BANCO|saidaA[12]~12_combout\);

-- Location: MLABCELL_X78_Y13_N51
\BANCO|registrador~1150\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1150_combout\ = ( \BANCO|registrador~146_q\ & ( \ROM|memROM~6_combout\ & ( \ROM|memROM~4_combout\ ) ) ) # ( \BANCO|registrador~146_q\ & ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & (\BANCO|registrador~50_q\)) # 
-- (\ROM|memROM~4_combout\ & ((\BANCO|registrador~114_q\))) ) ) ) # ( !\BANCO|registrador~146_q\ & ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & (\BANCO|registrador~50_q\)) # (\ROM|memROM~4_combout\ & ((\BANCO|registrador~114_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \BANCO|ALT_INV_registrador~50_q\,
	datad => \BANCO|ALT_INV_registrador~114_q\,
	datae => \BANCO|ALT_INV_registrador~146_q\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1150_combout\);

-- Location: LABCELL_X79_Y13_N39
\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( \BANCO|saidaA[12]~12_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1150_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( \BANCO|saidaA[12]~12_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1150_combout\) # ((!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)))) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[12]~12_combout\,
	dataf => \BANCO|ALT_INV_registrador~1150_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

-- Location: LABCELL_X79_Y14_N57
\ULA|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux19~0_combout\ = ( \ULA|Add0~49_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ALT_INV_Add0~49_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ULA|Mux19~0_combout\);

-- Location: LABCELL_X80_Y11_N30
\BANCO|registrador~179feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~179feeder_combout\ = ( \ULA|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \BANCO|registrador~179feeder_combout\);

-- Location: FF_X80_Y11_N32
\BANCO|registrador~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~179feeder_combout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~179_q\);

-- Location: FF_X79_Y11_N50
\BANCO|registrador~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~53_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~147_q\);

-- Location: FF_X80_Y13_N53
\BANCO|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~53_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~51_q\);

-- Location: FF_X80_Y13_N38
\BANCO|registrador~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~53_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~115_q\);

-- Location: LABCELL_X79_Y11_N51
\BANCO|registrador~1221\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1221_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~2_combout\ ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~147_q\ & \ROM|memROM~7_combout\) ) ) ) # ( !\ROM|memROM~3_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\BANCO|registrador~51_q\)) # (\ROM|memROM~7_combout\ & ((\BANCO|registrador~115_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~147_q\,
	datab => \BANCO|ALT_INV_registrador~51_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BANCO|ALT_INV_registrador~115_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1221_combout\);

-- Location: LABCELL_X79_Y11_N18
\BANCO|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1062_combout\ = ( \BANCO|registrador~1221_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1221_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~179_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BANCO|ALT_INV_registrador~179_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1221_combout\,
	combout => \BANCO|registrador~1062_combout\);

-- Location: LABCELL_X79_Y11_N21
\BANCO|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[13]~13_combout\ = ( \BANCO|registrador~1062_combout\ & ( (\ROM|memROM~3_combout\) # (\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1062_combout\,
	combout => \BANCO|saidaA[13]~13_combout\);

-- Location: LABCELL_X80_Y13_N15
\BANCO|registrador~1151\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1151_combout\ = ( \ROM|memROM~6_combout\ & ( (\BANCO|registrador~147_q\ & \ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & ((\BANCO|registrador~51_q\))) # (\ROM|memROM~4_combout\ & 
-- (\BANCO|registrador~115_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~115_q\,
	datab => \BANCO|ALT_INV_registrador~147_q\,
	datac => \BANCO|ALT_INV_registrador~51_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1151_combout\);

-- Location: LABCELL_X79_Y13_N42
\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( \BANCO|saidaA[13]~13_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1151_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( \BANCO|saidaA[13]~13_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1151_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_saidaA[13]~13_combout\,
	dataf => \BANCO|ALT_INV_registrador~1151_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

-- Location: LABCELL_X79_Y11_N9
\ULA|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux18~0_combout\ = ( !\ROM|memROM~1_combout\ & ( \ULA|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Add0~53_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ULA|Mux18~0_combout\);

-- Location: LABCELL_X79_Y14_N45
\BANCO|registrador~180feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~180feeder_combout\ = ( \ULA|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~57_sumout\,
	combout => \BANCO|registrador~180feeder_combout\);

-- Location: FF_X79_Y14_N47
\BANCO|registrador~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~180feeder_combout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~180_q\);

-- Location: FF_X78_Y14_N32
\BANCO|registrador~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~57_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~148_q\);

-- Location: FF_X78_Y14_N8
\BANCO|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~57_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~52_q\);

-- Location: FF_X78_Y14_N38
\BANCO|registrador~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~57_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~116_q\);

-- Location: MLABCELL_X78_Y14_N33
\BANCO|registrador~1225\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1225_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & ((\BANCO|registrador~116_q\))) # 
-- (\ROM|memROM~3_combout\ & (\BANCO|registrador~148_q\)) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( (\BANCO|registrador~52_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011110000111100000101111101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~148_q\,
	datab => \BANCO|ALT_INV_registrador~52_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~116_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \BANCO|registrador~1225_combout\);

-- Location: MLABCELL_X78_Y14_N15
\BANCO|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1066_combout\ = ( \BANCO|registrador~1225_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1225_combout\ & ( (\BANCO|registrador~180_q\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~180_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1225_combout\,
	combout => \BANCO|registrador~1066_combout\);

-- Location: MLABCELL_X78_Y14_N3
\BANCO|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[14]~14_combout\ = ( \BANCO|registrador~1066_combout\ & ( (\ROM|memROM~2_combout\) # (\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1066_combout\,
	combout => \BANCO|saidaA[14]~14_combout\);

-- Location: MLABCELL_X78_Y14_N39
\BANCO|registrador~1152\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1152_combout\ = ( \BANCO|registrador~148_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & (\BANCO|registrador~52_q\))) # (\ROM|memROM~4_combout\ & (((\BANCO|registrador~116_q\)) # (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\BANCO|registrador~148_q\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & (\BANCO|registrador~52_q\)) # (\ROM|memROM~4_combout\ & ((\BANCO|registrador~116_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~52_q\,
	datad => \BANCO|ALT_INV_registrador~116_q\,
	dataf => \BANCO|ALT_INV_registrador~148_q\,
	combout => \BANCO|registrador~1152_combout\);

-- Location: LABCELL_X79_Y13_N45
\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( \BANCO|saidaA[14]~14_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1152_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( \BANCO|saidaA[14]~14_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1152_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_saidaA[14]~14_combout\,
	dataf => \BANCO|ALT_INV_registrador~1152_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

-- Location: MLABCELL_X78_Y14_N36
\ULA|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux17~0_combout\ = ( !\ROM|memROM~1_combout\ & ( \ULA|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ALT_INV_Add0~57_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ULA|Mux17~0_combout\);

-- Location: FF_X78_Y13_N50
\BANCO|registrador~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~61_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~149_q\);

-- Location: FF_X78_Y13_N41
\BANCO|registrador~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~61_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~117_q\);

-- Location: FF_X78_Y13_N25
\BANCO|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~61_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~53_q\);

-- Location: MLABCELL_X78_Y13_N54
\BANCO|registrador~1153\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1153_combout\ = ( \BANCO|registrador~53_q\ & ( (!\ROM|memROM~6_combout\ & (((!\ROM|memROM~4_combout\) # (\BANCO|registrador~117_q\)))) # (\ROM|memROM~6_combout\ & (\BANCO|registrador~149_q\ & ((\ROM|memROM~4_combout\)))) ) ) # ( 
-- !\BANCO|registrador~53_q\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\BANCO|registrador~117_q\))) # (\ROM|memROM~6_combout\ & (\BANCO|registrador~149_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010111110000001101011111000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~149_q\,
	datab => \BANCO|ALT_INV_registrador~117_q\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~53_q\,
	combout => \BANCO|registrador~1153_combout\);

-- Location: FF_X77_Y13_N20
\BANCO|registrador~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~61_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~181_q\);

-- Location: LABCELL_X77_Y13_N51
\BANCO|registrador~1229\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1229_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~117_q\)) # (\ROM|memROM~3_combout\ & ((\BANCO|registrador~149_q\))) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~53_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~117_q\,
	datab => \BANCO|ALT_INV_registrador~53_q\,
	datac => \BANCO|ALT_INV_registrador~149_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1229_combout\);

-- Location: LABCELL_X77_Y13_N30
\BANCO|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1070_combout\ = ( \BANCO|registrador~1229_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1229_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~181_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BANCO|ALT_INV_registrador~181_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1229_combout\,
	combout => \BANCO|registrador~1070_combout\);

-- Location: LABCELL_X77_Y13_N18
\BANCO|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[15]~15_combout\ = ( \BANCO|registrador~1070_combout\ & ( (\ROM|memROM~3_combout\) # (\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1070_combout\,
	combout => \BANCO|saidaA[15]~15_combout\);

-- Location: LABCELL_X79_Y13_N48
\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1153_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \BANCO|saidaA[15]~15_combout\ ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1153_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \BANCO|saidaA[15]~15_combout\ ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_registrador~1153_combout\,
	dataf => \BANCO|ALT_INV_saidaA[15]~15_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

-- Location: LABCELL_X77_Y13_N27
\ULA|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux16~0_combout\ = (!\ROM|memROM~1_combout\ & \ULA|Add0~61_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \ULA|Mux16~0_combout\);

-- Location: FF_X77_Y13_N23
\BANCO|registrador~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~65_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~182_q\);

-- Location: FF_X80_Y13_N35
\BANCO|registrador~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~65_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~150_q\);

-- Location: FF_X80_Y13_N29
\BANCO|registrador~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~65_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~118_q\);

-- Location: FF_X80_Y13_N46
\BANCO|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~65_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~54_q\);

-- Location: LABCELL_X77_Y13_N42
\BANCO|registrador~1233\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1233_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~2_combout\) # (\BANCO|registrador~150_q\) ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \ROM|memROM~2_combout\ ) ) ) # ( 
-- \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( (\BANCO|registrador~118_q\ & !\ROM|memROM~2_combout\) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~2_combout\ & \BANCO|registrador~54_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001100000011000000001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~150_q\,
	datab => \BANCO|ALT_INV_registrador~118_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_registrador~54_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \BANCO|registrador~1233_combout\);

-- Location: LABCELL_X77_Y13_N3
\BANCO|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1074_combout\ = ( \BANCO|registrador~1233_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1233_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \BANCO|registrador~182_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BANCO|ALT_INV_registrador~182_q\,
	dataf => \BANCO|ALT_INV_registrador~1233_combout\,
	combout => \BANCO|registrador~1074_combout\);

-- Location: MLABCELL_X78_Y13_N24
\BANCO|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[16]~16_combout\ = (\BANCO|registrador~1074_combout\ & ((\ROM|memROM~3_combout\) # (\ROM|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \BANCO|ALT_INV_registrador~1074_combout\,
	combout => \BANCO|saidaA[16]~16_combout\);

-- Location: LABCELL_X80_Y13_N30
\BANCO|registrador~1154\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1154_combout\ = ( \ROM|memROM~6_combout\ & ( (\BANCO|registrador~150_q\ & \ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & ((\BANCO|registrador~54_q\))) # (\ROM|memROM~4_combout\ & 
-- (\BANCO|registrador~118_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~118_q\,
	datab => \BANCO|ALT_INV_registrador~54_q\,
	datac => \BANCO|ALT_INV_registrador~150_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1154_combout\);

-- Location: LABCELL_X79_Y13_N51
\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( \BANCO|saidaA[16]~16_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1154_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( \BANCO|saidaA[16]~16_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1154_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_saidaA[16]~16_combout\,
	dataf => \BANCO|ALT_INV_registrador~1154_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

-- Location: LABCELL_X79_Y11_N24
\ULA|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux15~0_combout\ = ( \ULA|Add0~65_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~65_sumout\,
	combout => \ULA|Mux15~0_combout\);

-- Location: FF_X77_Y13_N26
\BANCO|registrador~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~69_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~183_q\);

-- Location: FF_X80_Y13_N5
\BANCO|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~69_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~55_q\);

-- Location: FF_X78_Y13_N5
\BANCO|registrador~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~69_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~119_q\);

-- Location: FF_X78_Y13_N56
\BANCO|registrador~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~69_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~151_q\);

-- Location: LABCELL_X77_Y13_N15
\BANCO|registrador~1237\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1237_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~119_q\)) # (\ROM|memROM~3_combout\ & ((\BANCO|registrador~151_q\))) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~55_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~55_q\,
	datab => \BANCO|ALT_INV_registrador~119_q\,
	datac => \BANCO|ALT_INV_registrador~151_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1237_combout\);

-- Location: LABCELL_X77_Y13_N33
\BANCO|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1078_combout\ = ( \BANCO|registrador~1237_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1237_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~183_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BANCO|ALT_INV_registrador~183_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1237_combout\,
	combout => \BANCO|registrador~1078_combout\);

-- Location: LABCELL_X77_Y13_N24
\BANCO|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[17]~17_combout\ = ( \BANCO|registrador~1078_combout\ & ( (\ROM|memROM~2_combout\) # (\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1078_combout\,
	combout => \BANCO|saidaA[17]~17_combout\);

-- Location: MLABCELL_X78_Y13_N3
\BANCO|registrador~1155\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1155_combout\ = ( \BANCO|registrador~151_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & (\BANCO|registrador~55_q\))) # (\ROM|memROM~4_combout\ & (((\BANCO|registrador~119_q\)) # (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\BANCO|registrador~151_q\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & (\BANCO|registrador~55_q\)) # (\ROM|memROM~4_combout\ & ((\BANCO|registrador~119_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~55_q\,
	datad => \BANCO|ALT_INV_registrador~119_q\,
	dataf => \BANCO|ALT_INV_registrador~151_q\,
	combout => \BANCO|registrador~1155_combout\);

-- Location: LABCELL_X79_Y13_N54
\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( \BANCO|saidaA[17]~17_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1155_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( \BANCO|saidaA[17]~17_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1155_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_saidaA[17]~17_combout\,
	dataf => \BANCO|ALT_INV_registrador~1155_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

-- Location: LABCELL_X80_Y13_N33
\ULA|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux14~0_combout\ = ( \ULA|Add0~69_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \ULA|Mux14~0_combout\);

-- Location: FF_X77_Y13_N47
\BANCO|registrador~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~73_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~184_q\);

-- Location: FF_X80_Y13_N56
\BANCO|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~73_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~56_q\);

-- Location: FF_X80_Y13_N26
\BANCO|registrador~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~73_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~120_q\);

-- Location: FF_X80_Y13_N20
\BANCO|registrador~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~73_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~152_q\);

-- Location: LABCELL_X80_Y13_N6
\BANCO|registrador~1241\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1241_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~120_q\)) # 
-- (\ROM|memROM~3_combout\ & ((\BANCO|registrador~152_q\))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( (\BANCO|registrador~56_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000000001111111100110011000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~56_q\,
	datab => \BANCO|ALT_INV_registrador~120_q\,
	datac => \BANCO|ALT_INV_registrador~152_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \BANCO|registrador~1241_combout\);

-- Location: LABCELL_X80_Y13_N48
\BANCO|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1082_combout\ = ( !\ROM|memROM~2_combout\ & ( \BANCO|registrador~1241_combout\ ) ) # ( \ROM|memROM~2_combout\ & ( !\BANCO|registrador~1241_combout\ & ( (\BANCO|registrador~184_q\ & !\ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO|ALT_INV_registrador~184_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1241_combout\,
	combout => \BANCO|registrador~1082_combout\);

-- Location: LABCELL_X80_Y13_N57
\BANCO|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[18]~18_combout\ = ( \BANCO|registrador~1082_combout\ & ( (\ROM|memROM~2_combout\) # (\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1082_combout\,
	combout => \BANCO|saidaA[18]~18_combout\);

-- Location: LABCELL_X80_Y13_N24
\BANCO|registrador~1156\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1156_combout\ = ( \BANCO|registrador~120_q\ & ( \ROM|memROM~6_combout\ & ( (\BANCO|registrador~152_q\ & \ROM|memROM~4_combout\) ) ) ) # ( !\BANCO|registrador~120_q\ & ( \ROM|memROM~6_combout\ & ( (\BANCO|registrador~152_q\ & 
-- \ROM|memROM~4_combout\) ) ) ) # ( \BANCO|registrador~120_q\ & ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~4_combout\) # (\BANCO|registrador~56_q\) ) ) ) # ( !\BANCO|registrador~120_q\ & ( !\ROM|memROM~6_combout\ & ( (\BANCO|registrador~56_q\ & 
-- !\ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~56_q\,
	datac => \BANCO|ALT_INV_registrador~152_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BANCO|ALT_INV_registrador~120_q\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1156_combout\);

-- Location: LABCELL_X79_Y13_N57
\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( \BANCO|saidaA[18]~18_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1156_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( \BANCO|saidaA[18]~18_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1156_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_saidaA[18]~18_combout\,
	dataf => \BANCO|ALT_INV_registrador~1156_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

-- Location: LABCELL_X80_Y13_N21
\ULA|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux13~0_combout\ = (!\ROM|memROM~1_combout\ & \ULA|Add0~73_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ULA|ALT_INV_Add0~73_sumout\,
	combout => \ULA|Mux13~0_combout\);

-- Location: FF_X79_Y12_N1
\BANCO|registrador~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~77_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~185_q\);

-- Location: FF_X80_Y12_N38
\BANCO|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~77_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~57_q\);

-- Location: FF_X80_Y12_N14
\BANCO|registrador~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~77_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~121_q\);

-- Location: FF_X80_Y12_N8
\BANCO|registrador~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~77_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~153_q\);

-- Location: LABCELL_X80_Y12_N6
\BANCO|registrador~1245\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1245_combout\ = ( \BANCO|registrador~153_q\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~2_combout\) # (\ROM|memROM~7_combout\) ) ) ) # ( !\BANCO|registrador~153_q\ & ( \ROM|memROM~3_combout\ & ( \ROM|memROM~2_combout\ ) ) ) # ( 
-- \BANCO|registrador~153_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO|registrador~57_q\)) # (\ROM|memROM~7_combout\ & ((\BANCO|registrador~121_q\))))) ) ) ) # ( !\BANCO|registrador~153_q\ & ( 
-- !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~2_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO|registrador~57_q\)) # (\ROM|memROM~7_combout\ & ((\BANCO|registrador~121_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000000000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~57_q\,
	datab => \BANCO|ALT_INV_registrador~121_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO|ALT_INV_registrador~153_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \BANCO|registrador~1245_combout\);

-- Location: LABCELL_X80_Y12_N36
\BANCO|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1086_combout\ = ( \BANCO|registrador~1245_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1245_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~2_combout\ & \BANCO|registrador~185_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BANCO|ALT_INV_registrador~185_q\,
	dataf => \BANCO|ALT_INV_registrador~1245_combout\,
	combout => \BANCO|registrador~1086_combout\);

-- Location: LABCELL_X79_Y12_N45
\BANCO|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[19]~19_combout\ = ( \BANCO|registrador~1086_combout\ & ( (\ROM|memROM~2_combout\) # (\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1086_combout\,
	combout => \BANCO|saidaA[19]~19_combout\);

-- Location: LABCELL_X80_Y12_N15
\BANCO|registrador~1157\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1157_combout\ = ( \BANCO|registrador~153_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & ((\BANCO|registrador~57_q\)))) # (\ROM|memROM~4_combout\ & (((\BANCO|registrador~121_q\)) # (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\BANCO|registrador~153_q\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((\BANCO|registrador~57_q\))) # (\ROM|memROM~4_combout\ & (\BANCO|registrador~121_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000010101100111010001010110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~121_q\,
	datad => \BANCO|ALT_INV_registrador~57_q\,
	dataf => \BANCO|ALT_INV_registrador~153_q\,
	combout => \BANCO|registrador~1157_combout\);

-- Location: LABCELL_X79_Y12_N0
\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( \BANCO|saidaA[19]~19_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1157_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( \BANCO|saidaA[19]~19_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1157_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[19]~19_combout\,
	dataf => \BANCO|ALT_INV_registrador~1157_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

-- Location: LABCELL_X80_Y12_N24
\ULA|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux12~0_combout\ = ( !\ROM|memROM~1_combout\ & ( \ULA|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Add0~77_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ULA|Mux12~0_combout\);

-- Location: FF_X79_Y12_N4
\BANCO|registrador~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~81_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~186_q\);

-- Location: FF_X80_Y12_N53
\BANCO|registrador~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~81_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~122_q\);

-- Location: FF_X79_Y12_N43
\BANCO|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~81_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~58_q\);

-- Location: FF_X80_Y12_N59
\BANCO|registrador~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~81_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~154_q\);

-- Location: LABCELL_X80_Y12_N57
\BANCO|registrador~1249\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1249_combout\ = ( \BANCO|registrador~154_q\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\BANCO|registrador~154_q\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \BANCO|registrador~154_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO|registrador~58_q\))) # (\ROM|memROM~7_combout\ & (\BANCO|registrador~122_q\)))) # (\ROM|memROM~3_combout\ & (((\ROM|memROM~7_combout\)))) ) ) ) # ( 
-- !\BANCO|registrador~154_q\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~7_combout\ & ((\BANCO|registrador~58_q\))) # (\ROM|memROM~7_combout\ & (\BANCO|registrador~122_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~122_q\,
	datab => \BANCO|ALT_INV_registrador~58_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \BANCO|ALT_INV_registrador~154_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1249_combout\);

-- Location: LABCELL_X80_Y12_N39
\BANCO|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1090_combout\ = ( \BANCO|registrador~1249_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1249_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~2_combout\ & \BANCO|registrador~186_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BANCO|ALT_INV_registrador~186_q\,
	dataf => \BANCO|ALT_INV_registrador~1249_combout\,
	combout => \BANCO|registrador~1090_combout\);

-- Location: LABCELL_X80_Y12_N30
\BANCO|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[20]~20_combout\ = ( \BANCO|registrador~1090_combout\ & ( (\ROM|memROM~3_combout\) # (\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1090_combout\,
	combout => \BANCO|saidaA[20]~20_combout\);

-- Location: LABCELL_X80_Y12_N51
\BANCO|registrador~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1158_combout\ = ( \BANCO|registrador~58_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\)) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\BANCO|registrador~122_q\))) # (\ROM|memROM~6_combout\ & 
-- (\BANCO|registrador~154_q\)))) ) ) # ( !\BANCO|registrador~58_q\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\BANCO|registrador~122_q\))) # (\ROM|memROM~6_combout\ & (\BANCO|registrador~154_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110001001110011011000100111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~154_q\,
	datad => \BANCO|ALT_INV_registrador~122_q\,
	dataf => \BANCO|ALT_INV_registrador~58_q\,
	combout => \BANCO|registrador~1158_combout\);

-- Location: LABCELL_X79_Y12_N3
\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( \BANCO|saidaA[20]~20_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1158_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( \BANCO|saidaA[20]~20_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1158_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[20]~20_combout\,
	dataf => \BANCO|ALT_INV_registrador~1158_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

-- Location: LABCELL_X81_Y12_N36
\ULA|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux11~0_combout\ = ( \ULA|Add0~81_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~81_sumout\,
	combout => \ULA|Mux11~0_combout\);

-- Location: FF_X79_Y12_N8
\BANCO|registrador~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~85_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~187_q\);

-- Location: FF_X80_Y12_N56
\BANCO|registrador~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~85_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~155_q\);

-- Location: FF_X80_Y12_N26
\BANCO|registrador~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~85_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~123_q\);

-- Location: FF_X80_Y12_N35
\BANCO|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~85_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~59_q\);

-- Location: LABCELL_X81_Y12_N57
\BANCO|registrador~1253\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1253_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((\BANCO|registrador~123_q\))) # (\ROM|memROM~3_combout\ & (\BANCO|registrador~155_q\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~59_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~155_q\,
	datab => \BANCO|ALT_INV_registrador~123_q\,
	datac => \BANCO|ALT_INV_registrador~59_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1253_combout\);

-- Location: LABCELL_X81_Y12_N24
\BANCO|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1094_combout\ = ( \BANCO|registrador~1253_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1253_combout\ & ( (\BANCO|registrador~187_q\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~187_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1253_combout\,
	combout => \BANCO|registrador~1094_combout\);

-- Location: LABCELL_X80_Y12_N0
\BANCO|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[21]~21_combout\ = ( \BANCO|registrador~1094_combout\ & ( (\ROM|memROM~3_combout\) # (\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1094_combout\,
	combout => \BANCO|saidaA[21]~21_combout\);

-- Location: LABCELL_X80_Y12_N42
\BANCO|registrador~1159\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1159_combout\ = ( \BANCO|registrador~59_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\)) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & (\BANCO|registrador~123_q\)) # (\ROM|memROM~6_combout\ & 
-- ((\BANCO|registrador~155_q\))))) ) ) # ( !\BANCO|registrador~59_q\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & (\BANCO|registrador~123_q\)) # (\ROM|memROM~6_combout\ & ((\BANCO|registrador~155_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~123_q\,
	datad => \BANCO|ALT_INV_registrador~155_q\,
	dataf => \BANCO|ALT_INV_registrador~59_q\,
	combout => \BANCO|registrador~1159_combout\);

-- Location: LABCELL_X79_Y12_N6
\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( \BANCO|saidaA[21]~21_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1159_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( \BANCO|saidaA[21]~21_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1159_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[21]~21_combout\,
	dataf => \BANCO|ALT_INV_registrador~1159_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

-- Location: LABCELL_X79_Y11_N0
\ULA|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux10~0_combout\ = ( \ULA|Add0~85_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~85_sumout\,
	combout => \ULA|Mux10~0_combout\);

-- Location: FF_X79_Y12_N11
\BANCO|registrador~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~89_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~188_q\);

-- Location: FF_X80_Y12_N20
\BANCO|registrador~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~89_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~156_q\);

-- Location: FF_X80_Y12_N29
\BANCO|registrador~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~89_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~124_q\);

-- Location: FF_X80_Y12_N40
\BANCO|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~89_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~60_q\);

-- Location: LABCELL_X80_Y12_N21
\BANCO|registrador~1257\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1257_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((\BANCO|registrador~124_q\))) # (\ROM|memROM~3_combout\ & (\BANCO|registrador~156_q\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & 
-- \BANCO|registrador~60_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~156_q\,
	datab => \BANCO|ALT_INV_registrador~124_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~60_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1257_combout\);

-- Location: LABCELL_X79_Y11_N6
\BANCO|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1098_combout\ = ( \BANCO|registrador~1257_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1257_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~2_combout\ & \BANCO|registrador~188_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_registrador~188_q\,
	dataf => \BANCO|ALT_INV_registrador~1257_combout\,
	combout => \BANCO|registrador~1098_combout\);

-- Location: LABCELL_X79_Y11_N27
\BANCO|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[22]~22_combout\ = ( \BANCO|registrador~1098_combout\ & ( (\ROM|memROM~3_combout\) # (\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1098_combout\,
	combout => \BANCO|saidaA[22]~22_combout\);

-- Location: LABCELL_X80_Y12_N27
\BANCO|registrador~1160\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1160_combout\ = ( \BANCO|registrador~156_q\ & ( (!\ROM|memROM~4_combout\ & (\BANCO|registrador~60_q\ & (!\ROM|memROM~6_combout\))) # (\ROM|memROM~4_combout\ & (((\BANCO|registrador~124_q\) # (\ROM|memROM~6_combout\)))) ) ) # ( 
-- !\BANCO|registrador~156_q\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & (\BANCO|registrador~60_q\)) # (\ROM|memROM~4_combout\ & ((\BANCO|registrador~124_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000100101011101010010010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \BANCO|ALT_INV_registrador~60_q\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_registrador~124_q\,
	dataf => \BANCO|ALT_INV_registrador~156_q\,
	combout => \BANCO|registrador~1160_combout\);

-- Location: LABCELL_X79_Y12_N9
\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( \BANCO|saidaA[22]~22_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1160_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( \BANCO|saidaA[22]~22_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1160_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[22]~22_combout\,
	dataf => \BANCO|ALT_INV_registrador~1160_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

-- Location: LABCELL_X74_Y8_N15
\ULA|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux9~0_combout\ = ( \ULA|Add0~89_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ALT_INV_Add0~89_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ULA|Mux9~0_combout\);

-- Location: FF_X79_Y12_N14
\BANCO|registrador~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~93_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~189_q\);

-- Location: LABCELL_X79_Y12_N48
\BANCO|registrador~61feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~61feeder_combout\ = \ULA|Add0~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \BANCO|registrador~61feeder_combout\);

-- Location: FF_X79_Y12_N49
\BANCO|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~61feeder_combout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~61_q\);

-- Location: FF_X81_Y12_N8
\BANCO|registrador~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~93_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~157_q\);

-- Location: FF_X79_Y12_N59
\BANCO|registrador~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~93_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~125_q\);

-- Location: LABCELL_X81_Y12_N15
\BANCO|registrador~1261\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1261_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((\BANCO|registrador~125_q\))) # (\ROM|memROM~3_combout\ & (\BANCO|registrador~157_q\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~61_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~61_q\,
	datab => \BANCO|ALT_INV_registrador~157_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~125_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1261_combout\);

-- Location: LABCELL_X81_Y12_N30
\BANCO|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1102_combout\ = ( \BANCO|registrador~1261_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1261_combout\ & ( (\ROM|memROM~2_combout\ & (\BANCO|registrador~189_q\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BANCO|ALT_INV_registrador~189_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1261_combout\,
	combout => \BANCO|registrador~1102_combout\);

-- Location: LABCELL_X81_Y12_N45
\BANCO|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[23]~23_combout\ = ( \ROM|memROM~2_combout\ & ( \BANCO|registrador~1102_combout\ ) ) # ( !\ROM|memROM~2_combout\ & ( \BANCO|registrador~1102_combout\ & ( \ROM|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1102_combout\,
	combout => \BANCO|saidaA[23]~23_combout\);

-- Location: LABCELL_X79_Y12_N57
\BANCO|registrador~1161\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1161_combout\ = ( \BANCO|registrador~61_q\ & ( (!\ROM|memROM~4_combout\ & (((!\ROM|memROM~6_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\BANCO|registrador~125_q\))) # (\ROM|memROM~6_combout\ & 
-- (\BANCO|registrador~157_q\)))) ) ) # ( !\BANCO|registrador~61_q\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\BANCO|registrador~125_q\))) # (\ROM|memROM~6_combout\ & (\BANCO|registrador~157_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000010101000110100001111100011010000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \BANCO|ALT_INV_registrador~157_q\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_registrador~125_q\,
	dataf => \BANCO|ALT_INV_registrador~61_q\,
	combout => \BANCO|registrador~1161_combout\);

-- Location: LABCELL_X79_Y12_N12
\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( \BANCO|saidaA[23]~23_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1161_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( \BANCO|saidaA[23]~23_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1161_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[23]~23_combout\,
	dataf => \BANCO|ALT_INV_registrador~1161_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

-- Location: LABCELL_X81_Y12_N6
\ULA|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux8~0_combout\ = ( \ULA|Add0~93_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \ULA|Mux8~0_combout\);

-- Location: FF_X79_Y12_N16
\BANCO|registrador~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~97_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~190_q\);

-- Location: LABCELL_X79_Y12_N42
\BANCO|registrador~62feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~62feeder_combout\ = ( \ULA|Add0~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~97_sumout\,
	combout => \BANCO|registrador~62feeder_combout\);

-- Location: FF_X79_Y12_N44
\BANCO|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~62feeder_combout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~62_q\);

-- Location: FF_X80_Y12_N4
\BANCO|registrador~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~97_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~126_q\);

-- Location: FF_X81_Y12_N1
\BANCO|registrador~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~97_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~158_q\);

-- Location: LABCELL_X81_Y12_N0
\BANCO|registrador~1265\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1265_combout\ = ( \BANCO|registrador~158_q\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\BANCO|registrador~158_q\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \BANCO|registrador~158_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (\BANCO|registrador~62_q\ & ((!\ROM|memROM~3_combout\)))) # (\ROM|memROM~7_combout\ & (((\ROM|memROM~3_combout\) # (\BANCO|registrador~126_q\)))) ) ) ) # ( !\BANCO|registrador~158_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~7_combout\ & (\BANCO|registrador~62_q\)) # (\ROM|memROM~7_combout\ & ((\BANCO|registrador~126_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~62_q\,
	datab => \BANCO|ALT_INV_registrador~126_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \BANCO|ALT_INV_registrador~158_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1265_combout\);

-- Location: LABCELL_X80_Y12_N33
\BANCO|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1106_combout\ = ( \BANCO|registrador~1265_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1265_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~2_combout\ & \BANCO|registrador~190_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \BANCO|ALT_INV_registrador~190_q\,
	dataf => \BANCO|ALT_INV_registrador~1265_combout\,
	combout => \BANCO|registrador~1106_combout\);

-- Location: LABCELL_X79_Y12_N54
\BANCO|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[24]~24_combout\ = ( \BANCO|registrador~1106_combout\ & ( (\ROM|memROM~2_combout\) # (\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1106_combout\,
	combout => \BANCO|saidaA[24]~24_combout\);

-- Location: LABCELL_X80_Y12_N3
\BANCO|registrador~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1162_combout\ = ( \BANCO|registrador~158_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & (\BANCO|registrador~62_q\))) # (\ROM|memROM~4_combout\ & (((\BANCO|registrador~126_q\)) # (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\BANCO|registrador~158_q\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & (\BANCO|registrador~62_q\)) # (\ROM|memROM~4_combout\ & ((\BANCO|registrador~126_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~62_q\,
	datad => \BANCO|ALT_INV_registrador~126_q\,
	dataf => \BANCO|ALT_INV_registrador~158_q\,
	combout => \BANCO|registrador~1162_combout\);

-- Location: LABCELL_X79_Y12_N15
\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( \BANCO|saidaA[24]~24_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1162_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( \BANCO|saidaA[24]~24_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1162_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[24]~24_combout\,
	dataf => \BANCO|ALT_INV_registrador~1162_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

-- Location: LABCELL_X80_Y11_N45
\ULA|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux7~0_combout\ = ( \ULA|Add0~97_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~97_sumout\,
	combout => \ULA|Mux7~0_combout\);

-- Location: FF_X78_Y12_N14
\BANCO|registrador~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~101_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~127_q\);

-- Location: FF_X77_Y12_N32
\BANCO|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~101_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~63_q\);

-- Location: FF_X77_Y12_N37
\BANCO|registrador~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~101_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~159_q\);

-- Location: LABCELL_X77_Y12_N36
\BANCO|registrador~1269\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1269_combout\ = ( \BANCO|registrador~159_q\ & ( \ROM|memROM~7_combout\ & ( ((\BANCO|registrador~127_q\ & !\ROM|memROM~2_combout\)) # (\ROM|memROM~3_combout\) ) ) ) # ( !\BANCO|registrador~159_q\ & ( \ROM|memROM~7_combout\ & ( 
-- (!\ROM|memROM~3_combout\ & (\BANCO|registrador~127_q\ & !\ROM|memROM~2_combout\)) # (\ROM|memROM~3_combout\ & ((\ROM|memROM~2_combout\))) ) ) ) # ( \BANCO|registrador~159_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & 
-- (!\ROM|memROM~2_combout\ & \BANCO|registrador~63_q\)) # (\ROM|memROM~3_combout\ & (\ROM|memROM~2_combout\)) ) ) ) # ( !\BANCO|registrador~159_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~2_combout\ & 
-- \BANCO|registrador~63_q\)) # (\ROM|memROM~3_combout\ & (\ROM|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010100100101001001010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \BANCO|ALT_INV_registrador~127_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_registrador~63_q\,
	datae => \BANCO|ALT_INV_registrador~159_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \BANCO|registrador~1269_combout\);

-- Location: FF_X79_Y12_N19
\BANCO|registrador~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~101_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~191_q\);

-- Location: LABCELL_X77_Y12_N15
\BANCO|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1110_combout\ = ( \BANCO|registrador~191_q\ & ( (!\ROM|memROM~2_combout\ & ((\BANCO|registrador~1269_combout\))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & !\BANCO|registrador~1269_combout\)) ) ) # ( 
-- !\BANCO|registrador~191_q\ & ( (!\ROM|memROM~2_combout\ & \BANCO|registrador~1269_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001000100101010100100010010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BANCO|ALT_INV_registrador~1269_combout\,
	dataf => \BANCO|ALT_INV_registrador~191_q\,
	combout => \BANCO|registrador~1110_combout\);

-- Location: LABCELL_X77_Y12_N30
\BANCO|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[25]~25_combout\ = ( \BANCO|registrador~1110_combout\ & ( (\ROM|memROM~3_combout\) # (\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1110_combout\,
	combout => \BANCO|saidaA[25]~25_combout\);

-- Location: LABCELL_X77_Y12_N6
\BANCO|registrador~1163\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1163_combout\ = ( \BANCO|registrador~63_q\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\) # ((\BANCO|registrador~127_q\)))) # (\ROM|memROM~6_combout\ & (\ROM|memROM~4_combout\ & ((\BANCO|registrador~159_q\)))) ) ) # ( 
-- !\BANCO|registrador~63_q\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & (\BANCO|registrador~127_q\)) # (\ROM|memROM~6_combout\ & ((\BANCO|registrador~159_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001110001010100110111000101010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \BANCO|ALT_INV_registrador~127_q\,
	datad => \BANCO|ALT_INV_registrador~159_q\,
	dataf => \BANCO|ALT_INV_registrador~63_q\,
	combout => \BANCO|registrador~1163_combout\);

-- Location: LABCELL_X79_Y12_N18
\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( \BANCO|saidaA[25]~25_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1163_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( \BANCO|saidaA[25]~25_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1163_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[25]~25_combout\,
	dataf => \BANCO|ALT_INV_registrador~1163_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

-- Location: LABCELL_X74_Y8_N54
\ULA|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux6~0_combout\ = ( \ULA|Add0~101_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ALT_INV_Add0~101_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ULA|Mux6~0_combout\);

-- Location: FF_X79_Y12_N22
\BANCO|registrador~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~105_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~192_q\);

-- Location: FF_X78_Y12_N2
\BANCO|registrador~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~105_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~128_q\);

-- Location: FF_X77_Y12_N44
\BANCO|registrador~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~105_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~160_q\);

-- Location: FF_X79_Y12_N50
\BANCO|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~105_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~64_q\);

-- Location: LABCELL_X77_Y12_N48
\BANCO|registrador~1273\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1273_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~128_q\)) # 
-- (\ROM|memROM~3_combout\ & ((\BANCO|registrador~160_q\))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( (\BANCO|registrador~64_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000001111111101010101001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~128_q\,
	datab => \BANCO|ALT_INV_registrador~160_q\,
	datac => \BANCO|ALT_INV_registrador~64_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \BANCO|registrador~1273_combout\);

-- Location: LABCELL_X77_Y12_N12
\BANCO|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1114_combout\ = ( \BANCO|registrador~1273_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1273_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \BANCO|registrador~192_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \BANCO|ALT_INV_registrador~192_q\,
	dataf => \BANCO|ALT_INV_registrador~1273_combout\,
	combout => \BANCO|registrador~1114_combout\);

-- Location: LABCELL_X77_Y12_N27
\BANCO|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[26]~26_combout\ = ( \BANCO|registrador~1114_combout\ & ( (\ROM|memROM~2_combout\) # (\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1114_combout\,
	combout => \BANCO|saidaA[26]~26_combout\);

-- Location: LABCELL_X79_Y12_N51
\BANCO|registrador~1164\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1164_combout\ = ( \BANCO|registrador~64_q\ & ( (!\ROM|memROM~4_combout\ & (((!\ROM|memROM~6_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\BANCO|registrador~128_q\))) # (\ROM|memROM~6_combout\ & 
-- (\BANCO|registrador~160_q\)))) ) ) # ( !\BANCO|registrador~64_q\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\BANCO|registrador~128_q\))) # (\ROM|memROM~6_combout\ & (\BANCO|registrador~160_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111000100011010111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \BANCO|ALT_INV_registrador~160_q\,
	datac => \BANCO|ALT_INV_registrador~128_q\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \BANCO|ALT_INV_registrador~64_q\,
	combout => \BANCO|registrador~1164_combout\);

-- Location: LABCELL_X79_Y12_N21
\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( \BANCO|saidaA[26]~26_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1164_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( \BANCO|saidaA[26]~26_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1164_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[26]~26_combout\,
	dataf => \BANCO|ALT_INV_registrador~1164_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

-- Location: LABCELL_X79_Y11_N45
\ULA|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux5~0_combout\ = ( \ULA|Add0~105_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~105_sumout\,
	combout => \ULA|Mux5~0_combout\);

-- Location: FF_X79_Y12_N25
\BANCO|registrador~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~109_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~193_q\);

-- Location: LABCELL_X79_Y14_N24
\BANCO|registrador~161feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~161feeder_combout\ = ( \ULA|Add0~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \BANCO|registrador~161feeder_combout\);

-- Location: FF_X79_Y14_N26
\BANCO|registrador~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \BANCO|registrador~161feeder_combout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~161_q\);

-- Location: FF_X78_Y14_N1
\BANCO|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~109_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~65_q\);

-- Location: FF_X78_Y12_N5
\BANCO|registrador~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~109_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~129_q\);

-- Location: LABCELL_X79_Y14_N18
\BANCO|registrador~1277\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1277_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~3_combout\ & ((\BANCO|registrador~129_q\))) # (\ROM|memROM~3_combout\ & (\BANCO|registrador~161_q\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~2_combout\ & ( (\BANCO|registrador~65_q\ & 
-- !\ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~161_q\,
	datab => \BANCO|ALT_INV_registrador~65_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \BANCO|ALT_INV_registrador~129_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1277_combout\);

-- Location: LABCELL_X79_Y14_N0
\BANCO|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1118_combout\ = ( \ROM|memROM~7_combout\ & ( \BANCO|registrador~1277_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \BANCO|registrador~1277_combout\ & ( !\ROM|memROM~2_combout\ ) ) ) # ( 
-- !\ROM|memROM~7_combout\ & ( !\BANCO|registrador~1277_combout\ & ( (\BANCO|registrador~193_q\ & \ROM|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO|ALT_INV_registrador~193_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1277_combout\,
	combout => \BANCO|registrador~1118_combout\);

-- Location: LABCELL_X79_Y14_N39
\BANCO|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[27]~27_combout\ = ( \BANCO|registrador~1118_combout\ & ( \ROM|memROM~2_combout\ ) ) # ( \BANCO|registrador~1118_combout\ & ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \BANCO|ALT_INV_registrador~1118_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|saidaA[27]~27_combout\);

-- Location: MLABCELL_X78_Y14_N0
\BANCO|registrador~1165\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1165_combout\ = ( \ROM|memROM~6_combout\ & ( (\BANCO|registrador~161_q\ & \ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & ((\BANCO|registrador~65_q\))) # (\ROM|memROM~4_combout\ & 
-- (\BANCO|registrador~129_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~161_q\,
	datab => \BANCO|ALT_INV_registrador~129_q\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \BANCO|ALT_INV_registrador~65_q\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1165_combout\);

-- Location: LABCELL_X79_Y12_N24
\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( \BANCO|saidaA[27]~27_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1165_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( \BANCO|saidaA[27]~27_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1165_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[27]~27_combout\,
	dataf => \BANCO|ALT_INV_registrador~1165_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

-- Location: LABCELL_X79_Y14_N12
\ULA|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux4~0_combout\ = ( \ULA|Add0~109_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \ULA|Mux4~0_combout\);

-- Location: FF_X77_Y12_N50
\BANCO|registrador~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~113_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~162_q\);

-- Location: FF_X78_Y12_N59
\BANCO|registrador~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~113_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~130_q\);

-- Location: FF_X79_Y12_N47
\BANCO|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~113_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~66_q\);

-- Location: LABCELL_X77_Y12_N18
\BANCO|registrador~1166\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1166_combout\ = ( \BANCO|registrador~66_q\ & ( (!\ROM|memROM~4_combout\ & (((!\ROM|memROM~6_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\BANCO|registrador~130_q\))) # (\ROM|memROM~6_combout\ & 
-- (\BANCO|registrador~162_q\)))) ) ) # ( !\BANCO|registrador~66_q\ & ( (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((\BANCO|registrador~130_q\))) # (\ROM|memROM~6_combout\ & (\BANCO|registrador~162_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000010101000110100001111100011010000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \BANCO|ALT_INV_registrador~162_q\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_registrador~130_q\,
	dataf => \BANCO|ALT_INV_registrador~66_q\,
	combout => \BANCO|registrador~1166_combout\);

-- Location: LABCELL_X77_Y12_N3
\BANCO|registrador~1281\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1281_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & (\BANCO|registrador~130_q\)) # 
-- (\ROM|memROM~3_combout\ & ((\BANCO|registrador~162_q\))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & 
-- \BANCO|registrador~66_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101010101010100100111001001110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \BANCO|ALT_INV_registrador~130_q\,
	datac => \BANCO|ALT_INV_registrador~162_q\,
	datad => \BANCO|ALT_INV_registrador~66_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \BANCO|registrador~1281_combout\);

-- Location: FF_X79_Y12_N28
\BANCO|registrador~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~113_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~194_q\);

-- Location: LABCELL_X77_Y12_N33
\BANCO|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1122_combout\ = ( \BANCO|registrador~194_q\ & ( (!\ROM|memROM~2_combout\ & ((\BANCO|registrador~1281_combout\))) # (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & !\BANCO|registrador~1281_combout\)) ) ) # ( 
-- !\BANCO|registrador~194_q\ & ( (!\ROM|memROM~2_combout\ & \BANCO|registrador~1281_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010000101010100101000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BANCO|ALT_INV_registrador~1281_combout\,
	dataf => \BANCO|ALT_INV_registrador~194_q\,
	combout => \BANCO|registrador~1122_combout\);

-- Location: LABCELL_X77_Y12_N57
\BANCO|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[28]~28_combout\ = ( \BANCO|registrador~1122_combout\ & ( (\ROM|memROM~2_combout\) # (\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1122_combout\,
	combout => \BANCO|saidaA[28]~28_combout\);

-- Location: LABCELL_X79_Y12_N27
\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1166_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \BANCO|saidaA[28]~28_combout\ ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1166_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \BANCO|saidaA[28]~28_combout\ ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_registrador~1166_combout\,
	dataf => \BANCO|ALT_INV_saidaA[28]~28_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

-- Location: LABCELL_X77_Y12_N21
\ULA|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux3~0_combout\ = ( !\ROM|memROM~1_combout\ & ( \ULA|Add0~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Add0~113_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ULA|Mux3~0_combout\);

-- Location: FF_X79_Y12_N31
\BANCO|registrador~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~117_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~195_q\);

-- Location: FF_X79_Y12_N53
\BANCO|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~117_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~67_q\);

-- Location: FF_X80_Y12_N11
\BANCO|registrador~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~117_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~163_q\);

-- Location: FF_X80_Y12_N49
\BANCO|registrador~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~117_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~131_q\);

-- Location: LABCELL_X81_Y12_N18
\BANCO|registrador~1285\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1285_combout\ = ( \BANCO|registrador~131_q\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\BANCO|registrador~131_q\ & ( \ROM|memROM~2_combout\ & ( \ROM|memROM~3_combout\ ) ) ) # ( \BANCO|registrador~131_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~3_combout\ & (\BANCO|registrador~67_q\))) # (\ROM|memROM~7_combout\ & ((!\ROM|memROM~3_combout\) # ((\BANCO|registrador~163_q\)))) ) ) ) # ( !\BANCO|registrador~131_q\ & ( 
-- !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~3_combout\ & (\BANCO|registrador~67_q\))) # (\ROM|memROM~7_combout\ & (\ROM|memROM~3_combout\ & ((\BANCO|registrador~163_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \BANCO|ALT_INV_registrador~67_q\,
	datad => \BANCO|ALT_INV_registrador~163_q\,
	datae => \BANCO|ALT_INV_registrador~131_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \BANCO|registrador~1285_combout\);

-- Location: LABCELL_X81_Y12_N48
\BANCO|registrador~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1126_combout\ = ( \BANCO|registrador~1285_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1285_combout\ & ( (\BANCO|registrador~195_q\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO|ALT_INV_registrador~195_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCO|ALT_INV_registrador~1285_combout\,
	combout => \BANCO|registrador~1126_combout\);

-- Location: LABCELL_X81_Y12_N39
\BANCO|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[29]~29_combout\ = ( \BANCO|registrador~1126_combout\ & ( (\ROM|memROM~2_combout\) # (\ROM|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1126_combout\,
	combout => \BANCO|saidaA[29]~29_combout\);

-- Location: LABCELL_X80_Y12_N48
\BANCO|registrador~1167\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1167_combout\ = ( \BANCO|registrador~163_q\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & (\BANCO|registrador~67_q\))) # (\ROM|memROM~4_combout\ & (((\BANCO|registrador~131_q\)) # (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\BANCO|registrador~163_q\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & (\BANCO|registrador~67_q\)) # (\ROM|memROM~4_combout\ & ((\BANCO|registrador~131_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~67_q\,
	datad => \BANCO|ALT_INV_registrador~131_q\,
	dataf => \BANCO|ALT_INV_registrador~163_q\,
	combout => \BANCO|registrador~1167_combout\);

-- Location: LABCELL_X79_Y12_N30
\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( \BANCO|saidaA[29]~29_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1167_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( \BANCO|saidaA[29]~29_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1167_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[29]~29_combout\,
	dataf => \BANCO|ALT_INV_registrador~1167_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

-- Location: LABCELL_X81_Y12_N51
\ULA|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux2~0_combout\ = ( \ULA|Add0~117_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~117_sumout\,
	combout => \ULA|Mux2~0_combout\);

-- Location: FF_X79_Y12_N35
\BANCO|registrador~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~121_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~196_q\);

-- Location: FF_X81_Y12_N56
\BANCO|registrador~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~121_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~164_q\);

-- Location: FF_X80_Y12_N32
\BANCO|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~121_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~68_q\);

-- Location: FF_X78_Y12_N50
\BANCO|registrador~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~121_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~132_q\);

-- Location: LABCELL_X79_Y14_N51
\BANCO|registrador~1289\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1289_combout\ = ( \ROM|memROM~2_combout\ & ( \BANCO|registrador~132_q\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \BANCO|registrador~132_q\ & ( (!\ROM|memROM~3_combout\ & (((\ROM|memROM~7_combout\) # 
-- (\BANCO|registrador~68_q\)))) # (\ROM|memROM~3_combout\ & (\BANCO|registrador~164_q\ & ((\ROM|memROM~7_combout\)))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\BANCO|registrador~132_q\ & ( \ROM|memROM~3_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( 
-- !\BANCO|registrador~132_q\ & ( (!\ROM|memROM~3_combout\ & (((\BANCO|registrador~68_q\ & !\ROM|memROM~7_combout\)))) # (\ROM|memROM~3_combout\ & (\BANCO|registrador~164_q\ & ((\ROM|memROM~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010101010101010100001010101110110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \BANCO|ALT_INV_registrador~164_q\,
	datac => \BANCO|ALT_INV_registrador~68_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~132_q\,
	combout => \BANCO|registrador~1289_combout\);

-- Location: LABCELL_X79_Y14_N30
\BANCO|registrador~1130\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1130_combout\ = ( \BANCO|registrador~1289_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1289_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \BANCO|registrador~196_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BANCO|ALT_INV_registrador~196_q\,
	dataf => \BANCO|ALT_INV_registrador~1289_combout\,
	combout => \BANCO|registrador~1130_combout\);

-- Location: LABCELL_X79_Y14_N9
\BANCO|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[30]~30_combout\ = ( \ROM|memROM~2_combout\ & ( \BANCO|registrador~1130_combout\ ) ) # ( !\ROM|memROM~2_combout\ & ( \BANCO|registrador~1130_combout\ & ( \ROM|memROM~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCO|ALT_INV_registrador~1130_combout\,
	combout => \BANCO|saidaA[30]~30_combout\);

-- Location: LABCELL_X77_Y12_N24
\BANCO|registrador~1168\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1168_combout\ = ( \ROM|memROM~6_combout\ & ( (\BANCO|registrador~164_q\ & \ROM|memROM~4_combout\) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\ROM|memROM~4_combout\ & (\BANCO|registrador~68_q\)) # (\ROM|memROM~4_combout\ & 
-- ((\BANCO|registrador~132_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~68_q\,
	datab => \BANCO|ALT_INV_registrador~132_q\,
	datac => \BANCO|ALT_INV_registrador~164_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|registrador~1168_combout\);

-- Location: LABCELL_X79_Y12_N33
\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( \BANCO|saidaA[30]~30_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1168_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( \BANCO|saidaA[30]~30_combout\ ) + ( !\ROM|memROM~2_combout\ $ (((!\BANCO|registrador~1168_combout\) # ((!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\)))) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \BANCO|ALT_INV_saidaA[30]~30_combout\,
	dataf => \BANCO|ALT_INV_registrador~1168_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

-- Location: LABCELL_X80_Y13_N12
\ULA|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux1~0_combout\ = ( !\ROM|memROM~1_combout\ & ( \ULA|Add0~121_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ALT_INV_Add0~121_sumout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ULA|Mux1~0_combout\);

-- Location: LABCELL_X79_Y12_N36
\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( GND ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

-- Location: MLABCELL_X78_Y11_N18
\ULA|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Mux0~0_combout\ = ( \ULA|Add0~125_sumout\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ULA|ALT_INV_Add0~125_sumout\,
	combout => \ULA|Mux0~0_combout\);

-- Location: FF_X79_Y12_N37
\BANCO|registrador~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~125_sumout\,
	sclr => \ROM|memROM~1_combout\,
	ena => \BANCO|registrador~1300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~197_q\);

-- Location: FF_X80_Y12_N23
\BANCO|registrador~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~125_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~165_q\);

-- Location: FF_X78_Y11_N44
\BANCO|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~125_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~69_q\);

-- Location: FF_X80_Y12_N17
\BANCO|registrador~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~125_sumout\,
	sclr => \ROM|memROM~1_combout\,
	sload => VCC,
	ena => \BANCO|registrador~1298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO|registrador~133_q\);

-- Location: MLABCELL_X78_Y11_N42
\BANCO|registrador~1293\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1293_combout\ = ( \BANCO|registrador~69_q\ & ( \BANCO|registrador~133_q\ & ( (!\ROM|memROM~3_combout\ & (((!\ROM|memROM~2_combout\)))) # (\ROM|memROM~3_combout\ & (((\BANCO|registrador~165_q\ & \ROM|memROM~7_combout\)) # 
-- (\ROM|memROM~2_combout\))) ) ) ) # ( !\BANCO|registrador~69_q\ & ( \BANCO|registrador~133_q\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~7_combout\ & ((!\ROM|memROM~3_combout\) # (\BANCO|registrador~165_q\)))) # (\ROM|memROM~2_combout\ & 
-- (((\ROM|memROM~3_combout\)))) ) ) ) # ( \BANCO|registrador~69_q\ & ( !\BANCO|registrador~133_q\ & ( (!\ROM|memROM~3_combout\ & (((!\ROM|memROM~7_combout\ & !\ROM|memROM~2_combout\)))) # (\ROM|memROM~3_combout\ & (((\BANCO|registrador~165_q\ & 
-- \ROM|memROM~7_combout\)) # (\ROM|memROM~2_combout\))) ) ) ) # ( !\BANCO|registrador~69_q\ & ( !\BANCO|registrador~133_q\ & ( (\ROM|memROM~3_combout\ & (((\BANCO|registrador~165_q\ & \ROM|memROM~7_combout\)) # (\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011110000010011001100001101001100111100110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~165_q\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCO|ALT_INV_registrador~69_q\,
	dataf => \BANCO|ALT_INV_registrador~133_q\,
	combout => \BANCO|registrador~1293_combout\);

-- Location: MLABCELL_X78_Y11_N0
\BANCO|registrador~1134\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|registrador~1134_combout\ = ( \BANCO|registrador~1293_combout\ & ( !\ROM|memROM~2_combout\ ) ) # ( !\BANCO|registrador~1293_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~7_combout\ & \BANCO|registrador~197_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \BANCO|ALT_INV_registrador~197_q\,
	dataf => \BANCO|ALT_INV_registrador~1293_combout\,
	combout => \BANCO|registrador~1134_combout\);

-- Location: LABCELL_X79_Y11_N57
\BANCO|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaA[31]~31_combout\ = ( \BANCO|registrador~1134_combout\ & ( (\ROM|memROM~3_combout\) # (\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \BANCO|ALT_INV_registrador~1134_combout\,
	combout => \BANCO|saidaA[31]~31_combout\);

-- Location: LABCELL_X77_Y12_N9
\BANCO|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[0]~0_combout\ = ( \BANCO|registrador~1138_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1138_combout\,
	combout => \BANCO|saidaB[0]~0_combout\);

-- Location: LABCELL_X71_Y8_N36
\BANCO|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[1]~1_combout\ = ( \BANCO|registrador~1139_combout\ & ( \ROM|memROM~4_combout\ ) ) # ( \BANCO|registrador~1139_combout\ & ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datae => \BANCO|ALT_INV_registrador~1139_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \BANCO|saidaB[1]~1_combout\);

-- Location: LABCELL_X71_Y8_N45
\BANCO|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[2]~2_combout\ = ( \BANCO|registrador~1140_combout\ & ( \ROM|memROM~4_combout\ ) ) # ( \BANCO|registrador~1140_combout\ & ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datae => \BANCO|ALT_INV_registrador~1140_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \BANCO|saidaB[2]~2_combout\);

-- Location: LABCELL_X80_Y13_N42
\BANCO|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[3]~3_combout\ = ( \ROM|memROM~6_combout\ & ( \BANCO|registrador~1141_combout\ ) ) # ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~4_combout\ & \BANCO|registrador~1141_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \BANCO|ALT_INV_registrador~1141_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|saidaB[3]~3_combout\);

-- Location: LABCELL_X77_Y12_N54
\BANCO|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[4]~4_combout\ = ( \ROM|memROM~6_combout\ & ( \BANCO|registrador~1142_combout\ ) ) # ( !\ROM|memROM~6_combout\ & ( (\BANCO|registrador~1142_combout\ & \ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO|ALT_INV_registrador~1142_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|saidaB[4]~4_combout\);

-- Location: MLABCELL_X78_Y11_N15
\BANCO|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[5]~5_combout\ = ( \BANCO|registrador~1143_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1143_combout\,
	combout => \BANCO|saidaB[5]~5_combout\);

-- Location: LABCELL_X80_Y11_N48
\BANCO|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[6]~6_combout\ = ( \BANCO|registrador~1144_combout\ & ( (\ROM|memROM~6_combout\) # (\ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \BANCO|ALT_INV_registrador~1144_combout\,
	combout => \BANCO|saidaB[6]~6_combout\);

-- Location: LABCELL_X71_Y8_N51
\BANCO|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[7]~7_combout\ = ( \BANCO|registrador~1145_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1145_combout\,
	combout => \BANCO|saidaB[7]~7_combout\);

-- Location: LABCELL_X71_Y8_N6
\BANCO|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[8]~8_combout\ = ( \BANCO|registrador~1146_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1146_combout\,
	combout => \BANCO|saidaB[8]~8_combout\);

-- Location: LABCELL_X71_Y8_N12
\BANCO|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[9]~9_combout\ = ( \BANCO|registrador~1147_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1147_combout\,
	combout => \BANCO|saidaB[9]~9_combout\);

-- Location: LABCELL_X71_Y8_N15
\BANCO|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[10]~10_combout\ = (\BANCO|registrador~1148_combout\ & ((\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \BANCO|ALT_INV_registrador~1148_combout\,
	combout => \BANCO|saidaB[10]~10_combout\);

-- Location: LABCELL_X71_Y8_N33
\BANCO|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[11]~11_combout\ = ( \ROM|memROM~4_combout\ & ( \BANCO|registrador~1149_combout\ ) ) # ( !\ROM|memROM~4_combout\ & ( (\BANCO|registrador~1149_combout\ & \ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO|ALT_INV_registrador~1149_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \BANCO|saidaB[11]~11_combout\);

-- Location: MLABCELL_X78_Y14_N12
\BANCO|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[12]~12_combout\ = ( \BANCO|registrador~1150_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1150_combout\,
	combout => \BANCO|saidaB[12]~12_combout\);

-- Location: LABCELL_X80_Y13_N54
\BANCO|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[13]~13_combout\ = ( \BANCO|registrador~1151_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1151_combout\,
	combout => \BANCO|saidaB[13]~13_combout\);

-- Location: LABCELL_X81_Y13_N24
\BANCO|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[14]~14_combout\ = ( \BANCO|registrador~1152_combout\ & ( \ROM|memROM~6_combout\ ) ) # ( \BANCO|registrador~1152_combout\ & ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datae => \BANCO|ALT_INV_registrador~1152_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|saidaB[14]~14_combout\);

-- Location: LABCELL_X77_Y13_N0
\BANCO|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[15]~15_combout\ = (\BANCO|registrador~1153_combout\ & ((\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~1153_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \BANCO|saidaB[15]~15_combout\);

-- Location: LABCELL_X71_Y8_N9
\BANCO|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[16]~16_combout\ = ( \BANCO|registrador~1154_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1154_combout\,
	combout => \BANCO|saidaB[16]~16_combout\);

-- Location: LABCELL_X71_Y8_N3
\BANCO|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[17]~17_combout\ = ( \BANCO|registrador~1155_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1155_combout\,
	combout => \BANCO|saidaB[17]~17_combout\);

-- Location: LABCELL_X80_Y13_N45
\BANCO|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[18]~18_combout\ = ( \ROM|memROM~6_combout\ & ( \BANCO|registrador~1156_combout\ ) ) # ( !\ROM|memROM~6_combout\ & ( (\ROM|memROM~4_combout\ & \BANCO|registrador~1156_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \BANCO|ALT_INV_registrador~1156_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|saidaB[18]~18_combout\);

-- Location: LABCELL_X80_Y12_N45
\BANCO|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[19]~19_combout\ = ( \BANCO|registrador~1157_combout\ & ( (\ROM|memROM~6_combout\) # (\ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \BANCO|ALT_INV_registrador~1157_combout\,
	combout => \BANCO|saidaB[19]~19_combout\);

-- Location: LABCELL_X80_Y6_N39
\BANCO|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[20]~20_combout\ = ( \ROM|memROM~6_combout\ & ( \BANCO|registrador~1158_combout\ ) ) # ( !\ROM|memROM~6_combout\ & ( \BANCO|registrador~1158_combout\ & ( \ROM|memROM~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \BANCO|ALT_INV_registrador~1158_combout\,
	combout => \BANCO|saidaB[20]~20_combout\);

-- Location: LABCELL_X80_Y12_N12
\BANCO|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[21]~21_combout\ = (\BANCO|registrador~1159_combout\ & ((\ROM|memROM~6_combout\) # (\ROM|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \BANCO|ALT_INV_registrador~1159_combout\,
	combout => \BANCO|saidaB[21]~21_combout\);

-- Location: LABCELL_X74_Y8_N24
\BANCO|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[22]~22_combout\ = ( \ROM|memROM~4_combout\ & ( \BANCO|registrador~1160_combout\ ) ) # ( !\ROM|memROM~4_combout\ & ( \BANCO|registrador~1160_combout\ & ( \ROM|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1160_combout\,
	combout => \BANCO|saidaB[22]~22_combout\);

-- Location: LABCELL_X71_Y8_N54
\BANCO|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[23]~23_combout\ = (\BANCO|registrador~1161_combout\ & ((\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \BANCO|ALT_INV_registrador~1161_combout\,
	combout => \BANCO|saidaB[23]~23_combout\);

-- Location: LABCELL_X71_Y8_N57
\BANCO|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[24]~24_combout\ = ( \BANCO|registrador~1162_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1162_combout\,
	combout => \BANCO|saidaB[24]~24_combout\);

-- Location: LABCELL_X71_Y8_N24
\BANCO|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[25]~25_combout\ = ( \BANCO|registrador~1163_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1163_combout\,
	combout => \BANCO|saidaB[25]~25_combout\);

-- Location: LABCELL_X71_Y8_N48
\BANCO|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[26]~26_combout\ = (\BANCO|registrador~1164_combout\ & ((\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \BANCO|ALT_INV_registrador~1164_combout\,
	combout => \BANCO|saidaB[26]~26_combout\);

-- Location: LABCELL_X81_Y12_N27
\BANCO|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[27]~27_combout\ = ( \ROM|memROM~4_combout\ & ( \BANCO|registrador~1165_combout\ ) ) # ( !\ROM|memROM~4_combout\ & ( (\ROM|memROM~6_combout\ & \BANCO|registrador~1165_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \BANCO|ALT_INV_registrador~1165_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \BANCO|saidaB[27]~27_combout\);

-- Location: LABCELL_X71_Y8_N18
\BANCO|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[28]~28_combout\ = ( \ROM|memROM~4_combout\ & ( \BANCO|registrador~1166_combout\ ) ) # ( !\ROM|memROM~4_combout\ & ( (\BANCO|registrador~1166_combout\ & \ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCO|ALT_INV_registrador~1166_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \BANCO|saidaB[28]~28_combout\);

-- Location: LABCELL_X71_Y8_N0
\BANCO|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[29]~29_combout\ = ( \BANCO|registrador~1167_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1167_combout\,
	combout => \BANCO|saidaB[29]~29_combout\);

-- Location: LABCELL_X71_Y8_N27
\BANCO|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[30]~30_combout\ = ( \BANCO|registrador~1168_combout\ & ( (\ROM|memROM~4_combout\) # (\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCO|ALT_INV_registrador~1168_combout\,
	combout => \BANCO|saidaB[30]~30_combout\);

-- Location: LABCELL_X80_Y11_N57
\BANCO|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO|saidaB[31]~31_combout\ = (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & (\BANCO|registrador~133_q\)) # (\ROM|memROM~6_combout\ & ((\BANCO|registrador~165_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010100010001000001010001000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \BANCO|ALT_INV_registrador~133_q\,
	datac => \BANCO|ALT_INV_registrador~165_q\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	combout => \BANCO|saidaB[31]~31_combout\);

-- Location: LABCELL_X37_Y43_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


