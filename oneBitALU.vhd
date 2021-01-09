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
use IEEE.STD_LOGIC_unsigned.all;
package oneBitALUPackage is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--
component adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC);
end component;
component and_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end component;
component or_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end component;
component mux2X1 is
   Port ( B : in  STD_LOGIC;
	        Bbar : in  STD_LOGIC;
           Sel : in  STD_LOGIC;
           Bout : out  STD_LOGIC);
end component;
component mux4X1 is
 Port ( N1 : in  STD_LOGIC;
		  N2 : in  STD_LOGIC;
		  N3 : in  STD_LOGIC;
		  N4 : in  STD_LOGIC;
		  Sel : in  STD_LOGIC_VECTOR (1 downto 0);
		  Output : out  STD_LOGIC);
end component;


end oneBitALUPackage;

package body oneBitALUPackage is
 
end oneBitALUPackage;
