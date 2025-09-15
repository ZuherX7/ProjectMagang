# SIDODIK - Sistem Informasi Dokumen Diskominfotik

Sistem manajemen dokumen digital untuk Dinas Komunikasi dan Informatika (Diskominfotik) Kabupaten Bandung Barat.

## 📋 Deskripsi

SIDODIK adalah aplikasi web berbasis CodeIgniter 4 yang dirancang untuk mengelola dokumen digital instansi pemerintah. Aplikasi ini menyediakan fitur manajemen dokumen yang aman, terstruktur, dan mudah digunakan untuk admin dan user.

## ✨ Fitur Utama

### 👨‍💼 Admin
- **Dashboard Admin**: Overview statistik dan dokumen terbaru
- **Kelola Dokumen**: Upload, edit, hapus, dan kategorisasi dokumen
- **Kelola Menu**: Manajemen menu navigasi dokumen
- **Kelola Kategori**: Organisasi dokumen berdasarkan kategori
- **Kelola User**: Manajemen akun pengguna
- **Login Admin**: Autentikasi dengan username/password

### 👤 User
- **Dashboard User**: Interface ramah pengguna dengan pencarian
- **Browse Dokumen**: Akses dokumen berdasarkan menu dan kategori
- **Search Function**: Pencarian dokumen yang powerful
- **View & Download**: Lihat dan unduh dokumen
- **Login User**: Autentikasi dengan NIP
- **Reset Password**: Fitur lupa password untuk user

## 🛠 Teknologi

- **Backend**: CodeIgniter 4
- **Database**: MySQL/MariaDB
- **Frontend**: HTML5, CSS3, JavaScript
- **UI Framework**: Bootstrap 5
- **Icons**: Font Awesome 6
- **File Support**: PDF, DOC, DOCX, XLS, XLSX, PPT, PPTX

## 📁 Struktur Database

### Tabel Utama:
- `users` - Data pengguna (admin/user)
- `menu` - Menu navigasi dokumen
- `kategori` - Kategori dokumen per menu
- `dokumen` - Data dokumen dan file
- `log_activity` - Log aktivitas user

## 🚀 Instalasi

### Prerequisites
- PHP 8.0+ dengan ekstensi: intl, curl, mbstring, gd
- MySQL/MariaDB 10.4+
- Web Server (Apache/Nginx)
- Composer

### Langkah Instalasi

#### Metode 1: Menggunakan Command Line (Recommended)

1. **Clone Repository**
   ```bash
   git clone [URL_REPOSITORY]
   cd sidodik
   ```

2. **Install Dependencies**
   ```bash
   composer install
   ```

3. **Konfigurasi Environment**
   ```bash
   cp env .env
   ```
   
   Edit file `.env`:
   ```ini
   # Database
   database.default.hostname = localhost
   database.default.database = sidodik
   database.default.username = your_username
   database.default.password = your_password
   database.default.DBDriver = MySQLi
   database.default.DBPrefix = 
   database.default.port = 3306
   
   # Base URL
   app.baseURL = 'http://localhost/sidodik/'
   
   # Environment
   CI_ENVIRONMENT = development
   ```

4. **Import Database**
   ```bash
   mysql -u username -p sidodik < sidodik30_DONE.sql
   ```

5. **Set Permissions**
   ```bash
   chmod -R 755 writable/
   chmod -R 755 public/uploads/
   ```

6. **Akses Aplikasi**
   - URL: `http://localhost/sidodik/`
   - Admin Login: `admin` / `password`
   - User Login: Gunakan NIP yang tersedia di database

#### Metode 2: Instalasi Manual (Tanpa Command Line)

1. **Download dan Extract Project**
   - Download project sebagai ZIP dari GitHub
   - Extract ke folder web server (htdocs/www/public_html)
   - Rename folder menjadi `sidodik`

2. **Setup Database Manual**
   - Buka phpMyAdmin atau tool database management
   - Buat database baru dengan nama `sidodik`
   - Import file `sidodik30_DONE.sql` melalui phpMyAdmin:
     - Klik tab "Import"
     - Choose file: pilih `sidodik30_DONE.sql`
     - Klik "Go" untuk import

3. **Install Composer Dependencies Manual**
   - Download Composer dari https://getcomposer.org/download/
   - Install Composer di sistem
   - Buka terminal/command prompt di folder project
   - Jalankan: `composer install`
   
   **Alternatif tanpa Composer:**
   - Download CodeIgniter 4 framework secara manual
   - Copy file framework ke folder project
   - Pastikan struktur folder sesuai dengan CI4

