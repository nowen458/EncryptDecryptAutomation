cd ~/Documents/Crypt\ Processing/Decrypt\ In

decryptInDirectory=~/Documents/Crypt\ Processing/Decrypt\ In/
decryptOutDirectory=~/Documents/Crypt\ Processing/Decrypt\ Out/

read -p "Enter a password to decrypt files: " password


for file in "${decryptInDirectory}"* 
do
	fileName=${file##*/}

	echo "Decrypting file: ${fileName}"

	decryptedFile="${fileName%????}"
	
	openssl aes256 -in "${fileName}" -out "${decryptOutDirectory}${decryptedFile}" -d -pass pass:$password

	echo "File has been decrypted. Decrypted file: $decryptedFile"
done