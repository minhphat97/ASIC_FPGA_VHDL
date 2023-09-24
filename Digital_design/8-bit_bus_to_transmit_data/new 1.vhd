library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity transmit is
	port
	(
		Reset: in std_logic;
		Clock: in std_logic;
		Input: in std_logic_vector(7 downto 0);
		z: out std_logic_vector(7 downto 0);
	);
end transmit;

architecture behavior of transmit is
	signal tmp: std_logic_vector(7 downto 0);
begin
	process(Reset, Clock)
	begin
		if Reset = "0" then
			tmp <= x"0";
		elsif (Clock'EVENT AND Clock = '1') then
			case (Input) is
				when x"A5" => 
					
	
	
	
	
	
	
	
	
	end process;





end behavior;




