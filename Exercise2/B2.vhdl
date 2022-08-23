LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
--------------------------------------------
ENTITY B2 IS
	PORT (a,b,c : IN bit;
		  z :OUT bit);
END B2;
--------------------------------------------
ARCHITECTURE B2a OF B2 IS
BEGIN 
    z<= (a AND b AND (NOT c)) OR (a AND b) OR c;
END B2a;