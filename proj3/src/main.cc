// ESE 507 Project 3 Handout Code
// You may not redistribute this code

// Getting started:
// The main() function contains the code to read the parameters.
// For Parts 1 and 2, your code should be in the genLayer() function. Please
// also look at this function to see an example for how to create the ROMs.
//
// For Part 3, your code should be in the genAllLayers() function.

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>
#include <cstring>
#include <assert.h>
#include <math.h>
#include <array>
#include <memory>
#include <chrono>
#include <ctime>
#include <limits>
using namespace std;

// Function prototypes
void printUsage();
void genLayer(int N, int M, int T, int P, vector<int> &constvector, string modName, ofstream &os);
int genLayerPart1(int N, int M, int T, int P, vector<int> &constvector, string modName, string romName, ofstream &os);
void genAllLayers(int N, int M1, int M2, int M3, int T, int A, vector<int> &constVector, string modName, ofstream &os);
void readConstants(ifstream &constStream, vector<int> &constvector);
void genROM(vector<int> &constVector, int bits, string modName, ofstream &os);
void includeCommonModules(ofstream &os);
void includeParameterizedTopModule(int T, string modName, string subModName1, string subModName2, string subModName3, ofstream &os);
void calPExhaustive(int N, int M1, int M2, int M3, int B, int &P1, int &P2, int &P3);

int main(int argc, char *argv[])
{

    // If the user runs the program without enough parameters, print a helpful message
    // and quit.
    if (argc < 6)
    {
        printUsage();
        return 1;
    }

    int mode = atoi(argv[1]);

    ifstream const_file;
    ofstream os;
    vector<int> constVector;

    //----------------------------------------------------------------------
    // Look here for Part 1 and 2
    if (((mode == 1) && (argc == 6)) || ((mode == 2) && (argc == 7)))
    {

        // Modes 1 and 2: Generate one layer

        // --------------- read parameters, etc. ---------------
        int N = atoi(argv[2]);
        int M = atoi(argv[3]);
        int T = atoi(argv[4]);

        int P;

        if (mode == 1)
        {
            P = 1;
            const_file.open(argv[5]);

            if (const_file.is_open() != true)
            {
                cout << "ERROR reading constant file " << argv[5] << endl;
                return 1;
            }
        }
        else
        {
            P = atoi(argv[5]);
            const_file.open(argv[6]);

            if (const_file.is_open() != true)
            {
                cout << "ERROR reading constant file " << argv[6] << endl;
                return 1;
            }
        }

        // Read the constants out of the provided file and place them in the constVector vector
        readConstants(const_file, constVector);

        string out_file = "conv_" + to_string(N) + "_" + to_string(M) + "_" + to_string(T) + "_" + to_string(P) + ".sv";

        os.open(out_file);
        os.close();
        os.open(out_file, ios::app);
        if (os.is_open() != true)
        {
            cout << "ERROR opening " << out_file << " for write." << endl;
            return 1;
        }
        auto start = std::chrono::system_clock::now();
        // Some computation here
        auto end = std::chrono::system_clock::now();

        std::chrono::duration<double> elapsed_seconds = end - start;
        std::time_t end_time = std::chrono::system_clock::to_time_t(end);

        os << "// Generated  " << std::ctime(&end_time) << endl;
        // -------------------------------------------------------------
        includeCommonModules(os);
        // call the genLayer function you will write to generate this layer
        string modName = "conv_" + to_string(N) + "_" + to_string(M) + "_" + to_string(T) + "_" + to_string(P);
        genLayer(N, M, T, P, constVector, modName, os);
    }
    //--------------------------------------------------------------------

    // ----------------------------------------------------------------
    // Look here for Part 3
    else if ((mode == 3) && (argc == 9))
    {

        // Mode 3: Generate three layer with given dimensions and interconnect them

        // --------------- read parameters, etc. ---------------
        int N = atoi(argv[2]);
        int M1 = atoi(argv[3]);
        int M2 = atoi(argv[4]);
        int M3 = atoi(argv[5]);
        int T = atoi(argv[6]);
        int A = atoi(argv[7]);
        const_file.open(argv[8]);
        if (const_file.is_open() != true)
        {
            cout << "ERROR reading constant file " << argv[8] << endl;
            return 1;
        }
        readConstants(const_file, constVector);

        string out_file = "net_" + to_string(N) + "_" + to_string(M1) + "_" + to_string(M2) + "_" + to_string(M3) + "_" + to_string(T) + "_" + to_string(A) + ".sv";

        os.open(out_file);
        if (os.is_open() != true)
        {
            cout << "ERROR opening " << out_file << " for write." << endl;
            return 1;
        }
        // -------------------------------------------------------------

        string mod_name = "net_" + to_string(N) + "_" + to_string(M1) + "_" + to_string(M2) + "_" + to_string(M3) + "_" + to_string(T) + "_" + to_string(A);

        // call the genAllLayers function
        genAllLayers(N, M1, M2, M3, T, A, constVector, mod_name, os);
    }
    //-------------------------------------------------------

    else
    {
        printUsage();
        return 1;
    }

    // close the output stream
    os.close();
}

