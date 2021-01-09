----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:09:06 04/18/2018 
-- Design Name: 
-- Module Name:    GenericReg - Behavioral 
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


----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
ENTITY reg IS

Generic(n:NATURAL :=32);
PORT(
I:IN STD_LOGIC_VECTOR(n-1 downto 0);
CLK,LOD,INC,CLR :IN STD_LOGIC;
O:OUT STD_LOGIC_VECTOR(n-1 downto 0) );
END reg;

ARCHITECTURE BEHAVOIUR OF reg IS
SIGNAL TEMP:STD_LOGIC_VECTOR(n-1 DOWNTO 0);
BEGIN
	PROCESS(CLK)
	BEGIN
		IF(CLK'EVENT AND CLK='1') THEN
			IF(LOD='1') THEN
				TEMP<=I;
				ELSIF (INC='1') THEN
				TEMP<=TEMP+1;
				ELSIF(CLR='1') THEN
				TEMP<= (OTHERS=>'0');
			END IF;
		END IF;
	END PROCESS;
	O<=TEMP;
END BEHAVOIUR;