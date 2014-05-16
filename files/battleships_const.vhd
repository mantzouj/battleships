library IEEE;
use IEEE.std_logic_1164.all;
--Additional standard or custom libraries go here
package battleships_const is
constant T_SIZE : integer := 30;
constant C_LENGTH : integer := 20;
constant C_WIDTH : integer := 14;
constant B_WIDTH : integer := 5;
constant BULLET_TRAVEL : integer := 8; --must be <= T_SIZE

constant SQUARE_SIZE : integer := 9;
constant HIT		: integer := 2;
constant MISS		: integer := 3;
constant CURSOR	: integer := 4;
constant WATER		: integer := 0;
constant OVERLAP	: integer := 5;
constant SHIP		: integer := 1;
constant DELAY		: integer := 50000;

constant RES		: natural := 20; --20downto0

constant PLACE_S1 : integer := 0;
constant PRE_COMM_S1 : integer := 1;
constant COMM_S1_1 : integer := 2;
constant COMM_S1_2 : integer := 3;
constant COMM_S1_3 : integer := 4;
constant COMM_S1_4 : integer := 5;
constant COMM_S1_5 : integer := 6;
constant COMM_S1_6 : integer := 7;
constant COMM_S1_7 : integer := 8;
constant COMM_S1_8 : integer := 9;
constant COMM_S1_9 : integer := 10;

constant PLACE_S2 : integer := 11;
constant PRE_COMM_S2 : integer := 12;
constant COMM_S2_1 : integer := 13;
constant COMM_S2_2 : integer := 14;
constant COMM_S2_3 : integer := 15;
constant COMM_S2_4 : integer := 16;
constant COMM_S2_5 : integer := 17;
constant COMM_S2_6 : integer := 18;
constant COMM_S2_7 : integer := 19;
constant COMM_S2_8 : integer := 20;
constant COMM_S2_9 : integer := 21;

constant PLACE_S3 : integer := 22;
constant PRE_COMM_S3 : integer := 23;
constant COMM_S3_1 : integer := 24;
constant COMM_S3_2 : integer := 25;
constant COMM_S3_3 : integer := 26;
constant COMM_S3_4 : integer := 27;
constant COMM_S3_5 : integer := 28;
constant COMM_S3_6 : integer := 29;
constant COMM_S3_7 : integer := 30;
constant COMM_S3_8 : integer := 31;
constant COMM_S3_9 : integer := 32;

constant PLACE_S4 : integer := 33;
constant PRE_COMM_S4 : integer := 34;
constant COMM_S4_1 : integer := 35;
constant COMM_S4_2 : integer := 36;
constant COMM_S4_3 : integer := 37;
constant COMM_S4_4 : integer := 38;
constant COMM_S4_5 : integer := 39;
constant COMM_S4_6 : integer := 40;
constant COMM_S4_7 : integer := 41;
constant COMM_S4_8 : integer := 42;
constant COMM_S4_9 : integer := 43;

constant PLACE_S5 : integer := 44;
constant PRE_COMM_S5 : integer := 45;
constant COMM_S5_1 : integer := 46;
constant COMM_S5_2 : integer := 47;
constant COMM_S5_3 : integer := 48;
constant COMM_S5_4 : integer := 49;
constant COMM_S5_5 : integer := 50;
constant COMM_S5_6 : integer := 51;
constant COMM_S5_7 : integer := 52;
constant COMM_S5_8 : integer := 53;
constant COMM_S5_9 : integer := 54;

constant SHOT_SELECT : integer := 99;
constant PRE_COMM_SHOT : integer := 100;
constant COMM_SHOT_1 : integer := 101;
constant COMM_SHOT_2 : integer := 102;
constant COMM_SHOT_3 : integer := 103;
constant COMM_SHOT_4 : integer := 104;
constant COMM_SHOT_5 : integer := 105;
constant COMM_SHOT_6 : integer := 106;
constant COMM_SHOT_7 : integer := 107;
constant COMM_SHOT_8 : integer := 108;

constant GAME_DONE	: integer := 200;

constant TESTING1 : integer := 2000;
constant XXXX : integer := 9999; --dummy

type VGA_vector is array (99 downto 0) of natural range 0 to 7;

--Other constants, types, subroutines, components go here
end package battleships_const;
package body battleships_const is
--Subroutine declarations go here
-- you will not have any need for it now, this package is only for defining -
-- some useful constants
end package body battleships_const;