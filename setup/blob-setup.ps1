# ------------Please setup below----------------------------------#
# 1. Create a SAS key on your Azure blob storage                  #
# 2. Fill in the <NameOfBlobStorage> and <GeneratedSasKey> below. #
# 3. Rename main file from blob-setup.sh to blob.sh               #
# ----------------------------------------------------------------#

blobStorageLink='https://<NameOfBlobStorage>.blob.core.windows.net/recordings'
blobStorageDelimiter='?'
blobStorageSAS='<GeneratedSasKey>'