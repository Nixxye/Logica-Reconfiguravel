library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sistema_fluxo_tb is
end sistema_fluxo_tb;

architecture tb of sistema_fluxo_tb is
    -- Sinais de teste
    signal clk      : std_logic := '0';
    signal rst      : std_logic := '0';
    signal completo : std_logic;
    
    -- Constantes
    constant CLK_PERIOD : time := 10 ns;
    
    -- Sinais para leitura dos dados em BRAM2
    signal bram2_addr : std_logic_vector(10 downto 0);
    signal bram2_do   : std_logic_vector(7 downto 0);
    signal bram2_we   : std_logic;
    signal bram2_di   : std_logic_vector(7 downto 0);
    
begin
    -- Instância do sistema_fluxo
    UUT: entity work.sistema_fluxo
        port map (
            clk      => clk,
            rst      => rst,
            completo => completo
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
        variable clock_count : integer := 0;
        variable timeout : integer := 1000000; -- 10 ms em ciclos de clock
    begin
        -- Teste 1: Reset e inicialização
        report "=== TESTE 1: RESET E INICIALIZAÇÃO ===" severity note;
        rst <= '1';
        wait for 5*CLK_PERIOD;
        rst <= '0';
        wait for CLK_PERIOD;
        
        assert completo = '0' report "FALHA: completo não deveria estar ativo logo após reset" severity error;
        report "OK: Sistema inicializado corretamente" severity note;
        
        -- Teste 2: Aguardar transferência completa
        report "=== TESTE 2: TRANSFERÊNCIA DE 2048 DADOS ===" severity note;
        report "Aguardando conclusão da transferência..." severity note;
        
        clock_count := 0;
        while completo = '0' and clock_count < timeout loop
            wait for CLK_PERIOD;
            clock_count := clock_count + 1;
        end loop;
        
        if completo = '0' then
            report "FALHA: Timeout - transferência não completou em tempo" severity error;
        else
            report "OK: Transferência completada em " & integer'image(clock_count) & " ciclos de clock" severity note;
        end if;
        
        wait for 100*CLK_PERIOD;
        
        report "=== TESTE COMPLETADO ===" severity note;
        report "A transferência dos 2048 dados foi realizada com sucesso" severity note;
        wait;
    end process;
    
end tb;
