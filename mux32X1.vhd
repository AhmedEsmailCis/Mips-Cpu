----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:04 04/05/2018 
-- Design Name: 
-- Module Name:    mux32X1 - Behavioral 
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

entity mux32X1 is
    Port ( R0 : in  STD_LOGIC_VECTOR (31 downto 0);
           R1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R3 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R4 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R5 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R6 : in  STD_LOGIC_VECTOR (31 downto 0);
           R7 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R8 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R9 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R10: in  STD_LOGIC_VECTOR (31 downto 0);
			  R11: in  STD_LOGIC_VECTOR (31 downto 0);
			  R12: in  STD_LOGIC_VECTOR (31 downto 0);
           R13: in  STD_LOGIC_VECTOR (31 downto 0);
			  R14: in  STD_LOGIC_VECTOR (31 downto 0);
			  R15: in  STD_LOGIC_VECTOR (31 downto 0);
			  R16: in  STD_LOGIC_VECTOR (31 downto 0);
			  R17: in  STD_LOGIC_VECTOR (31 downto 0);
			  R18: in  STD_LOGIC_VECTOR (31 downto 0);
           R19: in  STD_LOGIC_VECTOR (31 downto 0);
			  R20: in  STD_LOGIC_VECTOR (31 downto 0);
			  R21: in  STD_LOGIC_VECTOR (31 downto 0);
			  R22: in  STD_LOGIC_VECTOR (31 downto 0);
			  R23: in  STD_LOGIC_VECTOR (31 downto 0);
			  R24: in  STD_LOGIC_VECTOR (31 downto 0);
           R25: in  STD_LOGIC_VECTOR (31 downto 0);
			  R26: in  STD_LOGIC_VECTOR (31 downto 0);
			  R27: in  STD_LOGIC_VECTOR (31 downto 0);
			  R28: in  STD_LOGIC_VECTOR (31 downto 0);
			  R29: in  STD_LOGIC_VECTOR (31 downto 0);
			  R30: in  STD_LOGIC_VECTOR (31 downto 0);
			  R31: in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end mux32X1;

architecture Behavioral of mux32X1 is

begin
 O<=    R0  when S="00000" else
		  R1  when S="00001" else
		  R2  when S="00010" else
		  R3  when S="00011" else
		  R4  when S="00100" else
		  R5  when S="00101" else
		  R6  when S="00110" else
		  R7  when S="00111" else
		  R8  when S="01000" else
		  R9  when S="01001" else
		  R10 when S="01010" else
		  R11 when S="01011" else 
		  R12 when S="01100" else
		  R13 when S="01101" else
		  R14 when S="01110" else
		  R15 when S="01111" else
		  R16 when S="10000" else
		  R17 when S="10001" else
		  R18 when S="10010" else
		  R19 when S="10011" else
		  R20 when S="10100" else
		  R21 when S="10101" else
		  R22 when S="10110" else
		  R23 when S="10111" else
		  R24 when S="11000" else
		  R25 when S="11001" else
		  R26 when S="11010" else
		  R27 when S="11011" else
		  R28 when S="11100" else
		  R29 when S="11101" else
		  R30 when S="11110" else
		  R31 when S="11111" else
		  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
end Behavioral;

