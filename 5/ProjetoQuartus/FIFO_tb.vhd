library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FIFO_tb is
end FIFO_tb;

architecture tb of FIFO_tb is
    -- Sinais de teste
    signal clk           : std_logic := '0';
    signal rst           : std_logic := '0';
    signal din           : std_logic_vector(7 downto 0);
    signal dout          : std_logic_vector(7 downto 0);
    signal write_enable  : std_logic := '0'; -- '1' para push
    signal read_enable   : std_logic := '0'; -- '1' para pop
    signal empty         : std_logic;
    signal full          : std_logic;
    signal usedw         : integer range 0 to 1024;
    
    -- Constantes
    constant CLK_PERIOD : time := 10 ns;
    
begin
    -- Instância do FIFO
    UUT: entity work.FIFO
        port map (
            clk           => clk,
            rst           => rst,
            din           => din,
            dout          => dout,
            write_enable  => write_enable,
            read_enable   => read_enable,
            empty         => empty,
            full          => full,
            usedw         => usedw
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
        write_enable <= '0';
        read_enable <= '0';
        din <= (others => '0');
        wait for 2*CLK_PERIOD;
        rst <= '0';
        wait for CLK_PERIOD;
        
        -- Push de alguns elementos
        write_enable <= '1';
        for i in 0 to 4 loop
            din <= std_logic_vector(to_unsigned(i, 8));
            wait for CLK_PERIOD;
        end loop;
        write_enable <= '0';
        wait for CLK_PERIOD;
        
        -- Pop de alguns elementos
        read_enable <= '1';
        wait for 2*CLK_PERIOD;
        read_enable <= '0';
        wait for CLK_PERIOD;
        
        -- Push e Pop simultâneos (operação característica da nova FIFO)
        write_enable <= '1';
        read_enable <= '1';
        for i in 5 to 10 loop
            din <= std_logic_vector(to_unsigned(i, 8));
            wait for CLK_PERIOD;
        end loop;
        write_enable <= '0';
        read_enable <= '0';
        wait for CLK_PERIOD;
        
        -- Pop de todos os elementos + 1
        read_enable <= '1';
        for i in 0 to usedw loop
            wait for CLK_PERIOD;
        end loop;
        read_enable <= '0';
        wait for CLK_PERIOD;
        
        wait;
    end process;
    
end tb;
