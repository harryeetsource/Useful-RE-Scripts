' Retrieve all ProductCodes (with ProductName and ProductVersion)
' Save on desktop as "MsiRetrieveProductCode.vbs" (extension important) and run from there by double-clicking it
' Output: "msiinfo.csv" on desktop itself. Open with Notepad, Excel or equivalent (Notepad will do)

Set fso = CreateObject("Scripting.FileSystemObject")
Set output = fso.CreateTextFile("msiinfo.csv", True, True)
Set installer = CreateObject("WindowsInstaller.Installer")

On Error Resume Next ' we ignore all errors

' Write headers
output.writeline ("ProductCode" & ", " & "ProductName" & ", " & "Version")

For Each product In installer.ProductsEx("", "", 7)
   productcode = product.ProductCode
   name = product.InstallProperty("ProductName")
   version=product.InstallProperty("VersionString")
   output.writeline (productcode & ", " & name & ", " & version)
Next

output.Close
