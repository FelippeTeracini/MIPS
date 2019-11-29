-- Design de Computadores
-- file: uc.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity uc is
	port
    (
        opcode              	: IN STD_LOGIC_VECTOR(OPCODE_WIDTH-1 DOWNTO 0);
        pontosDeControle    	: OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of uc is
begin
    pontosDeControle <= "01100000010" when opcode = "000000" else
					         "00111010000" when opcode = "100011" else
								"00010001000" when opcode = "101011" else
								"00000100001" when opcode = "000100" else
								"10000000000" when opcode = "000010" else
								"00000000000";

end bhv;