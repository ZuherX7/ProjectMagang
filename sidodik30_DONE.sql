-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Sep 2025 pada 14.43
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidodik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `kategori_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `file_type` varchar(10) NOT NULL,
  `file_size` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `views` int(11) DEFAULT 0,
  `downloads` int(11) DEFAULT 0,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id`, `judul`, `deskripsi`, `kategori_id`, `menu_id`, `file_name`, `file_path`, `file_type`, `file_size`, `uploaded_by`, `tanggal_upload`, `views`, `downloads`, `status`, `created_at`, `updated_at`) VALUES
(17, 'Proposal', 'Proposal Magang Diskominfo', 33, 18, 'Proposalmagang3.docx', 'uploads/documents/2025/09/68bfcade4a79a_1757399774.docx', 'docx', 235763, 1, '2025-09-09', 0, 0, 'aktif', '2025-09-09 06:36:14', '2025-09-09 06:36:14'),
(18, 'tes kirim dokumen', '12314566', 25, 6, '718132218-Seneca-Lucius-Annaeus-How-to-Die-an-Ancient-Guide-to-the-Endof-Life-Princeton-University-Press-2018-2.pdf', 'uploads/documents/2025/09/68bfcd1715156_1757400343.pdf', 'pdf', 7037854, 1, '2025-09-09', 0, 0, 'aktif', '2025-09-08 23:45:43', '2025-09-08 23:45:43'),
(19, 'tes lagi', '12345', 20, 4, 'SISTEMATIKA PROPOSAL KP 2024 (1).pdf', 'uploads/documents/2025/09/68bfcd7b4601c_1757400443.pdf', 'pdf', 585554, 1, '2025-09-09', 0, 0, 'aktif', '2025-09-08 23:47:23', '2025-09-08 23:47:23'),
(22, 'Keuangan Instansi', '', 29, 18, 'testing.xlsx', 'uploads/documents/2025/09/68bfd142a5338_1757401410.xlsx', 'xlsx', 9661, 1, '2025-09-09', 0, 0, 'aktif', '2025-09-09 07:03:30', '2025-09-09 07:03:30'),
(25, 'tes tes', 'tes ppt', 27, 6, 'Title Lorem Ipsum.pptx', 'uploads/documents/2025/09/68c7d411345e6_1757926417.pptx', 'pptx', 1661945, 1, '2025-09-15', 0, 0, 'aktif', '2025-09-15 08:53:37', '2025-09-15 08:53:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `menu_id`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Laporan Kegiatan', 18, 'Kegiatan Magang', 'aktif', '2025-09-08 23:07:45', '2025-09-08 23:07:45'),
(15, 'Panduan Teknis', 19, 'Teknisi', 'aktif', '2025-09-08 23:10:02', '2025-09-08 23:10:02'),
(16, 'Formulir Cuti', 4, 'Cuti bersama', 'aktif', '2025-09-08 23:10:34', '2025-09-08 23:10:34'),
(17, 'Teknologi Informasi', 19, 'Teknologi', 'aktif', '2025-09-08 23:13:07', '2025-09-08 23:13:07'),
(18, 'Manajemen Pemerintahan', 19, '', 'aktif', '2025-09-08 23:14:03', '2025-09-08 23:14:03'),
(19, 'Hasil Penelitian', 19, 'Penelitian-Penelitian', 'aktif', '2025-09-08 23:14:42', '2025-09-08 23:14:42'),
(20, 'Formulir Pengajuan', 4, '', 'aktif', '2025-09-08 23:16:01', '2025-09-08 23:16:01'),
(21, 'Formulir Perjalanan Dinas', 4, '', 'aktif', '2025-09-08 23:16:18', '2025-09-08 23:16:18'),
(22, 'Formulir Evaluasi', 4, '', 'aktif', '2025-09-08 23:16:31', '2025-09-08 23:16:31'),
(23, 'Formulir Pendaftaran', 4, 'Pendaftaran Magang', 'aktif', '2025-09-08 23:16:53', '2025-09-08 23:16:53'),
(24, 'Surat Keputusan', 6, 'Keputusan', 'aktif', '2025-09-08 23:19:21', '2025-09-08 23:19:21'),
(25, 'Surat Edaran', 6, '', 'aktif', '2025-09-08 23:19:35', '2025-09-08 23:19:35'),
(26, 'Surat Tugas', 6, '', 'aktif', '2025-09-08 23:19:55', '2025-09-08 23:19:55'),
(27, 'Surat Undangan', 6, '', 'aktif', '2025-09-08 23:20:05', '2025-09-08 23:20:05'),
(28, 'Surat Keterangan', 6, '', 'aktif', '2025-09-08 23:20:13', '2025-09-08 23:20:13'),
(29, 'Laporan Keuangan', 18, 'Keuangan Instansi', 'aktif', '2025-09-08 23:20:38', '2025-09-08 23:20:38'),
(30, 'Laporan Kinerja', 18, 'Kinerja', 'aktif', '2025-09-08 23:21:07', '2025-09-08 23:21:07'),
(31, 'Laporan Evaluasi', 18, '', 'aktif', '2025-09-08 23:21:21', '2025-09-08 23:21:21'),
(32, 'Laporan Tahunan', 18, '', 'aktif', '2025-09-08 23:21:39', '2025-09-08 23:21:39'),
(33, 'Administrasi', 18, '', 'aktif', '2025-09-08 23:32:35', '2025-09-08 23:32:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_activity`
--

CREATE TABLE `log_activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dokumen_id` int(11) DEFAULT NULL,
  `activity` varchar(50) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `nama_menu`, `deskripsi`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Formulir', 'Formulir dan Dokumen', 'clipboard', 'aktif', '2025-08-24 02:25:27', '2025-08-24 02:25:27'),
(6, 'surat', 'suratsuratan', 'envelope', 'aktif', '2025-08-26 19:19:16', '2025-08-26 19:19:16'),
(18, 'Laporan', 'contoh', 'file-alt', 'aktif', '2025-09-08 23:05:45', '2025-09-08 23:05:45'),
(19, 'E-book', 'Buku', 'book', 'aktif', '2025-09-08 23:08:32', '2025-09-08 23:08:32'),
(21, 'tesnonaktif', 'tes', 'e', 'nonaktif', '2025-09-09 01:19:56', '2025-09-09 01:20:07'),
(23, 'tes menu 999', '', 'envelope', 'aktif', '2025-09-13 09:00:33', '2025-09-13 09:00:33'),
(24, 'tes', '', '', 'aktif', '2025-09-15 00:42:14', '2025-09-15 00:42:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `nip`, `password`, `nama_lengkap`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Administrator', 'admin', 'aktif', '2025-08-24 02:25:27', '2025-08-24 02:25:27'),
(2, 'siti.nurhalizaaaaaaaaaaas', '198501012010032001', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Siti Nurhalizaaaa', 'user', 'aktif', '2025-08-24 02:25:27', '2025-09-05 19:29:11'),
(31, 'Zuher', NULL, '$2y$10$xeuWd4zHgpeyTOhnEhTwC.scDaWPXg8mOpuAXvXw0SG/l0UEVdXZO', 'zaky zuhair HS', 'admin', 'aktif', '2025-09-08 22:59:33', '2025-09-08 22:59:33'),
(32, 'Zeky', '198501012010032020', '$2y$10$OiM80JL29ung2nlOvxogm.eG7A60AL7R3sfq5A1HqIPZBTtsGGkHq', 'coba user', 'user', 'aktif', '2025-09-08 23:04:02', '2025-09-15 01:22:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploaded_by` (`uploaded_by`),
  ADD KEY `idx_dokumen_kategori` (`kategori_id`),
  ADD KEY `idx_dokumen_menu` (`menu_id`),
  ADD KEY `idx_dokumen_status` (`status`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kategori_menu` (`menu_id`);

--
-- Indeks untuk tabel `log_activity`
--
ALTER TABLE `log_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `dokumen_id` (`dokumen_id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `idx_users_role` (`role`),
  ADD KEY `idx_users_nip` (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `log_activity`
--
ALTER TABLE `log_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD CONSTRAINT `dokumen_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `dokumen_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `dokumen_ibfk_3` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `fk_kategori_menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Ketidakleluasaan untuk tabel `log_activity`
--
ALTER TABLE `log_activity`
  ADD CONSTRAINT `log_activity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `log_activity_ibfk_2` FOREIGN KEY (`dokumen_id`) REFERENCES `dokumen` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
