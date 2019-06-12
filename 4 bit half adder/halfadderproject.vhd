
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fourBitHalfAdder is
Port ( A: in std_logic_vector(3 downto 0);
B : in std_logic_vector(3 downto 0);
S : out std_logic_vector(3 downto 0);
Carry: out std_logic
);

end fourBitHalfAdder;
architecture Behavioral of fourBitHalfAdder is
signal Cout : std_logic_vector (6 downto 0):="0000000";
signal Sara : std_logic_vector (2 downto 0):="000";
signal Orr : std_logic_vector (1 downto 0):="00";
begin

S(0)<=A(0) xor B(0); 
Cout(0)<=A(0) and B(0);--ha0 bitti.
Sara(0)<=A(1) xor B(1);
Cout(1)<=A(1) and B(1);--ha1 bitti
S(1)<=Cout(0) xor Sara(0);
Cout(2)<=Cout(0) and Sara(0);
Orr(0)<=Cout(1) or Cout(2);
Sara(1)<=A(2) xor B(2);
Cout(3)<=A(2) and B(2);
S(2)<=Orr(0) xor Sara(1);
Cout(4)<=Orr(0) and Sara(1);
Orr(1)<=Cout(3) or Cout(4);
Sara(2)<=A(3) xor B(3);
Cout(5)<=A(3) and B(3);
S(3)<=Orr(1) xor Sara(2);
Cout(6)<=Orr(1) and Sara(2);
Carry<=Cout(5) or Cout(6);

end Behavioral;