-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 06, 2024 lúc 11:26 AM
-- Phiên bản máy phục vụ: 5.7.44-log
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `khanhcode`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `api_logo`
--

CREATE TABLE `api_logo` (
  `id` int(11) NOT NULL,
  `shortName` text CHARACTER SET utf8mb4 NOT NULL,
  `logo` text CHARACTER SET utf8mb4 NOT NULL,
  `name` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `api_logo`
--

INSERT INTO `api_logo` (`id`, `shortName`, `logo`, `name`) VALUES
(1, 'VietinBank', 'https://api.vietqr.io/img/ICB.png', 'Ngân hàng TMCP Công thương Việt Nam'),
(2, 'Vietcombank', 'https://api.vietqr.io/img/VCB.png', 'Ngân hàng TMCP Ngoại Thương Việt Nam'),
(3, 'BIDV', 'https://api.vietqr.io/img/BIDV.png', 'Ngân hàng TMCP Đầu tư và Phát triển Việt Nam'),
(4, 'Agribank', 'https://api.vietqr.io/img/VBA.png', 'Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam'),
(5, 'OCB', 'https://api.vietqr.io/img/OCB.png', 'Ngân hàng TMCP Phương Đông'),
(6, 'MBBank', 'https://api.vietqr.io/img/MB.png', 'Ngân hàng TMCP Quân đội'),
(7, 'Techcombank', 'https://api.vietqr.io/img/TCB.png', 'Ngân hàng TMCP Kỹ thương Việt Nam'),
(8, 'ACB', 'https://api.vietqr.io/img/ACB.png', 'Ngân hàng TMCP Á Châu'),
(9, 'VPBank', 'https://api.vietqr.io/img/VPB.png', 'Ngân hàng TMCP Việt Nam Thịnh Vượng'),
(10, 'TPBank', 'https://api.vietqr.io/img/TPB.png', 'Ngân hàng TMCP Tiên Phong'),
(11, 'Sacombank', 'https://api.vietqr.io/img/STB.png', 'Ngân hàng TMCP Sài Gòn Thương Tín'),
(12, 'HDBank', 'https://api.vietqr.io/img/HDB.png', 'Ngân hàng TMCP Phát triển Thành phố Hồ Chí Minh'),
(13, 'VietCapitalBank', 'https://api.vietqr.io/img/VCCB.png', 'Ngân hàng TMCP Bản Việt'),
(14, 'SCB', 'https://api.vietqr.io/img/SCB.png', 'Ngân hàng TMCP Sài Gòn'),
(15, 'VIB', 'https://api.vietqr.io/img/VIB.png', 'Ngân hàng TMCP Quốc tế Việt Nam'),
(16, 'SHB', 'https://api.vietqr.io/img/SHB.png', 'Ngân hàng TMCP Sài Gòn - Hà Nội'),
(17, 'Eximbank', 'https://api.vietqr.io/img/EIB.png', 'Ngân hàng TMCP Xuất Nhập khẩu Việt Nam'),
(18, 'MSB', 'https://api.vietqr.io/img/MSB.png', 'Ngân hàng TMCP Hàng Hải'),
(19, 'CAKE', 'https://api.vietqr.io/img/CAKE.png', 'TMCP Việt Nam Thịnh Vượng - Ngân hàng số CAKE by VPBank'),
(20, 'Ubank', 'https://api.vietqr.io/img/UBANK.png', 'TMCP Việt Nam Thịnh Vượng - Ngân hàng số Ubank by VPBank'),
(21, 'Timo', 'https://vietqr.net/portal-service/resources/icons/TIMO.png', 'Ngân hàng số Timo by Ban Viet Bank (Timo by Ban Viet Bank)'),
(22, 'ViettelMoney', 'https://api.vietqr.io/img/VIETTELMONEY.png', 'Tổng Công ty Dịch vụ số Viettel - Chi nhánh tập đoàn công nghiệp viễn thông Quân Đội'),
(23, 'VNPTMoney', 'https://api.vietqr.io/img/VNPTMONEY.png', 'VNPT Money'),
(24, 'SaigonBank', 'https://api.vietqr.io/img/SGICB.png', 'Ngân hàng TMCP Sài Gòn Công Thương'),
(25, 'BacABank', 'https://api.vietqr.io/img/BAB.png', 'Ngân hàng TMCP Bắc Á'),
(26, 'PVcomBank', 'https://api.vietqr.io/img/PVCB.png', 'Ngân hàng TMCP Đại Chúng Việt Nam'),
(27, 'Oceanbank', 'https://api.vietqr.io/img/OCEANBANK.png', 'Ngân hàng Thương mại TNHH MTV Đại Dương'),
(28, 'NCB', 'https://api.vietqr.io/img/NCB.png', 'Ngân hàng TMCP Quốc Dân'),
(29, 'ShinhanBank', 'https://api.vietqr.io/img/SHBVN.png', 'Ngân hàng TNHH MTV Shinhan Việt Nam'),
(30, 'ABBANK', 'https://api.vietqr.io/img/ABB.png', 'Ngân hàng TMCP An Bình'),
(31, 'VietABank', 'https://api.vietqr.io/img/VAB.png', 'Ngân hàng TMCP Việt Á'),
(32, 'NamABank', 'https://api.vietqr.io/img/NAB.png', 'Ngân hàng TMCP Nam Á'),
(33, 'PGBank', 'https://api.vietqr.io/img/PGB.png', 'Ngân hàng TMCP Xăng dầu Petrolimex'),
(34, 'VietBank', 'https://api.vietqr.io/img/VIETBANK.png', 'Ngân hàng TMCP Việt Nam Thương Tín'),
(35, 'BaoVietBank', 'https://api.vietqr.io/img/BVB.png', 'Ngân hàng TMCP Bảo Việt'),
(36, 'SeABank', 'https://api.vietqr.io/img/SEAB.png', 'Ngân hàng TMCP Đông Nam Á'),
(37, 'COOPBANK', 'https://api.vietqr.io/img/COOPBANK.png', 'Ngân hàng Hợp tác xã Việt Nam'),
(38, 'LienVietPostBank', 'https://api.vietqr.io/img/LPB.png', 'Ngân hàng TMCP Bưu Điện Liên Việt'),
(39, 'KienLongBank', 'https://api.vietqr.io/img/KLB.png', 'Ngân hàng TMCP Kiên Long'),
(40, 'KBank', 'https://api.vietqr.io/img/KBANK.png', 'Ngân hàng Đại chúng TNHH Kasikornbank'),
(41, 'KookminHN', 'https://api.vietqr.io/img/KBHN.png', 'Ngân hàng Kookmin - Chi nhánh Hà Nội'),
(42, 'KEBHanaHCM', 'https://api.vietqr.io/img/KEBHANAHCM.png', 'Ngân hàng KEB Hana – Chi nhánh Thành phố Hồ Chí Minh'),
(43, 'KEBHANAHN', 'https://api.vietqr.io/img/KEBHANAHN.png', 'Ngân hàng KEB Hana – Chi nhánh Hà Nội'),
(44, 'MAFC', 'https://api.vietqr.io/img/MAFC.png', 'Công ty Tài chính TNHH MTV Mirae Asset (Việt Nam)'),
(45, 'Citibank', 'https://api.vietqr.io/img/CITIBANK.png', 'Ngân hàng Citibank, N.A. - Chi nhánh Hà Nội'),
(46, 'KookminHCM', 'https://api.vietqr.io/img/KBHCM.png', 'Ngân hàng Kookmin - Chi nhánh Thành phố Hồ Chí Minh'),
(47, 'VBSP', 'https://api.vietqr.io/img/VBSP.png', 'Ngân hàng Chính sách Xã hội'),
(48, 'Woori', 'https://api.vietqr.io/img/WVN.png', 'Ngân hàng TNHH MTV Woori Việt Nam'),
(49, 'VRB', 'https://api.vietqr.io/img/VRB.png', 'Ngân hàng Liên doanh Việt - Nga'),
(50, 'UnitedOverseas', 'https://api.vietqr.io/img/UOB.png', 'Ngân hàng United Overseas - Chi nhánh TP. Hồ Chí Minh'),
(51, 'StandardChartered', 'https://api.vietqr.io/img/SCVN.png', 'Ngân hàng TNHH MTV Standard Chartered Bank Việt Nam'),
(52, 'PublicBank', 'https://api.vietqr.io/img/PBVN.png', 'Ngân hàng TNHH MTV Public Việt Nam'),
(53, 'Nonghyup', 'https://api.vietqr.io/img/NHB.png', 'Ngân hàng Nonghyup - Chi nhánh Hà Nội'),
(54, 'IndovinaBank', 'https://api.vietqr.io/img/IVB.png', 'Ngân hàng TNHH Indovina'),
(55, 'IBKHCM', 'https://api.vietqr.io/img/IBK.png', 'Ngân hàng Công nghiệp Hàn Quốc - Chi nhánh TP. Hồ Chí Minh'),
(56, 'IBKHN', 'https://api.vietqr.io/img/IBK.png', 'Ngân hàng Công nghiệp Hàn Quốc - Chi nhánh Hà Nội'),
(57, 'HSBC', 'https://api.vietqr.io/img/HSBC.png', 'Ngân hàng TNHH MTV HSBC (Việt Nam)'),
(58, 'HongLeong', 'https://api.vietqr.io/img/HLBVN.png', 'Ngân hàng TNHH MTV Hong Leong Việt Nam'),
(59, 'GPBank', 'https://api.vietqr.io/img/GPB.png', 'Ngân hàng Thương mại TNHH MTV Dầu Khí Toàn Cầu'),
(60, 'DongABank', 'https://api.vietqr.io/img/DOB.png', 'Ngân hàng TMCP Đông Á'),
(61, 'DBSBank', 'https://api.vietqr.io/img/DBS.png', 'DBS Bank Ltd - Chi nhánh Thành phố Hồ Chí Minh'),
(62, 'CIMB', 'https://api.vietqr.io/img/CIMB.png', 'Ngân hàng TNHH MTV CIMB Việt Nam'),
(63, 'CBBank', 'https://api.vietqr.io/img/CBB.png', 'Ngân hàng Thương mại TNHH MTV Xây dựng Việt Nam'),
(64, 'MOMO', 'https://imgur.com/ESXApvP.png', 'Ví Điện Tử MOMO'),
(65, 'ZaloPay', 'https://i.imgur.com/6iUZXSZ.png', 'Ví Điện Tử Zalo Pay'),
(66, 'Thesieure', 'https://imgur.com/GEHuS50.png', 'Ví Điện Tử TSR');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangchung`
--

CREATE TABLE `bangchung` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bangchung`
--

INSERT INTO `bangchung` (`id`, `code`, `image`) VALUES
(165, 'test-code-vn', '/upload/f7bc46fb6b6e42e1.jpg'),
(215, 'dichvuright-dev', '/upload/527a8fa1e10790ee.png'),
(217, 'thai-le', '/upload/77d32bc92c0e6a57.jpg'),
(218, 'ccc', '/upload/71a883c31f1df9f3.jpg'),
(219, 'ccc', '/upload/12b63985b1f80a9d.jpg'),
(220, 'ccc', '/upload/9fe6ba3f2310ab94.png'),
(227, 'ccccad-3', '/upload/497ccab05e941fb7.jpg'),
(241, 'khanh-qua-dep-zai-17', '/upload/041b101e753840b0.png'),
(242, 'khanh-qua-dep-zai-17', '/upload/66add425d7e10c4f.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `short_name` text NOT NULL,
  `accountNumber` text NOT NULL,
  `accountName` text NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `short_name`, `accountNumber`, `accountName`, `logo`) VALUES
(7, 'MBBank', '9704229203876741128', 'NGUYEN DUY KHANH', 'https://i.imgur.com/XMD0pcJ.png'),
(8, 'THESIEURE', 'cskh.dichvuright@gmail.com', 'NGUYEN DUY KHANH', 'https://imgur.com/ESXApvP.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_auto`
--

CREATE TABLE `bank_auto` (
  `id` int(11) NOT NULL,
  `gdv` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tid` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET cp1250 NOT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci,
  `amount` int(11) DEFAULT '0',
  `received` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `create_gettime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `bank_auto`
--

INSERT INTO `bank_auto` (`id`, `gdv`, `tid`, `bank`, `description`, `amount`, `received`, `create_gettime`, `user_id`) VALUES
(1, 'Nguyễn Duy Khánh', 'I5Pe29891772CREDIT', 'VIETTEL MONEY', 'I5Pe29891772 dichvuright 1', 10000, '10000', '2024-08-15 11:37:25', 1),
(26, 'Nguyễn Duy Khánh', 'I5Oq29926930CREDIT', 'VIETTEL MONEY', 'I5Oq29926930 admingdv 2', 10000, '10000', '2024-08-15 18:06:42', 2),
(27, 'Dương Vinh', 'I54f29966575CREDIT', 'VIETTEL MONEY', 'I54f29966575 admingdv 5', 5000, '5000', '2024-08-15 22:35:53', 5),
(28, 'Nhân Nguyễn', 'I58c29968589CREDIT', 'VIETTEL MONEY', 'I58c29968589 admingdv 8', 10000, '10000', '2024-08-15 23:05:25', 8),
(29, 'Linh Khanh', 'I5yF29969523CREDIT', 'VIETTEL MONEY', 'I5yF29969523 admingdv 9', 5000, '5000', '2024-08-15 23:23:37', 9),
(30, 'Oải Cả Trưởng', 'I5kE29969965CREDIT', 'VIETTEL MONEY', 'I5kE29969965 admingdv 10', 5000, '5000', '2024-08-15 23:33:32', 10),
(31, 'Nhân FG ( acc phụ )', 'I5gV29970899CREDIT', 'VIETTEL MONEY', 'I5gV29970899 admingdv 11', 10000, '10000', '2024-08-15 23:58:47', 11),
(32, 'Phạm Thái Hoà', 'I5wh29971783CREDIT', 'VIETTEL MONEY', 'I5wh29971783 admingdv 12', 5000, '5000', '2024-08-16 00:32:09', 12),
(33, 'Thái Lê', '2EC6F39484C206F7E518FB3741D53DFECREDIT', 'VIETTEL MONEY', 'GD nhan tien 724003 admingdv 16', 5000, '5000', '2024-08-16 07:42:57', 16),
(34, 'khanhdz', 'I58P30075105CREDIT', 'VIETTEL MONEY', 'I58P30075105 admingdv 22', 5000, '5000', '2024-08-16 22:29:07', 22),
(35, 'NGUYEN TUAN', 'OQCH03859840CREDIT', 'VIETTEL MONEY', 'OQCH03859840 64842508161-admingdv 23-CHUYEN TIEN-OQCH03859840-fe924abf-770a-4894-9d46-e17fd3d7', 10000, '10000', '2024-08-17 08:38:21', 23),
(36, 'Thảo Nguyên', 'I5tr30565072CREDIT', 'VIETTEL MONEY', 'I5tr30565072 admingdv 32', 10000, '10000', '2024-08-21 17:39:26', 32),
(37, 'Nguyễn Kiều My', 'I5Cg30824481CREDIT', 'VIETTEL MONEY', 'I5Cg30824481 admingdv 33', 5000, '5000', '2024-08-24 16:21:22', 33),
(38, 'Trần Quốc Phi', 'I5Vx30835955CREDIT', 'VIETTEL MONEY', 'I5Vx30835955 admingdv 35', 5000, '5000', '2024-08-24 18:21:03', 35),
(39, 'Nguyễn Cảnh BẢo', 'I5MJ31067055CREDIT', 'VIETTEL MONEY', 'I5MJ31067055 admingdv 40', 10000, '10000', '2024-08-27 15:30:52', 40),
(40, 'Tuan Anh', 'I5VS31385737CREDIT', 'VIETTEL MONEY', 'I5VS31385737 admingdv 41', 5000, '5000', '2024-08-31 10:40:41', 41);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `loaithe` varchar(32) NOT NULL,
  `menhgia` text NOT NULL,
  `thucnhan` int(11) DEFAULT '0',
  `seri` text NOT NULL,
  `pin` text NOT NULL,
  `createdate` datetime NOT NULL,
  `status` varchar(32) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `code` varchar(225) DEFAULT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `image`, `status`) VALUES
(67, 'website-phan-mem-tools', 'Website, phần mềm, tools', 'public/theme/assets/default/images/category/lua-dao-mua-ban-website-phan-mem.JPG', 1),
(68, 'giao-dich-trung-gian', 'Giao dịch trung gian', 'public/theme/assets/default/images/category/giao-dich-trung-gian.JPG', 1),
(69, 'trao-doi-tien-ao', 'Trao đổi tiền ảo', 'public/theme/assets/default/images/category/giao-dich-exchange.JPG', 1),
(70, 'lien-quan', 'Liên quân', 'public/theme/assets/default/images/category/giao-dich-tai-khoan-game.JPG', 1),
(71, 'tai-khoan-mxh', 'Tài khoản MXH', 'public/theme/assets/default/images/category/giao-dich-tai-khoan-mang-xa-hoi.JPG', 1),
(72, 'sim-so-dep', 'Sim số đẹp', 'public/theme/assets/default/images/category/giao-dich-sim-so-dep.JPG', 1),
(73, 'mua-the-gach-the', 'Mua thẻ, gạch thẻ', 'public/theme/assets/default/images/category/giao-dich-nap-the-nap-cuoc.jpg', 1),
(74, 'nap-tien-game', 'Nạp tiền game', 'public/theme/assets/default/images/category/giao-dich-chuyen-tien.JPG', 1),
(75, 'hosting-ten-mien', 'Hosting, tên miền', 'public/theme/assets/default/images/category/hosting-va-ten-mien.JPG', 1),
(76, 'quang-cao', 'Quảng cáo', 'public/theme/assets/default/images/category/quang-cao-ads.JPG', 1),
(77, 'noi-dung-so', 'Nội dung số', 'public/theme/assets/default/images/category/noi-dung-so.JPG', 1),
(78, 'do-hoa', 'Đồ họa', 'public/theme/assets/default/images/category/do-hoa.JPG', 1),
(79, 'ban-hang-online', 'Bán hàng online', 'public/theme/assets/default/images/category/ban-hang-online.JPG', 1),
(80, 'cay-game', 'Cày game', 'public/theme/assets/default/images/category/cay-game.JPG', 1),
(81, 'ngoc-rong-online', 'Ngọc rồng Online', 'public/theme/assets/default/images/category/ngoc-rong-online.JPG', 1),
(82, 'free-fire', 'Free Fire', 'public/theme/assets/default/images/category/Free-Fire-game.JPG', 1),
(83, 'roblox', 'Roblox', 'public/theme/assets/default/images/category/roblox.jpg', 1),
(84, 'pubg-mobile', 'Pubg Mobile', 'public/theme/assets/default/images/category/Pubg-Mobile.jfif', 1),
(85, 'dich-vu-facebook', 'Dịch vụ Facebook', 'public/theme/assets/default/images/category/dich-vu-facebook.jfif', 1),
(86, 'zing-game', 'Zing game', 'public/theme/assets/default/images/category/zing-game.jfif', 1),
(87, 'dich-vu-mang', 'Dịch vụ mạng', 'public/theme/assets/default/images/category/dichvumang.jpg', 1),
(88, 'dich-vu-khac', 'Dịch vụ khác', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_scam`
--

CREATE TABLE `category_scam` (
  `id` int(11) NOT NULL,
  `code` varchar(225) DEFAULT NULL,
  `name` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category_scam`
--

INSERT INTO `category_scam` (`id`, `code`, `name`, `status`) VALUES
(52, 'nick-game', 'Nick game', 1),
(56, 'dau-tu', 'Đầu tư', 1),
(67, 'noi-dung-so', 'Nội dung số', 1),
(68, 'tai-khoan-mxh', 'Tài khoản MXH', 1),
(69, 'sim-so-dep', 'Sim số đẹp', 1),
(70, 'phan-mem', 'Phần mềm', 1),
(71, 'doi-the-cao', 'Đổi thẻ cào', 1),
(72, 'tien-ao', 'Tiền ảo', 1),
(73, 'giao-dich-trung-gian', 'Giao dịch trung gian', 1),
(74, 'ban-hang-online', 'Bán hàng Online', 1),
(75, 'the-cao-game', 'Thẻ cào, game', 1),
(76, 'lua-dao-co-bac', 'Lừa đảo, cờ bạc', 1),
(77, 'dich-vu-khac', 'Dịch vụ khác', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `messages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` int(11) NOT NULL,
  `room_name` text NOT NULL,
  `category` text NOT NULL,
  `list_email` text NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `nguoi_tao` text NOT NULL,
  `status` text NOT NULL,
  `created_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doitac`
--

CREATE TABLE `doitac` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `image` text NOT NULL,
  `status` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `doitac`
--

INSERT INTO `doitac` (`id`, `name`, `url`, `image`, `status`) VALUES
(1, 'DICHVURIGHT', 'https://dichvuright.com', 'https://i.imgur.com/NSfIfYo.png', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text COLLATE utf8_vietnamese_ci,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gdv`
--

CREATE TABLE `gdv` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner` text CHARACTER SET utf8mb4 NOT NULL,
  `website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `linkfb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt` text,
  `telegram` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `email` text NOT NULL,
  `id_fb` text,
  `dich_vu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `money` text,
  `ngan_hang` text,
  `stk` text,
  `ctk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gioi_thieu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `ngay` text,
  `user_id` int(11) NOT NULL,
  `active_xt` int(11) NOT NULL DEFAULT '0',
  `pack_baohiem` int(11) NOT NULL DEFAULT '1',
  `cmt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gdv`
--

INSERT INTO `gdv` (`id`, `code`, `name`, `image`, `banner`, `website`, `linkfb`, `sdt`, `telegram`, `email`, `id_fb`, `dich_vu`, `money`, `ngan_hang`, `stk`, `ctk`, `gioi_thieu`, `ngay`, `user_id`, `active_xt`, `pack_baohiem`, `cmt`, `status`) VALUES
(47, 'dichvuright', 'DichVuRight', 'https://i.imgur.com/Hz2YX3E.jpeg', 'https://i.imgur.com/nMxPgiz.png', 'dichvuright.com', 'https://www.facebook.com/dichvuright', '0978009289', '@dichvuright', 'cskh.dichvuright@gmail.com', '100073473880018', '[\"79\",\"80\",\"85\",\"87\",\"78\",\"82\",\"68\",\"75\",\"70\",\"73\",\"74\",\"81\",\"77\",\"84\",\"76\",\"83\",\"72\",\"71\",\"69\",\"67\",\"86\"]', '1312312321', 'MBBank\nVietcombank', '139365\n1049850384', 'NGUYEN DUY KHANH\nNGUYEN DUY KHANH', '<p style=\"text-align:center\"><span style=\"color:#e74c3c\"><em><strong>DICHVURIGHT.COM</strong></em></span></p>\r\n', '2024-09-25', 1, 1, 4, '', 'hoantat');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guarantee`
--

CREATE TABLE `guarantee` (
  `id` int(11) NOT NULL,
  `cate` text NOT NULL,
  `sdt` text NOT NULL,
  `gmail` text NOT NULL,
  `paygate` text NOT NULL,
  `package` text NOT NULL,
  `user_id` text NOT NULL,
  `status` text NOT NULL,
  `create_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `user_id` text COLLATE utf8mb4_vietnamese_ci,
  `trans_id` text COLLATE utf8mb4_vietnamese_ci,
  `payment_method` text COLLATE utf8mb4_vietnamese_ci,
  `amount` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_vietnamese_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_time` text COLLATE utf8mb4_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` text COLLATE utf8mb4_vietnamese_ci,
  `device` text COLLATE utf8mb4_vietnamese_ci,
  `create_date` text COLLATE utf8mb4_vietnamese_ci,
  `action` text COLLATE utf8mb4_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `create_date`, `action`) VALUES
(1, 14, '104.28.211.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024/10/06 10:14:57', 'Xóa Đơn Tố Cáo #(4)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_balance`
--

CREATE TABLE `log_balance` (
  `id` int(11) NOT NULL,
  `money_before` text COLLATE utf8mb4_vietnamese_ci,
  `money_change` text COLLATE utf8mb4_vietnamese_ci,
  `money_after` text COLLATE utf8mb4_vietnamese_ci,
  `time` text COLLATE utf8mb4_vietnamese_ci,
  `content` text COLLATE utf8mb4_vietnamese_ci,
  `user_id` text COLLATE utf8mb4_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `noidung` text NOT NULL,
  `image_news` text,
  `link` text,
  `luotxem` int(11) DEFAULT '0',
  `home` int(11) NOT NULL DEFAULT '1',
  `status` text NOT NULL,
  `ngaydang` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `tieude`, `noidung`, `image_news`, `link`, `luotxem`, `home`, `status`, `ngaydang`) VALUES
(1, 'Chỉ 1 click bay ngay tiền tỷ:', 'PGRpdiBjbGFzcz0iYXJ0aWNsZS1jb250ZW50IiBpZD0iYXJ0aWNsZS1jb250ZW50Ij4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPlbhu5tpIG5o4buvbmcgdGjhu6cgxJFv4bqhbiwgY2hpw6p1IHRo4bupYyB0aW5oIHZpLCBuZ8aw4budaSBkw7luZyBi4buLIHRoYW8gdMO6bmcgdMOibSBsw70sIG3huqV0IGPhuqNuaCBnacOhYyBraGnhur9uIGjDoG5nIG5naMOsbiBuZ8aw4budaSDEkcOjIGLhu4sgY8OhYyDEkeG7kWkgdMaw4bujbmcgbOG7q2EgxJHhuqNvLCBjaGnhur9tIMSRb+G6oXQgaMOgbmcgdHLEg20sIHRo4bqtbSBjaMOtIGjDoG5nIHThu4kgxJHhu5NuZy48L3A+Cgo8cD5LaMO0bmcgY2jhu4kgcmnDqm5nIGfDrCBjw6FjIHThu4luaCBtaeG7gW4gbsO6aSwgdsO5bmcgc8OidSB2w7luZyB4YSBjw7Mgbmhp4buBdSBuZ8aw4budaSBkw6JuIGTDrW5oICJi4bqreSIgY+G7p2EgY8OhYyDEkeG7kWkgdMaw4bujbmcgbOG7q2EgxJHhuqNvLCDhu58gY8OhYyB04buJbmgsIHRow6BuaCB0csOqbiDEkeG7i2EgYsOgbiBj4bqjIG7GsOG7m2MgY8OzIG5oaeG7gXUgbmfGsOG7nWkgY8WpbmcgYuG7iyBs4burYSBt4bqldCB0aeG7gW4gdOG7tyBkbyBuaOG6uSBk4bqhIGPhuqMgdGluIHbDoCBu4buVaSBsw7JuZyB0aGFtLC4uLjwvcD4KCjxwPkhpw6puIG5heSwgY8O0bmcgdMOhYyBjaHV54buDbiDEkeG7lWkgc+G7kSBy4bqnbSBy4buZIMSRxrBhIG5oaeG7gXUgaG/huqF0IMSR4buZbmcgdGjGsOG7nW5nIG5o4bqtdCBsw6puIG3DtGkgdHLGsOG7nW5nIG3huqFuZywgbXVhIHPhuq9tIHRy4buxYyB0dXnhur9uIGLDuW5nIG7hu5UsIGPDuW5nIHbhu5tpIHPhu7EgcGjhu5UgYmnhur9uIGPhu6dhIHRoYW5oIHRvw6FuIGtow7RuZyBkw7luZyB0aeG7gW4gbeG6t3QsIMSRw6MgxJFlbSBs4bqhaSBuaGnhu4F1IHRp4buHbiDDrWNoIGNobyBuZ8aw4budaSBkw6JuLjwvcD4KCjxwPlR1eSBuaGnDqm4sIMO9IHRo4bupYyB2w6Aga2nhur9uIHRo4bupYyBi4bqjbyBt4bqtdCBj4bunYSBwaOG6p24gbOG7m24gbmfGsOG7nWkgZMO5bmcgY8OybiBo4bqhbiBjaOG6vywgbMOgIG5ndXnDqm4gbmjDom4ga2hp4bq/biB04buZaSBwaOG6oW0gbOG7q2EgxJHhuqNvIGxpw6puIHThu6VjIG5o4bqvbSDEkeG6v24gbmfGsOG7nWkgZMO5bmcuIEPDoWMgbeG7kWkgxJFlIGThu41hIMSR4buRaSB24bubaSBhbiB0b8OgbiB0aMO0bmcgdGluIHbDoCBhbiBuaW5oIG3huqFuZyB24bqrbiB04buTbiB04bqhaSwgxJHDsmkgaOG7j2kgY8OhYyBkb2FuaCBuZ2hp4buHcCwgbmfGsOG7nWkgZMO5bmcgY8OhIG5ow6JuIHBo4bqjaSB0aMaw4budbmcgeHV5w6puIGPhuqNuaCBnacOhYy48L3A+Cgo8cD5UcsOqbiB0aOG7sWMgdOG6vywgY8OzIG5o4buvbmcgdHLGsOG7nW5nIGjhu6NwIGtow6FjaCBow6BuZyB2w7QgdMOsbmggY3VuZyBj4bqlcCB0aMO0bmcgdGluIGPDoSBuaMOibiBuaMawIGPEg24gY8aw4bubYyBjw7RuZyBkw6JuLCBz4buRIHRo4bq7LCBz4buRIHTDoGkga2hv4bqjbiwgbeG6rXQga2jhuql1LCBtw6MgT1RQIGhheSBtw6Mgc+G7kSB0aGFuaCB0b8OhbiwuLi4ga2hpIHRoYW0gZ2lhIG3huqFuZyB4w6MgaOG7mWksIHPhu60gZOG7pW5nIEludGVybmV0LCBtdWEgaMOgbmcgcXVhIG3huqFuZyBjaG8ga+G6uyBnaWFuIMSRw6MgxJHhu4MgbOG7mSB0aMO0bmcgdGluLCDEkcOieSBsw6AgbOG7lyBo4buVbmcgxJHhu4MgY8OhYyDEkeG7kWkgdMaw4bujbmcgbOG7q2EgxJHhuqNvIGtoYWkgdGjDoWMgdsOgIGzhu6thLjwvcD4KCjxwPlRo4bunIMSRb+G6oW4gY+G7p2EgY8OhYyDEkeG7kWkgdMaw4bujbmcgcuG6pXQgdGluaCB2aSwgbOG7sWEgY2jhu41uIG5oaeG7gXUgY8OhY2ggxJHDoW5oIHbDoG8gdMOibSBsw70gbmjhurkgZOG6oSwgdGhp4bq/dSBj4bqjbmggZ2nDoWMgdsOgIGzDsm5nIHRoYW0gY+G7p2Egbmhp4buBdSBuZ8aw4budaSBkw6JuIGtoaSB0xrDGoW5nIHTDoWMsIHRyYW8gxJHhu5VpIHbDoCBtdWEgYsOhbiB0csOqbiBt4bqhbmcgeMOjIGjhu5lpIMSR4buDIGzhu6thLCBjaGnhur9tIMSRb+G6oXQuPC9wPgoKPHA+QsOqbiBj4bqhbmggxJHDsywgbeG6oW5nIHjDoyBo4buZaSBoaeG7h24gY8OzIG5o4buvbmcgdGjDtG5nIHRpbiBraMO0bmcgxJHGsOG7o2Mga2nhu4NtIGNo4bupbmcsIG5oaeG7gXUgbmfGsOG7nWkgY2jhu4kgdsOsIHPhu7EgY2jhu6cgcXVhbiwgdGhp4bq/dSBoaeG7g3UgYmnhur90LCDEkcOjIMSR4buDIGPDoWMgxJHhu5FpIHTGsOG7o25nIHjhuqV1IGzhu6NpIGThu6VuZywgdGjhu7FjIGhp4buHbiBjw6FjIGjDoG5oIHZpIHBo4bqhbSB04buZaS48L3A+Cgo8cD5Dw6FjIHRo4bunIMSRb+G6oW4gY8OhYyDEkeG7kWkgdMaw4bujbmcgbOG7q2EgxJHhuqNvIGTDuW5nIGzDoCBnaeG6oyBkYW5oIGPGoSBxdWFuIHBow6FwIGx14bqtdCwgZ2nhuqMgZGFuaCBuaMOibiB2acOqbiBuZ8OibiBow6BuZywgZ2nhuqMgZGFuaCBuZ8OibiBow6BuZyBn4butaSB0aW4gbmjhuq9uIGvDrWNoIGhv4bqhdCBk4buLY2ggduG7pSwgbeG6oW8gZGFuaCBjw7RuZyB0eSB0w6BpIGNow61uaCwgdHV54buDbiBj4buZbmcgdMOhYyB2acOqbiBiw6FuIGjDoG5nIHRyw6puIG3huqFuZyB4w6MgaOG7mWksIHPDoG4gdGjGsMahbmcgbeG6oWkgxJFp4buHbiB04butLCBzw6BuIGNo4bupbmcga2hvw6FuLCBs4bqtcCBzw6BuIGdpYW8gZOG7i2NoIOG6o28sIMSR4bqndSB0xrAgc2luaCBs4budaSzigKY8L3A+Cgo8cD7EkMOhbmcgc+G7oyBoxqFuLCBjw6FjIMSR4buRaSB0xrDhu6NuZyBjw7JuIGTDuW5nIG5o4buvbmcgdGjhu6cgxJFv4bqhbiBjw7RuZyBuZ2jhu4cgY2FvIG5oxrAgY8O0bmcgbmdo4buHIERlZXBmYWtlIMSR4buDIGdp4bqjIGThuqFuZyBow6xuaCDhuqNuaCB2w6AgZ2nhu41uZyBuw7NpIG5o4bqxbSBnaeG6oyBt4bqhbyBsw6BtIG5nxrDhu51pIHRow6JuIGPhu6dhIG7huqFuIG5ow6JuLCBzYXUgxJHDsyBkw7luZyB2aWRlbyBjYWxsIMSR4buDIG3GsOG7o24gdGnhu4FuLjwvcD4KCjxwPlF1YSDEkcOzLCBjxqEgcXVhbiBjaOG7qWMgbsSDbmcga2h1eeG6v24gY8OhbywgbcO0zINpIG5nxrDGocyAaSBz4butIGThu6VuZyBt4bqhbmcgeMOjIGjhu5lpIGPDosyAbiB0YcyjbyBzxrDMgWMgIsSRw6rMgCBraGHMgW5nIiBuaMawOiBLaMO0bmcgdHJ1eSBj4bqtcCDEkcaw4budbmcgbGluayBs4bqhOyBraMO0bmcgdOG7sSDDvSBjw6BpIMSR4bq3dCBwaOG6p24gbeG7gW07IHR1eeG7h3QgxJHhu5FpIGtow7RuZyBjaHV54buDbiB0aeG7gW4gdGhlbyB5w6p1IGPhuqd1IGPhu6dhIMSR4buRaSB0xrDhu6NuZy4gTeG7l2kgbmfGsOG7nWkgZMOibiBow6N5IG7DqnUgY2FvIHRpbmggdGjhuqduIGPhuqNuaCBnacOhYyB24bubaSBsb+G6oWkgdOG7mWkgcGjhuqFtIG7DoHksIGtow7RuZyDEkeG7gyB0cuG7nyB0aMOgbmggbuG6oW4gbmjDom4gYuG6pXQgxJHhuq9jIGTEqSwgbeG6pXQgdGnhu4FuLCB0w6BpIHPhuqNuLjwvcD4KCjxwPktoaSBn4bq3cCBjw6FjIHRyxrDhu51uZyBo4bujcCBjw7MgZOG6pXUgaGnhu4d1IGzhu6thIMSR4bqjbywgxJHhu4Egbmdo4buLIG5nxrDhu51pIGTDom4gbGnDqm4gaOG7hyBjxqEgcXVhbiBDw7RuZyBhbiBn4bqnbiBuaOG6pXQgxJHhu4MgZ2nhuqNpIHF1eeG6v3Qga+G7i3AgdGjhu51pIHbhu6Ugdmnhu4djIHRoZW8gcXV5IMSR4buLbmguPC9wPgoKPHA+xJDhu4MgYuG6o28gduG7hyB0aMO0bmcgdGluIGPDoSBuaMOibiB2w6AgdMOgaSBraG/huqNuIGPhu6dhIGLhuqFuLCB2aeG7h2Mgbmjhuq1uIGJp4bq/dCB0cmFuZyB3ZWIgbOG7q2EgxJHhuqNvIGzDoCBxdWFuIHRy4buNbmcuIEvhur90IGjhu6NwIHPhu7EgY+G6o25oIGLDoW8gdsOgIGPDtG5nIGPhu6Uga2nhu4NtIHRyYSwgYuG6oW4gY8OzIHRo4buDIHThu7EgdGluIGjGoW4ga2hpIHRo4buxYyBoaeG7h24gY8OhYyBnaWFvIGThu4tjaCB0cuG7sWMgdHV54bq/bi4gSMOjeSBsdcO0biBkdXkgdHLDrCBz4buxIGPhuqNuaCBiw6FvIHbDoCBjaGlhIHPhursgdGjDtG5nIHRpbiBuw6B5IHbhu5tpIGPhu5luZyDEkeG7k25nIMSR4buDIHThuqFvIHJhIG3hu5l0IG3DtGkgdHLGsOG7nW5nIHRy4buxYyB0dXnhur9uIGFuIHRvw6BuIGjGoW4uPC9wPgoKPHA+U+G7rSBk4bulbmcmbmJzcDs8c3Ryb25nPjxhIGhyZWY9Imh0dHBzOi8vY2hlY2tzY2FtLmNvbS8iPmNoZWNrc2NhbTwvYT48L3N0cm9uZz4mbmJzcDtjaMOtbmggbMOgIGdp4bqjaSBwaMOhcCBoaeG7h3UgcXXhuqMgdsOgIG5oYW5oIGNow7NuZyDEkeG7gyBraeG7g20gdHJhIHRow7RuZyB0aW4gbOG7q2EgxJHhuqNvIHNjYW0gdsOgIMSR4bqjbSZuYnNwO2LhuqNvIGdpYW8gZOG7i2NoIHRy4buxYyB0dXnhur9uIHV5IHTDrW48L3A+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvZGl2Pg==', 'https://checkscam.com/storage/userfiles/images/lua-dao-click-link-la.JPG', 'chi-1-click', 148, 1, 'hoantat', '2024-07-13'),
(2, 'dichvuright Dev', 'bXVhIGNvZGUgdOG6oWkgZGljaHZ1cmlnaHQuY29t', 'https://toiuytin.me/upload/527a8fa1e10790ee.png', 'dichvuright-dev', 70, 1, 'hoantat', '2024-07-19'),
(5, 'Giới thiệu về checkscam', 'PHA+SW50ZXJuZXQgdiZhZ3JhdmU7IE3huqFuZyB4JmF0aWxkZTsgaOG7mWkgxJEmYXRpbGRlOyB0cuG7nyB0aCZhZ3JhdmU7bmggbeG7mXQgcGjhuqduIHF1YW4gdHLhu41uZyB0cm9uZyBjdeG7mWMgc+G7kW5nIGPhu6dhIGNoJnVhY3V0ZTtuZyB0YSwgbeG6t2MgZCZ1Z3JhdmU7IGMmb2FjdXRlOyBy4bqldCBuaGnhu4F1IGzhu6NpICZpYWN1dGU7Y2gsIEludGVybmV0IHYmYWdyYXZlOyBN4bqhbmcgeCZhdGlsZGU7IGjhu5lpIGPFqW5nIGMmb2FjdXRlOyBuaOG7r25nIHLhu6dpIHJvOiBOJm9hY3V0ZTsgxJEmYXRpbGRlOyB0cuG7nyB0aCZhZ3JhdmU7bmggbeG7mXQgYyZvY2lyYztuZyBj4bulIMSRxrDhu6NjIHPhu60gZOG7pW5nIGLhu59pIG5o4buvbmcga+G6uyBs4burYSDEkeG6o28gxJHhu4MgbOG7o2kgZOG7pW5nIG3hu41pIG5nxrDhu51pLiBLaGkgc+G7kSBsxrDhu6NuZyBs4burYSDEkeG6o28gdHImZWNpcmM7biBJbnRlcm5ldCB2JmFncmF2ZTsgTeG6oW5nIHgmYXRpbGRlOyBo4buZaSB0xINuZyBsJmVjaXJjO24sIGLhuqFuIHLhuqV0IGtoJm9hY3V0ZTsgxJHhu4MgdCZpZ3JhdmU7bSBoaeG7g3UgdGgmb2NpcmM7bmcgdGluIHYmYWdyYXZlOyBraCZvYWN1dGU7IHRyJmFhY3V0ZTtuaCBi4buLIGzhu6thIMSR4bqjbyBraGkgZ2lhbyBk4buLY2guPC9wPg0KDQo8cD5E4buLY2ggduG7pSBDaGVja1NjYW0gbCZhZ3JhdmU7IG3hu5l0IGMmb2NpcmM7bmcgY+G7pSBt4bqhbmggbeG6vSDEkeG7gyBi4bqjbyB24buHIGLhuqFuIGto4buPaSBjJmFhY3V0ZTtjIG3hu5FpIMSRZSBk4buNYSB0cuG7sWMgdHV54bq/biBsaSZlY2lyYztuIHF1YW4gxJHhur9uIGzhu6thIMSR4bqjbywgZ2lhbiBs4bqtbiB2JmFncmF2ZTsgc2NhbS4gQ2gmdWFjdXRlO25nIHQmb2NpcmM7aSBjYW0ga+G6v3QgxJFlbSBs4bqhaSBz4buxIGFuIHRvJmFncmF2ZTtuIHYmYWdyYXZlOyBz4buxIHkmZWNpcmM7biB0JmFjaXJjO20gY2hvIGLhuqFuIGtoaSBnaWFvIGThu4tjaCB0ciZlY2lyYztuIGludGVybmV0LCBnaSZ1YWN1dGU7cCBi4bqhbiB0ciZhYWN1dGU7bmgga2jhu49pIHZp4buHYyBt4bqldCB0aeG7gW4sIHRoJm9jaXJjO25nIHRpbiBjJmFhY3V0ZTsgbmgmYWNpcmM7biBxdWFuIHRy4buNbmcsIHYmYWdyYXZlOyB0aOG6rW0gY2gmaWFjdXRlOyBz4buxIHThu5VuIHRo4bqldCB0JmFncmF2ZTtpIGNoJmlhY3V0ZTtuaCBuZ2hpJmVjaXJjO20gdHLhu41uZy48L3A+DQoNCjxoMj48c3BhbiBzdHlsZT0iY29sb3I6I2U2N2UyMiI+PHN0cm9uZz5ExrDhu5tpIMSRJmFjaXJjO3kgbCZhZ3JhdmU7IG3hu5l0IHPhu5EgdCZpYWN1dGU7bmggbsSDbmcgdiZhZ3JhdmU7IGzhu6NpICZpYWN1dGU7Y2ggY2gmaWFjdXRlO25oIGPhu6dhIGThu4tjaCB24bulIENoZWNrU2NhbSBj4bunYSBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpOjwvc3Ryb25nPjwvc3Bhbj48L2gyPg0KDQo8aDM+PHN0cm9uZz4xOiBLaeG7g20gdHJhIHQmZWNpcmM7biBtaeG7gW4gdiZhZ3JhdmU7IHRyYW5nIHdlYjo8L3N0cm9uZz48L2gzPg0KDQo8cD5DaCZ1YWN1dGU7bmcgdCZvY2lyYztpIHPhur0ga2nhu4NtIHRyYSB4ZW0gdHJhbmcgd2ViIGhv4bq3YyB0JmVjaXJjO24gbWnhu4FuIG4mYWdyYXZlO28gxJEmb2FjdXRlOyBjJm9hY3V0ZTsgbGkmZWNpcmM7biBxdWFuIMSR4bq/biBjJmFhY3V0ZTtjIGhv4bqhdCDEkeG7mW5nIGzhu6thIMSR4bqjbyBoYXkga2gmb2NpcmM7bmcuIELhurFuZyBjJmFhY3V0ZTtjaCBraeG7g20gdHJhIMSR4buZIHRpbiBj4bqteSBj4bunYSB0cmFuZyB3ZWIgdHLGsOG7m2Mga2hpIGLhuqFuIHRp4bq/biBoJmFncmF2ZTtuaCBtdWEgc+G6r20gaG/hurdjIGN1bmcgY+G6pXAgdGgmb2NpcmM7bmcgdGluIGMmYWFjdXRlOyBuaCZhY2lyYztuLCBi4bqhbiBjJm9hY3V0ZTsgdGjhu4MgdHImYWFjdXRlO25oIHhhIGto4buPaSBuaOG7r25nIHLhu6dpIHJvIHRp4buBbSDhuqluLjwvcD4NCg0KPGgzPjxzdHJvbmc+MjogVGhlbyBkJm90aWxkZTtpIGRhbmggdGnhur9uZyB2JmFncmF2ZTsgbOG7i2NoIHPhu606PC9zdHJvbmc+PC9oMz4NCg0KPHA+Q2gmdWFjdXRlO25nIHQmb2NpcmM7aSBjdW5nIGPhuqVwIHRoJm9jaXJjO25nIHRpbiB24buBIGRhbmggdGnhur9uZyBj4bunYSBjJmFhY3V0ZTtjIGMmb2NpcmM7bmcgdHksIGMmYWFjdXRlOyBuaCZhY2lyYztuLCB2JmFncmF2ZTsgYyZhYWN1dGU7YyB0JmFncmF2ZTtpIGtob+G6o24gZ2lhbyBk4buLY2gsIHQmYWdyYXZlO2kga2hv4bqjbiBt4bqhbmcgeCZhdGlsZGU7IGjhu5lpIGPhu6dhIGjhu40uIMSQJmFhY3V0ZTtuaCBnaSZhYWN1dGU7IHYmYWdyYXZlOyBwaOG6o24gaOG7k2kgdOG7qyBj4buZbmcgxJHhu5NuZyBuZ8aw4budaSBkJnVncmF2ZTtuZyBz4bq9IGdpJnVhY3V0ZTtwIGLhuqFuIMSRxrBhIHJhIHF1eeG6v3QgxJHhu4tuaCB0aCZvY2lyYztuZyBtaW5oIHYmYWdyYXZlOyB0ciZhYWN1dGU7bmggeGEga2jhu49pIGMmYWFjdXRlO2MgZ2lhbyBk4buLY2ggZ2lhbiBs4bqtbiAmbmRhc2g7IEdpYW8gZOG7i2NoIGzhu6thIMSR4bqjby48L3A+DQoNCjxoMz48c3Ryb25nPjM6IEtp4buDbSB0cmEgdiZhZ3JhdmU7IHRoZW8gZCZvdGlsZGU7aSBnaWFvIGThu4tjaDo8L3N0cm9uZz48L2gzPg0KDQo8cD5DaCZ1YWN1dGU7bmcgdCZvY2lyYztpIMSR4bqjbSBi4bqjbyBy4bqxbmcgYuG6oW4gbmjhuq1uIMSRxrDhu6NjIHRoJm9jaXJjO25nIHRpbiBjaCZpYWN1dGU7bmggeCZhYWN1dGU7YyB24buBIHPhuqNuIHBo4bqpbSBob+G6t2MgZOG7sSAmYWFjdXRlO24gxJHhuqd1IHTGsCB0cuG7sWMgdHV54bq/bi4gTuG6v3UgYyZvYWN1dGU7IGLhuqV0IGvhu7MgxJFp4buBdSBnJmlncmF2ZTsga2gmb2NpcmM7bmcgciZvdGlsZGU7IHImYWdyYXZlO25nIGhv4bq3YyBuZ2hpIG5n4budLCBi4bqhbiBz4bq9IGJp4bq/dCBuZ2F5IGzhuq1wIHThu6ljLiBIb+G6t2Mga2hpIGLhuqFuIMSRYW5nIHRo4buxYyBoaeG7h24gZ2lhbyBk4buLY2gsIGNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgc+G6vSBnaSZ1YWN1dGU7cCBi4bqhbiDEkeG6o20gYuG6o28gZ2lhbyBk4buLY2ggxJHGsOG7o2MgdGnhur9uIGgmYWdyYXZlO25oIMSRJnVhY3V0ZTtuZyBuaMawIGNhbSBr4bq/dCBj4bunYSBiJmVjaXJjO24gYiZhYWN1dGU7bi48L3A+DQoNCjxoMz48c3Ryb25nPjQ6IMSQxINuZyB04bqjaSB2JmFncmF2ZTsgdOG7kSBjJmFhY3V0ZTtvIGMmYWFjdXRlO2MgaCZhZ3JhdmU7bmggdmkgbOG7q2EgxJHhuqNvOjwvc3Ryb25nPjwvaDM+DQoNCjxwPlThuqFpIMSRJmFjaXJjO3ksIG3hu41pIG5nxrDhu51pIGMmb2FjdXRlOyB0aOG7gyDEkcSDbmcgdOG6o2kgdiZhZ3JhdmU7IGNoaWEgc+G6uyB0aCZvY2lyYztuZyB0aW4gduG7gSBjJmFhY3V0ZTtjIGMmYWFjdXRlOyBuaCZhY2lyYztuLCB04buVIGNo4bupYyBjJm9hY3V0ZTsgaCZhZ3JhdmU7bmggdmkgbOG7q2EgxJHhuqNvIGNoaeG6v20gxJFv4bqhdCB0JmFncmF2ZTtpIHPhuqNuIG0mYWdyYXZlOyBo4buNIMSRJmF0aWxkZTsgdOG7q25nIGfhurdwIHBo4bqjaSBob+G6t2MgYmnhur90IMSR4bq/bi4gTmjhu50gxJEmb2FjdXRlOywgY+G7mW5nIMSR4buTbmcgbeG6oW5nIHPhur0gYyZ1Z3JhdmU7bmcgbmhhdSB4JmFjaXJjO3kgZOG7sW5nIG3hu5l0IG5ndeG7k24gdGgmb2NpcmM7bmcgdGluIMSRJmFhY3V0ZTtuZyB0aW4gY+G6rXkgduG7gSBjJmFhY3V0ZTtjIHRyxrDhu51uZyBo4bujcCBs4burYSDEkeG6o28uIEMmYWFjdXRlO2MgdGgmb2NpcmM7bmcgdGluIMSRxrDhu6NjIMSRxINuZyB04bqjaSB0ciZlY2lyYztuIGNoZWNrc2NhbS5jb20gc+G6vSBnaSZ1YWN1dGU7cCBt4buNaSBuZ8aw4budaSBuJmFjaXJjO25nIGNhbyBuaOG6rW4gdGjhu6ljLCBwaCZvZ3JhdmU7bmcgbmfhu6thIHYmYWdyYXZlOyB0ciZhYWN1dGU7bmgga2gmb2NpcmM7bmcgdHLhu58gdGgmYWdyYXZlO25oIG7huqFuIG5oJmFjaXJjO24gY+G7p2EgdOG7mWkgcGjhuqFtIHPhu60gZOG7pW5nIGMmb2NpcmM7bmcgbmdo4buHIGNhbyBs4burYSDEkeG6o28gcXVhIG3huqFuZy48L3A+DQoNCjxoMz48c3Ryb25nPjU6IEPhuqNuaCBiJmFhY3V0ZTtvIHYmYWdyYXZlOyBiJmFhY3V0ZTtvIMSR4buZbmc6PC9zdHJvbmc+PC9oMz4NCg0KPHA+TuG6v3UgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSBwaCZhYWN1dGU7dCBoaeG7h24gYuG6pXQga+G7syBk4bqldSBoaeG7h3UgbiZhZ3JhdmU7byBj4bunYSBnaWFuIGzhuq1uIGhv4bq3YyBzY2FtLCBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpIHPhur0gY+G6o25oIGImYWFjdXRlO28gYuG6oW4gbmdheSBs4bqtcCB04bupYyB2JmFncmF2ZTsgY3VuZyBj4bqlcCBoxrDhu5tuZyBk4bqrbiB24buBIGMmYWFjdXRlO2NoIGgmYWdyYXZlO25oIMSR4buZbmcgdGnhur9wIHRoZW8gxJHhu4MgxJHhuqNtIGLhuqNvIGFuIHRvJmFncmF2ZTtuIGNobyBi4bqhbiB2JmFncmF2ZTsgdCZhZ3JhdmU7aSBz4bqjbiBj4bunYSBi4bqhbi48L3A+DQoNCjxoMz48c3Ryb25nPjY6IFRydW5nIGdpYW4gdCZhZ3JhdmU7aSBwaCZhYWN1dGU7bjo8L3N0cm9uZz48L2gzPg0KDQo8cD5LaGkgYyZvYWN1dGU7IGLhuqV0IGvhu7MgbmdoaSBuZ+G7nSBob+G6t2MgdOG7kSBjJmFhY3V0ZTtvIG4mYWdyYXZlO28gdHJvbmcgZ2lhbyBk4buLY2ggaG/hurdjIHNhdSBnaWFvIGThu4tjaC4gQ2gmdWFjdXRlO25nIHQmb2NpcmM7aSBz4bq9IHRydW5nIGdpYW4geGVtIHgmZWFjdXRlO3QsIGtp4buDbSB0cmEgZ2lhbyBk4buLY2ggYyZvYWN1dGU7IMSRJnVhY3V0ZTtuZyBuaMawIGNhbSBr4bq/dCBj4bunYSBjJmFhY3V0ZTtjIGImZWNpcmM7biBsaSZlY2lyYztuIHF1YW4ga2gmb2NpcmM7bmcuIENoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgc+G6vSB04buxIMSR4buZbmcgdHImaWFjdXRlO2NoIGzhuq1wIHF14bu5IGLhuqNvIGhp4buDbSBDUyBj4bunYSBuZ8aw4budaSBiJmFhY3V0ZTtuIMSR4buDIGLhu5NpIGhvJmFncmF2ZTtuIGNobyBuZ8aw4budaSBtdWEuIMSQ4buTbmcgdGjhu51pIGMmb2FjdXRlOyBwaMawxqFuZyAmYWFjdXRlO24geOG7rSBsJnlhY3V0ZTsgdGgmYWdyYXZlO25oIHZpJmVjaXJjO24gc2NhbSBuaMawOiDEkCZhYWN1dGU7bmggZOG6pXUgc2NhbSwgY+G6o25oIGImYWFjdXRlO28gZ2lhbyBk4buLY2gsIHRy4bulYyB4deG6pXQga2jhu49pIGjhu4cgdGjhu5FuZy48L3A+DQoNCjxoMz48c3Ryb25nPjc6IFTGsCB24bqlbiB2JmFncmF2ZTsgaOG7lyB0cuG7ozombmJzcDs8L3N0cm9uZz48L2gzPg0KDQo8cD5OZ28mYWdyYXZlO2kgdmnhu4djIGN1bmcgY+G6pXAgdGgmb2NpcmM7bmcgdGluLCBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpIGN1bmcgY+G6pXAgdMawIHbhuqVuIHYmYWdyYXZlOyBo4buXIHRy4bujIGNobyBuaOG7r25nIG5nxrDhu51pIGQmdWdyYXZlO25nIGLhu4sgbOG7q2EgxJHhuqNvIGhv4bq3YyDEkWFuZyBn4bq3cCB24bqlbiDEkeG7gSB24buBIGFuIHRvJmFncmF2ZTtuIHRy4buxYyB0dXnhur9uLiBDaCZ1YWN1dGU7bmcgdCZvY2lyYztpIHPhurVuIHMmYWdyYXZlO25nIGjhu5cgdHLhu6MgYyZhYWN1dGU7YyBiJmVjaXJjO24gbGkmZWNpcmM7biBxdWFuIG3hu5l0IGMmYWFjdXRlO2NoIGMmb2NpcmM7bmcgYuG6sW5nIHRyb25nIG3hu41pIHQmaWdyYXZlO25oIGh14buRbmcuPC9wPg0KDQo8cD48c3Ryb25nPiZndDsmZ3Q7PC9zdHJvbmc+IENoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgbHUmb2NpcmM7biBsdSZvY2lyYztuIGMmb2FjdXRlOyBraCZhY2lyYzt1IGtp4buDbSBjaOG7qW5nIHbhu5tpIG5o4buvbmcgbuG7mWkgxJHEg25nIGwmZWNpcmM7biwgbmjGsG5nIGtoJm9jaXJjO25nIHRo4buDIGNo4bqvYyBjaOG6r24gMTAwJSB0aCZvY2lyYztuZyB0aW4gbCZhZ3JhdmU7IGhvJmFncmF2ZTtuIHRvJmFncmF2ZTtuIGNoJmlhY3V0ZTtuaCB4JmFhY3V0ZTtjLCBW4bqteSBuJmVjaXJjO24gbmfGsOG7nWkgYuG7iyB04buRIGMmYWFjdXRlO28gYyZvYWN1dGU7IHRo4buDIExpJmVjaXJjO24gSOG7hyB24bubaSBuZ8aw4budaSB04buRIGMmYWFjdXRlO28gaG/hurdjIEFkbWluIMSR4buDIMSRxrDhu6NjIGdp4bqjaSBxdXnhur90IGMmb2NpcmM7bmcgYuG6sW5nLCBo4bujcCBsJnlhY3V0ZTsuPC9wPg0KDQo8cD48c3Ryb25nPiZndDsmZ3Q7IDwvc3Ryb25nPkNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgaGnhu4N1IHLhurFuZyBhbiB0byZhZ3JhdmU7biB0cuG7sWMgdHV54bq/biBsJmFncmF2ZTsgxrB1IHRpJmVjaXJjO24gaCZhZ3JhdmU7bmcgxJHhuqd1LCB2JmFncmF2ZTsgduG7m2kgZOG7i2NoIHbhu6UgQ2hlY2tTY2FtIGPhu6dhIGNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2ksIGLhuqFuIHPhur0gYyZvYWN1dGU7IG3hu5l0IMSR4buRaSB0JmFhY3V0ZTtjIMSRJmFhY3V0ZTtuZyB0aW4gY+G6rXkgxJHhu4MgYuG6o28gduG7hyBtJmlncmF2ZTtuaCBraOG7j2kgYyZhYWN1dGU7YyBuZ3V5IGPGoSB0cuG7sWMgdHV54bq/bi4gSCZhdGlsZGU7eSB0aGFtIGdpYSBjJnVncmF2ZTtuZyBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpIHYmYWdyYXZlOyB0aOG7sWMgaGnhu4duIGMmYWFjdXRlO2MgZ2lhbyBk4buLY2ggdHLhu7FjIHR1eeG6v24gbeG7mXQgYyZhYWN1dGU7Y2ggYW4gdG8mYWdyYXZlO24gdiZhZ3JhdmU7IHThu7EgdGluIGjGoW4uPC9wPg0KDQo8cD5E4buLY2ggduG7pSBDaGVja1NjYW0gY+G7p2EgY2hlY2tzY2FtLmNvbSBsJmFncmF2ZTsgbeG7mXQgYyZvY2lyYztuZyBj4bulIG3huqFuaCBt4bq9IMSR4buDIGLhuqNvIHbhu4cgYuG6oW4ga2jhu49pIGMmYWFjdXRlO2MgbeG7kWkgxJFlIGThu41hIHRy4buxYyB0dXnhur9uIGxpJmVjaXJjO24gcXVhbiDEkeG6v24gbOG7q2EgxJHhuqNvLCBnaWFuIGzhuq1uIHYmYWdyYXZlOyBzY2FtPC9wPg0K', '', 'gioi-thieu-ve-checkscam', 5, 0, 'hoantat', '2024-10-05'),
(6, 'Tham gia bảo hiểm', 'PGgzPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+PHN0cm9uZz4xLiDEkGnhu4F1IGtp4buHbiB0aGFtIGdpYSBi4bqjbyBoaeG7g208L3N0cm9uZz48L3NwYW4+PC9oMz4NCg0KPHVsPg0KCTxsaT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWYiPkLhuqFuIHBo4bqjaSBsJmFncmF2ZTsgbmfGsOG7nWkgYyZvYWN1dGU7IGtpbmggbmdoaeG7h20gbCZhZ3JhdmU7bSBuZ2jhu4EsIGMmb2FjdXRlOyB1eSB0JmlhY3V0ZTtuLCBjJm9hY3V0ZTsgY+G7mW5nIMSR4buTbmc8L3NwYW4+PC9saT4NCgk8bGk+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj5GYWNlYm9vayBjaCZpYWN1dGU7bmggY2jhu6csIGMmb2NpcmM7bmcga2hhaSwgdMawxqFuZyB0JmFhY3V0ZTtjIHThu5F0PC9zcGFuPjwvbGk+DQoJPGxpPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+xJAmb2FjdXRlO25nIHF14bu5IGLhuqNvIGhp4buDbTwvc3Bhbj48L2xpPg0KCTxsaT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWYiPlR1JmFjaXJjO24gdGjhu6cgcXV5IMSR4buLbmggeOG7rSBsJnlhY3V0ZTsgdHJhbmggY2jhuqVwPC9zcGFuPjwvbGk+DQoJPGxpPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+VHUmYWNpcmM7biB0aOG7pyBjJmFhY3V0ZTtjIHF1eSDEkeG7i25oIHbhu4EgciZ1YWN1dGU7dCB0aeG7gW48L3NwYW4+PC9saT4NCjwvdWw+DQoNCjxibG9ja3F1b3RlPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj5OZ8aw4budaSB0aGFtIGdpYSBi4bqjbyBoaeG7g20gdHImZWNpcmM7biAxOCB0deG7lWksIGMmb2FjdXRlOyBjJm9jaXJjO25nIHZp4buHYyBraW5oIGRvYW5oLCBjJm9hY3V0ZTsga2luaCBuZ2hp4buHbSwgdXkgdCZpYWN1dGU7biB2JmFncmF2ZTsga2gmb2NpcmM7bmcgYuG7iyBraeG7h24gYyZhYWN1dGU7byB0csaw4bubYyDEkSZvYWN1dGU7Ljwvc3Bhbj48L3A+DQoNCjxwPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+S2gmb2NpcmM7bmcgPHNwYW4gc3R5bGU9ImNvbG9yOiMyMzIzMjMiPmsmZWNpcmM7dSBn4buNaSA8c3Ryb25nPsSRJm9hY3V0ZTtuZyBnJm9hY3V0ZTtwLCB0aHUgY+G7jWMgd2Vic2l0ZSAsIGLhuqNvIGhp4buDbSwga2gmb2NpcmM7bmcgbCZhZ3JhdmU7bSB2aeG7h2MgaGF5IHF14bqjbmcgPC9zdHJvbmc+YyZhYWN1dGU7byBjJmFhY3V0ZTtjIG5nJmFncmF2ZTtuaCBuZ2jhu4EgdmkgcGjhuqFtIHBoJmFhY3V0ZTtwIGx14bqtdC48L3NwYW4+PC9zcGFuPjwvcD4NCg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj48c3BhbiBzdHlsZT0iY29sb3I6IzIzMjMyMyI+xJDhu5NuZyAmeWFjdXRlOyBjaG8gY2hlY2tzY2FtIHPhu60gZOG7pW5nIHPhu5EgdGnhu4FuIGPhu41jIMSR4buDIGLhu5NpIHRoxrDhu51uZyBjaG8gYyZhYWN1dGU7YyBiJmVjaXJjO24gbuG6v3UgeOG6o3kgcmEgdHJhbmggY2jhuqVwIGzhu6thIMSR4bqjbyBtJmFncmF2ZTsgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSDEkSZhYWN1dGU7bmggZ2kmYWFjdXRlOyBsJmFncmF2ZTsgbOG7l2kgZG8gYuG6oW4uPC9zcGFuPjwvc3Bhbj48L3A+DQo8L2Jsb2NrcXVvdGU+DQoNCjxoMz48c3Ryb25nPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+Mi4gQyZhYWN1dGU7Y2ggdGjhu6ljIHRoYW0gZ2lhIGcmb2FjdXRlO2kgYuG6o28gaGnhu4NtPC9zcGFuPjwvc3Ryb25nPjwvaDM+DQoNCjx1bD4NCgk8bGk+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj5M4buxYSBjaOG7jW4gMSB0cm9uZyA0IGcmb2FjdXRlO2kgYuG6o28gaGnhu4NtIGPhu6dhIENoZWNrc2NhbS5jb20mbmJzcDt2JmFncmF2ZTsgbuG7mXAgdGnhu4FuIHRp4buBbiBj4buNYyB0xrDGoW5nIOG7qW5nIHbhu5tpIGMmYWFjdXRlO2MgZyZvYWN1dGU7aSDEkOG7k25nICg1LjAwMC4wMDDEkSksIELhuqFjICgxMC4wMDAuMDAwxJEpLCBWJmFncmF2ZTtuZyAoMjAuMDAwLjAwMMSRKSwgS2ltIEPGsMahbmcgKDUwLjAwMC4wMDDEkSkuIFRo4budaSBnaWFuIHRoYW0gZ2lhIHThu5FpIHRoaeG7g3UgMyB0aCZhYWN1dGU7bmcuPC9zcGFuPjwvbGk+DQoJPGxpPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+TuG7mXAgcGgmaWFjdXRlOyB04bqhbyBo4buTIHPGoSBi4bqjbyBoaeG7g20gbeG7mXQgbOG6p24gbCZhZ3JhdmU7IDUwMC4wMDDEkS9sxrDhu6N0LiBDaGVja3NjYW0gbWnhu4VuIHBoJmlhY3V0ZTsgY+G6rXAgbmjhuq10IGjhu5Mgc8ahLjwvc3Bhbj48L2xpPg0KCTxsaT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWYiPkN1bmcgY+G6pXAgdGgmb2NpcmM7bmcgdGluIGMmYWFjdXRlOyBuaCZhY2lyYztuPC9zcGFuPjwvbGk+DQo8L3VsPg0KDQo8YmxvY2txdW90ZT4NCjxwPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+SUQgRmFjZWJvb2sgY2gmaWFjdXRlO25oPGJyIC8+DQpT4buRIMSRaeG7h24gdGhv4bqhaSwgWmFsbzxiciAvPg0K4bqibmggbeG6t3QgdHLGsOG7m2MgdiZhZ3JhdmU7IHNhdSBj4bunYSBjxINuIGPGsOG7m2MgYyZvY2lyYztuZyBkJmFjaXJjO248YnIgLz4NCuG6om5oIGNo4bulcCBraHUmb2NpcmM7biBt4bq3dCB24bubaSB0YXkgY+G6p20gY8SDbiBjxrDhu5tjIGMmb2NpcmM7bmcgZCZhY2lyYztuPGJyIC8+DQoxIOG6o25oIMSR4bqhaSBkaeG7h24mbmJzcDs8YnIgLz4NCk0mb2NpcmM7IHThuqMgduG7gSBjJmFhY3V0ZTtjIGThu4tjaCB24bulIGLhuqFuIGN1bmcgY+G6pXAgKCBLaG/huqNuZyAyMDAgdOG7qyApPGJyIC8+DQpEYW5oIHMmYWFjdXRlO2NoIGMmYWFjdXRlO2Mgc+G7kSB0JmFncmF2ZTtpIGtob+G6o24gxJFhbmcgc+G7rSBk4bulbmcgxJHhu4MgbXVhIGImYWFjdXRlO24sIGdpYW8gZOG7i2NoPGJyIC8+DQpDJmFhY3V0ZTtjIFRhZyBk4buLY2ggduG7pSBtdeG7kW4gxJHGsOG7o2MgaGnhu4NuIHRo4buLPC9zcGFuPjwvcD4NCjwvYmxvY2txdW90ZT4NCg0KPGgzPjxzdHJvbmc+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj4zLiBRdeG7uSBi4bqjbyBoaeG7g20gc+G6vSBkJnVncmF2ZTtuZyDEkeG7gyBsJmFncmF2ZTttIGcmaWdyYXZlOzwvc3Bhbj48L3N0cm9uZz48L2gzPg0KDQo8cD48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWYiPlF14bu5IGLhuqNvIGhp4buDbSBz4bq9IGQmdWdyYXZlO25nIMSR4buDIGNhbSBr4bq/dCB1eSB0JmlhY3V0ZTtuLCB04bqhbyBuaeG7gW0gdGluIGPhu6dhIGLhuqFuIHbhu5tpIGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyBraGkgc+G7rSBk4bulbmcgZOG7i2NoIHbhu6UgbSZhZ3JhdmU7IGLhuqFuIMSRxINuZyBrJnlhY3V0ZTsuIFYmYWdyYXZlOyBkJnVncmF2ZTtuZyDEkeG7gyBobyZhZ3JhdmU7biB0cuG6oyBjaG8ga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIGtoaSBi4bqhbiBjJm9hY3V0ZTsgZOG6pXUgaGnhu4d1IFNjYW0uPC9zcGFuPjwvcD4NCg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj5LaGkgYuG6oW4gdOG6oW8gcXXhu7kgYuG6o28gaGnhu4NtIMSR4buTbmcgbmdoxKlhIHbhu5tpIHZp4buHYyBi4bqhbiDEkeG7k25nICZ5YWN1dGU7ICZsZHF1bztraGkgYyZvYWN1dGU7IHbhuqVuIMSR4buBIHRyYW5oIGNo4bqlcCBz4bqjeSByYSBnaeG7r2EgJmxkcXVvO05nxrDhu51pIGImYWFjdXRlO24gZOG7i2NoIHbhu6UmcmRxdW87ICZhbXA7ICZsZHF1bztOZ8aw4budaSBz4butIGThu6VuZyBk4buLY2ggduG7pSZyZHF1bzsgdHImZWNpcmM7biB3ZWJzaXRlIENoZWNrc2NhbS5jb20gdGgmaWdyYXZlOyBRdeG6o24gdHLhu4sgdmkmZWNpcmM7biBj4bunYSBDaGVja3NjYW0uY29tIHPhur0gbCZhZ3JhdmU7IG5nxrDhu51pIHBoJmFjaXJjO24geOG7rSB2JmFncmF2ZTsgYyZvYWN1dGU7IDEwMCUgcXV54buBbiBxdXnhur90IMSR4buLbmggxJEmdWFjdXRlO25nIHNhaSZyZHF1bzsuPC9zcGFuPjwvcD4NCg0KPGgzPjxzdHJvbmc+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj40LiBM4bujaSAmaWFjdXRlO2NoIGtoaSB0aGFtIGdpYSB04bqhbyBxdeG7uSBi4bqjbyBoaeG7g208L3NwYW4+PC9zdHJvbmc+PC9oMz4NCg0KPHVsPg0KCTxsaT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWYiPsSQxrDhu6NjIMSR4bupbmcgdHJvbmcgZGFuaCBzJmFhY3V0ZTtjaCBhZG1pbiBDaGVja3NjYW0uY29tIHRp4bq/cCBj4bqtbiBuaGnhu4F1IGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyB04burIENoZWNrc2NhbS5jb208L3NwYW4+PC9saT4NCgk8bGk+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj7EkMaw4bujYyBoxrDhu59uZyBs4bujaSBy4bqldCBuaGnhu4F1IHThu6sgVXkgdCZpYWN1dGU7biB0aMawxqFuZyBoaeG7h3UgQ2hlY2tzY2FtLmNvbSB0ciZlY2lyYztuIE1YSDwvc3Bhbj48L2xpPg0KCTxsaT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWYiPlThuqFvIHV5IHQmaWFjdXRlO24gY2FvIHRyb25nIGtpbmggZG9hbmggYuG6sW5nIGNo4bupbmcgY2jhu4kgdXkgdCZpYWN1dGU7biBj4bunYSBDaGVja3NjYW0uY29tPC9zcGFuPjwvbGk+DQoJPGxpPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+TiZhY2lyYztuZyBjYW8gdGjhu6kgaCZhZ3JhdmU7bmcgU0VPIGdvb2dsZSBu4bq/dSBjJm9hY3V0ZTsgd2Vic2l0ZSBi4bqxbmcgbGluayBmb2xsb3cgZ2kmYWFjdXRlOyB0cuG7iy48L3NwYW4+PC9saT4NCgk8bGk+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj7EkCZhYWN1dGU7bmggZ2kmYWFjdXRlOywgdGjhuqltIMSR4buLbmggdHJhbmggY2jhuqVwIGLhurFuZyDEkeG7mWkgbmfFqSBuaCZhY2lyYztuIHPhu7EgYyZvYWN1dGU7IGNodXkmZWNpcmM7biBtJm9jaXJjO24sIHV5IHQmaWFjdXRlO248L3NwYW4+PC9saT4NCjwvdWw+DQoNCjxoMz48c3Ryb25nPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+NS4gUXV5IMSR4buLbmggciZ1YWN1dGU7dCBi4bqjbyBoaeG7g208L3NwYW4+PC9zdHJvbmc+PC9oMz4NCg0KPHVsPg0KCTxsaT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWYiPsSQxrDhu6NjIHImdWFjdXRlO3QgYuG6o28gaGnhu4NtIHNhdSB0aOG7nWkgZ2lhbiAzIHRoJmFhY3V0ZTtuZyBr4buDIHThu6sgbmcmYWdyYXZlO3kgdGhhbSBnaWEsIGtoJm9jaXJjO25nIG3huqV0IHBoJmlhY3V0ZTsgciZ1YWN1dGU7dC48L3NwYW4+PC9saT4NCgk8bGk+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj5ZJmVjaXJjO3UgY+G6p3UgciZ1YWN1dGU7dCDEkcaw4bujYyB44butIGwmeWFjdXRlOyB0cm9uZyB2Jm9ncmF2ZTtuZyAzMCBuZyZhZ3JhdmU7eSBu4bq/dSBraCZvY2lyYztuZyBjJm9hY3V0ZTsga2hp4bq/dSBu4bqhaS48L3NwYW4+PC9saT4NCgk8bGk+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj5DaGVja3NjYW0uY29tIHPhur0gdGgmb2NpcmM7bmcgYiZhYWN1dGU7byBjJm9jaXJjO25nIGtoYWkgeSZlY2lyYzt1IGPhuqd1IHImdWFjdXRlO3QgdiZhZ3JhdmU7IGjhuqEgaOG7kyBzxqEgYuG6o28gaGnhu4NtIG5nYXkgc2F1IGtoaSBuaOG6rW4gxJHGsOG7o2MgeSZlY2lyYzt1IGPhuqd1IHImdWFjdXRlO3QgYuG6o28gaGnhu4NtLjwvc3Bhbj48L2xpPg0KPC91bD4NCg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj7EkOG7gyB04bqhbyByYSBt4buZdCBj4buZbmcgxJHhu5NuZyB1eSB0JmlhY3V0ZTtuICZhbXA7IGNo4bqldCBsxrDhu6NuZywgQ2hlY2tzY2FtLmNvbSBobyZhZ3JhdmU7biB0byZhZ3JhdmU7biBjJm9hY3V0ZTsgcXV54buBbiDEkcahbiBwaMawxqFuZyBjaOG6pW0gZOG7qXQgaOG7o3AgdCZhYWN1dGU7YywgaG8mYWdyYXZlO24gdHLhuqMgYuG6o28gaGnhu4NtIG7hur91IGThu4tjaCB24bulIGPhu6dhIGLhuqFuIGtoJm9jaXJjO25nIMSR4bqjbSBi4bqjbyBjaOG6pXQgbMaw4bujbmcsIGcmYWNpcmM7eSByYSBuaGnhu4F1IHRyYW5oIGMmYXRpbGRlO2ksIGwmYWdyYXZlO20g4bqjbmggaMaw4bufbmcgxJHhur9uIHF14buBbiB2JmFncmF2ZTsgbOG7o2kgJmlhY3V0ZTtjaCBj4bunYSBDaGVja3NjYW0uY29tIHYmYWdyYXZlOyBjJmFhY3V0ZTtjIEFkbWluIGtoJmFhY3V0ZTtjLjwvc3Bhbj48L3A+DQoNCjxoMz48c3Ryb25nPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+Ni4gTGkmZWNpcmM7biBo4buHIGFkbWluPC9zcGFuPjwvc3Ryb25nPjwvaDM+DQoNCjxwPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTpBcmlhbCxIZWx2ZXRpY2Esc2Fucy1zZXJpZiI+S2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIGMmb2FjdXRlOyBuaHUgY+G6p3UgbuG6oXAgdGnhu4FuIHF14bu5IGLhuqNvIGhp4buDbSBDaGVja3NjYW0uY29tIHZ1aSBsJm9ncmF2ZTtuZyBsaSZlY2lyYztuIGjhu4cgQWRtaW4gcXVhIGMmYWFjdXRlO2MgayZlY2lyYztuaCBsaSZlY2lyYztuIGjhu4duJm5ic3A7c2F1IMSR4buDIMSRxrDhu6NjIHRy4bujIGdpJnVhY3V0ZTtwOjwvc3Bhbj48YnIgLz4NCiZuYnNwOzwvcD4NCg0KPHA+YyZvYWN1dGU7IHRvJmFncmF2ZTtuIHF1eeG7gW4gdGhheSDEkeG7lWksIGLhu5Ugc3VuZyBu4buZaSBkdW5nIGNoJmlhY3V0ZTtuaCBzJmFhY3V0ZTtjaCB0aGVvIHRo4budaSBnaWFuIHBoJnVncmF2ZTsgaOG7o3AgduG7m2kgbSZvY2lyYztpIHRyxrDhu51uZywgcGgmYWFjdXRlO3AgbHXhuq10LiBLaCZhYWN1dGU7Y2ggaCZhZ3JhdmU7bmcgYyZvYWN1dGU7IHRyJmFhY3V0ZTtjaCBuaGnhu4dtIHRo4buxYyBoaeG7h24gxJEmdWFjdXRlO25nIHRoZW8gYyZhYWN1dGU7YyDEkWnhu4F1IGtob+G6o24gdGhhbmggdG8mYWFjdXRlO24gdiZhZ3JhdmU7IGhvJmFncmF2ZTtuIHRp4buBbiBuJmFncmF2ZTt5PC9wPg0K', '', 'tham-gia-bao-hiem', 3, 0, 'hoantat', '2024-10-05'),
(7, 'Xử lý tranh chấp', 'PHAgc3R5bGU9InRleHQtYWxpZ246anVzdGlmeSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTptZWRpdW0iPkLhu5NpIHRoxrDhu51uZyBsJmFncmF2ZTsgaG/huqF0IMSR4buZbmcgc+G7rSBk4bulbmcgc+G7kSB0aeG7gW4gY+G7jWMgY+G7p2EgYiZlY2lyYztuIGPhu41jIGLhuqNvIGhp4buDbSB04bqhaSBDaGVja3NjYW0gaG8mYWdyYXZlO24gY2hvIGMmYWFjdXRlO2MgbuG6oW4gbmgmYWNpcmM7biBi4buLIGzhu6thIMSR4bqjbyB04burIGNoJmlhY3V0ZTtuaCDEkcahbiB24buLIG4mYWdyYXZlO3kgZyZhY2lyYzt5IHJhLjwvc3Bhbj48L3A+DQoNCjxwIHN0eWxlPSJ0ZXh0LWFsaWduOmp1c3RpZnkiPjxzdHJvbmc+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTptZWRpdW0iPk3hu5l0IHPhu5EgcXV5IMSR4buLbmggY+G7p2Egdmnhu4djIG5o4bqtbiBi4buTaSB0aMaw4budbmc8L3NwYW4+PC9zdHJvbmc+PC9wPg0KDQo8dWw+DQoJPGxpPg0KCTxwIHN0eWxlPSJ0ZXh0LWFsaWduOmp1c3RpZnkiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6bWVkaXVtIj5O4bqhbiBuaCZhY2lyYztuIHBo4bqjaSDEkcSDbmcgayZ5YWN1dGU7IDEgdCZhZ3JhdmU7aSBraG/huqNuIHThuqFpIGNoZWNrc2NhbSZuYnNwO8SR4buDIGfhu61pIGLhurFuZyBjaOG7qW5nIHYmYWdyYXZlOyB5JmVjaXJjO3UgY+G6p3UgYuG7k2kgdGjGsOG7nW5nLjwvc3Bhbj48L3A+DQoJPC9saT4NCgk8bGk+DQoJPHAgc3R5bGU9InRleHQtYWxpZ246anVzdGlmeSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTptZWRpdW0iPlBo4bqjaSB04bqhbyB2JmFncmF2ZTsgdGjhu7FjIGhp4buHbiBnaWFvIGThu4tjaCBxdWEgQ2hlY2tzY2FtPC9zcGFuPjwvcD4NCgk8L2xpPg0KCTxsaT4NCgk8cCBzdHlsZT0idGV4dC1hbGlnbjpqdXN0aWZ5Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOm1lZGl1bSI+UGjhuqNpIGMmb2FjdXRlOyBraG/huqNuIGLhuqNvIGhp4buDbSB04bqhaSZuYnNwO0NoZWNrc2NhbTwvc3Bhbj48L3A+DQoJPC9saT4NCgk8bGk+DQoJPHAgc3R5bGU9InRleHQtYWxpZ246anVzdGlmeSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTptZWRpdW0iPlRo4budaSBnaWFuIMSR4bujaSBi4bqxbmcgY2jhu6luZyBj4bunYSBjJmFhY3V0ZTtjIG7huqFuIG5oJmFjaXJjO24gbCZhZ3JhdmU7IDE1IG5nJmFncmF2ZTt5IHQmaWFjdXRlO25oIHThu6sgbCZ1YWN1dGU7YyBDaGVja3NjYW0gdOG6oW8gdGgmb2NpcmM7bmcgYiZhYWN1dGU7byBjJm9jaXJjO25nIGtoYWkuIE5o4buvbmcgbmfGsOG7nWkgZ+G7rWkgeSZlY2lyYzt1IGMmYWNpcmM7dSBi4buTaSB0aMaw4budbmcgc2F1IDE1IG5nJmFncmF2ZTt5IHPhur0ga2gmb2NpcmM7bmcgxJHGsOG7o2MgYuG7k2kgdGjGsOG7nW5nLjwvc3Bhbj48L3A+DQoJPC9saT4NCgk8bGk+DQoJPHAgc3R5bGU9InRleHQtYWxpZ246anVzdGlmeSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTptZWRpdW0iPkImZWNpcmM7biBi4buLIHThu5EgY2FvIChi4bqjbyBoaeG7g20pIHPhur0gYyZvYWN1dGU7IHRoJmVjaXJjO20gMTUgbmcmYWdyYXZlO3kgxJHhu4MgxJHGsGEgY2jhu6luZyBj4bupIGNo4buRbmcgbOG6oWkgYyZhYWN1dGU7YyBjJmFhY3V0ZTtvIGJ14buZYy4gQ2hlY2tzY2FtIHPhur0gbGkmZWNpcmM7biBo4buHIHbhu5tpIGImZWNpcmM7biBi4buLIHThu5EgY2FvJm5ic3A7eSZlY2lyYzt1IGPhuqd1IGdp4bqjaSB0ciZpZ3JhdmU7bmguIFF1JmFhY3V0ZTsgMTUgbmcmYWdyYXZlO3kga2gmb2NpcmM7bmcgYyZvYWN1dGU7IHBo4bqjbiBo4buTaSBDaGVja3NjYW0gc+G6vSB0aeG6v24gaCZhZ3JhdmU7bmggY2hpIHRy4bqjIGLhu5NpIHRoxrDhu51uZy48L3NwYW4+PC9wPg0KCTwvbGk+DQoJPGxpPg0KCTxwIHN0eWxlPSJ0ZXh0LWFsaWduOmp1c3RpZnkiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6bWVkaXVtIj5DaGVja3NjYW0gY2jhu4kgYuG7k2kgdGjGsOG7nW5nIGNobyBuaOG7r25nIHQmYWdyYXZlO2kga2hv4bqjbiBjJm9hY3V0ZTsgc+G7kSDEkWnhu4duIHRob+G6oWkgxJHGsOG7o2MgeCZhYWN1dGU7YyB0aOG7sWMuPC9zcGFuPjwvcD4NCgk8L2xpPg0KCTxsaT4NCgk8cCBzdHlsZT0idGV4dC1hbGlnbjpqdXN0aWZ5Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOm1lZGl1bSI+U+G7kSB0aeG7gW4gYuG7k2kgdGjGsOG7nW5nIHPhur0gcGjhu6UgdGh14buZYyB2JmFncmF2ZTtvIHThu4kgbOG7hyBwaOG6p24gdHLEg20gc+G7kSB0aeG7gW4gYuG7iyBs4burYSB0ciZlY2lyYztuIHThu5VuZyBz4buRIHRp4buBbiBi4buLIGzhu6thIGPhu6dhIGMmYWFjdXRlO2MgbuG6oW4gbmgmYWNpcmM7biBraCZhYWN1dGU7Yy4gViZhZ3JhdmU7IGtoJm9jaXJjO25nIHbGsOG7o3QgcXUmYWFjdXRlOyBz4buRIHRp4buBbiBtJmFncmF2ZTsgYuG6oW4gYuG7iyBs4burYS4gViZpYWN1dGU7IGThu6UgYuG6oW4gYuG7iyBs4burYSAxdHIsIHThu5VuZyBz4buRIHRp4buBbiBi4buLIGzhu6thIGPhu6dhIGMmYWFjdXRlO2MgbuG6oW4gbmgmYWNpcmM7biBsJmFncmF2ZTsgMTB0ciwgduG6rXkgYuG6oW4gc+G6vSDEkcaw4bujYyAxMCUgdOG7qyBz4buRIHRp4buBbiBi4bqjbyBoaeG7g20uIE7hur91IHPhu5EgdGnhu4FuIGLhuqNvIGhp4buDbSBsJmFncmF2ZTsgMTAwdHIgdGgmaWdyYXZlOyBi4bqhbiBz4bq9IG5o4bqtbiDEkWMgMXRyLiBO4bq/dSBz4buRIHRp4buBbiBi4bqjbyBoaeG7g20gbCZhZ3JhdmU7IDV0ciB0aCZpZ3JhdmU7IGLhuqFuIHPhur0gbmjhuq1uIMSRxrDhu6NjIDUwMGsuPC9zcGFuPjwvcD4NCgk8L2xpPg0KCTxsaT4NCgk8cCBzdHlsZT0idGV4dC1hbGlnbjpqdXN0aWZ5Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOm1lZGl1bSI+U+G7kSB0aeG7gW4gYuG6o28gaGnhu4NtIGMmb2dyYXZlO24gdGjhu6thIHPhur0gxJHGsOG7o2MgZ+G7rWkgdiZhZ3JhdmU7byBxdeG7uSB04burIHRoaeG7h24gaOG7lyB0cuG7oyB0cuG6uyBlbSB2JnVncmF2ZTtuZyBjYW8uIENoZWNrc2NhbSBz4bq9IGMmb2FjdXRlOyBiJmFhY3V0ZTtvIGMmYWFjdXRlO28gY+G7pSB0aOG7gy48L3NwYW4+PC9wPg0KCTwvbGk+DQo8L3VsPg0KDQo8cCBzdHlsZT0idGV4dC1hbGlnbjpqdXN0aWZ5Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOm1lZGl1bSI+TeG7mXQgxJFp4buDbSBxdWFuIHRy4buNbmcgdHJvbmcgYuG7k2kgdGjGsOG7nW5nIHThuqFpIGNoZWNrc2NhbSBraCZhYWN1dGU7YyB24bubaSDEkcahbiB24buLIGtoJmFhY3V0ZTtjIGwmYWdyYXZlOyBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpIGMmb2FjdXRlOyB0aCZlY2lyYzttIG3hu6ljIGLhuqNvIGhp4buDbSBi4buVIHN1bmcgduG7m2kgbeG7mXQmbmJzcDtz4buRIMSRxqFuIHbhu4sgYuG6o28gaGnhu4NtLiBOZ28mYWdyYXZlO2kgc+G7kSB0aeG7gW4gaOG7jSBj4buNYyZuYnNwO2LhuqNvIGhp4buDbSwgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSBz4bq9IGLhuqNvIGhp4buDbSBi4buVIHN1bmcgdGgmZWNpcmM7bS4gViZpZ3JhdmU7IHRo4bq/IHPhu5EgdGnhu4FuIGLhu5NpIHRoxrDhu51uZyBi4bqhbiBuaOG6rW4gxJHGsOG7o2Mgc+G6vSBjYW8gaMahbi48L3NwYW4+PC9wPg0KDQo8cCBzdHlsZT0idGV4dC1hbGlnbjpqdXN0aWZ5Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOm1lZGl1bSI+ViZpYWN1dGU7IGThu6U6IGFuaCBBIGPhu41jIGLhuqNvIGhp4buDbSAxMHRyLCBjaGVja3NjYW0gYyZvYWN1dGU7IGLhuqNvIGhp4buDbSBi4buVIHN1bmcgY2hvIGFuaCBBIHRoJmVjaXJjO20gMTB0ciB0aCZpZ3JhdmU7IHPhu5EgdGnhu4FuIGLhuqFuIG5o4bqtbiDEkWMgc+G6vSBn4bqlcCDEkSZvY2lyYztpLiBOaMawbmcgc+G6vSBraCZvY2lyYztuZyB2xrDhu6N0IHF1JmFhY3V0ZTsgc+G7kSB0aeG7gW4gYuG6oW4gYuG7iyBs4burYS48L3NwYW4+PC9wPg0KDQo8cCBzdHlsZT0idGV4dC1hbGlnbjpqdXN0aWZ5Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOm1lZGl1bSI+xJDhu4MgxJHhuqNtIGLhuqNvIGFuIHRvJmFncmF2ZTtuIGdpYW8gZOG7i2NoIGLhuqFuIHZ1aSBsJm9ncmF2ZTtuZyBjaOG7jW4gxJHGoW4gduG7iyBjJm9hY3V0ZTsgY+G7jWMgYuG6o28gaGnhu4NtIGzhu5tuIGjGoW4gc+G7kSB0aeG7gW4gbSZhZ3JhdmU7IGLhuqFuIGdpYW8gZOG7i2NoLjwvc3Bhbj48L3A+DQoNCjxwIHN0eWxlPSJ0ZXh0LWFsaWduOmp1c3RpZnkiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6bWVkaXVtIj5C4bqjbyBoaeG7g20gYuG7lSBzdW5nIGNoJmlhY3V0ZTtuaCBsJmFncmF2ZTsgc+G7kSB0aeG7gW4gbSZhZ3JhdmU7IENoZWNrc2NhbSBi4bqjbyB0cuG7oyB0aCZlY2lyYzttJm5ic3A7bmjGsCBoJmlncmF2ZTtuaCBiJmVjaXJjO24gZMaw4bubaTo8L3NwYW4+PC9wPg0KDQo8ZGl2IGNsYXNzPSJ0YWJsZS1yZXNwb25zaXZlIj4NCjxwPiZuYnNwOzwvcD4NCjwvZGl2Pg0KDQo8cCBzdHlsZT0idGV4dC1hbGlnbjpqdXN0aWZ5Ij4mbmJzcDs8L3A+DQo=', '', 'xu-ly-tranh-chap', 3, 0, 'hoantat', '2024-10-05'),
(8, 'Báo cáo vi phạm', 'PHA+Q2hlY2tzY2FtIGNvaSBhbiB0byZhZ3JhdmU7biB0aCZvY2lyYztuZyB0aW4sIGFuIHRvJmFncmF2ZTtuIGdpYW8gZOG7i2NoLCBjb2kgdHImYWFjdXRlO2NoIG5oaeG7h20gdHUmYWNpcmM7biB0aOG7pyB2JmFncmF2ZTsgYuG6o28gduG7hyBjJmFhY3V0ZTtjIGzhu6NpICZpYWN1dGU7Y2ggY2h1bmcgY2hvIHThuqV0IGPhuqMgYyZhYWN1dGU7YyB0aCZhZ3JhdmU7bmggdmkmZWNpcmM7biwgYyZhYWN1dGU7YyDEkeG7kWkgdMaw4bujbmcgZ2lhbyBk4buLY2ggbCZhZ3JhdmU7IHbhuqVuIMSR4buBIMawdSB0aSZlY2lyYztuIGgmYWdyYXZlO25nIMSR4bqndS4gRG8gduG6rXksIE3hu41pIGImYWFjdXRlO28gYyZhYWN1dGU7byBs4bqhbSBk4bulbmcsIGImYWFjdXRlO28gYyZhYWN1dGU7byBzY2FtLCBiJmFhY3V0ZTtvIGMmYWFjdXRlO28gbOG7q2EgxJHhuqNvIGfhu61pIHThu5tpIENoZWNrc2NhbSDEkeG7gXUgxJHGsOG7o2MgxJHhu5lpIG5nxakgcXXhuqNuIHRy4buLIGPhu6dhIGNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgeGVtIHgmZWFjdXRlO3QgdiZhZ3JhdmU7IHjhu60gbCZ5YWN1dGU7IGPhuqluIHRo4bqtbi4mbmJzcDs8L3A+DQoNCjxwPlR1eSBuaGkmZWNpcmM7biwga2jhu5FpIGzGsOG7o25nIGtoaeG6v3UgbuG6oWkgaCZhZ3JhdmU7bmcgbmcmYWdyYXZlO3kgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSBuaOG6rW4gxJHGsOG7o2MgcuG6pXQgbmhp4buBdSBuJmVjaXJjO24gY2jhu4kgYyZvYWN1dGU7IHRo4buDIHRy4bqjIGzhu51pIGLhuqFuIG7hur91IGNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgY+G6p24gdGgmZWNpcmM7bSB0aCZvY2lyYztuZyB0aW4gaG/hurdjIGPhuqduIGwmYWdyYXZlO20gciZvdGlsZGU7IGNoaSB0aeG6v3QuPC9wPg0KDQo8aDI+PHNwYW4gc3R5bGU9ImNvbG9yOiNlNjdlMjIiPjxzdHJvbmc+MS4gxJDhu4thIGNo4buJIHRp4bq/cCBuaOG6rW4gdGgmb2NpcmM7bmcgdGluPC9zdHJvbmc+PC9zcGFuPjwvaDI+DQoNCjxwPlZ1aSBsJm9ncmF2ZTtuZyBn4butaSBiJmFhY3V0ZTtvIGMmYWFjdXRlO28gbOG6oW0gZOG7pW5nIGNobyBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpIHRoZW8gxJHhu4thIGNo4buJIHRp4bq/cCBuaOG6rW4gc2F1OjwvcD4NCg0KPHA+R+G7rWkgdHLhu7FjIHRp4bq/cCBsJmVjaXJjO24gd2Vic2l0ZTogQ2hlY2tzY2FtIHBo4bqnbiBiJmFhY3V0ZTtvIGMmYWFjdXRlO28gY2hlY2tzY2FtPC9wPg0KDQo8cD5MaSZlY2lyYztuIGjhu4cgaOG7lyB0cuG7oyB24bubaSBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpIHF1YSBjJmFhY3V0ZTtjIGsmZWNpcmM7bmggSOG7liBUUuG7oiBzYXU6PC9wPg0KDQo8cD48c3Ryb25nIHN0eWxlPSJjb2xvcjojZTY3ZTIyIj4yLiBUaCZvY2lyYztuZyB0aW4gYiZhYWN1dGU7byBjJmFhY3V0ZTtvIGJhbyBn4buTbTo8L3N0cm9uZz48L3A+DQoNCjx1bD4NCgk8bGk+TG/huqFpIGzhuqFtIGThu6VuZyZoZWxsaXA7JmhlbGxpcDsmaGVsbGlwOyZoZWxsaXA7JmhlbGxpcDsmaGVsbGlwOyZoZWxsaXA7JmhlbGxpcDs8L2xpPg0KCTxsaT5O4buZaSBkdW5nIGzhuqFtIGThu6VuZyZoZWxsaXA7JmhlbGxpcDsmaGVsbGlwOyZoZWxsaXA7JmhlbGxpcDsmaGVsbGlwOzwvbGk+DQoJPGxpPlVSTCBsaSZlY2lyYztuIHF1YW4maGVsbGlwOyZoZWxsaXA7JmhlbGxpcDsmaGVsbGlwOyZoZWxsaXA7LjwvbGk+DQoJPGxpPkgmaWdyYXZlO25oIOG6o25oIGNo4bupbmcgbWluaCBnaWFvIGThu4tjaCZoZWxsaXA7JmhlbGxpcDsmaGVsbGlwOyZoZWxsaXA7JmhlbGxpcDsmaGVsbGlwOy4uPC9saT4NCgk8bGk+VGgmb2NpcmM7bmcgdGluIGxpJmVjaXJjO24gaOG7hyBj4bunYSBuZ8aw4budaSBiJmFhY3V0ZTtvIGImYWFjdXRlO288L2xpPg0KPC91bD4NCg0KPGgyPjxzcGFuIHN0eWxlPSJjb2xvcjojZTY3ZTIyIj48c3Ryb25nPjMuIEMmYWFjdXRlO2MgbG/huqFpIGzhuqFtIGThu6VuZyB0aMaw4budbmcgZ+G6t3A6PC9zdHJvbmc+PC9zcGFuPjwvaDI+DQoNCjx1bD4NCgk8bGk+TOG7q2EgxJHhuqNvPC9saT4NCgk8bGk+U+G6o24gc+G6o24gcGjhuqltLCBk4buLY2ggduG7pSDEkeG7mWMgaOG6oWk8L2xpPg0KCTxsaT5M4bqhbSBk4bulbmcgbeG6oW5nPC9saT4NCgk8bGk+S2hp4bq/dSBu4bqhaSBi4bqjbiBxdXnhu4FuIC8gdGjGsMahbmcgaGnhu4d1PC9saT4NCgk8bGk+R2lhbyBk4buLY2gga2gmb2NpcmM7bmcgxJEmdWFjdXRlO25nPC9saT4NCgk8bGk+QyZhYWN1dGU7YyB0cmFuaCBjaOG6pXAmbmJzcDs8L2xpPg0KPC91bD4NCg0KPGgyPjxzcGFuIHN0eWxlPSJjb2xvcjojZTY3ZTIyIj48c3Ryb25nPjQuIEMmYWFjdXRlO2MgYsaw4bubYyB44butIGwmeWFjdXRlOzwvc3Ryb25nPjwvc3Bhbj48L2gyPg0KDQo8cD5WdWkgbCZvZ3JhdmU7bmcgZ+G7rWkgYiZhYWN1dGU7byBjJmFhY3V0ZTtvIGzhuqFtIGThu6VuZyBjaG8gY2gmdWFjdXRlO25nIHQmb2NpcmM7aSBxdWEgdHImZWNpcmM7biB3ZWJzaXRlIENoZWNrc2NhbSB04bqhaSBt4bulYyB04buRIGMmYWFjdXRlO28gc2NhbSBob+G6t2MgcXVhIGMmYWFjdXRlO2MgayZlY2lyYztuaCBDU0tIIMSRxrDhu6NjIGxp4buHdCBrJmVjaXJjOyBiJmVjaXJjO24gdHImZWNpcmM7bi4gVOG6pXQgY+G6oyBiJmFhY3V0ZTtvIGMmYWFjdXRlO28gbOG6oW0gZOG7pW5nIHPhur0gxJHGsOG7o2MgY2h1eeG7g24gc2FuZyB0cmFuZyBxdeG6o24gbCZ5YWN1dGU7IHJpJmVjaXJjO25nIGPhu6dhIGNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgZMaw4bubaSBk4bqhbmcgbeG7mXQgdGlja2V0IGMmb2NpcmM7bmcgdmnhu4djIMSR4buDIGLhu5kgcGjhuq1uIGNodXkmZWNpcmM7biB0ciZhYWN1dGU7Y2ggY+G7p2EgQ2hlY2tzY2FtIHjhu60gbCZ5YWN1dGU7IHRoZW8gYyZhYWN1dGU7YyBixrDhu5tjIHNhdTo8L3A+DQoNCjxoMz48c3Ryb25nPkLGsOG7m2MgMTwvc3Ryb25nPjwvaDM+DQoNCjxwPktoaSBuaOG6rW4gxJHGsOG7o2MgYyZhYWN1dGU7YyBiJmFhY3V0ZTtvIGMmYWFjdXRlO28gbOG6oW0gZOG7pW5nLCB0cm9uZyB2Jm9ncmF2ZTtuZyAyNGggQ2hlY2tzY2FtIHPhur0gcGjhuqNuIGjhu5NpIMSR4buDIHgmYWFjdXRlO2Mgbmjhuq1uIMSRJmF0aWxkZTsgdGnhur9wIG5o4bqtbiB0aCZvY2lyYztuZyB0aW4uPC9wPg0KDQo8aDM+PHN0cm9uZz5CxrDhu5tjIDI8L3N0cm9uZz48L2gzPg0KDQo8cD5DaGVja3NjYW0geGVtIHgmZWFjdXRlO3QgbuG7mWkgZHVuZywga2nhu4NtIHRyYSBjJmFhY3V0ZTtjIGLhurFuZyBjaOG7qW5nIMSRxrDhu6NjIG5nxrDhu51pIGQmdWdyYXZlO25nIGN1bmcgY+G6pXAgxJHhu4MgeCZhYWN1dGU7YyDEkeG7i25oIHQmaWFjdXRlO25oIGNoJmlhY3V0ZTtuaCB4JmFhY3V0ZTtjIGPhu6dhIGImYWFjdXRlO28gYyZhYWN1dGU7by4gTmdvJmFncmF2ZTtpIHJhLCBDaGVja3NjYW0gKGMmb2FjdXRlOyB0aOG7gykgdHJhbyDEkeG7lWkgduG7m2kgbmfGsOG7nWkgYiZhYWN1dGU7byBjJmFhY3V0ZTtvIMSR4buDIGMmb2FjdXRlOyB0aCZlY2lyYzttIHRoJm9jaXJjO25nIHRpbiB24bulIHZp4buHYy48L3A+DQoNCjxoMz48c3Ryb25nPkLGsOG7m2MgMzwvc3Ryb25nPjwvaDM+DQoNCjxwPlNhdSBraGkgxJEmYXRpbGRlOyBraeG7g20gdHJhIHRoJm9jaXJjO25nIHRpbiwgbuG6v3UgYyZhYWN1dGU7YyB2aSBwaOG6oW0gdHJvbmcgYiZhYWN1dGU7byBjJmFhY3V0ZTtvIGwmYWdyYXZlOyBjaCZpYWN1dGU7bmggeCZhYWN1dGU7YyBDaGVja3NjYW0gc+G6vSBjaOG7pyDEkeG7mW5nIHRo4buxYyB0aGkgYyZhYWN1dGU7YyBoJmFncmF2ZTtuaCDEkeG7mW5nIGJhbyBn4buTbTwvcD4NCg0KPHVsPg0KCTxsaT7EkMSDbmcgdOG6o2kgbuG7mWkgZHVuZyBiJmFhY3V0ZTtvIGMmYWFjdXRlO288L2xpPg0KCTxsaT5QaG9uZyB04buPYSBnaWFvIGThu4tjaDwvbGk+DQoJPGxpPkhvJmFncmF2ZTtuIHRy4bqjIHRp4buBbiBnaWFvIGThu4tjaCBjaG8gYyZhYWN1dGU7YyBiJmVjaXJjO24gbGkmZWNpcmM7biBxdWFuPC9saT4NCgk8bGk+VHLhu6sgxJFp4buDbSB1eSB0JmlhY3V0ZTtuPC9saT4NCgk8bGk+VOG6oW0ga2gmb2FjdXRlO2EgdCZhZ3JhdmU7aSBraG/huqNuPC9saT4NCgk8bGk+Q+G6pW0gdsSpbmggdmnhu4VuIHQmYWdyYXZlO2kga2hv4bqjbjwvbGk+DQo8L3VsPg0KDQo8cD5O4bq/dSBDaGVja3NjYW0geCZhYWN1dGU7YyBtaW5oIHZpIHBo4bqhbSB0cm9uZyBiJmFhY3V0ZTtvIGMmYWFjdXRlO28gbCZhZ3JhdmU7IEtIJk9jaXJjO05HIGNoJmlhY3V0ZTtuaCB4JmFhY3V0ZTtjLiBUaCZpZ3JhdmU7IGImYWFjdXRlO28gYyZhYWN1dGU7byBuJmFncmF2ZTt5IHPhur0gYuG7iyBjb2kgbCZhZ3JhdmU7IHNwYW0gdiZhZ3JhdmU7IGfhu6EgYuG7jyBiJmFhY3V0ZTtvIGMmYWFjdXRlO28sIMSR4buTbmcgdGjhu51pIGMmb2FjdXRlOyBiaeG7h24gcGgmYWFjdXRlO3AgeOG7rSBsJnlhY3V0ZTsgbmfGsOG7nWkgYiZhYWN1dGU7byBjJmFhY3V0ZTtvIHZpIHBo4bqhbSBzYWkuJm5ic3A7PC9wPg0KDQo8cD5O4bq/dSBjaOG7pyB0aOG7gyBiJmFhY3V0ZTtjIGLhu48gYiZhYWN1dGU7byBjJmFhY3V0ZTtvIGzhuqFtIGThu6VuZywgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSBz4bq9IGwmYWdyYXZlO20gdHJ1bmcgZ2lhbiDEkeG7gyBoYWkgYiZlY2lyYztuIHRyYW8gxJHhu5VpIHYmYWdyYXZlOyB0JnVncmF2ZTt5IHRyxrDhu51uZyBo4bujcCwgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSBz4bq9IMSRxrBhIHJhIHF1eeG6v3QgxJHhu4tuaCBwaCZ1Z3JhdmU7IGjhu6NwIG5o4bqldC48L3A+DQoNCjxoMz48c3Ryb25nPkLGsOG7m2MgNDwvc3Ryb25nPjwvaDM+DQoNCjxwPlNhdSBraGkgeOG7rSBsJnlhY3V0ZTsgYiZhYWN1dGU7byBjJmFhY3V0ZTtvIHZpIHBo4bqhbS4gJm5ic3A7Q2gmdWFjdXRlO25nIHQmb2NpcmM7aSBz4bq9IHBo4bqjbiBo4buTaSBr4bq/dCBxdeG6oyBjaG8gbmfGsOG7nWkgYiZhYWN1dGU7byBjJmFhY3V0ZTtvIHZpIHBo4bqhbSBxdWEgYyZ1Z3JhdmU7bmcgayZlY2lyYztuaCBnaWFvIGThu4tjaDwvcD4NCg0KPGgzPjxzdHJvbmc+Qsaw4bubYyA1PC9zdHJvbmc+PC9oMz4NCg0KPHA+TMawdSB0cuG7ryBwaOG7pWMgduG7pSBraeG7g20gdHJhIGtoaSBjJm9hY3V0ZTsgeSZlY2lyYzt1IGPhuqd1PC9wPg0K', '', 'bao-cao-vi-pham', 5, 0, 'hoantat', '2024-10-05'),
(9, 'Bảo mật thông tin', 'PHA+Q2hlY2tzY2FtIGNhbSBr4bq/dCBz4bq9IGLhuqNvIG3huq10IG5o4buvbmcgdGgmb2NpcmM7bmcgdGluIG1hbmcgdCZpYWN1dGU7bmggcmkmZWNpcmM7bmcgdMawIGPhu6dhIFF1JnlhY3V0ZTsga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nLiBRdSZ5YWN1dGU7IGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyB2dWkgbCZvZ3JhdmU7bmcgxJHhu41jIGLhuqNuICZsZHF1bztDaCZpYWN1dGU7bmggcyZhYWN1dGU7Y2ggYuG6o28gbeG6rXQgdGgmb2NpcmM7bmcgdGluJnJkcXVvOyBkxrDhu5tpIMSRJmFjaXJjO3kgxJHhu4MgaGnhu4N1IGjGoW4gbmjhu69uZyBjYW0ga+G6v3QgbSZhZ3JhdmU7IGNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgdGjhu7FjIGhp4buHbiwgbmjhurFtIHQmb2NpcmM7biB0cuG7jW5nIHYmYWdyYXZlOyBi4bqjbyB24buHIHF1eeG7gW4gbOG7o2kgY+G7p2EgbmfGsOG7nWkgdHJ1eSBj4bqtcDo8L3A+DQoNCjxoMj48c3BhbiBzdHlsZT0iY29sb3I6I2U2N2UyMiI+PHN0cm9uZz5N4bukQyDEkCZJYWN1dGU7Q0ggViZBZ3JhdmU7IFBI4bqgTSBWSSBUSFUgVEjhuqxQIFRIJk9jaXJjO05HIFRJTjwvc3Ryb25nPjwvc3Bhbj48L2gyPg0KDQo8cD5DaGVja3NjYW0gdGh1IHRo4bqtcCB2JmFncmF2ZTsgc+G7rSBk4bulbmcgdGgmb2NpcmM7bmcgdGluIGMmYWFjdXRlOyBuaCZhY2lyYztuIFF1JnlhY3V0ZTsga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIHbhu5tpIG3hu6VjIMSRJmlhY3V0ZTtjaCBwaCZ1Z3JhdmU7IGjhu6NwIHYmYWdyYXZlOyBobyZhZ3JhdmU7biB0byZhZ3JhdmU7biB0dSZhY2lyYztuIHRo4bunIG7hu5lpIGR1bmcgY+G7p2EgJmxkcXVvO0NoJmlhY3V0ZTtuaCBzJmFhY3V0ZTtjaCBi4bqjbyBt4bqtdCZyZHF1bzsgbiZhZ3JhdmU7eS4gS2hpIGPhuqduIHRoaeG6v3QsIGNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgYyZvYWN1dGU7IHRo4buDIHPhu60gZOG7pW5nIG5o4buvbmcgdGgmb2NpcmM7bmcgdGluIG4mYWdyYXZlO3kgxJHhu4MgbGkmZWNpcmM7biBo4buHIHRy4buxYyB0aeG6v3AgduG7m2kgUXUmeWFjdXRlOyBraCZhYWN1dGU7Y2ggaCZhZ3JhdmU7bmcgZMaw4bubaSBjJmFhY3V0ZTtjIGgmaWdyYXZlO25oIHRo4bupYyBuaMawOiBn4butaSB0aMawLCBn4butaSBoJm9hY3V0ZTthIMSRxqFuLCBn4butaSB0aCZvY2lyYztuZyB0aW4gZOG7i2NoIHbhu6UuLi48L3A+DQoNCjxwPsSQ4buDIHRydXkgY+G6rXAgdiZhZ3JhdmU7IHPhu60gZOG7pW5nIG3hu5l0IHPhu5EgZOG7i2NoIHbhu6UgdOG6oWkgQ2hlY2tzY2FtLCBRdSZ5YWN1dGU7IGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyBjJm9hY3V0ZTsgdGjhu4Mgc+G6vSDEkcaw4bujYyB5JmVjaXJjO3UgY+G6p3UgxJHEg25nIGsmeWFjdXRlOyB24bubaSBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpIHRoJm9jaXJjO25nIHRpbiBjJmFhY3V0ZTsgbmgmYWNpcmM7biAoRW1haWwsIEjhu40gdCZlY2lyYztuLCBT4buRIMSRaeG7h24gdGhv4bqhaSwgQ0NDRCZoZWxsaXA7KS4gTeG7jWkgdGgmb2NpcmM7bmcgdGluIGtoYWkgYiZhYWN1dGU7byBwaOG6o2kgxJHhuqNtIGLhuqNvIHQmaWFjdXRlO25oIGNoJmlhY3V0ZTtuaCB4JmFhY3V0ZTtjIHYmYWdyYXZlOyBo4bujcCBwaCZhYWN1dGU7cC4gQ2hlY2tzY2FtIG1p4buFbiB0cuG7qyBt4buNaSB0ciZhYWN1dGU7Y2ggbmhp4buHbSBsaSZlY2lyYztuIHF1YW4gxJHhur9uIHBoJmFhY3V0ZTtwIGx14bqtdCBj4bunYSB0aCZvY2lyYztuZyB0aW4gZG8ga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIGtoYWkgYiZhYWN1dGU7by48L3A+DQoNCjxwPkNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgY8WpbmcgYyZvYWN1dGU7IHRo4buDIHRodSB0aOG6rXAgdGgmb2NpcmM7bmcgdGluIHbhu4Egc+G7kSBs4bqnbiB2aeG6v25nIHRoxINtLCBiYW8gZ+G7k20gc+G7kSB0cmFuZyBRdSZ5YWN1dGU7IGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyB4ZW0sIHPhu5EgbGlua3MgKGxpJmVjaXJjO24ga+G6v3QpIFF1JnlhY3V0ZTsga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIGNsaWNrIHYmYWdyYXZlOyBuaOG7r25nIHRoJm9jaXJjO25nIHRpbiBraCZhYWN1dGU7YyBsaSZlY2lyYztuIHF1YW4gxJHhur9uIHZp4buHYyBr4bq/dCBu4buRaSDEkeG6v24gc2l0ZSBDaGVja3NjYW0uIENoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgY8WpbmcgdGh1IHRo4bqtcCBjJmFhY3V0ZTtjIHRoJm9jaXJjO25nIHRpbiBtJmFncmF2ZTsgdHImaWdyYXZlO25oIGR1eeG7h3QgV2ViIChCcm93c2VyKSBRdSZ5YWN1dGU7IGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyBz4butIGThu6VuZyBt4buXaSBraGkgdHJ1eSBj4bqtcCB2JmFncmF2ZTtvIENoZWNrc2NhbSwgYmFvIGfhu5NtOiDEkeG7i2EgY2jhu4kgSVAsIGxv4bqhaSBCcm93c2VyLCBuZyZvY2lyYztuIG5n4buvIHPhu60gZOG7pW5nLCB0aOG7nWkgZ2lhbiB2JmFncmF2ZTsgbmjhu69uZyDEkeG7i2EgY2jhu4kgbSZhZ3JhdmU7IEJyb3dzZXIgdHJ1eSB4deG6pXQgxJHhur9uLjwvcD4NCg0KPGgyPjxzcGFuIHN0eWxlPSJjb2xvcjojZTY3ZTIyIj48c3Ryb25nPlBI4bqgTSBWSSBT4busIEThu6RORyBUSCZPY2lyYztORyBUSU48L3N0cm9uZz48L3NwYW4+PC9oMj4NCg0KPHA+PGVtPkNoZWNrc2NhbSBz4butIGThu6VuZyB0aCZvY2lyYztuZyB0aW4gY+G7p2EgUXUmeWFjdXRlOyBraCZhYWN1dGU7Y2ggaCZhZ3JhdmU7bmcgY3VuZyBj4bqlcCDEkeG7gzo8L2VtPjwvcD4NCg0KPG9sPg0KCTxsaT5DdW5nIGPhuqVwIGMmYWFjdXRlO2Mgc+G6o24gcGjhuqltLCBk4buLY2ggduG7pSDEkeG6v24ga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nPC9saT4NCgk8bGk+R+G7rWkgYyZhYWN1dGU7YyB0aCZvY2lyYztuZyBiJmFhY3V0ZTtvIHbhu4EgYyZhYWN1dGU7YyBob+G6oXQgxJHhu5luZyB0cmFvIMSR4buVaSB0aCZvY2lyYztuZyB0aW4gZ2nhu69hIGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyB2JmFncmF2ZTsgQ2hlY2tzY2FtLjwvbGk+DQoJPGxpPkxpJmVjaXJjO24gbOG6oWMgdiZhZ3JhdmU7IGdp4bqjaSBxdXnhur90IHbhu5tpIGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyB0cm9uZyBuaOG7r25nIHRyxrDhu51uZyBo4bujcCDEkeG6t2MgYmnhu4d0LjwvbGk+DQoJPGxpPlRyaeG7g24ga2hhaSBjJmFhY3V0ZTtjIGNoaeG6v24gZOG7i2NoIHF14bqjbmcgYyZhYWN1dGU7bzwvbGk+DQo8L29sPg0KDQo8aDI+PHNwYW4gc3R5bGU9ImNvbG9yOiNlNjdlMjIiPjxzdHJvbmc+VEjhu5xJIEdJQU4gTMavVSBUUuG7riBUSCZPY2lyYztORyBUSU48L3N0cm9uZz48L3NwYW4+PC9oMj4NCg0KPHA+ROG7ryBsaeG7h3UgYyZhYWN1dGU7IG5oJmFjaXJjO24gY+G7p2EgUXUmeWFjdXRlOyBraCZhYWN1dGU7Y2ggaCZhZ3JhdmU7bmcgc+G6vSDEkcaw4bujYyBsxrB1IHRy4buvIGNobyDEkeG6v24ga2hpIGNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgdOG7sSBo4buneSBi4buPIGhv4bq3YyBjJm9hY3V0ZTsgeSZlY2lyYzt1IGPhuqd1IGjhu6d5IGLhu48gYuG6sW5nIHbEg24gYuG6o24gdOG7qyBxdSZ5YWN1dGU7IGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZy4gQyZvZ3JhdmU7biBs4bqhaSB0cm9uZyBt4buNaSB0csaw4budbmcgaOG7o3AgdGgmb2NpcmM7bmcgdGluIGMmYWFjdXRlOyBuaCZhY2lyYztuIGPhu6dhIFF1JnlhY3V0ZTsga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIHPhur0gxJHGsOG7o2MgYuG6o28gbeG6rXQgdHImZWNpcmM7biBtJmFhY3V0ZTt5IGNo4bunIGPhu6dhIENoZWNrc2NhbS48L3A+DQoNCjxoMj48c3BhbiBzdHlsZT0iY29sb3I6I2U2N2UyMiI+PHN0cm9uZz5DQU0gS+G6vlQgQuG6ok8gTeG6rFQgVEgmT2NpcmM7TkcgVElOIEMmQWFjdXRlOyBOSCZBY2lyYztOPC9zdHJvbmc+PC9zcGFuPjwvaDI+DQoNCjxwPkNoZWNrc2NhbSBjYW0ga+G6v3QgYuG6o28gbeG6rXQgdGgmb2NpcmM7bmcgdGluIGMmYWFjdXRlOyBuaCZhY2lyYztuIGPhu6dhIFF1JnlhY3V0ZTsga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIGLhurFuZyBt4buNaSBjJmFhY3V0ZTtjaCB0aOG7qWMgYyZvYWN1dGU7IHRo4buDLiBDaCZ1YWN1dGU7bmcgdCZvY2lyYztpIHPhur0gc+G7rSBk4bulbmcgbmhp4buBdSBjJm9jaXJjO25nIG5naOG7hyBi4bqjbyBt4bqtdCB0aCZvY2lyYztuZyB0aW4ga2gmYWFjdXRlO2MgbmhhdSBuaOG6sW0gYuG6o28gduG7hyB0aCZvY2lyYztuZyB0aW4gbiZhZ3JhdmU7eSBraCZvY2lyYztuZyBi4buLIHRydXkgbOG7pWMsIHPhu60gZOG7pW5nIGhv4bq3YyB0aeG6v3QgbOG7mSBuZ28mYWdyYXZlO2kgJnlhY3V0ZTsgbXXhu5FuLjwvcD4NCg0KPHA+Q2hlY2tzY2FtIGtodXnhur9uIGMmYWFjdXRlO28gUXUmeWFjdXRlOyBraCZhYWN1dGU7Y2ggaCZhZ3JhdmU7bmcgbiZlY2lyYztuIGLhuqNvIG3huq10IGMmYWFjdXRlO2MgdGgmb2NpcmM7bmcgdGluIGxpJmVjaXJjO24gcXVhbiDEkeG6v24gbeG6rXQga2jhuql1IHRydXkgeHXhuqV0IGPhu6dhIFF1JnlhY3V0ZTsga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIHYmYWdyYXZlOyBraCZvY2lyYztuZyBuJmVjaXJjO24gY2hpYSBz4bq7IHbhu5tpIGLhuqV0IGvhu7MgbmfGsOG7nWkgbiZhZ3JhdmU7byBraCZhYWN1dGU7Yy4gTuG6v3Ugc+G7rSBk4bulbmcgbSZhYWN1dGU7eSB0JmlhY3V0ZTtuaCBjaHVuZyBuaGnhu4F1IG5nxrDhu51pLCBRdSZ5YWN1dGU7IGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyBuJmVjaXJjO24gxJHEg25nIHh14bqldCwgaG/hurdjIHRobyZhYWN1dGU7dCBo4bq/dCB04bqldCBj4bqjIGPhu61hIHPhu5UgV2Vic2l0ZSDEkWFuZyBt4bufLjwvcD4NCg0KPGgyPjxzcGFuIHN0eWxlPSJjb2xvcjojZTY3ZTIyIj48c3Ryb25nPk5I4buuTkcgTkfGr+G7nEkgSE/hurZDIFThu5QgQ0jhu6hDIEMmT2FjdXRlOyBUSOG7giDEkMav4buiQyBUSeG6vlAgQ+G6rE4gVuG7mkkgVEgmT2NpcmM7TkcgVElOPC9zdHJvbmc+PC9zcGFuPjwvaDI+DQoNCjxoMz48c3Ryb25nPjE6IMSQ4buRaSB0JmFhY3V0ZTtjIHF14bqjbmcgYyZhYWN1dGU7bzwvc3Ryb25nPjwvaDM+DQoNCjxwPkNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgYyZvYWN1dGU7IHRo4buDIGNoaWEgc+G6uyB0JmVjaXJjO24sIMSR4buLYSBjaOG7iSBuaOG6rW4gdGjGsCBj4bunYSBxdSZ5YWN1dGU7IGtoJmFhY3V0ZTtjaCB24bubaSBt4buZdCB2JmFncmF2ZTtpIMSR4buRaSB0JmFhY3V0ZTtjIHF14bqjbmcgYyZhYWN1dGU7byDEkcaw4bujYyBjaOG7jW4gbOG7jWMga+G7uSBjJmFncmF2ZTtuZywgbmjhu69uZyDEkeG7kWkgdCZhYWN1dGU7YyBtJmFncmF2ZTsgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSB0aW4gbCZhZ3JhdmU7IHPhuqNuIHBo4bqpbSBoYXkgZOG7i2NoIHbhu6UgY+G7p2EgaOG7jSBjJm9hY3V0ZTsgdGjhu4MgaOG7r3UgJmlhY3V0ZTtjaCB24bubaSBi4bqhbi48L3A+DQoNCjxwPkNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kga2gmb2NpcmM7bmcgYmFvIGdp4budIGNoaWEgc+G6uyB0aCZvY2lyYztuZyB0aW4gdGjhursgdCZpYWN1dGU7biBk4bulbmcsIG5o4buvbmcgdGgmb2NpcmM7bmcgdGluIGMmYWFjdXRlOyBuaCZhY2lyYztuIG5o4bqheSBj4bqjbSBtJmFncmF2ZTsgYuG6oW4gxJEmYXRpbGRlOyBjdW5nIGPhuqVwIGNobyBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpIHbhu5tpIGLhuqV0IGvhu7MgbeG7mXQgxJHhu5FpIHQmYWFjdXRlO2MgdGnhur9wIHRo4buLIHF14bqjbmcgYyZhYWN1dGU7byBuJmFncmF2ZTtvLjwvcD4NCg0KPGgzPjxzdHJvbmc+MjogQyZvY2lyYztuZyB0eSBnaWFvIHbhuq1uPC9zdHJvbmc+PC9oMz4NCg0KPHA+TuG6v3UgYuG6oW4gdGjhu7FjIGhp4buHbiBtdWEgaCZhZ3JhdmU7bmcgb25saW5lLCBob+G6t2MgduG6rW4gY2h1eeG7g24gaOG7o3AgxJHhu5NuZywgZ2nhuqV5IHThu50sIGNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgc+G6vSBjdW5nIGPhuqVwIGNobyDEkeG7kWkgdCZhYWN1dGU7YyBnaWFvLCBuaOG6rW4gY+G7p2EgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSB0JmVjaXJjO24sIHPhu5EgxJFp4buHbiB0aG/huqFpIHYmYWdyYXZlOyB0aCZvY2lyYztuZyB0aW4gZ2lhbywgbmjhuq1uIGPhu6dhIGLhuqFuIMSR4buDIHRo4buxYyBoaeG7h24gY2h1eeG7g24gaCZhZ3JhdmU7bmcgaCZvYWN1dGU7YSDEkeG6v24gYuG6oW4gbSZhZ3JhdmU7IGtoJm9jaXJjO25nIHYmaWdyYXZlOyBt4bulYyDEkSZpYWN1dGU7Y2ggZyZpZ3JhdmU7IGtoJmFhY3V0ZTtjLjwvcD4NCg0KPGgzPjxzdHJvbmc+MzogVGjhu7FjIHRoaSBwaCZhYWN1dGU7cCBsdeG6rXQ8L3N0cm9uZz48L2gzPg0KDQo8cD5Ucm9uZyBwaOG6oW0gdmkgbHXhuq10IHBoJmFhY3V0ZTtwIGNobyBwaCZlYWN1dGU7cCwgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSBz4bq9IHRp4bq/dCBs4buZIG5o4buvbmcgdGgmb2NpcmM7bmcgdGluIGMmYWFjdXRlOyBuaCZhY2lyYztuIGPhu6dhIGLhuqFuIGNobyBjJmFhY3V0ZTtjIGPGoSBxdWFuIGNoJmlhY3V0ZTtuaCBwaOG7pyBob+G6t2MgYyZhYWN1dGU7YyBiJmVjaXJjO24gdGjhu6kgYmEgdGhlbyB5JmVjaXJjO3UgY+G6p3UgcGgmYWFjdXRlO3AgbCZ5YWN1dGU7LiBDaCZ1YWN1dGU7bmcgdCZvY2lyYztpIGPFqW5nIGMmb2FjdXRlOyB0aOG7gyBz4butIGThu6VuZyBob+G6t2MgY3VuZyBj4bqlcCB0aCZvY2lyYztuZyB0aW4gY+G7p2EgYuG6oW4gdGhlbyBwaCZhYWN1dGU7cCBsdeG6rXQgxJHhu4MgdGjhu7FjIGhp4buHbiB0aOG6qW0gxJHhu4tuaCBwaCZpYWN1dGU7LCBiJmFhY3V0ZTtvIGMmYWFjdXRlO28gaG/hurdjIHRodSBu4bujLCBjaOG7kW5nIGzhuqFpIG5o4buvbmcgc+G7sSBnaWFuIGzhuq1uIGhv4bq3YyBi4bqjbyB24buHIHF1eeG7gW4gbOG7o2kgY+G7p2EgY2gmdWFjdXRlO25nIHQmb2NpcmM7aSBjxaluZyBuaMawIGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyBj4bunYSBjaCZ1YWN1dGU7bmcgdCZvY2lyYztpLCBob+G6t2MgbmfGsOG7nWkgc+G7rSBk4bulbmcuPC9wPg0KDQo8aDI+PHNwYW4gc3R5bGU9ImNvbG9yOiNlNjdlMjIiPjxzdHJvbmc+TkfEgk4gQ0jhurZOIFZJ4buGQyBDSElBIFPhurogVEgmT2NpcmM7TkcgVElOPC9zdHJvbmc+PC9zcGFuPjwvaDI+DQoNCjxwPkNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgYyZvYWN1dGU7IHRo4buDIGNoaWEgc+G6uyBjJmFhY3V0ZTtjIHRoJm9jaXJjO25nIHRpbiBjJmFhY3V0ZTsgbmgmYWNpcmM7biBj4bunYSBi4bqhbiBjaG8gbmjhu69uZyDEkeG7kWkgdMaw4bujbmcgdHJvbmcgcGjhuqduICZsZHF1bztOaOG7r25nIG5nxrDhu51pIGhv4bq3YyB04buVIGNo4bupYyBjJm9hY3V0ZTsgdGjhu4MgxJHGsOG7o2MgdGnhur9wIGPhuq1uIHbhu5tpIHRoJm9jaXJjO25nIHRpbiZyZHF1bzsgcGgmaWFjdXRlO2EgdHImZWNpcmM7bi48L3A+DQoNCjxwPkNoJnVhY3V0ZTtuZyB0Jm9jaXJjO2kgY8WpbmcgYyZvYWN1dGU7IHRvJmFncmF2ZTtuIHF1eeG7gW4gY2hpYSBz4bq7IGMmYWFjdXRlO2MgaCZpZ3JhdmU7bmgg4bqjbmgsIGNsaXAgduG7gSBk4buLY2ggduG7pSwgc+G6o24gcGjhuqltIMSRJmF0aWxkZTsgdGjhu7FjIGhp4buHbiBjaG8ga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIG5o4bqxbSBt4bulYyDEkSZpYWN1dGU7Y2ggcXXhuqNuZyBiJmFhY3V0ZTssIGdp4bubaSB0aGnhu4d1IHRoxrDGoW5nIGhp4buHdSBj4bunYSBDaGVja3NjYW0uPC9wPg0KDQo8cD5UdXkgbmhpJmVjaXJjO24ga2gmYWFjdXRlO2NoIGgmYWdyYXZlO25nIGMmb2FjdXRlOyBxdXnhu4FuIHkmZWNpcmM7dSBj4bqndSBuZ8awbmcgdmnhu4djIGNoaWEgc+G6uyBuJmFncmF2ZTt5IHYmYWdyYXZlOyB4Jm9hY3V0ZTthIGLhu48gdGgmb2NpcmM7bmcgdGluIGPhu6dhIG0maWdyYXZlO25oIGto4buPaSBo4buHIHRo4buRbmcgbMawdSB0cuG7ryBj4bunYSBDaGVja3NjYW0gYuG6pXQgY+G7qSB0aOG7nWkgxJFp4buDbSBuJmFncmF2ZTtvIGLhurFuZyBoJmlncmF2ZTtuaCB0aOG7qWMgZ+G7rWkgdsSDbiBi4bqjbiB5JmVjaXJjO3UgY+G6p3UuPGJyIC8+DQombmJzcDs8L3A+DQo=', '', 'bao-mat-thong-tin', 0, 0, 'hoantat', '2024-10-05');
INSERT INTO `news` (`id`, `tieude`, `noidung`, `image_news`, `link`, `luotxem`, `home`, `status`, `ngaydang`) VALUES
(11, 'Các gói bảo hiểm', 'PGgyPjxzcGFuIHN0eWxlPSJjb2xvcjojZTY3ZTIyIj48c3Ryb25nPkMmQWFjdXRlO0MgRyZPYWN1dGU7SSBC4bqiTyBISeG7gk0gVOG6oEkgQ0hFQ0tTQ0FNPC9zdHJvbmc+PC9zcGFuPjwvaDI+DQoNCjxwPlF14bu5IGLhuqNvIGhp4buDbSBDUyBsJmFncmF2ZTsgc+G7kSB0aeG7gW4gbSZhZ3JhdmU7IGMmYWFjdXRlO2MgxJHhuqFpIGwmeWFjdXRlOywgZ2lhbyBk4buLY2ggdmkmZWNpcmM7biwgdGgmYWdyYXZlO25oIHZpJmVjaXJjO24gbuG6oXAgdiZhZ3JhdmU7byBz4buRIHQmYWdyYXZlO2kga2hv4bqjbiBi4bqjbyBsJmF0aWxkZTtuaCBj4bunYSBjaGVjc2NhbS5jb20gxJHhu4MgxJHhuqNtIGLhuqNvIGdpYW8gZOG7i2NoIMSRxrDhu6NjIHRo4buxYyBoaeG7h24gdHJvbmcgcGjhuqFtIHZpIGjhuqFuIG3hu6ljIGLhuqNvIGwmYXRpbGRlO25oLjwvcD4NCg0KPGgzPjxzdHJvbmc+QyZhYWN1dGU7YyBnJm9hY3V0ZTtpIGLhuqNvIGhp4buDbSB04bqhaSBjaGVjc2NhbSBiYW8gZ+G7k208L3N0cm9uZz48L2gzPg0KDQo8dWw+DQoJPGxpPkcmb2FjdXRlO2kgxJHhu5NuZzogMTAwLjAwMCAoIE3hu5l0IHRyxINtIG5naCZpZ3JhdmU7biZuYnNwO8SR4buTbmcgKTwvbGk+DQoJPGxpPkcmb2FjdXRlO2kgYuG6oWM6IDMwMC4wMDAgKCBCYXRyxINtIG5naCZpZ3JhdmU7biZuYnNwO8SR4buTbmcgKTwvbGk+DQoJPGxpPkcmb2FjdXRlO2kgdiZhZ3JhdmU7bmc6IDUwMC4wMDAgKCBOxINtJm5ic3A7dHLEg20gbmdoJmlncmF2ZTtuJm5ic3A7xJHhu5NuZyApPC9saT4NCgk8bGk+RyZvYWN1dGU7aSBraW0gY8awxqFuZzogMS4wMDAuMDAwICggTeG7mXQmbmJzcDt0cmnhu4d1IMSR4buTbmcgKTwvbGk+DQo8L3VsPg0KDQo8cD5RdXkgdHImaWdyYXZlO25oIG7huqFwIGcmb2FjdXRlO2kgJm5kYXNoOyBRdXkgdHImaWdyYXZlO25oIGhvJmFncmF2ZTtuIHRp4buBbiBnJm9hY3V0ZTtpIHZ1aSBsJm9ncmF2ZTtuZyB4ZW0gdOG6oWk6IELhuqNuZyBxdXkgxJHhu4tuaCB0aGFuaCB0byZhYWN1dGU7biB2JmFncmF2ZTsgaG8mYWdyYXZlO24gdGnhu4FuOiA8YSBocmVmPSIvcG9zdC90aGFuaC10b2FuLWhvYW4tdGllbi5odG1sIj48c3BhbiBzdHlsZT0iY29sb3I6IzM0OThkYiI+PHN0cm9uZz5U4bqgSSDEkCZBY2lyYztZPC9zdHJvbmc+PC9zcGFuPjwvYT48L3A+DQoNCjxoMj48c3BhbiBzdHlsZT0iY29sb3I6I2U2N2UyMiI+PHN0cm9uZz5DSCZJYWN1dGU7TkggUyZBYWN1dGU7Q0ggVCZJYWN1dGU7Q0ggxJBJ4buCTTwvc3Ryb25nPjwvc3Bhbj48L2gyPg0KDQo8cD5DaCZpYWN1dGU7bmggcyZhYWN1dGU7Y2ggdCZpYWN1dGU7Y2ggxJFp4buDbSBuJmFncmF2ZTt5IGQmYWdyYXZlO25oIGNobyB04bqldCBj4bqjIGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyBraGkgxJHEg25nIGsmeWFjdXRlOywgZ2lhIGjhuqFuLCBuJmFjaXJjO25nIGPhuqVwIHYmYWdyYXZlOyBz4butIGThu6VuZyBjJmFhY3V0ZTtjIGThu4tjaCB24bulIHThuqFpIGNoZWNzY2FtLmNvbS48L3A+DQoNCjxoMz48c3Ryb25nPlPhu5EgxJFp4buDbSB0JmlhY3V0ZTtjaCBsxal5IGMmb2FjdXRlOyDEkcaw4bujYyB24bubaSBjJmFhY3V0ZTtjIGhv4bqhdCDEkeG7mW5nIHNhdTwvc3Ryb25nPjwvaDM+DQoNCjx1bD4NCgk8bGk+VXNlciBt4bubaTogQ2jGsGEgYyZvYWN1dGU7IMSRaeG7g208L2xpPg0KCTxsaT7EkMSDbmcgYiZpZ3JhdmU7bmggbHXhuq1uOiAxxJE8L2xpPg0KCTxsaT7EkMSDbmcgc2NhbTogM8SRPC9saT4NCgk8bGk+VOG6oW8gZ2lhbyBk4buLY2g6IDXEkTwvbGk+DQoJPGxpPk7huqFwIHF14bu5IGcmb2FjdXRlO2kgxJHhu5NuZzogMjAwxJE8L2xpPg0KCTxsaT5O4bqhcCBxdeG7uSBnJm9hY3V0ZTtpIGLhuqFjOiAxMDAwxJE8L2xpPg0KCTxsaT5O4bqhcCBxdeG7uSBnJm9hY3V0ZTtpIHYmYWdyYXZlO25nOiAzMDAwxJE8L2xpPg0KCTxsaT5O4bqhcCBxdeG7uSBnJm9hY3V0ZTtpIGtpbSBjxrDGoW5nOiA1MDAwxJE8L2xpPg0KPC91bD4NCg0KPGgzPjxzdHJvbmc+U+G7kSDEkWnhu4NtIHQmaWFjdXRlO2NoIGzFqXkgc+G6vSDEkcaw4bujYyBxdXkgxJHhu5VpIHJhIHNhbyB1eSB0JmlhY3V0ZTtuJm5ic3A7dOG7sSDEkeG7mW5nIHRoZW8gYyZvY2lyYztuZyB0aOG7qWM8L3N0cm9uZz48L2gzPg0KDQo8dWw+DQoJPGxpPlThu6sgNTAgxJHhur9uIDE5OTogMSBzYW88L2xpPg0KCTxsaT4yMDAgxJHhur9uIDk5MDogMiBzYW88L2xpPg0KCTxsaT5U4burIDEwMDAgxJHhur9uIDI5OTk6IDMgc2FvPC9saT4NCgk8bGk+VOG7qyAzMDAwIMSR4bq/biA0OTk5OiA0IHNhbzwvbGk+DQoJPGxpPlThu6sgNTAwMCB0cuG7nyBsJmVjaXJjO246IDUgc2FvPC9saT4NCjwvdWw+DQoNCjxwPkzGsHUgJnlhY3V0ZTs6IMSQaeG7g20gdCZpYWN1dGU7Y2ggbHXhu7kga2gmb2NpcmM7bmcgYyZvYWN1dGU7IGdpJmFhY3V0ZTsgdHLhu4sgcXV5IMSR4buVaSB0aCZhZ3JhdmU7bmggdGnhu4FuIG3hurd0IGhv4bq3YyBjaHV54buDbiBzYW5nIHQmYWdyYXZlO2kga2hv4bqjbiBraCZhYWN1dGU7Yy48L3A+DQo=', '', 'cac-goi-bao-hiem', 3, 0, 'hoantat', '2024-10-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pack_baohiem`
--

CREATE TABLE `pack_baohiem` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `money` text NOT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `pack_baohiem`
--

INSERT INTO `pack_baohiem` (`id`, `name`, `money`, `image`, `status`) VALUES
(1, 'Gói Đồng', '100000', 'https://checkscam.com/storage/userfiles/images/bronze.png', 1),
(2, 'Gói Bạc', '300000', 'https://checkscam.com/storage/userfiles/images/silver.png', 1),
(3, 'Gói Vàng', '500000', 'https://checkscam.com/storage/userfiles/images/gold.png', 1),
(4, 'Gói Kim Cương', '1000000', 'https://checkscam.com/storage/userfiles/images/diamond.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'status_send_mail', '0'),
(2, 'title', 'DVR'),
(3, 'description', 'Hệ Thống checkscam uytin số 1 vn'),
(4, 'keywords', 'DVR'),
(5, 'author', 'DVR'),
(6, 'status_demo', '0'),
(7, 'status_noti', '0'),
(8, 'hotline', '0'),
(9, 'email', 'dvr@gmail.com'),
(10, 'email_smtp', 'cskh.dichvuright@gmail.com'),
(11, 'pass_email_smtp', 'vmixvephnscffxmx'),
(12, 'session_login', '1800'),
(13, 'min_recharge', '1000'),
(14, 'time_delete_invoices', '2592000'),
(15, 'notification', 'PHAgc3R5bGU9InRleHQtYWxpZ246Y2VudGVyIj48c3BhbiBzdHlsZT0iY29sb3I6I2U3NGMzYyI+PHN0cm9uZz5UJmlhY3V0ZTtuaCBOxINuZyDEkWFuZyBwaCZhYWN1dGU7dCB0cmnhu4NuPC9zdHJvbmc+PC9zcGFuPjwvcD4NCg=='),
(16, 'notications', 'ccc'),
(17, 'display_api_momo', '1'),
(18, 'limit_api_momo', '3'),
(19, 'money_api_momo', '10000'),
(20, 'status_tsr', '1'),
(21, 'token_tsr', 'LPtZqBUEcuXD-XUPEFd-tEgW-ZAnJ-kCeG'),
(22, 'status_momo', '1'),
(23, 'token_momo', '38435906-5322-4085-884a-dc6f45d6d667'),
(24, 'time_test_api', '86400'),
(25, 'noidungnap_momo', 'DVR '),
(26, 'link_facebook', 'https://facebook.com/dichvuright'),
(27, 'link_zalo', 'https://zalo.me/0978009289'),
(28, 'logo', 'https://imgur.com/gjxIHFD.png'),
(29, 'anhbia', 'https://imgur.com/gjxIHFD.png'),
(30, 'favicon', 'https://imgur.com/RY1lKTp.png'),
(31, 'token_telegram', '7430660240:AAE0KkT9QMbADcI_EqWmcOF87Wfx0a-6Lj0'),
(32, 'chat_id_telegram', '6276536456'),
(33, 'color', '#ff0000'),
(34, 'sdcolor', '#e24a08'),
(35, 'linktele', 'https://t.me/kiemtragdv'),
(36, 'site_ten', 'DVR'),
(37, 'display_api_thesieure', '1'),
(38, 'limit_api_thesieure', '3'),
(39, 'money_api_thesieure', '10000'),
(40, 'display_api_tpbank', '1'),
(41, 'limit_api_tpbank', '3'),
(42, 'money_api_tpbank', '10000'),
(43, 'display_api_mbbank', '1'),
(44, 'limit_api_mbbank', '3'),
(45, 'money_api_mbbank', '10000'),
(46, 'api_ecaptcha', '66d2e80be2a17de918596ed948212703'),
(48, 'api_card', 'z3skgqfmt146iunhyc7ajw2lbodxre8v9p5'),
(49, 'ck_card', '20'),
(50, 'max_time_buy', '60'),
(51, 'address', 'VietNam'),
(52, 'token_bot_2', '7430660240:AAE0KkT9QMbADcI_EqWmcOF87Wfx0a-6Lj0'),
(53, 'ck_cron', '10'),
(54, 'lai_cron', '2'),
(55, 'ck_user', '50'),
(56, 'key_ban_quyen', 'c86ddbdcb20eb53413e3a7d161df48df'),
(57, 'javascript_header', ''),
(58, 'dieukhoan', 'PHA+Jm5ic3A7PC9wPg0KDQo8cD4mbmJzcDs8L3A+DQoNCjxwPiZuYnNwOzwvcD4NCg0KPHA+Jm5ic3A7PC9wPg0KDQo8cD4mbmJzcDs8L3A+DQoNCjxwPiZuYnNwOzwvcD4NCg0KPGgxPiZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwO8SQSeG7gFUgS0hP4bqiTjwvaDE+DQoNCjxoMz48c3Ryb25nPjEuIFF14bu5IELhuqNvIEhp4buDbSA8IS0tPz0kc2l0ZV90ZW53ZWI7Py0tPjwvc3Ryb25nPjwvaDM+DQoNCjx1bD4NCgk8bGk+DQoJPHA+PHN0cm9uZz5OaCZvYWN1dGU7bSBHRFYgR0RURyBi4bqjbyBoaeG7g20gdOG7qyA1MDAuMDAwxJEgdHLhu58gbCZlY2lyYztuIHBoJmlhY3V0ZTsgZHV5IHRyJmlncmF2ZTsga2gmb2NpcmM7bmcgcGgmYWFjdXRlO3Qgc2luaCAsIHPhu5EgbMaw4bujbmcgdHV54buDbiBnaeG7m2kgaOG6oW4gLjwvc3Ryb25nPjwvcD4NCgk8L2xpPg0KCTxsaT48c3Ryb25nPk5oJm9hY3V0ZTttIGMmYWFjdXRlO2MgZOG7i2NoIHbhu6UgVHJ1bmcgR2lhbiBz4buRIGzGsOG7o25nIG5oaeG7gXUgdHJvbmcgbmcmYWdyYXZlO3kgLSDEkOG7lWkgVGnhu4FuICwgY3VuZyBj4bqlcCBjJmFhY3V0ZTtjIGThu4tjaCB24bulIE11YSBCJmFhY3V0ZTtuJm5ic3A7IFBoJmlhY3V0ZTsgdOG6oW8gbGluayBCSCAxMGsvMWxpbms8L3N0cm9uZz4mbmJzcDtDJmFhY3V0ZTtjIHRoJmFhY3V0ZTtuZyB24buBIHNhdSBz4bq9IGtoJm9jaXJjO25nIHBo4bqjaSDEkSZvYWN1dGU7bmcgdGgmZWNpcmM7bSBi4bqldCBr4buzIG3hu5l0IGtob+G6o24gcGgmaWFjdXRlOyBkdiBuJmFncmF2ZTtvIG7hu69hLiBUaW1lIGNhbSBr4bq/dCBkdXkgdHImaWdyYXZlOyBCSCBsJmFncmF2ZTsgNSB0aCZhYWN1dGU7bmcgKHImdWFjdXRlO3QgdHLGsOG7m2MgNSB0aCZhYWN1dGU7bmcgLTgwJSwgciZ1YWN1dGU7dCBzYXUgNSB0aCZhYWN1dGU7bmcgaG8mYWdyYXZlO24gMTAwJSkuIHRoYXkgxJHhu5VpIHRoJm9jaXJjO25nIHRpbiB0cm9uZyBsaW5rIEJIIHBoJmlhY3V0ZTs8c3Ryb25nPiZuYnNwOzEwLjAwMMSRLzEgbOG6p24gdXBkYXRlPC9zdHJvbmc+PC9saT4NCgk8bGk+PHN0cm9uZz7EkGnhu4F1IGtp4buHbiDEkeG7gyDEkcaw4bujYyB0aGFtIGdpYSBCSDwvc3Ryb25nPg0KCTx1bD4NCgkJPGxpPkLhuqFuIHBo4bqjaSBsJmFncmF2ZTsgbmfGsOG7nWkgYyZvYWN1dGU7IGtpbmggbmdoaeG7h20gbCZhZ3JhdmU7bSBuZ2jhu4EsIGMmb2FjdXRlOyB1eSB0JmlhY3V0ZTtuIHRyb25nIGdyLCBj4buZbmcgxJHhu5NuZywgZmFuPC9saT4NCgkJPGxpPkLhuqFuIHBo4bqjaSBjaMawYSB04burbmcgYuG7iyBwaOG7kXQgdHImZWNpcmM7biBj4buZbmcgxJHhu5NuZyBt4bqhbmcgduG7gSBi4bqldCBj4bupIGgmaWdyYXZlO25oIHRo4bupYyBsaSZlY2lyYztuIHF1YW4gxJHhur9uIHRp4buBbiBz4butIMSRJmF0aWxkZTsgdOG7q25nIHNjYW0mbmJzcDs8L2xpPg0KCTwvdWw+DQoJPC9saT4NCgk8bGk+PHN0cm9uZz7EkCZvYWN1dGU7bmcgQkggYuG6oW4gY+G6p24gY3VuZyBj4bqlcCBuaOG7r25nIHRoJm9jaXJjO25nIHRpbiBzYXU6PC9zdHJvbmc+PC9saT4NCjwvdWw+DQoNCjx1bD4NCgk8bGk+DQoJPHVsPg0KCQk8bGk+MSDhuqNuaCBDTU5ELCBjxINuIGPGsOG7m2MgbeG6t3QgdHLGsOG7m2MsIHNhdSAociZvdGlsZGU7IG4mZWFjdXRlO3QpPC9saT4NCgkJPGxpPlZpZGVvIDVzIHF1YXkgbeG6t3QsIHRheSBj4bqnbSBjbW5kIChyJm90aWxkZTsgbiZlYWN1dGU7dCk8L2xpPg0KCQk8bGk+xJDhu4thIGNo4buJIHRoxrDhu51uZyB0ciZ1YWN1dGU7PC9saT4NCgkJPGxpPjEg4bqjbmggxJHhuqFpIGRp4buHbjwvbGk+DQoJCTxsaT4xIOG6o25oIGImaWdyYXZlO2E8L2xpPg0KCQk8bGk+WmFsbywgU8SQVDwvbGk+DQoJCTxsaT5JRCBGYWNlYm9vazwvbGk+DQoJCTxsaT5DJmFhY3V0ZTtjIERWIGN1bmcgY+G6pXA8L2xpPg0KCQk8bGk+QyZhYWN1dGU7YyBTVEsgxJFhbmcgc+G7rSBk4bulbmc8L2xpPg0KCQk8bGk+TuG6v3UgYuG6oW4gxJHhu6cgxJFp4buBdSBraeG7h24gbGkmZWNpcmM7biBo4buHIGdkdm1tbzI0aC5pbmZvPGEgaHJlZj0iaHR0cHM6Ly9nZHZtbW8yNGguaW5mbyI+IHThuqFpIMSRJmFjaXJjO3k8L2E+PC9saT4NCgk8L3VsPg0KCTwvbGk+DQoJPGxpPjxzdHJvbmc+TmdoaSZlY2lyYzttIGPhuqVtPC9zdHJvbmc+Jm5ic3A7dmnhu4djJm5ic3A7PHN0cm9uZz5s4bujaSBk4bulbmcgdXkgdCZpYWN1dGU7biBCSCBBZG1pbjwvc3Ryb25nPiZuYnNwO8SR4buDIG3hu58gd2ViIGsmZWNpcmM7dSBn4buNaSZuYnNwOzxzdHJvbmc+xJEmb2FjdXRlO25nIGcmb2FjdXRlO3AsIHRodSBj4buNYywgYuG6o28gaGnhu4NtLCBRL2M8L3N0cm9uZz4mbmJzcDtuaOG7r25nIGR2IHZpIHBo4bqhbSBwaCZhYWN1dGU7cCBsdeG6rXQmbmJzcDs8L2xpPg0KCTxsaT48c3Ryb25nPkdEVk1NTzI0SCB4aW4gdOG7qyBjaOG7kWkgYuG6o28gaGnhu4NtICZhbXA7Jm5ic3A7PC9zdHJvbmc+PHN0cm9uZz5raCZvY2lyYztuZyBi4bqjbyBoaeG7g208L3N0cm9uZz4mbmJzcDtjaG8gbmjhu69uZyZuYnNwOzxzdHJvbmc+ZOG7i2NoIHbhu6UgdmkgcGjhuqFtIHBoJmFhY3V0ZTtwIGx14bqtdC4mbmJzcDs8L3N0cm9uZz5DJmFhY3V0ZTtjIGLhuqFuIHPhur0gcGjhuqNpIHThu7EgY2jhu4t1IHRyJmFhY3V0ZTtjaCBuaGnhu4dtIHbhu5tpIG5o4buvbmcgdGhp4buHdCBo4bqhaSBu4bq/dSBj4buRIHQmaWdyYXZlO25oIHRoYW0gZ2lhIG11YSBiJmFhY3V0ZTtuIGdpYW8gZOG7i2NoLCBz4butIGThu6VuZyBuaOG7r25nIGThu4tjaCB24bulIHZpIHBo4bqhbSBwaCZhYWN1dGU7cCBsdeG6rXQ8L2xpPg0KCTxsaT48c3Ryb25nPlF14bu5IGLhuqNvIGhp4buDbSZuYnNwOzwvc3Ryb25nPnPhur0gZCZ1Z3JhdmU7bmcgxJHhu4MmbmJzcDs8c3Ryb25nPmNhbSBr4bq/dDwvc3Ryb25nPiZuYnNwOzxzdHJvbmc+dXkgdCZpYWN1dGU7biwgdOG6oW8gbmnhu4FtIHRpbjwvc3Ryb25nPiZuYnNwO3bhu5tpIGtoJmFhY3V0ZTtjaCBoJmFncmF2ZTtuZyBjaG8mbmJzcDs8c3Ryb25nPmThu4tjaCB24bulIG0mYWdyYXZlOyBi4bqhbiDEkcSDbmcgayZ5YWN1dGU7PC9zdHJvbmc+LiBWJmFncmF2ZTsgZCZ1Z3JhdmU7bmcgxJHhu4MmbmJzcDs8c3Ryb25nPmhvJmFncmF2ZTtuIHRy4bqjIGNobyBraCZhYWN1dGU7Y2ggaCZhZ3JhdmU7bmcga2hpIGLhuqFuIGMmb2FjdXRlOyBk4bqldSBoaeG7h3UgU2NhbS48L3N0cm9uZz48L2xpPg0KCTxsaT48c3Ryb25nPlThuqFvIFF14bu5IELhuqNvIEhp4buDbSZuYnNwOzwvc3Ryb25nPsSR4buTbmcgbmdoxKlhIHbhu5tpIHZp4buHYyBi4bqhbiDEkeG7k25nICZ5YWN1dGU7ICZsZHF1bztraGkgYyZvYWN1dGU7IHbhuqVuIMSR4buBIHRyYW5oIGNo4bqlcCBz4bqjeSByYSBnaeG7r2EgJmxkcXVvOzxzdHJvbmc+TmfGsOG7nWkgYiZhYWN1dGU7biBk4buLY2ggduG7pTwvc3Ryb25nPiZyZHF1bzsgJmFtcDsgJmxkcXVvOzxzdHJvbmc+TmfGsOG7nWkgbXVhIGThu4tjaCB24bulPC9zdHJvbmc+JnJkcXVvOyB0ciZlY2lyYztuIHdlYnNpdGUgdGgmaWdyYXZlOyA8c3Ryb25nPkFkbWluLnZuPC9zdHJvbmc+Jm5ic3A7c+G6vSBsJmFncmF2ZTsgbmfGsOG7nWkgcGgmYWNpcmM7biB44butIHYmYWdyYXZlOyBjJm9hY3V0ZTsgMTAwJSBxdXnhu4FuIHF1eeG6v3QgxJHhu4tuaCDEkSZ1YWN1dGU7bmcgc2FpJnJkcXVvOy48L2xpPg0KCTxsaT48c3Ryb25nPlImdWFjdXRlO3QgQuG6o28gSGnhu4NtOiZuYnNwOzwvc3Ryb25nPm5nxrDhu51pIHImdWFjdXRlO3QgYmggY+G6p24mbmJzcDs8c3Ryb25nPlBvc3QgMSBiJmFncmF2ZTtpPC9zdHJvbmc+Jm5ic3A7dGgmb2NpcmM7bmcgYiZhYWN1dGU7byZuYnNwO3RyJmVjaXJjO24gdHJhbmcmbmJzcDs8c3Ryb25nPkZCIGMmYWFjdXRlOyBuaCZhY2lyYztuPC9zdHJvbmc+Jm5ic3A7duG7m2kgbuG7mWkgZHVuZyZuYnNwOzxzdHJvbmc+JmxkcXVvOyZoZWxsaXA7JmhlbGxpcDsgeGluIHJ1zIF0IGJhzIlvIGhpZcyCzIltIHRhzKNpIEFkbWluLnZuJm5ic3A7Jm5kYXNoOyBOZ2HMgHkgJmhlbGxpcDsmaGVsbGlwOyZyZHF1bzs8L3N0cm9uZz4uJm5ic3A7IFkmZWNpcmM7dSBj4bqndSZuYnNwOzxzdHJvbmc+ciZ1YWN1dGU7dCB0aeG7gW4gYuG6o28gaGnhu4NtPC9zdHJvbmc+Jm5ic3A7Y+G7p2EgYuG6oW4gc+G6vSDEkcaw4bujYyB0aOG7sWMgaGnhu4duIHNhdTxzdHJvbmc+Jm5ic3A7MTQgbmcmYWdyYXZlO3kuJm5ic3A7PC9zdHJvbmc+ViZhZ3JhdmU7IHPhur0gYuG7iyZuYnNwOzxzdHJvbmc+VHJlbyBCSDwvc3Ryb25nPiZuYnNwO27hur91IGMmb2FjdXRlOyBz4bqjeSByYSZuYnNwOzxzdHJvbmc+dHJhbmggY2jhuqVwIGhheSBk4bqldSBoaeG7h3UgU2NhbTwvc3Ryb25nPi48L2xpPg0KCTxsaT7EkOG7gyB04bqhbyByYSBt4buZdCBj4buZbmcgxJHhu5NuZyB1eSB0JmlhY3V0ZTtuICZhbXA7IGNo4bqldCBsxrDGoW5nLDxzdHJvbmc+Jm5ic3A7QWRtaW48L3N0cm9uZz4mbmJzcDtobyZhZ3JhdmU7biB0byZhZ3JhdmU7biBjJm9hY3V0ZTsgcXV54buBbiZuYnNwOzxzdHJvbmc+xJHGoW4gcGjGsMahbmcgY2jhuqVtIGThu6l0IGjhu6NwIHQmYWFjdXRlO2M8L3N0cm9uZz4sJm5ic3A7PHN0cm9uZz5obyZhZ3JhdmU7biB0cuG6oyBi4bqjbyBoaeG7g208L3N0cm9uZz4mbmJzcDtu4bq/dSZuYnNwOzxzdHJvbmc+ROG7i2NoIHbhu6U8L3N0cm9uZz4mbmJzcDtj4bunYSBi4bqhbiZuYnNwOzxzdHJvbmc+a2gmb2NpcmM7bmcgxJHhuqNtIGLhuqNvIGNo4bqldCBsxrDhu6NuZyZuYnNwOzwvc3Ryb25nPnYmYWdyYXZlOzxzdHJvbmc+Jm5ic3A7ZyZhY2lyYzt5IHJhIG5oaeG7gXUgdHJhbmggYyZhdGlsZGU7aTwvc3Ryb25nPjwvbGk+DQoJPGxpPk3hu41pIMSRaeG7gXUga2hv4bqjbiDEkcaw4bujYyDEkcawYSByYSB0ciZlY2lyYztuIDxzdHJvbmc+QWRtaW4udm4mbmJzcDs8L3N0cm9uZz5uaOG6sW0mbmJzcDs8c3Ryb25nPmLhuqNvIHbhu4cgbmfGsOG7nWkgbXVhPC9zdHJvbmc+LCBtYW5nIGzhuqFpJm5ic3A7PHN0cm9uZz51eSB0JmlhY3V0ZTtuIGNobyBuZ8aw4budaSBiJmFhY3V0ZTtuPC9zdHJvbmc+Jm5ic3A7diZhZ3JhdmU7IHThuqFvIHJhIG3hu5l0IG0mb2NpcmM7aSB0csaw4budbmcgY+G7mW5nIMSR4buTbmcgbXVhIGImYWFjdXRlO24gbCZhZ3JhdmU7bmggbeG6oW5oIHYmYWdyYXZlOyBtaW5oIGLhuqFjaCBuaOG6pXQuPC9saT4NCjwvdWw+DQoNCjxoMz48c3Ryb25nPjIuIFF1eSB0ciZpZ3JhdmU7bmggZ2nhuqNpIHF1eeG6v3QgY+G7p2EgPCEtLT89JHNpdGVfdGVud2ViOz8tLT4gOjwvc3Ryb25nPjwvaDM+DQoNCjx1bD4NCgk8bGk+PHN0cm9uZz5OZ8aw4budaSB04buRIGMmYWFjdXRlO286PC9zdHJvbmc+DQoNCgk8dWw+DQoJCTxsaT5CJmFncmF2ZTtpIHThu5EgYyZhYWN1dGU7byBwaOG6o2kgYyZvYWN1dGU7IGLhurFuZyBjaOG7qW5nIMSR4bunIMSR4buDIHThu5EgYyZhYWN1dGU7by4gJmlhY3V0ZTt0IG5o4bqldCBsJmFncmF2ZTsgMSDhuqNuaCBiaWxsIGNodXnhu4NuIGtob+G6o24gdiZhZ3JhdmU7IDEsIHYmYWdyYXZlO2kg4bqjbmggxJFv4bqhbiBjaCZhYWN1dGU7dC4gUGjhuqduIG7hu5lpIGR1bmcgdOG7kSBjJmFhY3V0ZTtvIGgmYXRpbGRlO3kgdHImaWdyYXZlO25oIGImYWdyYXZlO3kgxJHhu4MgYWRtaW4gaGnhu4N1IHbhu4Egc+G7sSB2aeG7h2MgY+G7p2EgYuG6oW4uIFBo4bqnbiBaYWxvIGxpJmVjaXJjO24gaOG7hyBwaOG6o2kgxJFp4buBbiDEkSZ1YWN1dGU7bmcgWmFsbyBj4bunYSBi4bqhbiwgdiZpZ3JhdmU7IGNo4buJIGMmb2FjdXRlOyBi4bqhbiBt4bubaSBsJmFncmF2ZTsgbmfGsOG7nWkgYyZvYWN1dGU7IHRo4buDIGfhu6EgYuG7jyBiJmFncmF2ZTtpIHThu5EgYyZhYWN1dGU7byDEkSZvYWN1dGU7PC9saT4NCgkJPGxpPsSQ4buDIHkmZWNpcmM7dSBj4bqndSBn4buhIGLhu48gYiZhZ3JhdmU7aSBtJmFncmF2ZTsgYuG6oW4gxJEmYXRpbGRlOyB04buRIGMmYWFjdXRlO28sIGLhuqFuIHZ1aSBsJm9ncmF2ZTtuZyBpYiBjaG8gQWRtaW4gZ+G7rWkmbmJzcDs8c3Ryb25nPiZsZHF1bztMaW5rIGImYWdyYXZlO2kgdOG7kSBjJmFhY3V0ZTtvJnJkcXVvOzwvc3Ryb25nPiZuYnNwOywmbmJzcDs8c3Ryb25nPiZsZHF1bztMJnlhY3V0ZTsgZG8gZ+G7oSBi4buPJnJkcXVvOzwvc3Ryb25nPiZuYnNwO3YmYWdyYXZlOyZuYnNwOzxzdHJvbmc+JmxkcXVvO1Phu5EgWmFsbyBsaSZlY2lyYztuIGjhu4cgdHJvbmcgYiZhZ3JhdmU7aSB04buRIGMmYWFjdXRlO28gxJEmb2FjdXRlOyZyZHF1bzs8L3N0cm9uZz48L2xpPg0KCTwvdWw+DQoJPC9saT4NCgk8bGk+PHN0cm9uZz5OZ8aw4budaSBraCZhYWN1dGU7bmcgYyZhYWN1dGU7bzo8L3N0cm9uZz4NCgk8dWw+DQoJCTxsaT7EkOG7gyBraCZhYWN1dGU7bmcgYyZhYWN1dGU7byBt4buZdCBiJmFncmF2ZTtpIHThu5EgYyZhYWN1dGU7byBuaOG6p20gbOG6q24sIHNhaSBz4buxIHRo4bqtdCwgYuG6oW4gdnVpIGwmb2dyYXZlO25nIGliIGNobyBBZG1pbiBn4butaSZuYnNwOzxzdHJvbmc+JmxkcXVvO0xpbmsgYiZhZ3JhdmU7aSB04buRIGMmYWFjdXRlO28mcmRxdW87PC9zdHJvbmc+Jm5ic3A7JmFtcDsgJmxkcXVvOzxzdHJvbmc+TCZ5YWN1dGU7IGRvIGLhuqFuIGtoJmFhY3V0ZTtuZyBjJmFhY3V0ZTtvJnJkcXVvOzwvc3Ryb25nPjwvbGk+DQoJPC91bD4NCgk8L2xpPg0KCTxsaT48c3Ryb25nPsSQ4buRaSB24bubaSBjJmFhY3V0ZTtjIGJveCBnaWFvIGThu4tjaDo8L3N0cm9uZz4NCgk8dWw+DQoJCTxsaT5WaeG7h2MgdHJvbmcgYm94IHBoJmFjaXJjO24gZ2nhuqNpIHRo4bq/IG4mYWdyYXZlO28gbCZhZ3JhdmU7IHZp4buHYyBj4bunYSBHRFYgeOG7rSBsJnlhY3V0ZTsgKG3hu5dpIGdkdiBjJm9hY3V0ZTsgMSBjJmFhY3V0ZTtjaCB44butIGwmeWFjdXRlOyBraCZhYWN1dGU7YyBuaGF1LCBib3ggY+G7p2EgZ2R2IG4mYWdyYXZlO28gdGgmaWdyYXZlOyB0aGVvIGx14bqtdCBj4bunYSBnZHYgxJEmb2FjdXRlOykuIEFkbWluIGNo4buJIHRoYW0gZ2lhIGtoaSBnaWFvIGThu4tjaCB2aSZlY2lyYztuIMSRJm9hY3V0ZTsgU2NhbTwvbGk+DQoJPC91bD4NCgk8L2xpPg0KPC91bD4NCg0KPGgzPjxzdHJvbmc+My4gTOG7o2kgJmlhY3V0ZTtjaCBraGkgdOG6oW8gcXXhu7kgQuG6o28gSGnhu4NtPC9zdHJvbmc+PC9oMz4NCg0KPHVsPg0KCTxsaT5MaW5rIELhuqNvIEhp4buDbSwgbCZhZ3JhdmU7IGLhurFuZyBjaOG7qW5nIMSR4buDIGLhuqFuIGNhbSBr4bq/dCBz4buxIHV5IHQmaWFjdXRlO24gdHJvbmcgZOG7i2NoIHbhu6UgY+G7p2EgYyZhYWN1dGU7YyBi4bqhbiB24bubaSBraCZhYWN1dGU7Y2ggaCZhZ3JhdmU7bmc8L2xpPg0KCTxsaT7EkMaw4bujYyBoaeG7g24gdGjhu4sgdHJvbmcgRFMgJmxkcXVvO25o4buvbmcgZOG7i2NoIHbhu6UgdXkgdCZpYWN1dGU7biZyZHF1bzsgY+G7p2EgQWRtaW48L2xpPg0KCTxsaT7EkMaw4bujYyB0aeG6v3AgY+G6rW4gduG7m2kgNS4wMDAgLTcuNTAwIG5nxrDhu51pIG3hu5dpIG5nJmFncmF2ZTt5IMSR4buBdSBsJmFncmF2ZTsgZCZhY2lyYztuIG11YSBiJmFhY3V0ZTtuIG9ubGluZSwgTU1PJmhlbGxpcDsgxJHhur9uIHThu6sgR29vZ2xlIHYmYWdyYXZlOyBGYWNlYm9vaywgYyZhYWN1dGU7YyBHcm91cCZoZWxsaXA7LjwvbGk+DQoJPGxpPsSQxrDhu6NjIGjGsOG7n25nIGzhu6NpICZpYWN1dGU7Y2ggdXkgdCZpYWN1dGU7biB04burIHPhu7Eg4bqjbmggaMaw4bufbmcgdGjGsMahbmcgaGnhu4d1IGPhu6dhIENoZWNrc2NhbSB0cm9uZyBnaeG7m2kgbXVhIGImYWFjdXRlO24sIGPhu5luZyDEkeG7k25nIG3huqFuZyBPbmxpbmU8L2xpPg0KPC91bD4NCg0KPGgzPjxzdHJvbmc+NC4gTOG7o2kgJmlhY3V0ZTtjaCBjaG8gbmfGsOG7nWkgZCZ1Z3JhdmU7bmcgd2Vic2l0ZTwvc3Ryb25nPjwvaDM+DQoNCjx1bD4NCgk8bGk+TmfGsOG7nWkgZCZ1Z3JhdmU7bmcgYyZvYWN1dGU7IHRo4buDIMSR4buNYywgYmnhur90ICZhbXA7IGPhuq1wIG5o4bqtdCDEkcaw4bujYyB0JmlncmF2ZTtuaCB0cuG6oW5nIFNjYW0sIGzhu6thIMSR4bqjbyBt4buXaSBuZyZhZ3JhdmU7eSBkaeG7hW4gcmEgbmhp4buBdSBuaMawIHRo4bq/IG4mYWdyYXZlO288L2xpPg0KCTxsaT7EkMaw4bujYyBiaeG6v3QgxJHhur9uIG5o4buvbmcgYyZhY2lyYzt1IGNodXnhu4duLCBraeG7g3UgYyZhYWN1dGU7Y2gsIGMmYWFjdXRlO2NoIHRo4bupYyBtJmFncmF2ZTsgYuG7jW4gbOG7q2EgxJHhuqNvIGhheSBz4butIGThu6VuZyDEkeG7gyBjaGnhur9tIMSRb+G6oXQgdCZhZ3JhdmU7aSBz4bqjbiBuZ8aw4budaSBkJnVncmF2ZTtuZzwvbGk+DQoJPGxpPsSQxrDhu6NjIHTGsCB24bqlbiwgZ2nhu5tpIHRoaeG7h3UsIGJp4bq/dCDEkeG6v24gdiZhZ3JhdmU7IGjhu5cgdHLhu6Mgc+G7rSBk4bulbmcgbmjhu69uZyBk4buLY2ggduG7pSB04buRdCBuaOG6pXQsIHRyJmFhY3V0ZTtuaCBuaOG7r25nIHNhaSBs4bqnbSBrIMSRJmFhY3V0ZTtuZyBjJm9hY3V0ZTsga2hpIG11YSBiJmFhY3V0ZTtuIG9ubGluZTwvbGk+DQoJPGxpPjxzdHJvbmc+xJDGsOG7o2MgQWRtaW4gYuG6o28gduG7hyBxdXnhu4FuIGzhu6NpIHYmYWdyYXZlOyBs4bujaSAmaWFjdXRlO2NoIGtoaTwvc3Ryb25nPiZuYnNwO3Phu60gZOG7pW5nIGThu4tjaCB24bulIMSRJmF0aWxkZTsgxJEmb2FjdXRlO25nIHF14bu5IGLhuqNvIGhp4buDbSBNTU88c3Ryb25nPjo8L3N0cm9uZz4NCgk8dWw+DQoJCTxsaT5BZG1pbi52biBjaOG7iSBnaeG6o2kgcXV54bq/dCBi4bqjbyBoaeG7g20ga2hpIGLhuqFuJm5ic3A7PHN0cm9uZz4mbGRxdW87Z2lhbyBk4buLY2ggdHLhu7FjIHRp4bq/cCZyZHF1bzs8L3N0cm9uZz4mbmJzcDt24bubaSBuZ8aw4budaSDEkSZvYWN1dGU7bmcgQkggdOG6oWkgY2hlY2tzY2FtLjwvbGk+DQoJCTxsaT5C4bqhbiBz4bq9IMSRxrDhu6NjIGLhuqNvIHbhu4cgcXV54buBbiBs4bujaSBraGkgc+G6o3kgcmEgdHJhbmggY2jhuqVwLCDEkcaw4bujYyBo4buXIHRy4bujIMSR4buBbiBiJnVncmF2ZTsmbmJzcDs8c3Ryb25nPihT4buRIHRp4buBbiDEkcaw4bujYyDEkeG7gW4gYiZ1Z3JhdmU7IHPhur0gYuG6sW5nIHThu5VuZyBz4buRIHRp4buBbiBjJm9ncmF2ZTtuIHRyb25nIHF14bu5IGLhuqNvIGhp4buDbSBj4bunYSBuZ8aw4budaSDEkSZvYWN1dGU7IGNoaWEgY2hvIHPhu5EgbmfGsOG7nWkgYuG7iyBTY2FtIHRoZW8gJSk8L3N0cm9uZz48L2xpPg0KCTwvdWw+DQoJPC9saT4NCjwvdWw+DQoNCjxoMz48c3Ryb25nPjUuIEzhu6NpICZpYWN1dGU7Y2ggY2hvIG5o4buvbmcgbmfGsOG7nWkgdOG7kSBjJmFhY3V0ZTtvIFNjYW0sIGzhu6thIMSR4bqjbzwvc3Ryb25nPjwvaDM+DQoNCjx1bD4NCgk8bGk+xJDEg25nIHBo4buRdCB0ciZlY2lyYztuIGMmYWFjdXRlO2MgR3JvdXAgRmFjZWJvb2sgdGjGsOG7nW5nIHPhur0gYuG7iyBBZG1pbiBHcm91cCBYJm9hY3V0ZTthIGRvIG7hu5lpIGR1bmcgdmkgcGjhuqFtIGNoJmlhY3V0ZTtuaCBzJmFhY3V0ZTtjaCBGQi4gxJDhu4MgxJHEg25nIHBo4buRdCBtJmFncmF2ZTsga2gmb2NpcmM7bmcgYmFvIGdp4budIGLhu4sgeCZvYWN1dGU7YSBiJmFncmF2ZTtpIHRoJmlncmF2ZTsgaCZhdGlsZGU7eSDEkcSDbmcgbCZlY2lyYztuIEFkbWluPC9saT4NCgk8bGk+TmfGsOG7nWkgYuG7iyBTY2FtIGMmb2FjdXRlOyB0aCZlY2lyYzttIGPGoSBo4buZaSBs4bqleSBs4bqhaSDEkcaw4bujYyBz4buRIHRp4buBbiDEkSZhdGlsZGU7IGLhu4sgbeG6pXQsIGzhu6thIMSR4bqjbzwvbGk+DQoJPGxpPsSQxrDhu6NjIHThu5EgYyZhYWN1dGU7byAmYW1wOyBsxrB1IHRy4buvIHRoJm9jaXJjO25nIHRpbiBr4bq7IMSRJmF0aWxkZTsgbOG7q2EgxJHhuqNvIGLhuqFuIG3hu5l0IGMmYWFjdXRlO2NoIGwmYWNpcmM7dSBuaOG6pXQsIGtoaSBj4bqnbiB0JmlncmF2ZTttIHNlYXJjaCBsJmFncmF2ZTsgdGjhuqV5PC9saT4NCgk8bGk+xJDGsOG7o2MgbGkmZWNpcmM7biBr4bq/dCB24bubaSBuaOG7r25nIG5nxrDhu51pIGMmdWdyYXZlO25nIGLhu4sgbOG7q2EgYuG7n2kgMSB0JmVjaXJjO24gbOG7q2EgxJHhuqNvIMSR4buDIHThu5EgYyZhYWN1dGU7byBsJmVjaXJjO24gcGgmYWFjdXRlO3AgbHXhuq10PC9saT4NCjwvdWw+DQoNCjxoMz48c3Ryb25nPjYuIMSQaeG7gXUga2hv4bqjbiB24buBIG5nxrDhu51pIHYmYWdyYXZlOyBu4buZaSBkdW5nIHThu5EgYyZhYWN1dGU7bzo8L3N0cm9uZz48L2gzPg0KDQo8dWw+DQoJPGxpPkLhuqFuIMSR4buTbmcgJnlhY3V0ZTsgcuG6sW5nIGImYWdyYXZlO2kgYiZhYWN1dGU7byBjJmFhY3V0ZTtvIGPhu6dhIGLhuqFuIHPhur0gxJHGsOG7o2MgY2hpYSBz4bq7IHRoJm9jaXJjO25nIHRpbiBjaG8gYyZhYWN1dGU7YyBiJmVjaXJjO24gdGjhu6kgYmEgYmFvIGfhu5NtIENoZWNrc2NhbSB2JmFncmF2ZTsgYyZhYWN1dGU7YyB04buVIGNo4bupYywgYyZhYWN1dGU7IG5oJmFjaXJjO24ga2gmYWFjdXRlO2MsIG3hu6VjIMSRJmlhY3V0ZTtjaCDEkeG7gyBuZ8SDbiBjaOG6t24gbOG7q2EgxJHhuqNvIHQmYWFjdXRlO2kgZGnhu4VuPC9saT4NCgk8bGk+QuG6oW4gxJHhu5NuZyAmeWFjdXRlOyBy4bqxbmcgYuG6oW4gY2jhu4t1IHRyJmFhY3V0ZTtjaCBuaGnhu4dtIHRyxrDhu5tjIHBoJmFhY3V0ZTtwIGx14bqtdCwgbuG6v3UgbmjGsCBi4bqhbiB0cnV54buBbiBiJmFhY3V0ZTsgYyZhYWN1dGU7YyB0aCZvY2lyYztuZyB0aW4gc2FpIGzhu4djaCB2JmFncmF2ZTsgcGjhu4kgYiZhYWN1dGU7bmcgbmfGsOG7nWkga2gmYWFjdXRlO2MuPGJyIC8+DQoJS2hpIGPhuqduLCBi4bqhbiBwaOG6o2kgYyZvYWN1dGU7IHRyJmFhY3V0ZTtjaCBuaGnhu4dtIHRoYW0gZ2lhIHYmYWdyYXZlO28gcXUmYWFjdXRlOyB0ciZpZ3JhdmU7bmggeCZhYWN1dGU7YyBtaW5oIMSR4buDIGNo4bupbmcgdGjhu7FjIHbhu6UgbOG7q2EgxJHhuqNvPC9saT4NCgk8bGk+QuG6oW4gxJHhu5NuZyAmeWFjdXRlOyBuaOG6rW4gdGgmb2NpcmM7bmcgdGluIHbhu4Egdmnhu4djIG7hur91IGImZWNpcmM7biBs4burYSDEkeG6o28geSZlY2lyYzt1IGPhuqd1IHgmb2FjdXRlO2EgYiZhZ3JhdmU7aSB2JmFncmF2ZTsgY2FtIGvhur90IGdp4bqjaSBxdXnhur90LCDEkeG7gW4gYiZ1Z3JhdmU7IHRoaeG7h3QgaOG6oWkuPC9saT4NCgk8bGk+QuG6oW4gxJHhu5NuZyAmeWFjdXRlOyBy4bqxbmcgQ2hlY2tzY2FtIMSRxrDhu6NjIHBoJmVhY3V0ZTtwIHRp4bq/cCBxdeG6o24gdGgmb2NpcmM7bmcgdGluIGPhu6dhIG5nxrDhu51pIHZp4bq/dCBiJmFncmF2ZTtpIGImYWFjdXRlO28gYyZhYWN1dGU7byBs4burYSDEkeG6o28gdiZhZ3JhdmU7IGvhursgZ2lhbiwgYmFvIGfhu5NtIHRoJm9jaXJjO25nIHRpbiBjJmFhY3V0ZTsgbmgmYWNpcmM7biAodCZlY2lyYztuLCBz4buRIMSRaeG7h24gdGhv4bqhaSwgc+G7kSB0JmFncmF2ZTtpIGtob+G6o24sIElELCB2LnYuKSDEkeG7gyBo4buXIHRy4bujIG5nxINuIGNo4bq3biBz4buxIHQmYWFjdXRlO2kgZGnhu4VuIGgmYWdyYXZlO25oIHYmaWdyYXZlOyBs4burYSDEkeG6o28sIGPFqW5nIG5oxrAga2jhuq9jIHBo4bulYyB0aGnhu4d0IGjhuqFpIGNobyBu4bqhbiBuaCZhY2lyYztuLjwvbGk+DQoJPGxpPk7hur91IGLhuqFuIHZpIHBo4bqhbSBjJmFhY3V0ZTtjIMSRaeG7gXUga2hv4bqjbiBj4bunYSB0aOG7j2EgdGh14bqtbiwgYuG6oW4gYyZvYWN1dGU7IHRo4buDIGLhu4sgcGjhuqF0Lg0KCTx1bD4NCgkJPGxpPkwmYWdyYXZlO20gdOG7lW4gaOG6oWkgxJHhur9uIHV5IHQmaWFjdXRlO24gY+G7p2EgbmfGsOG7nWkga2gmYWFjdXRlO2MgYuG6sW5nIGMmYWFjdXRlO2NoIHZ1IGto4buRbmcgcXVhIGjhu4cgdGjhu5FuZyBt4bqhbmcgdGgmb2NpcmM7bmcgdGluLjwvbGk+DQoJCTxsaT5WaeG6v3QgYiZhZ3JhdmU7aSB04buRIGMmYWFjdXRlO28gZG8gYyZvYWN1dGU7IHTGsCB0aCZ1Z3JhdmU7IGMmYWFjdXRlOyBuaCZhY2lyYztuIHYmYWdyYXZlOyBt4bulYyDEkSZpYWN1dGU7Y2ggeOG6pXUga2gmYWFjdXRlO2MuPC9saT4NCgkJPGxpPsSQJmFjaXJjO3kgYyZvYWN1dGU7IHRo4buDIMSRxrDhu6NjIGNvaSBsJmFncmF2ZTsgaCZhZ3JhdmU7bmggdmkgcGjhu4kgYiZhYWN1dGU7bmcsIHZ1IGto4buRbmcgdiZhZ3JhdmU7IGPhuqNuIHRy4bufIGhv4bqhdCDEkeG7mW5nIGtpbmggZG9hbmguIFRoZW8gxJEmb2FjdXRlOyBi4bqhbiBjJm9hY3V0ZTsgdGjhu4MgYuG7iyBwaOG6oXQgY+G6oyB24buBICZhYWN1dGU7biBkJmFjaXJjO24gc+G7sSB2JmFncmF2ZTsgaCZpZ3JhdmU7bmggc+G7sS48L2xpPg0KCTwvdWw+DQoJPC9saT4NCjwvdWw+DQo='),
(59, 'gioithieu', 'PGgxPiZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyA8c3Ryb25nPiZuYnNwOyAmbmJzcDs8L3N0cm9uZz4gJm5ic3A7ICZuYnNwOzxzdHJvbmc+Jm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyZuYnNwOzwvc3Ryb25nPkdp4bubaSBUaGnhu4d1PC9oMT4NCg0KPGgyPlPhu7EgcmEgxJHhu51pIDwhLS0/PSRzaXRlX3RlbndlYjs/LS0+IDo8L2gyPg0KDQo8cD5N4bulYyDEkSZpYWN1dGU7Y2ggbSZhZ3JhdmU7IG0maWdyYXZlO25oIG114buRbiBs4bqtcCByYSB0cmFuZyA8c3Ryb25nPndlYnNpdGU8L3N0cm9uZz4gbiZhZ3JhdmU7eSDEkeG7gyBjaG8gYyZhYWN1dGU7YyBi4bqhbiBjJm9hY3V0ZTsgdGjhu4MmbmJzcDtjaGVjayBhZG1pbiBk4buFIGQmYWdyYXZlO25nIGjGoW4gdHJvbmcgdmnhu4djIGdpYW8gZOG7i2NoIMSR4bqjbSBi4bqjbyBz4buxIDxzdHJvbmc+aCZhZ3JhdmU7aSBsJm9ncmF2ZTtuZyBjaG8gYiZlY2lyYztuIG11YTwvc3Ryb25nPiB2JmFncmF2ZTsgPHN0cm9uZz50aOG7j2EgbSZhdGlsZGU7biZuYnNwO2NobyBiJmVjaXJjO24gYiZhYWN1dGU7biA8L3N0cm9uZz4sY+G7pSB0aOG7gyB04burbmcgYWRtaW4gYyZvYWN1dGU7IG3hu6ljIDxzdHJvbmc+cXXhu7kgYuG6o28gaGnhu4NtPC9zdHJvbmc+IMSRxrDhu6NjIHBoJmFjaXJjO24gYuG7lSAsbeG7qWMgdGjhur8gY2jhuqVwICxsxKluaCB24buxYyBraCZhYWN1dGU7YyBuaGF1IHRyb25nIGMmYWFjdXRlO2MgbuG7gW4gdOG6o25nIG3huqFuZyB4JmF0aWxkZTsgaOG7mWkmbmJzcDsuIFRydXkgY+G6rXAgdHJhbmcmbmJzcDs8c3Ryb25nPndlYnNpdGU8L3N0cm9uZz4mbmJzcDts4bujaSAmaWFjdXRlO2NoIGNobyBi4bqhbiZuYnNwO2Mmb2FjdXRlOyB0aOG7gyBraeG7g20gdHJhIMSRxrDhu6NjIDxzdHJvbmc+YWRtaW4gY2gmaWFjdXRlO25oIGgmYXRpbGRlO25nIDwvc3Ryb25nPsSRxrDhu6NjIDxzdHJvbmc+UcWpeSBi4bqjbyBoaeG7g20gYWRtaW48L3N0cm9uZz4gxJHhuqNtIGLhuqNvIHV5IHQmaWFjdXRlO24gYW4gdG8mYWdyYXZlO24gZ2lhbyBk4buLY2ggZMaw4bubaSBt4buNaSBoJmlncmF2ZTtuaCB0aOG7qWMgLiBLaGkgeCZhdGlsZGU7eSByYSBz4buxIGPhu5Ega2gmb2NpcmM7bmcgbW9uZyBtdeG7kW4gLCBz4buRIHRp4buBbiBxdeG7uSBi4bqjbyBoaeG7g20gc+G6vSDEkcaw4bujYyBwaCZhY2lyYztuIGNoaWEmbmJzcDtobyZhZ3JhdmU7biB0cuG6oyBs4bqhaSBjaG8gbmjhu69uZyBu4bqhbiBuaCZhY2lyYztuIC48L3A+DQoNCjxoMj4mWWFjdXRlOyB0xrDhu59uZyBj4bunYSBtJmlncmF2ZTtuaDo8L2gyPg0KDQo8cD48c3Ryb25nPlBoJmFjaXJjO24gdCZpYWN1dGU7Y2g6PC9zdHJvbmc+PC9wPg0KDQo8dWw+DQoJPGxpPlRodeG6rXQgdG8mYWFjdXRlO24gRmFjZWJvb2sgbHUmb2NpcmM7biBo4bqhbiBjaOG6vyB2aeG7h2MgdCZpZ3JhdmU7bSBraeG6v20gbmjhu69uZyB0aCZvY2lyYztuZyB0aW4sIGThu68gbGnhu4d1IGtp4buDdSBTVEsgbmcmYWNpcmM7biBoJmFncmF2ZTtuZywgU+G7kSBDTVQsIFPEkFQmaGVsbGlwOy48L2xpPg0KCTxsaT5C4bqhbiBz4bq9IGtoJm9jaXJjO25nIHRo4buDIHQmaWdyYXZlO20gdGjhuqV5IGvhur90IHF14bqjIGcmaWdyYXZlOyBraGkgc2VhcmNoIG5o4buvbmcgdOG7qyBraCZvYWN1dGU7YSBsaSZlY2lyYztuIHF1YW4gxJHhur9uIHRoJm9jaXJjO25nIHRpbiBjJmFhY3V0ZTsgbmgmYWNpcmM7biB0ciZlY2lyYztuIEZiLCB0cuG7qyBraGkgYuG6oW4gbCZhZ3JhdmU7IHRoJmFncmF2ZTtuaCB2aSZlY2lyYztuIHRyb25nIEdyIGMmb2FjdXRlOyBiJmFncmF2ZTtpIHThu5EgYyZhYWN1dGU7byDEkSZvYWN1dGU7LCBob+G6t2MgYyZvYWN1dGU7IG3hu5l0IGNoJnVhY3V0ZTt0IGcmaWdyYXZlOyDEkSZvYWN1dGU7IGxpJmVjaXJjO24gcXVhbiDEkeG6v24gU1RLIMSRJmF0aWxkZTsgYuG7iyB04buRIGMmYWFjdXRlO28gxJEmb2FjdXRlOyAuIHRoJmlncmF2ZTsgYuG6oW4gbeG7m2kgYyZvYWN1dGU7IHRo4buDIG5oJmlncmF2ZTtuIHRo4bqleSBiJmFncmF2ZTtpIGImYWdyYXZlO2kgcGjhu5F0PC9saT4NCgk8bGk+Q2hvIGQmdWdyYXZlOyBi4bqhbiBjJm9hY3V0ZTsgcGjhu5F0LCB04buRIGMmYWFjdXRlO28gbeG7mXQgYWkgxJEmb2FjdXRlOyBsJmVjaXJjO24gYyZhYWN1dGU7YyBHcm91cCB0ciZlY2lyYztuIEZCIHRoJmlncmF2ZTsgMSwgMiBuZyZhZ3JhdmU7eSBzYXUgQWRtaW4gdGjGsOG7nW5nIHPhur0geCZvYWN1dGU7YSBiJmFncmF2ZTtpIMSRJm9hY3V0ZTsgY+G7p2EgYuG6oW4sIHYmaWdyYXZlOyBu4buZaSBkdW5nIHZpIHBo4bqhbSBjaCZpYWN1dGU7bmggcyZhYWN1dGU7Y2gsIGcmYWNpcmM7eSDhuqNuaCBoxrDhu59uZyDEkeG6v24gR3JvdXAgY+G7p2EgaOG7jS4gaG/hurdjIG7hur91IGFkbWluIGtoJm9jaXJjO25nIGfhu6EsIHRoJmlncmF2ZTsga+G6uyBs4burYSDEkeG6o28gYuG6oW4gY2jhu4kgY+G6p24gZCZ1Z3JhdmU7bmcgbeG7mXQgdiZhZ3JhdmU7aSB0dXQsIHRyaWNrIGZiIGwmYWdyYXZlOyBjJm9hY3V0ZTsgdGjhu4Mga2hp4bq/biBiJmFncmF2ZTtpIGPhu6dhIGLhuqFuIGLhu4sgRmFjZWJvb2sgYiZhYWN1dGU7byB2aSBwaOG6oW0gdiZlZ3JhdmU7IGfhu6EgbmdheSBzYXUgxJEmb2FjdXRlOy48L2xpPg0KPC91bD4NCg0KPHA+PHN0cm9uZz5N4bulYyDEkSZpYWN1dGU7Y2g6PC9zdHJvbmc+PC9wPg0KDQo8dWw+DQoJPGxpPlThuqFvIHJhIG3hu5l0IFdlYnNpdGUgbMawdSB0cuG7ryBk4buvIGxp4buHdSBs4burYSDEkeG6o28gdHImZWNpcmM7biBteGggbSZhZ3JhdmU7IGtoJm9jaXJjO25nIGNo4buLdSBi4bqldCBr4buzIGjhuqFuIGNo4bq/IHNlYWNoIGPhu6dhIG3hu5l0IHRodeG6rXQgdG8mYWFjdXRlO24gbiZhZ3JhdmU7byB0ciZlY2lyYztuIEZhY2Vib29rPC9saT4NCgk8bGk+TCZhZ3JhdmU7IG7GoWkgYuG6oW4gYyZvYWN1dGU7IHRo4buDIHThu5EgYyZhYWN1dGU7byBr4bq7IGzhu6thIMSR4bqjbywgdiZhZ3JhdmU7IHBoJmFhY3V0ZTt0IHQmYWFjdXRlO24gdGgmb2NpcmM7bmcgdGluIGvhursgbOG7q2EgxJHhuqNvIMSRJm9hY3V0ZTsgbCZlY2lyYztuIEdvb2dsZSwgRmFjZWJvb2sgZ2kmdWFjdXRlO3AgbmfGsOG7nWkgZCZ1Z3JhdmU7bmcgYyZvYWN1dGU7IHRo4buDIHQmaWdyYXZlO20ga2nhur9tIDEgYyZhYWN1dGU7Y2ggZOG7hSBkJmFncmF2ZTtuZyBuaOG7r25nIHRoJm9jaXJjO25nIHRpbiBs4burYSDEkeG6o288L2xpPg0KCTxsaT5MJmFncmF2ZTsgbsahaSBnaeG7m2kgdGhp4buHdSBjaG8gYuG6oW4gYmnhur90IG5o4buvbmcgbmfGsOG7nWkgY2h1eSZlY2lyYztuIGwmYWdyYXZlO20gZOG7i2NoIHbhu6UgdHImZWNpcmM7biBteGgsIGxpbmsgRmIgY2h14bqpbiwgdGgmb2NpcmM7bmcgdGluIGNodeG6qW4gY+G7p2EgbeG7mXQgbmfGsOG7nWkgbCZhZ3JhdmU7bSBkdiBuJmFncmF2ZTtvIMSRJm9hY3V0ZTsuPC9saT4NCgk8bGk+TCZhZ3JhdmU7IG7GoWkgbMawdSB0cuG7ryBi4bqxbmcgY2jhu6luZyBs4burYSDEkeG6o28sIGN1bmcgY+G6pXAgZyZvYWN1dGU7cCBwaOG6p24gbiZhZ3JhdmU7byB0aCZ1YWN1dGU7YyDEkeG6qXkgcXUmYWFjdXRlOyB0ciZpZ3JhdmU7bmggdGh1IHRo4bqtcCBk4buvIGxp4buHdSBwaOG7pWMgduG7pSBjaG8gYyZvY2lyYztuZyB0JmFhY3V0ZTtjIMSRaeG7gXUgdHJhIGPhu6dhICZsZHF1bztD4bulYyBBbiBuaW5oIG3huqFuZyB2JmFncmF2ZTsgcGgmb2dyYXZlO25nLCBjaOG7kW5nIHThu5lpIHBo4bqhbSBz4butIGThu6VuZyBjJm9jaXJjO25nIG5naOG7hyBjYW8mcmRxdW87PC9saT4NCjwvdWw+DQoNCjxwPjxzdHJvbmc+TOG7nWkga2h1eSZlY2lyYztuOjwvc3Ryb25nPjwvcD4NCg0KPHVsPg0KCTxsaT5GYWNlYm9vayB0aCZpZ3JhdmU7IGMmb2FjdXRlOyB0aOG7gyBkbyBi4buLIGhhY2sgcuG7k2kgbWFuZyDEkWkgbOG7q2EgxJHhuqNvLCBob+G6t2MgZCZ1Z3JhdmU7bmcgRmFjZWJvb2sgY2xvbmUsIFZpYSwgRmFrZSB0cnVuZyBnaWFuJmhlbGxpcDsuPC9saT4NCgk8bGk+Q2jhu6luZyBtaW5oIG5oJmFjaXJjO24gZCZhY2lyYztuLCBnaeG6pXkgdOG7nSB0JnVncmF2ZTt5IHRoJmFjaXJjO24gYyZvYWN1dGU7IHRo4buDIGQmdWdyYXZlO25nIFBob3Rvc2hvcCBjaOG7iW5oIHPhu61hPC9saT4NCgk8bGk+U8SQVCB0aCZpZ3JhdmU7IHNpbSByJmFhY3V0ZTtjIHLhuqV0IG5oaeG7gXUsIGtoJm9jaXJjO25nIHRoaeG6v3U8L2xpPg0KCTxsaT5DaCZ1YWN1dGU7bmcgdGjhuq1tIGNoJmlhY3V0ZTsgYyZvYWN1dGU7IHRo4buDIEZha2UgY+G6oyAxIHRyYW5nIGZhY2Vib29rIHTEqW5oIHLhu5NpIHF1YXkgbOG6oWkgdmlkZW8gbG9nIGFjYywgxJHhu41jIHRuIGNobyBi4bqhbiB4ZW0uLjwvbGk+DQoJPGxpPk5nxrDhu51pIHRoJmFjaXJjO24gbmjhuq9uIHRpbiBjaHV54buDbiB0aeG7gW4gaOG7mSB2JmFncmF2ZTtvIDEgU1RLIGzhuqEgdGgmaWdyYXZlOyDEkeG7q25nIHbhu5lpIGNodXnhu4NuLCBoJmF0aWxkZTt5IG5o4bqlYyDEkXQgbCZlY2lyYztuIHYmYWdyYXZlOyBn4buNaSB0cuG7sWMgdGnhur9wIGNobyBuZ8aw4budaSB0aCZhY2lyYztuIMSR4buDIHgmYWFjdXRlO2MgdGjhu7FjIG5oJmVhY3V0ZTsgLi4hPC9saT4NCjwvdWw+DQoNCjxwPlbhuq15IG4mZWNpcmM7biDEkeG7q25nIGJhbyBnaeG7nSB0aW4gbmjhu69uZyBnJmlncmF2ZTsgbSZhZ3JhdmU7IG5nxrDhu51pIMSR4buRaSBkaeG7h24gxJHGsGEgY2hvIGLhuqFuIHhlbSBxdWEgdHImZWNpcmM7biBtJmFncmF2ZTtuIGgmaWdyYXZlO25oIG0mYWFjdXRlO3kgdCZpYWN1dGU7bmguIE3huq90IHRo4bqleSB0YXkgc+G7nSwgdGFpIG5naGUgduG6q24gYyZvZ3JhdmU7biBi4buLIGzhu6thLCBodeG7kW5nIGNoaSBsJmFncmF2ZTsgbeG6pXkgYyZhYWN1dGU7aSBoJmlncmF2ZTtuaCDhuqNuaCB0ciZlY2lyYztuIG3huqFuZy4gQ2jhu4kgYyZvYWN1dGU7IDEgdGgmb2NpcmM7bmcgdGluIGR1eSBuaOG6pXQgdiZhZ3JhdmU7IGNodeG6qW4geCZhYWN1dGU7YyBuaOG6pXQgbSZhZ3JhdmU7IGNoJnVhY3V0ZTtuZyB0YSBjJm9hY3V0ZTsgdGjhu4MgeCZhYWN1dGU7YyDEkeG7i25oIMSRxrDhu6NjIGvhursgbOG7q2EgxJHhuqNvIGwmYWdyYXZlOyBhaSDEkSZvYWN1dGU7IGNoJmlhY3V0ZTtuaCBsJmFncmF2ZTsmbmJzcDs8c3Ryb25nPiZsZHF1bztT4buRIFQmYWdyYXZlO2kgS2hv4bqjbiBOZyZhY2lyYztuIEgmYWdyYXZlO25nJnJkcXVvOzwvc3Ryb25nPiZuYnNwO20mYWdyYXZlOyBr4bq7IFNjYW0gZCZ1Z3JhdmU7bmcgxJHhu4Mgbmjhuq1uIHRp4buBbi48L3A+DQoNCjxoMj5I4buHIHRo4buRbmcgd2Vic2l0ZSBiYW8gZ+G7k20gNCBN4bulYzo8L2gyPg0KDQo8dWw+DQoJPGxpPk3hu6VjIDE6ICZPY2lyYzsgdCZpZ3JhdmU7bSBraeG6v20mbmJzcDs8c3Ryb25nPiZsZHF1bztTVEsgTmcmYWNpcmM7biBIJmFncmF2ZTtuZyZyZHF1bzs8L3N0cm9uZz4mbmJzcDtraeG7g20gdHJhIGThu68gbGnhu4d1IFNjYW08L2xpPg0KCTxsaT5N4bulYyAyOiBOJnVhY3V0ZTt0Jm5ic3A7PHN0cm9uZz4mbGRxdW87R+G7rWkgxJHGoW4gdOG7kSBjJmFhY3V0ZTtvJnJkcXVvOzwvc3Ryb25nPiZuYnNwO25o4buvbmcga+G6uyBTY2FtPC9saT4NCgk8bGk+TeG7pWMgMzogRGFuaCBzJmFhY3V0ZTtjaCBuaOG7r25nJm5ic3A7PHN0cm9uZz4mbGRxdW87VCZhZ3JhdmU7aSBraG/huqNuIFNjYW0gY+G6rXAgbmjhuq10IG3hu5tpIG5o4bqldCZyZHF1bzs8L3N0cm9uZz4mbmJzcDt0cm9uZyBuZyZhZ3JhdmU7eTwvbGk+DQoJPGxpPk3hu6VjIDQ6ICZsZHF1bzs8c3Ryb25nPkNoaSB0aeG6v3QgdGgmb2NpcmM7bmcgdGluIFNjYW0mcmRxdW87PC9zdHJvbmc+Jm5ic3A7YmFvIGfhu5NtOiBDaOG7pyB0JmFncmF2ZTtpIGtob+G6o24sIFNUSyBuZyZhY2lyYztuIGgmYWdyYXZlO25nLCBC4bqxbmcgY2jhu6luZywgVFQgbmfGsOG7nWkgdOG7kSBjJmFhY3V0ZTtvLCBMaW5rIG5ndeG7k24gcGjhu5F0PC9saT4NCjwvdWw+DQoNCjxoMj5Ib+G6oXQgxJHhu5luZyBk4buxYSB0ciZlY2lyYztuOjwvaDI+DQoNCjx1bD4NCgk8bGk+U+G7sSDEkSZvYWN1dGU7bmcgZyZvYWN1dGU7cCBo4buXIHRy4bujIGPhu6dhIG3hu41pIG5nxrDhu51pIHRyJmVjaXJjO24gTVhIPC9saT4NCgk8bGk+TMawdSB0cuG7ryB0aCZvY2lyYztuZyB0aW4gY2gmaWFjdXRlO25oIGwmYWdyYXZlOyAmbGRxdW87PHN0cm9uZz5DaOG7pyB0JmFncmF2ZTtpIGtob+G6o248L3N0cm9uZz4mbGRxdW87LCAmbGRxdW87PHN0cm9uZz5TVEsgTmcmYWNpcmM7biBoJmFncmF2ZTtuZzwvc3Ryb25nPiZyZHF1bzsmbmJzcDtj4bunYSBr4bq7IGzhu6thIMSR4bqjby48L2xpPg0KCTxsaT5DaOG7qWMgbsSDbmcmbmJzcDs8c3Ryb25nPjxhIGhyZWY9Ii9zY2FtL2NyZWF0ZSI+VOG7kSBjJmFhY3V0ZTtvPC9hPiZuYnNwOzwvc3Ryb25nPsSR4buDIMSRxrBhIHRoJm9jaXJjO25nIHRpbiBj4bunYSBuaOG7r25nIGvhursgbOG7q2EgxJHhuqNvIGwmZWNpcmM7biB3ZWJzaXRlPC9saT4NCgk8bGk+Q2jhu6ljIG7Eg25nIHQmaWdyYXZlO20ga2nhur9tIHRoJm9jaXJjO25nIHRpbiBuZ8aw4budaSBnaWFvIGThu4tjaCBk4buxYSB0aGVvJm5ic3A7Jm5ic3A7PHN0cm9uZz4mbGRxdW87U1RLIE5nJmFjaXJjO24gaCZhZ3JhdmU7bmcmcmRxdW87PC9zdHJvbmc+PC9saT4NCjwvdWw+DQoNCjxwPkMmYWFjdXRlO2MgYuG6oW4gaCZhdGlsZGU7eSBoJmlncmF2ZTtuaCB0aCZhZ3JhdmU7bmggY2hvIG0maWdyYXZlO25oIHRoJm9hY3V0ZTtpIHF1ZW4mbmJzcDs8c3Ryb25nPiZsZHF1bztLaeG7g20gdHJhIFNUSyBOZyZhY2lyYztuIGgmYWdyYXZlO25nLCBTxJBUICZsZHF1bzs8L3N0cm9uZz4mbmJzcDt0ciZlY2lyYztuIHdlYnNpdGUgPHN0cm9uZz48YSBocmVmPSIvIj48IS0tPz0kc2l0ZV90ZW53ZWI7Py0tPjwvYT4gPC9zdHJvbmc+xJHhu4MgdHImYWFjdXRlO25oIGLhu4sgU2NhbSwgbeG6pXQgdGnhu4FuIG9hbiBjJmFhY3V0ZTtjIGLhuqFuIG5oJmVhY3V0ZTsmaGVsbGlwOy4hPC9wPg0KDQo8b2w+DQoJPGxpPjxzdHJvbmc+Q2hlY2tzY2FtLmluZm88L3N0cm9uZz4mbmJzcDtsJmFncmF2ZTsgd2Vic2l0ZSDEkeG7gyBuZ8aw4budaSBkJnVncmF2ZTtuZzxzdHJvbmc+Jm5ic3A7dOG7kSBjJmFhY3V0ZTtvICZhbXA7IGtp4buDbSB0cmEgbmjhu69uZyBk4buvIGxp4buHdSBTY2FtPC9zdHJvbmc+Jm5ic3A7xJHGsOG7o2MgY2hpYSBz4bq7IGLhu59pIG5oaeG7gXUgbmfGsOG7nWkgZCZ1Z3JhdmU7bmcgdHJvbmcgY+G7mW5nIMSR4buTbmcmbmJzcDs8c3Ryb25nPk1YSCBGYWNlYm9vazwvc3Ryb25nPjwvbGk+DQoJPGxpPk5o4buvbmcgYiZhZ3JhdmU7aSBkbyBBZG1pbiDEkcSDbmcgxJHhu4F1IGMmb2FjdXRlOyBMaW5rIG5ndeG7k24gcGjhu5F0IHRyJmVjaXJjO24gRmFjZWJvb2ssIHYmYWdyYXZlOyBQcm9maWxlIG5nxrDhu51pIMSRxINuZyBwaOG7kXQ8L2xpPg0KCTxsaT5OaOG7r25nIGImYWdyYXZlO2kgxJHEg25nIGRvIHRoJmFncmF2ZTtuaCB2aSZlY2lyYztuIHThu5EgYyZhYWN1dGU7byB0aCZpZ3JhdmU7Jm5ic3A7PHN0cm9uZz5uZ8aw4budaSDEkcSDbmcgbuG7mWkgZHVuZyB04buRIGMmYWFjdXRlO28gc+G6vSBjaOG7i3UgdHImYWFjdXRlO2NoIG5oaeG7h208L3N0cm9uZz4mbmJzcDt24buBIHQmaWFjdXRlO25oIHgmYWFjdXRlO2MgdGjhu7FjIGPhu6dhIG7hu5lpIGR1bmcgbSZpZ3JhdmU7bmggxJHEg25nIGwmZWNpcmM7bi48L2xpPg0KCTxsaT5DaOG7iSBjJm9hY3V0ZTsgU8SQVCB04buRIGMmYWFjdXRlO28gbuG6sW0g4bufIG3hu6VjIGxpJmVjaXJjO24gaOG7hyBj4bunYSBiJmFncmF2ZTtpIHBo4buRdCwgbmjhuq9uIHRpbiBTTVMgY2hvIGFkbWluIG3hu5tpIGMmb2FjdXRlOyB0aOG7gyB4Jm9hY3V0ZTthIMSRxrDhu6NjIMSRxqFuIHThu5EgYyZhYWN1dGU7bzwvbGk+DQoJPGxpPldlYnNpdGUgbHUmb2NpcmM7biBsdSZvY2lyYztuIGMmb2FjdXRlOyBraCZhY2lyYzt1Jm5ic3A7PHN0cm9uZz5raeG7g20gY2jhu6luZyB24bubaSBuaOG7r25nIG7hu5lpIMSRxINuZyBsJmVjaXJjO248L3N0cm9uZz4sIG5oxrBuZyZuYnNwOzxzdHJvbmc+a2gmb2NpcmM7bmcgdGjhu4MgY2jhuq9jIGNo4bqvbiAxMDAlPC9zdHJvbmc+Jm5ic3A7dGgmb2NpcmM7bmcgdGluIGwmYWdyYXZlOyBobyZhZ3JhdmU7biB0byZhZ3JhdmU7biBjaCZpYWN1dGU7bmggeCZhYWN1dGU7YywgVuG6rXkgbiZlY2lyYztuIG5nxrDhu51pIGLhu4sgdOG7kSBjJmFhY3V0ZTtvIGMmb2FjdXRlOyB0aOG7gzxzdHJvbmc+Jm5ic3A7PGEgaHJlZj0iLyI+TGkmZWNpcmM7biBI4buHPC9hPjwvc3Ryb25nPiZuYnNwO3bhu5tpIG5nxrDhu51pIHThu5EgYyZhYWN1dGU7byBob+G6t2MgQWRtaW4gxJHhu4MgxJHGsOG7o2MgZ2nhuqNpIHF1eeG6v3Q8L2xpPg0KPC9vbD4NCg0KPGgyPkzhu51pIG114buRbiBuJm9hY3V0ZTtpOjwvaDI+DQoNCjx1bD4NCgk8bGk+PHN0cm9uZz5N4buNaSB0aOG7qSB0ciZlY2lyYztuIFdlYnNpdGUgxJHhu4F1IG1p4buFbiBwaCZpYWN1dGU7PC9zdHJvbmc+LiBO4bq/dSBuaOG7nSB3ZWJzaXRlIGLhuqFuIMSRJmF0aWxkZTsgYyZvYWN1dGU7IGzhuqduJm5ic3A7PHN0cm9uZz5QaCZhYWN1dGU7dCBoaeG7h24gdiZhZ3JhdmU7IG4mZWFjdXRlOyB0ciZhYWN1dGU7bmggxJHGsOG7o2MgU2NhbTwvc3Ryb25nPiZuYnNwO2hv4bq3YyBnaSZ1YWN1dGU7cCAmaWFjdXRlO2NoIDEgcGjhuqduIG4mYWdyYXZlO28gxJEmb2FjdXRlOyBjaG8gYuG6oW48c3Ryb25nPi4mbmJzcDs8L3N0cm9uZz5IJmF0aWxkZTt5Jm5ic3A7PHN0cm9uZz7hu6duZyBo4buZIG0maWdyYXZlO25oJm5ic3A7PC9zdHJvbmc+YuG6sW5nIG5o4buvbmcmbmJzcDs8c3Ryb25nPmNoaWEgc+G6uywgZ2ltIG5oJm9hY3V0ZTttLCBn4butaSBiJmFncmF2ZTtpIHThu5EgYyZhYWN1dGU7bywgZ+G7rWkgZGF0YSBzY2FtLi4mbmJzcDs8L3N0cm9uZz5uaMawIHbhuq15IHPhur0gZ2kmdWFjdXRlO3AgxJHGsOG7o2MgY+G7mW5nIMSR4buTbmcgbmhp4buBdSBoxqFuJmhlbGxpcDsgQyZhYWN1dGU7bSDGoW4uIEMmYWFjdXRlO20gxqFuIGMmYWFjdXRlO2MgYuG6oW4gcuG6pXQgbmhp4buBdSZyZHF1bzs8L2xpPg0KCTxsaT48c3Ryb25nPldlYnNpdGUgcGgmYWFjdXRlO3QgdHJp4buDbjwvc3Ryb25nPiZuYnNwO3Bo4bqnbiBs4bubbiZuYnNwOzxzdHJvbmc+bmjhu50gdiZhZ3JhdmU7byBz4buxIOG7p25nIGjhu5kmbmJzcDs8L3N0cm9uZz52JmFncmF2ZTsmbmJzcDs8c3Ryb25nPnRydXnhu4FuIHRoJm9jaXJjO25nPC9zdHJvbmc+Jm5ic3A7Y+G7p2EgYyZhYWN1dGU7YyBi4bqhbiZuYnNwOzxzdHJvbmc+QWRtaW4gR3JvdXAuPC9zdHJvbmc+PC9saT4NCgk8bGk+PHN0cm9uZz5OaOG7r25nIEFFIGwmYWdyYXZlO20gRFYgdXkgdCZpYWN1dGU7biDEkcaw4bujYyBtJmlncmF2ZTtuaCB0aW4gdMaw4bufbmcgdiZhZ3JhdmU7IGdp4bubaSB0aGnhu4d1PC9zdHJvbmc+Jm5ic3A7dHImZWNpcmM7biBXZWJzaXRlIGMmb2FjdXRlOyB0aOG7gyZuYnNwOzxzdHJvbmc+4bunbmcgaOG7mTwvc3Ryb25nPiZuYnNwO20maWdyYXZlO25oIGLhurFuZyBuaOG7r25nIGImYWdyYXZlO2kgcG90czxzdHJvbmc+Jm5ic3A7R2nhu5tpIHRoaeG7h3Ugd2Vic2l0ZTwvc3Ryb25nPiZuYnNwO3bhu5tpIGFlIGLhuqFuIGImZWdyYXZlOyB0ciZlY2lyYztuPHN0cm9uZz4mbmJzcDtGQiBjJmFhY3V0ZTsgbmgmYWNpcmM7bjwvc3Ryb25nPiZuYnNwO2hv4bq3YyZuYnNwOzxzdHJvbmc+R3JvdXAgYWUgcXXhuqNuIGwmeWFjdXRlOzwvc3Ryb25nPiZuYnNwOy4uIE0maWdyYXZlO25oIGMmYWFjdXRlO20gxqFuITwvbGk+DQoJPGxpPk0maWdyYXZlO25oIHThuqFvIHJhIHdlYnNpdGUsIHYmYWdyYXZlOyBtJmlncmF2ZTtuaCBjxaluZyBoaeG7g3Ugbmjhu69uZyBo4bqhbiBjaOG6vywgxJFp4buDbSB54bq/dSBj4bunYSBuJm9hY3V0ZTsuIE0maWdyYXZlO25oIG1vbmcgYyZhYWN1dGU7YyZuYnNwOzxzdHJvbmc+QUUgY2FvIHRo4bunIHRyb25nIGdp4bubaSBDb2RlciwgTU1PLCBUcmljayBGQiwgYiZlY2lyYztuIGMmb2NpcmM7bmcgYW4sIGJhbiBuZyZhZ3JhdmU7bmggYyZhYWN1dGU7YyBj4bqlcDwvc3Ryb25nPiZoZWxsaXA7Jm5ic3A7IOG7p25nIGjhu5kgbSZpZ3JhdmU7bmgsIOG7p25nIGjhu5kgd2Vic2l0ZSDEkeG7gyBsb+G6oWkgYuG7jyBuaOG7r25nIHRoJmFncmF2ZTtuaCBwaOG6p24gSyBsJmFncmF2ZTttIG0mYWdyYXZlOyDEkSZvZ3JhdmU7aSBjJm9hY3V0ZTsgxINuLCBTY2FtLCBM4burYSDEkeG6o28gdHImZWNpcmM7biBteGguPC9saT4NCgk8bGk+V2Vic2l0ZSB04bqhbyByYSBk4buxYSB0ciZlY2lyYztuICZ5YWN1dGU7IHTGsOG7n25nIGdpJnVhY3V0ZTtwICZpYWN1dGU7Y2ggY2hvIGPhu5luZyDEkeG7k25nIHhhbmggc+G6oWNoLCB24bqteSBuJmVjaXJjO24gbW9uZyBtJmlncmF2ZTtuaCBt4buNaSBuZ8aw4budaSBjJnVncmF2ZTtuZyB4JmFjaXJjO3kgZOG7sW5nIGNo4bupJm5ic3A7PHN0cm9uZz7EkeG7q25nIHMmYWNpcmM7biBzaSwgcGgmYWFjdXRlOyBob+G6oWk8L3N0cm9uZz48L2xpPg0KCTxsaT5O4buZaSBkdW5nIHRyJmVjaXJjO24gd2Vic2l0ZSDEkcaw4bujYyBraeG7g20gZHV54buHdCBk4buxYSB0ciZlY2lyYztuIGtpbmggbmdoaeG7h20gcGgmYWNpcmM7biB0JmlhY3V0ZTtjaCBj4bunYSBtJmlncmF2ZTtuaCBuJmVjaXJjO24gduG6q24gc+G6vSBjJm9hY3V0ZTsgdGjhu4MgYyZvYWN1dGU7IG5o4buvbmcgc2FpIHMmb2FjdXRlO3QsIG5o4bqnbSBs4bqrbiwgVuG6rXkgbiZlY2lyYztuIG3hu41pIHbhuqVuIMSR4buBIHbhu4Egc2FpIHMmb2FjdXRlO3QsIG5o4bqnbSBs4bqrbiB0aCZvY2lyYztuZyB0aW4gYyZhYWN1dGU7YyBi4bqhbiB2dWkgbCZvZ3JhdmU7bmcgbGkmZWNpcmM7biBo4buHIHbhu5tpIG0maWdyYXZlO25oIMSR4buDIMSRxrDhu6NjIGdp4bqjaSBxdXnhur90PC9saT4NCgk8bGk+PHN0cm9uZz48IS0tPz0kc2l0ZV90ZW53ZWI7Py0tPjwvc3Ryb25nPiB04buxIHThuqFvIHJhJm5ic3A7PHN0cm9uZz5s4bujaSBuaHXhuq1uPC9zdHJvbmc+Jm5ic3A7diZhZ3JhdmU7IGQmdWdyYXZlO25nIGNoJmlhY3V0ZTtuaDxzdHJvbmc+Jm5ic3A7bOG7o2kgbmh14bqtbjwvc3Ryb25nPiZuYnNwO8SRJm9hY3V0ZTsgxJHhu4MmbmJzcDs8c3Ryb25nPmR1eSB0ciZpZ3JhdmU7IHdlYnNpdGU8L3N0cm9uZz4mbmJzcDt2JmFncmF2ZTsmbmJzcDs8c3Ryb25nPnRy4bqjIHRp4buBbiBjaG8gQ1RWIHRodSB0aOG6rXAgZOG7ryBsaeG7h3UgbOG7q2EgxJHhuqNvPC9zdHJvbmc+Jm5ic3A7YuG7lSBzdW5nIHYmYWdyYXZlO28gZGF0YTwvbGk+DQoJPGxpPkNhbSBr4bq/dCAxMDAlIENvZGUgd2Vic2l0ZSB3cCDEkcahbiBnaeG6o24sIGThu4Ugc+G7rSBk4bulbmcuJm5ic3A7PHN0cm9uZz5raCZvY2lyYztuZyB5JmVjaXJjO3UgY+G6p3UsIHRodSB0aOG6rXAsIGzGsHUgdHLhu688L3N0cm9uZz4mbmJzcDs8c3Ryb25nPmLhuqV0IGsmaWdyYXZlOyB0aCZvY2lyYztuZzwvc3Ryb25nPiZuYnNwOzwvbGk+DQoJPGxpPjxzdHJvbmc+QURNSU46ICZuYnNwOzwvc3Ryb25nPjogPGEgaHJlZj0iaHR0cHM6Ly90Lm1lL0NhcmR2aXAyNDdkZXYiPlbEg24gS2gmYWFjdXRlO25oJm5ic3A7PC9hPjwvbGk+DQo8L3VsPg0K'),
(60, 'javascript_footer', ''),
(61, 'site_key', '6LfDtFgqAAAAAJUicIyx0PmdvW-0jcPsxTgax-K5'),
(62, 'secret_key', '6LfDtFgqAAAAALhaXIW7FQpN606nYicqJt0dfcea'),
(63, 'baohiem_notification', '8J+UkiBGYiBSZWFsIDogIntuYW1lfSINCvCfj4YgR0RWIFThuqFpIDoge2RvbWFpbn0NCvCfjoAgaHR0cHM6Ly97ZG9tYWlufS97Y29kZX0='),
(64, 'scam_notification', '4pqg77iPIEPhuqJOSCBCw4FPOiDEkMOCWSBMw4AgRkIgU0NBTQ0K8J+aq0jDo3kgYmxvY2sgbmdheQ0KIGh0dHBzOi8ve2RvbWFpbn0vc2NhbXMve2NvZGV9Lmh0bWw='),
(65, 'not_fb_notification', '8J+VtSDEkMOieSBraMO0bmcgcGjhuqNpIGzDoCBsaW5rIEZCIGPhu6dhIGFkbWluIHtkb21haW59IA0K4pqg77iPIEjDo3kgdHJ1bmcgZ2lhbiBraGkgZ2lhbyBk4buLY2ggxJHhu4MgdHLDoW5oIGLhu4sgc2NhbSAh'),
(66, 'note_dichvuright', 'VXBkYXRlIFBoacOqbiBC4bqjbiBN4bubaSBC4bufaSBEaWNoVnVSaWdodC5jb20gfCBMxrB1IMO9IGPDoWMgYuG6oW4gdnVpIGzDsm5nIHPDoGkgaG9zdGluZyDEkeG7gyB1cGRhdGUgY29kZSBuaMOpIHZwcyB0aMOsIHPhur0ga2jDtG5nIMSRxrDhu6NjIGjhu5cgdHLhu6MgdXBkYXQgYXV0byBuaMOp'),
(67, 'noidungnap_bh', 'Don hang cs '),
(68, 'setting_guarantee', 'PHA+SMaw4bubbmcgZOG6q24gxJHEg25nIGsmaWFjdXRlOyBnJm9hY3V0ZTtpIGLhuqNvIGhp4buDbTwvcD4NCg==');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tocaoscam`
--

CREATE TABLE `tocaoscam` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `money` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `ly_do` text,
  `status` varchar(32) NOT NULL,
  `sdt` text,
  `ngan_hang` text,
  `stk` text,
  `hoten_np` text,
  `sdt_np` text,
  `link_report` text,
  `linkfb` text,
  `code` text,
  `loai` varchar(255) CHARACTER SET armscii8 NOT NULL,
  `view` varchar(225) DEFAULT NULL,
  `cmt` text,
  `approved` int(11) NOT NULL,
  `disapprove` int(11) NOT NULL,
  `ngay` date DEFAULT NULL,
  `user_id` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text,
  `name` text NOT NULL,
  `password` text,
  `phone` text NOT NULL,
  `email` text,
  `xt_email` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `token` text,
  `ip` text,
  `device` text,
  `otp` text,
  `money` int(11) NOT NULL DEFAULT '0',
  `total_money` int(11) NOT NULL DEFAULT '0',
  `ck_user` int(11) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `time_request` int(11) NOT NULL DEFAULT '0',
  `create_date` text,
  `update_date` text,
  `time_session` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `phone`, `email`, `xt_email`, `level`, `token`, `ip`, `device`, `otp`, `money`, `total_money`, `ck_user`, `banned`, `time_request`, `create_date`, `update_date`, `time_session`) VALUES
(14, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '0978266987', 'cskh.dichvuright@gmail.com', 1, 1, 'ab99ad0ed830a8dfbe97dddd8c83804d', '104.28.211.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, 0, 0, 0, 0, 1728184430, '2024/10/03 20:55:57', '1727963757', '1728185193');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `api_logo`
--
ALTER TABLE `api_logo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bangchung`
--
ALTER TABLE `bangchung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_scam`
--
ALTER TABLE `category_scam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `doitac`
--
ALTER TABLE `doitac`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gdv`
--
ALTER TABLE `gdv`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `guarantee`
--
ALTER TABLE `guarantee`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `log_balance`
--
ALTER TABLE `log_balance`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pack_baohiem`
--
ALTER TABLE `pack_baohiem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tocaoscam`
--
ALTER TABLE `tocaoscam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `api_logo`
--
ALTER TABLE `api_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `bangchung`
--
ALTER TABLE `bangchung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `category_scam`
--
ALTER TABLE `category_scam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `doitac`
--
ALTER TABLE `doitac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `gdv`
--
ALTER TABLE `gdv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `guarantee`
--
ALTER TABLE `guarantee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `log_balance`
--
ALTER TABLE `log_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `pack_baohiem`
--
ALTER TABLE `pack_baohiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `tocaoscam`
--
ALTER TABLE `tocaoscam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
