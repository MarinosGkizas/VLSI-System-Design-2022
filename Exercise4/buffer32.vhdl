LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY buffer32 IS
generic ( bits: NATURAL :=32);
port( en3: IN std_logic;
		input: IN std_logic_vector(bits-1 downto 0);
		output : OUT std_logic_vector(bits-1 downto 0));
END ENTITY;

ARCHITECTURE beh OF buffer32 IS
BEGIN 
    PROCESS(en3)
    BEGIN
    IF (en3='1')THEN
	   output<=input;
	ELSE 
	output <= (others=>'Z');	
	END IF;
    END PROCESS;
END beh;