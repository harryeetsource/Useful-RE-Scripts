strComputer = "."

Call EnumNameSpaces("root")

Sub EnumNameSpaces(strNameSpace)

  WScript.Echo strNameSpace

  Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\" & strNameSpace)
  Set colNameSpaces = objWMIService.InstancesOf("__NAMESPACE")

  For Each objNameSpace In colNameSpaces
    Call EnumNameSpaces(strNameSpace & "\" & objNameSpace.Name)
  Next

End Sub