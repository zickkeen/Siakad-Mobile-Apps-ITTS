# SIAKAD ITTS

Proyek ini adalah bagian dari Ujian Tengah Semester (UTS) Mata Kuliah **Pengembangan Mobile Apps** pada **Institut Teknologi Tangerang Selatan (ITTS)**. Aplikasi ini merupakan sistem informasi akademik sederhana yang dirancang menggunakan **Flutter**.

## Deskripsi Proyek

SIAKAD ITTS adalah aplikasi mobile yang dirancang untuk membantu mahasiswa dalam mengakses informasi akademik secara mudah dan cepat. Aplikasi ini menyediakan fitur berikut:
- **Login Page**: Halaman untuk autentikasi pengguna.
- **Jadwal Kuliah**: Menampilkan jadwal kuliah dalam format tabel.
- **Nilai Akademik**: Menampilkan daftar nilai mata kuliah yang telah diambil.
- **Profil Mahasiswa**: Menampilkan informasi pribadi mahasiswa.
- **Pengaturan**: Fitur untuk mengaktifkan atau menonaktifkan dark mode.

---

## Fitur Utama

1. **Login Page**
   - Input username dan password.
   - Validasi sederhana (password: `12345`).
   
2. **Jadwal Kuliah**
   - Menampilkan jadwal kuliah lengkap dalam tabel yang mudah dibaca.
   - Header tabel berwarna biru dengan teks putih.

3. **Nilai Akademik**
   - Menampilkan data nilai dalam tabel yang dirancang profesional.
   - Informasi tambahan seperti jumlah SKS dan IPK.

4. **Profil Mahasiswa**
   - Informasi pribadi mahasiswa, termasuk nama, NIM, dan program studi.
   - Tampilan gambar profil dengan latar belakang gradien.

5. **Pengaturan**
   - Fitur untuk mengaktifkan atau menonaktifkan dark mode.
   - Semua halaman mendukung dark mode secara konsisten.

---

## Teknologi yang Digunakan

- **Flutter**: Framework utama untuk pengembangan aplikasi.
- **Figma**: Alat desain UI untuk wireframe dan prototipe.
- **Dart**: Bahasa pemrograman untuk logika aplikasi.

---

## Struktur Proyek

```
lib/
├── main.dart              # Entry point aplikasi
├── pages/                 # Folder untuk halaman aplikasi
│   ├── login_page.dart
│   ├── home_page.dart
│   ├── jadwal_kuliah_page.dart
│   ├── nilai_page.dart
│   ├── profil_page.dart
│   ├── pengaturan_page.dart
├── widgets/               # Komponen yang dapat digunakan ulang
│   └── page_template.dart
└── assets/                # Folder untuk aset seperti gambar
    └── profile_picture.png
```

---

## Cara Menjalankan Aplikasi

1. **Clone Repository**
```
git clone https://github.com/username/siakad-itts.git
cd siakad-itts
```

2. **Install Dependencies**
```
flutter pub get
```

3. **Jalankan Aplikasi**
```
flutter run
```

## Kontributor

- Nama: Muhamad Tuhfatur Roziiqn
- NIM: 1002220021
- Program Studi: Teknik Informatika, ITTS
