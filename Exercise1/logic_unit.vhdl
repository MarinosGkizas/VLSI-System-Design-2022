LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY logic_unit IS
   PORT (a :IN std_logic_vector(7 downto 0);
	  b :IN std_logic_vector(7 downto 0);
	  xor_o :OUT std_logic_vector(7 downto 0);
	  and_o :OUT std_logic_vector(7 downto 0));
END logic_unit;

ARCHITECTURE circuit OF logic_unit IS
    BEGIN
    xor_o <= a XOR b;
    and_o <= a AND b;
END circuit;
	  