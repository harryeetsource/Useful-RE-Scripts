$url1 =  "github.com/hasherezade/pe-bear-releases/releases/download/0.5.5.3/PE-bear_0.5.5.3_x64_win_vs17.zip"
$folder1 = "$env:Temp\PeBear"
$url2 = "https://github.com/x64dbg/x64dbg/releases/download/snapshot/snapshot_2022-08-20_00-05.zip"
$folder2 = "$env:Temp\x64dbg"
$url3 = "https://github.com/PowerShell/PowerShell/releases/download/v7.2.6/PowerShell-7.2.6-win-x64.msi"
$folder3 = "$env:Temp\pwsh"
$url4 = "https://corretto.aws/downloads/latest/amazon-corretto-11-x64-windows-jdk.msi"
$folder4 = "$env:temp\coretto"
$url5 = "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.1.2_build/ghidra_10.1.2_PUBLIC_20220125.zip"
$folder5 = "$env:temp\ghidra"
$url6 = "https://www.winitor.com/tools/pestudio/current/pestudio.zip"
$folder6 = "$env:temp\Pestudio"
$url7 = "https://downloads.sourceforge.net/project/processhacker/processhacker2/processhacker-2.39-setup.exe?ts=gAAAAABjDqDO-lZp4_sXTiC0UBb3nDoYwpTXpOOHu6fk1b02mp_jp2NrScHdsNEMAdmtynCOw6ekSITLMFHpt-B3k-gEFnjf0w%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fprocesshacker%2Ffiles%2Fprocesshacker2%2Fprocesshacker-2.39-setup.exe%2Fdownload"
$folder7 = "$env:temp\ProcHacker"
$url8 = "https://www.7-zip.org/a/7z2201-x64.exe"
$folder8 = "$env:temp\7z"
$url9 = "https://github.com/hasherezade/mal_unpack/releases/download/0.9.5/mal_unpack64.zip"
$folder9 = "$env:temp\malunpack"
$url10 = "https://out7.hex-rays.com/files/idafree77_windows.exe"
$folder10 = "$env:temp\IDA"
$url11 = "https://www.dependencywalker.com/depends22_x64.zip"
$folder11 = "$env:temp\Depends"
$url12 = "https://github.com/dnSpy/dnSpy/releases/download/v6.1.8/dnSpy-net-win64.zip"
$folder12 = "$env:temp\dnspy"
$url13 = "https://download.sysinternals.com/files/Autoruns.zip"
$folder13 = "$env:temp\autoruns"
$url14 = "https://gchq.github.io/CyberChef/CyberChef_v9.37.0.zip"
$folder14 = "$env:temp\cyberchef"
$url15 = "https://github.com/hasherezade/hollows_hunter/releases/download/v0.3.4/hollows_hunter64.zip"
$folder15 = "$env:temp\hollowshunter"
$url16 = "https://github.com/hasherezade/pe_to_shellcode/releases/download/v1.1/pe2shc_1.1.zip"
$folder16 = "$env:temp\pe2shc"
$url17 = "https://github.com/upx/upx/releases/download/v3.96/upx-3.96-win64.zip"
$folder17 = "$env:temp\upx"
$url18 = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
$folder18 = "$env:temp\visualstudio"
$url19 = "https://github.com/horsicq/DIE-engine/releases/download/3.04/die_win64_portable_3.04.zip"
$folder19 = "$env:temp\die"
$url20 = "https://github.com/activescott/lessmsi/releases/download/v1.10.0/lessmsi-v1.10.0.zip"
$folder20 = "$env:temp\lessmsi"
if (Test-Path -Path $folder1) { Write-Host "PEbear directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "PEbear" -ItemType "directory"
Invoke-WebRequest  $url1 -OutFile "$env:Temp\PeBear\PeBear.zip"
Expand-Archive -LiteralPath "$env:temp\PeBear\PeBear.zip" -DestinationPath "$env:temp\Pebear\Pebear\"} 
if (Test-Path -Path $folder2) { Write-Host "x64dbg directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "x64dbg" -ItemType "directory"
Invoke-WebRequest $url2 -OutFile "$env:temp\x64dbg\x64dbg.zip"
Expand-Archive -LiteralPath "$env:temp\x64dbg\x64dbg.zip" -DestinationPath "$env:temp\x64dbg\x64dbg\"}
if (Test-Path -Path $folder3) { Write-Host "NPE directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "pwsh" -ItemType "directory"
Invoke-WebRequest  $url3 -OutFile "$env:Temp\pwsh\pwsh.msi"
Start-Process msiexec.exe /package "$env:Temp\pwsh\pwsh.msi" /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 ENABLE_PSREMOTING=0 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1}
if (Test-Path -Path $folder4) { Write-Host "Coretto directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "coretto" -ItemType "directory"
Invoke-WebRequest  $url4 -OutFile "$env:Temp\coretto\coretto.msi"
Start-Process "$env:Temp\coretto\coretto.msi"}
if (Test-Path -Path $folder5) { Write-Host "ghidra directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "Ghidra" -ItemType "directory"
Invoke-WebRequest  $url5 -OutFile "$env:Temp\Ghidra\ghidra10.2.zip"
Expand-Archive -LiteralPath "$env:temp\ghidra\ghidra10.2.zip" -DestinationPath "$env:temp\ghidra\ghidra\"}
if (Test-Path -Path $folder6) { Write-Host "PEstudio directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "PEstudio" -ItemType "directory"
Invoke-WebRequest  $url6 -OutFile "$env:Temp\PEstudio\Pestudio.zip"
Expand-Archive -LiteralPath "$env:temp\Pestudio\Pestudio.zip" -DestinationPath "$env:temp\Pestudio\Pestudio\"}
if (Test-Path -Path $folder7) { Write-Host "ProcHacker directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "ProcHacker" -ItemType "directory"
Invoke-WebRequest  $url7 -OutFile "$env:Temp\ProcHacker\ProcHackerSetup.exe"
Start-Process "$env:temp\ProcHacker\ProcHackerSetup.exe"}
if (Test-Path -Path $folder8) { Write-Host "7z directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "7z" -ItemType "directory"
Invoke-WebRequest  $url8 -OutFile "$env:Temp\7z\7zsetup.exe"
Start-Process "$env:temp\7z\7zsetup.exe" }
if (Test-Path -Path $folder9) { Write-Host "malunpack directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "malunpack" -ItemType "directory"
Invoke-WebRequest  $url9 -OutFile "$env:Temp\malunpack\malunpack.zip"
Expand-Archive -LiteralPath "$folder9\malunpack.zip" -DestinationPath "$folder9\malunpack\"
}
$folder10 = "$env:temp\IDA"
if (Test-Path -Path $folder10) { Write-Host "IDA directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "IDA" -ItemType "directory"
Invoke-WebRequest  $url10 -OutFile "$env:Temp\IDA\IDA.exe"} 
if (Test-Path -Path $folder11) { Write-Host "Depends directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "Depends" -ItemType "directory"
Invoke-WebRequest  $url11 -OutFile "$env:Temp\Depends\Depends.zip"
Expand-Archive -LiteralPath "$env:temp\depends\depends.zip" -DestinationPath "$env:temp\depends\depends\"} 
if (Test-Path -Path $folder12) { Write-Host "dnspy directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "dnspy" -ItemType "directory"
Invoke-WebRequest  $url12 -OutFile "$env:Temp\dnspy\dnspy.zip"
Expand-Archive -LiteralPath "$env:temp\dnspy\dnspy.zip" -DestinationPath "$env:temp\dnspy\dnspy\"} 
if (Test-Path -Path $folder13) { Write-Host "Autoruns directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "autoruns" -ItemType "directory"
Invoke-WebRequest  $url13 -OutFile "$env:Temp\autoruns\autoruns.zip"
Expand-Archive -LiteralPath "$env:temp\autoruns\autoruns.zip" -DestinationPath "$env:temp\autoruns\autoruns\"} 
if (Test-Path -Path $folder14) { Write-Host "cyberchef directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "cyberchef" -ItemType "directory"
Invoke-WebRequest  $url14 -OutFile "$env:Temp\cyberchef\cyberchef.zip"
Expand-Archive -LiteralPath "$env:temp\cyberchef\cyberchef.zip" -DestinationPath "$env:temp\cyberchef\cyberchef\"}
if (Test-Path -Path $folder15) { Write-Host "hollowshunter directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "hollowshunter" -ItemType "directory"
Invoke-WebRequest  $url15 -OutFile "$folder15\hollowshunter.zip"
Expand-Archive -LiteralPath "$folder15\hollowshunter.zip" -DestinationPath "$folder15\hollowshunter\"}
if (Test-Path -Path $folder16) { Write-Host "pe2shc directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "pe2shc" -ItemType "directory"
Invoke-WebRequest  $url16 -OutFile "$folder16\pe2shc.zip"
Expand-Archive -LiteralPath "$folder16\pe2shc.zip" -DestinationPath "$folder16\pe2shc\"}
if (Test-Path -Path $folder17) { Write-Host "upx directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "upx" -ItemType "directory"
Invoke-WebRequest  $url17 -OutFile "$env:Temp\upx\upx.zip"
Expand-Archive -LiteralPath "$env:temp\upx\upx.zip" -DestinationPath "$env:temp\upx\upx\"} 
if (Test-Path -Path $folder18 ) {Write-Host "Visual Studio directory already exists, skipping"}
else {
New-Item -Path "$env:temp\" -Name "visualstudio" -ItemType "directory"
Invoke-WebRequest $url18 -OutFile "$env:temp\visualstudio\visualstudio.exe"
Start-Process "$env:Temp\visualstudio\visualstudio.exe"}
if (Test-Path -Path $folder19 ) {Write-Host "DIE directory already exists, skipping"}
else {
    New-Item -Path "$env:temp\" -Name "die" -ItemType "directory"
    Invoke-WebRequest $url19 -OutFile "$env:temp\die\die.zip"
    Expand-Archive -LiteralPath "$env:temp\die\die.zip" -DestinationPath "$env:temp\die\"
if (Test-Path -Path $folder20) { Write-Host "lessmsi directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "lessmsi" -ItemType "directory"
Invoke-WebRequest  $url20 -OutFile "$folder20\lessmsi.zip"
Expand-Archive -LiteralPath "$folder20\lessmsi.zip" -DestinationPath "$folder20\lessmsi\"} 
}
