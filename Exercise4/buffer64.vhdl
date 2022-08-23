LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY buffer64 IS
generic ( bits: NATURAL :=64);
port( en4: IN std_logic;
		input: IN std_logic_vector(bits-1 downto 0);
		output : OUT std_logic_vector(bits-1 downto 0));
END ENTITY;

ARCHITECTURE beh OF buffer64 IS
BEGIN 
	 PROCESS(en4)
    BEGIN
    IF (en4='1')THEN
	   output<=input;
	ELSE 
	output <= (others=>'Z');	
	END IF;
    END PROCESS;
END beh;