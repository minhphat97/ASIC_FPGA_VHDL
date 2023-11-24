library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RX is
port(
CLK: IN STD_LOGIC;
RX_LINE: IN STD_LOGIC;
DATA: OUT STD_LOGIC_VECTOR(7 downto 0);
BUSY: OUT STD_LOGIC;
);
end RX;

architecture nehavior of RX is
signal DATAFLL: std_logic_vector(9 downto 0);