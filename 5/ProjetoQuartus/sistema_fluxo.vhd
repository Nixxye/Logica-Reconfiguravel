library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sistema_fluxo is
    port (
        clk      : in  std_logic;
        rst      : in  std_logic;
        completo : out std_logic -- Indica que os 2048 valores chegaram na BRAM2
    );
end sistema_fluxo;

architecture structural of sistema_fluxo is
    -- Sinais internos para interconexão
    signal data_bram1_to_fifo : std_logic_vector(7 downto 0);
    signal data_fifo_to_bram2 : std_logic_vector(7 downto 0);
    
    signal addr1 : unsigned(10 downto 0) := (others => '0');
    signal addr2 : unsigned(10 downto 0) := (others => '0');
    
    signal fifo_we, fifo_re   : std_logic := '0';
    signal fifo_full, fifo_empty : std_logic;
    signal fifo_count : integer range 0 to 1024;
    
    signal we_bram2 : std_logic := '0';
    signal read_divider : integer range 0 to 6 := 0;

    -- Estados das FSMs
    type state_type is (RESET, LOAD_BRAM, WR_FIFO, WR_WAIT);
    signal state_wr : state_type := RESET;
    
    type state_rd_type is (IDLE, RD_FIFO, RD_WAIT);
    signal state_rd : state_rd_type := IDLE;

begin

    -- 1. Instância da BRAM 1 (Fonte)
    BRAM1: entity work.BlockRAM
        port map (clk => clk, we => '0', addr => std_logic_vector(addr1), di => (others => '0'), do => data_bram1_to_fifo);

    -- 2. Instância da FIFO (Pulmão)
    FILA: entity work.FIFO
        port map (clk => clk, rst => rst, en => '1', 
                  din => data_bram1_to_fifo, dout => data_fifo_to_bram2,
                  push_pop => fifo_we,
                  full => fifo_full, empty => fifo_empty, usedw => fifo_count);

    -- 3. Instância da BRAM 2 (Destino)
    BRAM2: entity work.BlockRAM
        port map (clk => clk, we => we_bram2, addr => std_logic_vector(addr2), di => data_fifo_to_bram2, do => open);

    ---------------------------------------------------------------------------
    -- MÁQUINA DE ESCRITA (Rápida: BRAM1 -> FIFO)
    ---------------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            state_wr <= RESET;
            addr1 <= (others => '0');
            fifo_we <= '0';
        elsif rising_edge(clk) then
            case state_wr is
                when RESET =>
                    state_wr <= WR_FIFO;
                
                when WR_FIFO =>
                    if addr1 = 2047 then
                        fifo_we <= '0'; -- Terminou de ler a BRAM1
                    elsif fifo_count >= 768 then -- 75% de 1024
                        fifo_we <= '0';
                        state_wr <= WR_WAIT;
                    else
                        fifo_we <= '1';
                        addr1 <= addr1 + 1;
                    end if;

                when WR_WAIT =>
                    if fifo_count <= 512 then -- 50% de 1024
                        state_wr <= WR_FIFO;
                    end if;
                
                when others => state_wr <= RESET;
            end case;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- MÁQUINA DE LEITURA (Lenta: FIFO -> BRAM2) - 7 vezes mais lenta
    ---------------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            state_rd <= IDLE;
            addr2 <= (others => '0');
            read_divider <= 0;
            fifo_re <= '0';
            we_bram2 <= '0';
        elsif rising_edge(clk) then
            we_bram2 <= '0'; -- Pulso de escrita padrão
            fifo_re <= '0';

            case state_rd is
                when IDLE =>
                    if fifo_empty = '0' then
                        state_rd <= RD_FIFO;
                    end if;

                when RD_FIFO =>
                    if read_divider = 6 then
                        read_divider <= 0;
                        if fifo_empty = '0' then
                            fifo_re <= '1';
                            we_bram2 <= '1';
                            addr2 <= addr2 + 1;
                        end if;
                    else
                        read_divider <= read_divider + 1;
                    end if;
                    
                    if addr2 = 2047 then
                        state_rd <= RD_WAIT;
                    end if;

                when RD_WAIT =>
                    -- Processo concluído
                    null;
            end case;
        end if;
    end process;

    completo <= '1' when addr2 = 2047 else '0';

end structural;