// Read values from the constant file into the vector
void readConstants(ifstream &constStream, vector<int> &constvector)
{
    string constLineString;
    while (getline(constStream, constLineString))
    {
        int val = atoi(constLineString.c_str());
        constvector.push_back(val);
    }
}

void calPExhaustive(int N, int M1, int M2, int M3, int B, int &P1, int &P2, int &P3)
{
    int tMac1 = M1+2;
    int tMac2 = M2+2;
    int tMac3 = M3+2;
    int L1 = N - M1 + 1;
    int L2 = L1 - M2 + 1;
    int L3 = L2 - M3 + 1;
    int timeForFirstOut = std::numeric_limits<int>::max();
    int temp = timeForFirstOut;
    int i, j, k;
    cout << "L1 L2 L3" << L1 << "," << L2 << "," << L3 << endl;

    if (B < 3)
    {
        cout << "Wrong B" << endl;
        return;
    }
    for (i = 1; i <= L1; ++i)
    {
        if (L1 % i != 0)
            continue;
        for (j = 1; j <= L2; ++j)
        {
            for (k = 1; k <= std::min(L3, std::max(B - i - j, 0)); k++)
            {
                if (k <= 0 || L2 % j != 0 || L3 % k != 0)
                    continue;
                cout << "i j k" << i << "," << j << "," << k << endl;
                temp = N + tMac1 * L1 / i + L1 + tMac2 * L2 / j + L2 + tMac3 * L3 / k + L3;
                if (temp < timeForFirstOut)
                {
                    timeForFirstOut = temp;
                    P1 = i;
                    P2 = j;
                    P3 = k;
                    cout << "i j k" << i << "," << j << "," << k << endl;
                }
            }
        }
    }
}

// Generate a ROM based on values constVector.
// Values should each be "bits" number of bits.
void genROM(vector<int> &constVector, int bits, string modName, ofstream &os)
{

    int numWords = constVector.size();
    int addrBits = ceil(log2(numWords));

    os << "module " << modName << "(clk, addr, z);" << endl;
    os << "   input clk;" << endl;
    os << "   input [" << addrBits - 1 << ":0] addr;" << endl;
    os << "   output logic signed [" << bits - 1 << ":0] z;" << endl;
    os << "   always_ff @(posedge clk) begin" << endl;
    os << "      case(addr)" << endl;
    int i = 0;
    for (vector<int>::iterator it = constVector.begin(); it < constVector.end(); it++, i++)
    {
        if (*it < 0)
            os << "        " << i << ": z <= -" << bits << "'d" << abs(*it) << ";" << endl;
        else
            os << "        " << i << ": z <= " << bits << "'d" << *it << ";" << endl;
    }
    os << "      endcase" << endl
       << "   end" << endl
       << "endmodule" << endl
       << endl;
}

void includeCommonModules(ofstream &os)
{
    string templateFile = "proj3_common.sv";

    std::ifstream f(templateFile);

    if (f.is_open())
        os << f.rdbuf();
}

void includeParameterizedTopModule(int T, string modName, string subModName1, string subModName2, string subModName3, ofstream &os)
{
    string templateFile = "3layer_top.sv";
    string tempFile = "tempFile1.txt";
    string myCmd = "cat " + templateFile;

    myCmd += "| sed 's/<TOP_MOD_NAME>/" + modName + "/g; ";
    myCmd += " s/<GEN_LAYER_1>/" + subModName1 + "/g;";
    myCmd += " s/<GEN_LAYER_2>/" + subModName2 + "/g;";
    myCmd += " s/<GEN_LAYER_3>/" + subModName3 + "/g;";
    myCmd += " s/<T>/" + to_string(T) + "/g;";
    myCmd += "' > " + tempFile;
    system(myCmd.c_str());

    std::ifstream f(tempFile);

    if (f.is_open())
        os << f.rdbuf();
}

int genLayerPart1(int N, int M, int T, int P, vector<int> &constVector, string modName, string romName, ofstream &os)
{

    string templateFile = "conv_template_part2.sv";
    // string out_file = "conv_" + to_string(N) + "_" + to_string(M) + "_" + to_string(T) + "_" + to_string(P) + ".sv";
    string tempFile = "tempFile.txt";
    string myCmd = "cat " + templateFile;

    myCmd += "| sed 's/<CONV_MOD_NAME>/" + modName + "/g; ";
    myCmd += " s/<T>/" + to_string(T) + "/g;";
    myCmd += " s/<SIZE_F>/" + to_string(M) + "/g;";
    myCmd += " s/<SIZE_X>/" + to_string(N) + "/g;";
    myCmd += " s/<F_ROM_MOD_NAME>/" + romName + "/g;";
    myCmd += " s/<P>/" + to_string(P) + "/g;";
    myCmd += "' > " + tempFile;
    system(myCmd.c_str());

    std::ifstream f(tempFile);

    if (f.is_open())
        os << f.rdbuf();
}

