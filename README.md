azCopy-for-MeetingSync is a shell application to simplify your file sync to an Azure blob storage.


## Prerequisite:
- Azure blob storage
- AzCopy V10 
- AZ CLI 2.22 or latest

## Installation:
Use the git to clone and pull.

```bash
git clone git@github.com:cenon4dno/azCopy-for-MeetingSync.git
```

Or donwload as ZIP on https://github.com/cenon4dno/azCopy-for-MeetingSync.

## Configuration:
- Create a SAS key on your Azure blob storage                  
- Fill in the <NameOfBlobStorage> and <GeneratedSasKey> below. 
- Rename main file from blob-setup.sh to blob.sh               

## Usage
- Place all files you want to sync in the recordings directory and execute:
```bash
./main.sh
```
- Open videourl and you should be able to see your files with their corresponding URL. With that URL you can now share the file to anyone.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Rerefence
- Setup an Azure blob storage https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-portal
- Generate SAS on Azure blob storage https://adamtheautomator.com/azure-sas-token/
- Installing AzCopy https://www.thomasmaurer.ch/2019/05/how-to-install-azcopy-for-azure-storage/
- Installing AZ CLI https://docs.microsoft.com/en-us/cli/azure/install-azure-cli

## License