-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Mar 2019 pada 07.04
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
  `kode_barang` varchar(5) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`barang_id`, `kode_barang`, `kategori_id`, `nama_barang`, `harga`) VALUES
(18, 'PR001', 6, 'Samsung S8', 12000000),
(19, 'PR002', 6, 'Asus ROG', 100000000),
(20, 'PR003', 6, 'Xiaomi Redmi 5', 2000000),
(21, 'PR004', 6, 'Vaio', 3000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `kode_customer` varchar(5) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telpon_customer` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `kode_customer`, `nama_customer`, `alamat`, `telpon_customer`) VALUES
(1, 'FF001', 'CV Riventus Tech', 'Jl. Gunungan 100', '02189898989'),
(2, 'FF002', 'PT. Riventus Abadi', 'Jl. sumbermuyo 07, Bantul, Jogja', '0211010101');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_barang`
--

INSERT INTO `kategori_barang` (`kategori_id`, `nama_kategori`) VALUES
(1, 'Sandang'),
(2, 'Pangan'),
(6, 'Elektronik'),
(8, 'Plastik'),
(9, 'Besi/Baja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE `operator` (
  `operator_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `last_login` date NOT NULL,
  `level` enum('penjualan','pembelian') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `operator`
--

INSERT INTO `operator` (`operator_id`, `nama_lengkap`, `username`, `password`, `last_login`, `level`) VALUES
(1, 'Riventus Aritonang', 'ventus', 'efe6398127928f1b2e9ef3207fb82663', '2019-03-28', 'penjualan'),
(2, 'admin kedua', 'kedua', 'efe6398127928f1b2e9ef3207fb82663', '2019-03-28', 'penjualan'),
(4, 'admin ketiga', 'ketiga', 'efe6398127928f1b2e9ef3207fb82663', '2019-03-28', 'pembelian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `telpon_supplier` varchar(12) NOT NULL,
  `kode_supplier` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `nama_supplier`, `alamat_supplier`, `telpon_supplier`, `kode_supplier`) VALUES
(1, 'PT League of Legends', 'jl. ninjaku no 10', '089889891234', 'SPL02'),
(2, 'PT Kalem Kalem', 'jl. hiken no 123', '02112345678', 'SPL01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `operator_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `tanggal_transaksi`, `operator_id`) VALUES
(7, '2014-07-18', 1),
(6, '2014-07-17', 2),
(5, '2014-07-17', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_beli`
--

CREATE TABLE `transaksi_beli` (
  `transaksibeli_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_beli`
--

INSERT INTO `transaksi_beli` (`transaksibeli_id`, `tanggal`, `supplier_id`) VALUES
(1, '2014-09-26', 1),
(2, '2014-09-26', 1),
(3, '2014-09-26', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_beli_detail`
--

CREATE TABLE `transaksi_beli_detail` (
  `belidetail_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `transaksibeli_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1= sudah diproses , 0 belum diproses'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_beli_detail`
--

INSERT INTO `transaksi_beli_detail` (`belidetail_id`, `barang_id`, `harga`, `qty`, `transaksibeli_id`, `status`) VALUES
(1, 18, 800000, 150, 1, 1),
(2, 18, 800000, 50, 1, 1),
(3, 19, 1200000, 500, 1, 1),
(7, 19, 9000000, 56, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `t_detail_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '1= sudah diproses , 0 belum diproses'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_jual`
--

CREATE TABLE `transaksi_jual` (
  `transaksi_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `operator_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_jual`
--

INSERT INTO `transaksi_jual` (`transaksi_id`, `customer_id`, `tanggal_transaksi`, `operator_id`) VALUES
(1, 1, '2014-09-26', 1),
(2, 2, '2014-09-26', 1),
(3, 2, '2014-09-26', 1),
(4, 2, '2019-03-28', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_jual_detail`
--

CREATE TABLE `transaksi_jual_detail` (
  `detail_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_jual_detail`
--

INSERT INTO `transaksi_jual_detail` (`detail_id`, `barang_id`, `harga_jual`, `qty`, `status`, `transaksi_id`) VALUES
(1, 18, 1200000, 50, 1, 1),
(3, 19, 100000, 300, 1, 2),
(4, 18, 1200000, 2, 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`operator_id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indeks untuk tabel `transaksi_beli`
--
ALTER TABLE `transaksi_beli`
  ADD PRIMARY KEY (`transaksibeli_id`);

--
-- Indeks untuk tabel `transaksi_beli_detail`
--
ALTER TABLE `transaksi_beli_detail`
  ADD PRIMARY KEY (`belidetail_id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`t_detail_id`);

--
-- Indeks untuk tabel `transaksi_jual`
--
ALTER TABLE `transaksi_jual`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indeks untuk tabel `transaksi_jual_detail`
--
ALTER TABLE `transaksi_jual_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `operator`
--
ALTER TABLE `operator`
  MODIFY `operator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaksi_beli`
--
ALTER TABLE `transaksi_beli`
  MODIFY `transaksibeli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi_beli_detail`
--
ALTER TABLE `transaksi_beli_detail`
  MODIFY `belidetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `t_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi_jual`
--
ALTER TABLE `transaksi_jual`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi_jual_detail`
--
ALTER TABLE `transaksi_jual_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
