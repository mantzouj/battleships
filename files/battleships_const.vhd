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

type VGA_vector is array (99 downto 0) of integer range 0 to 7;

--Other constants, types, subroutines, components go here
end package battleships_const;
package body battleships_const is
--Subroutine declarations go here
-- you will not have any need for it now, this package is only for defining -
-- some useful constants
end package body battleships_const;