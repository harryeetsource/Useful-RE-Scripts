$folder1 = "$env:ProgramFiles\Powershell"
$url1 = "https://github.com/PowerShell/PowerShell/releases/download/v7.2.3/PowerShell-7.2.3-win-x64.msi"
$folder2 = "$env:ProgramFiles\clamav"
$url2 = "https://www.clamav.net/downloads/production/clamav-0.105.0.win.x64.zip"
function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}
if ((Test-Admin) -eq $false)  {Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -executionpolicy bypass -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
}
     else {
        Write-Host "Already running as Local Admin"
    }

if (Test-Path -Path $folder1) { Write-Host "powershell directory already exists, skipping" }

else {
New-Item -Path "$env:ProgramFiles\" -Name "powershell" -ItemType "directory"
Invoke-WebRequest  $url1 -OutFile "$folder1\powershell.msi"
Start-Process -Path "$folder1\powershell.msi"
}
if (Test-Path -Path $folder2) { Write-Host "clamav directory already exists, skipping" }

else {
New-Item -Path "$env:ProgramFiles\" -Name "clamav" -ItemType "directory"
Invoke-WebRequest  $url2 -OutFile "$folder2\clamav\clamav.zip"
Expand-Archive -LiteralPath "$folder2\clamav\clamav.zip" -DestinationPath "$folder2\"

}