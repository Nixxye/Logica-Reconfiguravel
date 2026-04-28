library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sistema_fluxo is
    port (
        clk           : in  std_logic;
        en_bram1      : in  std_logic := '1'; -- Enable para BRAM1
        en_bram2      : in  std_logic := '1'; -- Enable para BRAM2
        -- Sinais para inicializar BRAM1 do testbench
        bram1_init_we : in  std_logic := '0';
        bram1_init_addr : in  std_logic_vector(10 downto 0) := (others => '0');
        bram1_init_di : in  std_logic_vector(7 downto 0) := (others => '0');
        completo      : out std_logic; -- Indica que os 2048 valores chegaram na BRAM2
        -- Sinais de debug para monitoramento dos estados
        state_wr_out  : out integer range 0 to 4;
        state_rd_out  : out integer range 0 to 3
    );
end sistema_fluxo;

architecture structural of sistema_fluxo is
    -- Sinais internos para interconexão
    signal data_bram1_to_fifo : std_logic_vector(7 downto 0);
    signal data_fifo_to_bram2 : std_logic_vector(7 downto 0);
    signal data_bram2_out     : std_logic_vector(7 downto 0);
    
    signal addr1 : unsigned(10 downto 0) := (others => '0');
    signal addr2 : unsigned(10 downto 0) := (others => '0');
    
    -- Sinais multiplexados para BRAM1 (permite escrita do testbench)
    signal bram1_addr_mux : std_logic_vector(10 downto 0);
    signal bram1_di_mux   : std_logic_vector(7 downto 0);
    signal bram1_we_mux   : std_logic;
    
    signal fifo_we, fifo_re   : std_logic := '0';
    signal fifo_full, fifo_empty : std_logic;
    signal fifo_count : integer range 0 to 1024;
    
    signal we_bram2 : std_logic := '0';
    
    -- Sinal de reset para FIFO
    signal fifo_rst : std_logic := '1';
    
    -- Sinais de atividade das entidades
    signal bram1_active : std_logic;
    signal fifo_active  : std_logic;
    signal bram2_active : std_logic;

    -- Contador para reset de 5 clocks
    signal reset_counter : integer range 0 to 5 := 0;
    signal reset_done : std_logic := '0';
    
    -- Divisor de clock para leitura (7x mais lento)
    signal rd_clock_divider : integer range 0 to 6 := 0;
    signal rd_clock_enable : std_logic := '0';

    -- Estados das FSMs
    type state_type is (RESET, LOAD_BRAM, WR_FIFO, WR_WAIT, WR_COMPLETE);
    signal state_wr : state_type := RESET;
    
    type state_rd_type is (IDLE, RD_FIFO, RD_WAIT, RD_COMPLETE);
    signal state_rd : state_rd_type := IDLE;

