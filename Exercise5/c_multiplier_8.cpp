#include <ap_int.h>
#include <stdio.h>
#include <stdlib.h>

typedef ap_int<8> type1;
typedef ap_int<16> type2;


void mult (type1 A[8][8],type1 B[8][8], type2 C[8][8])
{
	
	for (int i=0;i<8;i++){
		for(int j=0;j<8;j++){
			C[i][j]= A[i][j] * B[i][j];
		}
	}
			
};