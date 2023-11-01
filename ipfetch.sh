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
PUBLIC_IP=$(fetch_ip)

echo "$CURRENT_DATE - $PUBLIC_IP" >> "$FILE_PATH"

iptxt_content=$(cat "$FILE_PATH")
echo "$iptxt_content"
