LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY top_avalon IS
PORT ( clock, resetn : IN  STD_LOGIC;
	   chipselect 	 : IN  STD_LOGIC;
	   writedata  	 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
       write_en      : IN  STD_LOGIC;
       readdata   	 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   	   add           : IN  STD_LOGIC_VECTOR( 1 DOWNTO 0);
       read_en       : IN  STD_LOGIC );
END top_avalon;

ARCHITECTURE Y OF top_avalon IS

COMPONENT reg32
PORT ( 		clock, resetn : IN STD_LOGIC;
				WE : IN STD_LOGIC;
				D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
				Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
END COMPONENT;

component cont8 is
   PORT(RST  : in std_logic; --Sw3
        CLK  : in std_logic; -- Pin N2
        Q    : out std_logic_vector(7 downto 0);  -- Q    : out unsigned(3 downto 0); --Q(3) -> LEDR0 AE23 Q(2) -> LEDR1 AF23
        EN   : in std_logic; --sw2
        CLR  : in std_logic; -- Sw0 Pin N25
        LD   : in std_logic; --sw1
        LOAD : in std_logic_vector (7 downto 0)); -- LOAD : in unsigned (3 downto 0);
		  
end component;

signal write_enable0, write_enable1 : std_logic;
-- signal read_enable_reg_2, read_enable_reg_3 : std_logic;
signal r32_o_0, r32_o_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);--, r32_2_rd, r32_2_inp, r32_3_inp, r32_3_rd, r32_3_rd_aux 
signal Q_aux, LOAD : STD_LOGIC_VECTOR(7 DOWNTO 0); -- valor_contagem
signal CLR, EN, LD, RST : std_logic;
signal read_enable_reg_0 : std_logic;
signal read_enable_reg_1 : std_logic;
-- signal qualquer, flag : std_logic;
-- signal conta_qualquer : integer;
-- -------------  delay nas linhas de write enable -------- 
-- signal write_enable0_previo, write_enable1_previo : std_logic;

BEGIN

RST <= NOT resetn;

--   regs de ESCRITA 
--   reg 0: CLR, ENABLE, LD
--   33222222222211111111110000000000   
--   10987654321098765432109876543210
--   |                             ||                                
--   |                             |\---LD
--   |                             \----EN
--   |
--   |
--   |- SELF CLR
--								 
--   reg 1: LOAD (8 bits)
--   332222222222111111111100 00000000   
--   109876543210987654321098 76543210
--                            -------- LOAD



-------------  delay nas linhas de write enable -------- 
write_enable0 <= write_en and chipselect  and (not add(1)) and (not add(0));
write_enable1 <= write_en and chipselect  and (not add(1)) and      add(0) ;
--write_enable0_previo <= write_en and chipselect  and (not add);
--write_enable1_previo <= write_en and chipselect  and      add ;


    cont8_0 : cont8
    port map(
        RST   => RST   ,        
        CLK   => clock ,
        Q     => Q_aux ,
        EN    => EN    ,
        CLR   => CLR   ,
        LD    => LD    ,
        LOAD  => LOAD    
    );

	r32_0 : reg32
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE      => write_enable0,
		D 		=> writedata,
		Q       => r32_o_0   --readdata_internal
);
CLR <= r32_o_0 (31);
EN  <= r32_o_0 (1);
LD  <= r32_o_0 (0);

LOAD  <= r32_o_1 (7 downto 0);


	r32_1 : reg32
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE      => write_enable1,
		D 		=> writedata,
		Q 		=> r32_o_1   --readdata_internal
);
--LOAD <= r32_o_1 (7 downto 0);

