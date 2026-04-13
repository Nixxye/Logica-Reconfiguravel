library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_75 is
	port (
		CLK : in  std_logic;
		CLR : in  std_logic;
		RST : in  std_logic;
		EN  : in  std_logic;
		BTN_PLAY_PAUSE : in std_logic;
		BTN_RESET : in std_logic;
		Q_ms   : out std_logic_vector(7 downto 0);
		Q_s    : out std_logic_vector(7 downto 0);
		Q1 : out std_logic_vector(3 downto 0);
		Q2 : out std_logic_vector(3 downto 0);
		Q3 : out std_logic_vector(3 downto 0);
		Q4 : out std_logic_vector(3 downto 0);
		HEX0   : out std_logic_vector(6 downto 0);  -- centésimos unidade
		HEX1   : out std_logic_vector(6 downto 0);  -- centésimos dezena
		HEX2   : out std_logic_vector(6 downto 0);  -- segundos unidade
		HEX3   : out std_logic_vector(6 downto 0);  -- segundos dezena
		CLK2 : out std_logic;
		CLK3 : out std_logic;
		CLK4 : out std_logic;
		CLK_100HZ : out std_logic;
		RST_SIG1 : out std_logic;
		RST_SIG2 : out std_logic
	);
end entity cont_75;

architecture structural of cont_75 is
	component cont_4 is
		port (
			CLK, RST, EN, CLR : in std_logic;
			INPT : in std_logic_vector(3 downto 0);
			Q : out std_logic_vector(3 downto 0)
		);
	end component;

	component bcd_7seg is
		port (
			BCD : in  std_logic_vector(3 downto 0);
			SEG : out std_logic_vector(6 downto 0)
		);
	end component;

	constant INPT : std_logic_vector(7 downto 0) := "00000000";

	signal sig_q1, sig_q2, sig_q3, sig_q4  : std_logic_vector(3 downto 0);

	signal clk2_sig : std_logic;
	signal clk3_sig : std_logic;
	signal clk4_sig : std_logic;

	signal rst_sig_internal1, rst_sig_internal2, rst_sig_internal3, rst_sig_internal4  : std_logic;
	
	signal state : std_logic := '0';  -- '0' = STOPPED, '1' = COUNTING
	signal en_internal : std_logic := '0';
	signal clr_internal : std_logic := '1';
	
	-- Clock Enable de 100Hz em vez de divisor de clock
	signal clk_enable_count : unsigned(17 downto 0) := (others => '0');
	signal clk_100hz_en : std_logic := '0';
	
	signal btn_play_pause_prev : std_logic := '0';
	signal btn_reset_prev : std_logic := '0';
	signal btn_play_pause_edge : std_logic;
	signal btn_reset_edge : std_logic;
	
	-- Sinais de enable combinados para os contadores
	signal en_u1 : std_logic;
	signal en_u2 : std_logic;
	signal en_u3 : std_logic;
	signal en_u4 : std_logic;

