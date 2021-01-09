----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:56:27 04/03/2018 
-- Design Name: 
-- Module Name:    mux2X1 - Behavioral 
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

entity mux2X1 is
    Port ( B : in  STD_LOGIC;
	        Bbar : in  STD_LOGIC;
           Sel : in  STD_LOGIC;
           Bout : out  STD_LOGIC);
end mux2X1;

architecture Behavioral of mux2X1 is

begin
Bout<=B when Sel='0' else
      Bbar when Sel='1' else
		'Z';

end Behavioral;

