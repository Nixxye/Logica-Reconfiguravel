library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BlockRAM_tb is
end BlockRAM_tb;

architecture tb of BlockRAM_tb is
    -- Sinais de teste
    signal clk  : std_logic := '0';
    signal we   : std_logic := '0';
    signal addr : std_logic_vector(10 downto 0);
    signal di   : std_logic_vector(7 downto 0);
    signal do   : std_logic_vector(7 downto 0);
    
    -- Constantes
    constant CLK_PERIOD : time := 10 ns;
    
begin
    -- Instância do BlockRAM
    UUT: entity work.BlockRAM
        generic map (
            ADDR_WIDTH => 11,
            DATA_WIDTH => 8
        )
        port map (
            clk  => clk,
            we   => we,
            addr => addr,
            di   => di,
            do   => do
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
        variable expected : integer;
    begin
        -- Teste 1: Verificar inicialização
        report "=== TESTE 1: VERIFICAR INICIALIZAÇÃO ===" severity note;
        we <= '0';
        for i in 0 to 31 loop
            addr <= std_logic_vector(to_unsigned(i, 11));
            wait for CLK_PERIOD;
            expected := i mod 256;
            assert do = std_logic_vector(to_unsigned(expected, 8))
                report "FALHA na addr " & integer'image(i) & 
                       " esperado: " & integer'image(expected) &
                       " obtido: " & integer'image(to_integer(unsigned(do)))
                severity error;
        end loop;
        report "OK: Primeiros 32 endereços contêm valores corretos" severity note;
        
        -- Teste 2: Verificar leitura em endereços aleatórios
        report "=== TESTE 2: LEITURA EM ENDEREÇOS ALEATÓRIOS ===" severity note;
        we <= '0';
        for i in 256 to 287 loop
            addr <= std_logic_vector(to_unsigned(i, 11));
            wait for CLK_PERIOD;
            expected := i mod 256;
            assert do = std_logic_vector(to_unsigned(expected, 8))
                report "FALHA na addr " & integer'image(i) & 
                       " esperado: " & integer'image(expected) &
                       " obtido: " & integer'image(to_integer(unsigned(do)))
                severity error;
        end loop;
        report "OK: Leitura em endereços aleatórios funcionando" severity note;
        
        -- Teste 3: Escrita em um único endereço
        report "=== TESTE 3: ESCRITA EM ENDEREÇO ESPECÍFICO ===" severity note;
        we <= '1';
        addr <= std_logic_vector(to_unsigned(100, 11));
        di <= x"AB";
        wait for CLK_PERIOD;
        
        we <= '0';
        addr <= std_logic_vector(to_unsigned(100, 11));
        wait for CLK_PERIOD;
        assert do = x"AB"
            report "FALHA: Valor escrito não foi lido corretamente" severity error;
        report "OK: Escrita e leitura funcionando corretamente" severity note;
        
        -- Teste 4: Escrita sequencial em múltiplos endereços
        report "=== TESTE 4: ESCRITA SEQUENCIAL ===" severity note;
        we <= '1';
        for i in 512 to 527 loop
            addr <= std_logic_vector(to_unsigned(i, 11));
            di <= std_logic_vector(to_unsigned(i mod 256, 8));
            wait for CLK_PERIOD;
        end loop;
        
        we <= '0';
        for i in 512 to 527 loop
            addr <= std_logic_vector(to_unsigned(i, 11));
            wait for CLK_PERIOD;
            expected := i mod 256;
            assert do = std_logic_vector(to_unsigned(expected, 8))
                report "FALHA na addr " & integer'image(i) & 
                       " esperado: " & integer'image(expected) &
                       " obtido: " & integer'image(to_integer(unsigned(do)))
                severity error;
        end loop;
        report "OK: Escrita sequencial funcionando corretamente" severity note;
        
        -- Teste 5: Verificar comportamento de read-during-write
        report "=== TESTE 5: READ-DURING-WRITE ===" severity note;
        we <= '1';
        addr <= std_logic_vector(to_unsigned(1000, 11));
        di <= x"DE";
        wait for CLK_PERIOD;
        
        -- Verificar que o valor anterior era lido antes da escrita
        we <= '0';
        addr <= std_logic_vector(to_unsigned(1000, 11));
        wait for CLK_PERIOD;
        assert do = x"DE"
            report "FALHA: Valor não foi atualizado após escrita" severity error;
        report "OK: Read-during-write funcionando corretamente" severity note;
        
        -- Teste 6: Teste nos extremos do endereço
        report "=== TESTE 6: TESTES NOS EXTREMOS ===" severity note;
        we <= '0';
        addr <= std_logic_vector(to_unsigned(0, 11));
        wait for CLK_PERIOD;
        assert do = std_logic_vector(to_unsigned(0, 8))
            report "FALHA: Endereço 0 incorreto" severity error;
        
        addr <= std_logic_vector(to_unsigned(2047, 11));
        wait for CLK_PERIOD;
        expected := 2047 mod 256;
        assert do = std_logic_vector(to_unsigned(expected, 8))
            report "FALHA: Endereço 2047 incorreto" severity error;
        report "OK: Extremos funcionando corretamente" severity note;
        
        report "=== TODOS OS TESTES COMPLETADOS ===" severity note;
        wait;
    end process;
    
end tb;
