-- Design de Computadores
-- file: mips.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity mips is
	port
    (
--		  clk                   : IN STD_LOGIC;
        CLOCK_50			      : IN  STD_LOGIC;
		  KEY                   : IN std_logic_vector(3 downto 2);
		  PC_out                : OUT std_logic_vector(DATA_WIDTH-1 downto 0);
		  ULA_out               : OUT std_logic_vector(DATA_WIDTH-1 downto 0);
		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
		  
    );
end entity;

architecture estrutural of mips is

	-- Declaração de sinais auxiliares
    signal ALUop                : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
    signal ALUctr               : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0);
	 
	 signal PC_out_signal               : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
	 signal ULA_out_signal              : STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
    signal auxReset : std_logic;
	 
	 signal saida_r1              : STD_LOGIC_VECTOR(0 downto 0);

    -- Sinal de clock auxiliar para simulação
    -- signal clk  : STD_LOGIC;
begin

    -- CLOCK generator auxiliar para simulação
    -- CG : entity work.clock_generator port map (clk	=> clk);
	 
	 -- Registrador 1 --
	REG_1 : entity work.Registrador
		generic map(
			NUM_BITS => 1
		)
		port map(
			clk => (not KEY(3)),
			enable => '1',
			reset => (not KEY(2)),
			data_in => "1",
			data_out => saida_r1
		);
	 
   detectorSub0: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (saida_r1(0)), saida => auxReset);

    FD : entity work.fluxo_dados 
	port map
	(
        clk	                    => auxReset,--KEY(0),
		  saidaPC                 => PC_out_signal,
		  saidaULA                => ULA_out_signal
    );
	 
	H0: entity work.conversorHex7Seg 
	port map(
		dadoHex => ULA_out_signal(3 downto 0),
--   		apaga   => SW(17),
		saida7seg => HEX0
	);
	 
	H1: entity work.conversorHex7Seg 
	port map(
		dadoHex => ULA_out_signal(7 downto 4),
--   		apaga   => SW(17),
		saida7seg => HEX1
	);
	
	H2: entity work.conversorHex7Seg 
	port map(
		dadoHex => ULA_out_signal(11 downto 8),
--   		apaga   => SW(17),
		saida7seg => HEX2
	);
	
	H3: entity work.conversorHex7Seg 
	port map(
		dadoHex => ULA_out_signal(15 downto 12),
--   		apaga   => SW(17),
		saida7seg => HEX3
	);
	
	H4: entity work.conversorHex7Seg 
	port map(
		dadoHex => ULA_out_signal(19 downto 16),
--   		apaga   => SW(17),
		saida7seg => HEX4
	);
	
	H5: entity work.conversorHex7Seg 
	port map(
		dadoHex => ULA_out_signal(23 downto 20),
--   		apaga   => SW(17),
		saida7seg => HEX5
	);
	
	H6: entity work.conversorHex7Seg 
	port map(
		dadoHex => PC_out_signal(3 downto 0),
--   		apaga   => SW(17),
		saida7seg => HEX6
	);
	
	H7: entity work.conversorHex7Seg 
	port map(
		dadoHex => PC_out_signal(7 downto 4),
--   		apaga   => SW(17),
		saida7seg => HEX7
	);
	
	PC_out <= PC_out_signal;
	ULA_out <= ULA_out_signal;

end architecture;
