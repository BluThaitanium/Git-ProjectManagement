New-Item "AddMe1.txt" -ItemType File
New-Item "AddMe2.txt" -ItemType File
New-Item "RestoreMe2.txt" -ItemType File
"password123" | Set-Content "TestPassword.txt"

$scriptPath = $MyInvocation.MyCommand.Path
$currentContent = Get-Content -Path $scriptPath
$newLine = "# Script last run on $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$newContent = "$currentContent`n$newLine"
Set-Content -Path $scriptPath -Value $newContent
