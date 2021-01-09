----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:10:28 04/18/2018 
-- Design Name: 
-- Module Name:    mux2x1_5B - Behavioral 
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

entity mux2x1_5B is
    Port ( rt : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
			  s : in  STD_LOGIC;

           write_reg : out  STD_LOGIC_VECTOR (4 downto 0));
			  
end mux2x1_5B;

architecture Behavioral of mux2x1_5B is

begin
write_reg <= rt when s='0' else
            rd when s='1' ;

end Behavioral;

