Dim oParam 
Set oParam = WScript.Arguments 
If oParam.Count <> 0 then 

CreateObject("WScript.Shell").Run oParam(0)
 
End If 

