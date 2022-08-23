LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY nand1 IS
PORT (inputA :IN std_logic_vector(63 downto 0);
	  inputB :IN std_logic_vector(63 downto 0);
	  outputC :OUT std_logic_vector(63 downto 0));
END nand1;

ARCHITECTURE structural OF nand1 IS
BEGIN
    outputC <= inputA NAND inputB;
END structural;