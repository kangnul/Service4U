-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2023 pada 15.59
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serviceforu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `usernamecustomer` varchar(30) NOT NULL,
  `passwordcustomer` varchar(255) DEFAULT NULL,
  `nomorteleponcustomer` varchar(30) DEFAULT NULL,
  `waktulogin` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`usernamecustomer`, `passwordcustomer`, `nomorteleponcustomer`, `waktulogin`) VALUES
('farrell', '056f32ee5cf49404607e368bd8d3f2af', '08117710218', '2023-06-28 20:55:49'),
('keiko', '056f32ee5cf49404607e368bd8d3f2af', '081227552017', '2023-06-28 01:48:21'),
('tereeeteret', '503359c58a3e0b7986f2affe63553e29', '085810495386', '2023-05-27 08:37:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarahpemesanan`
--

CREATE TABLE `sejarahpemesanan` (
  `transactionid` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sejarahpemesanan`
--

INSERT INTO `sejarahpemesanan` (`transactionid`, `tanggal`, `waktu`, `deskripsi`) VALUES
('051925-farrell', '2023-05-28', '23:41:00', 'Pesanan Diterima'),
('051925-farrell', '2023-05-28', '23:50:00', 'Barang sedang dipesan'),
('051925-farrell', '2023-05-29', '00:05:00', 'Barang sedang diperbaiki'),
('051925-farrell', '2023-05-29', '00:43:00', 'Pesanan Selesai'),
('221904-keiko', '2023-05-29', '15:45:00', 'Pesanan Diterima'),
('530138-farrell', '2023-06-28', '01:55:00', 'Pesanan Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tesgambar`
--

CREATE TABLE `tesgambar` (
  `gambarrrr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tesgambar`
--

INSERT INTO `tesgambar` (`gambarrrr`) VALUES
('IMG_5444-modified.png'),
('1483473.jpg'),
('');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `usernametoko` varchar(30) NOT NULL,
  `passwordtoko` varchar(255) DEFAULT NULL,
  `nomortelepontoko` varchar(30) DEFAULT NULL,
  `namatoko` varchar(50) DEFAULT NULL,
  `alamattoko` varchar(255) DEFAULT NULL,
  `layanantoko` varchar(30) DEFAULT NULL,
  `deksripsitoko` varchar(255) DEFAULT NULL,
  `jamoperasitoko` varchar(50) DEFAULT NULL,
  `waktulogin` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`usernametoko`, `passwordtoko`, `nomortelepontoko`, `namatoko`, `alamattoko`, `layanantoko`, `deksripsitoko`, `jamoperasitoko`, `waktulogin`) VALUES
('cccomputer', '458c50d89389acaf20075a39829b1a87', '080987612345', 'CC Computer', 'Supermall Karawaci Lt 3 No 13, Karawaci, Kota Tangerang', 'PC, Laptop', 'deskripsi3', 'Senin - Minggu 10:00 - 22:00', '2023-06-28 02:11:28'),
('superkomputer', '0418d71c84044a2ee1d5e4ac31cc9fea', '080987654321', 'Super Komputer', 'ITC Mangga Dua Lt 4 No 17, Mangga Dua, Jakarta Pusat', 'PC, Laptop', 'deskripsi2', 'Senin - Minggu 09:00 - 22:00', '2023-06-28 02:11:20'),
('tokoabc', '8623ea397ef90b7b1f78fab9aee428e0', '081234567890', 'Toko ABC', 'Supermall Karawaci Lt3 No 11, Karawaci, Kota Tangerang', 'PC, Laptop', 'deskripsi1', 'Senin - Minggu 08:00 - 22:00', '2023-06-28 20:43:27'),
('tokotes', '503359c58a3e0b7986f2affe63553e29', '085217079399', 'Toko Tes', 'Jl. Jalur Sutera Bar. No.Kav. 21, RT.001/RW.004, Panunggangan, Kec. Pinang, Kota Tangerang, Banten 15143', 'Laptop', 'deskripsi4', 'Senin - Minggu 07:00 - 22:00', '2023-06-28 20:42:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactionheader`
--

CREATE TABLE `transactionheader` (
  `transactionid` varchar(50) NOT NULL,
  `usernamecustomer` varchar(30) DEFAULT NULL,
  `usernametoko` varchar(30) DEFAULT NULL,
  `jenisperangkat` varchar(30) DEFAULT NULL,
  `merkperangkat` varchar(30) DEFAULT NULL,
  `seriperangkat` varchar(70) DEFAULT NULL,
  `deskripsimasalah` varchar(255) DEFAULT NULL,
  `tanggalbooking` date DEFAULT NULL,
  `waktubooking` time NOT NULL,
  `statuspesanan` varchar(50) DEFAULT NULL,
  `hargajasaadmin` int(11) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `gambarkondisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactionheader`
--

INSERT INTO `transactionheader` (`transactionid`, `usernamecustomer`, `usernametoko`, `jenisperangkat`, `merkperangkat`, `seriperangkat`, `deskripsimasalah`, `tanggalbooking`, `waktubooking`, `statuspesanan`, `hargajasaadmin`, `biaya`, `gambarkondisi`) VALUES
('032129-keiko', 'keiko', 'tokoabc', 'Laptop', 'Asus', 'sfsdfss', 'blur jika buka kamera', '2023-05-27', '22:03:00', 'Menunggu Konfirmasi', 20000, 20000, '1483472.jpg'),
('051925-farrell', 'farrell', 'tokoabc', 'Laptop', 'Asus', 'ROG Strix', 'Tidak bisa booting, kamera retak', '2023-05-28', '19:00:00', 'Pesanan Diterima', 30000, 60000, 'unduhan.jpeg'),
('121920-keiko', 'keiko', 'superkomputer', 'Laptop', 'Asus', 'TUF GIMANG', 'kena air', '2023-05-27', '20:15:00', 'Menunggu Konfirmasi', 0, 0, 'IMG_5444-modified.png'),
('221904-keiko', 'keiko', 'tokoabc', 'PC', 'Asus', 'ROG Strix', 'Komponen motherboard rusak ', '2023-05-27', '20:22:00', 'Pesanan Dibatalkan', 30000, 20000, 'unduhan.jpeg'),
('530025-farrell', 'farrell', 'cccomputer', 'Laptop', 'Asus', 'tesss', 'harus di charge terus, hard disk rusak dan ada masalah pada sistem operasi', '2023-05-28', '01:53:00', 'Menunggu Konfirmasi', 0, 0, 'unduhan.jpeg'),
('530138-farrell', 'farrell', 'tokoabc', 'Laptop', 'Lainnya', 'Macbook Pro', 'Terkena air', '2023-06-28', '10:00:00', 'Pesanan Diterima', 50000, 300000, 'mbp-spacegray-select-202206.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasan`
--

CREATE TABLE `ulasan` (
  `ulasanid` varchar(50) NOT NULL,
  `transactionid` varchar(50) DEFAULT NULL,
  `deskripsiulasan` varchar(255) DEFAULT NULL,
  `nilaiulasan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ulasan`
--

INSERT INTO `ulasan` (`ulasanid`, `transactionid`, `deskripsiulasan`, `nilaiulasan`) VALUES
('230052-051925-farrell', '051925-farrell', 'Produknya berkualitas, harga terjangkau', 4),
('252115-121920-keiko', '121920-keiko', 'Produknya berkualitas, harga terjangkau\r\n', 4),
('270032-051925-farrell', '051925-farrell', 'Produknya berkualitas, harga terjangkau\r\n', 4),
('270054-051925-farrell', '051925-farrell', 'Tokonya menyediakan produk berkualitas dengan harga yang terjangkau', 4),
('280052-051925-farrell', '051925-farrell', 'Tokonya menyediakan produk berkualitas dengan harga yang terjangkau', 4),
('280059-051925-farrell', '051925-farrell', 'Tokonya menyediakan produk berkualitas dengan harga yang terjangkau', 4),
('290009-051925-farrell', '051925-farrell', 'Saya sangat puas dengan pelayanannya', 4),
('290032-051925-farrell', '051925-farrell', 'Saya sangat puas dengan pelayanannya', 4),
('320030-051925-farrell', '051925-farrell', 'Saya sangat puas dengan pelayanannya', 4),
('330013-051925-farrell', '051925-farrell', 'Bagus tapi sedikit lama pengerjaannya', 4),
('330016-051925-farrell', '051925-farrell', 'Bagus tapi sedikit lama pengerjaannya', 4),
('330039-051925-farrell', '051925-farrell', 'Bagus tapi sedikit lama pengerjaannya', 4),
('332110-221904-keiko', '221904-keiko', 'harga terjangkau', 5),
('332133-051925-farrell', '051925-farrell', 'produk berkualitas', 3),
('530045-530025-farrell', '530025-farrell', 'Bagus tapi sedikit lama pengerjaannya', 4),
('560129-530138-farrell', '530138-farrell', 'Saya sangat kecewa dengan layanannya, Pelayanannya cepat dan responsif', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`usernamecustomer`);

--
-- Indeks untuk tabel `sejarahpemesanan`
--
ALTER TABLE `sejarahpemesanan`
  ADD PRIMARY KEY (`transactionid`,`tanggal`,`waktu`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`usernametoko`);

--
-- Indeks untuk tabel `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`transactionid`),
  ADD KEY `usernamecustomer` (`usernamecustomer`),
  ADD KEY `usernametoko` (`usernametoko`);

--
-- Indeks untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`ulasanid`),
  ADD KEY `transactionid` (`transactionid`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `sejarahpemesanan`
--
ALTER TABLE `sejarahpemesanan`
  ADD CONSTRAINT `sejarahpemesanan_ibfk_1` FOREIGN KEY (`transactionid`) REFERENCES `transactionheader` (`transactionid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transactionheader_ibfk_1` FOREIGN KEY (`usernamecustomer`) REFERENCES `customer` (`usernamecustomer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactionheader_ibfk_2` FOREIGN KEY (`usernametoko`) REFERENCES `toko` (`usernametoko`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`transactionid`) REFERENCES `transactionheader` (`transactionid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
