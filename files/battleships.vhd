library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.battleships_const.all;
 
entity battleships is 
 port( 
 --Inputs 
			data_in, AUD_ADCDAT, switch									: in std_logic;
			keyboard_clk, keyboard_data, clk, CLOCK_27 : in std_logic;
			AUD_BCLK, AUD_ADCLRCK, AUD_DACLRCK, I2C_SDAT : inout std_logic;
			KEY : in std_logic_vector(3 downto 0);
			AUD_XCK, AUD_DACDAT, I2C_SCLK : out std_logic;
 
 --Outputs 
			VGA_RED, VGA_GREEN, VGA_BLUE 							: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK			: out std_logic;
			data_out 													: out std_logic
 ); 
end entity battleships; 

architecture behavioral of battleships is 

component DE2_Audio_Example is
	port (
			CLOCK_50, CLOCK_27 : in std_logic;
			KEY : in std_logic_vector(3 downto 0);
			AUD_ADCDAT : in std_logic;
			AUD_BCLK, AUD_ADCLRCK, AUD_DACLRCK, I2C_SDAT : inout std_logic;
			AUD_XCK, AUD_DACDAT, I2C_SCLK : out std_logic;
			SW : in std_logic;
			select_s : in std_logic
	);
end component;

component VGA_top_level is
	port(
			CLOCK_50, game_over, winner, tie						: in std_logic;
			--VGA 
			VGA_RED, VGA_GREEN, VGA_BLUE 							: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK			: out std_logic;
			myVGA															: in VGA_vector;
			oppVGA														: in VGA_vector;
			placing_on													: in std_logic;
			placeShip_num												: in std_logic_vector(2 downto 0);
			legend_on													: in std_logic
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
			--scan_code : out std_logic_vector( 7 downto 0 );
			--scan_readyo : out std_logic;
			--hist3 : out std_logic_vector(7 downto 0);
			--hist2 : out std_logic_vector(7 downto 0);
			hist1 : out std_logic_vector(7 downto 0);
			hist0 : out std_logic_vector(7 downto 0);
			led_seq: out std_logic_vector (55 downto 0)
		);  
end component;

signal myVGA			: VGA_vector;
signal oppVGA			: VGA_vector;
signal counter			: integer;
signal left_press, up_press, down_press, right_press, flip, enter_press : std_logic;
signal phase, state	: integer;
signal ship1_x_vector, cursor_x_vector: std_logic_vector(3 downto 0);
signal ship2_x_vector, ship2_y_vector: std_logic_vector(3 downto 0);
signal ship3_x_vector, ship3_y_vector: std_logic_vector(3 downto 0);
signal ship4_x_vector, ship4_y_vector: std_logic_vector(3 downto 0);
signal ship5_x_vector, ship5_y_vector: std_logic_vector(3 downto 0);
signal ship1_y_vector, cursor_y_vector: std_logic_vector(3 downto 0);
signal ship1_or, ship2_or, ship3_or, ship4_or, ship5_or		: std_logic;
signal opp_ship1_or, opp_ship2_or, opp_ship3_or, opp_ship4_or, opp_ship5_or	: std_logic;
signal opp_ship1_x_vector, opp_cursor_x_vector: std_logic_vector(3 downto 0);
signal opp_ship1_y_vector, opp_cursor_y_vector: std_logic_vector(3 downto 0);
signal opp_ship2_x_vector, opp_ship2_y_vector: std_logic_vector(3 downto 0);
signal opp_ship3_x_vector, opp_ship3_y_vector: std_logic_vector(3 downto 0);
signal opp_ship4_x_vector, opp_ship4_y_vector: std_logic_vector(3 downto 0);
signal opp_ship5_x_vector, opp_ship5_y_vector: std_logic_vector(3 downto 0);
signal saved1			: integer;
signal myHits, oppHits : integer;

--signal scan_code : std_logic_vector(7 downto 0);
--signal scan_readyo : std_logic;
--signal hist3, hist2 : std_logic_vector(7 downto 0);
signal hist1, hist0 : std_logic_vector(7 downto 0);
signal winner         : std_logic;
signal game_over      : std_logic;
signal done           : std_logic;
signal LEDs				 : std_logic_vector (55 downto 0);
signal tie, select_s	 : std_logic;
signal init,waiting : std_logic; --,a,b,c,d,e,f
signal sound_explosion : std_logic;

signal go, S2_overlap, S3_overlap, S4_overlap, S5_overlap	: std_logic;

signal placing_on : std_logic;
signal placeShip_num : std_logic_vector(2 downto 0);
signal legend_on : std_logic;

begin 

Sounds : DE2_Audio_Example port map (CLOCK_50 => clk, CLOCK_27 => CLOCK_27, KEY => KEY, AUD_ADCDAT => AUD_ADCDAT, AUD_BCLK => AUD_BCLK, AUD_ADCLRCK => AUD_ADCLRCK, AUD_DACLRCK => AUD_DACLRCK, I2C_SDAT => I2C_SDAT, AUD_XCK => AUD_XCK, AUD_DACDAT => AUD_DACDAT, I2C_SCLK => I2C_SCLK, SW => sound_explosion, select_s => select_s);
keyboard_0 : ps2 port map (keyboard_clk, keyboard_data, clk, '1', hist1, hist0, LEDs);
vga_0 : VGA_top_level port map (clk, game_over, winner, tie, VGA_RED, VGA_GREEN, VGA_BLUE, HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK, myVGA, oppVGA, placing_on, placeShip_num, legend_on);

key_press : process(hist0,clk,done,hist1) is --determine if there is keypress and what should happen
begin
if (rising_edge(clk)) then
	init <= '1';
	waiting <= '0';
	
	if (hist1=X"00") then
	 init <= '0';
	 enter_press <= '0';
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
			      down_press <='1';
			WHEN X"73" =>					--UP (Numpad 5)
					up_press <= '1';
			WHEN X"2D" =>  				--flip orientation
			      flip <= '1';
			WHEN X"5A" =>  				--ENTER
			      enter_press <= '1';
			WHEN X"66" => 					--reset button (backspace)
					init <= '0';
			WHEN others =>
					null;
	   end CASE;
		
		
	end if;
	
	if (done='1') then
		init <= '1';
	end if;
	
	if (left_press='1') then			--left acknowledged?
		left_press <= '0';
	end if;
	
	if (right_press='1') then			--right acknowledged?
		right_press <= '0';
	end if;
	
	if (up_press='1') then			--up acknowledged?
		up_press <= '0';
	end if;
	
	if (down_press='1') then			--down acknowledged?
		down_press <= '0';
	end if;
	
	if (enter_press='1') then			--enter acknowledged?
		enter_press <= '0';
	end if;
	
	if (flip='1') then			--flip acknowledged?
		flip <= '0';
	end if;
end if;
end process key_press;


