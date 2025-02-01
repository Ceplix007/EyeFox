#!/bin/bash

URL="https://drive.google.com/file/d/14mncbjQo1cHTBmpPPDemaVIW3Gc1GL73/view"

ZIP_FILE="downloaded_file.zip"

DEST_DIR="$HOME"

echo "Memulai proses download..."

wget -O "$ZIP_FILE" "$URL"

if [ $? -ne 0 ]; then
    echo "Gagal mendownload file. Periksa URL dan koneksi internet Anda."
    exit 1
fi

echo "File berhasil didownload ke direktori $(pwd)."

echo "Ekstraksi file ke direktori $DEST_DIR..."

unzip -o "$ZIP_FILE" -d "$DEST_DIR"

if [ $? -ne 0 ]; then
    echo "Gagal mengekstrak file. Pastikan file adalah file ZIP yang valid."
    rm -f "$ZIP_FILE"
    exit 1
fi

echo "Ekstraksi selesai. Tools berada di direktori home dengan nama EyeFox."