begin
	-- AtribuiÃ§Ãµes combinacionais dos enables
	en_u1 <= en_internal and clk_100hz_en;
	en_u2 <= clk2_sig and clk_100hz_en;
	en_u3 <= clk3_sig and clk_100hz_en;
	en_u4 <= clk4_sig and clk_100hz_en;
	
	-- Clock Enable de 100Hz: 27MHz / 270000 = 100Hz
	-- Este sinal pulsa por 1 ciclo a cada 270000 ciclos do clock principal
	process(CLK, RST)
	begin
		if RST = '1' then
			clk_enable_count <= (others => '0');
			clk_100hz_en <= '0';
		elsif rising_edge(CLK) then
			if clk_enable_count = 2 then  -- 0 a 269999 = 270000 ciclos
				clk_enable_count <= (others => '0');
				clk_100hz_en <= '1';
			else
				clk_enable_count <= clk_enable_count + 1;
				clk_100hz_en <= '0';
			end if;
		end if;
	end process;

	btn_play_pause_edge <= BTN_PLAY_PAUSE and (not btn_play_pause_prev);
	btn_reset_edge <= BTN_RESET and (not btn_reset_prev);
	
	process(CLK, RST)
	begin
		if RST = '1' then
			state <= '0';
			en_internal <= '0';
			clr_internal <= '1';
			btn_play_pause_prev <= '0';
			btn_reset_prev <= '0';
		elsif rising_edge(CLK) then
			btn_play_pause_prev <= BTN_PLAY_PAUSE;
			btn_reset_prev <= BTN_RESET;
			
			-- MÃƒÆ’Ã‚Â¡quina de estados: '0' = STOPPED, '1' = COUNTING
			if state = '0' then  -- STOPPED
				en_internal <= '0';
				-- Reset sÃƒÆ’Ã‚Â³ funciona quando parado
				if btn_reset_edge = '1' then
					clr_internal <= '1';  -- Zera o contador
				end if;
				-- Detecta transiÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o para COUNTING
				if btn_play_pause_edge = '1' then
					state <= '1';
					clr_internal <= '0';  -- Libera contagem
				end if;
				
			elsif state = '1' then  -- COUNTING
				en_internal <= '1';
				clr_internal <= '0';
				-- BTN_RESET nÃƒÆ’Ã‚Â£o funciona durante contagem
				-- Detecta transiÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o para STOPPED
				if btn_play_pause_edge = '1' then
					state <= '0';
				end if;
			end if;
		end if;
	end process;

	u1 : cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal1,
			EN   => en_u1,
			CLR  => clr_internal,
			INPT => INPT(3 downto 0),
			Q    => sig_q1
		);

	u2 : cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal2,
			EN   => en_u2,
			CLR  => clr_internal,
			INPT => INPT(7 downto 4),
			Q    => sig_q2
		);

	u3 : cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal3,
			EN   => en_u3,
			CLR  => clr_internal,
			INPT => (others => '0'),
			Q    => sig_q3
		);

	u4: cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal4,
			EN   => en_u4,
			CLR  => clr_internal,
			INPT => (others => '0'),
			Q    => sig_q4
		);

	-- Decodificadores BCD para 7-segmentos
	disp0 : bcd_7seg
		port map (
			BCD => sig_q1,
			SEG => HEX0
		);

	disp1 : bcd_7seg
		port map (
			BCD => sig_q2,
			SEG => HEX1
		);

	disp2 : bcd_7seg
		port map (
			BCD => sig_q3,
			SEG => HEX2
		);

	disp3 : bcd_7seg
		port map (
			BCD => sig_q4,
			SEG => HEX3
		);

	Q_ms <= sig_q2 & sig_q1;
	Q_s  <= sig_q4 & sig_q3;
	Q1 <= sig_q1;
	Q2 <= sig_q2;
	Q3 <= sig_q3;
	Q4 <= sig_q4;

	rst_sig_internal1 <= '1' when (RST = '1' or (sig_q1) = "1010") else '0';
	rst_sig_internal2 <= '1' when (RST = '1' or (sig_q2 & sig_q1) = "10101010") else '0';
	rst_sig_internal3 <= '1' when (RST = '1' or (sig_q3) = "1010") else '0';
	rst_sig_internal4 <= '1' when (RST = '1' or (sig_q4 & sig_q3 & sig_q2 & sig_q1) = "1010101010101010") else '0';

	clk2_sig <= '1' when (RST = '0' and en_internal = '1' and clr_internal = '0' and sig_q1 = "1001") else '0';
	clk3_sig <= '1' when (RST = '0' and en_internal = '1' and clr_internal = '0' and sig_q2 & sig_q1 = "10011001") else '0';
	clk4_sig <= '1' when (RST = '0' and en_internal = '1' and clr_internal = '0' and sig_q3 & sig_q2 & sig_q1 = "100110011001") else '0';
	 
	CLK2 <= clk2_sig;
	CLK3 <= clk3_sig;
	CLK4 <= clk4_sig;
	CLK_100HZ <= clk_100hz_en;

	RST_SIG1 <= rst_sig_internal1;
	RST_SIG2 <= rst_sig_internal2;

end architecture structural;
