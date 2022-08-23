LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY GateD IS
GENERIC (N:NATURAL := 64);
PORT (a,b : IN std_logic_vector (N-1 downto 0);
		c: OUT std_logic_vector (N-1 downto 0)
		);
END GateD;

ARCHITECTURE beh OF GateD IS
BEGIN
	c<= a NAND b;	
END beh;