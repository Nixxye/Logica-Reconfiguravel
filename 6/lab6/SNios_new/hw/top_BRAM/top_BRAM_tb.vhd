Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY top_BRAM_tb IS
END top_BRAM_tb;

architecture x of top_BRAM_tb is

component top_BRAM IS
PORT ( clock, resetn : IN  STD_LOGIC;
	   chipselect 	 : IN  STD_LOGIC;
	   writedata  	 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0); -- DATA IN
       write_en      : IN  STD_LOGIC;
       readdata   	 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0); -- DATA OUT
   	   add           : IN  STD_LOGIC_VECTOR( 1 DOWNTO 0);
       read_en       : IN  STD_LOGIC );
END component;

signal GND, VCC: std_logic; 
signal rst, clock, resetn: std_logic;
signal READDATA, WRITEDATA : std_logic_vector(31 downto 0);
signal ADD : std_logic_vector(1 downto 0);
TYPE state_type is (idle_st0,idle_st1, write_st0, write_st1, write_st2, read_st0, read_st1, read_st2, read_st3);
signal state : state_type; 
signal INTERVAL_0, INTERVAL_1, counter, address : integer;
signal CS, WR_EN, RD_EN    : std_logic; 

begin  

INTERVAL_0 <= 10;
INTERVAL_1 <= 15;

resetn <= not rst;

GND <= '0';
VCC <= '1';

gera_rst:process 
begin 
	rst <= '1';
	wait for 15 ns;
	rst <= '0';
	wait;
end process;

gera_clk:process 
begin 
	clock <= '0';
	wait for 10 ns;
	clock <= '1';
	wait for 10 ns;
end process;

DUT:top_BRAM
    port map
	   (resetn       => resetn      ,
  	    clock       => clock      ,
        READDATA  => READDATA , 
        WRITEDATA => WRITEDATA, 
        write_en     => WR_EN    , 
        read_en     => RD_EN    , 
        chipselect        => CS       , 
        ADD       => ADD       
		  );

gera_data_we_rd_add_cs : process (RST, clock)
begin
	If RST = '1' then
--	   READDATA   <= (others => '0');
--	   WRITEDATA  <= (others => '0');
--	   WR_EN      <= '0';
--	   RD_EN      <= '0'; 
--	   CS         <= '0';
--	   ADD        <= (others => '0');
       counter    <= 0;		
	   state      <= idle_st0;
	Elsif clock' event and clock = '1' then
		counter <= counter + 1;
		case state is
			when idle_st0 => 
				if counter = INTERVAL_0 then 
					state <= write_st0;
					counter <= 0;
				end if;	
			when write_st0 => 
				state <= write_st1;
				counter <= 0;
			when write_st1 => 
				state <= write_st2;
				counter <= 0;
			when write_st2 => 
				state <= idle_st1;
				counter <= 0;
			when idle_st1 => 
				if counter = INTERVAL_1 then 
					state <= read_st0;
					counter <= 0;
				end if;	
			when read_st0 => 
				state <= read_st1;
				counter <= 0;
			when read_st1 => 
				--if counter = INTERVAL_1 then 
					state <= read_st2;
					counter <= 0;
				--end if;	
				address  <= address + 1;
			when read_st2 => 
				--if counter = INTERVAL_1 then 
					state <= read_st3;
					counter <= 0;			
			when read_st3 => 
				--if counter = INTERVAL_1 then 
					state <= idle_st0;
					counter <= 0;
        end case;    	
	end if;

End process;

process(state)
begin
		case state is
			when idle_st0 => 
--				READDATA   <= (others => '0');
				WRITEDATA  <= x"00000000";
				WR_EN      <= '0';
				RD_EN      <= '0'; 
				CS         <= '0';
				ADD        <= (others => '0');
			when write_st0 =>     -- endereço BRAM
				WRITEDATA  <= x"00000020";
				WR_EN      <= '1';
				RD_EN      <= '0'; 
				CS         <= '1';
				ADD        <= "00"; -- std_logic_vector(to_unsigned(address, ADD'length));
			when write_st1 =>      -- dado BRAM
				WRITEDATA  <= x"12345620";
				WR_EN      <= '1';
				RD_EN      <= '0'; 
				CS         <= '1';
				ADD        <= "01"; --std_logic_vector(to_unsigned(address, ADD'length));
			when write_st2 =>      -- controle BRAM
				WRITEDATA  <= x"00000001";
				WR_EN      <= '1';
				RD_EN      <= '0'; 
				CS         <= '1';
				ADD        <= "10"; --std_logic_vector(to_unsigned(address, ADD'length));
			when idle_st1 => 
				WRITEDATA  <= (others => '0');
				WR_EN      <= '0';
				RD_EN      <= '0'; 
				CS         <= '0';
				ADD        <= (others => '0');
			when read_st0 => 
				WRITEDATA  <= x"00000000";
				WR_EN      <= '0';
				RD_EN      <= '1'; 
				CS         <= '1';
				ADD        <= "00"; --std_logic_vector(to_unsigned(address, ADD'length));
			when read_st1 => 
				WRITEDATA  <= x"00000000";
				WR_EN      <= '0';
				RD_EN      <= '1'; 
				CS         <= '1';
				ADD        <= "01"; --std_logic_vector(to_unsigned(address, ADD'length));
			when read_st2 => 
				WRITEDATA  <= x"00000000";
				WR_EN      <= '0';
				RD_EN      <= '1'; 
				CS         <= '1';
				ADD        <= "10"; --std_logic_vector(to_unsigned(address, ADD'length));
			when read_st3 => 
				WRITEDATA  <= x"00000000";
				WR_EN      <= '0';
				RD_EN      <= '1'; 
				CS         <= '1';
				ADD        <= "11"; --std_logic_vector(to_unsigned(address, ADD'length));

        end case;    	
end process;	

End architecture;

