
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcdcoder is
Port ( 
  s : in std_logic; -- saat
 A: in std_logic_vector(3 downto 0);
 B: out std_logic_vector(6 downto 0));
end bcdcoder;
architecture Behavioral of bcdcoder is
Begin
Process(s)
Begin
 
If( A="0000" ) Then  B <= "1111110"; 
elsif( A="0001" ) Then  B <= "0110000"; 
elsif( A="0010" ) Then  B <= "1101101"; 
elsif( A="0011" ) Then  B <= "1111001"; 
elsif( A="0100" ) Then  B <= "0110011"; 
elsif( A="0101" ) Then  B <= "1011011"; 
elsif( A="0110" ) Then  B <= "1011111";
elsif( A="0111" ) Then  B <= "1110000"; 
elsif( A="1000" ) Then  B <= "1111111";
elsif( A="1001" ) Then  B <= "1111011";   
end if;
end process;
end Behavioral;
