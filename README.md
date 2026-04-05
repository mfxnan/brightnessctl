# 🔆 Brightness Control CLI (Linux)

Script sederhana untuk mengatur kecerahan layar laptop langsung dari terminal menggunakan `brightnessctl`. untuk keadaan darurat apabila terkendala dengan pengaturan layar, semoga membantu.

---

## ✨ Fitur Utama

* 🔍 Auto detect device (Intel, AMD, dll)
* 🖥️ Interface menu interaktif di terminal
* ⚡ Ringan & cepat tanpa GUI
* 🔁 Looping menu (tidak perlu jalankan ulang script)
* 🧩 Cocok untuk XFCE, Openbox, i3, dll

---

## 📦 Instalasi

### 1. Clone Repository

```bash
git clone https://github.com/xn28/brightnessctl
cd brightnessctl
```

---

### 2. Install Dependency

```bash
sudo apt update
sudo apt install brightnessctl -y
```

---

### 3. Jalankan Script

```bash
chmod +x bright.sh
./bright.sh
```

---

## 🚀 Cara Penggunaan

Setelah dijalankan, akan muncul menu seperti ini:

```
==============================
 PENGATUR KECERAHAN LAYAR
==============================

[1] 5%
[2] 10%
[3] 15%
[4] 20%
[5] 25%
[6] 30%
[7] 50%
[8] 75%
[9] 85%
[10] 100%
[00] quit
```

Tinggal pilih angka sesuai kebutuhan kecerahan layar.

---

## ⚙️ Cara Kerja

Script ini bekerja dengan cara:

1. Mengecek apakah `brightnessctl` sudah terinstall
2. Mendeteksi device backlight secara otomatis
3. Menampilkan menu pilihan kecerahan
4. Mengatur brightness sesuai input user
5. Mengulang menu tanpa perlu restart script

---

## ⚠️ Catatan Penting

* Beberapa sistem membutuhkan akses `sudo`
* Pastikan device mendukung pengaturan brightness via `brightnessctl`
* Jika tidak terdeteksi, cek manual dengan:

```bash
brightnessctl -l
```

---

## 💡 Tips & Pengembangan

Beberapa ide pengembangan:

* 🎛️ Tambahkan mode naik/turun (increment/decrement)
* 🖱️ Buat versi GUI (pakai `zenity` atau `yad`)
* ⌨️ Integrasi ke keybinding (XFCE / Openbox)
* 🔓 Jalankan tanpa sudo (pakai udev rules)

---

## 🧑‍💻 Author

**mfxnan**
Simple tools for daily Linux usage 🚀

---