begin

    -- Multiplexador para BRAM1: permite testbench escrever durante inicialização
    bram1_addr_mux <= bram1_init_addr when bram1_init_we = '1' else std_logic_vector(addr1);
    bram1_di_mux   <= bram1_init_di   when bram1_init_we = '1' else (others => '0');
    bram1_we_mux   <= bram1_init_we;
    
    -- Reset da FIFO é o inverso de reset_done
    fifo_rst <= not reset_done;

    -- 1. Instância da BRAM 1
    BRAM1: entity work.BlockRAM
        port map (clk => clk, we => bram1_we_mux, addr => bram1_addr_mux, di => bram1_di_mux, do => data_bram1_to_fifo);

    -- 2. Instância da FIFO
    FILA: entity work.FIFO
        port map (clk => clk, rst => fifo_rst, 
                  din => data_bram1_to_fifo, dout => data_fifo_to_bram2,
                  write_enable => fifo_we, read_enable => fifo_re,
                  full => fifo_full, empty => fifo_empty, usedw => fifo_count);

    -- 3. Instância da BRAM 2
    BRAM2: entity work.BlockRAM
        port map (clk => clk, we => we_bram2, addr => std_logic_vector(addr2), di => data_fifo_to_bram2, do => data_bram2_out);
    
    -- Sinais de atividade (representam quando cada entidade está realizando operações)
    bram1_active <= fifo_we;  -- BRAM1 está ativa quando está escrevendo na FIFO
    fifo_active  <= fifo_we or fifo_re;  -- FIFO está ativa quando há push ou pop
    bram2_active <= we_bram2;  -- BRAM2 está ativa quando está escrevendo

    ---------------------------------------------------------------------------
    -- Contador de Reset (5 clocks)
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
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Divisor de Clock para Leitura (7x mais lento)
    ---------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_done = '0' then
                rd_clock_divider <= 0;
                rd_clock_enable <= '0';
            else
                if rd_clock_divider = 6 then
                    rd_clock_divider <= 0;
                    rd_clock_enable <= '1';
                else
                    rd_clock_divider <= rd_clock_divider + 1;
                    rd_clock_enable <= '0';
                end if;
            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- MÁQUINA DE ESCRITA (Rápida: BRAM1 -> FIFO)
    ---------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_done = '0' then
                -- Durante os 5 clocks de reset, manter tudo zerado
                state_wr <= RESET;
                addr1 <= (others => '0');
                fifo_we <= '0';
            else
                case state_wr is
                    when RESET =>
                        -- Transição para WR_FIFO com addr1 resetado para 0
                        addr1 <= (others => '0');
                        state_wr <= LOAD_BRAM;
                        bram1_we_mux <= '1';
                    when LOAD_BRAM =>
                        if addr1 = 2047 then
                            bram1_we_mux <= '0'; -- Terminou de carregar a BRAM1
                            state_wr <= WR_FIFO;
                            addr1 <= (others => '0'); -- Resetar addr1 para leitura
                            fifo_we <= '1';
                        else
                            addr1 <= addr1 + 1;
                            bram1_di_mux <= std_logic_vector(addr1(7 downto 0));
                        end if;

                    when WR_FIFO =>
                        -- A cada clock, incrementa addr1 e joga valores na FIFO
                        if addr1 = 2047 then
                            fifo_we <= '0'; -- Terminou de ler a BRAM1
                            state_wr <= WR_COMPLETE;
                        elsif fifo_count >= 768 then -- 75% de 1024
                            fifo_we <= '0';
                            state_wr <= WR_WAIT;
                        else
                            addr1 <= addr1 + 1;
                        end if;

                    when WR_WAIT =>
                        if fifo_count <= 512 then -- 50% de 1024
                            state_wr <= WR_FIFO;
                        end if;
                    
                    when WR_COMPLETE =>
                        -- Escrita completa, aguardar conclusão
                        null;
                end case;
            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- MÁQUINA DE LEITURA (Controlada por clock dividido 7x mais lento)
    ---------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_done = '0' then
                -- Durante os 5 clocks de reset, manter tudo zerado
                state_rd <= IDLE;
                addr2 <= (others => '0');
                fifo_re <= '0';
                we_bram2 <= '0';
            else
                -- Resetar sinais de controle por padrão
                we_bram2 <= '0'; -- Pulso de escrita padrão
                fifo_re <= '0';

                case state_rd is
                    when IDLE =>
                        if fifo_empty = '0' then
                            state_rd <= RD_FIFO;
                            fifo_re <= '1';
                            we_bram2 <= '1';
                        else
                            state_rd <= RD_WAIT;
                        end if;

                    when RD_FIFO =>
                        -- Operações ativadas apenas quando rd_clock_enable = '1'
                        if rd_clock_enable = '1' then
                            if fifo_empty = '0' then
                                fifo_re <= '1';
                                we_bram2 <= '1';
                                addr2 <= addr2 + 1;
                                
                                if addr2 = 2047 then
                                    state_rd <= RD_COMPLETE;
                                end if;
                            end if;
                        end if;

                    when RD_WAIT =>
                        if fifo_empty = '0' then
                            state_rd <= RD_FIFO;
                        end if;
                    
                    when RD_COMPLETE =>
                        -- Leitura completa
                        null;
                end case;
            end if;
        end if;
    end process;

    completo <= '1' when addr2 = 2047 else '0';

    ---------------------------------------------------------------------------
    -- Conversão dos estados para outputs de debug
    ---------------------------------------------------------------------------
    process(state_wr)
    begin
        case state_wr is
            when RESET       => state_wr_out <= 0;
            when LOAD_BRAM   => state_wr_out <= 1;
            when WR_FIFO     => state_wr_out <= 2;
            when WR_WAIT     => state_wr_out <= 3;
            when WR_COMPLETE => state_wr_out <= 4;
        end case;
    end process;

    process(state_rd)
    begin
        case state_rd is
            when IDLE        => state_rd_out <= 0;
            when RD_FIFO     => state_rd_out <= 1;
            when RD_WAIT     => state_rd_out <= 2;
            when RD_COMPLETE => state_rd_out <= 3;
        end case;
    end process;

end structural;