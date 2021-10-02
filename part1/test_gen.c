#include <stdio.h>
#include <time.h>

int addBinary(int a, int b){
	
}

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
        a = rand() % 1024;
        b = rand() % 1024;
        valid_in = rand() % 16 == 15;
		reset = rand()%32 == 30;
		if(reset){
			a = 0; b = 0; valid_out = valid_in; valid_in = 0;f = 0;
        	fprintf(inputData, "%x\n%x\n%x\n%x\n", a, b, valid_in, reset);
        	fprintf(expectedOutput, "%x\n%x\n", valid_out, f);
			continue;
		}
		if(valid_in == 1){
			f += a*b;	
			f = f & (0xFFFFF);
			valid_out = 1;	
		}else{
			valid_out = 0;
		}
    	fprintf(inputData, "%x\n%x\n%x\n%x\n", a, b, valid_in, reset);
    	fprintf(expectedOutput, "%x\n%x\n", valid_out, f & 0xFFFFF); //(1048575));
    }

    fclose(inputData);
    fclose(expectedOutput);
}