// Parts 1 and 2
// Here is where you add your code to produce one convolution
void genLayer(int N, int M, int T, int P, vector<int> &constVector, string modName, ofstream &os)
{
    // You will need to generate ROM(s) with values from the pre-stored constant values.
    // Here is code that demonstrates how to do this for the simple case where you want to put all of
    // the filter values f into one ROM.

    // Check there are enough values in the constant file.
    if (M > constVector.size())
    {
        cout << "ERROR: constVector does not contain enough data for the requested design" << endl;
        cout << "The design parameters requested require " << M << " numbers, but the provided data only have " << constVector.size() << " constants" << endl;
        assert(false);
    }

    // Generate a ROM for f with constants in constVector, T bits, and the given name
    string romModName = modName + "_f_rom";
    genLayerPart1(N, M, T, P, constVector, modName, romModName, os);
    genROM(constVector, T, romModName, os);
}

// Part 3: Generate a hardware system with three convolutions interconnected.
// Layer 1: Input length: N,  filter length: M1, output length: L1 = N-M1+1
// Layer 2: Input length: L1, filter length: M2, output length: L2 = L1-M2+1
// Layer 3: Input length: M2, filter length: M3, output length: L3 = L2-M3+1
// T is the number of bits
// A is the number of multipliers your overall design may use.
// Your goal is to build the highest-throughput design that uses A or fewer multipliers
// constVector holds all the constants for your system (all three layers, in order)
void genAllLayers(int N, int M1, int M2, int M3, int T, int A, vector<int> &constVector, string modName, ofstream &os)
{

    // Here you will write code to figure out the best values to use for P1, P2, and P3, given
    // mult_budget.
    int P1 = 1; // replace this with your optimized value
    int P2 = 1; // replace this with your optimized value
    int P3 = 1; // replace this with your optimized value

    // output common modules
    auto startTime = std::chrono::system_clock::now();
    std::time_t end_time = std::chrono::system_clock::to_time_t(startTime);

    os << "// Generated  " << std::ctime(&end_time) << endl;
    includeCommonModules(os);

    // -------------------------------------------------------------------------
    // Split up constVector for the three layers.

    // The first layer's values are entries 0 to M1-1.
    int start = 0;
    int stop = M1;
    vector<int> constVector1(&constVector[start], &constVector[stop]);

    // The filter values f for layer 2 will have length M2.
    start = stop;
    stop = start + M2;
    vector<int> constVector2(&constVector[start], &constVector[stop]);

    // The filter values f for layer 2 will have length M3.
    start = stop;
    stop = start + M3;
    vector<int> constVector3(&constVector[start], &constVector[stop]);

    if (stop > constVector.size())
    {
        cout << "ERROR: constVector does not contain enough data for the requested design" << endl;
        cout << "The design parameters requested require " << stop << " numbers, but the provided data only have " << constVector.size() << " constants" << endl;
        assert(false);
    }
    // --------------------------------------------------------------------------
    // calculate optimum P1, P2, P3 for given multiplier budget
    calPExhaustive(N, M1, M2, M3, A, P1, P2, P3);

    cout << "P1, P2, P3: " << P1 << "," << P2 << "," << P3 << endl;

    // generate the three layer modules
    string subModName1 = "layer1_" + to_string(N) + "_" + to_string(M1) + "_" + to_string(T) + "_" + to_string(P1);
    genLayer(N, M1, T, P1, constVector1, subModName1, os);
    int L1 = N - M1 + 1;

    string subModName2 = "layer2_" + to_string(L1) + "_" + to_string(M2) + "_" + to_string(T) + "_" + to_string(P2);
    genLayer(L1, M2, T, P2, constVector2, subModName2, os);

    int L2 = L1 - M2 + 1;
    string subModName3 = "layer3_" + to_string(L2) + "_" + to_string(M3) + "_" + to_string(T) + "_" + to_string(P3);
    genLayer(L2, M3, T, P3, constVector3, subModName3, os);

    // include top module
    includeParameterizedTopModule(T, modName, subModName1, subModName2, subModName3, os);

    // You will need to add code in the module at the top of this function to stitch together insantiations of these three modules
}

void printUsage()
{
    cout << "Usage: ./gen MODE ARGS" << endl
         << endl;

    cout << "   Mode 1: Produce one convolution module (Part 1)" << endl;
    cout << "      ./gen 1 N M T const_file" << endl;

    cout << "   Mode 2: Produce one convolution module with parallelism (Part 2)" << endl;
    cout << "      ./gen 2 N M T P const_file" << endl;

    cout << "   Mode 3: Produce a system with three interconnected convolution modules (Part 3)" << endl;
    cout << "      Arguments: N, M1, M2, M3, T, B, const_file" << endl;
    cout << "      See project description for explanation of parameters." << endl;
    cout << "              e.g.: ./gen 3 16 4 5 6 15 16 const.txt" << endl
         << endl;

    cout << "      See project description for explanation of parameters." << endl
         << endl;
}
