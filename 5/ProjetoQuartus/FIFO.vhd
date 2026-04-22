library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FIFO is
    port (
        clk      : in  std_logic;
        rst      : in  std_logic;
        din      : in  std_logic_vector(7 downto 0);
        dout     : out std_logic_vector(7 downto 0);
        en       : in  std_logic;
        push_pop : in  std_logic; -- '1' para push, '0' para pop
        empty    : out std_logic;
        full     : out std_logic;
        usedw    : out integer range 0 to 1024
    );
end FIFO;

architecture Behavioral of FIFO is
    type mem_type is array (0 to 1023) of std_logic_vector(7 downto 0);
    signal memory : mem_type;
    signal wr_ptr : integer range 0 to 1023 := 0; -- Onde escreve
    signal rd_ptr : integer range 0 to 1023 := 0; -- De onde lê
    signal count  : integer range 0 to 1024 := 0; -- Essencial para os 75%/50%
begin
    process(clk)
    begin
        if rst = '1' then
            wr_ptr <= 0;
            rd_ptr <= 0;
            count <= 0;
        elsif rising_edge(clk) then
            if en = '1' then
                -- Escrita (Push)
                if push_pop = '1' and count < 1024 then
                    memory(wr_ptr) <= din;
                    wr_ptr <= (wr_ptr + 1) mod 1024;
                    count <= count + 1;
                -- Leitura (Pop)
                elsif push_pop = '0' and count > 0 then
                    rd_ptr <= (rd_ptr + 1) mod 1024;
                    count <= count - 1;
                end if;
            end if;
        end if;
    end process;

    dout <= memory(rd_ptr);
    
    full  <= '1' when count = 1024 else '0';
    empty <= '1' when count = 0 else '0';
    usedw <= count; 
end Behavioral;