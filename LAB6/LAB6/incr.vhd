library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY incr IS 
	port (clock : in std_logic;
			f: out unsigned (3 downto 0));
END incr;

ARCHITECTURE Bee OF incr is
signal count : unsigned(3 downto 0) := "0000";
begin 
Process (clock)
BEGIN 
	If (clock'event and clock ='1') then 
		count <= count+1;
	end if;
	end process;
	f <= count;
END Bee;