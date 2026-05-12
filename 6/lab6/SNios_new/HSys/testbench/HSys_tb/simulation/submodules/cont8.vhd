Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity cont8 is
   PORT(RST  : in std_logic; --Sw3
        CLK  : in std_logic; -- Pin N2
        Q    : out std_logic_vector(7 downto 0);  -- Q    : out unsigned(3 downto 0); --Q(3) -> LEDR0 AE23 Q(2) -> LEDR1 AF23
        EN   : in std_logic; --sw2
        CLR  : in std_logic; -- Sw0 Pin N25
        LD   : in std_logic; --sw1
        LOAD : in std_logic_vector (7 downto 0)); -- LOAD : in unsigned (3 downto 0);
		  
end entity;
Architecture X of cont8 is
Signal CONT: std_logic_vector (7 downto 0);   --Signal CONT: unsigned (3 downto 0);

Begin


Process (CLK, RST)
--   variable testevar : std_logic;
--   variable teste : std_logic_vector(3 downto 0);
	variable teste_int : integer;
Begin
	If RST = '1' then
	   CONT <= (others => '0');
	--	testevar := '0';
	--	teste := "0000";
		teste_int := 0;
	Elsif CLK' event and CLK = '1' then
		If CLR = '1'then
			CONT <= (others => '0');
		Else
			If EN = '1' then
				If LD = '1' then
					CONT <= LOAD;
				Else
--						testevar := '1'; 
				--		CONT <= std_logic_vector(to_unsigned(1,4));
				--		CONT <= std_logic_vector((signed(CONT) + 1));--+std_logic_vector(to_unsigned(1,4));
						--CONT <= testevar;
						--teste := CONT;
						--teste := teste + 1;
						--CONT  <=
						teste_int := teste_int + 1;
						CONT <= std_logic_vector(to_signed(teste_int,8));	
				end IF;
			End If;
		End If;
	End If;
End process;
Q <= CONT;
End architecture;
