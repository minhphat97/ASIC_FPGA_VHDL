library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RX is
port(
CLK: IN STD_LOGIC;
RX_LINE: IN STD_LOGIC;
DATA: OUT STD_LOGIC_VECTOR(7 downto 0);
BUSY: OUT STD_LOGIC;
);
end RX;

architecture nehavior of RX is
signal DATAFLL: std_logic_vector(9 downto 0);
signal RX_FLG: std_logic:='0';
signal PRSCL: integer range 0 to 5208:=0;
signal INDEX: integer range 0 to 9:=0;
begin
process(CLK)
begin
if (CLK'event and CLK='1')then
	if (RX_FLG = '0' and RX_LINE = '0') then
		INDEX <= 0;
		PRSCL <= 0;
		BUSY <= '1';
		RX_FLG <= '1';
	end if;
	
	if (RX_FLG = '1') then
		DATAFILL(INDEX) <= RX_LINE;
	
	end if;







end if;
end process;
end behavior;