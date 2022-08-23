ENTITY full_adder IS
	PORT (A,B,Cin: IN BIT; 
	      Sout,Cout: OUT BIT
	      );
END full_adder;

ARCHITECTURE circuit OF full_adder IS
BEGIN
	Sout<=(A XOR B) XOR Cin;
	Cout<= (A AND B) OR ((A XOR B) AND Cin);
END circuit;