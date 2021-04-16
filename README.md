azCopy-for-file-sync is a shell application to simplify your file sync to Azure blob storage.
Initially this application was suppose to enable me to securely share my meeting recordings to my customer(s) thru Azure blob storage share link.

## Prerequisite:
- Setup Azure blob storage
- Install AzCopy V10 or latest(Make AzCopy global to your local machine, add it to your environment variable)
- Install AZ CLI 2.22 or latest
### For BASH terminal only:
- Install Bash Shell (if you are running windows 10 but want to run shell scripts)

## Installation:
Use the git to clone and pull.
```bash
git clone git@github.com:cenon4dno/azCopy-for-file-sync.git
```
Or donwload as ZIP on https://github.com/cenon4dno/azCopy-for-file-sync.

## Configuration:
1. Create a SAS key on your Azure blob storage      
2. You have 2 options (bash or powershell) to setup your app to connect to Azure blob storage:
- (BASH) Open setup/blob-setup.sh 
- (Powershell) Open setup/blob-setup.ps1
3. Fill in the NameOfBlobStorage and GeneratedSasKey below, based on your setup on #1. 
```bash
blobStorageLink='https://<NameOfBlobStorage>.blob.core.windows.net/recordings'
blobStorageDelimiter='?'
blobStorageSAS='<GeneratedSasKey>'
```
4. Rename file from setup/
- (BASH) blob-setup.sh to blob.sh
- (Powershell) blob-setup.ps1 to blob.ps1
5. Move the blob file to:
- (BASH) blob.sh to bash directory
- (Powershell) blob.ps1 to powershell directory

## Usage
- Place all files you want to sync in the recordings directory then go back to root directory and execute:
- BASH
```bash
./bash/main.sh
```
- Powershell
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
