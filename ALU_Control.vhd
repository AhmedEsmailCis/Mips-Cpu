----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:01 04/18/2018 
-- Design Name: 
-- Module Name:    ALU_Control - Behavioral 
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

entity ALU_Control is
   Port ( data : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (1 downto 0);
           out_op : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is
signal temp: STD_LOGIC ;
signal temp1: STD_LOGIC ;
signal temp2: STD_LOGIC ;
signal temp3: STD_LOGIC ;
begin
temp2<=data(0)and data(1);
temp3 <=ALUop(1) and temp2 ;
out_op(3)<=temp3;
temp<=ALUop(1) and data(1) ;
out_op(2)<= temp or ALUop(0);

out_op(1)<=not ALUop(1) or not data(2) ;

temp1 <= data(3) or data(0) ;
out_op(0)<=not(temp3) and (ALUop(1) and temp1) ;

end Behavioral;

