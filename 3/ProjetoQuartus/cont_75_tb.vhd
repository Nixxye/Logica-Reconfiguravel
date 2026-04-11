library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_75_tb is
end entity cont_75_tb;

architecture tb of cont_75_tb is
    constant CLK_PERIOD : time := 0.5 ms;

    signal clk : std_logic := '0';
    signal clr : std_logic := '0';
    signal rst : std_logic := '0';
    signal en  : std_logic := '0';
    signal q_ms   : std_logic_vector(7 downto 0);
    signal q_s    : std_logic_vector(7 downto 0);
    signal clk2 : std_logic;
    signal clk3 : std_logic;
    signal clk4 : std_logic;
    signal rst_sig1 : std_logic;
    signal rst_sig2 : std_logic;

    function to_bcd8(value : integer) return std_logic_vector is
        variable tens  : integer;
        variable ones  : integer;
        variable result : std_logic_vector(7 downto 0);
    begin
        tens := value / 10;
        ones := value mod 10;
        result(7 downto 4) := std_logic_vector(to_unsigned(tens, 4));
        result(3 downto 0) := std_logic_vector(to_unsigned(ones, 4));
        return result;
    end function;

    function from_bcd8(value : std_logic_vector(7 downto 0)) return integer is
    begin
        return to_integer(unsigned(value(7 downto 4))) * 10 +
               to_integer(unsigned(value(3 downto 0)));
    end function;
begin
    dut : entity work.cont_75
        port map (
            CLK => clk,
            CLR => clr,
            RST => rst,
            EN  => en,
            Q_ms   => q_ms,
            Q_s    => q_s,
            CLK2 => clk2,
            CLK3 => clk3,
            CLK4 => clk4,
            RST_SIG1 => rst_sig1,
            RST_SIG2 => rst_sig2
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
        variable expected : integer := 15;
        variable observed  : integer;
    begin
        clr <= '1';
        rst <= '0';
        en  <= '0';
        wait for 3 * CLK_PERIOD;
        clr <= '0';
        wait for CLK_PERIOD;

        rst <= '1';
        wait for CLK_PERIOD;
        rst <= '0';
        wait for CLK_PERIOD;

        en <= '1';

        wait;
    end process;
end architecture tb;