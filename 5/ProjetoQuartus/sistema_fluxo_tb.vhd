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
    begin
        -- Reset
        rst <= '1';
        wait for 5*CLK_PERIOD;
        rst <= '0';
        wait for CLK_PERIOD;
        
        -- Aguardar transferência completa
        while completo = '0' loop
            wait for CLK_PERIOD;
        end loop;
        
        wait for 100*CLK_PERIOD;
        wait;
    end process;
    
end tb;
