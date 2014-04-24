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
constant TESTING1 : integer := 20;


type VGA_vector is array (99 downto 0) of natural range 0 to 7;

--Other constants, types, subroutines, components go here
end package battleships_const;
package body battleships_const is
--Subroutine declarations go here
-- you will not have any need for it now, this package is only for defining -
-- some useful constants
end package body battleships_const;