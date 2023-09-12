library ieee;
use ieee.std_logic_1164.all;

entity  TestBCDCount2 is
	port(KEY: in std_logic_vector (1 downto 0);
			SW : in std_logic_vector (0 downto 0);
			LEDR :out std_logic_vector(7 downto 0));
end TestBCDCount2;

architecture bee of TestBCDCount2 is
component BCDcount2 Is
	port ( clear, clock, enable : in std_logic;
			BCD0 : out std_logic_vector (3 downto 0);
			BCD1 : out std_logic_vector (3 downto 0));

End  component;

begin
obj1: BCDcount2 port map(KEY(1), KEY(0),SW(0),LEDR(3 downto 0), LEDR(7 downto 4));
end bee;