library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sistema_fluxo_tb is
end sistema_fluxo_tb;

architecture tb of sistema_fluxo_tb is
    -- Sinais de teste
    signal clk      : std_logic := '0';
    signal completo : std_logic;
    
    -- Sinais de debug para monitoramento dos estados
    signal state_wr : integer range 0 to 4;
    signal state_rd : integer range 0 to 3;
    
    -- Sinais de enable
    signal en_bram1 : std_logic := '1';
    signal en_bram2 : std_logic := '1';
    
    -- Constantes
    constant CLK_PERIOD : time := 10 ns;
    
    -- Sinais para acesso direto a BRAM1 (inicialização)
    signal bram1_addr : std_logic_vector(10 downto 0);
    signal bram1_di   : std_logic_vector(7 downto 0);
    signal bram1_we   : std_logic := '0';
    
    -- Sinais para leitura dos dados em BRAM2
    signal bram2_addr : std_logic_vector(10 downto 0);
    signal bram2_do   : std_logic_vector(7 downto 0);
    signal bram2_we   : std_logic;
    signal bram2_di   : std_logic_vector(7 downto 0);
    
begin
    -- Instância do sistema_fluxo
    UUT: entity work.sistema_fluxo
        port map (
            clk           => clk,
            en_bram1      => en_bram1,
            en_bram2      => en_bram2,
            bram1_init_we => bram1_we,
            bram1_init_addr => bram1_addr,
            bram1_init_di => bram1_di,
            completo      => completo,
            state_wr_out  => state_wr,
            state_rd_out  => state_rd
        );
    
    -- Gerador de clock (independente)
    process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;
    
    -- Processo de teste (não toca em clk!)
    process
    begin
        wait;
    end process;
    
end tb;
