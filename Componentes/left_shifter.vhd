library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;           --Soma (esta biblioteca =ieee)

entity left_shifter is
    generic
    (
        larguraDados : natural := 16;
		  shift_n      : natural := 2;
    );
    port
    (
        entrada: in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:  out STD_LOGIC_VECTOR((larguraDados*2-1) downto 0)
    );
end entity;

architecture comportamento of left_shifter is
	
   begin
      saida <= entrada << shift_n;
end architecture;