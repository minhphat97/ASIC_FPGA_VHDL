--LAB 4: part 4.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ripple_top IS
port (SW: in std_logic_vector(17 downto 0);
		LEDG : out std_logic_vector(3 downto 0);
		LEDR : out std_logic_vector(3 downto 0);
		HEX0: out std_LOGIC_vector (6 downto 0));		
END ripple_top;

ARCHITECTURE Beh OF ripple_top IS
component ripple_carry IS
port (X0, X1, X2, X3, Y0, Y1, Y2, Y3, Cin : in std_logic;
		S0, S1, S2, S3, Cout : out std_logic);	
END component;		

component SegDecoder IS
	PORT (D : in std_logic_vector(3 downto 0);
			Y : out std_logic_vector (6 downto 0));
END component;

signal s : std_logic_vector(3 downto 0);

BEGIN
obj1:ripple_carry
	port map(X3=> SW(17), X2 => SW (16), X1=> SW(15), X0 => SW(14),
				Y3=> SW(3), Y2 => SW (2), Y1=> SW(1), Y0 => SW(0),
				Cin=>SW(4),
				S3=> s(3), S2 => s (2), S1=> s(1), S0 => s(0),
				Cout=>LEDG(0));
obj2:SegDecoder
	port map(D=>s, Y=>HEX0);
END Beh;

 