game: process(init,data_in,ship1_or,clk,done) is
  variable ship1_x, ship2_x, ship3_x, ship4_x, ship5_x : natural;
  variable ship1_y, ship2_y, ship3_y, ship4_y, ship5_y : natural;
  variable opp_ship1_x, opp_cursor_x : natural;
  variable opp_ship1_y, opp_cursor_y : natural;
  variable opp_ship2_x, opp_ship2_y : natural;
  variable opp_ship3_x, opp_ship3_y : natural;  
  variable opp_ship4_x, opp_ship4_y : natural;
  variable opp_ship5_x, opp_ship5_y : natural;
  --variable S1_placed : std_logic;
  --variable S2_placed : std_logic;
  variable cursor_x, cursor_y, cursor_index : natural;
  variable S1_index_1, S1_index_2, S2_index_1, S2_index_2, S2_index_3, S3_index_1, S3_index_2, S3_index_3, S4_index_1, S4_index_2, S4_index_3, S4_index_4, S5_index_1, S5_index_2, S5_index_3, S5_index_4, S5_index_5 : natural;
  variable opp_S1_index_1, opp_S1_index_2, opp_S2_index_1, opp_S2_index_2, opp_S2_index_3, opp_S3_index_1, opp_S3_index_2, opp_S3_index_3, opp_S4_index_1, opp_S4_index_2, opp_S4_index_3, opp_S4_index_4, opp_S5_index_1, opp_S5_index_2, opp_S5_index_3, opp_S5_index_4, opp_S5_index_5 : natural;
  
  begin
	done <= '0';

  if (init='0') then
		ship1_x 	:= 0;
		ship1_y 	:= 0;
		ship2_x 	:= 0;
		ship2_y 	:= 0;
		ship3_x 	:= 0;
		ship3_y 	:= 0;
		ship4_x 	:= 0;
		ship4_y 	:= 0;
		ship5_x 	:= 0;
		ship5_y 	:= 0;		
		cursor_x	:= 4;	cursor_y := 4;	
		
		placing_on <= '1'; --place ship on
		
		legend_on <= '1';-- legend on
		
		myVGA 	<= (others => WATER); --potentially unecessary
		oppVGA 	<= (others => WATER); --potentially unecessary
		counter  <= 0; myHits <= 0; oppHits <= 0;
		sound_explosion <= '0'; select_s <= '0'; --0 is hit, 1 is miss
		phase <= 0;
		data_out <= '1';

		tie <= '0';
		winner <= '0';
		game_over <= '0';
		opp_ship1_x_vector <= "0000";
		opp_ship1_y_vector <= "0000";
		ship1_x_vector <= "0000";
		ship1_y_vector <= "0000";
		opp_ship2_x_vector <= "0000";
		opp_ship2_y_vector <= "0000";
		ship2_x_vector <= "0000";
		ship2_y_vector <= "0000";
		opp_ship3_x_vector <= "0000";
		opp_ship3_y_vector <= "0000";
		ship3_x_vector <= "0000";
		ship3_y_vector <= "0000";
		opp_ship4_x_vector <= "0000";
		opp_ship4_y_vector <= "0000";
		ship4_x_vector <= "0000";
		ship4_y_vector <= "0000";
		opp_ship5_x_vector <= "0000";
		opp_ship5_y_vector <= "0000";
		ship5_x_vector <= "0000";
		ship5_y_vector <= "0000";
		cursor_x_vector <= "0100";
		cursor_y_vector <= "0100";
		opp_cursor_x_vector <= "0000";
		opp_cursor_x_vector <= "0000";
		ship1_or <= '1'; ship2_or <= '1'; ship3_or <= '1'; ship4_or <= '1'; ship5_or <= '1';
		done 		<= '1';
		state 	<= PLACE_S1;
		if (ship1_or='1') then	--potentially unecessary
			myVGA(ship1_x + 10*ship1_y) <= SHIP;
			myVGA(ship1_x + 10*(ship1_y+1)) <= SHIP;
		else
			myVGA(ship1_x + 10*ship1_y) <= SHIP;
			myVGA(ship1_x + 1 + 10*ship1_y) <= SHIP;		
		end if;
	  
    --Phases-----------------------------------------------------------    
  elsif (rising_edge(clk)) then
--		a	<='0';
--		b	<='0';
--		c  <='0';
--		d  <='0';
--		e	<='0';
--		f	<='0';

---initialize myVGA here, and create an ack signal to never do again
		
		--data_out <= data1;		
		
		case state is
			WHEN PLACE_S1 =>
			placeShip_num <= "001"; --place ship one 
				if ((left_press='1') and (ship1_x>0)) then
						ship1_x := ship1_x - 1;
						--placeShip_num <= "001"; --place ship one 
				end if;				

				if ((right_press='1') and ((ship1_x<8 and ship1_or='0') or (ship1_x<9 and ship1_or='1'))) then
						ship1_x := ship1_x + 1;
						--placeShip_num <= "010"; --place ship one 
				end if;	

				if (up_press='1') and (ship1_y>0) then
						ship1_y := ship1_y - 1;
						--placeShip_num <= "011"; --place ship one 
				end if;	

				if (down_press='1') and ((ship1_y<9 and ship1_or='0') or (ship1_y<8 and ship1_or='1')) then
						ship1_y := ship1_y + 1;
						--placeShip_num <= "100"; --place ship one 
				end if;
				
				if (flip='1') and (ship1_or='1') and (ship1_x<9) then			--potentially make ship1_or a variable
						ship1_or<='0';
						--placeShip_num <= "101"; --place ship one 
				end if;
				if (flip='1') and (ship1_or='0') and (ship1_y<9) then
						ship1_or<='1';
						--placeShip_num <= "101"; --place ship one 
				end if;
				
				if (ship1_or='1') then
					S1_index_1 := ship1_x + 10*ship1_y;
					S1_index_2 := ship1_x + 10*(ship1_y+1);
					myVGA <= (others => WATER);
					myVGA(S1_index_1) <= CURSOR; --was SHIP
					myVGA(S1_index_2) <= CURSOR; --was SHIP
				else
					S1_index_1 := ship1_x + 10*ship1_y;
					S1_index_2 := ship1_x + 1 + 10*ship1_y;
					myVGA <= (others => WATER);
					myVGA(S1_index_1) <= CURSOR; --was SHIP
					myVGA(S1_index_2) <= CURSOR; --was SHIP
				end if;			

				--temp start0---------------------
				if (enter_press='1') then
					--data_out	<= '0';
					state		<= PLACE_S2;
					saved1 <= myVGA(cursor_x + 10*cursor_y);
					myVGA(S1_index_1) <= SHIP; --was SHIP
					myVGA(S1_index_2) <= SHIP; --was SHIP
				end if;
				
				
				--temp end0---------------------
				
				
