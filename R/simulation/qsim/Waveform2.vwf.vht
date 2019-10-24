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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/24/2019 16:39:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TOP_LEVEL_R
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TOP_LEVEL_R_vhd_vec_tst IS
END TOP_LEVEL_R_vhd_vec_tst;
ARCHITECTURE TOP_LEVEL_R_arch OF TOP_LEVEL_R_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL enable_pc : STD_LOGIC;
SIGNAL escreveC : STD_LOGIC;
SIGNAL reset_pc : STD_LOGIC;
SIGNAL Saida : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SaidaA1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SaidaB1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SaidaFunct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL SaidaROM : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT TOP_LEVEL_R
	PORT (
	Clk : IN STD_LOGIC;
	enable_pc : IN STD_LOGIC;
	escreveC : IN STD_LOGIC;
	reset_pc : IN STD_LOGIC;
	Saida : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	SaidaA1 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	SaidaB1 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	SaidaFunct : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	SaidaROM : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TOP_LEVEL_R
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	enable_pc => enable_pc,
	escreveC => escreveC,
	reset_pc => reset_pc,
	Saida => Saida,
	SaidaA1 => SaidaA1,
	SaidaB1 => SaidaB1,
	SaidaFunct => SaidaFunct,
	SaidaROM => SaidaROM
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		Clk <= '0';
		WAIT FOR 60000 ps;
		Clk <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;

-- enable_pc
t_prcs_enable_pc: PROCESS
BEGIN
	enable_pc <= '1';
WAIT;
END PROCESS t_prcs_enable_pc;

-- escreveC
t_prcs_escreveC: PROCESS
BEGIN
	escreveC <= '1';
WAIT;
END PROCESS t_prcs_escreveC;

-- reset_pc
t_prcs_reset_pc: PROCESS
BEGIN
	reset_pc <= '0';
WAIT;
END PROCESS t_prcs_reset_pc;
END TOP_LEVEL_R_arch;
