library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity totalizadores_rapidos is
    port (
        CLK  : in  std_logic;
        INPT : in  std_logic_vector(4 downto 0);
        -- Saídas para cada tipo de implementação
        Q_b1_for    : out std_logic_vector(3 downto 0);
        Q_b2_while  : out std_logic_vector(3 downto 0);
        Q_b3_if     : out std_logic_vector(3 downto 0);
        Q_b4_case   : out std_logic_vector(3 downto 0);
        Q_b5_soma   : out std_logic_vector(3 downto 0);
        Q_b6_demux  : out std_logic_vector(3 downto 0)
    );
end totalizadores_rapidos;

architecture Behavioral of totalizadores_rapidos is
    signal b0, b1, b2, b3, b4 : unsigned(3 downto 0);
begin
    process(CLK)
        variable v_for   : unsigned(3 downto 0);
        variable v_while : unsigned(3 downto 0);
        variable v_if    : unsigned(3 downto 0);
        variable i       : integer;
    begin
        if rising_edge(CLK) then
            v_for   := "0000";
            v_while := "0000";
            v_if    := "0000";

            -- b.1) VARIABLES FOR
            for j in 0 to 4 loop
                if INPT(j) = '1' then
                    v_for := v_for + 1;
                end if;
            end loop;

            -- b.2) VARIABLES WHILE
            i := 0;
            while i <= 4 loop
                if INPT(i) = '1' then
                    v_while := v_while + 1;
                end if;
                i := i + 1;
            end loop;

            -- b.3) VARIABLES (IF THEN) - Sequencial manual
            if INPT(0) = '1' then v_if := v_if + 1; end if;
            if INPT(1) = '1' then v_if := v_if + 1; end if;
            if INPT(2) = '1' then v_if := v_if + 1; end if;
            if INPT(3) = '1' then v_if := v_if + 1; end if;
            if INPT(4) = '1' then v_if := v_if + 1; end if;

            -- Atribuição das variáveis para as saídas (Signals)
            Q_b1_for   <= std_logic_vector(v_for);
            Q_b2_while <= std_logic_vector(v_while);
            Q_b3_if    <= std_logic_vector(v_if);
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- ITEM b.4: SIGNALS (CASE/WHEN) - Look-up Table (Combinacional)
    ---------------------------------------------------------------------------
    process(INPT)
    begin
        case INPT is
            when "00000" =>
                Q_b4_case <= "0000";
            when "00001" | "00010" | "00100" | "01000" | "10000" =>
                Q_b4_case <= "0001";
            when "00011" | "00101" | "00110" | "01001" | "01010" |
                 "01100" | "10001" | "10010" | "10100" | "11000" =>
                Q_b4_case <= "0010";
            when "00111" | "01011" | "01101" | "01110" | "10011" |
                 "10101" | "10110" | "11001" | "11010" | "11100" =>
                Q_b4_case <= "0011";
            when "01111" | "10111" | "11011" | "11101" | "11110" =>
                Q_b4_case <= "0100";
            when "11111" =>
                Q_b4_case <= "0101";
            when others =>
                Q_b4_case <= "0000";
        end case;
    end process;

    ---------------------------------------------------------------------------
    -- ITEM b.5: SIGNALS (SOMA DIRETA) - Conversão bit a bit (Combinacional)
    ---------------------------------------------------------------------------
    -- Usamos unsigned'("" & bit) para converter cada bit em um valor somável
    Q_b5_soma <= std_logic_vector(
        unsigned'("000" & INPT(0)) + 
        unsigned'("000" & INPT(1)) + 
        unsigned'("000" & INPT(2)) + 
        unsigned'("000" & INPT(3)) + 
        unsigned'("000" & INPT(4))
    );

    ---------------------------------------------------------------------------
    -- ITEM b.6: SIGNALS (SOMA COM 5 DEMUX/BITS INDIVIDUAIS)
    ---------------------------------------------------------------------------
    -- Simulando a extração individual (demux) e somando os sinais resultantes
    b0 <= "0001" when INPT(0) = '1' else "0000";
    b1 <= "0001" when INPT(1) = '1' else "0000";
    b2 <= "0001" when INPT(2) = '1' else "0000";
    b3 <= "0001" when INPT(3) = '1' else "0000";
    b4 <= "0001" when INPT(4) = '1' else "0000";

    Q_b6_demux <= std_logic_vector(b0 + b1 + b2 + b3 + b4);

end Behavioral;