--				if (enter_press='1') then
--					data_out	<= '0';
--					state		<= PRE_COMM_S1;
--					saved1 <= myVGA(cursor_x + 10*cursor_y);
--				end if;
				
			
			WHEN PRE_COMM_S1 =>
				if (data_in='0') then
					phase <= 1;
				end if;
				if (phase=1) then
					counter <= counter + 1;
				end if;
				if (counter=(DELAY/4)) then
					data_out <= ship1_x_vector(3);
				end if;
				if (counter=(DELAY/2)) then
					opp_ship1_x_vector(3) <= data_in;
				end if;
				
				if (counter=DELAY) then
					state <= COMM_S1_1;
					counter <= 0;
					phase <= 0;
				end if;
				
			WHEN COMM_S1_1 =>
				data_out <= ship1_x_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship1_x_vector(2) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S1_2;
				else
					counter <= counter + 1;
				end if;


			WHEN COMM_S1_2 =>
				data_out <= ship1_x_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship1_x_vector(1) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S1_3;
				else
					counter <= counter + 1;
				end if;
				
				
			WHEN COMM_S1_3 =>
				data_out <= ship1_x_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship1_x_vector(0) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S1_4;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S1_4 =>
				data_out <= ship1_y_vector(3);
				if (counter=(DELAY/2)) then
					opp_ship1_y_vector(3) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S1_5;
				else
					counter <= counter + 1;
				end if;
					
			WHEN COMM_S1_5 =>
				data_out <= ship1_y_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship1_y_vector(2) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S1_6;
				else
					counter <= counter + 1;
				end if;			

			WHEN COMM_S1_6 =>
				data_out <= ship1_y_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship1_y_vector(1) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S1_7;
				else
					counter <= counter + 1;
				end if;		

			WHEN COMM_S1_7 =>
				data_out <= ship1_y_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship1_y_vector(0) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S1_8;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S1_8 =>
				data_out <= ship1_or;
				if (counter=(DELAY/2)) then
					opp_ship1_or <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S1_9; --are done at this point
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S1_9 =>
				data_out <= '1';
				if (opp_ship1_or='1') then
					opp_S1_index_1 := opp_ship1_x + 10*opp_ship1_y;
					opp_S1_index_2 := opp_ship1_x + 10*(opp_ship1_y+1);
				else
					opp_S1_index_1 := opp_ship1_x + 10*opp_ship1_y;
					opp_S1_index_2 := opp_ship1_x + 1 + 10*(opp_ship1_y);
				end if;
				
				state <= TESTING1;				
				
			WHEN TESTING1 =>
				data_out <= '0';
				state <= PRE_COMM_S2;
			
			WHEN PLACE_S2 =>
			placeShip_num <= "010"; --place ship one 
				if (left_press='1') and (ship2_x>0) then
						ship2_x := ship2_x - 1;
						S2_overlap <= '0';
				end if;				

				if (right_press='1') and ((ship2_x<7 and ship2_or='0') or (ship2_x<9 and ship2_or='1'))then
						ship2_x := ship2_x + 1;
						S2_overlap <= '0';
				end if;	

				if (up_press='1') and (ship2_y>0) then
						ship2_y := ship2_y - 1;
						S2_overlap <= '0';
				end if;	

				if (down_press='1') and ((ship2_y<9 and ship2_or='0') or (ship2_y<7 and ship2_or='1')) then
						ship2_y := ship2_y + 1;
						S2_overlap <= '0';
				end if;
				
				if (flip='1') and (ship2_or='1') and (ship2_x<8) then
						ship2_or<='0';
						S2_overlap <= '0';
				end if;
				
				if (flip='1') and (ship2_or='0') and (ship2_y<8) then
						ship2_or<='1';
						S2_overlap <= '0';
				end if;
				
				if (ship2_or='1') then
					S2_index_1 := ship2_x + 10*ship2_y;
					S2_index_2 := ship2_x + 10*(ship2_y+1);
					S2_index_3 := ship2_x + 10*(ship2_y+2);
					myVGA <= (others => WATER);
					myVGA(S2_index_1) <= CURSOR;
					myVGA(S2_index_2) <= CURSOR;
					myVGA(S2_index_3) <= CURSOR;
					myVGA(S1_index_1) <= SHIP;
					myVGA(S1_index_2) <= SHIP;
				else
					S2_index_1 := ship2_x + 10*ship2_y;
					S2_index_2 := ship2_x + 1 + 10*ship2_y;
					S2_index_3 := ship2_x + 2 + 10*ship2_y;
					myVGA <= (others => WATER);
					myVGA(S2_index_1) <= CURSOR;
					myVGA(S2_index_2) <= CURSOR;
					myVGA(S2_index_3) <= CURSOR;
					myVGA(S1_index_1) <= SHIP;
					myVGA(S1_index_2) <= SHIP;
				end if;
				
				if ((S2_index_1=S1_index_1) or (S2_index_1=S1_index_2) or (S2_index_2=S1_index_1) or (S2_index_2=S1_index_2) or (S2_index_3=S1_index_1) or (S2_index_3=S1_index_2)) then
					S2_overlap <= '1';
					myVGA(S2_index_1) <= OVERLAP;
					myVGA(S2_index_2) <= OVERLAP;
					myVGA(S2_index_3) <= OVERLAP;
				end if;			

				--temp start0---------------------
				if (enter_press='1' and S2_overlap='0') then
					--data_out	<= '0';
					state		<= PLACE_S3;
					saved1 <= myVGA(cursor_x + 10*cursor_y);
					myVGA(S2_index_1) <= SHIP;
					myVGA(S2_index_2) <= SHIP;
					myVGA(S2_index_3) <= SHIP;
				end if;
				
				
				--temp end0---------------------
				
