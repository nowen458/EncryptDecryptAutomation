cd ~/Documents/Crypt\ Processing/Encrypt\ In

encryptionInDirectory=~/Documents/Crypt\ Processing/Encrypt\ In/
encryptionOutDirectory=~/Documents/Crypt\ Processing/Encrypt\ Out/

read -p "Enter a password to encrypt files: " password


for file in "${encryptionInDirectory}"* 
do
	fileName=${file##*/}

	echo "Encrypting file: ${fileName}"

	encryptedFile="${fileName}.enc"
	
	openssl aes256 -in "${fileName}" -out "${encryptionOutDirectory}${encryptedFile}" -pass pass:$password

	echo "File has been encrypted. Encrypted file: $encryptedFile"
done