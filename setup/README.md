Setup - all needed setup/config files resides here

## Configuration:
1. Create a SAS key on your Azure blob storage      
2. You have 2 options (bash or powershell) to setup your app to connect to Azure blob storage:
    - (BASH) Open setup/blob-setup.sh 
    - (Powershell) Open setup/blob-setup.ps1
3. Fill in the NameOfBlobStorage, containerName and GeneratedSasKey below, based on your setup on #1. 
```bash
blobStorageLink='https://<NameOfBlobStorage>.blob.core.windows.net/<containerName>'
blobStorageDelimiter='?'
blobStorageSAS='<GeneratedSasKey>'
```
4. Rename file from setup/
    - (BASH) blob-setup.sh to blob.sh
    - (Powershell) blob-setup.ps1 to blob.ps1
5. Move the blob file to:
    - (BASH) blob.sh to bash directory
    - (Powershell) blob.ps1 to powershell directory