-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 02:10 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlyhoithao`
--

-- --------------------------------------------------------

--
-- Table structure for table `canbo`
--

CREATE TABLE `canbo` (
  `macanbo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tencanbo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chucvu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dangky`
--

CREATE TABLE `dangky` (
  `mssv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mamon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ketquacanhan`
--

CREATE TABLE `ketquacanhan` (
  `mssv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mamon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `giai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `huychuong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khenthuongcanhan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ketquanhom`
--

CREATE TABLE `ketquanhom` (
  `manhom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mamon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `giai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `huychuong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khenthuongnhom` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khoanchi`
--

CREATE TABLE `khoanchi` (
  `maphieuchi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidungchi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaychi` date NOT NULL,
  `sotien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khoanthu`
--

CREATE TABLE `khoanthu` (
  `maphieuthu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoinop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sotien` double NOT NULL,
  `ngaythu` date NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lichthi`
--

CREATE TABLE `lichthi` (
  `stt` int(11) NOT NULL,
  `ngaythidau` date NOT NULL,
  `giothidau` time NOT NULL,
  `mssv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mamon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `malop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenlop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khoahoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monthi`
--

CREATE TABLE `monthi` (
  `mamon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenmon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nganh`
--

CREATE TABLE `nganh` (
  `manganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tennganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nganh`
--

INSERT INTO `nganh` (`manganh`, `tennganh`) VALUES
('cntt', 'Công Nghệ Thông Tin'),
('httt', 'Hệ Thống Thông Tin');

-- --------------------------------------------------------

--
-- Table structure for table `nhom`
--

CREATE TABLE `nhom` (
  `manhom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `malop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mamon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `mssv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tensv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `malop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `STT` int(11) NOT NULL,
  `tendangnhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `macanbo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trongtai`
--

CREATE TABLE `trongtai` (
  `matrongtai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tentrongtai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mamon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thoigianthidau` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canbo`
--
ALTER TABLE `canbo`
  ADD PRIMARY KEY (`macanbo`);

--
-- Indexes for table `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`mssv`,`mamon`);

--
-- Indexes for table `ketquacanhan`
--
ALTER TABLE `ketquacanhan`
  ADD PRIMARY KEY (`mssv`,`mamon`);

--
-- Indexes for table `ketquanhom`
--
ALTER TABLE `ketquanhom`
  ADD PRIMARY KEY (`manhom`,`mamon`);

--
-- Indexes for table `khoanchi`
--
ALTER TABLE `khoanchi`
  ADD PRIMARY KEY (`maphieuchi`);

--
-- Indexes for table `khoanthu`
--
ALTER TABLE `khoanthu`
  ADD PRIMARY KEY (`maphieuthu`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`malop`);

--
-- Indexes for table `monthi`
--
ALTER TABLE `monthi`
  ADD PRIMARY KEY (`mamon`);

--
-- Indexes for table `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`manganh`);

--
-- Indexes for table `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`manhom`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`mssv`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`STT`);

--
-- Indexes for table `trongtai`
--
ALTER TABLE `trongtai`
  ADD PRIMARY KEY (`matrongtai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
