$url1 =  "https://github.com/hasherezade/pe-bear-releases/releases/download/0.5.5.7/PE-bear_0.5.5.7_x64_win_vs17.zip"
$folder1 = "$env:Temp\PeBear"
$url2 = "https://github.com/x64dbg/x64dbg/releases/download/snapshot/snapshot_2022-10-28_15-42.zip"
$folder2 = "$env:Temp\x64dbg"
$url3 = "https://github.com/PowerShell/PowerShell/releases/download/v7.2.6/PowerShell-7.2.6-win-x64.msi"
$folder3 = "$env:Temp\pwsh"
$url4 = "https://corretto.aws/downloads/latest/amazon-corretto-17-x64-windows-jdk.msi"
$folder4 = "$env:temp\coretto"
$url5 = "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.2_build/ghidra_10.2_PUBLIC_20221101.zip"
$folder5 = "$env:temp\ghidra"
$url6 = "https://www.winitor.com/tools/pestudio/current/pestudio.zip"
$folder6 = "$env:temp\Pestudio"
$url7 = "https://github.com/ProcessHackerRepoTool/nightly-builds-mirror/releases/download/3.0.4953/processhacker-3.0.4953-setup.exe"
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
$url13 = "https://github.com/harryeetsource/sysinternals/archive/refs/heads/main.zip"
$folder13 = "$env:temp\sysinternals"
$url14 = "https://download.sysinternals.com/files/ProcessMonitor.zip"
$folder14 = "$env:temp\procmon"
$url15 = "https://github.com/hasherezade/hollows_hunter/releases/download/v0.3.4/hollows_hunter64.zip"
$folder15 = "$env:temp\hollowshunter"
$url16 = "https://github.com/hasherezade/pe_to_shellcode/releases/download/v1.1/pe2shc_1.1.zip"
$folder16 = "$env:temp\pe2shc"
$url17 = "https://github.com/upx/upx/releases/download/v4.0.0/upx-4.0.0-win64.zip"
$folder17 = "$env:temp\upx"
$url18 = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
$folder18 = "$env:temp\visualstudio"
$url19 = "https://github.com/horsicq/DIE-engine/releases/download/3.04/die_win64_portable_3.04.zip"
$folder19 = "$env:temp\die"
$url20 = "https://github.com/activescott/lessmsi/releases/download/v1.10.0/lessmsi-v1.10.0.zip"
$folder20 = "$env:temp\lessmsi"
$url21 = "https://github.com/mentebinaria/retoolkit/releases/download/2022.04/retoolkit_2022.04_setup.exe"
$folder21 = "$env:temp\retoolkit"
$url22 = "http://www.angusj.com/resourcehacker/reshacker_setup.exe"
$folder22 = "$env:temp\resourcehacker"
$url23 = "https://mh-nexus.de/downloads/HxDSetup.zip"
$folder23 = "$env:temp\hxd"
$url24 = "https://ntcore.com/files/ExplorerSuite.exe"
$folder24 = "$env:temp\explorersuite"
$url25 = "https://github.com/harryeetsource/cryptotester/archive/refs/heads/main.zip"
$folder25 = "$env:temp\cryptotester"
$url26 = "https://www.osforensics.com/downloads/VolatilityWorkbench.zip"
$folder26 = "$env:temp\volatility"
$url27 = "https://github.com/JPCERTCC/Windows-Symbol-Tables/archive/refs/heads/main.zip"
$folder27 = "$env:temp\windowssymbols"
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Tools.lnk")
$Shortcut.TargetPath = "C:\Users\%USERNAME%\appdata\local\temp"
$Shortcut.Save()
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
if (Test-Path -Path $folder3) { Write-Host "pwsh directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "pwsh" -ItemType "directory"
Invoke-WebRequest  $url3 -OutFile "$folder3\pwsh.msi"
Start-Process "$folder3\pwsh.msi" -ArgumentList "/quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 ENABLE_PSREMOTING=0 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1"}
if (Test-Path -Path $folder4) { Write-Host "Coretto directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "coretto" -ItemType "directory"
Start-Process | Invoke-WebRequest  $url4 -OutFile "$env:Temp\coretto\coretto.msi" 
}
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
Start-Process | Invoke-WebRequest  $url7 -OutFile "$folder7\ProcHackerSetup.exe" 
}
if (Test-Path -Path $folder8) { Write-Host "7z directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "7z" -ItemType "directory"
 Invoke-WebRequest  $url8 -OutFile "$env:Temp\7z\7zsetup.exe" Start-Process "$env:Temp\7z\7zsetup.exe"
}
if (Test-Path -Path $folder9) { Write-Host "malunpack directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "malunpack" -ItemType "directory"
Invoke-WebRequest  $url9 -OutFile "$folder9\malunpack.zip"
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
if (Test-Path -Path $folder13) { Write-Host "sysinternals directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "sysinternals" -ItemType "directory"
Invoke-WebRequest  $url13 -OutFile "$folder13\sysinternals.zip"
Expand-Archive -LiteralPath "$env:temp\sysinternals\sysinternals.zip" -DestinationPath "$env:temp\sysinternals\sysinternals\"} 
if (Test-Path -Path $folder14) { Write-Host "cyberchef directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "procmon" -ItemType "directory"
Invoke-WebRequest  $url14 -OutFile "$folder14\procmon.zip"
Expand-Archive -LiteralPath "$folder14\procmon.zip" -DestinationPath "$folder14\procmon\"}
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
if (Test-Path -Path $folder21) {Write-Host "Retoolkit directory exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "retoolkit" -ItemType "directory"
Invoke-Webrequest $url21 -OutFile "$folder21\retoolkit.exe"  Start-Process "$folder21\retoolkit.exe"
}
if (Test-Path -Path $folder22) { Write-Host "resourcehacker directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "resourcehacker" -ItemType "directory"
Invoke-WebRequest  $url22 -OutFile "$env:Temp\resourcehacker\resourcehacker.exe"
if (Test-Path -Path $folder23) { Write-Host "hxd directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "hxd" -ItemType "directory"
Invoke-WebRequest  $url23 -OutFile "$folder23\hxd.zip"
Expand-Archive -LiteralPath "$folder23\hxd.zip" -DestinationPath "$folder23\hxd\"
Start-Process "$folder23\hxd\hxdsetup.exe"
} 
if (Test-Path -Path $folder24) { Write-Host "explorer suite directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "explorersuite" -ItemType "directory"
Invoke-WebRequest  $url24 -OutFile "$folder24\explorersuite.exe"
Start-Process "$folder24\explorersuite.exe"}
if (Test-Path -Path $folder25) { Write-Host "cryptotester directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "cryptotester" -ItemType "directory"
Invoke-WebRequest  $url25 -OutFile "$folder25\main.zip"
Expand-Archive -LiteralPath "$folder25\main.zip" -DestinationPath "$folder25\main\cryptotester\"
Expand-Archive -LiteralPath "$folder25\main\cryptotester\cryptotester-main\cryptotester.zip" -Destinationpath "$folder25\main\cryptotester\testing"}
}
if (Test-Path -Path $folder26) { Write-Host "volatility directory already exists, skipping" }
else {
New-Item -Path "$env:temp\" -Name "volatility" -ItemType "directory"
Invoke-WebRequest  $url26 -OutFile "$env:Temp\volatility\volatility.zip"
Expand-Archive -LiteralPath "$folder26\volatility.zip" -DestinationPath "$folder26\volatility\"
}
$title    = 'Would you like to download windows symbol tables?'
$question = 'Are you sure you want to proceed?'
$choices  = '&Yes', '&No'
$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 0) {
    Write-Host 'confirmed'
Invoke-WebRequest $url27 -Outfile $folder27 }
else
{ Write-host "Runtime Complete"}
