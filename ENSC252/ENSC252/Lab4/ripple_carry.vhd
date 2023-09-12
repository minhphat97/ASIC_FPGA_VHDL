-- LAB 4: Part 2

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ripple_carry IS
port (X0, X1, X2, X3, Y0, Y1, Y2, Y3, Cin : in std_logic;
		S0, S1, S2, S3, Cout : out std_logic);
		
END ripple_carry;

ARCHITECTURE Beh OF ripple_carry IS
component FullAdder IS
port (A,B,C : in std_logic;
		Sum, Carry : out std_logic);
		
END component;

signal C1, C2, C3: STD_LOGIC;

BEGIN 
obj1: FullAdder
	port map(A => X0, B => Y0, C => Cin, Sum => S0, Carry => C1);
obj2: FullAdder
	port map(A => X1, B => Y1, C => C1, Sum => S1, Carry => C2);
obj3: FullAdder
	port map(A => X2, B => Y2, C => C2, Sum => S2, Carry => C3);
obj4: FullAdder
	port map(A => X3, B => Y3, C => C3, Sum => S3, Carry => Cout);
END Beh;

 