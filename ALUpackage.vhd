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

package ALUpackage is

component ONEBIT_ALU is
     Port ( 
	       Cin : in  STD_LOGIC;
	       less : in std_logic;
          A : in  STD_LOGIC;
          B : in  STD_LOGIC;
          aluop : in  STD_LOGIC_VECTOR (3 downto 0);
	       Cout : out  STD_LOGIC;
			 set :  out  STD_LOGIC;
          R : out  STD_LOGIC);
end component;
component xor_gate is
Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end component;
component Or32Bit is
    Port ( R0 : in  STD_LOGIC;
           R1 : in  STD_LOGIC;
           R2 : in  STD_LOGIC;
			  R3 : in  STD_LOGIC;
           R4 : in  STD_LOGIC;
			  R5 : in  STD_LOGIC;
           R6 : in  STD_LOGIC;
			  R7 : in  STD_LOGIC;
           R8 : in  STD_LOGIC;
			  R9 : in  STD_LOGIC;
           R10 : in  STD_LOGIC;
			  R11 : in  STD_LOGIC;
           R12 : in  STD_LOGIC;
			  R13 : in  STD_LOGIC;
           R14 : in  STD_LOGIC;
			  R15 : in  STD_LOGIC;
           R16 : in  STD_LOGIC;
			  R17 : in  STD_LOGIC;
           R18 : in  STD_LOGIC;
			  R19 : in  STD_LOGIC;
           R20 : in  STD_LOGIC;
			  R21 : in  STD_LOGIC;
           R22 : in  STD_LOGIC;
			  R23 : in  STD_LOGIC;
           R24 : in  STD_LOGIC;
			  R25 : in  STD_LOGIC;
           R26 : in  STD_LOGIC;
			  R27 : in  STD_LOGIC;
           R28 : in  STD_LOGIC;
			  R29 : in  STD_LOGIC;
           R30 : in  STD_LOGIC;
			  R31 : in  STD_LOGIC;
           Zflag : out  STD_LOGIC);
end component;

end ALUpackage;
package body ALUpackage is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end ALUpackage;
