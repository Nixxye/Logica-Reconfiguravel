library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity totalizador_b_tb is
end entity totalizador_b_tb;

architecture tb of totalizador_b_tb is
    constant CLK_PERIOD : time := 10 ns;

    signal clk       : std_logic := '0';
    signal inpt      : std_logic_vector(4 downto 0) := (others => '0');
    signal q_b1_for  : std_logic_vector(3 downto 0);
    signal q_b2_while: std_logic_vector(3 downto 0);
    signal q_b3_if   : std_logic_vector(3 downto 0);
    signal q_b4_case : std_logic_vector(3 downto 0);
    signal q_b5_soma : std_logic_vector(3 downto 0);
    signal q_b6_demux: std_logic_vector(3 downto 0);

begin
    dut : entity work.totalizadores_rapidos
        port map (
            CLK        => clk,
            INPT       => inpt,
            Q_b1_for   => q_b1_for,
            Q_b2_while => q_b2_while,
            Q_b3_if    => q_b3_if,
            Q_b4_case  => q_b4_case,
            Q_b5_soma  => q_b5_soma,
            Q_b6_demux => q_b6_demux
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
        wait for CLK_PERIOD;

        -- 1) Primeiro valor e espera de 5 clocks.
        inpt <= "10101";
        wait for 5 * CLK_PERIOD;

        -- 2) Segundo valor e espera de 5 clocks.
        inpt <= "11111";
        wait for 5 * CLK_PERIOD;

        -- 3) Terceiro valor e espera de 5 clocks.
        inpt <= "00000";
        wait for 5 * CLK_PERIOD;

        -- 4) Quarto valor e espera de 5 clocks.
        inpt <= "01011";
        wait for 5 * CLK_PERIOD;

        -- 5) Quinto valor e espera de 5 clocks.
        inpt <= "00110";
        wait for 5 * CLK_PERIOD;

        wait;
    end process;
end architecture tb;
