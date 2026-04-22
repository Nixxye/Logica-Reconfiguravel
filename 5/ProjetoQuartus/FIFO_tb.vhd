library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FIFO_tb is
end FIFO_tb;

architecture tb of FIFO_tb is
    -- Sinais de teste
    signal clk      : std_logic := '0';
    signal rst      : std_logic := '0';
    signal din      : std_logic_vector(7 downto 0);
    signal dout     : std_logic_vector(7 downto 0);
    signal en       : std_logic := '0';
    signal push_pop : std_logic := '0'; -- '1' para push, '0' para pop
    signal empty    : std_logic;
    signal full     : std_logic;
    signal usedw    : integer range 0 to 1024;
    
    -- Constantes
    constant CLK_PERIOD : time := 10 ns;
    
begin
    -- Instância do FIFO
    UUT: entity work.FIFO
        port map (
            clk      => clk,
            rst      => rst,
            din      => din,
            dout     => dout,
            en       => en,
            push_pop => push_pop,
            empty    => empty,
            full     => full,
            usedw    => usedw
        );
    
    -- Gerador de clock
    process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;
    
    -- Processo de teste
    process
    begin
        -- Teste 1: Reset
        report "=== TESTE 1: RESET ===" severity note;
        rst <= '1';
        en <= '0';
        wait for 2*CLK_PERIOD;
        rst <= '0';
        wait for CLK_PERIOD;
        
        assert empty = '1' report "FALHA: FIFO deveria estar vazia após reset" severity error;
        assert full = '0' report "FALHA: FIFO não deveria estar cheia após reset" severity error;
        assert usedw = 0 report "FALHA: usedw deveria ser 0 após reset" severity error;
        report "OK: Reset funcionando corretamente" severity note;
        
        -- Teste 2: Push de 5 elementos
        report "=== TESTE 2: PUSH DE 5 ELEMENTOS ===" severity note;
        en <= '1';
        push_pop <= '1'; -- Push
        for i in 0 to 4 loop
            din <= std_logic_vector(to_unsigned(i, 8));
            wait for CLK_PERIOD;
        end loop;
        en <= '0';
        wait for CLK_PERIOD;
        
        assert empty = '0' report "FALHA: FIFO não deveria estar vazia" severity error;
        assert full = '0' report "FALHA: FIFO não deveria estar cheia" severity error;
        assert usedw = 5 report "FALHA: usedw deveria ser 5" severity error;
        report "OK: 5 elementos inseridos com sucesso" severity note;
        
        -- Teste 3: Pop de 2 elementos
        report "=== TESTE 3: POP DE 2 ELEMENTOS ===" severity note;
        en <= '1';
        push_pop <= '0'; -- Pop
        wait for CLK_PERIOD;
        wait for CLK_PERIOD;
        en <= '0';
        wait for CLK_PERIOD;
        
        assert usedw = 3 report "FALHA: usedw deveria ser 3" severity error;
        assert empty = '0' report "FALHA: FIFO não deveria estar vazia" severity error;
        report "OK: 2 elementos removidos com sucesso" severity note;
        
        -- Teste 4: Push até encher (1019 mais elementos)
        report "=== TESTE 4: PUSH ATÉ ENCHER ===" severity note;
        en <= '1';
        push_pop <= '1'; -- Push
        for i in 5 to 1023 loop
            din <= std_logic_vector(to_unsigned(i mod 256, 8));
            wait for CLK_PERIOD;
        end loop;
        en <= '0';
        wait for CLK_PERIOD;
        
        assert full = '1' report "FALHA: FIFO deveria estar cheia" severity error;
        assert usedw = 1024 report "FALHA: usedw deveria ser 1024" severity error;
        report "OK: FIFO cheia corretamente" severity note;
        
        -- Teste 5: Tentar push quando cheio (não deve escrever)
        report "=== TESTE 5: PUSH QUANDO CHEIO ===" severity note;
        en <= '1';
        push_pop <= '1'; -- Push
        din <= x"FF";
        wait for CLK_PERIOD;
        en <= '0';
        wait for CLK_PERIOD;
        
        assert usedw = 1024 report "FALHA: usedw deveria continuar 1024" severity error;
        report "OK: Push bloqueado quando FIFO cheia" severity note;
        
        -- Teste 6: Pop até esvaziar completamente
        report "=== TESTE 6: POP ATÉ ESVAZIAR ===" severity note;
        en <= '1';
        push_pop <= '0'; -- Pop
        for i in 0 to 1022 loop
            wait for CLK_PERIOD;
        end loop;
        en <= '0';
        wait for CLK_PERIOD;
        
        assert empty = '1' report "FALHA: FIFO deveria estar vazia" severity error;
        assert full = '0' report "FALHA: FIFO não deveria estar cheia" severity error;
        assert usedw = 0 report "FALHA: usedw deveria ser 0" severity error;
        report "OK: FIFO esvaziada completamente" severity note;
        
        -- Teste 7: Tentar pop quando vazio (não deve mudar rd_ptr)
        report "=== TESTE 7: POP QUANDO VAZIO ===" severity note;
        en <= '1';
        push_pop <= '0'; -- Pop
        wait for CLK_PERIOD;
        en <= '0';
        wait for CLK_PERIOD;
        
        assert empty = '1' report "FALHA: FIFO deveria continuar vazia" severity error;
        assert usedw = 0 report "FALHA: usedw deveria continuar 0" severity error;
        report "OK: Pop bloqueado quando FIFO vazia" severity note;
        
        report "=== TODOS OS TESTES COMPLETADOS ===" severity note;
        wait;
    end process;
    
end tb;
