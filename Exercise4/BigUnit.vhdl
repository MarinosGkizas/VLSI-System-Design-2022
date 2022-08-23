LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE std.standard.all;

ENTITY  BigUnit IS
GENERIC (N: NATURAL :=120);
PORT( x,y : IN std_logic_vector (N-1 downto 0);
        s: IN std_logic_vector(1 downto 0);
		z : OUT std_logic_vector (N-1 downto 0)
		);
END BigUnit;

ARCHITECTURE beh OF BigUnit IS
SIGNAL a1,b1: std_logic_vector (7 downto 0);
SIGNAL a2,b2: std_logic_vector (15 downto 0);
SIGNAL a3,b3: std_logic_vector (31 downto 0);
SIGNAL a4,b4: std_logic_vector (63 downto 0);
SIGNAL en1,en2,en3,en4: std_logic;

-- COMPONENT GateA

COMPONENT GateA IS
PORT (a,b : IN std_logic_vector (7 downto 0);
		c: OUT std_logic_vector (7 downto 0)
		);
END COMPONENT;

-- COMPONENT GateB

COMPONENT GateB IS
PORT (a,b : IN std_logic_vector (15 downto 0);
		c: OUT std_logic_vector (15 downto 0)
		);
END COMPONENT;

-- COMPONENT GateC

COMPONENT GateC IS
PORT (a,b : IN std_logic_vector (31 downto 0);
		c: OUT std_logic_vector (31 downto 0)
		);
END COMPONENT;

-- COMPONENT GateD

COMPONENT GateD IS
PORT (a,b : IN std_logic_vector (63 downto 0);
		c: OUT std_logic_vector (63 downto 0)
		);
END COMPONENT;

COMPONENT buffer8 IS
generic ( bits: NATURAL :=8);
port( en1: IN std_logic;
		input: IN std_logic_vector(bits-1 downto 0);
		output : OUT std_logic_vector(bits-1 downto 0));
END COMPONENT;

COMPONENT buffer16 IS
generic ( bits: NATURAL :=16);
port( en2: IN std_logic;
		input: IN std_logic_vector(bits-1 downto 0);
		output : OUT std_logic_vector(bits-1 downto 0));
END COMPONENT;

COMPONENT buffer32 IS
generic ( bits: NATURAL :=32);
port( en3: IN std_logic;
		input: IN std_logic_vector(bits-1 downto 0);
		output : OUT std_logic_vector(bits-1 downto 0));
END COMPONENT;

COMPONENT buffer64 IS
generic ( bits: NATURAL :=64);
port( en4: IN std_logic;
		input: IN std_logic_vector(bits-1 downto 0);
		output : OUT std_logic_vector(bits-1 downto 0));
END COMPONENT;


BEGIN
PROCESS(s)
BEGIN
CASE (s) IS 
WHEN "00" => en1<='1'; en2<='0'; en3<='0'; en4<='0';
WHEN "01" => en1<='0'; en2<='1'; en3<='0'; en4<='0';
WHEN "10" => en1<='0'; en2<='0'; en3<='1'; en4<='0';
WHEN "11" => en1<='0'; en2<='0'; en3<='0'; en4<='1';
WHEN OTHERS => null;
END CASE;
END PROCESS;

b8_a: buffer8 PORT MAP(en1,x(7 downto 0),a1);
b8_b: buffer8 PORT MAP(en1,y(7 downto 0),b1);

b16_a: buffer16 PORT MAP(en2,x(23 downto 8),a2);
b16_b: buffer16 PORT MAP(en2,y(23 downto 8),b2);

b32_a: buffer32 PORT MAP(en3,x(55 downto 24),a3);
b32_b: buffer32 PORT MAP(en3,y(55 downto 24),b3);

b64_a: buffer64 PORT MAP(en4,x(119 downto 56),a4);
b64_b: buffer64 PORT MAP(en4,y(119 downto 56),b4);

comp1: GateA PORT MAP(a1,b1,z(7 downto 0));
comp2: GateB PORT MAP(a2,b2,z(23 downto 8));
comp3: GateC PORT MAP(a3,b3,z(55 downto 24));
comp4: GateD PORT MAP(a4,b4,z(119 downto 56));

END beh;