--				if (enter_press='1' and S2_overlap='0') then
--					data_out	<= '0';
--					state		<= PRE_COMM_S1;
--					saved1 <= myVGA(cursor_x + 10*cursor_y);
--				end if;
	
			
			WHEN PRE_COMM_S2 =>
				if (data_in='0') then
					phase <= 1;
				end if;
				if (phase=1) then
					counter <= counter + 1;
				end if;
				if (counter=(DELAY/4)) then
					data_out <= ship2_x_vector(3);
				end if;
				if (counter=(DELAY/2)) then
					opp_ship2_x_vector(3) <= data_in;
				end if;
				
				if (counter=DELAY) then
					state <= COMM_S2_1;
					counter <= 0;
					phase <= 0;
				end if;
				
			WHEN COMM_S2_1 =>
				data_out <= ship2_x_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship2_x_vector(2) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S2_2;
				else
					counter <= counter + 1;
				end if;


			WHEN COMM_S2_2 =>
				data_out <= ship2_x_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship2_x_vector(1) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S2_3;
				else
					counter <= counter + 1;
				end if;
				
				
			WHEN COMM_S2_3 =>
				data_out <= ship2_x_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship2_x_vector(0) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S2_4;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S2_4 =>
				data_out <= ship2_y_vector(3);
				if (counter=(DELAY/2)) then
					opp_ship2_y_vector(3) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S2_5;
				else
					counter <= counter + 1;
				end if;
					
			WHEN COMM_S2_5 =>
				data_out <= ship2_y_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship2_y_vector(2) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S2_6;
				else
					counter <= counter + 1;
				end if;			

			WHEN COMM_S2_6 =>
				data_out <= ship2_y_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship2_y_vector(1) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S2_7;
				else
					counter <= counter + 1;
				end if;		

			WHEN COMM_S2_7 =>
				data_out <= ship2_y_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship2_y_vector(0) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S2_8;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S2_8 =>
				data_out <= ship2_or;
				if (counter=(DELAY/2)) then
					opp_ship2_or <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S2_9; --are done at this point
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S2_9 =>
				data_out <= '1';--idle
				if (opp_ship2_or='1') then
					opp_S2_index_1 := opp_ship2_x + 10*opp_ship2_y;
					opp_S2_index_2 := opp_ship2_x + 10*(opp_ship2_y+1);
					opp_S2_index_3 := opp_ship2_x + 10*(opp_ship2_y+2);
				else
					opp_S2_index_1 := opp_ship2_x + 10*opp_ship2_y;
					opp_S2_index_2 := opp_ship2_x + 1 + 10*(opp_ship2_y);
					opp_S2_index_3 := opp_ship2_x + 2 + 10*(opp_ship2_y);
				end if;
				state <= TESTING2;				
				
			WHEN TESTING2 =>
				data_out <= '0';
				state <= PRE_COMM_S3;

	
			WHEN PLACE_S3 =>
			placeShip_num <= "011"; --place ship one 
				if (left_press='1') and (ship3_x>0) then
						ship3_x := ship3_x - 1;
						S3_overlap <= '0';
				end if;				

				if (right_press='1') and ((ship3_x<7 and ship3_or='0') or (ship3_x<9 and ship3_or='1'))then
						ship3_x := ship3_x + 1;
						S3_overlap <= '0';
				end if;	

				if (up_press='1') and (ship3_y>0) then
						ship3_y := ship3_y - 1;
						S3_overlap <= '0';
				end if;	

				if (down_press='1') and ((ship3_y<9 and ship3_or='0') or (ship3_y<7 and ship3_or='1')) then
						ship3_y := ship3_y + 1;
						S3_overlap <= '0';
				end if;
				
				if (flip='1') and (ship3_or='1') and (ship3_x<8) then
						ship3_or<='0';
						S3_overlap <= '0';
				end if;
				
				if (flip='1') and (ship3_or='0') and (ship3_y<8) then
						ship3_or<='1';
						S3_overlap <= '0';
				end if;
				
				if (ship3_or='1') then
					S3_index_1 := ship3_x + 10*ship3_y;
					S3_index_2 := ship3_x + 10*(ship3_y+1);
					S3_index_3 := ship3_x + 10*(ship3_y+2);
					myVGA <= (others => WATER);
					myVGA(S3_index_1) <= CURSOR;
					myVGA(S3_index_2) <= CURSOR;
					myVGA(S3_index_3) <= CURSOR;
					myVGA(S2_index_1) <= SHIP;
					myVGA(S2_index_2) <= SHIP;
					myVGA(S2_index_3) <= SHIP;
					myVGA(S1_index_1) <= SHIP;
					myVGA(S1_index_2) <= SHIP;
				else
					S3_index_1 := ship3_x + 10*ship3_y;
					S3_index_2 := ship3_x + 1 + 10*ship3_y;
					S3_index_3 := ship3_x + 2 + 10*ship3_y;
					myVGA <= (others => WATER);
					myVGA(S3_index_1) <= CURSOR;
					myVGA(S3_index_2) <= CURSOR;
					myVGA(S3_index_3) <= CURSOR;
					myVGA(S2_index_1) <= SHIP;
					myVGA(S2_index_2) <= SHIP;
					myVGA(S2_index_3) <= SHIP;
					myVGA(S1_index_1) <= SHIP;
					myVGA(S1_index_2) <= SHIP;
				end if;
				
				if ((S3_index_1=S1_index_1) or (S3_index_1=S1_index_2) or (S3_index_2=S1_index_1) or (S3_index_2=S1_index_2) or (S3_index_3=S1_index_1) or (S3_index_3=S1_index_2) or (S3_index_1=S2_index_1) or (S3_index_1=S2_index_2) or (S3_index_1=S2_index_3) or (S3_index_2=S2_index_1) or (S3_index_2=S2_index_2) or (S3_index_2=S2_index_3) or (S3_index_3=S2_index_1) or (S3_index_3=S2_index_2) or (S3_index_3=S2_index_3)) then
					S3_overlap <= '1';
					myVGA(S3_index_1) <= OVERLAP;
					myVGA(S3_index_2) <= OVERLAP;
					myVGA(S3_index_3) <= OVERLAP;
				end if;
				
				--temp start0---------------------
				if (enter_press='1' and S3_overlap='0') then
					--data_out	<= '0';
					state		<= PLACE_S4;
					myVGA(S3_index_1) <= SHIP;
					myVGA(S3_index_2) <= SHIP;
					myVGA(S3_index_3) <= SHIP;
					saved1 <= myVGA(cursor_x + 10*cursor_y);
				end if;
				
				
				--temp end0---------------------		
				
				
				
				
--				if (enter_press='1' and S3_overlap='0') then
--					data_out	<= '0';
--					state		<= PRE_COMM_S3;
--					saved1 <= myVGA(cursor_x + 10*cursor_y);
--				end if;
	
			
			WHEN PRE_COMM_S3 =>
				if (data_in='0') then
					phase <= 1;
				end if;
				if (phase=1) then
					counter <= counter + 1;
				end if;
				if (counter=(DELAY/4)) then
					data_out <= ship3_x_vector(3);
				end if;
				if (counter=(DELAY/2)) then
					opp_ship3_x_vector(3) <= data_in;
				end if;
				
				if (counter=DELAY) then
					state <= COMM_S3_1;
					counter <= 0;
					phase <= 0;
				end if;
				
			WHEN COMM_S3_1 =>
				data_out <= ship3_x_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship3_x_vector(2) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S3_2;
				else
					counter <= counter + 1;
				end if;


			WHEN COMM_S3_2 =>
				data_out <= ship3_x_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship3_x_vector(1) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S3_3;
				else
					counter <= counter + 1;
				end if;
				
				
			WHEN COMM_S3_3 =>
				data_out <= ship3_x_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship3_x_vector(0) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S3_4;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S3_4 =>
				data_out <= ship3_y_vector(3);
				if (counter=(DELAY/2)) then
					opp_ship3_y_vector(3) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S3_5;
				else
					counter <= counter + 1;
				end if;
					
			WHEN COMM_S3_5 =>
				data_out <= ship3_y_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship3_y_vector(2) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S3_6;
				else
					counter <= counter + 1;
				end if;			

			WHEN COMM_S3_6 =>
				data_out <= ship3_y_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship3_y_vector(1) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S3_7;
				else
					counter <= counter + 1;
				end if;		

			WHEN COMM_S3_7 =>
				data_out <= ship3_y_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship3_y_vector(0) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S3_8;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S3_8 =>
				data_out <= ship3_or;
				if (counter=(DELAY/2)) then
					opp_ship3_or <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S3_9; --are done at this point
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S3_9 =>
				data_out <= '1';--idle
				if (opp_ship3_or='1') then
					opp_S3_index_1 := opp_ship3_x + 10*opp_ship3_y;
					opp_S3_index_2 := opp_ship3_x + 10*(opp_ship3_y+1);
					opp_S3_index_3 := opp_ship3_x + 10*(opp_ship3_y+2);
				else
					opp_S3_index_1 := opp_ship3_x + 10*opp_ship3_y;
					opp_S3_index_2 := opp_ship3_x + 1 + 10*(opp_ship3_y);
					opp_S3_index_3 := opp_ship3_x + 2 + 10*(opp_ship3_y);
				end if;
				state <= TESTING3;				
				
			WHEN TESTING3 =>
				data_out <= '0';
				state <= PRE_COMM_S4;	
