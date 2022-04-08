@ECHO OFF
Powershell.exe -executionpolicy remotesigned "& '%~dpn0.ps1'"
PAUSE
