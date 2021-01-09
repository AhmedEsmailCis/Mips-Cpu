----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:52:52 04/18/2018 
-- Design Name: 
-- Module Name:    Full_adder - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_adder is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           outadder : out  STD_LOGIC_VECTOR (31 downto 0));
end Full_adder;

architecture Behavioral of Full_adder is
 signal  res : STD_LOGIC_VECTOR (32 downto 0);
begin
res<= ('0'&input1)+('0'&input2);
outadder<= res(31 DOWNTO 0);
end Behavioral;
