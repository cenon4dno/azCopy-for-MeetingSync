Write-Output 'Start Application'
. ".\powershell\blob.ps1"

# Variable Declaration
$date = Get-Date -UFormat "%Y-%m-%d"
$datetime = Get-Date
# Video recordings config
$recordingsDirectory = 'recordings/'
# Log config
$logDirectory = 'logs/'
# log files
$run = 'run-'
$fileurl = 'fileurl-'
$history = 'history'

# Sync Files
$command="azcopy sync '$recordingsDirectory' '$blobStorageLink$blobStorageDelimiter$blobStorageSAS'"
Invoke-Expression -Command $command | Out-File -FilePath "$($logDirectory)$($run)$($date).log"

# Write to videourl
Out-File -FilePath "$($logDirectory)$($fileurl)$($date).log"
Get-ChildItem $recordingsDirectory -recurse | ForEach-Object {
     $file = $_.Name
     Write-Output "$blobStorageLink/$file$blobStorageDelimiter$blobStorageSAS" | Add-Content -Path "$($logDirectory)$($fileurl)$($date).log"
}

# Write to history
Write-Output "$datetime Synced '$recordingsDirectory' directory" | Out-File -FilePath "$($logDirectory)$($history).log"

Write-Output 'End Application'