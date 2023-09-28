library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity transmit_tb is
end transmit_tb;

architecture test of transmit_tb is
	component transmit
		port (
			Reset: in std_logic;
			Clock: in std_logic;
			Input: in std_logic_vector(7 downto 0);
			z: out std_logic_vector(7 downto 0)
		);
	end component;
	signal Reset, Clock: std_logic;
	signal Input: std_logic_vector(7 downto 0);
	signal z: std_logic_vector(7 downto 0);

begin
	

end test;