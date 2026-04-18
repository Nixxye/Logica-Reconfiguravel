library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity totalizador_a is
    port (
        CLK, RST, EN, CLR, INIT : in std_logic;
        INPT : in std_logic_vector(4 downto 0);
        Q : out std_logic_vector(3 downto 0)
    );
end totalizador_a;

architecture Behavioral of totalizador_a is
    signal count : unsigned(3 downto 0) := "0000";
    signal val : std_logic_vector(4 downto 0) := "11111";
begin
    process(CLK, RST)
    begin
        if RST = '1' then
            val <= "00000";
            count <= "0000";
        elsif rising_edge(CLK) then
            if CLR = '1' then
                val <= "00000";
                count <= "0000";
                elsif EN = '1' then
                    if INIT = '1' then
                        val <= '0' & INPT(4 downto 1); -- Carrega o valor de entrada, inserindo 0 no bit mais significativo
                        if INPT(0) = '1' then
                            count <= "0001";
                        else
                            count <= "0000";
                        end if;
                else
                    if val(0) = '1' then
                        count <= count + 1;
                    end if;
                    val <= '0' & val (4 downto 1); -- Desloca o valor para a direita, inserindo 0 no bit mais significativo
                end if;
            end if;
        end if;
    end process;
    Q <= std_logic_vector(count) when val(4 downto 0) = "00000" else "0000"; -- Saída é o count apenas quando já contou todos, caso contrário é zero
end Behavioral;
