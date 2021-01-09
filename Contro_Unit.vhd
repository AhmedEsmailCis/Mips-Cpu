----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:48:11 04/18/2018 
-- Design Name: 
-- Module Name:    Contro_Unit - Behavioral 
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
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Control_Unit is
    Port ( conin : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
			  Jump : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_VECTOR (1 downto 0);
           MemWrite : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
			  notBranch : out  STD_LOGIC);
end Control_Unit;

architecture Behavioral of Control_Unit is
signal R_TYPE: std_logic;
signal LW: std_logic;
signal SW: std_logic;
signal Bran: std_logic;
signal J_TYPE: std_logic;
signal nbranch: std_logic;

begin
R_TYPE <= not conin(5) and not conin(4) and not conin(3) and not conin(2) and not conin(1) and not conin(0);
LW<= conin(5) and not conin(4) and not conin(3) and not conin(2) and conin(1) and conin(0);
SW<= conin(5) and not conin(4) and conin(3) and not conin(2) and conin(1) and conin(0);
Bran<= not conin(5) and not conin(4) and not conin(3) and conin(2) and not conin(1) and not conin(0);
J_TYPE<= not conin(5) and not conin(4) and not conin(3) and not conin(2) and conin(1) and not conin(0);
nbranch<=not conin(5)and not conin(4) and not conin(3) and conin(2) and not conin(1) and conin(0);

RegDst<=R_TYPE ;
Jump<=J_TYPE;
ALUSrc<=LW or SW ;
MemtoReg<=LW ;
RegWrite<=R_TYPE or LW ;
MemRead <=LW ;
MemWrite<=SW ;
Branch<=Bran ;
ALUOp(1) <= R_TYPE ;
ALUOp(0) <= Bran or nbranch ;
notBranch<=nbranch;
end Behavioral;

