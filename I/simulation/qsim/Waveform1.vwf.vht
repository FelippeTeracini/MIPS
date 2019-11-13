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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/02/2019 01:26:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TOP_LEVEL_I
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TOP_LEVEL_I_vhd_vec_tst IS
END TOP_LEVEL_I_vhd_vec_tst;
ARCHITECTURE TOP_LEVEL_I_arch OF TOP_LEVEL_I_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL beq : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL enable_pc : STD_LOGIC;
SIGNAL EntradaFunct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL escreveC : STD_LOGIC;
SIGNAL muxRT_Imediato : STD_LOGIC;
SIGNAL muxRT_RD : STD_LOGIC;
SIGNAL muxULA_RAM : STD_LOGIC;
SIGNAL reset_pc : STD_LOGIC;
SIGNAL Saida : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SaidaA1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SaidaB1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaMUX_BULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaRAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SaidaROM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT TOP_LEVEL_I
	PORT (
	beq : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	enable_pc : IN STD_LOGIC;
	EntradaFunct : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	escreveC : IN STD_LOGIC;
	muxRT_Imediato : IN STD_LOGIC;
	muxRT_RD : IN STD_LOGIC;
	muxULA_RAM : IN STD_LOGIC;
	reset_pc : IN STD_LOGIC;
	Saida : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	SaidaA1 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	SaidaB1 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaMUX_BULA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaRAM : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	SaidaROM : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TOP_LEVEL_I
	PORT MAP (
-- list connections between master ports and signals
	beq => beq,
	Clk => Clk,
	enable_pc => enable_pc,
	EntradaFunct => EntradaFunct,
	escreveC => escreveC,
	muxRT_Imediato => muxRT_Imediato,
	muxRT_RD => muxRT_RD,
	muxULA_RAM => muxULA_RAM,
	reset_pc => reset_pc,
	Saida => Saida,
	SaidaA1 => SaidaA1,
	SaidaB1 => SaidaB1,
	saidaMUX_BULA => saidaMUX_BULA,
	saidaRAM => saidaRAM,
	SaidaROM => SaidaROM,
	we => we
	);

-- beq
t_prcs_beq: PROCESS
BEGIN
	beq <= '0';
WAIT;
END PROCESS t_prcs_beq;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		Clk <= '0';
		WAIT FOR 30000 ps;
		Clk <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	Clk <= '0';
	WAIT FOR 30000 ps;
	Clk <= '1';
WAIT;
END PROCESS t_prcs_Clk;

-- enable_pc
t_prcs_enable_pc: PROCESS
BEGIN
	enable_pc <= '1';
	WAIT FOR 390000 ps;
	enable_pc <= '0';
WAIT;
END PROCESS t_prcs_enable_pc;
-- EntradaFunct[5]
t_prcs_EntradaFunct_5: PROCESS
BEGIN
	EntradaFunct(5) <= '1';
	WAIT FOR 110000 ps;
	EntradaFunct(5) <= '0';
WAIT;
END PROCESS t_prcs_EntradaFunct_5;
-- EntradaFunct[4]
t_prcs_EntradaFunct_4: PROCESS
BEGIN
	EntradaFunct(4) <= '0';
WAIT;
END PROCESS t_prcs_EntradaFunct_4;
-- EntradaFunct[3]
t_prcs_EntradaFunct_3: PROCESS
BEGIN
	EntradaFunct(3) <= '0';
WAIT;
END PROCESS t_prcs_EntradaFunct_3;
-- EntradaFunct[2]
t_prcs_EntradaFunct_2: PROCESS
BEGIN
	EntradaFunct(2) <= '0';
WAIT;
END PROCESS t_prcs_EntradaFunct_2;
-- EntradaFunct[1]
t_prcs_EntradaFunct_1: PROCESS
BEGIN
	EntradaFunct(1) <= '0';
WAIT;
END PROCESS t_prcs_EntradaFunct_1;
-- EntradaFunct[0]
t_prcs_EntradaFunct_0: PROCESS
BEGIN
	EntradaFunct(0) <= '0';
WAIT;
END PROCESS t_prcs_EntradaFunct_0;

-- escreveC
t_prcs_escreveC: PROCESS
BEGIN
	escreveC <= '0';
	WAIT FOR 70000 ps;
	escreveC <= '1';
	WAIT FOR 50000 ps;
	escreveC <= '0';
WAIT;
END PROCESS t_prcs_escreveC;

-- muxRT_Imediato
t_prcs_muxRT_Imediato: PROCESS
BEGIN
	muxRT_Imediato <= '1';
	WAIT FOR 110000 ps;
	muxRT_Imediato <= '0';
WAIT;
END PROCESS t_prcs_muxRT_Imediato;

-- muxRT_RD
t_prcs_muxRT_RD: PROCESS
BEGIN
	muxRT_RD <= '0';
WAIT;
END PROCESS t_prcs_muxRT_RD;

-- muxULA_RAM
t_prcs_muxULA_RAM: PROCESS
BEGIN
	muxULA_RAM <= '0';
	WAIT FOR 70000 ps;
	muxULA_RAM <= '1';
	WAIT FOR 40000 ps;
	muxULA_RAM <= '0';
WAIT;
END PROCESS t_prcs_muxULA_RAM;

-- reset_pc
t_prcs_reset_pc: PROCESS
BEGIN
	reset_pc <= '0';
WAIT;
END PROCESS t_prcs_reset_pc;

-- we
t_prcs_we: PROCESS
BEGIN
	we <= '1';
	WAIT FOR 50000 ps;
	we <= '0';
WAIT;
END PROCESS t_prcs_we;
END TOP_LEVEL_I_arch;
