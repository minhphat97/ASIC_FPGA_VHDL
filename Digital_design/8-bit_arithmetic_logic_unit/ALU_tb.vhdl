library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU_tb is
end ALU_tb;

architecture behavior of ALU_tb is
	component ALU
		port
		(
			A, B: in std_logic_vector(7 downto 0);
			ALU_Sel: in std_logic_vector(3 downto 0);
			ALU_Out: out std_logic_vector(7 downto 0);
			Carryout: out std_logic
		);
	end component;
	
	signal A, B: std_logic_vector(7 downto 0);
	signal ALU_Sel: std_logic_vector(3 downto 0);
	signal C: std_logic_vector(3 downto 0);
	signal ALU_Out: std_logic_vector(7 downto 0);
	signal Carryout: std_logic; 

begin
	Arithmetic_Logical_Unit: ALU port map(A => A, B => B, ALU_Sel => ALU_Sel, ALU_Out => ALU_Out, Carryout => Carryout);
	process begin
		C <= "0001";
		A <= x"0A";
		B <= x"02";
		ALU_Sel <= x"0";
		wait for 1 ns;
		
		
		for i in 0 to 15 loop
			ALU_Sel <= std_logic_vector(to_unsigned((to_integer(unsigned(ALU_Sel)) + to_integer(unsigned(C))),4));
			wait for 1 ns;
		end loop;
		
		A <= x"F6";
		B <= x"0A";
		
		wait;
	end process;
end behavior;
