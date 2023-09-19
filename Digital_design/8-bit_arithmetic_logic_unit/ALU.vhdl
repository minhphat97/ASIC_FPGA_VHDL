library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU is
	generic(N
	port
	(
		A, B: in std_logic_vector(7 downto 0);
		ALU_Sel: in std_logic_vector(3 downto 0);
		ALU_Out: out std_logic_vector(7 downto 0);
		Carryout: out std_logic;
	);
end ALU;

architecture behavior of ALU is
	signal ALU_Result: std_logic_vector(7 downto 0);
	signal temp: std_logic_vector(8 downto 0);
	
begin
	process (A,B,ALU_Sel)
	begin
		case(ALU_Sel)is
		when "0000" =>
			ALU_Result <= A + B;
		when "0001" =>
			ALU_Result <= A - B;
		when "0010" =>
			ALU_Result <= std_logic_vector(to_unsigned((to_integer(unsigned(A)) * to_integer(unsigned(B))),8));
		when "0011" =>
			ALU_Result <= std_logic_vector(to_unsigned((to_integer(unsigned(A)) * to_integer(unsigned(B))),8));


end behavior;