#!/bin/bash

# Memeriksa apakah direktori .gf ada di lokasi sumber
chmod +x .main/*
chmod +x .main/tools/*
if [ -d ".gf" ]; then
    # Menyalin direktori .gf ke direktori home
    cp -r .gf ~/
    echo "Direktori .gf berhasil disalin ke direktori home."
else
    echo "Direktori .gf tidak ditemukan di lokasi saat ini."
    exit 1
fi

# Memeriksa apakah file requirements.txt ada
if [ -f "requirements.txt" ]; then
    # Mencoba menginstal dependensi Python menggunakan pip
    pip install -r requirements.txt >/dev/null 2>&1 || {
        # Jika pip gagal, beri tahu pengguna dan install dependensi menggunakan apt
        echo "PIP gagal menginstal, mencoba menginstal dengan apt..."
        sudo apt install python3-aiohttp python3-asyncio* python3-colorama python3-cryptography python3-ntplib -y >/dev/null 2>&1
        echo "Dependensi berhasil diinstal menggunakan apt."
    }
else
    echo "File requirements.txt tidak ditemukan."
    exit 1
fi
