library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART is
port (
CLOCK_50: IN STD_LOGIC;
SW: IN STD_LOGIC_VECTOR(9 downto 0);
KEY: IN STD_LOGIC_VECTOR(3 downto 0);
LEDR: OUT STD_LOGIC_VECTOR(9 downto 0);
LEDG: OUT STD_LOGIC_VECTOR(9 downto 0);
UART_TXD: OUT STD_LOGIC;
UART_RXD: IN STD_LOGIC;
);
end UART;

architecture behavior of UART is
signal TX_DATA: std_logic_vector(7 downto 0);
signal TX_START: std_logic:='0';
signal TX_BUSY: std_logic; --every variable/signal of type 'bit' would be set to '0' at the beginning of each simulation.
signal RX_DATA: std_logic_vector(7 downto 0);
signal RX_BUSY: std_logic;
-------------------------------------------------------------------------------------------------------
component TX
port(
CLK: IN STD_LOGIC;
START: IN STD_LOGIC;
BUSY: OUT STD_LOGIC;
DATA: IN STD_LOGIC_VECTOR(7 downto 0);
TX_LINE: OUT STD_LOGIC
);
end component TX;
-------------------------------------------------------------------------------------------------------
component RX
port(
CLK: IN STD_LOGIC;
RX_LINE: IN STD_LOGIC;
DATA: OUT STD_LOGIC_VECTOR(7 downto 0);
BUSY: OUT STD_LOGIC;
);
end component RX;

begin
C1: TX port map (CLOCK_50,TX_START,TX_BUSY,TX_DATA,UART_TXD);
C2: RX port map (CLOCK_50,UART_RXD,RX_DATA,RX_BUSY); 

process(RX_BUSY)
begin 
if(RX_BUSY'event and RX_BUSY = '0') then
	LEDR(7 downto 0) <= RX_DATA;
end if;
end process;

process(CLOCK_50)
begin
if(CLOCK_50'event and CLOCK_50='1')then
	if(KEY(0) = '0' and TX_BUSY = '0') then
		TX_DATA <= SW(7 downto 0);
		TX_START <= '1';
		LEDG <= TX_DATA;
	else
		TX_START <= '0';
	end if;
end if;
end process;
end behavior;
