LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ram is 
	port(
			addr: IN INTEGER range 0 to 4;
			clk,we: IN std_logic;
			data_i: IN std_logic_vector (7 downto 0);
			data_o: OUT std_logic_vector (7 downto 0)	
	);
END ram;

ARCHITECTURE behavioral OF ram IS
	TYPE ram_table IS ARRAY ( 0 to 31) OF std_logic_vector(7 downto 0);
	SIGNAL ram_s : ram_table;
	BEGIN
	PROCESS(we,clk,addr)
	BEGIN
	IF clk'event and clk='1' THEN 
	 IF we='1' THEN
		ram_s(addr)<= data_i;
	 END IF;
	 data_o<=ram_s(addr);
		END IF;
	END PROCESS;
	
END behavioral;
	