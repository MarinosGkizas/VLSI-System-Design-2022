LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY buffer8 IS
generic ( bits: NATURAL :=8);
port( en1: IN std_logic;
		input: IN std_logic_vector(bits-1 downto 0);
		output : OUT std_logic_vector(bits-1 downto 0));
END ENTITY;

ARCHITECTURE beh OF buffer8 IS
BEGIN 
	PROCESS(en1)
    BEGIN
    IF (en1='1')THEN
	   output<=input;
	ELSE 
	output <= (others=>'Z');	
	END IF;
    END PROCESS;
END beh;