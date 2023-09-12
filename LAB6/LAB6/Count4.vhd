Library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity Count4 Is
	port ( load, enable, clock : in std_logic;
			D : in std_logic_vector (3 downto 0);
			Q : out std_logic_vector (3 downto 0));
End Count4;


ARCHITECTURE Bee OF Count4 is

signal and_gate : std_logic_vector (2 downto 0);
signal xor_gate, mux, ff: std_logic_vector (3 downto 0);

Begin 
	and_gate(0) <= enable and ff(0);
	and_gate(2 downto 1) <= and_gate(1 downto 0) and ff(2 downto 1);

	xor_gate(0) <= enable xor ff(0);
	xor_gate(3 downto 1) <= and_gate(2 downto 0) xor ff(3 downto 1);
                                                                                                                                     
	mux <= xor_gate when load = '0' else D;

	process(clock)
	begin
	if(rising_edge(clock)) then
		ff <= mux;
	end if;

	Q <= ff;
	end process;
END Bee;
