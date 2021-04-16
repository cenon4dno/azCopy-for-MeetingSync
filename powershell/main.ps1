Write-Output 'Start Application'
. ".\powershell\blob.ps1"

# Variable Declaration
$date = Get-Date -UFormat "%Y-%m-%d"
$datetime = Get-Date
# Video recordings config
$recordingsDirectory = 'recordings/'
# Log config
$logDirectory = 'log/'
# History Config
$historyFile = 'history/history.log'
# Video URL Config
$videourlDirectory = 'videourl/'

# Sync Files
$command="azcopy sync '$recordingsDirectory' '$blobStorageLink$blobStorageDelimiter$blobStorageSAS'"
Invoke-Expression -Command $command | Out-File -FilePath $logDirectory$date

# Write to videourl
Out-File -FilePath $videourlDirectory$date
Get-ChildItem $recordingsDirectory -recurse | ForEach-Object {
     $file = $_.Name
     Write-Output $_.Name
     Write-Output "$blobStorageLink/$file$blobStorageDelimiter$blobStorageSAS" | Add-Content -Path $videourlDirectory$date
}

# Write to history
Write-Output "$datetime Synced '$recordingsDirectory' directory" | Out-File -FilePath $historyFile

Write-Output 'End Application'