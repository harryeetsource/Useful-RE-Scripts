$title    = 'This will install Flare VM'
$question = 'Are you sure you want to proceed?'
$choices  = '&Yes', '&No'
function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}
if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -executionpolicy bypass -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}
$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 0) {
    Write-Host 'confirmed'
    Invoke-Webrequest -uri https://raw.githubusercontent.com/mandiant/flare-vm/master/install.ps1 -OutFile "${env:temp}\flare.ps1" 
    Invoke-Webrequest -uri https://raw.githubusercontent.com/harryeetsource/WindowsScripts/main/WindowsRepairBund.bat -OutFile "${env:temp}\flare.bat" 
    Start-Process -Filepath  "${env:temp}\flare.bat"}
else
{Write-host 'canceled'}