-------------------------------------------------------S3 end
	
			WHEN PLACE_S4 =>
				placeShip_num <= "100"; --place ship one 
				if (left_press='1') and (ship4_x>0) then
						ship4_x := ship4_x - 1;
						S4_overlap <= '0';
				end if;				

				if (right_press='1') and ((ship4_x<6 and ship4_or='0') or (ship4_x<9 and ship4_or='1'))then
						ship4_x := ship4_x + 1;
						S4_overlap <= '0';
				end if;	

				if (up_press='1') and (ship4_y>0) then
						ship4_y := ship4_y - 1;
						S4_overlap <= '0';
				end if;	

				if (down_press='1') and ((ship4_y<9 and ship4_or='0') or (ship4_y<6 and ship4_or='1')) then
						ship4_y := ship4_y + 1;
						S4_overlap <= '0';
				end if;
				
				if (flip='1') and (ship4_or='1') and (ship4_x<7) then
						ship4_or<='0';
						S4_overlap <= '0';
				end if;
				
				if (flip='1') and (ship4_or='0') and (ship4_y<7) then
						ship4_or<='1';
						S4_overlap <= '0';
				end if;
				
				if (ship4_or='1') then
					S4_index_1 := ship4_x + 10*ship4_y;
					S4_index_2 := ship4_x + 10*(ship4_y+1);
					S4_index_3 := ship4_x + 10*(ship4_y+2);
					S4_index_4 := ship4_x + 10*(ship4_y+3);
					myVGA <= (others => WATER);
					myVGA(S4_index_1) <= CURSOR;
					myVGA(S4_index_2) <= CURSOR;
					myVGA(S4_index_3) <= CURSOR;
					myVGA(S4_index_4) <= CURSOR;
					myVGA(S3_index_1) <= SHIP;
					myVGA(S3_index_2) <= SHIP;
					myVGA(S3_index_3) <= SHIP;
					myVGA(S2_index_1) <= SHIP;
					myVGA(S2_index_2) <= SHIP;
					myVGA(S2_index_3) <= SHIP;
					myVGA(S1_index_1) <= SHIP;
					myVGA(S1_index_2) <= SHIP;
				else
					S4_index_1 := ship4_x + 10*ship4_y;
					S4_index_2 := ship4_x + 1 + 10*ship4_y;
					S4_index_3 := ship4_x + 2 + 10*ship4_y;
					S4_index_4 := ship4_x + 3 + 10*ship4_y;
					myVGA <= (others => WATER);
					myVGA(S4_index_1) <= CURSOR;
					myVGA(S4_index_2) <= CURSOR;
					myVGA(S4_index_3) <= CURSOR;
					myVGA(S4_index_4) <= CURSOR;
					myVGA(S3_index_1) <= SHIP;
					myVGA(S3_index_2) <= SHIP;
					myVGA(S3_index_3) <= SHIP;
					myVGA(S2_index_1) <= SHIP;
					myVGA(S2_index_2) <= SHIP;
					myVGA(S2_index_3) <= SHIP;
					myVGA(S1_index_1) <= SHIP;
					myVGA(S1_index_2) <= SHIP;
				end if;
				
				if ((S4_index_1=S1_index_1) or (S4_index_1=S1_index_2) or (S4_index_2=S1_index_1) or (S4_index_2=S1_index_2) or (S4_index_3=S1_index_1) or (S4_index_3=S1_index_2) or (S4_index_4=S1_index_1) or (S4_index_4=S1_index_2) or (S4_index_1=S2_index_1) or (S4_index_1=S2_index_2) or (S4_index_1=S2_index_3) or (S4_index_2=S2_index_1) or (S4_index_2=S2_index_2) or (S4_index_2=S2_index_3) or (S4_index_3=S2_index_1) or (S4_index_3=S2_index_2) or (S4_index_3=S2_index_3) or (S4_index_4=S2_index_1) or (S4_index_4=S2_index_2) or (S4_index_4=S2_index_3) or (S4_index_1=S3_index_1) or (S4_index_1=S3_index_2) or (S4_index_1=S3_index_3) or (S4_index_2=S3_index_1) or (S4_index_2=S3_index_2) or (S4_index_2=S3_index_3) or (S4_index_3=S3_index_1) or (S4_index_3=S3_index_2) or (S4_index_3=S3_index_3) or (S4_index_4=S3_index_1) or (S4_index_4=S3_index_2) or (S4_index_4=S3_index_3)) then
					S4_overlap <= '1';

					myVGA(S4_index_1) <= OVERLAP;
					myVGA(S4_index_2) <= OVERLAP;
					myVGA(S4_index_3) <= OVERLAP;
					myVGA(S4_index_4) <= OVERLAP;
				end if;

				--temp start0---------------------
				if (enter_press='1' and S4_overlap='0') then
					--data_out	<= '0';
					state		<= PLACE_S5;
					myVGA(S4_index_1) <= SHIP;
					myVGA(S4_index_2) <= SHIP;
					myVGA(S4_index_3) <= SHIP;
					myVGA(S4_index_4) <= SHIP;
					saved1 <= myVGA(cursor_x + 10*cursor_y);
				end if;
				
				
				--temp end0---------------------
				
