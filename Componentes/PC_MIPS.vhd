library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC_MIPS is
   generic (
          addrWidth: natural := 3
    );
   port (
			 Clk : in std_logic;
			 enable_pc : in std_logic;
			 B_somador: in std_logic_vector (addrWidth-1 DOWNTO 0);
			 reset_pc: in std_logic;
			 Data : in std_logic_vector ((addrWidth-1) DOWNTO 0);
          Addr : out std_logic_vector (addrWidth-1 DOWNTO 0);
			 OutSomador : out std_logic_vector ((addrWidth-1) DOWNTO 0)
    );
end entity;

architecture assincrona of PC_MIPS is

	signal outPC, outSomador: std_logic_vector(addrWidth-1 DOWNTO 0);

begin

	Somador : entity work.somadorGenerico generic map(larguraDados => addrWidth)
		port map(
			entradaA => outPC,
			entradaB => B_somador,
			saida => outSomador
		);

	PC : entity work.registrador generic map(N => addrWidth)
		port map(
			clk => Clk,
			enable => enable_pc,
			reset	=> reset_pc,
			data => Data,
			output => outPC
		);
		
	Addr <= outPC;
	OutSomador <= outSomador;
	 
end architecture;