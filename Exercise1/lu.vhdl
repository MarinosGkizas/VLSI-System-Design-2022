LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY lu IS
   PORT (a :IN std_logic_vector(7 downto 0);
	  b :IN std_logic_vector(7 downto 0);
	  Resetn, Clock : IN std_logic ;
	  q1 :OUT std_logic_vector(7 downto 0); -- XOR
	  q2 :OUT std_logic_vector(7 downto 0)); --AND
END lu;

ARCHITECTURE circuit OF lu IS
SIGNAL xor_o,and_o: std_logic_vector(7 downto 0);
    BEGIN
    xor_o <= a XOR b;
    and_o <= a AND b;   	
	PROCESS ( Resetn, Clock)
	BEGIN
	   IF (Resetn = '0') THEN
	   q1 <= "00000000" ;
	   ELSIF rising_edge(Clock) THEN
	   q1 <= xor_o;
	   END IF ;
	END PROCESS ;
	PROCESS ( Resetn, Clock)
	BEGIN
	   IF (Resetn = '0') THEN
	   q2 <= "00000000" ;
	   ELSIF rising_edge(Clock) THEN
	   q2 <= and_o;
	   END IF ;
	END PROCESS ;
END circuit;
