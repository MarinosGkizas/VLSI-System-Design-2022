LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
-----------------------------------------------
ENTITY A2 IS
    PORT( a,b : IN std_logic_vector (7 downto 0);
          sel : IN std_logic_vector (1 downto 0);
          x : OUT std_logic_vector (7 downto 0));
END A2;
-----------------------------------------------
ARCHITECTURE A2a OF A2 IS 
BEGIN 
PROCESS(sel)
    BEGIN
    CASE sel IS 
    when "00" => x<= "00000000";
    when "01" => x<=a;
    when "10" => x<=b;
    when "11" => x<="ZZZZZZZZ";
    when OTHERS => x<="UUUUUUUU";
    END CASE;
 END PROCESS;
END A2a;
