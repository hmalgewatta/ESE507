#include <stdio.h>
#include <time.h>
#include <math.h>

int main() {
    int desiredInputs = 1000;
    srand(time(NULL)); // Set random seed based on current time

    FILE *inputData, *expectedOutput;

    inputData = fopen("inputData", "w");
    expectedOutput = fopen("expectedOutput", "w");

    fprintf(expectedOutput, "0\n0\n"); // To match output file
	fprintf(expectedOutput, "0\n0\n");

    int i, a, b, valid_in, reset = 0;
	int f = 0, valid_out = 0;

    for (i=0; i<desiredInputs; i++) {
        a = rand() % 512;
        b = rand() % 512;
        a = a*pow(-1,a%2);
        b = b*pow(-1,b%2);
		reset = rand()%32 == 30;
		if(reset){
			a = 0; b = 0; valid_out = 0; valid_in = 0;f = 0;
        	fprintf(inputData, "%x\n%x\n%x\n%x\n", a, b, valid_in, reset);
        	fprintf(expectedOutput, "%x\n%x\n", valid_out, f);
			continue;
		}
        valid_in = rand() % 512 != 500;
		if(valid_in == 1){
			f += a*b;
			printf("%d*%d = %d %x\n", a, b, f,f);
			if (f < -524288){
				f = -524288;
			}else if (f > 524287){
				f = 524287;
			}
			valid_out = 1;	
		}else{
			valid_out = 0;
		}
    	fprintf(inputData, "%x\n%x\n%x\n%x\n", a, b, valid_in, reset);
    	fprintf(expectedOutput, "%x\n%x\n", valid_out, f); //(1048575));
    }

    fclose(inputData);
    fclose(expectedOutput);
}
