# EncryptDecryptAutomation
Scripts to automatically encrypt and decrypt files using OpenSSL and AES 256 encryption.

Four folders will be required:
1. Encrypt In
2. Encrypt Out
3. Decrypt In
4. Decrypt Out

To Encrypt:
1. Drop a file in the Encrypt In folder
2. Run the encrypt-files.command
3. Enter a password to encrypt the file. This password will be required to decrypt the file.
4. Navigate to the Encrypt Out folder and the encrypted file will be there with a file extension of .enc.

To Decrypt:
1. Drop an encrypted file in the Decrypt Out Folder.
2. Run the decrypt-files.command.
3. Enter the password to decrypt the file. This password is the same password that was used to encrypt the file.
4. Navigate to the Decrypt Out folder and the decrypted file will be there.

Notes:
1. The directories in the script will need to be modified based on the individual user's directory naming.
3. The scripts utilize the OpenSSL library and the script can be modified to handle a variety of encryption standards.
