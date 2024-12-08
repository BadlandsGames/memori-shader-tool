import os
import sys

inputfile = sys.argv[1]

os.system("slangc " + inputfile + " -target hlsl -o out.hlsl")
os.system("ShaderConductor.exe -i out.hlsl -o output -t hlsl -s cryengine")
os.system("mv out.hlsl " + inputfile.split(".")[0] + ".hlsl")
os.system("clear")
print("generated file: " + inputfile.split(".")[0] + ".hlsl")