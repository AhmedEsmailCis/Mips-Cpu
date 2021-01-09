----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:56 04/05/2018 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder is
    Port ( s: in  STD_LOGIC_VECTOR (4 downto 0);
           E :in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end Decoder;

architecture Behavioral of Decoder is

begin

O<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" when E='0'     else
   "00000000000000000000000000000001" when s="00000" else
	"00000000000000000000000000000010" when s="00001" else
	"00000000000000000000000000000100" when s="00010" else
	"00000000000000000000000000001000" when s="00011" else
	"00000000000000000000000000010000" when s="00100" else
	"00000000000000000000000000100000" when s="00101" else
	"00000000000000000000000001000000" when s="00110" else
	"00000000000000000000000010000000" when s="00111" else
	"00000000000000000000000100000000" when s="01000" else 
	"00000000000000000000001000000000" when s="01001" else
	"00000000000000000000010000000000" when s="01010" else
	"00000000000000000000100000000000" when s="01011" else
	"00000000000000000001000000000000" when s="01100" else
	"00000000000000000010000000000000" when s="01101" else
	"00000000000000000100000000000000" when s="01110" else
	"00000000000000001000000000000000" when s="01111" else
	"00000000000000010000000000000000" when s="10000" else
	"00000000000000100000000000000000" when s="10001" else
	"00000000000001000000000000000000" when s="10010" else
	"00000000000010000000000000000000" when s="10011" else
	"00000000000100000000000000000000" when s="10100" else
	"00000000001000000000000000000000" when s="10101" else
	"00000000010000000000000000000000" when s="10110" else
	"00000000100000000000000000000000" when s="10111" else
	"00000001000000000000000000000000" when s="11000" else
	"00000010000000000000000000000000" when s="11001" else
	"00000100000000000000000000000000" when s="11010" else
	"00001000000000000000000000000000" when s="11011" else
	"00010000000000000000000000000000" when s="11100" else
	"00100000000000000000000000000000" when s="11101" else
	"01000000000000000000000000000000" when s="11110" else
	"10000000000000000000000000000000" when s="11111";
end Behavioral;

