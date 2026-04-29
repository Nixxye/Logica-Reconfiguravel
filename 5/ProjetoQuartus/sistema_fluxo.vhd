library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sistema_fluxo is
    port (
        clk               : in  std_logic;
        en_bram1          : in  std_logic := '1';
        en_bram2          : in  std_logic := '1';
        bram1_init_we     : in  std_logic := '0';
        bram1_init_addr   : in  std_logic_vector(10 downto 0) := (others => '0');
        bram1_init_di     : in  std_logic_vector(7 downto 0) := (others => '0');
        completo          : out std_logic;
        ext_bram1_to_fifo : out std_logic_vector(7 downto 0);
        ext_fifo_to_bram2 : out std_logic_vector(7 downto 0);
        ext_bram2_out     : out std_logic_vector(7 downto 0);
        state_wr_out      : out integer range 0 to 4;
        state_rd_out      : out integer range 0 to 3
    );
end sistema_fluxo;

architecture structural of sistema_fluxo is
    signal data_bram1_to_fifo : std_logic_vector(7 downto 0);
    signal data_fifo_to_bram2 : std_logic_vector(7 downto 0);
    signal data_bram2_out     : std_logic_vector(7 downto 0);
    
    signal addr1, cont : unsigned(10 downto 0) := (others => '0');
    signal addr2 : unsigned(10 downto 0) := (others => '0');
    
    signal bram1_addr_mux : std_logic_vector(10 downto 0);
    signal bram1_we_mux   : std_logic;
    
    signal fsm_bram1_we : std_logic := '0';
    signal fsm_bram1_di : std_logic_vector(7 downto 0) := (others => '0');
    
    signal fifo_we, fifo_re   : std_logic := '0';
    signal fifo_full, fifo_empty : std_logic;
    signal fifo_count : integer range 0 to 1024;
    
    signal we_bram2 : std_logic := '0';
    signal fifo_rst : std_logic := '1';
    
    signal reset_counter : integer range 0 to 5 := 0;
    signal reset_done : std_logic := '0';
    
    signal rd_clock_divider : integer range 0 to 6 := 0;
    signal rd_clock_enable : std_logic := '0';

    type state_type is (RESET, LOAD_BRAM, WR_FIFO, WR_WAIT, WR_COMPLETE);
    signal state_wr : state_type := RESET;
    
    type state_rd_type is (IDLE, RD_FIFO, RD_WAIT, RD_COMPLETE);
    signal state_rd : state_rd_type := IDLE;

    -- Sinal para garantir que o reset dos endereços no final ocorra só uma vez
    signal visualizacao_iniciada : std_logic := '0';

