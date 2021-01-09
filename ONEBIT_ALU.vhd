----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:17:31 04/04/2018 
-- Design Name: 
-- Module Name:    ONEBIT_ALU - Behavioral 
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
use work.oneBitALUPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ONEBIT_ALU is
    Port ( 
	
	       Cin : in  STD_LOGIC;
	       less : in std_logic;
          A : in  STD_LOGIC;
          B : in  STD_LOGIC;
          aluop : in  STD_LOGIC_VECTOR (3 downto 0);
	       Cout : out  STD_LOGIC;
			 set :  out  STD_LOGIC;
          R : out  STD_LOGIC);
end ONEBIT_ALU;

architecture Behavioral of ONEBIT_ALU is
SIGNAL R1: STD_LOGIC;
SIGNAL R2: STD_LOGIC;
SIGNAL R3: STD_LOGIC;
SIGNAL Result: STD_LOGIC;
SIGNAL Aout: STD_LOGIC;
SIGNAL Bout: STD_LOGIC;
SIGNAL CarryOut: STD_LOGIC;
begin
F1: mux2X1 PORT MAP (A,not A,aluop(3),Aout);
F2: mux2X1 PORT MAP (B,not B,aluop(2),Bout);
F3: and_gate PORT MAP (Aout,Bout,R1);
F4: or_gate PORT MAP (Aout,Bout,R2);
F5: adder PORT MAP (Aout,Bout,Cin,CarryOut,R3);
F6: mux4X1 PORT MAP (R1,R2,R3,less,aluop(1 downto 0),Result);
R<= Result;
set<=R3;
Cout<= CarryOut ;
end Behavioral;

