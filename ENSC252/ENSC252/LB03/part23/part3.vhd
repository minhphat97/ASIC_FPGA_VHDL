--Lab 3: part3

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Part3 IS
	PORT (SW: in std_logic_vector(17 downto 0);
			KEY: in std_logic_vector(3 downto 0);
			HEX0, HEX1 : out std_logic_vector (6 downto 0));
END Part3;

ARCHITECTURE Behav OF Part3 IS
COMPONENT SegDecoder IS
	PORT (D : in std_logic_vector(3 downto 0);
			Y : out std_logic_vector (6 downto 0));
END COMPONENT;

SIGNAL r : std_logic_vector(7 downto 0);
BEGIN
r <= SW(7 downto 0) WHEN KEY(0) = '1' ELSE SW(17 downto 10);

Obj1:SegDecoder
PORT MAP(D => r(7 downto 4), Y => HEX1);

Obj2:SegDecoder
PORT MAP(D => r(3 downto 0), Y => HEX0);

END Behav;