begin

    bram1_addr_mux <=  std_logic_vector(addr1);
    bram1_we_mux   <=  fsm_bram1_we;
        
    fifo_rst <= not reset_done;

    ext_bram1_to_fifo <= data_bram1_to_fifo;
    ext_fifo_to_bram2 <= data_fifo_to_bram2;
    ext_bram2_out     <= data_bram2_out;

    BRAM1: entity work.BlockRAM
        port map (clk => clk, we => bram1_we_mux, addr => bram1_addr_mux, di => fsm_bram1_di, do => data_bram1_to_fifo);

    FILA: entity work.FIFO
        port map (clk => clk, rst => fifo_rst, 
                  din => data_bram1_to_fifo, dout => data_fifo_to_bram2,
                  write_enable => fifo_we, read_enable => fifo_re,
                  full => fifo_full, empty => fifo_empty, usedw => fifo_count);

    BRAM2: entity work.BlockRAM
        port map (clk => clk, we => we_bram2, addr => std_logic_vector(addr2), di => data_fifo_to_bram2, do => data_bram2_out);

    ---------------------------------------------------------------------------
    -- Lógica de Reset e Divisores
    ---------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_counter < 5 then
                reset_counter <= reset_counter + 1;
                reset_done <= '0';
            else
                reset_done <= '1';
            end if;

            if reset_done = '1' then
                if rd_clock_divider = 6 then
                    rd_clock_divider <= 0;
                    rd_clock_enable <= '1';
                else
                    rd_clock_divider <= rd_clock_divider + 1;
                    rd_clock_enable <= '0';
                end if;
            else
                rd_clock_divider <= 0;
                rd_clock_enable <= '0';
            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- MÁQUINA DE ESCRITA / VISUALIZAÇÃO ADDR1
    ---------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_done = '0' then
                state_wr <= RESET;
                addr1 <= (others => '0');
                fifo_we <= '0';
                fsm_bram1_we <= '0';
                visualizacao_iniciada <= '0';
            else
                case state_wr is
                    when RESET =>
                        addr1 <= (others => '0');
                        cont <= (others => '0');
                        state_wr <= LOAD_BRAM;
                        fsm_bram1_we <= '1';
                        
                    when LOAD_BRAM =>
                        if addr1 = 2047 then
                            fsm_bram1_we <= '0';
                            state_wr <= WR_FIFO;
                            addr1 <= (others => '0');
                        else
                            addr1 <= addr1 + 1;
                            cont <= cont + 1;
                        end if;

                    when WR_FIFO =>
                        if addr1 = 2047 then
                            fifo_we <= '0';
                            state_wr <= WR_COMPLETE;
                        elsif fifo_count >= 768 then
                            fifo_we <= '0';
                            state_wr <= WR_WAIT;
                        else
                            addr1 <= addr1 + 1;
                            fifo_we <= '1';
                        end if;

                    when WR_WAIT =>
                        if fifo_count <= 512 then
                            state_wr <= WR_FIFO;
                        end if;
                    
                    when WR_COMPLETE =>
                        fifo_we <= '0';
                        -- Inicia contagem de visualização quando a leitura também terminar
                        if state_rd = RD_COMPLETE then
                            if visualizacao_iniciada = '0' then
                                addr1 <= (others => '0');
                                visualizacao_iniciada <= '1';
                            else
                                addr1 <= addr1 + 1;
                            end if;
                        end if;
                end case;
            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- MÁQUINA DE LEITURA / VISUALIZAÇÃO ADDR2
    ---------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_done = '0' then
                state_rd <= IDLE;
                addr2 <= (others => '0');
                fifo_re <= '0';
                we_bram2 <= '0';
            else
                if we_bram2 = '1' then
                    addr2 <= addr2 + 1;
                end if;
                we_bram2 <= '0';
                fifo_re <= '0';

                case state_rd is
                    when IDLE =>
                        if fifo_empty = '0' then
                            state_rd <= RD_FIFO;
                        end if;

                    when RD_FIFO =>
                        if rd_clock_enable = '1' then
                            if fifo_empty = '0' then
                                fifo_re <= '1';
                                we_bram2 <= '1';
                            elsif addr2 = 2047 then
                                state_rd <= RD_COMPLETE;
                            end if;
                        end if;

                    when RD_WAIT =>
                        if fifo_empty = '0' then
                            state_rd <= RD_FIFO;
                        end if;
                    
                    when RD_COMPLETE =>
                        we_bram2 <= '0';
                        -- Sincronizado com a visualização do addr1
                        if visualizacao_iniciada = '0' then
                            addr2 <= (others => '0');
                        else
                            addr2 <= addr2 + 1;
                        end if;
                end case;
            end if;
        end if;
    end process;

    completo <= '1' when state_rd = RD_COMPLETE else '0';
    fsm_bram1_di <= std_logic_vector(cont(7 downto 0)) when state_wr = LOAD_BRAM else (others => '0');

    ---------------------------------------------------------------------------
    -- Debug Outputs
    ---------------------------------------------------------------------------
    state_wr_out <= 0 when state_wr = RESET else
                    1 when state_wr = LOAD_BRAM else
                    2 when state_wr = WR_FIFO else
                    3 when state_wr = WR_WAIT else 4;

    state_rd_out <= 0 when state_rd = IDLE else
                    1 when state_rd = RD_FIFO else
                    2 when state_rd = RD_WAIT else 3;

end structural;