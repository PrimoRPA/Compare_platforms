Write-Output "Open test project in UIpath and start debugging"

while ( -not (get-process | where {$_.ProcessName -eq "UiPath.Executor"}))
{
	Start-Sleep -Milliseconds 100
}

Write-Output "Process start"

$startTime = (Get-Date).DateTime

while (get-process | where {$_.ProcessName -eq "UiPath.Executor"})
{
	Start-Sleep -Milliseconds 100
}

$endTime = (Get-Date).DateTime
$deltaTime = (New-TimeSpan -Start $startTime -End $endTime).TotalSeconds

Write-Output "UIpath process execution time (seconds):"
Write-Output $deltaTime

pause