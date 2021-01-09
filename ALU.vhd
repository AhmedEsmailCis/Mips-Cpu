----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:45:46 04/03/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use work.ALUpackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
     PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
end ALU;

architecture Behavioral of ALU is
SIGNAL C0: STD_LOGIC;
SIGNAL R0: STD_LOGIC;
SIGNAL C1: STD_LOGIC;
SIGNAL R1: STD_LOGIC;
SIGNAL C2: STD_LOGIC;
SIGNAL R2: STD_LOGIC;
SIGNAL C3: STD_LOGIC;
SIGNAL R3: STD_LOGIC;
SIGNAL C4: STD_LOGIC;
SIGNAL R4: STD_LOGIC;
SIGNAL C5: STD_LOGIC;
SIGNAL R5: STD_LOGIC;
SIGNAL C6: STD_LOGIC;
SIGNAL R6: STD_LOGIC;
SIGNAL C7: STD_LOGIC;
SIGNAL R7: STD_LOGIC;
SIGNAL C8: STD_LOGIC;
SIGNAL R8: STD_LOGIC;
SIGNAL C9: STD_LOGIC;
SIGNAL R9: STD_LOGIC;
SIGNAL C10: STD_LOGIC;
SIGNAL R10: STD_LOGIC;
SIGNAL C11: STD_LOGIC;
SIGNAL R11: STD_LOGIC;
SIGNAL C12: STD_LOGIC;
SIGNAL R12: STD_LOGIC;
SIGNAL C13: STD_LOGIC;
SIGNAL R13: STD_LOGIC;
SIGNAL C14: STD_LOGIC;
SIGNAL R14: STD_LOGIC;
SIGNAL C15: STD_LOGIC;
SIGNAL R15: STD_LOGIC;
SIGNAL C16: STD_LOGIC;
SIGNAL R16: STD_LOGIC;
SIGNAL C17: STD_LOGIC;
SIGNAL R17: STD_LOGIC;
SIGNAL C18: STD_LOGIC;
SIGNAL R18: STD_LOGIC;
SIGNAL C19: STD_LOGIC;
SIGNAL R19: STD_LOGIC;
SIGNAL C20: STD_LOGIC;
SIGNAL R20: STD_LOGIC;
SIGNAL C21: STD_LOGIC;
SIGNAL R21: STD_LOGIC;
SIGNAL C22: STD_LOGIC;
SIGNAL R22: STD_LOGIC;
SIGNAL C23: STD_LOGIC;
SIGNAL R23: STD_LOGIC;
SIGNAL C24: STD_LOGIC;
SIGNAL R24: STD_LOGIC;
SIGNAL C25: STD_LOGIC;
SIGNAL R25: STD_LOGIC;
SIGNAL C26: STD_LOGIC;
SIGNAL R26: STD_LOGIC;
SIGNAL C27: STD_LOGIC;
SIGNAL R27: STD_LOGIC;
SIGNAL C28: STD_LOGIC;
SIGNAL R28: STD_LOGIC;
SIGNAL C29: STD_LOGIC;
SIGNAL R29: STD_LOGIC;
SIGNAL C30: STD_LOGIC;
SIGNAL R30: STD_LOGIC;
SIGNAL C31: STD_LOGIC;
SIGNAL R31: STD_LOGIC;
SIGNAL Ov: STD_LOGIC;
SIGNAL Zf: STD_LOGIC;
signal SET : std_logic_vector(31 downto 0); 
begin
F0: ONEBIT_ALU PORT MAP (aluop(2),SET(31),data1(0),data2(0),aluop(3 downto 0),C0,SET(0),R0);
F1: ONEBIT_ALU PORT MAP (C0,'0',data1(1),data2(1),aluop(3 downto 0),C1,SET(1),R1);
F2: ONEBIT_ALU PORT MAP (C1,'0',data1(2),data2(2),aluop(3 downto 0),C2,SET(2),R2);
F3: ONEBIT_ALU PORT MAP (C2,'0',data1(3),data2(3),aluop(3 downto 0),C3,SET(3),R3);
F4: ONEBIT_ALU PORT MAP (C3,'0',data1(4),data2(4),aluop(3 downto 0),C4,SET(4),R4);
F5: ONEBIT_ALU PORT MAP (C4,'0',data1(5),data2(5),aluop(3 downto 0),C5,SET(5),R5);
F6: ONEBIT_ALU PORT MAP (C5,'0',data1(6),data2(6),aluop(3 downto 0),C6,SET(6),R6);
F7: ONEBIT_ALU PORT MAP (C6,'0',data1(7),data2(7),aluop(3 downto 0),C7,SET(7),R7);
F8: ONEBIT_ALU PORT MAP (C7,'0',data1(8),data2(8),aluop(3 downto 0),C8,SET(8),R8);
F9: ONEBIT_ALU PORT MAP (C8,'0',data1(9),data2(9),aluop(3 downto 0),C9,SET(9),R9);
F10: ONEBIT_ALU PORT MAP (C9,'0',data1(10),data2(10),aluop(3 downto 0),C10,SET(10),R10);
F11: ONEBIT_ALU PORT MAP (C10,'0',data1(11),data2(11),aluop(3 downto 0),C11,SET(11),R11);
F12: ONEBIT_ALU PORT MAP (C11,'0',data1(12),data2(12),aluop(3 downto 0),C12,SET(12),R12);
F13: ONEBIT_ALU PORT MAP (C12,'0',data1(13),data2(13),aluop(3 downto 0),C13,SET(13),R13);
F14: ONEBIT_ALU PORT MAP (C13,'0',data1(14),data2(14),aluop(3 downto 0),C14,SET(14),R14);
F15: ONEBIT_ALU PORT MAP (C14,'0',data1(15),data2(15),aluop(3 downto 0),C15,SET(15),R15);
F16: ONEBIT_ALU PORT MAP (C15,'0',data1(16),data2(16),aluop(3 downto 0),C16,SET(16),R16);
F17: ONEBIT_ALU PORT MAP (C16,'0',data1(17),data2(17),aluop(3 downto 0),C17,SET(17),R17);
F18: ONEBIT_ALU PORT MAP (C17,'0',data1(18),data2(18),aluop(3 downto 0),C18,SET(18),R18);
F19: ONEBIT_ALU PORT MAP (C18,'0',data1(19),data2(19),aluop(3 downto 0),C19,SET(19),R19);
F20: ONEBIT_ALU PORT MAP (C19,'0',data1(20),data2(20),aluop(3 downto 0),C20,SET(20),R20);
F21: ONEBIT_ALU PORT MAP (C20,'0',data1(21),data2(21),aluop(3 downto 0),C21,SET(21),R21);
F22: ONEBIT_ALU PORT MAP (C21,'0',data1(22),data2(22),aluop(3 downto 0),C22,SET(22),R22);
F23: ONEBIT_ALU PORT MAP (C22,'0',data1(23),data2(23),aluop(3 downto 0),C23,SET(23),R23);
F24: ONEBIT_ALU PORT MAP (C23,'0',data1(24),data2(24),aluop(3 downto 0),C24,SET(24),R24);
F25: ONEBIT_ALU PORT MAP (C24,'0',data1(25),data2(25),aluop(3 downto 0),C25,SET(25),R25);
F26: ONEBIT_ALU PORT MAP (C25,'0',data1(26),data2(26),aluop(3 downto 0),C26,SET(26),R26);
F27: ONEBIT_ALU PORT MAP (C26,'0',data1(27),data2(27),aluop(3 downto 0),C27,SET(27),R27);
F28: ONEBIT_ALU PORT MAP (C27,'0',data1(28),data2(28),aluop(3 downto 0),C28,SET(28),R28);
F29: ONEBIT_ALU PORT MAP (C28,'0',data1(29),data2(29),aluop(3 downto 0),C29,SET(29),R29);
F30: ONEBIT_ALU PORT MAP (C29,'0',data1(30),data2(30),aluop(3 downto 0),C30,SET(30),R30);
F31: ONEBIT_ALU PORT MAP (C30,'0',data1(31),data2(31),aluop(3 downto 0),C31,SET(31),R31);
dataout(0)<=R0;
dataout(1)<=R1;
dataout(2)<=R2;
dataout(3)<=R3;
dataout(4)<=R4;
dataout(5)<=R5;
dataout(6)<=R6;
dataout(7)<=R7;
dataout(8)<=R8;
dataout(9)<=R9;
dataout(10)<=R10;
dataout(11)<=R11;
dataout(12)<=R12;
dataout(13)<=R13;
dataout(14)<=R14;
dataout(15)<=R15;
dataout(16)<=R16;
dataout(17)<=R17;
dataout(18)<=R18;
dataout(19)<=R19;
dataout(20)<=R20;
dataout(21)<=R21;
dataout(22)<=R22;
dataout(23)<=R23;
dataout(24)<=R24;
dataout(25)<=R25;
dataout(26)<=R26;
dataout(27)<=R27;
dataout(28)<=R28;
dataout(29)<=R29;
dataout(30)<=R30;
dataout(31)<=R31;
cflag<=C31;
x: xor_gate PORT MAP (C30,C31,Ov);
oflag<=Ov;
z: Or32Bit PORT MAP (R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15 ,
                     R16,R17,R18,R19,R20,R21,R22,R23,R24,R25,R26,R27,R28,R29,R30,R31,Zf);
zflag<=Zf;

end Behavioral;

