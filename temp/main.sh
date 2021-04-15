#!/bin/sh
echo 'Start Application'

# Variable Declaration
filename="configs/config.txt"
recordings='/mnt/d/Work/Repo/az-uploadRecordings/recordings/'
blobStorageLink='https://bloblab01.blob.core.windows.net/recordings'
blobStorageDelimiter='?'
blobStorageSAS='sp=racwdl&st=2021-04-15T15:26:48Z&se=2022-04-17T23:26:48Z&spr=https&sv=2020-02-10&sr=c&sig=DW%2BA2uL3Nz5ItxRWktjRgNf4BWGTediFzRMpIKgJnCs%3D'
#blobStorage=''
echo "Set Config File $filename"

# Set variables from txt file
echo 'Start Reading Config File'
echo before comment
: <<'END'
i=0
while IFS= read -r line
do    
    if [ "$i" -eq "0" ]; then
        echo $line
        blobStorage=$line
    fi
    ((i=i+1))
done < $filename
END
echo after comment

command="azcopy sync '$recordings' '$blobStorage'"
echo "$command"
eval $command

# Read files from recordings
#for entry in "$recordings"/*
#do
    #echo "Start Uploading: $entry"
    #command="azcopy cp \"$entry\" \"$blobStorage\""
 #   command="azcopy cp $entry '$blobStorage' --recursive=true"
 #   echo "$command"
    #azcopy cp "$entry" "$blobStorage"
 #   eval $command
    #echo "End Uploading: $entry"
#done