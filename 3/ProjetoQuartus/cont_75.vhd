library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_75 is
	port (
		CLK : in  std_logic;
		CLR : in  std_logic;
		RST : in  std_logic;
		EN  : in  std_logic;
		Q_ms   : out std_logic_vector(7 downto 0);
		Q_s    : out std_logic_vector(7 downto 0);
		CLK2 : out std_logic;
		CLK3 : out std_logic;
		CLK4 : out std_logic;
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

	constant INPT : std_logic_vector(7 downto 0) := "00000000";

	signal q1, q2, q3, q4  : std_logic_vector(3 downto 0);

	signal clk2_sig : std_logic;
	signal clk3_sig : std_logic;
	signal clk4_sig : std_logic;

	signal rst_sig_internal1, rst_sig_internal2  : std_logic;

begin
	u1 : cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal1,
			EN   => EN,
			CLR  => CLR,
			INPT => INPT(3 downto 0),
			Q    => q1
		);

	u2 : cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal1,
			EN   => clk2_sig,
			CLR  => CLR,
			INPT => INPT(7 downto 4),
			Q    => q2
		);

	u3 : cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal2,
			EN   => clk3_sig,
			CLR  => CLR,
			INPT => (others => '0'),
			Q    => q3
		);

	u4: cont_4
		port map (
			CLK  => CLK,
			RST  => rst_sig_internal2,
			EN   => clk4_sig,
			CLR  => CLR,
			INPT => (others => '0'),
			Q    => q4
		);

	Q_ms <= q2 & q1;
	Q_s  <= q4 & q3;

	rst_sig_internal1 <= '1' when (RST = '1' or (q2 & q1) = "01100100") else '0';
	rst_sig_internal2 <= '1' when (RST = '1' or (q4 & q3) = "00111100") else '0';

	clk2_sig <= '1' when (RST = '0' and EN = '1' and CLR = '0' and q1 = "1111") else '0';
	clk3_sig <= '1' when (RST = '0' and EN = '1' and CLR = '0' and q2 & q1 = "01100011") else '0';
	clk4_sig <= '1' when (RST = '0' and EN = '1' and CLR = '0' and q3 & q2 & q1 = "111101100011") else '0';

	CLK2 <= clk2_sig;
	CLK3 <= clk3_sig;
	CLK4 <= clk4_sig;

	RST_SIG1 <= rst_sig_internal1;
	RST_SIG2 <= rst_sig_internal2;

end architecture structural;
