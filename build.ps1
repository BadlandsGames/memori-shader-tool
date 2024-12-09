Write-Host "Enter your operating system:"
$choice_os = Read-Host -Prompt "choice"

if($choice_os -eq "win") {
    cl /EHsc compiler.cpp
    ren compiler.exe MemoriShaderTool.exe
    mkdir MemoriShaderTool
    move MemoriShaderTool.exe MemoriShaderTool\MemoriShaderTool.exe
    move ShaderConductor.exe MemoriShaderTool\ShaderConductor.exe
} elseif($choice_os -eq "linux") {
    g++ -o MemoriShaderTool.elf compiler.cpp
    git clone https://github.com/microsoft/ShaderConductor.git
    cd ShaderConductor
    objcopy --input-format=pei-x86-64 --output-format=elf64-x86-64 ShaderConductor.dll ShaderConductor.elf
} else {
    Write-Host "Error: Operating System doesn't exist."
}