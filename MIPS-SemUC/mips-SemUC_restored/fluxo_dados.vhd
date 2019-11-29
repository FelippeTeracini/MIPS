-- Design de Computadores
-- file: fluxo_dados.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity fluxo_dados is
    generic (
        larguraROM          : natural := 8 -- deve ser menor ou igual a 32
    );
	port
    (
        clk			            : IN STD_LOGIC;
		  saidaPC               : OUT std_logic_vector(DATA_WIDTH-1 downto 0);
		  saidaULA              : OUT std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;

architecture estrutural of fluxo_dados is

    -- Declaração de sinais auxiliares
	 
	 -- UC --
	 signal pontosDeControle     : STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
    
    -- Sinais auxiliar da instrução
    signal instrucao_s : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para o banco de registradores
    signal RA, RB : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a ULA
    signal saida_ula : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal Z_out : std_logic;

    -- Sinais auxiliares para a lógica do PC
    signal PC_s, PC_mais_4, PC_mais_4_mais_imediato, entrada_somador_beq : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a RAM
    signal dado_lido_mem : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do imediato
    signal sinal_ext : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do endereço de jump
    signal PC_4_concat_imed : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_shift_jump : std_logic_vector(27 downto 0);
            
    -- Sinais auxiliares dos MUXs
    signal sel_mux_beq : std_logic;
    signal saida_mux_ula_mem, saida_mux_banco_ula, saida_mux_beq, saida_mux_jump : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_mux_rd_rt : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
     
    -- Controle da ULA
    signal ULActr : std_logic_vector(CTRL_ALU_WIDTH-1 downto 0);

    -- Codigos da palavra de controle:
	 alias sel_mux_jump      : std_logic is pontosDeControle(10);
	 alias sel_mux_rd_rt     : std_logic is pontosDeControle(9);
	 alias escreve_RC        : std_logic is pontosDeControle(8);
	 alias sel_mux_banco_ula : std_logic is pontosDeControle(7);
	 alias sel_mux_ula_mem   : std_logic is pontosDeControle(6);
	 alias sel_beq           : std_logic is pontosDeControle(5);
	 alias leitura_RAM       : std_logic is pontosDeControle(4);
	 alias escreve_RAM       : std_logic is pontosDeControle(3);
	 alias ULAop             : std_logic_vector(ALU_OP_WIDTH-1 downto 0) is pontosDeControle(2 downto 0);
	 
    -- Parsing da instrucao
    alias RT_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao_s(20 downto 16);
    alias RD_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao_s(15 downto 11);
    alias funct     : std_logic_vector(FUNCT_WIDTH-1 downto 0) is  instrucao_s(5 DOWNTO 0);
	 
	 -- Registrador 1 --
	 signal saida_r1    : std_logic_vector(63 downto 0);
	 
	 alias saida_add_r1 : std_logic_vector(31 downto 0)  is saida_r1(63 downto 32);
	 alias sl2_PC_r1    : std_logic_vector(25 downto 0)  is saida_r1(25 downto 0);
	 
	 alias opcode_r1    : std_logic_vector(5 downto 0)   is saida_r1(31 downto 26);
	 alias reg1_r1      : std_logic_vector(4 downto 0)   is saida_r1(25 downto 21);
	 alias reg2_r1      : std_logic_vector(4 downto 0)   is saida_r1(20 downto 16);
	 alias sigext_r1    : std_logic_vector(15 downto 0)  is saida_r1(15 downto 0);
	 alias rt_r1        : std_logic_vector(4 downto 0)   is saida_r1(20 downto 16);
	 alias rd_r1        : std_logic_vector(4 downto 0)   is saida_r1(15 downto 11);
	 
	 -- Registrador 2 --
	 signal saida_r2      : std_logic_vector(147 downto 0);
	 
	 alias wb_r2          : std_logic_vector(1 downto 0)  is saida_r2(147 downto 146);
	 alias M_r2           : std_logic_vector(2 downto 0)  is saida_r2(145 downto 143);
	 
	 alias reg_dst_r2     : std_logic                     is saida_r2(142);
	 alias alu_op_r2      : std_logic_vector(2 downto 0)  is saida_r2(141 downto 139);
	 alias mux_alu_sel_r2 : std_logic                     is saida_r2(138);
	 
	 alias rd_r2          : std_logic_vector(4 downto 0)  is saida_r2(4 downto 0);
	 alias rt_r2          : std_logic_vector(4 downto 0)  is saida_r2(9 downto 5);
	 alias alu_ctrl_r2    : std_logic_vector(5 downto 0)  is saida_r2(15 downto 10);
	 alias mux0_alu_r2    : std_logic_vector(31 downto 0) is saida_r2(73 downto 42);
	 alias sl2_r2         : std_logic_vector(31 downto 0) is saida_r2(41 downto 10);
	 alias wr_data_r2     : std_logic_vector(31 downto 0) is saida_r2(73 downto 42);
	 alias alu_r2         : std_logic_vector(31 downto 0) is saida_r2(105 downto 74);
	 alias add_r2         : std_logic_vector(31 downto 0) is saida_r2(137 downto 106);
	 alias mux1_alu_r2    : std_logic_vector(31 downto 0) is saida_r2(41 downto 10);
	 
	 -- Registrador 3 --
	 signal saida_r3       : std_logic_vector(106 downto 0);
	 
	 alias wb_r3           : std_logic_vector(1 downto 0)  is saida_r3(106 downto 105);
	 
	 alias branch_r3       : std_logic                     is saida_r3(104);
	 alias mem_read_r3     : std_logic                     is saida_r3(103);
	 alias mem_write_r3    : std_logic                     is saida_r3(102);

	 alias branch2_r3      : std_logic                     is saida_r3(69);
	 alias mux_PC1_r3      : std_logic_vector(31 downto 0) is saida_r3(101 downto 70);
	 alias address_r3      : std_logic_vector(31 downto 0) is saida_r3(68 downto 37);
	 alias mux_ula_mem0_r3 : std_logic_vector(31 downto 0) is saida_r3(68 downto 37);
	 alias wr_data_r3      : std_logic_vector(31 downto 0) is saida_r3(36 downto 5);
	 alias rd_r3           : std_logic_vector(4 downto 0)  is saida_r3(4 downto 0);
	 
	 -- Registrador 4 --
	 signal saida_r4       : std_logic_vector(70 downto 0);
	 
	 alias reg_write_r4    : std_logic                     is saida_r4(70);
	 alias mem_to_reg      : std_logic                     is saida_r4(69);

	 alias mux_ula_mem1_r4 : std_logic_vector(31 downto 0) is saida_r4(68 downto 37);
	 alias mux_ula_mem0_r4 : std_logic_vector(31 downto 0) is saida_r4(36 downto 5);
	 alias rd_r4           : std_logic_vector(4 downto 0)  is saida_r4(4 downto 0);
	 

begin

	-- Registrador 1 --
	REG_1 : entity work.Registrador
		generic map(
			NUM_BITS => 64
		)
		port map(
			clk => clk,
			enable => '1',
			reset => '1',
			data_in => PC_mais_4 & instrucao_s,
			data_out => saida_r1
		);
		
	-- Registrador 2 --
	REG_2 : entity work.Registrador
		generic map(
			NUM_BITS => 148
		)
		port map(
			clk => clk,
			enable => '1',
			reset => '1',
			data_in => escreve_RC & sel_mux_ula_mem & sel_beq & leitura_RAM & escreve_RAM & sel_mux_rd_rt & ULAop & sel_mux_banco_ula & saida_add_r1 & RA & RB & sinal_ext & rt_r1 & rd_r1,
			data_out => saida_r2
		);
		
	-- Registrador 3 --
	REG_3 : entity work.Registrador
		generic map(
			NUM_BITS => 107
		)
		port map(
			clk => clk,
			enable => '1',
			reset => '1',
			data_in => wb_r2 & M_r2 & PC_mais_4_mais_imediato & Z_out & saida_ula & wr_data_r2 & saida_mux_rd_rt,
			data_out => saida_r3
		);
		
	-- Registrador 4 --
	REG_4 : entity work.Registrador
		generic map(
			NUM_BITS => 71
		)
		port map(
			clk => clk,
			enable => '1',
			reset => '1',
			data_in => wb_r3 & dado_lido_mem & mux_ula_mem0_r3 & rd_r3,
			data_out => saida_r4
		);
		
	-- UC --
	UC : entity work.uc 
		port map(
        opcode              	=> opcode_r1,
        pontosDeControle    	=> pontosDeControle
		);
	
    sel_mux_beq <= branch_r3 AND branch2_r3;

    -- Ajuste do PC para jump (concatena com imediato multiplicado por 4)
    PC_4_concat_imed <= PC_mais_4(31 downto 28) & saida_shift_jump;
	 
	 saidaPC <= PC_s;
	 saidaULA <= saida_ula;

    -- Banco de registradores
     BR: entity work.bancoRegistradores 
        generic map (
            larguraDados => DATA_WIDTH, 
            larguraEndBancoRegs => 5
        )
        port map (
            enderecoA => reg1_r1,
            enderecoB => reg2_r1,
            enderecoC => rd_r4,
            clk          => clk,
            dadoEscritaC => saida_mux_ula_mem, 
            escreveC     => reg_write_r4,
            saidaA       => RA,
            saidaB       => RB
        );
    
    -- ULA
     ULA: entity work.ULA
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            A   => alu_r2,
            B   => saida_mux_banco_ula,
            ctr => ULActr,
            C   => saida_ula,
            Z   => Z_out
        );
    
    UCULA : entity work.uc_ula 
        port map
        (
            funct  => alu_ctrl_r2,
            ALUop  => alu_op_r2,
            ALUctr => ULActr
        );
     
    -- PC e somadores
     PC: entity work.Registrador
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            data_out => PC_s,
            data_in  => saida_mux_jump,
            clk      => clk,
            enable   => '1',
            reset    => '1' -- reset negado
        );
    
     Somador_imediato: entity work.somador 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
				entradaA => add_r2,
            entradaB => entrada_somador_beq,
            saida    => PC_mais_4_mais_imediato
        );
    
     Somador: entity work.soma4
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entrada => PC_s,
            saida   => PC_mais_4
        ); 

    -- ROM
    ROM: entity work.ROM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => larguraROM
        ) 
		port map (
            endereco => PC_s(larguraROM-1 downto 0),
            dado     => instrucao_s
        );
    
    -- RAM: escreve valor lido no registrador B no endereço de memória de acordo com a saída da ULA
     RAM: entity work.single_port_RAM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => ADDR_WIDTH
        )
		port map (
            endereco    => address_r3, 
            we          => mem_write_r3,
            re          => mem_read_r3,
            clk         => clk,
            dado_write  => wr_data_r3,
            dado_read   => dado_lido_mem
        ); 

     -- Componentes manipuladores do imediato
     extensor: entity work.estendeSinalGenerico 
        generic map (
            larguraDadoEntrada => 16,
            larguraDadoSaida   => DATA_WIDTH
        )
		port map (
            estendeSinal_IN  => sigext_r1,
            estendeSinal_OUT => sinal_ext 
        ); 

     shift: entity work.shift2_imediato 
        generic map (
            larguraDado => DATA_WIDTH
        )
		port map (
            shift_IN  => sl2_r2,
            shift_OUT => entrada_somador_beq
        );
    
    -- Componentes manipuladores do endereço de jump
     shift_jump: entity work.shift2 
        generic map (
            larguraDado => 26
        )
		port map (
            shift_IN  => sl2_PC_r1,
            shift_OUT => saida_shift_jump
        );
    
    -- MUXs
     mux_Ula_Memoria: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => mux_ula_mem0_r4, 
            entradaB => mux_ula_mem1_r4, 
            seletor  => mem_to_reg,
            saida    => saida_mux_ula_mem
        );
	 
     mux_Rd_Rt: entity work.muxGenerico2 
        generic map (
            larguraDados => REGBANK_ADDR_WIDTH
        )
		port map (
            entradaA => rt_r2, 
            entradaB => rd_r2,
            seletor  => reg_dst_r2,
            saida    => saida_mux_rd_rt
        );
	
     mux_Banco_Ula: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => mux0_alu_r2, 
            entradaB => mux1_alu_r2,  
            seletor  => mux_alu_sel_r2,
            saida    => saida_mux_banco_ula
        );
		
     mux_beq: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => PC_mais_4,
            entradaB => mux_PC1_r3,
            seletor  => sel_mux_beq,
            saida    => saida_mux_beq
        );
		
     mux_jump: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => saida_mux_beq,
            entradaB => PC_4_concat_imed,
            seletor  => sel_mux_jump,
            saida    => saida_mux_jump
        );
		  
	

end architecture;
