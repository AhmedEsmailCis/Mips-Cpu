----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:32:01 04/18/2018 
-- Design Name: 
-- Module Name:    SignExtentionUnit - Behavioral 
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

entity SignExtentionUnit is
    Port ( x : in  STD_LOGIC_VECTOR (15 downto 0);
           y : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExtentionUnit;

architecture Behavioral of SignExtentionUnit is

begin
y<="0000000000000000"&x when x(15)='0' else
   "1111111111111111"&x ;


end Behavioral;

