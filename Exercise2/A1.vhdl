LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
-----------------------------------------------------------
ENTITY A1 IS
	PORT( a :IN std_logic_vector (7 downto 0);
		  b :IN std_logic_vector(7 downto 0);
		  sel :IN std_logic_vector (1 downto 0);
		  x :OUT std_logic_vector (7 downto 0));
END A1;
-----------------------------------------------------------
ARCHITECTURE behavioral OF A1 IS
BEGIN
PROCESS(sel)
    BEGIN 
	   IF (sel = "00") THEN
	       x <= "00000000";
	   ELSIF (sel = "01") THEN 
	       x<=a;
	   ELSIF (sel ="10") THEN
	       x <=b;
	   ELSIF (sel = "11") THEN 
	       x<= "ZZZZZZZZ";
	   ELSE x<= "UUUUUUUU";
	   END IF;
	 END process;
END behavioral;