LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY GateA IS
GENERIC (N:NATURAL := 8);
PORT (a,b : IN std_logic_vector (N-1 downto 0);
		c: OUT std_logic_vector (N-1 downto 0)
		);
END GateA;

ARCHITECTURE beh OF GateA IS
BEGIN
	c<= a AND b;	
END beh;
