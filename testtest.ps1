


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


<#$TranscriptFile = "D:\Desktop\Scripts\Transcript\test.txt" #file path in which log/txt exists

Start-Transcript -Path $TranscriptFile #start writing transcript

Write-Host "Hello World" #example output

Stop-Transcript #stops writing transcript


$Transcript = Get-Content $TranscriptFile #gets the text content inside the file 

$StartTime = ($Transcript -match "Start time: " -replace "Start time: ","")#matches start time 

If ($StartTime) { #if the text matches after it parses for "Start time" replace the date-time format to the correct indentation
    $NewStartTime = ([datetime]::ParseExact($StartTime, "yyyyMMddHHmmss", (Get-Culture).DateTimeFormat))
    $NewStartTime = Get-Date($NewStartTime) -format "MM-dd-yyyy HH:mm:ss"
    $Transcript -replace $StartTime,$NewStartTime | Out-File $TranscriptFile
}#>

