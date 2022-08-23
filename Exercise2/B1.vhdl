LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
--------------------------------------------
ENTITY B1 IS
	PORT (a,b,c : IN bit;
		  z :OUT bit);
END B1;
--------------------------------------------	
ARCHITECTURE B1a of B1 IS
BEGIN
    PROCESS(c)
		BEGIN
		IF (c='0') THEN
			z<= a AND b;
		ELSIF (c='1') THEN
			z<= c; 
		ELSE 
		END IF;
	END PROCESS;
END B1a;
