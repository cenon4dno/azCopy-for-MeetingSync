#!/bin/bash
echo 'Start Application'
. "./bash/blob.sh"

# Variable Declaration
date=$(date '+%Y-%m-%d')
datetime=$(date '+%Y-%m-%d %H:%M')
# Video recordings config
recordingsDirectory='recordings/'
# Log config
logDirectory='logs/'
# log files
run='run-'
fileurl='fileurl-'
history='history'

# Sync Files
command="azcopy sync '$recordingsDirectory' '$blobStorageLink$blobStorageDelimiter$blobStorageSAS'"
eval $command >> "$logDirectory$run$date.log"

# Write to fileurl
echo "" > "$logDirectory$fileurl$date.log"
for entry in "$recordingsDirectory"/*
do
    directoryStructure=$entry
    IFS='/' read -a ARRAY <<< "$directoryStructure"    
    file="${ARRAY[2]}"
    echo "$blobStorageLink/$file$blobStorageDelimiter$blobStorageSAS" >> "$logDirectory$fileurl$date.log"
done

# Write to history
echo "$datetime Synced '$recordingsDirectory' directory" >> "$logDirectory$history.log"

echo 'End Application'