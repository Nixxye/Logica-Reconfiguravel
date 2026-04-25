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
    begin
        -- Leitura em endereços iniciais
        we <= '0';
        for i in 0 to 15 loop
            addr <= std_logic_vector(to_unsigned(i, 11));
            wait for CLK_PERIOD;
        end loop;
        
        -- Escrita em um endereço
        we <= '1';
        addr <= std_logic_vector(to_unsigned(100, 11));
        di <= x"AB";
        wait for CLK_PERIOD;
        
        -- Leitura do endereço escrito
        we <= '0';
        addr <= std_logic_vector(to_unsigned(100, 11));
        wait for CLK_PERIOD;
        wait for CLK_PERIOD;
        
        -- Escrita sequencial
        we <= '1';
        for i in 512 to 527 loop
            addr <= std_logic_vector(to_unsigned(i, 11));
            di <= std_logic_vector(to_unsigned(i mod 256, 8));
            wait for CLK_PERIOD;
        end loop;
        
        -- Leitura sequencial
        we <= '0';
        for i in 512 to 527 loop
            addr <= std_logic_vector(to_unsigned(i, 11));
            wait for CLK_PERIOD;
        end loop;
        
        -- Teste de extremos
        addr <= std_logic_vector(to_unsigned(0, 11));
        wait for CLK_PERIOD;
        addr <= std_logic_vector(to_unsigned(2047, 11));
        wait for CLK_PERIOD;
        
        wait;
    end process;
    
end tb;
