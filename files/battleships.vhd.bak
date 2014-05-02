library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.battleships_const.all;
 
entity battleships is 
 port( 
 --Inputs 
 keyboard_clk, keyboard_data, clk : in std_logic; 
 
 --Outputs 
			LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED,light	: OUT	STD_LOGIC;
			LCD_RW														: BUFFER STD_LOGIC;
			DATA_BUS														: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			VGA_RED, VGA_GREEN, VGA_BLUE 							: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK			: out std_logic;
			led_seq														: out std_logic_vector (55 downto 0)
 ); 
end entity battleships; 

architecture behavioral of battleships is 

component de2lcd IS
	PORT(tie, waiting, reset, clk_50Mhz, game_over, winner					: IN	STD_LOGIC;
		 LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED,light	: OUT	STD_LOGIC;
		 LCD_RW															: BUFFER STD_LOGIC;
		 DATA_BUS														: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
END component;

component VGA_top_level is
	port(
	    T1_position_x, T1_position_y, T1_bullet_x, T1_bullet_y, T2_position_x, T2_position_y, T2_bullet_x, T2_bullet_y : in integer;
			CLOCK_50 										: in std_logic;
			RESET_N											: in std_logic;
			game_over, winner, tie :in std_logic;
	
			--VGA 
			VGA_RED, VGA_GREEN, VGA_BLUE 					: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK		: out std_logic

		);
end component;

component leddcd is
	port(
		 data_in : in std_logic_vector(3 downto 0);
		 segments_out : out std_logic_vector(6 downto 0)
		);
end component leddcd;	

component ps2 is 
	port( 	keyboard_clk, keyboard_data, clock_50MHz ,
			reset : in std_logic;
			scan_code : out std_logic_vector( 7 downto 0 );
			scan_readyo : out std_logic;
			hist3 : out std_logic_vector(7 downto 0);
			hist2 : out std_logic_vector(7 downto 0);
			hist1 : out std_logic_vector(7 downto 0);
			hist0 : out std_logic_vector(7 downto 0);
			led_seq: out std_logic_vector (55 downto 0)
		);  
end component;

component slow_clock IS
	PORT(clock_50MHz, reset : IN STD_LOGIC;
			clock : OUT STD_LOGIC);
END component slow_clock;

signal slow_clk: std_logic;
signal scan_code : std_logic_vector(7 downto 0);
signal scan_readyo : std_logic;
signal hist3, hist2, hist1, hist0 : std_logic_vector(7 downto 0);
signal T1_score		 : std_logic_vector(3 downto 0);
signal T2_score		 : std_logic_vector(3 downto 0);
signal T1_position_x  : integer;
signal T1_position_y  : integer;
signal T2_position_x  : integer;
signal T2_position_y  : integer;
signal T1_speed       : integer;
signal T2_speed       : integer;
signal winner         : std_logic;
signal game_over      : std_logic;
signal done           : std_logic;
signal LEDs				 : std_logic_vector (55 downto 0);
signal temp_1 			 : std_logic_vector (5 downto 0);
signal activate 		 : std_logic;
signal reset, tie		 : std_logic;
signal command_T1_shoots, T1_created : std_logic;
signal command_T2_shoots,T2_created  : std_logic;
signal T1_bullet_exists, T2_is_hit 					: std_logic;
signal T2_bullet_exists,T1_is_hit 					: std_logic;
signal T1_bullet_x 	 : integer;
signal T1_bullet_y 	 : integer;
signal T2_bullet_x 	 : integer;
signal T2_bullet_y 	 : integer;
signal init,a,b,c,d,waiting,res_lcd : std_logic;

signal T1_reverse,T2_reverse 			: std_logic;

signal go 					: std_logic;

begin 

LCDscreen : de2lcd port map (tie, waiting, res_lcd, clk, game_over, winner, LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED,light, LCD_RW,DATA_BUS);
keyboard_0 : ps2 port map (keyboard_clk, keyboard_data, clk, '1', scan_code, scan_readyo, hist3, hist2, hist1, hist0, LEDs);
vga_0 : VGA_top_level port map (T1_position_x, T1_position_y, T1_bullet_x, T1_bullet_y, T2_position_x, T2_position_y, T2_bullet_x, T2_bullet_y, clk, reset, game_over, winner, tie, VGA_RED, VGA_GREEN, VGA_BLUE, HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK);
slow_clock_map: slow_clock port map(clock_50MHz=> clk, reset=>init, clock=>slow_clk);
conv0 : leddcd port map (T1_score,led_seq(48 downto 42));
conv1 : leddcd port map (T2_score,led_seq(34 downto 28));
conv2 : leddcd port map ("0000",led_seq(55 downto 49));
conv3 : leddcd port map ("0000",led_seq(41 downto 35));
led_seq(27 downto 0) <= LEDs(27 downto 0);

key_press : process(hist0,clk,done,hist1) is --determine if there is keypress and what should happen
begin
if (rising_edge(clk)) then
	res_lcd <= '1';
	init <= '1';
	waiting <= '0';
	
	if (hist1=X"00") then
	 T1_speed <= 2;
	 T2_speed <= 2;
	 init <= '0';
	 waiting <= '1';
	 command_T2_shoots <= '0';
	 command_T1_shoots <= '0';
	end if;
  
 	if (hist1/=X"F0") then
		go <= '1';
	
	elsif (hist1=X"F0" and go='1') then
    		go <= '0';
	 CASE hist0 IS

			WHEN X"16" =>					--T1 low speed (key 1)
				   T1_speed <= 2;
			WHEN X"1E" =>					--T1 middle speed (key 2)
			      T1_speed <= 3;
			WHEN X"26" =>					--T1 top speed (key 3)
			      T1_speed <= 4;
			WHEN X"0D" =>					--T1 reverse (tab)
			      T1_reverse <= '1';
			WHEN X"69" =>					--T2 low speed (Numpad 1)
				    T2_speed <= 2;
			WHEN X"72" =>					--T2 middle speed (Numpad 2)
			      T2_speed <= 3;
			WHEN X"7A" =>					--T2 top speed (Numpad 3)
			      T2_speed <= 4;
			WHEN X"4A" =>					--T2 reverses (question-mark)
					T2_reverse <= '1';
			WHEN X"29" =>  				--T1 shoots (space)
			      command_T1_shoots <= '1';
			WHEN X"59" =>  				--T2 shoots (r shift)
			      command_T2_shoots <= '1';
			WHEN X"66" => 					--reset button (backspace)
					init <= '0';
					res_lcd <= '0';
					T1_speed <= 2;
					T2_speed <= 2;
			WHEN others =>
					null;
	   end CASE;
		
		
	end if;
	
	if (done='1') then
		init <= '1';
		T1_reverse <= '0';
	end if;
	
	if (a='1') then			--T1_reverse acknowledged?
		T1_reverse <= '0';
	end if;
	
	if (b='1') then			--T2_reverse acknowledged?
		T2_reverse <= '0';
	end if;
	
	if (c='1') then			--T2 shot acknowledged?
		command_T2_shoots <= '0';
	end if;
	
	if (d='1') then			--T1 shot acknowledged?
		command_T1_shoots <= '0';
	end if;
end if;
end process key_press;


game: process(reset,slow_clk,done) is
  variable T1_direction : std_logic;
  variable T2_direction : std_logic;
  variable T1_pos_x : integer;
  variable T1_pos_y : integer;
  variable T2_pos_x : integer;
  variable T2_pos_y : integer;
  variable T1_score_int : integer;
  variable T2_score_int : integer;
  begin
	done <= '0';
	
  if (init='0') then
     
				done <= '1';
				T2_score <= "0000";
				T1_score <= "0000";
				T1_is_hit <= '0';
				T1_score_int := 0;
				T2_score_int := 0;
				T2_is_hit <= '0';
				T2_created<='0';
				T1_created<='0';
	         winner <= '0';
				game_over <= '0'; tie <= '0';
            T1_direction   := '1';              T2_direction  := '0';
            T1_pos_x  := 320-T_SIZE/2;     	     T2_pos_x := 320-T_SIZE/2;
            T1_pos_y  := 480-T_SIZE;              T2_pos_y := 0;
            T1_bullet_exists <= '0';            T2_bullet_exists <= '0';
            T1_bullet_x    <= 318;              T2_bullet_x   <= 318;
            T1_bullet_y    <= 480-T_SIZE-C_LENGTH+5;   T2_bullet_y   <= T_SIZE+C_LENGTH-5;
	  
	  
    --Control T1-----------------------------------------------------------    
    elsif (rising_edge(slow_clk)) then
	 --T1_pos_x := T1_position_x;
	 --T1_pox_y := T1_position_y;
		a	<='0';
		b	<='0';
		c  <='0';
		d  <='0';
      if (T1_reverse='1') then
			a<='1';--done <= '1';
			T1_direction := not T1_direction;
		end if;
		
		
		if (T2_reverse='1') then
			b<='1';
			T2_direction := not T2_direction;
		end if;
		
		if (T1_direction='1') then  --right
        if (T1_pos_x > 639-T_SIZE-T1_speed) then --if going to go past end of screen, invert direction
          T1_direction := '0';
          T1_pos_x := 639-T_SIZE;
        else
          T1_pos_x  := T1_pos_x + T1_speed;
          T1_direction := '1';
        end if;
        
      else --going left
        if (T1_pos_x < T1_speed) then --if going to go past end of screen, invert direction
          T1_direction := '1';
          T1_pos_x := 0;
        else
          T1_pos_x  := T1_pos_x - T1_speed;
          T1_direction := '0';
        end if;
      end if;
    
    --Control T2-----------------------------------------------------------
 

	 if (T2_direction='1') then  --right
        if (T2_pos_x > 639-T_SIZE-T2_speed) then --if going to go past end of screen, invert direction
          T2_direction := '0';
          T2_pos_x := 639-T_SIZE;
        else
          T2_pos_x  := T2_pos_x + T2_speed;
          T2_direction := '1';
        end if;
        
      else --going left
        if (T2_pos_x < T2_speed) then --if going to go past end of screen, invert direction
          T2_direction := '1';
          T2_pos_x := 0;
        else
          T2_pos_x  := T2_pos_x - T2_speed;
          T2_direction := '0';
        end if;
      end if;
    
    --Control T1 Bullet-----------------------------------------------------------      
            
      if(T1_bullet_exists = '1') then  -- if the bullet exists
        if((T1_bullet_y<BULLET_TRAVEL) or (T2_is_hit='1')) then
          T1_bullet_exists <= '0';
			 T2_is_hit <= '0';
          T1_bullet_x <= T1_pos_x+T_SIZE/2-3;   --re-hide/delete bullet
          T1_bullet_y <= 480-T_SIZE-C_LENGTH+5;
			 d <= '1';
        else
          T1_bullet_y <= T1_bullet_y - BULLET_TRAVEL;
			 d<= '1';
        end if; 
      elsif(command_T1_shoots = '0' and T1_bullet_exists = '0') then --if no command to shoot and bullet does not exist, do not show bullet
        T1_bullet_x <= T1_pos_x+T_SIZE/2-3; ---might need to get updated to get new position
      end if;
      
      if (command_T1_shoots = '1' and T1_bullet_exists='0') then  --if the bullet does not exist and there is a command to shoot
            T1_bullet_exists <= '1';
				T1_created<='1';
            d <= '1';
				T1_bullet_x <= T1_pos_x+T_SIZE/2-3;
            T1_bullet_y <= T1_bullet_y - BULLET_TRAVEL;
      end if;
      
    --Control T2 Bullet-----------------------------------------------------------  

      if(T2_bullet_exists = '1') then  -- if the bullet exists
		  if((T2_bullet_y>479-BULLET_TRAVEL) or (T1_is_hit='1')) then
			 T2_bullet_exists <= '0';
          T2_bullet_x <= T2_pos_x+T_SIZE/2-3;   --Do not display bullet
          T2_bullet_y <= T_SIZE+C_LENGTH-5;
			 T1_is_hit <= '0';
			 c <= '1';
		  else
          T2_bullet_y <= T2_bullet_y + BULLET_TRAVEL;
			 c <= '1';
        end if; 
      elsif(command_T2_shoots = '0' and T2_bullet_exists = '0') then --if no command to shoot and bullet does not exist, hide bullet in tank
        T2_bullet_x <= T2_pos_x+T_SIZE/2-3; ---might need to get updated to get new position
      end if;
      
      if (command_T2_shoots = '1' and T2_bullet_exists='0') then  --if the bullet does not exist and there is a command to shoot
            c <= '1';
				T2_bullet_exists <= '1';
				T2_created <= '1';
            T2_bullet_x <= T2_pos_x+T_SIZE/2-3;
            T2_bullet_y <= T2_bullet_y + BULLET_TRAVEL;
      end if;

    --Tank Explosion Test-----------------------------------------------------------
    
      if((game_over='0') and (T2_created='1') and (T2_bullet_x >= T1_pos_x) and (T2_bullet_x < T1_pos_x+T_size)) then   --if in x-range
        if ((T2_bullet_y >= T1_pos_y) and (T2_bullet_y < T1_pos_y+T_size)) then
          T2_created<='0';
			 T2_score_int := T2_score_int + 1;
			 T2_score <= std_logic_vector(to_signed(T2_score_int,4));
			 T1_is_hit <= '1';
        end if;
      end if;

      if((game_over='0') and (T1_created='1') and (T1_bullet_x >= T2_pos_x) and (T1_bullet_x < T2_pos_x+T_size)) then   --if in x-range
        if ((T1_bullet_y >= T2_pos_y) and (T1_bullet_y < T2_pos_y+T_size)) then
			 T1_created <= '0';
          T1_score_int := T1_score_int + 1;
			 T1_score <= std_logic_vector(to_signed(T1_score_int,4));
			 T2_is_hit<='1';
        end if;
     end if;  

	  if (T1_score_int = 3) then
		  game_over <= '1';
		  winner    <= '0';
	  end if;	
			
     if (T2_score_int = 3) then
		  game_over <= '1';
		  winner    <= '1';
	  end if;
	  
	  if ((T2_score_int = 3) and (T1_score_int = 3)) then  --in the very rare case that it happens to be a tie.
		  tie <= '1';
	  end if;
			 
  end if; -- end rising edge
	--put variables in signals
    T1_position_x <= T1_pos_x;
	 T1_position_y <= T1_pos_y;
	 T2_position_x <= T2_pos_x;
	 T2_position_y <= T2_pos_y;
-------    
end process game;



end architecture behavioral;