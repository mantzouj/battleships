library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.battleships_const.all;
 
entity battleships is 
 port( 
 --Inputs 
			data_in 									: in std_logic;
			keyboard_clk, keyboard_data, clk : in std_logic;
			data0, data1, data2, data3, data4, data5 : in std_logic;
 
 --Outputs 
			LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED,light	: OUT	STD_LOGIC;
			LCD_RW														: BUFFER STD_LOGIC;
			DATA_BUS														: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			VGA_RED, VGA_GREEN, VGA_BLUE 							: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK			: out std_logic;
			data_out 													: out std_logic;
			test0, test1, test2, test3, test4					: out std_logic;
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
			CLOCK_50 													: in std_logic;
			RESET_N									  					: in std_logic;
			--VGA 
			VGA_RED, VGA_GREEN, VGA_BLUE 							: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK			: out std_logic;
			myVGA															: in VGA_vector;
			oppVGA														: in VGA_vector
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
signal left_press, up_press, down_press, right_press, flip, enter_press : std_logic;
signal phase, state	: integer;
signal ship1_x_vector: std_logic_vector(3 downto 0);
signal ship1_y_vector: std_logic_vector(3 downto 0);
signal ship1_or		: std_logic;
signal opp_ship1_or	: std_logic;
signal opp_ship1_x_vector: std_logic_vector(3 downto 0);
signal opp_ship1_y_vector: std_logic_vector(3 downto 0);


signal scan_code : std_logic_vector(7 downto 0);
signal scan_readyo : std_logic;
signal hist3, hist2, hist1, hist0 : std_logic_vector(7 downto 0);
signal winner         : std_logic;
signal game_over      : std_logic;
signal done           : std_logic;
signal LEDs				 : std_logic_vector (55 downto 0);
signal temp_1 			 : std_logic_vector (5 downto 0);
signal activate 		 : std_logic;
signal reset, tie		 : std_logic;
signal init,a,b,c,d,e,f,waiting,res_lcd : std_logic;

signal go 					: std_logic;

begin 

LCDscreen : de2lcd port map (tie, waiting, res_lcd, clk, game_over, winner, LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED,light, LCD_RW,DATA_BUS);
keyboard_0 : ps2 port map (keyboard_clk, keyboard_data, clk, '1', scan_code, scan_readyo, hist3, hist2, hist1, hist0, LEDs);
vga_0 : VGA_top_level port map (clk, reset, VGA_RED, VGA_GREEN, VGA_BLUE, HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK, myVGA, oppVGA);
conv0 : leddcd port map (ship1_y_vector,led_seq(48 downto 42));
conv1 : leddcd port map (opp_ship1_y_vector,led_seq(34 downto 28));
conv2 : leddcd port map (ship1_x_vector,led_seq(55 downto 49));
conv3 : leddcd port map (opp_ship1_x_vector,led_seq(41 downto 35));
led_seq(27 downto 0) <= LEDs(27 downto 0);

key_press : process(hist0,clk,done,hist1) is --determine if there is keypress and what should happen
begin
if (rising_edge(clk)) then
	res_lcd <= '1';
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
					res_lcd <= '0';
			WHEN others =>
					null;
	   end CASE;
		
		
	end if;
	
	if (done='1') then
		init <= '1';
	end if;
	
	if (left_press='1') then			--T1_reverse acknowledged?
		left_press <= '0';
	end if;
	
	if (right_press='1') then			--T2_reverse acknowledged?
		right_press <= '0';
	end if;
	
	if (up_press='1') then			--T2 shot acknowledged?
		up_press <= '0';
	end if;
	
	if (down_press='1') then			--T1 shot acknowledged?
		down_press <= '0';
	end if;
	
	if (enter_press='1') then			--T1 shot acknowledged?
		enter_press <= '0';
	end if;
	
	if (flip='1') then			--T1 shot acknowledged?
		flip <= '0';
	end if;
end if;
end process key_press;


game: process(reset,clk,done) is
  variable ship1_x : natural;
  variable ship1_y : natural;
  variable opp_ship1_x : natural;
  variable opp_ship1_y : natural;
  variable S1_placed : std_logic;
  
  begin
	done <= '0';
	
  if (init='0') then
		myVGA 	<= (others => WATER);
		oppVGA 	<= (others => WATER);
		data_out <= '1';
		test0		<= '0'; test1		<= '0'; test2		<= '0'; test3		<= '0'; test4 <= '0';
		ship1_x 	:= 0;
		ship1_y 	:= 0;
		opp_ship1_x_vector <= "0000";
		opp_ship1_y_vector <= "0000";
		ship1_x_vector <= "0000";
		ship1_y_vector <= "0000";
		ship1_or <= '1';
		done 		<= '1';
		state 	<= PLACE_S1;
		if (ship1_or='1') then
			myVGA(ship1_x + 10*ship1_y) <= SHIP;
			myVGA(ship1_x + 10*(ship1_y+1)) <= SHIP;
		else
			myVGA(ship1_x + 10*ship1_y) <= SHIP;
			myVGA(ship1_x + 1 + 10*ship1_y) <= SHIP;		
		end if;
	  
    --Phases-----------------------------------------------------------    
  elsif (rising_edge(clk)) then
		a	<='0';
		b	<='0';
		c  <='0';
		d  <='0';
		e	<='0';
		f	<='0';
		
		--data_out <= data1;
		
		if (data_in='0') then
			test4 <= '0';
		else
			test4 <= '1';
		end if;
		
		
		
		case state is
			WHEN PLACE_S1 =>
				if (left_press='1') then
					a<='1';
					if (ship1_x>0) then
						ship1_x := ship1_x - 1;
					end if;
				end if;				

				if (right_press='1') then
					b<='1';
					if ((ship1_x<8 and ship1_or='0') or (ship1_x<9 and ship1_or='1')) then
						ship1_x := ship1_x + 1;
					end if;
				end if;	

				if (up_press='1') then
					c<='1';
					if (ship1_y>0) then
						ship1_y := ship1_y - 1;
					end if;
				end if;	

				if (down_press='1') then
					d<='1';
					if ((ship1_y<9 and ship1_or='0') or (ship1_y<8 and ship1_or='1')) then	--2 length ship
						ship1_y := ship1_y + 1;
					end if;
				end if;
				
				if (flip='1') then
					f<='1';
					if ((ship1_or='1') and (ship1_x<9)) then			--potentially make ship1_or a variable
						ship1_or<='0';
					end if;
					if ((ship1_or='0') and (ship1_y<9)) then
						ship1_or<='1';
					end if;
				end if;
				
				if (ship1_or='1') then
					myVGA <= (others => WATER);
					myVGA(ship1_x + 10*ship1_y) <= SHIP;
					myVGA(ship1_x + 10*(ship1_y+1)) <= SHIP;
				else
					myVGA <= (others => WATER);
					myVGA(ship1_x + 10*ship1_y) <= SHIP;
					myVGA(ship1_x + 1 + 10*ship1_y) <= SHIP;		
				end if;			
										--		myVGA <= ((ship1_x + 10*ship1_y) => SHIP, others => WATER);
										--		myVGA <= ((ship1_x + 10*(ship1_y+1)) => SHIP, others => WATER);

				if (enter_press='1') then
					e			<= '1';
					data_out	<= '0';
					state		<= PRE_COMM_S1;
					test0 <= '1';
					--S1_placed:= '1';
				end if;
				
				
				
				--if (data_in='0' & S1_placed='1') then
					
				--end if;
			
			WHEN PRE_COMM_S1 =>
				test1 <= '1';
				if (data_in='0') then --data0
					test2 <= '1';
					data_out <= ship1_x_vector(3);--useful info
					state <= COMM_S1_1;
				else
					state <= PRE_COMM_S1;
				end if;
				
			WHEN COMM_S1_1 =>
				test3 <= '1';
				data_out <= ship1_x_vector(2);
				opp_ship1_x_vector(3) <= data_in;
				state <= COMM_S1_2;

			WHEN COMM_S1_2 =>
				data_out <= ship1_x_vector(1);
				opp_ship1_x_vector(2) <= data_in;
				state <= COMM_S1_3;
				
			WHEN COMM_S1_3 =>
				data_out <= ship1_x_vector(0);
				opp_ship1_x_vector(1) <= data_in;
				state <= COMM_S1_4;

			WHEN COMM_S1_4 =>
				data_out <= ship1_y_vector(3);
				opp_ship1_x_vector(0) <= data_in;
				state <= COMM_S1_5;

			WHEN COMM_S1_5 =>
				data_out <= ship1_y_vector(2);
				opp_ship1_y_vector(3) <= data_in;
				state <= COMM_S1_6;				

			WHEN COMM_S1_6 =>
				data_out <= ship1_y_vector(1);
				opp_ship1_y_vector(2) <= data_in;
				state <= COMM_S1_7;

			WHEN COMM_S1_7 =>
				data_out <= ship1_y_vector(0);
				opp_ship1_y_vector(1) <= data_in;
				state <= COMM_S1_8;					

			WHEN COMM_S1_8 =>
				data_out <= ship1_or;
				opp_ship1_y_vector(0) <= data_in;
				state <= COMM_S1_9;

			WHEN COMM_S1_9 =>
				data_out <= '1';--------------------------------ship1_y_vector(0);
				opp_ship1_or <= data_in;
				state <= TESTING1;				
				
			WHEN TESTING1 =>
				if (opp_ship1_or='1') then
					oppVGA <= (others => WATER);
					oppVGA(opp_ship1_x + 10*opp_ship1_y) <= SHIP;
					oppVGA(opp_ship1_x + 10*(opp_ship1_y+1)) <= SHIP;
				else
					oppVGA <= (others => WATER);
					oppVGA(opp_ship1_x + 10*opp_ship1_y) <= SHIP;
					oppVGA(opp_ship1_x + 1 + 10*opp_ship1_y) <= SHIP;		
				end if;
				
			WHEN others =>
				null;
	   end CASE;
			 
	 ship1_x_vector <= std_logic_vector(to_unsigned(ship1_x,4));
	 ship1_y_vector <= std_logic_vector(to_unsigned(ship1_y,4));
	 opp_ship1_x := to_integer(unsigned(opp_ship1_x_vector));
	 opp_ship1_y := to_integer(unsigned(opp_ship1_y_vector));
			 
  end if; -- end rising edge
	--put variables in signals

	 
-------    
end process game;



end architecture behavioral;