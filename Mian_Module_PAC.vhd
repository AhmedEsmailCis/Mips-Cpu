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
package Mian_Module_PAC is

component ALU is
port(
data1 :in std_logic_vector (31 downto 0);
data2 : in std_logic_vector (31 downto 0);
aluop :in std_logic_vector (3 downto 0);
cin :in std_logic;
dataout : out std_logic_vector(31 downto 0);
cflag: out std_logic;
zflag: out std_logic;
oflag: out std_logic);
end component;

component RegisterFile is
    Port ( read_sel1 : in std_logic_vector(4 downto 0);
	 read_sel2 : in std_logic_vector(4 downto 0);
	 write_sel : in std_logic_vector(4 downto 0);
	 write_ena : in std_logic;
    clk: in std_logic;
    write_data: in std_logic_vector(31 downto 0);
    data1: out std_logic_vector(31 downto 0);
    data2: out std_logic_vector(31 downto 0));
end component;

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;


component reg IS
GENERIC (n:NATURAL :=32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	
                CLK, LOD, INC, CLR: IN STD_LOGIC;

	        O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));

END component;


component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);
end component;

 component mux2X1 is
    Port ( B : in  STD_LOGIC;
	        Bbar : in  STD_LOGIC;
           Sel : in  STD_LOGIC;
           Bout : out  STD_LOGIC);
end component;

component SignExtentionUnit is
    Port ( x : in  STD_LOGIC_VECTOR (15 downto 0);
           y : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component Full_adder is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           outadder : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Control_Unit is
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
end component;

component ALU_Control is
   Port ( data : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (1 downto 0);
           out_op : out  STD_LOGIC_VECTOR (3 downto 0));
end component;


component mux2x1_32B is
    Port ( R_type : in  STD_LOGIC_VECTOR (31 downto 0);
           I_type : in  STD_LOGIC_VECTOR (31 downto 0);
			   S : in  STD_LOGIC;
           ALU_data2 : out  STD_LOGIC_VECTOR (31 downto 0));
          
end component;

component mux2x1_5B is
    Port ( rt : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
			  s : in  STD_LOGIC;

           write_reg : out  STD_LOGIC_VECTOR (4 downto 0));
			  
end component;
component ShiftLeft_2 is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
end Mian_Module_PAC;

