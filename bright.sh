#!/bin/bash

# cek apakah brightnessctl ada
if ! command -v brightnessctl &> /dev/null; then
    echo "brightnessctl belum terinstall!"
    echo "install dulu: sudo apt install brightnessctl"
    exit 1
fi

# ambil device otomatis
DEVICE=$(brightnessctl -l | grep backlight | head -n1 | awk -F"'" '{print $2}')

if [ -z "$DEVICE" ]; then
    echo "Device backlight tidak ditemukan!"
    exit 1
fi

menu() {
    clear
    echo "=============================="
    echo " PENGATUR KECERAHAN LAYAR"
    echo " Device: $DEVICE"
    echo "=============================="
    echo ""
    echo "[1] 5%"
    echo "[2] 10%"
    echo "[3] 15%"
    echo "[4] 20%"
    echo "[5] 25%"
    echo "[6] 30%"
    echo "[7] 50%"
    echo "[8] 75%"
    echo "[9] 85%"
    echo "[10] 100%"
    echo "[00] quit"
    echo ""
}

while true; do
    menu
    read -p "pilih > " pilih

    case $pilih in
        1) val=5 ;;
        2) val=10 ;;
        3) val=15 ;;
        4) val=20 ;;
        5) val=25 ;;
        6) val=30 ;;
        7) val=50 ;;
        8) val=75 ;;
        9) val=85 ;;
        10) val=100 ;;
        00) echo "bye 👋"; exit ;;
        *) echo "input salah"; sleep 1; continue ;;
    esac

    echo "kecerahan diatur ke $val%"
    sudo brightnessctl -d "$DEVICE" set ${val}%
    sleep 1
done
