LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY GateC IS
GENERIC (N:NATURAL := 32);
PORT (a,b : IN std_logic_vector (N-1 downto 0);
		c: OUT std_logic_vector (N-1 downto 0)
		);
END GateC;

ARCHITECTURE beh OF GateC IS
BEGIN
	c<= a NOR b;	
END beh;