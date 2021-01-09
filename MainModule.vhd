----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:34:44 04/18/2018 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.Mian_Module_PAC.all;
use work.ALUpackage.ALL;
--use work.Alu_Package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
port(
         START : IN  std_logic;
         CLK : IN  std_logic;
         RegFileOut1 : OUT  std_logic_vector(31 downto 0);
         RegFileOut2 : OUT  std_logic_vector(31 downto 0);
         ALUOut : OUT  std_logic_vector(31 downto 0);
         PCOut : OUT  std_logic_vector(31 downto 0);
         DataMemOut : OUT  std_logic_vector(31 downto 0)
        );
end MainModule;

architecture Behavioral of MainModule is
signal temp: STD_LOGIC_VECTOR(31 downto 0);
--signal temp1: STD_LOGIC_VECTOR(31 downto 0);
signal Data: STD_LOGIC_VECTOR(31 downto 0);
signal alu_out: STD_LOGIC_VECTOR(31 downto 0);
signal regf_out1: STD_LOGIC_VECTOR(31 downto 0);
signal regf_out2: STD_LOGIC_VECTOR(31 downto 0);
signal aluop: STD_LOGIC_VECTOR(3 downto 0);
signal OFAG :std_logic;
signal CFLAG:std_logic;
signal ZFLAG:std_logic;
signal Write_enable:std_logic;
--signal writedsel:std_logic;
--signal readdsel:std_logic;
signal readdatam:std_logic_VECTOR(31 downto 0);
signal signex_out: STD_LOGIC_VECTOR(31 downto 0);
signal outmux1: STD_LOGIC_VECTOR(31 downto 0);
signal outmux2: STD_LOGIC_VECTOR(31 downto 0);
signal outmux3: STD_LOGIC_VECTOR(31 downto 0);
--signal MemtoReg:std_logic;
--signal ALUSrc:std_logic;
--signal PCSrc:std_logic;
signal signex_outtemp: STD_LOGIC_VECTOR(31 downto 0);
signal adder_res: STD_LOGIC_VECTOR(31 downto 0);
signal coutadder:std_logic;

signal regdest:std_logic;
signal jmp:std_logic;
signal branch:std_logic;
signal memread:std_logic;
signal memtoreg:std_logic;
signal aluopc:std_logic_vector(1 downto 0);
signal memwrite:std_logic;
signal alusrc:std_logic;
signal regwrite:std_logic;
signal temp1:std_logic;
signal nbranch:std_logic;
signal alu_control_out:std_logic_vector(3 downto 0);
signal outmux4:std_logic_vector(4 downto 0);
signal outadder:std_logic_vector(31 downto 0);
signal afteradd4 :std_logic_vector(31 downto 0);
--j type
signal instaftershift :std_logic_vector(27 downto 0);
signal jumpadd :std_logic_vector(31 downto 0);
signal outmuxjmp :std_logic_vector(31 downto 0);

begin

pc:reg Generic map(32) port map(outmuxjmp,CLK,START,'0',not START,temp);

adder1:Full_adder port map(temp,"00000000000000000000000000000100",afteradd4);
PCOut<=temp;

instmem1:INSTRMEMORY port map(not(START),Data,temp,CLK);
--c:condition port map(Data(31 downto 26),Write_enable);
regfile:RegisterFile port map(Data(25 downto 21), Data(20 downto 16),outmux4 ,regwrite,CLK ,outmux3 ,regf_out1 , 
regf_out2 );
RegFileOut1 <= regf_out1;
RegFileOut2 <= regf_out2;


alu1:ALU port map(regf_out1 , outmux1, alu_control_out ,alu_control_out(2) , alu_out  , CFLAG, ZFLAG , OFAG);
ALUOut <= alu_out;

DM:DATAMEMORY port map(not(START),regf_out2,readdatam,memread,memwrite,alu_out,CLK);
DataMemOut<=readdatam;
Signex:SignExtentionUnit port map(Data(15 downto 0),signex_out);
signex_outtemp<=signex_out(29 downto 0)&"00";
adder:Full_adder port map(afteradd4,signex_outtemp,outadder);
----signExtend
mux1:mux2x1_32B port map(regf_out2,signex_out,alusrc,outmux1);
----branch
mux2:mux2x1_32B port map(afteradd4,outadder,(branch and ZFLAG)or (nbranch and (not ZFLAG)) ,outmux2);
----datamem
mux3:mux2x1_32B port map(alu_out,readdatam,memtoreg,outmux3);
----writereg
mux4:mux2x1_5B port map(Data(20 downto 16),Data(15 downto 11),regdest,outmux4);
control1:Control_Unit port map(Data(31 downto 26),regdest,jmp,branch,memread,memtoreg,aluopc,memwrite,alusrc,regwrite,nbranch);
alu_control1:ALU_Control port map(Data(5 downto 0),aluopc,alu_control_out);

instaftershift<=data(25 downto 0)&"00";
jumpadd<=afteradd4(31 downto 28)&instaftershift;
muxjump:mux2x1_32B port map(outmux2,jumpadd,jmp,outmuxjmp);
end Behavioral;


 