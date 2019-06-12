library ieee;
use ieee.std_logic_1164.all;
entity fourbitadder1 is
  port(
    A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    S: out std_logic_vector(3 downto 0);
    Cin: in std_logic);
  end fourbitadder1;
  architecture Behavioral of fourbitadder1 is
    signal Cout:std_logic_vector(3 downto 0):="0000";
    
   begin
S(0) <= A(0) XOR B(0) XOR Cin ;
Cout(0) <= (A(0) AND B(0)) OR (Cin AND A(0)) OR (Cin AND B(0)) ;
S(1) <= A(1) XOR B(1) XOR Cout(0) ;
Cout(1) <= (A(1) AND B(1)) OR (Cout(0) AND A(1)) OR (Cout(0) AND B(1)) ;
S(2) <= A(2) XOR B(2) XOR Cout(1);
Cout(2) <= (A(2) AND B(2)) OR (Cout(1) AND A(2)) OR (Cout(1) AND B(2)) ;
S(3) <= A(3) XOR B(3) XOR Cout(2) ;
Cout(3) <= (A(3) AND B(3)) OR (Cout(2) AND A(3)) OR (Cout(2) AND B(3)) ;


end Behavioral;