4. **Konfigurasi Manual**
   - Copy file `env` dan rename menjadi `.env`
   - Edit `.env` dengan text editor:
   ```ini
   # Sesuaikan dengan setting database Anda
   database.default.hostname = localhost
   database.default.database = sidodik
   database.default.username = root
   database.default.password = 
   database.default.DBDriver = MySQLi
   database.default.port = 3306
   
   # Sesuaikan dengan lokasi project
   app.baseURL = 'http://localhost/sidodik/'
   CI_ENVIRONMENT = development
   ```

5. **Setup Permissions Manual**
   - Buat folder `uploads` di dalam folder `public` jika belum ada
   - Buat struktur folder: `public/uploads/documents/`
   - Set permission folder `writable` dan `public/uploads` agar dapat ditulis
   - **Windows:** Klik kanan > Properties > Security > Edit > Add "Full Control"
   - **Linux/Mac:** Gunakan `chmod 755` atau set melalui file manager

6. **Verifikasi Instalasi**
   - Akses `http://localhost/sidodik/` di browser
   - Jika muncul error, cek:
     - Database connection di `.env`
     - PHP extensions: intl, curl, mbstring, gd
     - Folder permissions
     - Apache/Nginx configuration

7. **Test Login**
   - Admin: username `admin`, password `password`
   - User: NIP `198501012010032001`, password `password`

#### Troubleshooting Instalasi Manual

**Error Database Connection:**
- Pastikan MySQL/MariaDB sudah running
- Cek username, password, dan nama database di `.env`
- Test koneksi database melalui phpMyAdmin

**Error Upload File:**
- Cek permission folder `public/uploads`
- Pastikan PHP setting: `upload_max_filesize` dan `post_max_size`
- Buat folder struktur: `uploads/documents/2025/`

**Missing Dependencies:**
- Install PHP extensions yang diperlukan
- Jika tidak bisa composer, download dependencies manual dari Packagist

## 📂 Struktur Folder

```
sidodik/
├── app/
│   ├── Controllers/     # Logic aplikasi
│   ├── Models/         # Model database
│   ├── Views/          # Template halaman
│   └── ...
├── public/
│   ├── assets/         # CSS, JS, Images
│   ├── uploads/        # File dokumen upload
│   └── index.php
├── writable/           # Cache, logs, session
├── .env               # Konfigurasi environment
└── README.md
```

## 🔐 Default Accounts

### Admin
- **Username**: `admin`
- **Password**: `password`
- **Role**: Administrator

### User Contoh
- **NIP**: `198501012010032001`
- **Password**: `password`
- **Role**: User

### Fitur Utama Admin:
- Statistics cards dengan data real-time
- Quick actions untuk manajemen cepat
- Recent documents dengan file type icons
- Background image dengan blur effect

### Dashboard User
- Hero section dengan search functionality
- Menu cards dengan icon dan counter dokumen
- Recent documents grid
- Responsive design untuk mobile

## 📋 Panduan Penggunaan

### Admin
1. Login dengan akun admin
2. Kelola menu dan kategori terlebih dahulu
3. Upload dokumen sesuai menu/kategori
4. Kelola user dan monitor aktivitas

### User
1. Login dengan NIP
2. Browse dokumen melalui menu atau search
3. View dokumen di browser atau download
4. Reset password jika lupa melalui form khusus

## 🔧 Konfigurasi

### File Upload
- **Max Size**: 10MB per file
- **Allowed Types**: PDF, DOC, DOCX, XLS, XLSX, PPT, PPTX
- **Storage**: `public/uploads/documents/YYYY/MM/`

### Security
- CSRF Protection aktif
- Input validation dan sanitization
- File type validation
- SQL injection protection via CodeIgniter Query Builder

## 📄 License

Project ini dikembangkan sebagai bagian dari program magang akademik semester 7 di Diskominfotik Kabupaten Bandung Barat. Kode sumber tersedia untuk keperluan pembelajaran dan pengembangan lebih lanjut oleh instansi terkait.

---

**SIDODIK** - Digitalisasi Dokumen untuk Pemerintahan Modern
*Dikembangkan selama program magang akademik di Diskominfotik KBB*
