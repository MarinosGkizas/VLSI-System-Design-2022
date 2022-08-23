LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY GateB IS
GENERIC (N:NATURAL := 16);
PORT (a,b : IN std_logic_vector (N-1 downto 0);
		c: OUT std_logic_vector (N-1 downto 0)
		);
END GateB;

ARCHITECTURE beh OF GateB IS
BEGIN
	c<= a OR b;	
END beh;
