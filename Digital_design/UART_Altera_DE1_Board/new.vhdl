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
