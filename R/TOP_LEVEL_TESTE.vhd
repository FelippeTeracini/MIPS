library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity TOP_LEVEL_TESTE is
   generic (
          addrWidth: natural := 32;
			 dataWidth: natural := 32;
			 memoryAddrWidth:  natural := 6;
			 bancoAddrWidth: natural := 5
    );
   port (
			 -- Clock --
			 CLOCK_50        : in std_logic;
			 
			 -- PC --
			 enable_pc       : in std_logic;
			 reset_pc        : in std_logic;
			 
			 -- Banco de Registradores --
			 escreveC        : in std_logic;
			 
			 -- ULA --
			 Saida           : out std_logic_vector((dataWidth-1) downto 0);
			 SaidaA1			  : out std_logic_vector((dataWidth-1) downto 0);			
			 SaidaB1			  : out std_logic_vector((dataWidth-1) downto 0);
			 SaidaROM        : out std_logic_vector((addrWidth-1) downto 0);
			 SaidaFunct : out std_logic_vector(5 downto 0);
			 
			 KEY             : IN std_logic_vector(3 downto 0);
			 SW              : IN std_logic_vector(17 downto 0);
			 HEX0, HEX1, HEX2 : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end entity;

architecture assincrona of TOP_LEVEL_TESTE is

	signal funct: std_logic_vector(5 downto 0);
	signal outPC: std_logic_vector(addrWidth-1 DOWNTO 0);
	signal outROM, outULA, saidaABanco, saidaBBanco: std_logic_vector (dataWidth-1 DOWNTO 0);
	signal saidaEdge1, saidaEdge2: std_logic;

begin

	EDGE1: entity work.edgeDetector(bordaSubida)
	port map(
	       clk => CLOCK_50,
			 entrada => not(KEY(3)),
			 saida => saidaEdge1
	);
	
	EDGE2: entity work.edgeDetector(bordaSubida)
	port map(
	       clk => CLOCK_50,
			 entrada => not(KEY(2)),
			 saida => saidaEdge2
	);

	PC : entity work.PC_MIPS 
	generic map(
          addrWidth => addrWidth
   )
   port map(
			 Clk => saidaEdge1,
			 enable_pc => SW(17),
			 B_somador => x"00000004",
			 reset_pc => saidaEdge2,
          Addr => outPC
   );

	ROM : entity work.ROM_MIPS 
	generic map(
          dataWidth => dataWidth,
          addrWidth => addrWidth,
          memoryAddrWidth => memoryAddrWidth 
	)
   port map( 
			 clk => CLOCK_50,
          Endereco => outPC,
          Dado => outROM
	);

	BANCO : entity work.bancoRegistradores_MIPS 
	generic map(
          larguraDados => dataWidth,
          larguraEndBancoRegs => bancoAddrWidth
   )
   port map(
          clk => CLOCK_50,
 
          enderecoA => outROM(25 downto 21),
          enderecoB => outROM(20 downto 16),
          enderecoC => outROM(15 downto 11),
    
          dadoEscritaC => outULA,
    
          escreveC => SW(16),
          saidaA => saidaABanco,
          saidaB => saidaBBanco
   );
	
	ULA : entity work.ULA_MIPS
	generic map(
		    N => dataWidth
	)
	port map(
			 --- IN ---
			 A => saidaABanco,
			 B => saidaBBanco,
			 instrucao => funct,
				
			 --- OUT ---
			 saida => outULA
	);
	
	HEX_0: entity work.conversorHex7Seg
	port map(
	       dadoHex => saidaABanco(3 downto 0),
			 
			 saida7seg => HEX0
	);
	
	HEX_1: entity work.conversorHex7Seg
	port map(
	       dadoHex => saidaBBanco(3 downto 0),
			 
			 saida7seg => HEX1
	);
	
	HEX_2: entity work.conversorHex7Seg
	port map(
	       dadoHex => outULA(3 downto 0),
			 
			 saida7seg => HEX2
	);
	
	
	funct <= SW(5 downto 0); --outROM(5 downto 0);
	
	SaidaFunct <= funct;
	Saida <= outULA;
	SaidaA1 <= saidaABanco;
	SaidaB1 <= saidaBBanco;
	SaidaROM <= outROM;
	 
end architecture;