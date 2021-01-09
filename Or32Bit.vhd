----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:21:41 04/04/2018 
-- Design Name: 
-- Module Name:    Or32Bit - Behavioral 
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

entity Or32Bit is
    Port ( R0 : in  STD_LOGIC;
           R1 : in  STD_LOGIC;
           R2 : in  STD_LOGIC;
			  R3 : in  STD_LOGIC;
           R4 : in  STD_LOGIC;
			  R5 : in  STD_LOGIC;
           R6 : in  STD_LOGIC;
			  R7 : in  STD_LOGIC;
           R8 : in  STD_LOGIC;
			  R9 : in  STD_LOGIC;
           R10 : in  STD_LOGIC;
			  R11 : in  STD_LOGIC;
           R12 : in  STD_LOGIC;
			  R13 : in  STD_LOGIC;
           R14 : in  STD_LOGIC;
			  R15 : in  STD_LOGIC;
           R16 : in  STD_LOGIC;
			  R17 : in  STD_LOGIC;
           R18 : in  STD_LOGIC;
			  R19 : in  STD_LOGIC;
           R20 : in  STD_LOGIC;
			  R21 : in  STD_LOGIC;
           R22 : in  STD_LOGIC;
			  R23 : in  STD_LOGIC;
           R24 : in  STD_LOGIC;
			  R25 : in  STD_LOGIC;
           R26 : in  STD_LOGIC;
			  R27 : in  STD_LOGIC;
           R28 : in  STD_LOGIC;
			  R29 : in  STD_LOGIC;
           R30 : in  STD_LOGIC;
			  R31 : in  STD_LOGIC;
           Zflag : out  STD_LOGIC);
end Or32Bit;

architecture Behavioral of Or32Bit is
SIGNAL Z: STD_LOGIC;
begin
Z<= R0 or R1 or R2 or R3 or R4 or R5 or R6 or R7 or R8 or R9 or R10 or R11 or R12 or R13 or R14 or R15 or R16 or
    R17 or R18 or R19 or R20 or R21 or R22 or R23 or R24 or R25 or R26 or R27 or R28 or R29 or R30 or R31 ;
Zflag<=not Z;
end Behavioral;

