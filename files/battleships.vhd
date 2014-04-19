library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.battleships_const.all;
 
entity battleships is 
 port( 
 --Inputs 
			data_in 									: in std_logic;
			keyboard_clk, keyboard_data, clk : in std_logic; 
 
 --Outputs 
			LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED,light	: OUT	STD_LOGIC;
			LCD_RW														: BUFFER STD_LOGIC;
			DATA_BUS														: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			VGA_RED, VGA_GREEN, VGA_BLUE 							: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK			: out std_logic;
			data_out 													: out std_logic;
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

signal myVGA			: VGA_vector;
signal oppVGA			: VGA_vector;
signal phase			: integer;
signal ship1_x_vect 	: std_logic_vector(3 downto 0);
signal ship1_y_vect 	: std_logic_vector(3 downto 0);


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
signal init,a,b,c,d,e,waiting,res_lcd : std_logic;

signal T1_reverse,T2_reverse 			: std_logic;

signal go 					: std_logic;

begin 

LCDscreen : de2lcd port map (tie, waiting, res_lcd, clk, game_over, winner, LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED,light, LCD_RW,DATA_BUS);
keyboard_0 : ps2 port map (keyboard_clk, keyboard_data, clk, '1', scan_code, scan_readyo, hist3, hist2, hist1, hist0, LEDs);
vga_0 : VGA_top_level port map (clk, reset, VGA_RED, VGA_GREEN, VGA_BLUE, HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK, myVGA, oppVGA);
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
	 init <= '0';
	 waiting <= '1';
	end if;
  
 	if (hist1/=X"F0") then
		go <= '1';
	
	elsif (hist1=X"F0" and go='1') then
    		go <= '0';
	 CASE hist0 IS

			WHEN X"69" =>					--LEFT (Numpad 1)
				   left_press <= '1';
			WHEN X"7A" =>					--RIGHT (Numpad 3)
			      right_press <= '1';
			WHEN X"72" =>					--DOWN (Numpad 2)
			      T2_speed <= 4;
			WHEN X"73" =>					--UP (Numpad 5)
					T2_reverse <= '1';
			WHEN X"29" =>  				--T1 shoots (space)
			      command_T1_shoots <= '1';
			WHEN X"5A" =>  				--ENTER
			      enter_press <= '1';
			WHEN X"66" => 					--reset button (backspace)
					init <= '0';
					res_lcd <= '0';
			WHEN others =>
					null;
	   end CASE;
		
		
	end if;
	
	if (done='1') then
		init <= '1';
		T1_reverse <= '0';
	end if;
	
	if (a='1') then			--T1_reverse acknowledged?
		left_press <= '0';
	end if;
	
	if (b='1') then			--T2_reverse acknowledged?
		right_press <= '0';
	end if;
	
	if (c='1') then			--T2 shot acknowledged?
		up_press <= '0';
	end if;
	
	if (d='1') then			--T1 shot acknowledged?
		down_press <= '0';
	end if;
	
	if (e='1') then			--T1 shot acknowledged?
		enter_press <= '0';
	end if;
end if;
end process key_press;


game: process(reset,clk,done) is
  variable ship1_x : natural;
  variable ship1_y : natural;
  variable S1_placed : std_logic;
  
  begin
	done <= '0';
	
  if (init='0') then
		myVGA 	<= (others => WATER);
		oppVGA 	<= (others => WATER);
		ship1_x 	:= 0;
		ship1_y 	:= 0;
		ship1_or <= 1;
		done 		<= '1';
		phase 	<= PLACE_S1;
	  
    --Phases-----------------------------------------------------------    
  elsif (rising_edge(clk)) then
		a	<='0';
		b	<='0';
		c  <='0';
		d  <='0';
		e	<='0';
		
		
		
		
		
		
		case phase is
			WHEN PLACE_S1 =>
				if (left_press='1') then
					a<='1';
					if (ship1_y>0)
						ship1_y := ship1_y - 1;
					end if;
				end if;				

				if (right_press='1') then
					b<='1';
					if (ship1_y<9) then
						ship1_y := ship1_y + 1;
					end if;
				end if;	

				if (up_press='1') then
					c<='1';
					if (ship1_x>0) then
						ship1_x := ship1_x - 1;
					end if;
				end if;	

				if (down_press='1') then
					d<='1';
					if (ship1_x<9) then
						ship1_x := ship1_x + 1;
					end if;
				end if;					
				
				if (ship1_or=1) then
					myVGA(ship1_x + 10*ship1_y) <= SHIP;
					myVGA(ship1_x + 20*ship1_y) <= SHIP;
				else
					myVGA(ship1_x + 10*ship1_y) <= SHIP;
					myVGA(ship1_x + 1 + 10*ship1_y) <= SHIP;		
				end if;				
				

				if (enter_press='1') then
					e			<= '1';
					data_out	<= '0';
					state		<= PRE_COMM_1;
					--S1_placed:= '1';
				end if;
				
				--if (data_in='0' & S1_placed='1') then
					
				--end if;
			
			WHEN PRE_COMM_1 =>
				if (data_in='0') then
					data_out <= --useful info
					state <= COMM_1;
				end if;
				
			
			WHEN COMM_1 =>
				
				
				
			
			WHEN others =>
				null;
	   end CASE;
	 

      if (T1_reverse='1') then
			a<='1';--done <= '1';
			T1_direction := not T1_direction;
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
      
    --Tank Explosion Test-----------------------------------------------------------
    
      if((game_over='0') and (T2_created='1') and (T2_bullet_x >= T1_pos_x) and (T2_bullet_x < T1_pos_x+T_size)) then   --if in x-range
        if ((T2_bullet_y >= T1_pos_y) and (T2_bullet_y < T1_pos_y+T_size)) then
          T2_created<='0';
			 T2_score_int := T2_score_int + 1;
			 T2_score <= std_logic_vector(to_signed(T2_score_int,4));
			 T1_is_hit <= '1';
        end if;
      end if;

			 
  end if; -- end rising edge
	--put variables in signals
	 ship1_x_vector <= std_logic_vector(to_unsigned(ship1_x,4));
	 ship1_y_vector <= std_logic_vector(to_unsigned(ship1_y,4));
-------    
end process game;



end architecture behavioral;