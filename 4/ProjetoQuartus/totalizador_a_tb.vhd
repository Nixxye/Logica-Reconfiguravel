library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity totalizador_a_tb is
end entity totalizador_a_tb;

architecture tb of totalizador_a_tb is
    constant CLK_PERIOD : time := 20 ns;

    signal clk  : std_logic := '0';
    signal rst  : std_logic := '0';
    signal en   : std_logic := '1';
    signal clr  : std_logic := '0';
    signal init : std_logic := '0';
    signal inpt : std_logic_vector(4 downto 0) := (others => '0');
    signal q    : std_logic_vector(3 downto 0);

begin
    dut : entity work.totalizador_a
        port map (
            CLK  => clk,
            RST  => rst,
            EN   => en,
            CLR  => clr,
            INIT => init,
            INPT => inpt,
            Q    => q
        );

    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    stimulus : process
    begin
        rst <= '1';
        wait for 2 * CLK_PERIOD;
        rst <= '0';

        -- 1) Primeiro valor e espera de 5 clocks.
        wait until falling_edge(clk);
        inpt <= "10101";
        init <= '1';
        wait until falling_edge(clk);
        init <= '0';
        wait for 6 * CLK_PERIOD;

        -- 2) Segundo valor e espera de 5 clocks.
        wait until falling_edge(clk);
        inpt <= "11111";
        init <= '1';
        wait until falling_edge(clk);
        init <= '0';
        wait for 6 * CLK_PERIOD;

        -- 3) Terceiro valor e espera de 5 clocks.
        wait until falling_edge(clk);
        inpt <= "00000";
        init <= '1';
        wait until falling_edge(clk);
        init <= '0';
        wait for 6 * CLK_PERIOD;

        -- 4) Quarto valor e espera de 5 clocks.
        wait until falling_edge(clk);
        inpt <= "01011";
        init <= '1';
        wait until falling_edge(clk);
        init <= '0';
        wait for 6 * CLK_PERIOD;

        -- 5) Quinto valor e espera de 5 clocks.
        wait until falling_edge(clk);
        inpt <= "00110";
        init <= '1';
        wait until falling_edge(clk);
        init <= '0';
        wait for 6 * CLK_PERIOD;

        wait;
    end process;
end architecture tb;
