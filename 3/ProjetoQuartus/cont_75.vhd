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
		HEX0   : out std_logic_vector(6 downto 0);  -- centÃƒÂ©simos unidade
		HEX1   : out std_logic_vector(6 downto 0);  -- centÃƒÂ©simos dezena
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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

	signal q1, q2, q3, q4  : std_logic_vector(3 downto 0);

	signal clk2_sig : std_logic;
	signal clk3_sig : std_logic;
	signal clk4_sig : std_logic;

	signal rst_sig_internal1, rst_sig_internal2  : std_logic;
	
	signal state : std_logic := '0';  -- '0' = STOPPED, '1' = COUNTING
	signal en_internal : std_logic := '0';
	signal clr_internal : std_logic := '1';
	
	-- Divisor de clock 27MHz para 100Hz
	signal div_count : unsigned(17 downto 0) := (others => '0');
	signal clk_100hz_sig : std_logic := '0';
	
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
	en_u1 <= en_internal and clk_100hz_sig;
	en_u2 <= clk2_sig and clk_100hz_sig;
	en_u3 <= clk3_sig and clk_100hz_sig;
	en_u4 <= clk4_sig and clk_100hz_sig;
	-- Divisor de clock: 27MHz / 270000 = 100Hz
	process(CLK, RST)
	begin
		if RST = '1' then
			div_count <= (others => '0');
			clk_100hz_sig <= '0';
		elsif rising_edge(CLK) then
			if div_count = 2 then  -- 270000 - 1 (0 a 269999 = 270000 ciclos)
				div_count <= (others => '0');
				clk_100hz_sig <= '1';
			else
				div_count <= div_count + 1;
				clk_100hz_sig <= '0';
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
			
			-- MÃƒÂ¡quina de estados: '0' = STOPPED, '1' = COUNTING
			if state = '0' then  -- STOPPED
				en_internal <= '0';
				-- Reset sÃƒÂ³ funciona quando parado
				if btn_reset_edge = '1' then
					clr_internal <= '1';  -- Zera o contador
				end if;
				-- Detecta transiÃƒÂ§ÃƒÂ£o para COUNTING
				if btn_play_pause_edge = '1' then
					state <= '1';
					clr_internal <= '0';  -- Libera contagem
				end if;
				
			elsif state = '1' then  -- COUNTING
				en_internal <= '1';
				clr_internal <= '0';
				-- BTN_RESET nÃƒÂ£o funciona durante contagem
				-- Detecta transiÃƒÂ§ÃƒÂ£o para STOPPED
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
			Q    => q1
		);

	u2 : cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal1,
			EN   => en_u2,
			CLR  => clr_internal,
			INPT => INPT(7 downto 4),
			Q    => q2
		);

	u3 : cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal2,
			EN   => en_u3,
			CLR  => clr_internal,
			INPT => (others => '0'),
			Q    => q3
		);

	u4: cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal2,
			EN   => en_u4,
			CLR  => clr_internal,
			INPT => (others => '0'),
			Q    => q4
		);

	-- Decodificadores BCD para 7-segmentos
	disp0 : bcd_7seg
		port map (
			BCD => q1,
			SEG => HEX0
		);

	disp1 : bcd_7seg
		port map (
			BCD => q2,
			SEG => HEX1
		);

	disp2 : bcd_7seg
		port map (
			BCD => q3,
			SEG => HEX2
		);

	disp3 : bcd_7seg
		port map (
			BCD => q4,
			SEG => HEX3
		);

	Q_ms <= q2 & q1;
	Q_s  <= q4 & q3;

	rst_sig_internal1 <= '1' when (RST = '1' or (q2 & q1) = "01100100") else '0';
	rst_sig_internal2 <= '1' when (RST = '1' or (q4 & q3) = "00111100") else '0';

	clk2_sig <= '1' when (RST = '0' and en_internal = '1' and clr_internal = '0' and q1 = "1111") else '0';
	clk3_sig <= '1' when (RST = '0' and en_internal = '1' and clr_internal = '0' and q2 & q1 = "01100011") else '0';
	clk4_sig <= '1' when (RST = '0' and en_internal = '1' and clr_internal = '0' and q3 & q2 & q1 = "111101100011") else '0';

	CLK2 <= clk2_sig;
	CLK3 <= clk3_sig;
	CLK4 <= clk4_sig;
	CLK_100HZ <= clk_100hz_sig;

	RST_SIG1 <= rst_sig_internal1;
	RST_SIG2 <= rst_sig_internal2;

end architecture structural;
