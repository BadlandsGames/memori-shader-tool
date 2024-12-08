#include <iostream>
using namespace std;

int main(int argc, char* argv[]) {
    string inputfile = argv[1];
    string outputfile = argv[2];
    string cmd1 = "";
    string cmd2 = "";
    cmd1.append("slangc");
    cmd1.append(" ");
    cmd1.append(inputfile);
    cmd1.append(" ");
    cmd1.append("-target");
    cmd1.append(" ");
    cmd1.append("hlsl");
    cmd1.append(" ");
    cmd1.append("-o");
    cmd1.append(" ");
    cmd1.append(outputfile);
    cmd2.append("ShaderConductor.exe");
    cmd2.append(" ");
    cmd2.append("-i");
    cmd2.append(" ");
}