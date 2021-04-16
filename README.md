azCopy-for-MeetingSync is a shell application to simplify your file sync to Azure blob storage.
Initially this application was suppose to enable me to securely share my meeting recordings to my customer(s) thru Azure blob storage share link.

## Prerequisite:
### For BASH terminal option:
- Azure blob storage
- AzCopy V10 
- AZ CLI 2.22 or latest
- Bash Shell (if you are running windows 10)
### For Powershell terminal option:
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
1. Create a SAS key on your Azure blob storage      
2. Open setup/blob-setup.sh (BASH Users) or setup/blob-setup.ps1 (Powershell Users).
3. Fill in the NameOfBlobStorage and GeneratedSasKey below. 
```bash
blobStorageLink='https://<NameOfBlobStorage>.blob.core.windows.net/recordings'
blobStorageDelimiter='?'
blobStorageSAS='<GeneratedSasKey>'
```
4. Rename file from setup/
- (BASH Users) blob-setup.sh to blob.sh
- (Powershell Users) blob-setup.ps1 to blob.ps1
5. Move the blob file to:
- (BASH Users) bash directory
- (Powershell Users) powershell directory

## Usage
- Place all files you want to sync in the recordings directory then go back to root directory and execute:
- BASH Users
```bash
./bash/main.sh
```
- Powershell Users
```bash
.\poweshell\main.ps1
```
- Open videourl directory and open the current date file, you should be able to see your files with its corresponding URL.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Rerefence
- Setup an Azure blob storage https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-portal
- Generate SAS on Azure blob storage https://adamtheautomator.com/azure-sas-token/
- Installing AzCopy https://www.thomasmaurer.ch/2019/05/how-to-install-azcopy-for-azure-storage/
- Installing AZ CLI https://docs.microsoft.com/en-us/cli/azure/install-azure-cli
- Installing Bash on Windows 10 https://hackernoon.com/how-to-install-bash-on-windows-10-lqb73yj3

## License
[MIT](https://choosealicense.com/licenses/mit/)
