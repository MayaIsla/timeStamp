


function Write-Log {
    Param(
        $Message,
        $Path = "D:\Desktop\Final\Testing2.log"
    )
    
    
    function TS {Get-Date -Format 'MM/dd/yy HH:mm:ss'}
    "[$(TS)]$Message" | Tee-Object -FilePath $Path -Append | Write-Verbose
}


Write-Log "Script Started"

$Path = "D:\Desktop\Final\Testing2.log"
Write-Host "Hello!"
#Invoke-RestMethod -Uri "https://jsonplaceholder.typicode.com/posts" -method Get | Out-File $path -Append
Sleep 20

Write-Log "Script Stopped and completed"


