--A hardwware system uses an 8-bit data bus to transmit data. On each clock 
--the system transmits/receives an 8-bit word. The start of a packet is 
--indicated by the hex value 0xA5, followed by zero or more 0xDE stuffing bytes.
--0xFF indicates that the next byte is the start of the packet payload data, AND
--0x00 indicates that the end of the payload has been reached. The packet completes 
--with a single-byte trailer than can be any value. The bit patterns 0xA5, 0xDE, 0xFF 
--and 0x00 are guaranteed to not occur in the packet payload or in the space between packets.
--Write VHDL or Verilog state machine to process the packet and extract the packet payload data.

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
	type State_type is (A, B, C, D);
	signal y: State_type;
begin
	process(Reset, Clock)
	begin
		if Reset = '0' then
			y <= A;
		elsif (Clock'EVENT AND Clock = '1') then
			case y is
				when A =>
					if Input = x"A5" then
						y <= B;
				when B =>
					if Input = x"DE" then
						y <= B;
					elsif Input = x"FF" then
						y <= C;
				when C =>
					if Input = x"CC" -- Assume Payload Data
						y
					
				
					
					
	
	
	
	
	
	
	
	
	end process;





end behavior;




