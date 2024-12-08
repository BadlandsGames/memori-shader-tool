import os
import sys

inputfile = sys.argv[1]
outputfile = sys.argv[2]

os.system("slangc " + inputfile + " -target hlsl -o " + outputfile)
os.system("ShaderConductor.exe -i " + outputfile + " -o output -t hlsl -s cryengine")
os.system("clear")