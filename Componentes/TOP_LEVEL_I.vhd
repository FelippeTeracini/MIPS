library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity TOP_LEVEL_I is
   generic (
          addrWidth: natural := 32;
			 dataWidth: natural := 32;
			 memoryAddrWidth:  natural := 6;
			 bancoAddrWidth: natural := 5
    );
   port (
			 -- Clock --
			 Clk             : in std_logic;
			 
			 -- PC --
			 enable_pc       : in std_logic;
			 reset_pc        : in std_logic;
			 
			 -- MUX --
			 muxRT_RD        : in std_logic;
			 muxRT_Imediato  : in std_logic;
			 muxULA_RAM      : in std_logic;
			 saidaMUX_BULA   : out std_logic_vector((dataWidth-1) downto 0);
			 
			 -- Banco de Registradores --
			 escreveC        : in std_logic;
			 
			 -- ULA --
			 Saida           : out std_logic_vector((dataWidth-1) downto 0);
			 SaidaA1			  : out std_logic_vector((dataWidth-1) downto 0);			
			 SaidaB1			  : out std_logic_vector((dataWidth-1) downto 0);
			 SaidaROM        : out std_logic_vector((addrWidth-1) downto 0);
--			 SaidaFunct      : out std_logic_vector(5 downto 0);
			 EntradaFunct    : in  std_logic_vector(5 downto 0);
			 
			 -- RAM --
			 we              : in std_logic;
			 saidaRAM        : out std_logic_vector((dataWidth-1) downto 0);
			 
			 -- UC --
			 beq             : in std_logic
			 
    );
end entity;

architecture assincrona of TOP_LEVEL_I is

	signal zero : std_logic_vector(0 downto 0);
--	signal funct: std_logic_vector(5 downto 0);
	signal outMUX_END3 : std_logic_vector(4 downto 0);
	signal outPC, outSomador, outSomadorExt, outMUX_PCIM: std_logic_vector(addrWidth-1 DOWNTO 0);
	signal outROM, outExtensor, outLShift, outMUX_BULA, outULA, saidaABanco, saidaBBanco, outRAM, outMUX_ULARAM: std_logic_vector (dataWidth-1 DOWNTO 0);

begin

	PC : entity work.PC_MIPS 
	generic map(
          addrWidth => addrWidth
   )
   port map(
			 Clk => Clk,
			 enable_pc => enable_pc,
			 B_somador => x"00000004",
			 reset_pc => reset_pc,
			 Data => outMUX_PCIM,
          Addr => outPC,
			 Out_Somador => outSomador
   );

	ROM : entity work.ROM_MIPS 
	generic map(
          dataWidth => dataWidth,
          addrWidth => addrWidth,
          memoryAddrWidth => memoryAddrWidth 
	)
   port map( 
			 clk => Clk,
          Endereco => outPC,
          Dado => outROM
	);
	
	MUX_END3 : entity work.MUX2_1
	generic map(
          N => 5
	)
   port map( 
			 A	=> outROM(20 downto 16),
			 B	=> outROM(15 downto 11),
			 Sel => muxRT_RD,
			 Y	=> outMUX_END3
	);

	BANCO : entity work.bancoRegistradores_MIPS 
	generic map(
          larguraDados => dataWidth,
          larguraEndBancoRegs => bancoAddrWidth
   )
   port map(
          clk => Clk,
 
          enderecoA => outROM(25 downto 21),
          enderecoB => outROM(20 downto 16),
          enderecoC => outMUX_END3,
    
          dadoEscritaC => outULA,
    
          escreveC => escreveC,
          saidaA => saidaABanco,
          saidaB => saidaBBanco
   );
	
	Extensor : entity work.extensor_de_sinal
	generic map(
          larguraDados => dataWidth/2
   )
   port map(
          entrada => outROM(15 downto 0),
			 saida => outExtensor
   );
	
	LShift : entity work.left_shifter
	generic map(
          larguraDados => dataWidth,
			 shift_n => 2
   )
   port map(
          entrada => outExtensor,
			 saida => outLShift
   );
	
	SomadorExt : entity work.somadorGenerico
	generic map(
          larguraDados => dataWidth
	)
   port map( 
			 entradaA => outSomador,
			 entradaB => outLShift,
			 saida => outSomadorExt
	);
	
	MUX_PCIM : entity work.MUX2_1
	generic map(
          N => dataWidth
	)
   port map( 
			 A	=> outSomador,
			 B	=> outSomadorExt,
			 Sel => beq and zero(0),
			 Y	=> outMUX_PCIM
	);
	
	MUX_BULA : entity work.MUX2_1
	generic map(
          N => dataWidth
	)
   port map( 
			 A	=> saidaBBanco,
			 B	=> outExtensor,
			 Sel => muxRT_Imediato,
			 Y	=> outMUX_BULA
	);
	
	ULA : entity work.ULA_MIPS
	generic map(
		    N => dataWidth
	)
	port map(
			 --- IN ---
			 A => saidaABanco,
			 B => outMUX_BULA,
			 instrucao => EntradaFunct,
				
			 --- OUT ---
			 saida => outULA,
			 zero => zero
	);
	
	RAM : entity work.RAM_MIPS
	generic map(
		    dataWidth => dataWidth,
          addrWidth => addrWidth,
			 memoryAddrWidth => memoryAddrWidth
	)
	port map(
			 addr => outULA,
			 we => we,
			 clk => Clk,
			 dado_in => outMUX_BULA,
			 dado_out => outRAM
	);
	
	MUX_ULARAM : entity work.MUX2_1
	generic map(
          N => dataWidth
	)
   port map( 
			 A	=> outULA,
			 B	=> outRAM,
			 Sel => muxULA_RAM,
			 Y	=> outMUX_ULARAM
	);
	
--	funct <= outROM(5 downto 0);
--	
--	SaidaFunct <= funct;
	Saida <= outULA;
	SaidaA1 <= saidaABanco;
	SaidaB1 <= saidaBBanco;
	SaidaROM <= outROM;
	saidaRAM <= outRAM;
	saidaMUX_BULA <= outMUX_BULA;
	 
end architecture;