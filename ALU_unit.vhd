LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
entity ALU_unit is -- ALU unit includes Reg. 3
port ( clk : in std_logic ;
 Reg1, Reg2: in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
 opcode : in std_logic_vector(7 downto 0); -- 8-bit opcode from Decoder
 neg1, neg2 : out std_logic; 
 R1, R2 : out std_logic_vector(3 downto 0)); -- 4-bit Result
end ALU_unit ;
architecture calculation of ALU_unit is
signal Result : std_logic_vector(7 downto 0);
begin
process (clk)
begin
if (clk'EVENT AND clk = '1') then
case opcode is
when "00000001" =>
Result <= Reg1 + Reg2;
when "00000010" =>
Result <= Reg1 - Reg2;
when "00000100" =>
Result <= NOT(Reg1);
when "00001000" =>
Result <= Reg1 NAND Reg2;
when "00010000" =>
Result <= Reg1 NOR Reg2;
when "00100000" =>
Result <= Reg1 AND Reg2;
when "01000000" =>
Result <= Reg1 XOR Reg2;
when "10000000" =>
Result <= Reg1 OR Reg2;
when others =>
-- Don’t care, do nothing
end case ;
end if ;

R1 <= '0' & Result(6 downto 4);
R2 <= '0' & Result(2 downto 0);
neg1 <= Result(7);
neg2 <= Result(3);
end process ;
end calculation ;