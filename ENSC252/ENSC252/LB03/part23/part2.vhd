LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Part2 IS
	PORT (SW: in std_logic_vector(17 downto 0);
			LEDR: out std_logic_vector (17 downto 0));
END Part2;

ARCHITECTURE Behav OF Part2 IS
BEGIN
	 LEDR<= SW;
END Behav;
