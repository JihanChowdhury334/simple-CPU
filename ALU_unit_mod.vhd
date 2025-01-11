LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit_mod is -- ALU unit includes Reg. 3
port ( 
    clk, res : in std_logic;
    Reg1, Reg2 : in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
    opcode : in std_logic_vector(7 downto 0); -- 8-bit opcode from Decoder
    neg1, neg2 : out std_logic; 
    R1, R2 : out std_logic_vector(3 downto 0) -- 4-bit Result
);
end ALU_unit_mod;

architecture calculation of ALU_unit_mod is
    signal Result : std_logic_vector(7 downto 0);
begin
    process ( clk, res )
    begin
        if res = '1' then
            Result <= "00000000";
        elsif (clk'EVENT AND clk = '1') then
            case opcode is
                when "00000001" =>
                    -- Swap the lower and upper 4 bits of A
                    Result <= Reg1(3 downto 0) & Reg1(7 downto 4);
                when "00000010" =>
                    -- Produce the result of ORing A and B
                    Result <= Reg1 OR Reg2;
                when "00000100" =>
                    -- Decrement B by 5
                    Result <= Reg2 - "00000101";
                when "00001000" =>
                    -- Invert all bits of A
                    Result <= NOT(Reg1);
                when "00010000" =>
                    -- Invert the bit-significance order of A
                    Result <= Reg1(0) & Reg1(1) & Reg1(2) & Reg1(3) &
                              Reg1(4) & Reg1(5) & Reg1(6) & Reg1(7);
                when "00100000" =>
                    -- Find the greater value of A and B
                    if Reg1 > Reg2 then
                        Result <= Reg1;
                    else
                        Result <= Reg2;
                    end if;
                when "01000000" =>
                    -- Produce the difference between A and B
                    Result <= Reg1 - Reg2;
                when "10000000" =>
                    -- Produce the result of XNORing A and B
                    Result <= Reg1 XNOR Reg2;
                when others =>
                    -- Don’t care, do nothing
                    Result <= "00000000";
            end case;
        end if;

        R1 <= '0' & Result(6 downto 4);
        R2 <= '0' & Result(2 downto 0);
        neg1 <= Result(7);
        neg2 <= Result(3);
    end process;
end calculation;
