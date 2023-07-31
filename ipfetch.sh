#!/bin/bash

# File to store the IP address
FILE_PATH="$HOME/bin/ip.txt"

# Fetch the public IP
fetch_ip() {
    IP=$(curl -s https://api.ipify.org)
    echo "$IP"
}

if [ ! -f "$FILE_PATH" ]; then
    touch "$FILE_PATH"
fi

CURRENT_DATE=$(date +%d.%m.%Y)

# Read the last stored date from the file
LAST_IP=$(tail -n 1 $FILE_PATH | cut -d ' ' -f 3)

# Compare the last stored date with the current date (doesnt seem to work..)
if [ "$LAST_IP" != "$IP" ]; then

    PUBLIC_IP=$(fetch_ip)
    echo "$CURRENT_DATE - $PUBLIC_IP" >> "$FILE_PATH"
fi
iptxt_content=$(cat "$FILE_PATH")
echo "$iptxt_content"
