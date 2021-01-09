----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:55:25 04/03/2018 
-- Design Name: 
-- Module Name:    mux4X1 - Behavioral 
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
entity mux4X1 is
 Port ( N1 : in  STD_LOGIC;
		  N2 : in  STD_LOGIC;
		  N3 : in  STD_LOGIC;
		  N4 : in  STD_LOGIC;
		  Sel : in  STD_LOGIC_VECTOR (1 downto 0);
		  Output : out  STD_LOGIC);
end mux4X1;
architecture Behavioral of mux4X1 is

begin
Output<=N1 when Sel="00" else
        N2  when Sel="01" else
		  N3 when  Sel="10" else
		  N4 when  Sel="11" else
		 'Z';

end Behavioral;


