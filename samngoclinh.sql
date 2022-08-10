-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 12:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samngoclinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'ocopchupuhgl@gmail.com', 'tutanbcasaqjhxql', 'thanhwilshere@gmail.com', '30000', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(11, 'tèo', '09123999', 'teo@gmail.com', 'hehehe', '2022/8/2 10:43:23', 1, 1, 'tèo'),
(12, 'tèo', '0129391029', 'teo@gmail.com', 'đặt 1 bàn', '2022/8/4 14:48:28', 0, 1, 'tèo'),
(13, 'Tiến', '012939129', 'tien@gmail.com', 'Tôi muốn đặt 1 bàn vào ngày mai', '2022/8/4 15:6:53', 0, 1, 'Tiến'),
(14, 'Tiến', '012939129', 'tien@gmail.com', 'Tôi muốn đặt 1 bàn vào ngày mai', '2022/8/4 15:8:5', 0, 1, 'Tiến'),
(15, 'tiến', '09213829', 'tien@gmail.com', 'tôi muốn đặt 1 bàn', '2022/8/4 15:11:30', 0, 1, 'tiến'),
(16, 'thành', '0392348919', 'tien@gmail.com', 'tôi muốn đặt 1 bàn', '2022/8/4 15:13:49', 0, 1, 'thành'),
(17, 'thành', '0392348919', 'tien@gmail.com', 'tôi muốn đặt 1 bàn', '2022/8/4 15:17:26', 0, 1, 'thành'),
(18, 'tèo', '09123199', 'teo@gmail.com', 'tui muốn ăn', '2022/8/4 15:22:50', 0, 1, 'tèo');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(7, 'Bảng giá tôn lạnh HOA SEN tháng 7/2022', 'bang-gia-ton-lanh-hoa-sen-thang-7-2022', '', '<p>Gi&aacute; t&ocirc;n Hoa Sen c&oacute; thể thay đổi phụ thuộc v&agrave;o nhu cầu thị trường do đ&oacute; để c&oacute; được gi&aacute; t&ocirc;n Hoa Sen Ch&iacute;nh x&aacute;c qu&yacute; kh&aacute;ch n&ecirc;n li&ecirc;n hệ tới Đại l&yacute; t&ocirc;n Hoa Sen để nhận b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>T&ocirc;n Thế D&acirc;n&nbsp;cập nhật&nbsp;<strong>bảng b&aacute;o gi&aacute; t&ocirc;n Hoa Sen&nbsp;</strong>để qu&yacute; kh&aacute;ch h&agrave;ng tham khảo</p>\r\n\r\n<p><strong>BẢNG B&Aacute;O GI&Aacute; T&Ocirc;N 9 S&Oacute;NG VU&Ocirc;NG &ndash; 5 S&Oacute;NG VU&Ocirc;NG &ndash; 13 S&Oacute;NG LA PH&Ocirc;NG &ndash; T&Ocirc;N C&Aacute;CH NHIỆT &ndash; T&Ocirc;N CLIPLOCK</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/web/public/upload/images/bang-bao-gia-ton-2.jpg\" style=\"height:1200px; width:652px\" /></strong></p>\r\n', 'Untitled_design.png', '2022-08-02 14:11:52', '1', '2022-08-02 14:16:53', '1', 1, 1),
(8, 'Tuyển Dụng ', 'tuyen-dung', '', '<p>Cần tuyển c&aacute;c vị tr&iacute; c&ocirc;ng việc như sau</p>\r\n\r\n<p>- 2 tạp vụ</p>\r\n\r\n<p>- 1 phụ bếp</p>\r\n\r\n<p>- 1 bảo vệ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\">Li&ecirc;n hệ : 096912312 !</span></p>\r\n', '6.jpg', '2022-08-04 14:52:28', '1', '2022-08-04 14:52:28', '1', 1, 1),
(9, 'Bài viết cập nhật món ăn ngon', 'bai-viet-cap-nhat-mon-an-ngon', '', '<p>B&agrave;i viết cập nhật m&oacute;n ăn ngon</p>\r\n\r\n<p>B&agrave;i viết cập nhật m&oacute;n ăn ngon</p>\r\n\r\n<p>B&agrave;i viết cập nhật m&oacute;n ăn ngon</p>\r\n\r\n<p>B&agrave;i viết cập nhật m&oacute;n ăn ngon</p>\r\n\r\n<p>B&agrave;i viết cập nhật m&oacute;n ăn ngon</p>\r\n\r\n<p>B&agrave;i viết cập nhật m&oacute;n ăn ngon</p>\r\n\r\n<p>B&agrave;i viết cập nhật m&oacute;n ăn ngon</p>\r\n\r\n<p>B&agrave;i viết cập nhật m&oacute;n ăn ngon</p>\r\n\r\n<p>B&agrave;i viết cập nhật m&oacute;n ăn ngon</p>\r\n\r\n<p><img alt=\"\" src=\"/web/public/upload/images/Loa-Bluetooth-Xiaomi-Mi-Basic-2-Chinh-hang-2.jpg\" style=\"height:481px; width:840px\" /></p>\r\n', '137396789_415347413218392_5418643466913598160_n.jpg', '2022-08-05 14:05:45', '1', '2022-08-05 14:05:45', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(72, 'tấn thành', 'thanh1996', 'e10adc3949ba59abbe56e057f20f883e', '', '0969124456', 'thanhwilshere96@gmail.com', '2022-06-13 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `type` int(2) DEFAULT 0,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `spname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`, `type`, `detail`, `spname`, `price`) VALUES
(9, 'Rượu Sâm ngọc Linh', 'anh-1', '295626352_463047169160338_7807561819756896299_n.jpg', '2022-08-05 15:40:53', '1', '2022-08-09 16:58:03', '', 1, 1, 0, '<p>Rượu S&acirc;m ngọc Linh</p>\r\n', 'Rượu Sâm ngọc Linh', 0),
(10, 'Đồng hồ Napolion', 'anh-2', '295554602_462098245921897_1093378652910772994_n.jpg', '2022-08-05 15:41:56', '1', '2022-08-09 16:56:59', '', 1, 1, 0, '<p>Đồng hồ napolion</p>\r\n\r\n<p>Chất liệu đồng</p>\r\n\r\n<p>Chạy bằng d&acirc;y c&oacute;t</p>\r\n\r\n<p>Trưng b&agrave;y cực đẹp</p>\r\n\r\n<p>Sử dụng tốt</p>\r\n', 'Đồng hồ Napolion', 0),
(11, 'Sâm Ngọc Linh', 'anh-3', '295465192_461978019267253_2780816907860748843_n.jpg', '2022-08-05 15:44:27', '1', '2022-08-09 16:50:10', '', 1, 1, 0, '<p>Giảm gi&aacute; 30% tất cả c&aacute;c mặt h&agrave;ng</p>\r\n\r\n<p><img alt=\"????‍♂️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb5/1/16/1f481_200d_2642.png\" style=\"height:16px; width:16px\" /><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t99/1/16/1f33a.png\" style=\"height:16px; width:16px\" />S&Acirc;M NGỌC LINH TĂNG CƯỜNG SỨC ĐỀ KH&Aacute;NG V&Agrave; PH&Ograve;NG NGỪA MỌI BỆNH TẬT.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t40/1/16/1f4a5.png\" style=\"height:16px; width:16px\" />C&ocirc;ng dụng<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/1f4aa.png\" style=\"height:16px; width:16px\" /></p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Bồi bổ sức khỏe, bổ kh&iacute; huyết.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Trị đau bụng,cần m&aacute;u</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />B&igrave;nh ổn huyết &aacute;p cao v&agrave; thấp</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Điều trị tiểu đường(d&ugrave;ng s&acirc;m tươi sấy kh&ocirc;,bảo quản ngăn m&aacute;t)</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Giảm đau,chống strees</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Tăng cường sinh lực v&agrave; tr&iacute; lực.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Tăng khả năng miễn dịch.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />K&iacute;ch th&iacute;ch hoạt động tr&iacute; n&atilde;o.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Giải độc gan</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Hỗ trợ điều trị v&agrave; ph&ograve;ng ngừa ung thư.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Chống suy nhược cơ thể, tăng cường sức đề kh&aacute;ng.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Ti&ecirc;u đờm, thanh giọng, đẹp da v&agrave; nhiều c&ocirc;ng dụng kh&aacute;c.</p>\r\n\r\n<p><img alt=\"????‍????‍????‍????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t9b/1/16/1f468_200d_1f469_200d_1f467_200d_1f466.png\" style=\"height:16px; width:16px\" />Những người n&ecirc;n sử dụng S&acirc;m Ngọc Linh</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Người cần bồi bổ sức khoẻ</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Người mới ốm dậy,sức khoẻ suy giảm</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Người mệt mỏi,huyết &aacute;p cao v&agrave; thấp</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Người mỡ m&aacute;u,tiểu đường,vi&ecirc;m gan v&agrave; sơ gan</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Người thường xuy&ecirc;n bia rượu,bar s&agrave;n,d&ugrave;ng chất k&iacute;ch th&iacute;ch.</p>\r\n\r\n<p><img alt=\"▶️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t40/1/16/25b6.png\" style=\"height:16px; width:16px\" />khi người mệt mỏi,đau ốm,bệnh tật hoặc yếu trong người,lấy từ 3-4 l&aacute;t ngậm.Từ 2 đến 3 tiếng sau sẽ thấy người khoẻ l&ecirc;n tr&ocirc;ng thấy.</p>\r\n\r\n<p><img alt=\"✍️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te2/1/16/270d.png\" style=\"height:16px; width:16px\" />Hỗ trợ kiểm định S&acirc;m để chứng minh tất cả c&aacute;c hoạt chất đặc trưng, trong đ&oacute; c&oacute; chất Mr2 qu&yacute; hiếm, chỉ c&oacute; S&acirc;m Ngọc Linh thật mới c&oacute; (Mr2 l&agrave; chất ức chế tế b&agrave;o ung thư, khối u)</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/nh%E1%BB%AFng?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#những</a> củ s&acirc;m Ngọc linh đẹp nhất#</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/c%E1%BB%A7?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#củ</a> s&acirc;m Ngọc Linh d&aacute;ng độc nhất#</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/hoa?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#hoa</a> s&acirc;m Ngọc Linh #</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/qu%E1%BA%A3?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#quả</a> s&acirc;m ngọc linh#</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/c%E1%BB%A7?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#củ</a> s&acirc;m ngọc linh khủng nhất#</p>\r\n\r\n<p>Li&ecirc;n hệ đt 0327428268 để được tư vấn trực tiếp</p>\r\n\r\n<p>Zalo: 0327427268. Kh&aacute;nh Xu&acirc;n Gia Lai</p>\r\n\r\n<p>Bao gi&aacute; rẻ nhất thị trường <img alt=\"????️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /><img alt=\"????️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /><img alt=\"????️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /><img alt=\"????️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /><img alt=\"????️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /></p>\r\n', 'Sâm Ngọc Linh', 0),
(12, ' Hoa, quả Sâm Ngọc Linh', 'anh-4', '294574376_463046362493752_1628037000112334995_n.jpg', '2022-08-05 15:44:35', '1', '2022-08-09 16:48:29', '', 1, 1, 0, '<p><strong>E lại về hoa S&acirc;m Ngọc Linh v&agrave; quả S&acirc;m Ngọc Linh. Gi&aacute; hạ nhiệt<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta/1/16/1f343.png\" style=\"height:16px; width:16px\" /><img alt=\"☘️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1/16/2618.png\" style=\"height:16px; width:16px\" /><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te3/1/16/1f490.png\" style=\"height:16px; width:16px\" /></strong></p>\r\n', ' Hoa, quả Sâm Ngọc Linh', 0),
(13, 'Đông trùng hạ thảo ve sầu', 'anh-5', '295604552_463047472493641_3931592669679370247_n.jpg', '2022-08-05 15:44:44', '1', '2022-08-09 16:46:30', '', 1, 1, 0, '<p>Đ&ocirc;ng tr&ugrave;ng hạ thảo ve sầu</p>\r\n', 'Đông trùng hạ thảo ve sầu', 0),
(14, 'Nấm lim xanh rừng', 'anh-6', '295820094_463486475783074_5643852223573261498_n.jpg', '2022-08-05 15:44:56', '1', '2022-08-09 16:45:46', '', 1, 1, 0, '<p>Nấm lim xanh rừng. Khắc tinh của u, bướu</p>\r\n\r\n<p>Gi&aacute; rừng: 1350k</p>\r\n\r\n<p>Trồng: 550k</p>\r\n', 'Nấm lim xanh rừng', 1350000),
(15, 'Sâm cau đỏ', 'anh-7', '295693497_463487049116350_2796282903166720062_n.jpg', '2022-08-05 15:45:12', '1', '2022-08-09 16:44:20', '', 1, 1, 0, '<p><img alt=\"❎\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdf/1/16/274e.png\" style=\"height:16px; width:16px\" /><img alt=\"❌\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdd/1/16/274c.png\" style=\"height:16px; width:16px\" /> T&aacute;c dụng của s&acirc;m cau đỏ.</p>\r\n\r\n<p>+ T&aacute;c dụng bổ thận tr&aacute;ng dương, kiện g&acirc;n tr&aacute;ng cốt, cố tinh hơn đặc biệt l&agrave; ở v&ograve;ng bụng</p>\r\n\r\n<p>+ T&aacute;c dụng bồi bổ sức khỏe cơ thể</p>\r\n\r\n<p>+ T&aacute;c dụng lợi tiểu</p>\r\n\r\n<p>+ Trị v&agrave;ng da, hen xuyễn,Trĩ</p>\r\n\r\n<p>+ T&aacute;c dụng tăng cường hoạt động ph&ograve;ng the, tăng cường khả năng cho cả nam v&agrave; nữ.</p>\r\n\r\n<p>+ Người gi&agrave; đau nhức xương khớp, ch&acirc;n tay t&ecirc; mỏi</p>\r\n\r\n<p>+ Liệt dương, v&ocirc; sinh, xuất tinh sớm</p>\r\n\r\n<p>+ Người gi&agrave; đau nhức xương khớp, ch&acirc;n tay t&ecirc; mỏi</p>\r\n', 'Sâm cau đỏ', 0),
(16, 'SÂM DÂY NGỌC LINH ', 'anh-8', '295711017_463487549116300_6925610706705369456_n.jpg', '2022-08-05 15:45:27', '1', '2022-08-09 16:42:26', '', 1, 1, 0, '<p>S&Acirc;M D&Acirc;Y NGỌC LINH</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t40/1/16/1f4a5.png\" style=\"height:16px; width:16px\" /> C&ocirc;ng dụng:</p>\r\n\r\n<p>- Gi&uacute;p tăng cường sức đề kh&aacute;ng, thanh lọc cơ thể.</p>\r\n\r\n<p>- Giải độc, tăng cường kh&iacute; huyết.</p>\r\n\r\n<p>- Hỗ trợ ti&ecirc;u h&oacute;a, gi&uacute;p ăn ngon miệng, cải thiện giấc ngủ</p>\r\n\r\n<p>- Giảm căng thẳng, mệt mỏi, tăng khả năng sinh sản hồng cầu</p>\r\n\r\n<p>- Chống l&atilde;o h&oacute;a, gi&uacute;p da dẻ hồng h&agrave;o.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t40/1/16/1f4a5.png\" style=\"height:16px; width:16px\" /> C&aacute;ch d&ugrave;ng : Nấu nước uống hằng ng&agrave;y, hầm g&agrave;, ng&acirc;m rượu, ng&acirc;m mật ong...</p>\r\n\r\n<p>Đặc biệt Cả trẻ nhỏ v&agrave; người lớn tuổi đều c&oacute; thể sử dụng li&ecirc;n tục hằng ng&agrave;y m&agrave; kh&ocirc;ng g&acirc;y t&aacute;c dụng phụ ! <img alt=\"☎️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t22/1/16/260e.png\" style=\"height:16px; width:16px\" /> 0327427268</p>\r\n', 'SÂM DÂY NGỌC LINH ', 0),
(17, 'Long nhãn vụ mới', 'anh-9', '295006970_463488909116164_65639118979029400_n.jpg', '2022-08-05 15:45:38', '1', '2022-08-09 16:38:38', '', 1, 1, 0, '<p>Long nh&atilde;n vụ mới<br />\r\n220k/kg</p>\r\n', 'Long nhãn vụ mới', 220000),
(18, 'Quả La Hán', '10', '296972928_467348982063490_415514581945630276_n.jpg', '2022-08-05 15:45:46', '1', '2022-08-09 16:37:36', '', 1, 1, 0, '<p>QUẢ LA H&Aacute;N:<img alt=\"❤️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"❤️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"❤️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"❤️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"❤️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"❤️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"❤️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><br />\r\n1. Giảm nguy cơ b&eacute;o ph&igrave; v&agrave; tiểu đường<br />\r\n2. Trị tiểu đường<br />\r\n3. T&aacute;c dụng chống oxy ho&aacute; mạnh mẽ<br />\r\n4. Chống vi&ecirc;m, giải nhiệt<br />\r\n5. Chống nhiễm tr&ugrave;ng<br />\r\n6. Ti&ecirc;u tan mệt mỏi<br />\r\n7. Ph&ograve;ng v&agrave; điều trị ung thư<br />\r\n8. Kh&aacute;ng Histamin chống dị ứng<br />\r\nĐặc biệt quả La H&aacute;n c&ograve;n trị ho cho b&eacute; rất tốt, uống thay nước v&agrave;o m&ugrave;a h&egrave; th&igrave; m&aacute;t v&agrave; dễ chịu</p>\r\n', 'Quả La Hán', 0),
(19, 'HOA ĐU ĐỦ ĐỰC KHÔ', '11', '296376966_467349765396745_183881270749123771_n.jpg', '2022-08-05 15:46:00', '1', '2022-08-09 16:36:49', '', 1, 1, 0, '<p>HOA ĐU ĐỦ ĐỰC KH&Ocirc; .</p>\r\n\r\n<p><img alt=\"❎\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdf/1/16/274e.png\" style=\"height:16px; width:16px\" />T&aacute;c dụng</p>\r\n\r\n<p>1. Hoa đu đủ đực c&oacute; t&aacute;c dụng điều trị ho, vi&ecirc;m họng, mất tiếng khản tiếng</p>\r\n\r\n<p>2. Hoa đu đủ đực hỗ trợ điều trị bệnh ung thư, ngăn chặn sự ph&aacute;t triển của c&aacute;c tế b&agrave;o ung thư: đặc biệt l&agrave; ung thư v&uacute;, ung thư phổi , v&agrave; ung thư tiền liệt tuyến</p>\r\n\r\n<p>3. Hoa đu đủ k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, hỗ trợ điều trị bệnh đau v&agrave; vi&ecirc;m lo&eacute;t dạ d&agrave;y</p>\r\n\r\n<p>4. Hoa đu đủ đực hỗ trợ điều trị sỏi thận</p>\r\n\r\n<p>5. Hoa đu đủ đực chữa đ&aacute;i nuốt , đ&aacute;i rắt</p>\r\n\r\n<p>kh&ocirc;ng sử dụng cho phụ nữ mang thai .</p>\r\n\r\n<p><img alt=\"✍\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te2/1/16/270d.png\" style=\"height:16px; width:16px\" />H&agrave;ng sẵn ,s&iacute;p to&agrave;n quốc .</p>\r\n', 'HOA ĐU ĐỦ ĐỰC KHÔ', 0),
(20, 'Thất diệp nhất chi hoa', '12', '297099433_468511678613887_376994719721691009_n.jpg', '2022-08-05 15:46:12', '1', '2022-08-09 16:35:06', '', 1, 1, 0, '<p>Em c&ograve;n 7kg thất diệp nhất chi hoa</p>\r\n\r\n<p>L&ecirc;n b&igrave;nh si&ecirc;u đẹp</p>\r\n\r\n<p>C&oacute; b&igrave;nh mẫu gửi kh&aacute;ch tham khảo</p>\r\n\r\n<p>Gi&aacute; ko thể rẻ hơn</p>\r\n\r\n<p>Li&ecirc;n lạc&nbsp;em ạ</p>\r\n', 'Thất diệp nhất chi hoa', 0),
(21, 'Cụ sâm vùi  già', '13', '296280370_468514008613654_1910745639375551004_n.jpg', '2022-08-05 15:46:24', '1', '2022-08-09 16:33:54', '', 1, 1, 0, '<p>Cụ s&acirc;m v&ugrave;i &nbsp;gi&agrave; tr&ecirc;n 30 tuổi &nbsp;duy nhất hiếm gặp đ&acirc;y 1,180 kg ,inbox gi&aacute;</p>\r\n', 'Cụ sâm vùi  già', 0),
(22, 'Sâm rừng', '14', '296131136_468515098613545_6229759262132178086_n.jpg', '2022-08-05 15:46:37', '1', '2022-08-09 16:31:30', '', 1, 1, 0, '<p>Mẫu rẻ cho kh&aacute;ch sưu tầm</p>\r\n', 'Sâm rừng', 0),
(23, 'Cặp sâm Ngọc Linh rừng siêu khủng', '15', '296442178_469246158540439_8859760700539725402_n.jpg', '2022-08-05 15:46:50', '1', '2022-08-09 16:30:06', '', 1, 1, 0, '<p>Cặp s&acirc;m Ngọc Linh rừng si&ecirc;u khủng 700g, d&aacute;ng rồng si&ecirc;u đẹp, gi&agrave; trăm năm tuổi, mới xuống n&uacute;i c&agrave;nh l&aacute; xanh ri. Đ&atilde; kiểm định chuẩn s&acirc;m, si&ecirc;u vip c&oacute; 102.</p>\r\n', 'Cặp sâm Ngọc Linh rừng siêu khủng', 0),
(24, 'Siêu phẩm bể Đinh lăng 1000l', '16', '296058162_469247335206988_5708280207821382782_n.jpg', '2022-08-05 15:47:04', '1', '2022-08-09 16:24:49', '', 1, 1, 0, '<p>Si&ecirc;u phẩm bể Đinh lăng 1000l<br />\r\nCủ Đinh lăng 139kg v&iacute;p chuẩn bồn nếp l&aacute; nhỏ<br />\r\nĐ&ocirc;n gỗ sồi nga h&agrave;ng 1 đe to khủng khiếp<br />\r\nH&agrave;ng chất si&ecirc;u phẩm đẹp nhất khu vực Bắc bộ D&aacute;ng rồng bay ph&uacute;c Lộc v&agrave;o nh&agrave;<br />\r\nTrưng b&agrave;y hoặc biếu nh&agrave; cực phẩm nu&ocirc;n ạ<br />\r\n<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />&nbsp;cả bể cả củ cả đ&ocirc;n chưa rượu<br />\r\nMời mọi người đăng b&aacute;n c&ugrave;ng em mới ạ<br />\r\nH&agrave;ng vừa n&ecirc;n bể ạ<br />\r\nIb zalo .0327427168 nh&agrave; e nhận l&ecirc;n bể cho kh&aacute;ch<br />\r\nTrưng b&agrave;y chơi rượu cực phẩm</p>\r\n', 'Siêu phẩm bể Đinh lăng 1000l', 0),
(25, 'Bình rượu nhân sâm trường bạch hoang giã ', '17', '297546591_470185065113215_3957973994218678583_n.jpg', '2022-08-05 15:47:13', '1', '2022-08-09 16:11:54', '', 1, 1, 0, '<p>B&igrave;nh 8l h&agrave;n</p>\r\n\r\n<p>Gi&aacute; hơn hai triệu</p>\r\n\r\n<p>B&igrave;nh rượu nh&acirc;n s&acirc;m trường bạch hoang gi&atilde; ! Rễ ngọc đẹp hết nước chấm!tỏa k&iacute;n b&igrave;nh! 1 vết sẹo liền l&acirc;u năm tự nhi&ecirc;n thể hiện r&otilde; độ hoang gi&atilde; của củ nh&acirc;n s&acirc;m chất lượng s&acirc;m n&uacute;i trường bạch sơn! B&igrave;nh 8.5lit h&agrave;n! B&aacute;n nhanh gi&aacute; 2,700r! Qu&aacute; rẻ cho 1 cuộc t&igrave;nh!</p>\r\n', 'Bình rượu nhân sâm trường bạch hoang giã ', 2700000),
(26, 'Kim Tuyến', 'hi', '298054061_472856031512785_5886945873694161624_n.jpg', '2022-08-05 16:03:18', '1', '2022-08-09 16:10:42', '', 1, 1, 0, '<p>C&ograve;n 250g lần kim tuyến xả 600</p>\r\n', 'Kim Tuyến', 600000),
(27, 'Quả sâm xả', 'sam-ngoc-linh', '298199611_472856524846069_7772481427825741520_n.jpg', '2022-08-09 13:58:49', '1', '2022-08-09 16:09:33', '', 1, 1, NULL, '<ul>\r\n	<li><span style=\"color:#c0392b\">Quả s&acirc;m xả</span></li>\r\n</ul>\r\n', 'Quả sâm xả', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Pleiku', 'user-group.png', '2019-04-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Pleiku', 'bc0d4c186522764fc9457b7bacb635e4.png', '2019-04-25 22:08:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
