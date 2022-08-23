#include <ap_int.h>
#include <stdio.h>
#include <stdlib.h>

typedef ap_int<3> type1;
typedef ap_int<6> type2;


void mult (type1 A[3][3],type1 B[3][3], type2 C[3][3])
{

	#pragma HLS array_partition variable=A block factor=3 dim=2
	#pragma HLS array_partition variable=B block factor=3 dim=2
	#pragma HLS array_partition variable=C block factor=3 dim=2
	
	for (int i=0;i<3;i++){
		for(int j=0;j<3;j++){

			C[i][j]= A[i][j] * B[i][j];
		}
	}
			
};
