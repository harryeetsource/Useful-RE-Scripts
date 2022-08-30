$url1 =  "github.com/hasherezade/pe-bear-releases/releases/download/0.5.5.3/PE-bear_0.5.5.3_x64_win_vs17.zip"
$folder1 = "$env:Temp\PeBear"
$url2 = "https://github.com/x64dbg/x64dbg/releases/download/snapshot/snapshot_2022-04-11_01-01.zip"
$folder2 = "$env:Temp\x64dbg"
$url3 = "https://downloads.novirusthanks.org/files/portables/npe_portable.zip"
$folder3 = "$env:Temp\NPE"
$url4 = "https://corretto.aws/downloads/latest/amazon-corretto-11-x64-windows-jdk.msi"
$folder4 = "$env:temp\coretto"
$url5 = "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.1.2_build/ghidra_10.1.2_PUBLIC_20220125.zip"
$folder5 = "$env:temp\ghidra"
$url6 = "https://www.winitor.com/tools/pestudio/current/pestudio.zip"
$folder6 = "$env:temp\Pestudio"
$url7 = "https://github.com/ProcessHackerRepoTool/nightly-builds-mirror/releases/download/v3.0.4706/processhacker-3.0.4706-setup.exe"
$folder7 = "$env:temp\ProcHacker"
$url8 = "https://www.7-zip.org/a/7z2107-x64.exe"
$folder8 = "$env:temp\7z"
$url9 = "https://github.com/glmcdona/Process-Dump/releases/download/v2.1.1/pd64.exe"
$folder9 = "$env:temp\pd64"
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
$url15 = "https://downloads.novirusthanks.org/files/portables/pe_capture_portable.zip"
$folder15 = "$env:temp\pecapture"
$url16 = "https://downloads.novirusthanks.org/files/portables/file_splitter_joiner_portable.zip"
$folder16 = "$env:temp\filesplit"
$url17 = "https://github.com/upx/upx/releases/download/v3.96/upx-3.96-win64.zip"
$folder17 = "$env:temp\upx"
$url18 = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
$folder18 = "$env:temp\visualstudio"
$url19 = "https://github.com/horsicq/DIE-engine/releases/download/3.04/die_win64_portable_3.04.zip"
$folder19 = "$env:temp\die"
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
New-Item -Path "$env:temp\" -Name "NPE" -ItemType "directory"
Invoke-WebRequest  $url3 -OutFile "$env:Temp\NPE\NPE.zip"
Expand-Archive -LiteralPath "$env:temp\NPE\NPE.zip" -DestinationPath "$env:temp\NPE\NPE\"}
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
if (Test-Path -Path $folder9) { Write-Host "pd64 directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "pd64" -ItemType "directory"
Invoke-WebRequest  $url9 -OutFile "$env:Temp\pd64\pd64.exe"
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
if (Test-Path -Path $folder15) { Write-Host "pecapture directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "pecapture" -ItemType "directory"
Invoke-WebRequest  $url15 -OutFile "$env:Temp\pecapture\pecapture.zip"
Expand-Archive -LiteralPath "$env:temp\pecapture\pecapture.zip" -DestinationPath "$env:temp\pecapture\pecapture\"}
if (Test-Path -Path $folder16) { Write-Host "filesplit directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "filesplit" -ItemType "directory"
Invoke-WebRequest  $url16 -OutFile "$env:Temp\filesplit\filesplit.zip"
Expand-Archive -LiteralPath "$env:temp\filesplit\filesplit.zip" -DestinationPath "$env:temp\filesplit\filesplit\"}
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
}
