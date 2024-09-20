#!/bin/bash

# URL dasar
base_url="https://sss.com/"
# Rentang file
for i in {1..5}
do
    # Membuat URL lengkap
    file_url="${base_url}${i}.pdf"
http_status=$(wget --spider "$file_url" 2>&1 | grep "HTTP/" | awk '{print $2}')
    
    if [ "$http_status" == "200" ]; then
        echo "Mengunduh: $file_url"
        wget "$file_url"
    else
        echo "File tidak ditemukan"
    fi    
    # Mengunduh file
    wget "$file_url"
done
