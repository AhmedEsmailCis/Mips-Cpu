----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:42 04/05/2018 
-- Design Name: 
-- Module Name:    Reg_File - Behavioral 
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
use work.regPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

 entity RegisterFile is
    PORT(
         read_sel1 : IN  std_logic_vector(4 downto 0);
         read_sel2 : IN  std_logic_vector(4 downto 0);
         write_sel : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         clk : IN  std_logic;
         write_data : IN  std_logic_vector(31 downto 0);
         data1 : OUT  std_logic_vector(31 downto 0);
         data2 : OUT  std_logic_vector(31 downto 0)
        );
 END RegisterFile;

architecture Behavioral of RegisterFile is
SIGNAL Control1: std_logic_vector(31 downto 0);
SIGNAL LD0: STD_LOGIC;
SIGNAL LD1: STD_LOGIC;
SIGNAL LD2: STD_LOGIC;
SIGNAL LD3: STD_LOGIC;
SIGNAL LD4: STD_LOGIC;
SIGNAL LD5: STD_LOGIC;
SIGNAL LD6: STD_LOGIC;
SIGNAL LD7: STD_LOGIC;
SIGNAL LD8: STD_LOGIC;
SIGNAL LD9: STD_LOGIC;
SIGNAL LD10:STD_LOGIC;
SIGNAL LD11: STD_LOGIC;
SIGNAL LD12: STD_LOGIC;
SIGNAL LD13: STD_LOGIC;
SIGNAL LD14: STD_LOGIC;
SIGNAL LD15: STD_LOGIC;
SIGNAL LD16: STD_LOGIC;
SIGNAL LD17: STD_LOGIC;
SIGNAL LD18: STD_LOGIC;
SIGNAL LD19: STD_LOGIC;
SIGNAL LD20: STD_LOGIC;
SIGNAL LD21: STD_LOGIC;
SIGNAL LD22: STD_LOGIC;
SIGNAL LD23: STD_LOGIC;
SIGNAL LD24: STD_LOGIC;
SIGNAL LD25: STD_LOGIC;
SIGNAL LD26: STD_LOGIC;
SIGNAL LD27: STD_LOGIC;
SIGNAL LD28: STD_LOGIC;
SIGNAL LD29: STD_LOGIC;
SIGNAL LD30: STD_LOGIC;
SIGNAL LD31: STD_LOGIC;
SIGNAL Routput0: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput1: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput2: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput3: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput4: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput5: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput6: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput7: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput8: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput9: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput10: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput11: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput12: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput13: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput14: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput15: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput16: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput17: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput18: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput19: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput20: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput21: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput22: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput23: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput24: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput25: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput26: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput27: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput28: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput29: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput30: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL Routput31: STD_LOGIC_VECTOR (31 downto 0);
begin
D1: Decoder PORT MAP (write_sel,'1',Control1);
A0: and_gate PORT MAP (write_ena,Control1(0),LD0);
A1: and_gate PORT MAP (write_ena,Control1(1),LD1);
A2: and_gate PORT MAP (write_ena,Control1(2),LD2);
A3: and_gate PORT MAP (write_ena,Control1(3),LD3);
A4: and_gate PORT MAP (write_ena,Control1(4),LD4);
A5: and_gate PORT MAP (write_ena,Control1(5),LD5);
A6: and_gate PORT MAP (write_ena,Control1(6),LD6);
A7: and_gate PORT MAP (write_ena,Control1(7),LD7);
A8: and_gate PORT MAP (write_ena,Control1(8),LD8);
A9: and_gate PORT MAP (write_ena,Control1(9),LD9);
A10: and_gate PORT MAP (write_ena,Control1(10),LD10);
A11: and_gate PORT MAP (write_ena,Control1(11),LD11);
A12: and_gate PORT MAP (write_ena,Control1(12),LD12);
A13: and_gate PORT MAP (write_ena,Control1(13),LD13);
A14: and_gate PORT MAP (write_ena,Control1(14),LD14);
A15: and_gate PORT MAP (write_ena,Control1(15),LD15);
A16: and_gate PORT MAP (write_ena,Control1(16),LD16);
A17: and_gate PORT MAP (write_ena,Control1(17),LD17);
A18: and_gate PORT MAP (write_ena,Control1(18),LD18);
A19: and_gate PORT MAP (write_ena,Control1(19),LD19);
A20: and_gate PORT MAP (write_ena,Control1(20),LD20);
A21: and_gate PORT MAP (write_ena,Control1(21),LD21);
A22: and_gate PORT MAP (write_ena,Control1(22),LD22);
A23: and_gate PORT MAP (write_ena,Control1(23),LD23);
A24: and_gate PORT MAP (write_ena,Control1(24),LD24);
A25: and_gate PORT MAP (write_ena,Control1(25),LD25);
A26: and_gate PORT MAP (write_ena,Control1(26),LD26);
A27: and_gate PORT MAP (write_ena,Control1(27),LD27);
A28: and_gate PORT MAP (write_ena,Control1(28),LD28);
A29: and_gate PORT MAP (write_ena,Control1(29),LD29);
A30: and_gate PORT MAP (write_ena,Control1(30),LD30);
A31: and_gate PORT MAP (write_ena,Control1(31),LD31);

