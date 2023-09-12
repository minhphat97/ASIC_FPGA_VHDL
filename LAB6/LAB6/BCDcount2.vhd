Library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity BCDcount2 Is
	port ( clear, clock, enable : in std_logic;
			BCD0 : out std_logic_vector (3 downto 0);
			BCD1 : out std_logic_vector (3 downto 0));

End  BCDcount2;


ARCHITECTURE Bee OF  BCDcount2 is
component Count4 Is
	port ( load, enable, clock : in std_logic;
			D : in std_logic_vector (3 downto 0);
			Q : out std_logic_vector (3 downto 0));
End Component;

signal or_gate , and_gate: std_logic_vector(1 downto 0);
signal q0 : std_logic_vector (3 downto 0);
signal q1 : std_logic_vector (3 downto 0);

Begin
	or_gate(0) <= clear or and_gate(0);
	or_gate(1) <= clear or and_gate(1);
	and_gate(0) <= q0(0) and q0(3);
	and_gate(1) <= q1(0) and q1(3) and and_gate(0);
 Obj1: Count4
 Port map (load=>or_gate(0),enable=>enable,clock=>clock,D=>"0000",Q=>q0);
 Obj2: Count4
 port map (load=>or_gate(1),enable=>and_gate(0),clock=>clock,D=>"0000",Q=>q1);
 
 BCD0 <= q0;
 BCD1 <= q1;

END Bee;
