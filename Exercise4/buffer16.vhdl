LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY buffer16 IS
GENERIC ( bits: NATURAL :=16);
PORT( en2: IN std_logic;
		input: IN std_logic_vector(bits-1 downto 0);
		output : OUT std_logic_vector(bits-1 downto 0));
END ENTITY;

ARCHITECTURE beh OF buffer16 IS
BEGIN 
    PROCESS(en2)
    BEGIN
        IF(en2='1') THEN
            output<=input;
        ELSE output<= (others=>'Z');
        END IF;
    END PROCESS;
END beh;