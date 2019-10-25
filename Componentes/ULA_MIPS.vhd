library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA_MIPS is
	generic(
		N: INTEGER := 8
	);
	port(
		--- IN ---
		A : in std_logic_vector(N-1 downto 0);
		B : in std_logic_vector(N-1 downto 0);
		instrucao : in std_logic_vector(5 downto 0);
		
		--- OUT ---
		saida : out std_logic_vector(N-1 downto 0)
	);
	
end ULA_MIPS;

Architecture comportamento of ULA_MIPS is

	signal resultado: integer;
	signal ai : integer;
	signal bi : integer;

begin

 process(all)
 
 begin
	ai <= to_integer(unsigned(A));
	bi <= to_integer(unsigned(B));
 
  case(instrucao) is
  when "100000" => -- Adicao
   resultado <= ai + bi ; 
  when "000001" => -- SaiB
   resultado <= bi ;
  when "100010" => -- Subtracao
	resultado <= ai - bi ;
	when others => resultado <= 0 ; 
  end case;
 end process;
 saida <= std_logic_vector(to_unsigned(resultado, saida'length));
end comportamento;