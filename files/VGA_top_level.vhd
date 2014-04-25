library IEEE;

use IEEE.std_logic_1164.all;
use WORK.battleships_const.all;

entity VGA_top_level is
	port(
			CLOCK_50 													: in std_logic;
			--VGA 
			VGA_RED, VGA_GREEN, VGA_BLUE 							: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK			: out std_logic;
			myVGA															: in VGA_vector;
			oppVGA														: in VGA_vector
		);
end entity VGA_top_level;

architecture structural of VGA_top_level is

component pixelGenerator is
	port(
			clk, ROM_clk, video_on, eof										: in std_logic;
			pixel_row, pixel_column						    							: in std_logic_vector(9 downto 0);
			red_out, green_out, blue_out												: out std_logic_vector(9 downto 0);
			myVGA																				: in VGA_vector;
			oppVGA																			: in VGA_vector
		);
end component pixelGenerator;

component VGA_SYNC is
	port(
			clock_50Mhz																	: in std_logic;
			horiz_sync_out, vert_sync_out,video_on, pixel_clock, eof		: out std_logic;												
			pixel_row, pixel_column						    						: out std_logic_vector(9 downto 0)
		);
end component VGA_SYNC;

--Signals for VGA sync
signal pixel_row_int 										: std_logic_vector(9 downto 0);
signal pixel_column_int 									: std_logic_vector(9 downto 0);
signal video_on_int											: std_logic;
signal VGA_clk_int											: std_logic;
signal eof														: std_logic;

begin

--------------------------------------------------------------------------------------------

	videoGen : pixelGenerator
		port map(CLOCK_50, VGA_clk_int, video_on_int, eof, pixel_row_int, pixel_column_int, VGA_RED, VGA_GREEN, VGA_BLUE, myVGA, oppVGA);

--------------------------------------------------------------------------------------------
--This section should not be modified in your design.  This section handles the VGA timing signals
--and outputs the current row and column.  You will need to redesign the pixelGenerator to choose
--the color value to output based on the current position.

	videoSync : VGA_SYNC
		port map(CLOCK_50, HORIZ_SYNC, VERT_SYNC, video_on_int, VGA_clk_int, eof, pixel_row_int, pixel_column_int);

	VGA_BLANK <= video_on_int;

	VGA_CLK <= VGA_clk_int;

--------------------------------------------------------------------------------------------	

end architecture structural;
