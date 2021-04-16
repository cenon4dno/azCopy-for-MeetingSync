#!/bin/bash
echo 'Start Application'
. "./bash/blob.sh"

# Variable Declaration
date=$(date '+%Y-%m-%d')
datetime=$(date '+%Y-%m-%d %H:%M')
# Video recordings config
recordingsDirectory='recordings/'
# Log config
logDirectory='log/'
# History Config
historyFile='history/history.log'
# Video URL Config
videourlDirectory='videourl/'

# Sync Files
command="azcopy sync '$recordingsDirectory' '$blobStorageLink$blobStorageDelimiter$blobStorageSAS'"
eval $command >> $logDirectory$date

# Write to videourl
echo "" > $videourlDirectory$date
for entry in "$recordingsDirectory"/*
do
    directoryStructure=$entry
    IFS='/' read -a ARRAY <<< "$directoryStructure"    
    file="${ARRAY[2]}"
    echo "$blobStorageLink/$file$blobStorageDelimiter$blobStorageSAS" >> $videourlDirectory$date
done

# Write to history
echo "$datetime Synced '$recordingsDirectory' directory" >> $historyFile

echo 'End Application'