#!/bin/bash

echo "line, md5, sha256, sha512, ntlm"

while read line; do
	new_line=""
	new_line+="$line,"
	new_line+="$(echo $line | md5sum | awk '{print $1}'),"
	new_line+="$(echo $line | sha256sum | awk '{print $1}'),"
	new_line+="$(echo $line | sha512sum | awk '{print $1}'),"
	new_line+="$(echo -n $line | iconv -t UTF-16LE | openssl dgst -md4 | awk '{print $2}')"
	echo "$new_line"
done < /usr/share/wordlists/rockyou.txt
