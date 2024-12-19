# ODRT: On Demand Rainbow Table
Just a stupid shell script. Requires `openssl` (for ntlm) and `wordlists` (for rockyou.txt)

just run and grep the hash. It will run through the possibilites found in rockyou.txt until it finds a match. 
```bash
./rainbow.sh | grep d8fa498785ea92f3ffca8fc68a75f6279d72a6b6a9b3ce2eef7f4f052cad2f8e
hannah,63c0969b365b4051ba8f0d131c94210c,d8fa498785ea92f3ffca8fc68a75f6279d72a6b6a9b3ce2eef7f4f052cad2f8e,7355fe3b202907bca2ff572dcfbed7e5fc129eadf7ca67b452a8322fb6bb389b23c66b74e5803270cf5128ba0e32a7990f5e0c29c44cdb0cf8f891c57e6e5016,d78ed82380a53851bcbdfb612c6b8b8a
```
The first segment is the password, next is the md5 hash, then sha256, sha512, and then ntlm.
Runs faster than I expected so that's good.
