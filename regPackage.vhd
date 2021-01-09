--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package regPackage is
component Decoder is
    Port ( s: in  STD_LOGIC_VECTOR (4 downto 0);
           E :in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component Registers is
PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));

end component;
component mux32X1 is
    Port ( R0 : in  STD_LOGIC_VECTOR (31 downto 0);
           R1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R3 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R4 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R5 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R6 : in  STD_LOGIC_VECTOR (31 downto 0);
           R7 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R8 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R9 : in  STD_LOGIC_VECTOR (31 downto 0);
			  R10: in  STD_LOGIC_VECTOR (31 downto 0);
			  R11: in  STD_LOGIC_VECTOR (31 downto 0);
			  R12: in  STD_LOGIC_VECTOR (31 downto 0);
           R13: in  STD_LOGIC_VECTOR (31 downto 0);
			  R14: in  STD_LOGIC_VECTOR (31 downto 0);
			  R15: in  STD_LOGIC_VECTOR (31 downto 0);
			  R16: in  STD_LOGIC_VECTOR (31 downto 0);
			  R17: in  STD_LOGIC_VECTOR (31 downto 0);
			  R18: in  STD_LOGIC_VECTOR (31 downto 0);
           R19: in  STD_LOGIC_VECTOR (31 downto 0);
			  R20: in  STD_LOGIC_VECTOR (31 downto 0);
			  R21: in  STD_LOGIC_VECTOR (31 downto 0);
			  R22: in  STD_LOGIC_VECTOR (31 downto 0);
			  R23: in  STD_LOGIC_VECTOR (31 downto 0);
			  R24: in  STD_LOGIC_VECTOR (31 downto 0);
           R25: in  STD_LOGIC_VECTOR (31 downto 0);
			  R26: in  STD_LOGIC_VECTOR (31 downto 0);
			  R27: in  STD_LOGIC_VECTOR (31 downto 0);
			  R28: in  STD_LOGIC_VECTOR (31 downto 0);
			  R29: in  STD_LOGIC_VECTOR (31 downto 0);
			  R30: in  STD_LOGIC_VECTOR (31 downto 0);
			  R31: in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component and_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end component;
end regPackage;

package body regPackage is
end regPackage;
