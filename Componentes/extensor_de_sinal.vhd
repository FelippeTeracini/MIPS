library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;           --Soma (esta biblioteca =ieee)

entity extensor_de_sinal is
    generic
    (
        larguraDados : natural := 16
    );
    port
    (
        entrada: in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:  out STD_LOGIC_VECTOR((larguraDados*2-1) downto 0)
    );
end entity;

architecture comportamento of extensor_de_sinal is
	signal helper : std_logic_vector((larguraDados-1) downto 0);
	
   begin
		helper <= (OTHERS => entrada(larguraDados-1));
      saida <= helper & entrada;
end architecture;