--   reg 2: leitura do valor de contagem, valor dos sinais LOAD, LD, CLR, ENABLE, 
--   reg 3: armazena as contagens do contador sempre que o CLR for acionado

	-- r32_2 : reg32  -- leitura
	-- port map (
		-- clock 	=> clock,
		-- resetn 	=> resetn,
		-- WE       => '1', --write_enable0,
		-- D 		=> r32_2_inp,
		-- Q 		=> r32_2_rd   --readdata_internal
-- );
--r32_2_inp <= valor_contagem & LOAD & "0000000000000" & LD & CLR & EN;
--   33222222222211111111110000000000   
--   10987654321098765432109876543210
--   |------||                    |||
--   contagem|------|             || - CLR
--             LOAD               | -- ENABLE 								 
--                                 --- LD


	-- r32_3 : reg32
	-- port map (
		-- clock 	=> clock,
		-- resetn 	=> resetn,
      -- WE       => CLR_oneshot,
		-- D 		   => r32_3_inp,
		-- Q 		   => r32_3_rd   --readdata_internal
-- );
-- r32_3_inp <= x"00000" & "000" & qualquer & valor_contagem;

--	cnt8 : cont8
--	port map (
--		RST  => RST,
--      CLK  => clock,
--      Q    => valor_contagem,
--      EN   => EN,
--      CLR  => CLR,
--      LD   => LD,
--      LOAD => LOAD);
 
-- process(RST, clock)

-- begin
 	-- If RST = '1' then
	   -- --CLR_oneshot <= '0';
		-- qualquer <= '0';
		-- conta_qualquer <= 0;
		-- flag <= '0';
	-- Elsif clock' event and clock = '1' then
		-- If CLR = '1'  then
			-- if flag = '0' then
			-- --	CLR_oneshot <= '1';
				-- flag <= '1';
			-- --else
			-- --	flag <= '0';
			-- end if;
		-- Else
		   -- flag <= '0';
		-- end if;
		-- --IF CLR_oneshot = '1' then
		-- --   CLR_oneshot <= '0';
		-- --END IF;

		-- if conta_qualquer < 16 then
			-- conta_qualquer <= conta_qualquer + 1;
		-- else 
			-- conta_qualquer <= 0;
			-- qualquer <= NOT qualquer;
		-- end if;
		
		-- -------------  delay nas linhas de write enable -------- 
      -- write_enable0 <= write_enable0_previo;
      -- write_enable1 <= write_enable1_previo ;

--   end if;
--end process;		

--CLR_oneshot <= CLR and (not flag);

-- -- sinais de habilitaÃƒÂ§ÃƒÂ£o de leitura
-- read_enable_reg_2    <= read_en and chipselect and (not add);
-- read_enable_reg_3    <= read_en and chipselect and      add ;
 
-- r32_3_rd_aux  <= qualquer & r32_3_rd(30 downto 0); 
  
-- readdata <= r32_2_rd     when read_enable_reg_2    = '1' else 
            -- r32_3_rd_aux when read_enable_reg_3    = '1' else
		                                   -- (others => 'Z');
readdata <= r32_o_0     when read_enable_reg_0    = '1' else 
            r32_o_1     when read_enable_reg_1    = '1' else
		                                    (others => 'Z');
read_enable_reg_0    <= read_en and chipselect and (not add(1)) and (not add(0));
read_enable_reg_1    <= read_en and chipselect and (not add(1)) and      add(0) ;

END Y;


  
--reg_n_cont     <= reg32_0(0);
--read_enable1    <= read_en and chipselect and      add  and (not reg_n_cont);
--read_enable_cnt <= read_en and chipselect and                    reg_n_cont ;


-- process(clock)
	-- begin
	
	-- if rising_edge(clock) then
		-- if write_enable0 = '1' then
			-- writedata_internal <= writedata;
		-- --elsif read_enable = '1' then
	   -- --readdata <= SAIDA;
						
		-- end if;
	
	-- end if;
		
	-- end process;





--readdata <= x"12345678" when read_enable = '1' else (others => '0');
--readdata1 <= x"AAAA5555" when read_enable = '1' else (others => '0');
--readdata_internal <= x"12345678" when add2 = '0' else x"AAAA5555"; 

--readdata <= x"12345678" when read_enable = '1' else (others => '0');



