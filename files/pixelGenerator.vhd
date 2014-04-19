library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.battleships_const.all;

entity pixelGenerator is
	port(
			clk, ROM_clk, rst_n, video_on, eof, game_over, winner, tie 				: in std_logic;
			pixel_row, pixel_column						    									: in std_logic_vector(9 downto 0);
			red_out, green_out, blue_out														: out std_logic_vector(9 downto 0);
			myVGA																						: in std_logic_vector(99 downto 0);
			oppVGA																					: in std_logic_vector(99 downto 0);
		);
end entity pixelGenerator;

architecture behavioral of pixelGenerator is

constant color_red 	 	 : std_logic_vector(2 downto 0) := "000";
constant color_green	 	 : std_logic_vector(2 downto 0) := "001";
constant color_blue 	 	 : std_logic_vector(2 downto 0) := "010";
constant color_yellow 	 : std_logic_vector(2 downto 0) := "011";
constant color_magenta 	 : std_logic_vector(2 downto 0) := "100";
constant color_cyan 	    : std_logic_vector(2 downto 0) := "101";
constant color_black 	 : std_logic_vector(2 downto 0) := "110";
constant color_white	    : std_logic_vector(2 downto 0) := "111";
	
component colorROM is
	port
	(
		address		: in std_logic_vector (2 downto 0);
		clock			: in std_logic  := '1';
		q				: out std_logic_vector (29 downto 0)
	);
end component colorROM;

signal colorAddress : std_logic_vector (2 downto 0);
signal color        : std_logic_vector (29 downto 0);

signal pixel_row_int, pixel_column_int : natural;

begin

--------------------------------------------------------------------------------------------
	
	red_out <= color(29 downto 20);
	green_out <= color(19 downto 10);
	blue_out <= color(9 downto 0);

	pixel_row_int <= to_integer(unsigned(pixel_row));
	pixel_column_int <= to_integer(unsigned(pixel_column));
	
--------------------------------------------------------------------------------------------	
	
	colors : colorROM
		port map(colorAddress, ROM_clk, color);

--------------------------------------------------------------------------------------------	

	pixelDraw : process(clk) is
	variable my_x_index, my_y_index, my_index, opp_x_index, opp_y_index, opp_index integer;
	begin
	colorAddress <= color_white;
	
	if (pixel_row_int >= 90 and pixel_row_int <= 389) then 
		if (pixel_column_int >= 10 and pixel_column_int <= 309) then
			colorAddress <= color_black;
		end if;
	end if;
	
	for my_x_index in 0 to 9 loop
		for my_y_index in 0 to 9 loop
			if (pixel_row_int >= (91 + 11 * my_y_index) and pixel_row_int <= (99 + 11 * my_y_index)) then 
				if (pixel_column_int >= (11 + 11 * my_x_index) and pixel_column_int <= (19 + 11 * my_x_index)) then
					my_index := my_x_index + 10 * my_y_index;	
					if (myVGA(my_index) = 0) then	
						colorAddress <= color_blue;
					elsif (myVGA(my_index) = 1) then
						colorAddress <= color_black;
					elsif (myVGA(my_index) = 2) then
						colorAddress <= color_red;
					elsif (myVGA(my_index) = 3) then
						colorAddress <= color_cyan;
					elsif (myVGA(my_index) = 4) then
						colorAddress <= color_yellow;
					elsif (myVGA(my_index) = 5) then
						colorAddress <= color_magenta;
					end if;
				end if;
			end if;		
		end loop;
	end loop;
	
	for opp_x_index in 0 to 9 loop
		for opp_y_index in 0 to 9 loop
			if (pixel_row_int >= (91 + 11 * opp_y_index) and pixel_row_int <= (99 + 11 * opp_y_index)) then 
				if (pixel_column_int >= (11 + 11 * opp_x_index) and pixel_column_int <= (19 + 11 * opp_x_index)) then
					opp_index := opp_x_index + 10 * opp_y_index;	
					if (myVGA(opp_index) = 0) then	
						colorAddress <= color_blue;
					elsif (myVGA(opp_index) = 1) then
						colorAddress <= color_black;
					elsif (myVGA(opp_index) = 2) then
						colorAddress <= color_red;
					elsif (myVGA(opp_index) = 3) then
						colorAddress <= color_cyan;
					elsif (myVGA(opp_index) = 4) then
						colorAddress <= color_yellow;
					elsif (myVGA(opp_index) = 5) then
						colorAddress <= color_magenta;
					end if;
				end if;
			end if;		
		end loop;
	end loop;
			
	end process pixelDraw;	

--------------------------------------------------------------------------------------------
	
end architecture behavioral;		