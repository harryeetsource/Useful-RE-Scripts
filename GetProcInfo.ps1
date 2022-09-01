Get-WmiObject win32_process | 
Select Name,@{n='Owner';e={$_.GetOwner().User}},CommandLine |
sort Name -unique -descending | Sort Owner | 
ft -wrap -autosize
pause
