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

### Dashboard Admin
![Dashboard Admin](assets/img/gedung2.png)
*Background image dengan overlay transparan untuk UI yang elegan*

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
Project ini dikembangkan sebagai bagian dari program magang akademik semester 7 di Diskominfotik Kabupaten Bandung Barat. Pengembangan lebih lanjut oleh instansi terkait.
