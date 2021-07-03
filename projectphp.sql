-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 26, 2021 lúc 07:18 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `projectphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `CatName` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `CatName`, `Status`) VALUES
(7, 'Nội khoa', 1),
(8, 'Ngoại khoa', 1),
(11, 'Nhi khoa', 1),
(12, 'Sản phụ khoa', 1),
(13, 'Điều dưỡng', 1),
(14, 'Tai mũi họng', 1),
(15, 'Thẩm mỹ', 1),
(16, 'Chuẩn đoán hình ảnh', 1),
(17, 'Sách dược', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `ProName` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sale_off` int(20) NOT NULL,
  `mota` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`pro_id`, `ProName`, `id`, `price`, `image`, `sale_off`, `mota`, `status`) VALUES
(7, 'Bài giảng ngoại khoa', 8, 200000, '1830f388d630276e7e21.jpg', 12222, 'u', 1),
(22, 'Atlas chuẩn đoán', 14, 450000, '60174972_463068354459269_5948228503198498816_n.jpg', 12222, '', 1),
(29, 'Phác đồ sơ sinh 2019-2021', 11, 450000, '40e51e5865e794b9cdf6.jpg', 10000, 'hay', 1),
(30, 'Thực hành nha chu thẩm mỹ', 15, 150000, '8ab99141f7da12844bcb.jpg', 0, '<p>Hay</p>\r\n', 1),
(31, 'Thông khí nhân tạo', 7, 450000, '29aecfb20230e76ebe21.jpg', 100000, '<p>S&aacute;ch hay</p>\r\n', 1),
(32, 'Hướng dẫn phân tích dược liệu lâm sàng', 7, 200000, '49df6d311cfde5a3bcec.jpg', 100000, '<p><strong>hướng dẫn ph&acirc;n t&iacute;ch dược liệu l&acirc;m s&agrave;ng</strong></p>\r\n', 1),
(33, 'Hiểu hết mụn', 15, 80000, '50f04a660024ff7aa635.jpg', 0, '<p>Hiểu hết mụn</p>\r\n', 1),
(34, 'Ngoại khoa cơ sở', 8, 95000, '58a1cb1f03bee6e0bfaf.jpg', 111, '<p>Ngoại khoa cơ sở</p>\r\n', 1),
(35, 'Y học thực chứng', 13, 450000, '79c1edaee45d1c03454c.jpg', 0, '<p>Y học thực chứng</p>\r\n', 1),
(36, 'Bệnh truyền nhiễm', 8, 200000, '81ef8896ff13034d5a02.jpg', 0, '<p>Bệnh truyền nhiễm</p>\r\n', 1),
(37, 'Tiếp cận các vấn đề nội khoa thường gặp', 7, 70000, '94b55c0879b088eed1a1.jpg', 0, '<p>Tiếp cận</p>\r\n', 1),
(38, 'Giải phẫu bệnh học', 7, 99000, '5834e552cc44291a7055.jpg', 0, '<p>bệnh học</p>\r\n', 1),
(39, 'Hướng dẫn quy trình kỹ thuật', 17, 200000, 'quy-trình-gây-mê-hồi-sức-2017.jpg', 0, '<p>Hay</p>\r\n', 1),
(40, 'Điều dưỡng trong tim mạch', 13, 90000, '72963992_2463730577286796_650233558710878208_n.jpg', 0, '<p>hay</p>\r\n', 1),
(41, 'Chuẩn đoán hình ảnh', 16, 450000, 'eb3ea12cda2c3d72643d.jpg', 0, '', 1),
(42, 'Những vấn đề sản phụ khoa', 12, 80000, '71742489_2432260467100474_2965073115660419072_n.jpg', 0, '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
