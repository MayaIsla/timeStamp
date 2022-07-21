PowerShell.exe -Command "& 'D:\Desktop\Final\testtest.ps1'"
powershell.exe -Command "if (((Get-CimInstance Win32_Process -Filter \"name = 'powershell.exe'\").CommandLine -match 'testtest.ps1').Count -gt 1) {"Powershell is still running"} else {echo %DATE% %TIME% Process has been stopped >> "D:\Desktop\Final\battest.log"}"
