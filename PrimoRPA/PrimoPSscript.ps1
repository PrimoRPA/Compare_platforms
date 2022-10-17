Write-Output "Wait for start"

while ( -not (get-process | where {$_.ProcessName -eq "Primo.Robot.x64"}))
{
	Start-Sleep -Milliseconds 100
}

Write-Output "Process start"

$startTime = (Get-Date).DateTime

while (get-process | where {$_.ProcessName -eq "Primo.Robot.x64"})
{
	Start-Sleep -Milliseconds 100
}

$endTime = (Get-Date).DateTime
$deltaTime = (New-TimeSpan -Start $startTime -End $endTime).TotalSeconds

Write-Output "Primo result in seconds:"
Write-Output $deltaTime

pause
