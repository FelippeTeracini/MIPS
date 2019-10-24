library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

component bancoRegistradores_MIPS is
        generic
        (
            larguraDados        : natural := 8;
            larguraEndBancoRegs : natural := 5
        );
    -- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
        port
        (
            clk        : in std_logic;
    --
            enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
            enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
            enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
    --
            dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
    --
            escreveC          : in std_logic;
            saidaA          : out std_logic_vector((larguraDados -1) downto 0);
            saidaB          : out std_logic_vector((larguraDados -1) downto 0)
        );
    end component bancoRegistradores_MIPS;