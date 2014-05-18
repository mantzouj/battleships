library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.battleships_const.all;

entity pixelGenerator is
	port(
			clk, ROM_clk, video_on, eof					 				: in std_logic;
			pixel_row, pixel_column											: in std_logic_vector(9 downto 0);
			red_out, green_out, blue_out									: out std_logic_vector(9 downto 0);
			myVGA																	: in VGA_vector;
			oppVGA																: in VGA_vector;
			game_over, winner, tie											: in std_logic;
			placing_on															: in std_logic;
			-- 1 for on
			-- 0 for off
			placeShip_num														: in std_logic_vector(2 downto 0)
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

signal char_addr : std_logic_vector(6 downto 0);
signal row_addr : std_logic_vector(3 downto 0);
signal rom_addr : std_logic_vector(10 downto 0);
signal bit_addr : std_logic_vector(2 downto 0);
signal font_bit : std_logic;

signal dataOutA : std_logic_vector(7 downto 0);
-- strapped to 0
signal writeEnableA : std_logic;
signal dataInA : std_logic_vector(7 downto 0);

-- signals for game over
signal char_addr_w : std_logic_vector(6 downto 0);
signal row_addr_w : std_logic_vector(3 downto 0);
signal bit_addr_w : std_logic_vector(2 downto 0);
signal gameOverW_on : std_logic;

-- signals for game over
signal char_addr_l : std_logic_vector(6 downto 0);
signal row_addr_l : std_logic_vector(3 downto 0);
signal bit_addr_l : std_logic_vector(2 downto 0);
signal gameOverL_on : std_logic;

-- signals for game over
signal char_addr_t : std_logic_vector(6 downto 0);
signal row_addr_t : std_logic_vector(3 downto 0);
signal bit_addr_t : std_logic_vector(2 downto 0);
signal gameOverT_on : std_logic;

-- signals for place ship
signal char_addr_p : std_logic_vector(6 downto 0);
signal row_addr_p : std_logic_vector(3 downto 0);
signal bit_addr_p : std_logic_vector(2 downto 0);
signal placeShip_on : std_logic;

-- signals for illegal legend
signal char_addr_i : std_logic_vector(6 downto 0);
signal row_addr_i : std_logic_vector(3 downto 0);
signal bit_addr_i : std_logic_vector(2 downto 0);
signal illegal_on : std_logic;

component fontROM is
	generic(
		addrWidth: integer;
		dataWidth: integer
	);
	port(
			clkA: in std_logic;
			writeEnableA: in std_logic;                         -- strap to 0
			addrA: in std_logic_vector(10 downto 0);
			dataOutA: out std_logic_vector(7 downto 0);
			dataInA: in std_logic_vector(7 downto 0)  -- strap to 0
		);
end component fontROM;

begin

dataInA <= "00000000";
writeEnableA <= '0';



gameOverW_on <= '1' when unsigned(pixel_row)(9 downto 5) = 5 and
								unsigned(pixel_column)(9 downto 4) < 32 and 
								unsigned(pixel_column)(9 downto 4) > 15 else
					'0';
row_addr_w <= std_logic_vector(pixel_row(4 downto 1));
bit_addr_w <= std_logic_vector(pixel_column(3 downto 1));
with pixel_column(7 downto 4) select
	char_addr_w <=
		"1011001" when "0000", -- Y
		"1101111" when "0001", -- o
		"1110101" when "0010", -- u
		"0000000" when "0011", -- 
		"1110111" when "0100", -- w
		"1101001" when "0101", -- i
		"1101110" when "0110", -- n
		"0010001" when "0111", -- !
		"0000000" when others; 
		
--------------------------------------------------------------------------------------------
gameOverL_on <= '1' when unsigned(pixel_row)(9 downto 5) = 5 and
								unsigned(pixel_column)(9 downto 4) < 32 and 
								unsigned(pixel_column)(9 downto 4) > 15 else
					'0';
row_addr_l <= std_logic_vector(pixel_row(4 downto 1));
bit_addr_l <= std_logic_vector(pixel_column(3 downto 1));
with pixel_column(7 downto 4) select
	char_addr_l <=
		"1011001" when "0000", -- Y
		"1101111" when "0001", -- o
		"1110101" when "0010", -- u
		"0000000" when "0011", -- 
		"1101100" when "0100", -- l
		"1101111" when "0101", -- o
		"1110011" when "0110", -- s
		"1100101" when "0111", -- e
		"0010001" when "1000", -- !
		"0000000" when others; 
		
--------------------------------------------------------------------------------------------
gameOverT_on <= '1' when unsigned(pixel_row)(9 downto 5) = 5 and
								unsigned(pixel_column)(9 downto 4) < 32 and 
								unsigned(pixel_column)(9 downto 4) > 15 else
					'0';
row_addr_t <= std_logic_vector(pixel_row(4 downto 1));
bit_addr_t <= std_logic_vector(pixel_column(3 downto 1));
with pixel_column(7 downto 4) select
	char_addr_t <=
		"1000111" when "0000", -- I
		"1100001" when "0001", -- t
		"1101101" when "0010", -- '
		"1100101" when "0011", -- s
		"0000000" when "0100", -- 
		"1001111" when "0101", -- a
		"1110110" when "0110", -- 
		"1100101" when "0111", -- t
		"1110010" when "1000", -- i
		"1100101" when "1001", -- e
		"0010001" when "1010", -- !
		"0000000" when others; 
		
--------------------------------------------------------------------------------------------
		
placeShip_on <= '1' when unsigned(pixel_row)(9 downto 5) = 0 and 
								unsigned(pixel_column)(9 downto 4) < 16 else
					'0';
row_addr_p <= std_logic_vector(pixel_row(4 downto 1));
bit_addr_p <= std_logic_vector(pixel_column(3 downto 1));
with pixel_column(7 downto 4) select
	char_addr_p <=
		"1010000" when "0000", -- P
		"1101100" when "0001", -- l
		"1100001" when "0010", -- a
		"1100011" when "0011", -- c
		"1100101" when "0100", -- e
		"0000000" when "0101", -- 
		"1010011" when "0110", -- S
		"1101000" when "0111", -- h
		"1101001" when "1000", -- i
		"1110000" when "1001", -- p
		"0000000" when "1010", -- 
		"0110" & placeShip_num when "1011", -- [num]
		"0000000" when others; 


--------------------------------------------------------------------------------------------

illegal_on <= '1' when unsigned(pixel_row)(9 downto 5) = 14 and 
								unsigned(pixel_column)(9 downto 4) < 16 else
					'0';
row_addr_i <= std_logic_vector(pixel_row(4 downto 1));
bit_addr_i <= std_logic_vector(pixel_column(3 downto 1));
with pixel_column(7 downto 4) select
	char_addr_i <=
		"1001001" when "0000", -- I
		"1101100" when "0001", -- l
		"1101100" when "0010", -- l
		"1100101" when "0011", -- e
		"1100111" when "0100", -- g
		"1100001" when "0101", -- a
		"1101100" when "0110", -- l
		"0000000" when others; 
		

--------------------------------------------------------------------------------------------
	
	red_out <= color(29 downto 20);
	green_out <= color(19 downto 10);
	blue_out <= color(9 downto 0);

	pixel_row_int <= to_integer(unsigned(pixel_row));
	pixel_column_int <= to_integer(unsigned(pixel_column));
	
--------------------------------------------------------------------------------------------	
	
	colors : colorROM
		port map(colorAddress, ROM_clk, color);
	font_unit : fontROM
		generic map (addrWidth => 11,
							dataWidth => 8)
		port map (clk, writeEnableA, rom_addr, dataOutA, dataInA);

--------------------------------------------------------------------------------------------	

	pixelDraw : process(clk, myVGA, oppVGA, pixel_row_int, pixel_column_int, game_over, winner, tie) is
	variable my_x_index, my_y_index, my_index, opp_x_index, opp_y_index, opp_index : integer;
	begin
	if (game_over='1') then
		if (winner='0') then
			colorAddress <= color_green;
			if gameOverW_on = '1' then
				char_addr <= char_addr_w;
				row_addr <= row_addr_w;
				bit_addr <= bit_addr_w;
				if font_bit = '1' then
					colorAddress <= color_black;
				end if;
			end if;
		else
			colorAddress <= color_red;
			if gameOverL_on = '1' then
				char_addr <= char_addr_l;
				row_addr <= row_addr_l;
				bit_addr <= bit_addr_l;
				if font_bit = '1' then
					colorAddress <= color_black;
				end if;
			end if;
		end if;
		if (tie='1') then
			colorAddress <= color_cyan;
			if gameOverT_on = '1' then
				char_addr <= char_addr_t;
				row_addr <= row_addr_t;
				bit_addr <= bit_addr_t;
				if font_bit = '1' then
					colorAddress <= color_black;
				end if;
			end if;
		end if;
	else
		colorAddress <= color_white;
	end if;	
	
	if (pixel_row_int >= 90 and pixel_row_int <= 390 and pixel_column_int >= 10 and pixel_column_int <= 310) then 
			colorAddress <= color_black;
	end if;
	if (pixel_row_int >= 90 and pixel_row_int <= 390 and pixel_column_int >= 330 and pixel_column_int <= 630) then 
			colorAddress <= color_black;
	end if;

	for my_x_index in 0 to 9 loop
		for my_y_index in 0 to 9 loop
			if (pixel_row_int >= (91 + 30 * my_y_index) and pixel_row_int <= (119 + 30 * my_y_index) and pixel_column_int >= (11 + 30 * my_x_index) and pixel_column_int <= (39 + 30 * my_x_index)) then 
					my_index := my_x_index + 10 * my_y_index;	
					CASE myVGA(my_index) IS
						WHEN 0 => colorAddress <= color_blue;
						WHEN 1 => colorAddress <= color_black;
						WHEN 2 => colorAddress <= color_red;
						WHEN 3 => colorAddress <= color_cyan;
						WHEN 4 => colorAddress <= color_yellow;
						WHEN 5 => colorAddress <= color_magenta;
						WHEN others => null;
					end CASE;
			end if;		
		end loop;
	end loop;

	for opp_x_index in 0 to 9 loop
		for opp_y_index in 0 to 9 loop
			if (pixel_row_int >= (91 + 30 * opp_y_index) and pixel_row_int <= (119 + 30 * opp_y_index) and pixel_column_int >= (331 + 30 * opp_x_index) and pixel_column_int <= (359 + 30 * opp_x_index)) then 
					opp_index := opp_x_index + 10 * opp_y_index;	
					CASE oppVGA(opp_index) IS
						WHEN 0 => colorAddress <= color_blue;
						WHEN 1 => colorAddress <= color_black;
						WHEN 2 => colorAddress <= color_red;
						WHEN 3 => colorAddress <= color_cyan;
						WHEN 4 => colorAddress <= color_yellow;
						WHEN 5 => colorAddress <= color_magenta;
						WHEN others => null;
					end CASE;
			end if;		
		end loop;
	end loop;
	
	if placing_on = '1' then
		if placeShip_on = '1' then
			char_addr <= char_addr_p;
			row_addr <= row_addr_p;
			bit_addr <= bit_addr_p;
			if font_bit = '1' then
				colorAddress <= color_black;
			end if;
		end if;
	end if;
	
	if illegal_on = '1' then
		char_addr <= char_addr_i;
		row_addr <= row_addr_i;
		bit_addr <= bit_addr_i;
		if font_bit = '1' then
			colorAddress <= color_magenta;
		end if;
	end if;
		
end process pixelDraw;	

--------------------------------------------------------------------------------------------
rom_addr <= char_addr & row_addr;
font_bit <= dataOutA(to_integer(unsigned(not bit_addr)));
	
end architecture behavioral;		
