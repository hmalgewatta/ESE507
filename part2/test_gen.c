#include <stdio.h>
#include <time.h>
#include <math.h>

int main() {
    const int desiredInputs = 10000;
    srand(time(NULL)); // Set random seed based on current time
	int inputDataArr[desiredInputs*4];
	int expectedOutArr[desiredInputs*2];
    FILE *inputData, *expectedOutput;

    inputData = fopen("inputData", "w");
    expectedOutput = fopen("expectedOutput", "w");

    fprintf(expectedOutput, "0\n0\n"); // To match output file
	fprintf(expectedOutput, "0\n0\n");

    int i, a, b, valid_in, reset = 0;
	int f = 0, valid_out = 0;
	
	//Behaviour of MAC
	// On reset clear all registers to 0

    for (i=0; i<desiredInputs-2; i++) {
    	// generate 10bit signed numbers
        a = rand() % 1024 - 512;
        b = rand() % 1024 - 512;
        // randomly reset with 1/32 probability
		reset = rand()%32 == 30;
		if(reset){
			// f immediately reset to 0;
			expectedOutArr[2*(i-1)] = 0;
			valid_out = 1; //inputDataArr[4*(i-2)+2]; 
			valid_in = rand() % 512 != 500;f = 0;
		}else{
			// clear valid_in rarely 
		    valid_in = rand() % 512 != 500;
			if(valid_in == 1){
				f += a*b;
				if (f < -524288){
					f = -524288;
				}else if (f > 524287){
					f = 524287;
				}
				valid_out = 1;	
			}else{
				valid_out = 0;
			}
		}
		inputDataArr[4*i] = a;
		inputDataArr[4*i+1] = b;
		inputDataArr[4*i+2] = valid_in;
		inputDataArr[4*i+3] = reset;
		expectedOutArr[2*i] = valid_out;
		expectedOutArr[2*i+1] = f;
    }

	for (i = 0; i<desiredInputs-2; i++){
		fprintf(inputData, "%x\n%x\n%x\n%x\n", inputDataArr[4*i], inputDataArr[4*i+1], inputDataArr[4*i+2], inputDataArr[4*i+3]);
    	fprintf(expectedOutput, "%x\n%x\n", expectedOutArr[2*i], expectedOutArr[2*i+1]);
	}

    fclose(inputData);
    fclose(expectedOutput);
}