--				if (enter_press='1' and S4_overlap='0') then
--					data_out	<= '0';
--					state		<= PRE_COMM_S4;
--					saved1 <= myVGA(cursor_x + 10*cursor_y);
--				end if;
	
			
			WHEN PRE_COMM_S4 =>
				if (data_in='0') then
					phase <= 1;
				end if;
				if (phase=1) then
					counter <= counter + 1;
				end if;
				if (counter=(DELAY/4)) then
					data_out <= ship4_x_vector(3);
				end if;
				if (counter=(DELAY/2)) then
					opp_ship4_x_vector(3) <= data_in;
				end if;
				
				if (counter=DELAY) then
					state <= COMM_S4_1;
					counter <= 0;
					phase <= 0;
				end if;
				
			WHEN COMM_S4_1 =>
				data_out <= ship4_x_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship4_x_vector(2) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S4_2;
				else
					counter <= counter + 1;
				end if;


			WHEN COMM_S4_2 =>
				data_out <= ship4_x_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship4_x_vector(1) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S4_3;
				else
					counter <= counter + 1;
				end if;
				
				
			WHEN COMM_S4_3 =>
				data_out <= ship4_x_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship4_x_vector(0) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S4_4;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S4_4 =>
				data_out <= ship4_y_vector(3);
				if (counter=(DELAY/2)) then
					opp_ship4_y_vector(3) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S4_5;
				else
					counter <= counter + 1;
				end if;
					
			WHEN COMM_S4_5 =>
				data_out <= ship4_y_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship4_y_vector(2) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S4_6;
				else
					counter <= counter + 1;
				end if;			

			WHEN COMM_S4_6 =>
				data_out <= ship4_y_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship4_y_vector(1) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S4_7;
				else
					counter <= counter + 1;
				end if;		

			WHEN COMM_S4_7 =>
				data_out <= ship4_y_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship4_y_vector(0) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S4_8;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S4_8 =>
				data_out <= ship4_or;
				if (counter=(DELAY/2)) then
					opp_ship4_or <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S4_9; --are done at this point
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S4_9 =>
				data_out <= '1';--idle
				if (opp_ship4_or='1') then
					opp_S4_index_1 := opp_ship4_x + 10*opp_ship4_y;
					opp_S4_index_2 := opp_ship4_x + 10*(opp_ship4_y+1);
					opp_S4_index_3 := opp_ship4_x + 10*(opp_ship4_y+2);
					opp_S4_index_4 := opp_ship4_x + 10*(opp_ship4_y+3);
				else
					opp_S4_index_1 := opp_ship4_x + 10*opp_ship4_y;
					opp_S4_index_2 := opp_ship4_x + 1 + 10*(opp_ship4_y);
					opp_S4_index_3 := opp_ship4_x + 2 + 10*(opp_ship4_y);
					opp_S4_index_4 := opp_ship4_x + 3 + 10*(opp_ship4_y);
				end if;
				state <= TESTING4;				
				
			WHEN TESTING4 =>
				data_out <= '0';
				state <= PRE_COMM_S5;	
	------------------
				WHEN PLACE_S5 =>
			placeShip_num <= "101"; --place ship one 
				if (left_press='1') and (ship5_x>0) then
						ship5_x := ship5_x - 1;
						S5_overlap <= '0';
				end if;				

				if (right_press='1') and ((ship5_x<5 and ship5_or='0') or (ship5_x<9 and ship5_or='1'))then
						ship5_x := ship5_x + 1;
						S5_overlap <= '0';
				end if;	

				if (up_press='1') and (ship5_y>0) then
						ship5_y := ship5_y - 1;
						S5_overlap <= '0';
				end if;	

				if (down_press='1') and ((ship5_y<9 and ship5_or='0') or (ship5_y<5 and ship5_or='1')) then
						ship5_y := ship5_y + 1;
						S5_overlap <= '0';
				end if;
				
				if (flip='1') and (ship5_or='1') and (ship5_x<6) then
						ship5_or<='0';
						S5_overlap <= '0';
				end if;
				
				if (flip='1') and (ship5_or='0') and (ship5_y<7) then
						ship5_or<='1';
						S5_overlap <= '0';
				end if;
				
				if (ship5_or='1') then
					S5_index_1 := ship5_x + 10*ship5_y;
					S5_index_2 := ship5_x + 10*(ship5_y+1);
					S5_index_3 := ship5_x + 10*(ship5_y+2);
					S5_index_4 := ship5_x + 10*(ship5_y+3);
					S5_index_5 := ship5_x + 10*(ship5_y+4);
					myVGA <= (others => WATER);
					myVGA(S5_index_1) <= CURSOR;
					myVGA(S5_index_2) <= CURSOR;
					myVGA(S5_index_3) <= CURSOR;
					myVGA(S5_index_4) <= CURSOR;
					myVGA(S5_index_5) <= CURSOR;
					myVGA(S4_index_1) <= SHIP;
					myVGA(S4_index_2) <= SHIP;
					myVGA(S4_index_3) <= SHIP;
					myVGA(S4_index_4) <= SHIP;
					myVGA(S3_index_1) <= SHIP;
					myVGA(S3_index_2) <= SHIP;
					myVGA(S3_index_3) <= SHIP;
					myVGA(S2_index_1) <= SHIP;
					myVGA(S2_index_2) <= SHIP;
					myVGA(S2_index_3) <= SHIP;
					myVGA(S1_index_1) <= SHIP;
					myVGA(S1_index_2) <= SHIP;
				else
					S5_index_1 := ship5_x + 10*ship5_y;
					S5_index_2 := ship5_x + 1 + 10*ship5_y;
					S5_index_3 := ship5_x + 2 + 10*ship5_y;
					S5_index_4 := ship5_x + 3 + 10*ship5_y;
					S5_index_5 := ship5_x + 4 + 10*ship5_y;
					myVGA <= (others => WATER);
					myVGA(S5_index_1) <= CURSOR;		--move outside of if (same as before)
					myVGA(S5_index_2) <= CURSOR;
					myVGA(S5_index_3) <= CURSOR;
					myVGA(S5_index_4) <= CURSOR;
					myVGA(S5_index_5) <= CURSOR;
					myVGA(S4_index_1) <= SHIP;
					myVGA(S4_index_2) <= SHIP;
					myVGA(S4_index_3) <= SHIP;
					myVGA(S4_index_4) <= SHIP;
					myVGA(S3_index_1) <= SHIP;
					myVGA(S3_index_2) <= SHIP;
					myVGA(S3_index_3) <= SHIP;
					myVGA(S2_index_1) <= SHIP;
					myVGA(S2_index_2) <= SHIP;
					myVGA(S2_index_3) <= SHIP;
					myVGA(S1_index_1) <= SHIP;
					myVGA(S1_index_2) <= SHIP;
				end if;
				
				if ((S5_index_1=S1_index_1) or (S5_index_1=S1_index_2) or (S5_index_2=S1_index_1) or (S5_index_2=S1_index_2) or (S5_index_3=S1_index_1) or (S5_index_3=S1_index_2) or (S5_index_4=S1_index_1) or (S5_index_4=S1_index_2) or (S5_index_5=S1_index_1) or (S5_index_5=S1_index_2) or (S5_index_1=S2_index_1) or (S5_index_1=S2_index_2) or (S5_index_1=S2_index_3) or (S5_index_2=S2_index_1) or (S5_index_2=S2_index_2) or (S5_index_2=S2_index_3) or (S5_index_3=S2_index_1) or (S5_index_3=S2_index_2) or (S5_index_3=S2_index_3) or (S5_index_4=S2_index_1) or (S5_index_4=S2_index_2) or (S5_index_4=S2_index_3) or (S5_index_5=S2_index_1) or (S5_index_5=S2_index_2) or (S5_index_5=S2_index_3) or (S5_index_1=S3_index_1) or (S5_index_1=S3_index_2) or (S5_index_1=S3_index_3) or (S5_index_2=S3_index_1) or (S5_index_2=S3_index_2) or (S5_index_2=S3_index_3) or (S5_index_3=S3_index_1) or (S5_index_3=S3_index_2) or (S5_index_3=S3_index_3) or (S5_index_4=S3_index_1) or (S5_index_4=S3_index_2) or (S5_index_4=S3_index_3) or (S5_index_5=S3_index_1) or (S5_index_5=S3_index_2) or (S5_index_5=S3_index_3) or (S5_index_1=S4_index_1) or (S5_index_1=S4_index_2) or (S5_index_1=S4_index_3) or (S5_index_1=S4_index_4) or (S5_index_2=S4_index_1) or (S5_index_2=S4_index_2) or (S5_index_2=S4_index_3) or (S5_index_2=S4_index_4) or (S5_index_3=S4_index_1) or (S5_index_3=S4_index_2) or (S5_index_3=S4_index_3) or (S5_index_3=S4_index_4) or (S5_index_4=S4_index_1) or (S5_index_4=S4_index_2) or (S5_index_4=S4_index_3) or (S5_index_4=S4_index_4) or (S5_index_5=S4_index_1) or (S5_index_5=S4_index_2) or (S5_index_5=S4_index_3) or (S5_index_5=S4_index_4)) then
					S5_overlap <= '1';
					myVGA(S5_index_1) <= OVERLAP;
					myVGA(S5_index_2) <= OVERLAP;
					myVGA(S5_index_3) <= OVERLAP;
					myVGA(S5_index_4) <= OVERLAP;
					myVGA(S5_index_5) <= OVERLAP;
				end if;

				if (enter_press='1' and S5_overlap='0') then
					data_out	<= '0';
					placing_on <= '0';
					state		<= PRE_COMM_S1;
					myVGA(S5_index_1) <= SHIP;
					myVGA(S5_index_2) <= SHIP;
					myVGA(S5_index_3) <= SHIP;
					myVGA(S5_index_4) <= SHIP;
					myVGA(S5_index_5) <= SHIP;
					saved1 <= myVGA(cursor_x + 10*cursor_y);
				end if;
	
			
			WHEN PRE_COMM_S5 =>
				if (data_in='0') then
					phase <= 1;
				end if;
				if (phase=1) then
					counter <= counter + 1;
				end if;
				if (counter=(DELAY/4)) then
					data_out <= ship5_x_vector(3);
				end if;
				if (counter=(DELAY/2)) then
					opp_ship5_x_vector(3) <= data_in;
				end if;
				
				if (counter=DELAY) then
					state <= COMM_S5_1;
					counter <= 0;
					phase <= 0;
				end if;
				
			WHEN COMM_S5_1 =>
				data_out <= ship5_x_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship5_x_vector(2) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S5_2;
				else
					counter <= counter + 1;
				end if;


			WHEN COMM_S5_2 =>
				data_out <= ship5_x_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship5_x_vector(1) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S5_3;
				else
					counter <= counter + 1;
				end if;
				
				
			WHEN COMM_S5_3 =>
				data_out <= ship5_x_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship5_x_vector(0) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S5_4;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S5_4 =>
				data_out <= ship5_y_vector(3);
				if (counter=(DELAY/2)) then
					opp_ship5_y_vector(3) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S5_5;
				else
					counter <= counter + 1;
				end if;
					
			WHEN COMM_S5_5 =>
				data_out <= ship5_y_vector(2);
				if (counter=(DELAY/2)) then
					opp_ship5_y_vector(2) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S5_6;
				else
					counter <= counter + 1;
				end if;			

			WHEN COMM_S5_6 =>
				data_out <= ship5_y_vector(1);
				if (counter=(DELAY/2)) then
					opp_ship5_y_vector(1) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S5_7;
				else
					counter <= counter + 1;
				end if;		

			WHEN COMM_S5_7 =>
				data_out <= ship5_y_vector(0);
				if (counter=(DELAY/2)) then
					opp_ship5_y_vector(0) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S5_8;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S5_8 =>
				data_out <= ship5_or;
				if (counter=(DELAY/2)) then
					opp_ship5_or <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_S5_9; --are done at this point
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_S5_9 =>
				data_out <= '1';--idle
				if (opp_ship5_or='1') then
					opp_S5_index_1 := opp_ship5_x + 10*opp_ship5_y;
					opp_S5_index_2 := opp_ship5_x + 10*(opp_ship5_y+1);
					opp_S5_index_3 := opp_ship5_x + 10*(opp_ship5_y+2);
					opp_S5_index_4 := opp_ship5_x + 10*(opp_ship5_y+3);
					opp_S5_index_5 := opp_ship5_x + 10*(opp_ship5_y+4);
				else
					opp_S5_index_1 := opp_ship5_x + 10*opp_ship5_y;
					opp_S5_index_2 := opp_ship5_x + 1 + 10*(opp_ship5_y);
					opp_S5_index_3 := opp_ship5_x + 2 + 10*(opp_ship5_y);
					opp_S5_index_4 := opp_ship5_x + 3 + 10*(opp_ship5_y);
					opp_S5_index_5 := opp_ship5_x + 4 + 10*(opp_ship5_y);
				end if;
				state <= SHOT_SELECT;
	
	
	------------------
	
			WHEN SHOT_SELECT =>
				cursor_index := cursor_x + 10*cursor_y;
				if (myHits=17 or oppHits=17) then
					state <= GAME_DONE;
					legend_on <= '0';
				else
					oppVGA(cursor_index) <= CURSOR;
				end if;
				
				if(myHits<17 and oppHits<17 and saved1/=WATER) then
					oppVGA(cursor_index) <= OVERLAP;
				end if;
				
				sound_explosion <= '0';
				
				if ((down_press='1') or (up_press='1') or (right_press='1') or (left_press='1')) then
					oppVGA(cursor_index) <= saved1;
				end if;
				
				if (left_press='1') and (cursor_x>0) then
					cursor_x := cursor_x - 1;
					saved1 <= oppVGA(cursor_x + 10*cursor_y);
				end if;				

				if (right_press='1') and (cursor_x<9) then
					cursor_x := cursor_x + 1;
					saved1 <= oppVGA(cursor_x + 10*cursor_y);
				end if;	

				if (up_press='1') and (cursor_y>0) then
					cursor_y := cursor_y - 1;
					saved1 <= oppVGA(cursor_x + 10*cursor_y);
				end if;	

				if (down_press='1') and (cursor_y<9) then
					cursor_y := cursor_y + 1;
					saved1 <= oppVGA(cursor_x + 10*cursor_y);
				end if;
					
				if (enter_press='1' and saved1=WATER) then
					if (cursor_index=opp_S1_index_1) or (cursor_index=opp_S1_index_2) or (cursor_index=opp_S2_index_1) or (cursor_index=opp_S2_index_2) or (cursor_index=opp_S2_index_3) or (cursor_index=opp_S3_index_1) or (cursor_index=opp_S3_index_2) or (cursor_index=opp_S3_index_3) or (cursor_index=opp_S4_index_1) or (cursor_index=opp_S4_index_2) or (cursor_index=opp_S4_index_3) or (cursor_index=opp_S4_index_4) or (cursor_index=opp_S5_index_1) or (cursor_index=opp_S5_index_2) or (cursor_index=opp_S5_index_3) or (cursor_index=opp_S5_index_4) or (cursor_index=opp_S5_index_5) then
						saved1 <= HIT;
						oppVGA(cursor_index) <= HIT;
						myHits <= myHits + 1;
						sound_explosion <= '1';
					else
						saved1 <= MISS;
						oppVGA(cursor_index) <= MISS;
					end if;
					state		<= PRE_COMM_SHOT;
					data_out <= '0';
				end if;
				

				
			WHEN PRE_COMM_SHOT =>
				sound_explosion <= '0';
				if (data_in='0') then
					phase <= 1;
				end if;
				if (phase=1) then
					counter <= counter + 1;
				end if;
				if (counter=(DELAY/4)) then
					data_out <= cursor_x_vector(3);--useful info-----------------------------
				end if;
				if (counter=(DELAY/2)) then
					opp_cursor_x_vector(3) <= data_in;
				end if;
				
				if (counter=DELAY) then --data0
					--data_out <= ship1_x_vector(3);--useful info
					state <= COMM_SHOT_1;
					counter <= 0;
					phase <= 0;
				end if;
				
			WHEN COMM_SHOT_1 =>
				data_out <= cursor_x_vector(2);-------------------
				if (counter=(DELAY/2)) then
					opp_cursor_x_vector(2) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_SHOT_2;
				else
					counter <= counter + 1;
				end if;


			WHEN COMM_SHOT_2 =>
				data_out <= cursor_x_vector(1);---------------------
				if (counter=(DELAY/2)) then
					opp_cursor_x_vector(1) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_SHOT_3;
				else
					counter <= counter + 1;
				end if;
				
				
			WHEN COMM_SHOT_3 =>
				data_out <= cursor_x_vector(0);-----------------------
				if (counter=(DELAY/2)) then
					opp_cursor_x_vector(0) <= data_in;
				end if;
				
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_SHOT_4;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_SHOT_4 =>
				data_out <= cursor_y_vector(3);
				if (counter=(DELAY/2)) then
					opp_cursor_y_vector(3) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_SHOT_5;
				else
					counter <= counter + 1;
				end if;
					
			WHEN COMM_SHOT_5 =>
				data_out <= cursor_y_vector(2);
				if (counter=(DELAY/2)) then
					opp_cursor_y_vector(2) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_SHOT_6;
				else
					counter <= counter + 1;
				end if;			

			WHEN COMM_SHOT_6 =>
				data_out <= cursor_y_vector(1);
				if (counter=(DELAY/2)) then
					opp_cursor_y_vector(1) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_SHOT_7;
				else
					counter <= counter + 1;
				end if;		

			WHEN COMM_SHOT_7 =>
				data_out <= cursor_y_vector(0);
				if (counter=(DELAY/2)) then
					opp_cursor_y_vector(0) <= data_in;
				end if;
				if (counter=DELAY) then
					counter <= 0;
					state <= COMM_SHOT_8;
				else
					counter <= counter + 1;
				end if;

			WHEN COMM_SHOT_8 =>
				data_out <= '1';--idle
				if (myVGA(opp_cursor_x + 10*opp_cursor_y)=SHIP) then
					myVGA(opp_cursor_x + 10*opp_cursor_y)<=HIT;
					oppHits <= oppHits + 1;
					--sound_explosion <= '1';
				else
					myVGA(opp_cursor_x + 10*opp_cursor_y)<=MISS;
				end if;
				cursor_x := 4;
				cursor_y := 4;
				saved1 <= oppVGA(44);--edit saved1
				state <= SHOT_SELECT;
			
			WHEN GAME_DONE =>
				game_over <= '1';
				if (myHits=17 and oppHits<17) then
					winner <= '0';	--I win
				end if;
				if (myHits<17 and oppHits=17) then
					winner <= '1';	--opponent wins
				end if;
				if (myHits=17 and oppHits=17) then
					tie <= '1';
				end if;
			
			WHEN others =>
				null;
	   end CASE;
			 
	 ship1_x_vector <= std_logic_vector(to_unsigned(ship1_x,4));
	 ship1_y_vector <= std_logic_vector(to_unsigned(ship1_y,4));
	 opp_ship1_x := to_integer(unsigned(opp_ship1_x_vector));
	 opp_ship1_y := to_integer(unsigned(opp_ship1_y_vector));
	 ship2_x_vector <= std_logic_vector(to_unsigned(ship2_x,4));
	 ship2_y_vector <= std_logic_vector(to_unsigned(ship2_y,4));
	 opp_ship2_x := to_integer(unsigned(opp_ship2_x_vector));
	 opp_ship2_y := to_integer(unsigned(opp_ship2_y_vector));
	 ship3_x_vector <= std_logic_vector(to_unsigned(ship3_x,4));
	 ship3_y_vector <= std_logic_vector(to_unsigned(ship3_y,4));
	 opp_ship3_x := to_integer(unsigned(opp_ship3_x_vector));
	 opp_ship3_y := to_integer(unsigned(opp_ship3_y_vector));
	 ship4_x_vector <= std_logic_vector(to_unsigned(ship4_x,4));
	 ship4_y_vector <= std_logic_vector(to_unsigned(ship4_y,4));
	 opp_ship4_x := to_integer(unsigned(opp_ship4_x_vector));
	 opp_ship4_y := to_integer(unsigned(opp_ship4_y_vector));
	 ship5_x_vector <= std_logic_vector(to_unsigned(ship5_x,4));
	 ship5_y_vector <= std_logic_vector(to_unsigned(ship5_y,4));
	 opp_ship5_x := to_integer(unsigned(opp_ship5_x_vector));
	 opp_ship5_y := to_integer(unsigned(opp_ship5_y_vector));
	 
	 cursor_x_vector<= std_logic_vector(to_unsigned(cursor_x,4));
	 cursor_y_vector<= std_logic_vector(to_unsigned(cursor_y,4));
	 opp_cursor_x := to_integer(unsigned(opp_cursor_x_vector));
	 opp_cursor_y := to_integer(unsigned(opp_cursor_y_vector));
	 
			 
  end if; -- end rising edge	 
-------    
end process game;



end architecture behavioral;