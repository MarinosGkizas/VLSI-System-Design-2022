#include <ap_int.h>
#include <stdio.h>
#include <stdlib.h>

typedef ap_int<8> type1;
typedef ap_int<16> type2;

int i,j;

void mult (type1 A[8][8],type1 B[8][8], type2[8][8]);

int main(){

	type1 A[8][8];
	type1 B[8][8];
	type2 C[8][8];
	type2 C_test[8][8];

	srand(0);

	for (i=0;i<8;i++){
		for (j=0;j<8;j++){
			A[i][j] = (type1)(rand() % 8);
			B[i][j] = (type1)(rand() % 8);
		}
	}

	for (i=0;i<8;i++){
			for(j=0;j<8;j++){
				C_test[i][j]= A[i][j] * B[i][j];
			}
	}
	mult(A,B,C);
	int check=0;
	for (i=0;i<8;i++){
				for(j=0;j<8;j++){
					if(C_test[i][j]!= C[i][j]){
						check=-1;
						printf("Test Failed!");
					}
				}
	}

	for(i=0;i<8;i++){
		for(j=0;j<8;j++){
			printf("A[%d][%d]=%d  \n",i,j,(int)A[i][j]);
			printf("B[%d][%d]=%d \n",i,j,(int)B[i][j]);
			printf("C[%d][%d]=%d \n",i,j,(int)C[i][j]);
			printf("C_test[%d][%d]=%d \n",i,j,(int)C_test[i][j]);
		}
	}
	return check;

}
