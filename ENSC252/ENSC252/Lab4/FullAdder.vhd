--LAB 4 Part 1
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FullAdder IS
port (A,B,C : in std_logic;
		Sum, Carry : out std_logic);
		
END FullAdder;

ARCHITECTURE Beh OF FullAdder IS
BEGIN 
 Sum <= A XOR B XOR C;
 Carry <= (A AND B) OR (B AND C) OR (A AND C);
END Beh;

 