get-wsmaninstance -resourceuri shell -enumerate | 
select Name, State, Owner, ClientIP, ProcessID, MemoryUsed, 
@{Name = "ShellRunTime"; Expression = {[System.Xml.XmlConvert]::ToTimeSpan($_.ShellRunTime)}}, 
@{Name = "ShellInactivity"; Expression = {[System.Xml.XmlConvert]::ToTimeSpan($_.ShellInactivity)}}