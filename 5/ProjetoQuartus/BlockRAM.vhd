library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BlockRAM is
    generic (
        ADDR_WIDTH : integer := 11; -- 2^11 = 2048
        DATA_WIDTH : integer := 8
    );
    port (
        clk  : in  std_logic;
        we   : in  std_logic;
        addr : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        di   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        do   : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end BlockRAM;

architecture Behavioral of BlockRAM is
    type ram_type is array (0 to (2**ADDR_WIDTH)-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ram : ram_type;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if we = '1' then
                ram(to_integer(unsigned(addr))) <= di;
            end if;
            do <= ram(to_integer(unsigned(addr)));
        end if;
    end process;
end Behavioral;