R0: Registers PORT MAP (write_data,clk,LD0,'0','0',Routput0);
R1: Registers PORT MAP (write_data,clk,LD1,'0','0',Routput1);
R2: Registers PORT MAP (write_data,clk,LD2,'0','0',Routput2);
R3: Registers PORT MAP (write_data,clk,LD3,'0','0',Routput3);
R4: Registers PORT MAP (write_data,clk,LD4,'0','0',Routput4);
R5: Registers PORT MAP (write_data,clk,LD5,'0','0',Routput5);
R6: Registers PORT MAP (write_data,clk,LD6,'0','0',Routput6);
R7: Registers PORT MAP (write_data,clk,LD7,'0','0',Routput7);
R8: Registers PORT MAP (write_data,clk,LD8,'0','0',Routput8);
R9: Registers PORT MAP (write_data,clk,LD9,'0','0',Routput9);
R10: Registers PORT MAP (write_data,clk,LD10,'0','0',Routput10);
R11: Registers PORT MAP (write_data,clk,LD11,'0','0',Routput11);
R12: Registers PORT MAP (write_data,clk,LD12,'0','0',Routput12);
R13: Registers PORT MAP (write_data,clk,LD13,'0','0',Routput13);
R14: Registers PORT MAP (write_data,clk,LD14,'0','0',Routput14);
R15: Registers PORT MAP (write_data,clk,LD15,'0','0',Routput15);
R16: Registers PORT MAP (write_data,clk,LD16,'0','0',Routput16);
R17: Registers PORT MAP (write_data,clk,LD17,'0','0',Routput17);
R18: Registers PORT MAP (write_data,clk,LD18,'0','0',Routput18);
R19: Registers PORT MAP (write_data,clk,LD19,'0','0',Routput19);
R20: Registers PORT MAP (write_data,clk,LD20,'0','0',Routput20);
R21: Registers PORT MAP (write_data,clk,LD21,'0','0',Routput21);
R22: Registers PORT MAP (write_data,clk,LD22,'0','0',Routput22);
R23: Registers PORT MAP (write_data,clk,LD23,'0','0',Routput23);
R24: Registers PORT MAP (write_data,clk,LD24,'0','0',Routput24);
R25: Registers PORT MAP (write_data,clk,LD25,'0','0',Routput25);
R26: Registers PORT MAP (write_data,clk,LD26,'0','0',Routput26);
R27: Registers PORT MAP (write_data,clk,LD27,'0','0',Routput27);
R28: Registers PORT MAP (write_data,clk,LD28,'0','0',Routput28);
R29: Registers PORT MAP (write_data,clk,LD29,'0','0',Routput29);
R30: Registers PORT MAP (write_data,clk,LD30,'0','0',Routput30);
R31: Registers PORT MAP (write_data,clk,LD31,'0','0',Routput31);

M1:mux32X1 PORT MAP (Routput0,Routput1,Routput2,Routput3,Routput4,Routput5,Routput6,Routput7,Routput8,Routput9
                     ,Routput10,Routput11,Routput12,Routput13,Routput14,Routput15,Routput16,Routput17,Routput18,Routput19
							,Routput20,Routput21,Routput22,Routput23,Routput24,Routput25,Routput26,Routput27,Routput28,Routput29
							,Routput30,Routput31,read_sel1,data1);
M2:mux32X1 PORT MAP (Routput0,Routput1,Routput2,Routput3,Routput4,Routput5,Routput6,Routput7,Routput8,Routput9
                     ,Routput10,Routput11,Routput12,Routput13,Routput14,Routput15,Routput16,Routput17,Routput18,Routput19
							,Routput20,Routput21,Routput22,Routput23,Routput24,Routput25,Routput26,Routput27,Routput28,Routput29
							,Routput30,Routput31,read_sel2,data2);
end Behavioral;

