-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2024 lúc 08:38 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fourtech`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Samsung', 'brand/1731764548409-samsung-logo.png', '2024-11-13 21:13:47', '2024-11-16 20:42:28', NULL),
(3, 'Iphone', 'brand/1731507274338-iphon-logo.png', '2024-11-13 21:14:34', '2024-11-13 21:14:34', NULL),
(4, 'ACER', 'brand/1731507285287-acer-logo.png', '2024-11-13 21:14:45', '2024-11-13 21:14:45', NULL),
(5, 'DAREU', 'brand/1731507296220-dareu.png', '2024-11-13 21:14:56', '2024-11-13 21:14:56', NULL),
(9, 'Xiaomi', 'brand/1731627980675-Xiaomi-Logo.png', '2024-11-15 06:46:20', '2024-11-15 06:46:20', NULL),
(10, 'DELL', 'brand/1731627994422-Dell-log.png', '2024-11-15 06:46:34', '2024-11-15 06:46:34', NULL),
(11, 'ThinkPad', 'brand/1731628013656-ThinkPad-Logo.wine.png', '2024-11-15 06:46:53', '2024-11-15 06:46:53', NULL),
(12, 'Sony', 'brand/1731628029175-Sony-logo.png', '2024-11-15 06:47:09', '2024-11-15 06:47:09', NULL),
(13, 'MSi', 'brand/1731628047530-msi-logo.png', '2024-11-15 06:47:27', '2024-11-15 06:47:27', NULL),
(14, 'ASUS', 'brand/1732540369840-logo-Asus.jpg', '2024-11-15 06:58:48', '2024-11-26 08:54:57', NULL),
(16, 'Lenovo', 'brand/1732776132328-1280px-Lenovo_Global_Corporate_Logo.png', '2024-11-28 13:42:12', '2024-11-28 13:42:12', NULL),
(17, 'LG', 'brand/1732806145068-logo-lg-vector-inkythuatso-01-30.jpg', '2024-11-28 22:02:25', '2024-11-28 22:02:25', NULL),
(18, ' Razer', 'brand/1732806728640-Razer-Symbol.jpg', '2024-11-28 22:12:08', '2024-11-28 22:12:08', NULL),
(19, 'Logitech', 'brand/1732807248967-logo-logitech-moi-dongphucsongph.jpg', '2024-11-28 22:20:49', '2024-11-28 22:20:49', NULL),
(20, 'Microsoft', 'brand/1732812944843-8867.Microsoft_5F00_Logo_2D00_fo.jpg', '2024-11-28 23:55:44', '2024-11-28 23:55:44', NULL),
(21, 'E-DRA', 'brand/1733091692644-logo-edra.jpg', '2024-12-02 05:21:32', '2024-12-02 05:21:32', NULL),
(22, 'Warrior', 'brand/1733092490318-round-icon-spartan-helmet.jpg', '2024-12-02 05:34:50', '2024-12-02 05:34:50', NULL),
(23, 'Baseus', 'brand/1733105470052-images.png', '2024-12-02 09:11:10', '2024-12-02 09:11:10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 6, '2024-11-24 15:22:23', '2024-11-24 15:22:23', NULL),
(10, 4, '2024-11-25 11:28:40', '2024-11-25 11:28:40', NULL),
(11, 1, '2024-11-25 20:24:23', '2024-11-25 20:24:23', NULL),
(15, 7, '2024-11-29 01:41:20', '2024-11-29 01:41:20', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_item`
--

INSERT INTO `cart_item` (`id`, `cart_id`, `product_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(125, 9, 37, 1, '2024-12-01 23:09:39', '2024-12-02 01:03:19', NULL),
(127, 11, 73, 2, '2024-12-02 12:33:05', '2024-12-02 12:33:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Laptop', 'category/1731507765953-laptop.webp', '2024-11-13 21:22:46', '2024-11-13 21:22:46', NULL),
(3, 'Tai Nghe', 'category/1731623515276-headphone.webp', '2024-11-13 21:23:19', '2024-11-15 05:31:55', NULL),
(5, 'Balo', 'category/1731624405677-backpack.webp', '2024-11-15 05:20:32', '2024-11-15 05:46:45', NULL),
(7, 'Ghế Gaming', 'category/1731626454171-gamingchair.webp', '2024-11-15 05:21:31', '2024-11-15 06:20:54', NULL),
(8, 'Sạc Dự Phòng', 'category/1731626501325-powerbank.webp', '2024-11-15 06:21:41', '2024-11-15 06:21:41', NULL),
(9, 'Máy tính bàn  PC', 'category/1731626556951-pc.webp', '2024-11-15 06:22:36', '2024-12-02 11:31:30', NULL),
(10, 'Máy Chơi Game', 'category/1731626575977-playgame.webp', '2024-11-15 06:22:55', '2024-11-15 06:22:55', NULL),
(11, 'Máy Tính Bảng', 'category/1731626607120-tablet.webp', '2024-11-15 06:23:27', '2024-11-15 06:23:27', NULL),
(12, 'Củ Sạc Cáp Sạc', 'category/1731626658620-cable.webp', '2024-11-15 06:24:18', '2024-12-02 11:30:46', NULL),
(13, 'Bàn Phím', 'category/1731626685625-keyboard.webp', '2024-11-15 06:24:45', '2024-11-15 06:24:45', NULL),
(15, 'Màn hình', 'category/1732540828791-monitor.webp', '2024-11-15 06:25:22', '2024-11-25 20:20:28', NULL),
(16, 'Chuột', 'category/1732507947765-mouse.webp', '2024-11-25 11:12:27', '2024-11-25 11:12:27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `UserContact` varchar(255) DEFAULT NULL,
  `EmailContact` varchar(255) DEFAULT NULL,
  `PhoneContact` varchar(255) DEFAULT NULL,
  `messageContact` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `UserContact`, `EmailContact`, `PhoneContact`, `messageContact`, `createdAt`, `updatedAt`, `deleted_at`) VALUES
(2, 'Trương Văn Tiến Đạt', 'dattruong07092001@gmail.com', '0374001914', 'test', '2024-11-29 00:43:03', '2024-11-29 00:43:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `createdAt`, `updatedAt`) VALUES
(1, 'Lịch nghỉ Tết Nguyên Đán 2025 là vào ngày nào dương lịch? ', '<p><strong>Lịch nghỉ Tết Nguyên Đán 2025 là vào ngày nào dương lịch?</strong>&nbsp;</p><p>Mùng 1 Tết Âm lịch 2025 rơi vào ngày 29/01/2025 theo lịch Dương (tức thứ Tư), đánh dấu thời điểm khởi đầu một năm Âm lịch mới. Như vậy, thời gian nghỉ tết sẽ rơi vào ngày 27/01/2024 (tức 28 Tết Âm lịch) cho đến hết ngày 31/01/2024 (tức mùng 3 Tết Âm lịch). Đây không chỉ là thời điểm bắt đầu cho một năm mới mà còn là khoảng thời gian là người nhà đoàn viên, cùng nhau chia sẻ những câu chuyện trong năm qua.&nbsp;</p><p>&nbsp;</p><p><strong>Lịch nghỉ Tết 2025 kéo dài bao nhiêu ngày?</strong>&nbsp;</p><p>Thời gian nghỉ Tết 2025 sẽ kéo dài 9 ngày, bắt đầu từ ngày 25/01/2025 và kết thúc vào ngày 02/02/2025 theo Dương lịch. Với lịch nghỉ Tết Ất Tỵ 2025 dài ngày, người người nhà nhà sẽ có cơ hội sum họp, quây quần bên nhau, cùng nhau đón một cái Tết thật ấm áp và ý nghĩa. Đây chính là dịp để ta gửi gắm những lời chúc tốt đẹp nhất đến người thân và chuẩn bị cho một năm mới nhiều may mắn.</p><p>&nbsp;</p><p><strong>&nbsp;Vì sao được nghỉ tết âm lịch 2025 liên tục 9 ngày?</strong>&nbsp;</p><p>Theo công văn mới nhất ngày 26/11/2024, Thủ tướng Chính phủ đã đồng ý với đề xuất của Bộ Lao động - Thương binh và Xã hội về việc nghỉ Tết Âm lịch cùng các dịp lễ khác trong năm. Theo đó, các công - viên chức, người lao động sẽ được nghỉ liên tục 5 ngày từ 27/01/2025 đến 31/01/2025. Tuy nhiên ngày nghỉ lễ Tết 2025 lại nhằm vào những ngày làm việc trong tuần do đó người lao động có thể nghỉ thêm 2 ngày cuối tuần trước và sau khi nghỉ Tết. Như vậy, lịch nghỉ Tết Nguyên Đán 2025 sẽ kéo dài từ 25/01/2025 cho đến hết 02/02/2025 (tức 26 tháng Chạp cho đến hết mùng 5 tháng Giêng). Lịch nghỉ tết Nguyên Đán Ất Tỵ 2025 của công chức, viên chức Theo kế hoạch đã được phê duyệt, Tết Nguyên đán 2025 sẽ là một kỳ nghỉ dài ngày, kéo dài từ 26 tháng Chạp đến hết mùng 5 tháng Giêng (tức từ ngày 25/01 đến ngày 02/02). Các cán bộ, công chức, viên chức sẽ có tổng cộng 9 ngày nghỉ liên tục. Quyết định này không chỉ đảm bảo thời gian để mọi người sum họp gia đình mà còn tạo điều kiện thuận lợi cho việc đi lại và du lịch trong dịp lễ.</p>', 'news/1732818264205-lich-nghi-tet-nguyen-dan-thumbna.jpg', '2024-11-29 01:24:24', '2024-12-02 01:45:01'),
(2, 'Black Friday GEARVN 2024 - Săn DEAL SỐC giảm giá đến 99%', '<p><strong>Bạn đã sẵn sàng cho một mùa Black Friday đầy sôi động?</strong>&nbsp;</p><p>GEARVN sẽ khiến bạn không thể rời mắt với những deal hot đến nghẹt thở trong chương trình Black Friday GEARVN 2024 năm nay. Hàng trăm sản phẩm công nghệ từ laptop, PC đến phụ kiện đều được giảm giá sâu đến 99% từ ngày 29/11 - 01/12/2024. Hãy cùng khám phá ngay những ưu đãi bất ngờ này!</p><p>&nbsp;</p><p><strong>Black Friday GEARVN 2024 sale ngày bao nhiêu?</strong>&nbsp;</p><p>Chương trình khuyến mãi Black Friday 2024 của GEARVN sẽ chính thức diễn ra từ ngày 29/11 đến 01/12/2024. Trong 4 ngày vàng này, hàng loạt sản phẩm công nghệ sẽ được giảm giá sâu đến 99%, với giá chỉ từ 9000đ tạo nên cơ hội \"săn sale\" cực kỳ hấp dẫn cho các game thủ. Thông tin thời gian cụ thể diễn ra các sự kiện như sau: Thời gian bắt đầu sự kiện: 8:00 ngày 29/11/2024 - 30/11/2024 - 01/12/2024 (Có thể sẽ mở bán sớm hơn). Thời gian sắp xếp line xếp hàng: 16:00 ngày 28/11/2024 - 29/11/2024 - 30/11/2024</p>', 'news/1732818454163-black-friday-gearvn_b7bb16a2dbdf.jpg', '2024-11-29 01:27:34', '2024-12-02 04:07:28'),
(6, 'Tất tần tật những gì chúng ta đã biết về Tesla Phone - Điện thoại đầu tiên của Elon Musk', '<p><strong>Tesla sẽ lấn sân sang thị trường smartphone khi thông báo chuẩn bị tung ra thị trường chiếc </strong><a href=\"https://cellphones.com.vn/mobile.html\"><strong>điện thoại thông minh</strong></a><strong> Tesla Model Pi.</strong></p><p>Vào ngày 26 tháng 11, Elon Musk đã đăng dòng trạng thái trên Twitter với nội dung “Tôi rất hy vọng điều đó sẽ không sảy ra, nhưng nếu không có sự lựa chọn nào khác, chính tôi sẽ tạo ra một chiếc điện thoại thay thế”. Mặc dù, ông chủ mới của Twitter không nói rõ ý nghĩa của câu nói này là gì, nhưng nhiều người đã suy đoán và cho rằng Elon Musk rất có khả năng sẽ tự tạo thương hiệu điện thoại của riêng mình để cạnh tranh với <a href=\"https://cellphones.com.vn/apple\">Apple</a> và Google trên thị trường smartphone.</p><p>Tin tức này tuy chưa được chính chủ xác nhận, cũng không có chính bất kỳ thông tin nào từ Tesla. Nhưng đã có một số <a href=\"https://cellphones.com.vn/mobile/hang-sap-ve.html\">tin đồn</a> đoán cho rằng, thương hiệu điện thoại này được gọi là điện thoại Tesla hoặc điện thoại Tesla Pi. Bên cạnh đó họ còn biết được các tính năng, giá cả và ngày phát hành của nó.</p><p>&nbsp;</p><p><strong>Thiết kế tương tự các flapship khác</strong></p><p>Không có bất kỳ một thông tin nào bị rò rỉ từ nhà sản xuất, nhưng các nhà thiết kế sáng tạo chỉ ra rằng, điện thoại Tesla được thiết kế tương tự như những chiếc flagship lớn của các \'ông lớn\' ngành <a href=\"https://cellphones.com.vn/sforum\">công nghệ</a> như Google, Apple và Samsung. Tesla Phone sở hữu vẻ bề ngoài được trau chuốt vuông vức, một số nút ở các cạnh bên ngoài và đi kèm ba đến bốn <a href=\"https://cellphones.com.vn/phu-kien/camera.html\">camera</a> phía sau.</p><figure class=\"image\"><img style=\"aspect-ratio:1000/667;\" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2023/02/thong_tin_ve_dien_thoai_tesla_4.jpg\" alt=\"Thiết kế của điện thoại Tesla sẽ giống với các flapship khác\" width=\"1000\" height=\"667\"><figcaption>Thiết kế của điện thoại Tesla sẽ giống với các flapship khác</figcaption></figure><p>Ngoài ra, thân máy được làm bằng kim loại, nổi bật nhất chính là logo Tesla giữa để kết nối toàn bộ gói lại với nhau. Nhìn tổng quan, chiếc Tesla Phone sẽ có thiết kế đi theo hướng tối giản, vô cùng bóng bẩy và đặc biệt nhất là nó trông như một thiết bị sang trọng cao cấp.</p>', 'news/1733087953832-thong_tin_ve_dien_thoai_tesla_2.jpg', '2024-12-02 04:19:13', '2024-12-02 04:19:34'),
(7, '[HOT] Flash Sale 1/12: Balo có màn hình LED chỉ 990K, loa Sony 890K, số lượng có hạn', '<p><strong>Sale Black Friday 2024 tại CellphoneS – săn deal siêu hot! Balo màn hình LED chỉ 990K, loa Sony chỉ 890K, và nhiều ưu đãi sốc khác. Số lượng cực có hạn, nhanh tay chốt đơn ngay và luôn.</strong></p><p>&nbsp;</p><p>Cơ hội săn deal không thể bỏ lỡ tại CellphoneS! Nếu bạn đang tìm kiếm những món đồ <a href=\"https://cellphones.com.vn/sforum\">công nghệ</a> độc đáo hay phụ kiện hiện đại với mức giá không tưởng, thì đây chính là thời điểm vàng. Balo màn hình LED chỉ 990K, loa Sony chất lượng cao chỉ 890K, và hàng loạt ưu đãi sốc khác đang chờ đợi bạn. Số lượng có hạn, đừng bỏ lỡ cơ hội “chốt đơn” nhanh tay để sở hữu ngay những sản phẩm hot nhất năm với giá cực hời. Khám phá ngay hôm nay để không bỏ lỡ!</p><p>&nbsp;</p><h2><strong>Balo Laptop Divoom Pixoo Led BackPack 2022</strong></h2><ul><li><strong>Thời gian sale Black Friday:</strong> 9 - 11 giờ ngày 1/12</li><li>Giá niêm yết: 3,000,000 đồng</li><li><strong>Giá khuyến mãi: 990,000 đồng</strong></li></ul><p>Chiếc balo Divoom Pixoo LED Backpack từng gây sốt với thiết kế công nghệ độc đáo, nay trở lại với mức giá cực sốc chỉ 990K trong khung giờ 9-11h ngày 01/12/2024, giới hạn 20 chiếc duy nhất tại CellphoneS. Với màn hình LED 16x16 pixel hỗ trợ hơn 16.5 triệu màu, bạn có thể tùy chỉnh hình ảnh, hoạt ảnh theo ý thích hoặc thậm chí hiển thị hình ảnh thần tượng.</p><figure class=\"image\"><img style=\"aspect-ratio:1200/800;\" src=\"https://cdn-media.sforum.vn/storage/app/media/luudat/Balo%20Laptop%20Divoom%20Pixoo%20Led%20BackPack/tren-tay-balo-laptop-divoom-pixoo-led-backpack-18.jpg\" alt=\"Balo Laptop Divoom Pixoo Led BackPack\" width=\"1200\" height=\"800\"><figcaption>Chiếc balo Divoom Pixoo LED Backpack từng gây sốt với thiết kế công nghệ độc đáo</figcaption></figure><p>Balo được làm từ chất liệu poly cứng cáp, chống nước tốt, có sức chứa vừa đủ cho laptop 15.6 inch và phụ kiện. Điểm nổi bật còn nằm ở khả năng kết nối qua ứng dụng Divoom, cho phép điều khiển hiển thị, chơi game, hoặc biến balo thành công cụ nhạc DJ sáng tạo. Với mức giá chưa đến 1 triệu, đây là một món phụ kiện thời trang và công nghệ không thể bỏ lỡ!</p>', 'news/1733094297030-tren-tay-balo-laptop-divoom-pixo.jpg', '2024-12-02 06:04:57', '2024-12-02 06:04:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0: Đang chuẩn bị hàng. 1: Đang vận chuyển. 2: Đã giao hàng',
  `note` text DEFAULT NULL,
  `payment_methor` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `payment_status` int(11) NOT NULL COMMENT '0: Chưa thanh toán. 1: Đã thanh toán',
  `order_id_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `user_id`, `cart_id`, `total_price`, `discount`, `status`, `note`, `payment_methor`, `created_at`, `updated_at`, `deleted_at`, `address`, `payment_status`, `order_id_code`) VALUES
(40, 6, 9, 101980000, NULL, 2, NULL, 'Thanh toán khi nhận hàng (COD)', '2024-09-30 01:35:09', '2024-11-29 01:39:59', NULL, 'Xuân Hồi, Liên Thủy, Lệ Thủy, Quảng Bình', 1, 'ORDER_1732818909037'),
(42, 7, 15, 12840000, NULL, 2, NULL, 'Thanh toán đơn hàng qua MOMO', '2024-10-16 01:43:05', '2024-12-02 01:32:01', NULL, '24 Lý Thường Kiệt, thị trấn Kiến Giang, Lệ Thủy, Quảng Bình', 1, 'ORDER_MOMO_1732819384653'),
(43, 7, 15, 33750000, NULL, 2, NULL, 'Thanh toán đơn hàng qua MOMO', '2024-11-29 01:47:50', '2024-11-29 01:48:21', NULL, '4 Phước Lý 7, phường Hòa An, quận Liên Chiểu, tp Đà Nẵng', 0, 'ORDER_MOMO_1732819670538'),
(44, 6, 9, 2300000, NULL, 2, NULL, 'Thanh toán khi nhận hàng (COD)', '2024-11-30 14:00:08', '2024-12-02 01:32:43', NULL, 'Xuân Hồi, Liên Thủy, Lệ Thủy, Quảng Bình', 1, 'ORDER_1732950008674'),
(45, 6, 9, 2140000, NULL, 0, NULL, 'Thanh toán khi nhận hàng (COD)', '2024-11-30 14:00:44', '2024-11-30 14:00:44', NULL, 'Xuân Hồi, Liên Thủy, Lệ Thủy, Quảng Bình', 0, 'ORDER_1732950044613'),
(46, 6, 9, 390000, NULL, 1, NULL, 'Thanh toán đơn hàng qua MOMO', '2024-11-30 14:00:57', '2024-11-30 14:45:58', NULL, 'Xuân Hồi, Liên Thủy, Lệ Thủy, Quảng Bình', 0, 'ORDER_MOMO_1732950057138');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(60, 40, 46, 1700000, 55, '2024-09-30 01:35:09', '2024-09-30 01:35:09', NULL),
(61, 40, 34, 990000, 1, '2024-09-30 01:35:09', '2024-09-30 01:35:09', NULL),
(62, 40, 37, 790000, 1, '2024-09-30 01:35:09', '2024-09-30 01:35:09', NULL),
(63, 40, 27, 2150000, 1, '2024-09-30 01:35:09', '2024-09-30 01:35:09', NULL),
(64, 40, 45, 4500000, 1, '2024-09-30 01:35:09', '2024-09-30 01:35:09', NULL),
(70, 42, 14, 12790000, 1, '2024-10-16 01:43:05', '2024-10-16 01:43:05', NULL),
(71, 43, 12, 3000000, 1, '2024-11-29 01:47:50', '2024-11-29 01:47:50', NULL),
(72, 43, 46, 1700000, 2, '2024-11-29 01:47:50', '2024-11-29 01:47:50', NULL),
(73, 43, 48, 3900000, 7, '2024-11-29 01:47:50', '2024-11-29 01:47:50', NULL),
(74, 44, 29, 2250000, 1, '2024-11-30 14:00:09', '2024-11-30 14:00:09', NULL),
(75, 45, 51, 2090000, 1, '2024-11-30 14:00:44', '2024-11-30 14:00:44', NULL),
(76, 46, 13, 340000, 1, '2024-11-30 14:00:57', '2024-11-30 14:00:57', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL,
  `promotion_price` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `brand_id`, `image`, `price`, `promotion_price`, `description`, `quantity`, `view`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Tai nghe TWS Samsung Galaxy Buds3 Pro R630N', 3, 1, '[\"product/1732540949333-tai-nghe-bluetooth-true-wireless5.jpg\",\"product/1732540949334-tai-nghe-bluetooth-true-wireless4.jpg\",\"product/1732540949336-tai-nghe-bluetooth-true-wireless1.jpg\",\"product/1732540949342-tai-nghe-bluetooth-true-wireless3.jpg\",\"product/1732540949351-tai-nghe-bluetooth-true-wireless2.jpg\"]', 3500000, 3000000, '<p><strong>Thời lượng pin tai nghe:</strong> Dùng 7 giờ&nbsp;</p><p><strong>Thời lượng pin hộp sạc:</strong> Dùng 30 giờ&nbsp;</p><p><strong>Cổng sạc:</strong> Type-C&nbsp;</p><p><strong>Công nghệ âm thanh:</strong> Dolby Atmos&nbsp;</p><p><strong>Công nghệ phát sóng:</strong> Auracast Adaptive Noise Control Adaptive EQ 360 Reality Audio&nbsp;</p><p><strong>Tương thích:</strong> macOS Android, iOS, Windows</p><p><strong>Ứng dụng kết nối:</strong> Galaxy Wearable&nbsp;</p><p><strong>Tiện ích:</strong> Phiên dịch trực tiếp&nbsp;</p><p><strong>Thanh ánh sáng:</strong> Blade Lights&nbsp;</p><p><strong>Sạc không dây:</strong> Tự động chuyển đổi kết nối linh hoạt (Auto Switch)&nbsp;</p><p><strong>Chống nước:</strong> IP57&nbsp;</p><p><strong>Kết nối cùng lúc:</strong> 1 thiết bị&nbsp;</p><p><strong>Công nghệ kết nối:</strong> Bluetooth 5.4&nbsp;</p><p><strong>Điều khiển:</strong> Cảm ứng chạm/vuốt Giọng nói (Tiếng Anh, Hàn)&nbsp;</p><p><strong>Phím điều khiển:</strong> Tăng/giảm âm lượng Phát/dừng chơi nhạc Chuyển bài hát Chuyển chế độ Nhận/Ngắt cuộc gọi&nbsp;</p><p><strong>Kích thước:</strong> Dài 3.2 cm - Rộng 2.02 cm - Cao 1.8 cm&nbsp;</p><p><strong>Khối lượng:</strong> 5.4 g&nbsp;</p><p><strong>Thương hiệu của:</strong> Hàn Quốc&nbsp;</p><p><strong>Sản xuất tại:</strong> Trung Quốc</p>', 487, 7, '2024-11-15 03:36:48', '2024-12-02 10:54:21', NULL),
(13, 'Tai nghe Bluetooth True Wireless Xiaomi Redmi Buds 6 Play', 3, 9, '[\"product/1731817838695-Tai-nghe-Bluetooth-True-Wireless-Xiaomi-Redmi-Buds-6-Play3.jpg\",\"product/1731817838697-Tai-nghe-Bluetooth-True-Wireless-Xiaomi-Redmi-Buds-6-Play5.jpg\",\"product/1731817838697-Tai-nghe-Bluetooth-True-Wireless-Xiaomi-Redmi-Buds-6-Play4.jpg\",\"product/1731817838700-Tai-nghe-Bluetooth-True-Wireless-Xiaomi-Redmi-Buds-6-Play2.jpg\",\"product/1731817838704-Tai-nghe-Bluetooth-True-Wireless-Xiaomi-Redmi-Buds-6-Play1.jpg\"]', 340000, 0, '<p><strong>Thời lượng pin tai nghe:</strong> Dùng 7.5 giờ - Sạc 2 giờ&nbsp;</p><p><strong>Thời lượng pin hộp sạc:</strong> Dùng 36 giờ - Sạc Khoảng 2 giờ&nbsp;</p><p><strong>Cổng sạc:</strong> Type-C&nbsp;</p><p><strong>Công nghệ âm thanh:</strong> Driver 10 mm&nbsp;</p><p><strong>Tương thích: </strong>Android iOS (iPhone)&nbsp;</p><p><strong>Ứng dụng kết nối:</strong> Xiaomi Earbuds&nbsp;</p><p><strong>Tiện ích:</strong> Chống nước IPX4, Có mic thoại, Sạc nhanh Khử tiếng ồn AI Tương thích trợ lý ảo Hỗ trợ Google Fast Pair&nbsp;</p><p><strong>Kết nối cùng lúc:</strong> 1 thiết bị&nbsp;</p><p><strong>Công nghệ kết nối:</strong> Bluetooth 5.4&nbsp;</p><p><strong>Điều khiển:</strong> Cảm ứng chạm&nbsp;</p><p><strong>Phím điều khiển:</strong> Phát/dừng chơi nhạc Chuyển bài hát Bật trợ lí ảo Nhận/Ngắt cuộc gọi&nbsp;</p><p><strong>Kích thước:</strong> Dài 2 cm - Rộng 1.6 cm - Cao 2.2 cm&nbsp;</p><p><strong>Khối lượng:</strong> 3.6 g&nbsp;</p><p><strong>Thương hiệu của:</strong> Trung Quốc&nbsp;</p><p><strong>Sản xuất tại:</strong> Trung Quốc</p>', 372, 2, '2024-11-15 06:54:53', '2024-12-02 05:16:08', NULL),
(14, 'Laptop Asus Vivobook Go 15 E1504FA R5 7520U/16GB/512GB/Chuột/Win11 (NJ776W)', 2, 14, '[\"product/1731629291899-vi-vn-asus-vivobook-go-15-e1504f3.jpg\",\"product/1731629291900-asus-vivobook-go-15-e1504fa-r5-n3.jpg\",\"product/1731629291901-vi-vn-asus-vivobook-go-15-e1504f345.jpg\",\"product/1731629291903-vi-vn-asus-vivobook-go-15-e1504f2.jpg\",\"product/1731629291904-vi-vn-asus-vivobook-go-15-e1504f1.jpg\"]', 14490000, 12790000, '<p><strong>Công nghệ CPU:</strong> AMD Ryzen 5 - 7520U&nbsp;</p><p><strong>Số nhân:</strong> 4&nbsp;</p><p><strong>Số luồng:</strong> 8&nbsp;</p><p><strong>Tốc độ CPU: </strong>2.8GHz&nbsp;</p><p><strong>Tốc độ tối đa:</strong> Turbo Boost 4.3 GHz&nbsp;</p><p><strong>Bộ nhớ đệm:</strong> 4 MB&nbsp;</p><p><strong>RAM:</strong> 16 GB&nbsp;</p><p><strong>Loại RAM:</strong> LPDDR5 (Onboard)&nbsp;</p><p><strong>Tốc độ Bus RAM:</strong> 5500 MHz&nbsp;</p><p><strong>Hỗ trợ RAM tối đa:</strong> Không hỗ trợ nâng cấp&nbsp;</p><p><strong>Ổ cứng:</strong> 512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)&nbsp;</p><p><strong>Màn hình: </strong>15.6\"&nbsp;</p><p><strong>Độ phân giải:</strong> Full HD (1920 x 1080)&nbsp;</p><p><strong>Tần số quét: </strong>60Hz&nbsp;</p><p><strong>Độ phủ màu: </strong>45% NTSC&nbsp;</p><p><strong>Công nghệ màn hình: </strong>Tấm nền TN Chống chói Anti Glare 250 nits&nbsp;</p><p><strong>Card màn hình: </strong>Card tích hợp - AMD Radeon Graphics&nbsp;</p><p><strong>Công nghệ âm thanh:</strong> SonicMaster audio&nbsp;</p><p><strong>Cổng giao tiếp: </strong>USB Type-C 1 x USB 2.0 Jack tai nghe 3.5 mm 1 x USB 3.2 HDMI&nbsp;</p><p><strong>Kết nối không dây:</strong> Wi-Fi 6E (802.11ax) Bluetooth 5.3&nbsp;</p><p><strong>Webcam: </strong>HD webcam&nbsp;</p><p><strong>Tính năng khác:</strong> Độ bền chuẩn quân đội MIL STD 810H Bản lề mở 180 độ Bảo mật vân tay Công tắc khóa camera&nbsp;</p><p><strong>Đèn bàn phím:</strong> Không có đèn&nbsp;</p><p><strong>Kích thước:</strong> Dài 360.3 mm - Rộng 232.5 mm - Dày 17.9 mm&nbsp;</p><p><strong>Khối lượng tịnh:</strong> 1.63 kg&nbsp;</p><p><strong>Chất liệu:</strong> Vỏ nhựa&nbsp;</p><p><strong>Thông tin Pin:</strong> 3-cell, 42Wh&nbsp;</p><p><strong>Công suất bộ sạc:</strong> 45 W&nbsp;</p><p><strong>Hệ điều hành: </strong>Windows 11 Home SL&nbsp;</p><p><strong>Thời điểm ra mắt:</strong> 2023</p>', 95, 2, '2024-11-15 07:01:19', '2024-12-02 04:42:53', NULL),
(15, 'Laptop Dell Inspiron 15 3520 i5 1235U/16GB/512GB/120Hz/OfficeHS/Win11 (N5I5052W1)', 2, 10, '[\"product/1732021469551-dell-inspiron-15-3520-i5-n5i50526.jpg\",\"product/1732021469552-dell-inspiron-15-3520-i5-n5i5052.jpg\",\"product/1732021469554-dell-inspiron-15-3520-i5-1235u-13.jpg\",\"product/1732021469565-dell-inspiron-15-3520-i5-1235u-12.jpg\",\"product/1732021469572-dell-inspiron-15-3520-i5-1235u-11.jpg\"]', 16990000, 11500000, 'Công nghệ CPU:\r\nIntel Core i5 Alder Lake - 1235U\r\nSố nhân:\r\n10\r\nSố luồng:\r\n12\r\nTốc độ CPU:\r\n1.3GHz\r\nTốc độ tối đa:\r\nTurbo Boost 4.4 GHz\r\nBộ nhớ đệm:\r\n12 MB\r\nRAM:\r\n16 GB\r\nLoại RAM:\r\nDDR4 2 khe (1 khe 8 GB + 1 khe 8 GB)\r\nTốc độ Bus RAM:\r\n2666 MHz\r\nHỗ trợ RAM tối đa:\r\nKhông hỗ trợ nâng cấp\r\nỔ cứng:\r\n512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2 TB (2280) / 1 TB (2230))\r\nHỗ trợ khe cắm HDD SATA 2.5 inch mở rộng (nâng cấp tối đa 2 TB)\r\nMàn hình:\r\n15.6\"\r\nĐộ phân giải:\r\nFull HD (1920 x 1080)\r\nTần số quét:\r\n120Hz\r\nĐộ phủ màu:\r\n45% NTSC\r\nCông nghệ màn hình:\r\nChống chói Anti Glare\r\nLED Backlit\r\n250 nits\r\nWVA\r\nCard màn hình:\r\nCard tích hợp - Intel Iris Xe Graphics\r\nCông nghệ âm thanh:\r\nRealtek Audio\r\nCổng giao tiếp:\r\nJack tai nghe 3.5 mm\r\n1 x USB 2.0\r\n2 x USB 3.2\r\nHDMI\r\nKết nối không dây:\r\nBluetooth 5.0\r\nWi-Fi 802.11 a/b/g/n/ac\r\nKhe đọc thẻ nhớ:\r\nSD\r\nWebcam:\r\nHD webcam\r\nĐèn bàn phím:\r\nKhông có đèn\r\nKích thước:\r\nDài 358.5 mm - Rộng 235.56 mm - Dày 16.96 mm\r\nKhối lượng tịnh:\r\n1.66 kg\r\nChất liệu:\r\nVỏ nhựa\r\nThông tin Pin:\r\n3-cell, 41Wh\r\nCông suất bộ sạc:\r\n65 W\r\nHệ điều hành:\r\nWindows 11 Home SL + Office Home & Student 2021 vĩnh viễn\r\nThời điểm ra mắt:\r\n2023', 196, 2, '2024-11-15 07:13:19', '2024-11-28 13:26:34', '2024-11-28 13:26:34'),
(27, 'Màn hình Viewsonic VA2432-H 24\" IPS 100Hz viền mỏng', 15, 9, '[\"product/1732774487641-va2432-h_rf02_h_c6b76b9881e8411f (1).jpg\",\"product/1732774487649-va2432-h_rf02_h_c6b76b9881e8411f.jpg\",\"product/1732774487664-va2432-h_lf01_h_c95d23a3a0cb40be.jpg\",\"product/1732774487665-1_6bf24e36cbd34fd990728781a18e16.jpg\",\"product/1732774487666-va2432-h_a27cdcc772f945de8b2fe91.jpg\"]', 4550000, 2150000, '<p><strong>Thương hiệu:</strong> ViewSonic&nbsp;</p><p><strong>Kích thước:</strong> 23.8 inch&nbsp;</p><p><strong>Độ phân giải:</strong> 1920 x 1080&nbsp;</p><p><strong>Tấm nền:</strong> IPS&nbsp;</p><p><strong>Tần số quét:</strong> 100Hz&nbsp;</p><p><strong>Thời gian phản hồi:</strong> 5ms&nbsp;</p><p><strong>Kiểu màn hình:</strong> Phẳng&nbsp;</p><p><strong>Độ sáng:</strong> 250 cd/m2 (typ)&nbsp;</p><p><strong>Góc nhìn:</strong> 178 (H) / 178 (V)&nbsp;</p><p><strong>Khả năng hiển thị màu sắc:</strong> 16.7 triệu màu, 104% sRGB&nbsp;</p><p><strong>Độ tương phản tĩnh:</strong> 1,000:1 (typ)&nbsp;</p><p><strong>Độ tương phản động:</strong> 50M:1&nbsp;</p><p><strong>Cổng xuất hình:</strong> 1 x VGA 1 x HDMI 1.4&nbsp;</p><p><strong>Tính năng đặc biệt:</strong> Anti-Glare, Hard Coating (3H)&nbsp;</p><p><strong>Kỹ thuật thiết kế:</strong> Treo tường VESA : 75x75mm (Cần mua thêm ốc bên ngoài phù hợp để gắn Arm)&nbsp;</p><p><strong>Khối lượng:</strong> 2.7 kg (bao gồm chân đế)&nbsp;</p><p><strong>Kích thước chuẩn:</strong> 540 x 406 x 185 (mm)</p>', 49, 0, '2024-11-28 13:14:47', '2024-12-02 04:48:09', NULL),
(28, 'Màn hình Asus TUF GAMING VG259Q3A 25\" Fast IPS 180Hz Gsync chuyên game', 15, 14, '[\"product/1732774695393-untitled_design__4__ef0732cf5584.jpg\",\"product/1732774695394-untitled_design__5__3c9174d77dd0.jpg\",\"product/1732774695395-untitled_design__1__b43e3bea49a0.jpg\",\"product/1732774695396-asus_vg259q3a_gearvn_e76558abb18.jpg\",\"product/1732774695402-asus_vg259q3a_gearvn_0157239e435.jpg\"]', 3990000, 3390000, '<p><strong>Phụ kiện trong hộp:</strong> Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)&nbsp;</p><p><strong>Cổng kết nối:</strong> 2 x HDMI™ (2.0); 1 x DisplayPort (1.2)&nbsp;</p><p><strong>Thời gian phản hồi:</strong> 1ms Tấm nền IPS&nbsp;</p><p><strong>Kích thước:</strong> 25 inch&nbsp;</p><p><strong>Kiểu màn hình:</strong> Phẳng&nbsp;</p><p><strong>Không gian màu:</strong> sRGB 99%; 16.7M&nbsp;</p><p><strong>Tương thích:</strong> VESA 100 x 100 mm&nbsp;</p><p><strong>Khử nhấp nháy:</strong> Có&nbsp;</p><p><strong>Độ sáng:</strong> (Typ.) 250 cd;m²&nbsp;</p><p><strong>Tần số quét:</strong> 180 Hz&nbsp;</p><p><strong>Bảo hành:</strong> 36 tháng&nbsp;</p><p><strong>Độ phân giải:</strong> Full HD (1920 x 1080)</p>', 50, 0, '2024-11-28 13:18:15', '2024-12-02 04:49:53', NULL),
(29, 'Màn hình ASUS VY249HF-R 24\" IPS 100Hz viền mỏng', 15, 14, '[\"product/1732774852627-untitled_design__1__de8ea7b1768d.jpg\",\"product/1732774852640-untitled_design__3__1f3b5d7681e5.jpg\",\"product/1732774852644-untitled_design__2__cfe4eda85c39.jpg\",\"product/1732774852654-asus_vy249hf-r_gearvn_31257400a3.jpg\",\"product/1732774852656-asus_vy249hf-r_gearvn_0d89d2475e.jpg\"]', 2290000, 2250000, '<p><strong>Kiểu màn hình:</strong> Phẳng&nbsp;</p><p><strong>Khử nhấp nháy:</strong> Có&nbsp;</p><p><strong>Phụ kiện trong hộp:</strong> Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)&nbsp;</p><p><strong>Bảo hành:</strong> 36 tháng&nbsp;</p><p><strong>Kích thước:</strong> 24 inch&nbsp;</p><p><strong>Tương thích:</strong> VESA 100 x 100 mm&nbsp;</p><p><strong>Không gian màu:</strong> 16.7M&nbsp;</p><p><strong>Độ phân giải:</strong> Full HD (1920 x 1080)&nbsp;</p><p><strong>Thời gian phản hồi:</strong> 1ms&nbsp;</p><p><strong>Cổng kết nối:</strong> 1 x HDMI™(1.4)&nbsp;</p><p><strong>Tần số quét:</strong> 100 Hz&nbsp;</p><p><strong>Độ sáng:</strong> (Typ.) 250 cd/m²&nbsp;</p>', 49, 0, '2024-11-28 13:20:52', '2024-12-02 04:51:30', NULL),
(30, 'Màn hình MSI G244F E2 24\" Rapid IPS 180Hz chuyên game', 15, 13, '[\"product/1732775145191-9778-man-msi-g244f-e2-1_8e804bb2.jpg\",\"product/1732775145193-9778-man-msi-g244f-e2-4_94b7f442.jpg\",\"product/1732775145198-9778-man-msi-g244f-e2-3_869c4e8a.jpg\",\"product/1732775145198-9778-man-msi-g244f-e2-2_47407acb.jpg\",\"product/1732775145203-msi_g244f_e2_gearvn_784763b88e62.jpg\"]', 3000000, 0, '<p><strong>Phụ kiện trong hộp:</strong> Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)&nbsp;</p><p><strong>Không gian màu:</strong> 118% sRGB&nbsp;</p><p><strong>Kích thước:</strong> 24 inch&nbsp;</p><p><strong>Tần số quét:</strong> 180 Hz&nbsp;</p><p><strong>Bảo hành:</strong> 36 tháng&nbsp;</p><p><strong>Độ phân giải:</strong> Full HD (1920 x 1080)&nbsp;</p><p><strong>Khử nhấp nháy:</strong> Có Tấm nền IPS&nbsp;</p><p><strong>Thời gian phản hồi:</strong> 1ms&nbsp;</p><p><strong>Tương thích:</strong> VESA 75 x 75 mm&nbsp;</p><p><strong>Cổng kết nối:</strong> 2 x HDMI™ (2.0); 1 x DisplayPort (1.2)&nbsp;</p><p><strong>Kiểu màn hình:</strong> Phẳng&nbsp;</p><p><strong>Độ sáng:</strong> (Typ.) 300 cd/m²</p>', 50, 0, '2024-11-28 13:25:45', '2024-12-02 04:53:06', NULL),
(31, 'Màn hình Lenovo L24i-4A 24\" IPS 100Hz', 15, 16, '[\"product/1732776415117-lenovo_l24i_4a_ct2_04_60048f1baa.jpg\",\"product/1732776415120-lenovo_l24i_4a_ct2_05_97bdcc5993.jpg\",\"product/1732776415121-lenovo_l24i_4a_ct2_02_ae5594dd48.jpg\",\"product/1732776415121-lenovo_l24i_4a_ct2_01_94c67ea88e.jpg\",\"product/1732776415138-lenovo_l24i-4a_gearvn_2c4ff441ee.jpg\"]', 2990000, 2490000, '<p><strong>Tấm nền:</strong> IPS&nbsp;</p><p><strong>Kiểu màn hình:</strong> Phẳng&nbsp;</p><p><strong>Cổng kết nối:</strong> 1 x HDMI™;1 x VGA Độ sáng (Typ.) 250 cd/m²&nbsp;</p><p><strong>Bảo hành:</strong> 36 tháng&nbsp;</p><p><strong>Kích thước:</strong> 24 inch&nbsp;</p><p><strong>Phụ kiện trong hộp:</strong> Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)&nbsp;</p><p><strong>Không gian màu:</strong> 99% sRGB&nbsp;</p><p><strong>Thời gian phản hồi:</strong> 1ms&nbsp;</p><p><strong>Khử nhấp nháy:</strong> Có&nbsp;</p><p><strong>Tương thích:</strong> VESA 100 x 100 mm&nbsp;</p><p><strong>Độ phân giải:</strong> Full HD (1920 x 1080)&nbsp;</p><p><strong>Tần số quét:</strong> 100 Hz</p>', 100, 0, '2024-11-28 13:46:55', '2024-12-02 04:54:41', NULL),
(32, 'Màn hình LG 25MS550-B 25\" IPS 100Hz', 15, 17, '[\"product/1732806265915-large07_3f52f555e91f4f8fa7670ce2.jpg\",\"product/1732806265916-large04_964384e22cbe41a08239a9af.jpg\",\"product/1732806265917-large02_e010c17d3d6b47da84f0f9c0.jpg\",\"product/1732806265918-large01_1422fc39fc7b4825be076724.jpg\",\"product/1732806265923-lg_25ms550-b_gearvn_69374b8d96b4.jpg\"]', 3090000, 2990000, '<p><strong>Cổng kết nối:</strong> 2 x HDMI™(1.4)&nbsp;</p><p><strong>Phụ kiện trong hộp:</strong> Dây nguồn; dây HDMI (optional); dây DisplayPort (optional)&nbsp;</p><p><strong>Tương thích:</strong> VESA 75 x 75 mm&nbsp;</p><p><strong>Thời gian phản hồi:</strong> 5ms&nbsp;</p><p><strong>Tần số quét:</strong> 100 Hz&nbsp;</p><p><strong>Khử nhấp nháy:</strong> Có&nbsp;</p><p><strong>Bảo hành:</strong> 24 tháng&nbsp;</p><p><strong>Tấm nền:</strong> IPS&nbsp;</p><p><strong>Độ phân giải:</strong> Full HD (1920 x 1080)&nbsp;</p><p><strong>Độ sáng:</strong> (Typ.) 250 cd/m²&nbsp;</p><p><strong>Không gian màu:</strong> NTCS 72%&nbsp;</p><p><strong>Kiểu màn hình:</strong> Phẳng&nbsp;</p><p><strong>Kích thước:</strong> 25 inch</p>', 10, 0, '2024-11-28 22:04:25', '2024-12-02 04:56:21', NULL),
(33, 'Chuột Razer DeathAdder Essential (RZ01-03850100-R3M1)', 16, 18, '[\"product/1732806783437-tttttt_a3febd70c7f74160abf244154.jpg\",\"product/1732806783437-thumbchuot_7445abea69bf461e881ee.jpg\",\"product/1732806783438-untitled-1_72f284baa15e4ba6824a8.jpg\",\"product/1732806783439-fghfghjgfhfg_d0640724df5040709cb.jpg\",\"product/1732806783439-565656_22914bb589c146e599cb381f2.jpg\"]', 790000, 420000, '<p><strong>Kiểu cầm:</strong> Ergonomic / Công thái học&nbsp;</p><p><strong>Trọng lượng:</strong> 96g&nbsp;</p><p><strong>Thương hiệu:</strong> Razer&nbsp;</p><p><strong>Số nút:</strong> 5 nút có thể lập trình&nbsp;</p><p><strong>Bảo hành:</strong> 24 tháng&nbsp;</p><p><strong>Thời gian phản hồi:</strong> 1ms&nbsp;</p><p><strong>Cảm biến:</strong> Cảm biến quang học (Optical)&nbsp;</p><p><strong>Độ phân giải:</strong> (CPI/DPI) 6400DPI&nbsp;</p><p><strong>Đèn LED:</strong> Led Green đơn sắc&nbsp;</p><p><strong>Kích thước:</strong> 127.0 x 61.7 x 42.7 mm&nbsp;</p><p><strong>Kết nối:</strong> USB 2.0&nbsp;</p><p><strong>Gia tốc:</strong> 220 IPS / 30G&nbsp;</p><p><strong>Kiểu kết nối:</strong> Có dây; dây nhựa&nbsp;</p><p><strong>Model:</strong> Deathadder Essential</p>', 200, 0, '2024-11-28 22:13:03', '2024-12-02 04:58:02', NULL),
(34, 'Chuột Gaming Asus TUF M4 Wireless', 16, 14, '[\"product/1732806977507-tuf-gaming-m4-wireless-03_cbac9f.jpg\",\"product/1732806977510-tuf-gaming-m4-wireless-01_7417ea.jpg\",\"product/1732806977511-tuf-gaming-m4-wireless-04_246e3e.jpg\",\"product/1732806977533-tuf-gaming-m4-wireless-06_fec0b2.jpg\",\"product/1732806977533-tuf-gaming-m4-wireless-02_56fe3b.jpg\"]', 1190000, 990000, '<p><strong>Thương hiệu:</strong> Asus&nbsp;</p><p><strong>Bảo hành:</strong> 24 tháng&nbsp;</p><p><strong>Model:</strong> Chuột gaming không dây TUF GAMING M4 Wireless 2.4, siêu nhẹ, cảm biến 12.000 dpi, nắp vỏ bằng PBT, feet chuột 100% PTFE, Armoury Crate&nbsp;</p><p><strong>Màu sắc:</strong> Đen&nbsp;</p><p><strong>Kiểu kết nối:</strong> Wireless Bluetooth 5.1&nbsp;</p><p><strong>Thời lượng pin:</strong> Pin AA RF 2.4: 134 giờ BLE: 232 giờ Pin AAA RF 2.4: 53 giờ BLE: 100 giờ&nbsp;</p><p><strong>LED:</strong> Không&nbsp;</p><p><strong>Kiểu thiết kế:</strong> Công thái học&nbsp;</p><p><strong>Cảm biến:</strong> Quang học&nbsp;</p><p><strong>Độ nhạy:</strong> 12.000 DPI&nbsp;</p><p><strong>Số nút bấm:</strong> 6 nút (phần mềm Armory Crate độc quyền để cấu hình dễ dàng và trực quan dễ dùng)&nbsp;</p><p><strong>Tuổi thọ switch:</strong> 60 triệu lần click&nbsp;</p><p><strong>Kích thước:</strong> 126 x 63.5 x 39.6 mm&nbsp;</p><p><strong>Khối lượng:</strong> 77g khi dùng pin AAA &amp; phụ kiện chuyển đổi 86g khi dùng pin AA&nbsp;</p><p><strong>Phụ kiện:</strong> 1 x USB Wireless Dongle 1 x AA Battery 1 x AAA Battery 1 x AAA to AA Battery Converter Holder 1 x Hướng dẫn Nhanh 1 x Warranty Card</p>', 99, 13, '2024-11-28 22:16:17', '2024-12-02 11:42:36', NULL),
(35, 'Chuột Logitech G304 Wireless', 16, 19, '[\"product/1732807344515-gearvn-chuot-logitech-g304-light (3).jpg\",\"product/1732807344519-gearvn-chuot-logitech-g304-light (2).jpg\",\"product/1732807344519-gearvn-chuot-logitech-g304-light (1).jpg\",\"product/1732807344519-gearvn-chuot-logitech-g304-light.jpg\",\"product/1732807344520-gvn_log_g304_3df28cd60a48412b8fb.jpg\"]', 1090000, 750000, '<p><strong>Tốc độ:</strong> báo cáo không dây 1000Hz ( 1ms )&nbsp;</p><p><strong>Bộ vi xử lý:</strong> ARM 32-bit&nbsp;</p><p><strong>Cảm biến:</strong> HERO&nbsp;</p><p><strong>Công nghệ:</strong> LIGHTSPEED&nbsp;</p><p><strong>Có Bảo hành:</strong> 24 tháng&nbsp;</p><p><strong>Tăng tốc tối đa</strong> &gt; 40 G&nbsp;</p><p><strong>Trọng lượng:</strong> 99g&nbsp;</p><p><strong>Pin:</strong> 250 giờ&nbsp;</p><p><strong>Tốc độ tối đa:</strong> &gt; 400 IPS&nbsp;</p><p><strong>Thương hiệu:</strong> Logitech&nbsp;</p><p><strong>Bộ nhớ tích hợp:</strong> 1 cấu hình&nbsp;</p><p><strong>Kích thước:</strong> 116.6 x 62.15 x 38.2 ( mm ) ( Dài x Rộng x Cao )&nbsp;</p><p><strong>Hệ thống:</strong> Ứng lực nút cơ học Độ phân giải 200 – 12000 DPI</p>', 100, 0, '2024-11-28 22:22:24', '2024-12-02 04:59:57', NULL),
(36, 'Chuột DareU EM901X RGB Superlight Wireless Black', 16, 5, '[\"product/1732807714006-gearvn-chuot-dareu-em901x-rgb-su (4).jpg\",\"product/1732807714012-gearvn-chuot-dareu-em901x-rgb-su (3).jpg\",\"product/1732807714012-gearvn-chuot-dareu-em901x-rgb-su (2).jpg\",\"product/1732807714013-gearvn-chuot-dareu-em901x-rgb-su (1).jpg\",\"product/1732807714013-huot-khong-day-gaming-dareu-em90 (1).jpg\"]', 790000, 0, '<p><strong>Hãng sản xuất:</strong> Dare-U&nbsp;</p><p><strong>Bảo hành:</strong> 24 tháng&nbsp;</p><p><strong>Model:</strong> DareU EM901X RGB Superlight Wireless Black&nbsp;</p><p><strong>Màu sắc:</strong> Đen&nbsp;</p><p><strong>Thiết kế:</strong> Đối xứng&nbsp;</p><p><strong>Kiểu kết nối:</strong> Wireless 2.4Ghz&nbsp;</p><p><strong>Thời gian sử dụng:</strong> 30h / 18h (khi bật led RGB)&nbsp;</p><p><strong>Thời gian sạc:</strong> 3h&nbsp;</p><p><strong>Dung lượng pin:</strong> 930 mAh&nbsp;</p><p><strong>Đèn LED:</strong> RGB&nbsp;</p><p><strong>Độ nhạy ( DPI ):</strong> 800-6000 Polling rate: 1000Hz Tracking: 150IPS&nbsp;</p><p><strong>Cảm biến:</strong> BRAVO (ATG4090)&nbsp;</p><p><strong>Số nút bấm:</strong> 6&nbsp;</p><p><strong>Switch:</strong> DareU (10 triệu lần click)&nbsp;</p><p><strong>Kích thước:</strong> 125.5 x 68.6 x 39.6 mm&nbsp;</p><p><strong>Trọng lượng:</strong> 86g</p>', 50, 0, '2024-11-28 22:28:34', '2024-12-02 05:01:28', NULL),
(37, 'Chuột DareU EM901X RGB Superlight Wireless White Blue', 16, 5, '[\"product/1732808978098-chu-em901x-blue_21ed671023bc4c43.jpg\",\"product/1732808978106-day-gaming-dareu-em901x-blue-whi (1).jpg\",\"product/1732808978106-day-gaming-dareu-em901x-blue-whi.jpg\"]', 1090000, 790000, '<p><strong>Hãng sản xuất:</strong> Dare-U&nbsp;</p><p><strong>Bảo hành:</strong> 24 tháng&nbsp;</p><p><strong>Model:</strong> DareU EM901X RGB Superlight Wireless Blue white&nbsp;</p><p><strong>Màu sắc:</strong> Xanh trắng&nbsp;</p><p><strong>Thiết kế:</strong> Đối xứng&nbsp;</p><p><strong>Kiểu kết nối: </strong>Wireless 2.4Ghz&nbsp;</p><p><strong>Thời gian sử dụng:</strong> 30h / 18h (khi bật led RGB)&nbsp;</p><p><strong>Thời gian sạc:</strong> 3h&nbsp;</p><p><strong>Dung lượng pin:</strong> 930 mAh&nbsp;</p><p><strong>Đèn LED:</strong> RGB&nbsp;</p><p><strong>Độ nhạy ( DPI ):</strong> 800-6000&nbsp;</p><p><strong>Polling rate:</strong> 1000Hz&nbsp;</p><p><strong>Tracking:</strong> 150IPS&nbsp;</p><p><strong>Cảm biến:</strong> BRAVO (ATG4090)&nbsp;</p><p><strong>Số nút bấm:</strong> 6&nbsp;</p><p><strong>Switch:</strong> DareU (10 triệu lần click)&nbsp;</p><p><strong>Kích thước:</strong> 125.5 x 68.6 x 39.6 mm&nbsp;</p><p><strong>Trọng lượng:</strong> 86g</p>', 99, 12, '2024-11-28 22:49:38', '2024-12-02 04:23:11', NULL),
(38, 'Chuột DareU EM901X RGB Superlight Wireless Pink', 16, 5, '[\"product/1732809201322-khong-day-gaming-dareu-em901x-pi (1).jpg\",\"product/1732809201324-khong-day-gaming-dareu-em901x-pi.jpg\"]', 790000, 0, '<p><strong>Hãng sản xuất:</strong> Dare-U&nbsp;</p><p><strong>Bảo hành:</strong> 24 tháng&nbsp;</p><p><strong>Model:</strong> DareU EM901X RGB Superlight Wireless Pink&nbsp;</p><p><strong>Màu sắc:</strong> Hồng&nbsp;</p><p><strong>Thiết kế:</strong> Đối xứng&nbsp;</p><p><strong>Kiểu kết nối:</strong> Wireless 2.4Ghz&nbsp;</p><p><strong>Thời gian sử dụng:</strong> 30h / 18h (khi bật led RGB)&nbsp;</p><p><strong>Thời gian sạc:</strong> 3h&nbsp;</p><p><strong>Dung lượng:</strong> pi 930 mAh&nbsp;</p><p><strong>Đèn LED:</strong> RGB&nbsp;</p><p><strong>Độ nhạy (DPI):</strong> 800-6000 Polling rate 1000Hz Tracking 150IPS&nbsp;</p><p><strong>Cảm biến:</strong> BRAVO (ATG4090)&nbsp;</p><p><strong>Số nút bấm:</strong> 6 Switch DareU (10 triệu lần click)&nbsp;</p><p><strong>Kích thước:</strong> 125.5 x 68.6 x 39.6 mm&nbsp;</p><p><strong>Trọng lượng:</strong> 86g</p>', 50, 0, '2024-11-28 22:53:21', '2024-12-02 05:04:17', NULL),
(39, 'Chuột Razer Basilisk V3 Pro', 16, 18, '[\"product/1732809334334-chuot-gaming-khong-day-razer-bas (2).jpg\",\"product/1732809334334-chuot-gaming-khong-day-razer-bas (1).jpg\",\"product/1732809334338-chuot-gaming-khong-day-razer-bas.jpg\",\"product/1732809334338-thumbchuot-recovered_757cce0149c.jpg\"]', 4590000, 3640000, '<p><strong>Kết nối:</strong> Có dây / Wireless / Bluetooth&nbsp;</p><p><strong>Thời lượng pin:</strong> Lên đến 90 giờ (HyperSpeed)&nbsp;</p><p><strong>Led Razer:</strong> Chroma RGB Cảm biến Quang học&nbsp;</p><p><strong>Focus Pro:</strong> 30K DPI 30000 IPS 750&nbsp;</p><p><strong>Số nút:</strong> 11&nbsp;</p><p><strong>Gia tốc tối đa:</strong> (G) 70 Switch Optical Gen-3&nbsp;</p><p><strong>Tuổi thọ Switch:</strong> 90 triệu lần nhấp Feet chuột 100% PTFE&nbsp;</p><p><strong>Kích thước:</strong> (Dài x Rộng x Cao) 130 mm x 75.4 mm x 42.5 mm&nbsp;</p><p><strong>Trọng lượng:</strong> 112 g</p>', 100, 0, '2024-11-28 22:55:34', '2024-12-02 05:05:58', NULL),
(40, 'Máy chơi game Asus ROG Ally White 16GB 512 Z1 Extreme', 10, 14, '[\"product/1732812789102-rog_nr2301_11_copy_1d9cae9bb3ef4.jpg\",\"product/1732812789105-rog_nr2301_08_copy_97fdb7e135eb4.jpg\",\"product/1732812789109-rog_nr2301_04_copy_254d9e13d63c4.jpg\",\"product/1732812789110-rog_nr2301_02_copy_8ae491c502b74.jpg\",\"product/1732812789111-rog_nr2301_01_copy_08f7dbf056814.jpg\"]', 17990000, 14990000, '<p><strong>Đánh giá chi tiết máy chơi game Asus ROG Ally White Máy chơi game cầm tay đang</strong> là sự lựa chọn hàng đầu cho game thủ khi nó sở hữu một ngoại hình nhỏ gọn cùng sức mạnh siêu khủng không thua kém gì dàn PC Gaming nào cả.&nbsp;</p><p><strong>Asus ROG Phone 6</strong> đã từng là một cú hit lớn của nhà bán linh kiện PC hàng đầu thế giới. Giờ đây, ông lớn này tại tiếp tục gia nhập đường đua máy chơi game cầm tay khi cho ra mắt siêu phẩm Asus ROG Ally, đối thủ đáng gờm của Steam Deck.&nbsp;</p><p>Thiết kế ROG Ally hiện đại và vô cùng hoàn hảo Asus ROG Ally sở hữu một ngoại hình vô cùng hiện đại và đẹp mắt khi lấy tông màu trắng làm chủ đạo. Thoạt nhìn, Asus ROG Ally trông vô cùng nhỏ gọn, dễ dàng để bạn mang theo bên mình. Cách sắp xếp bố cục cũng vô cùng hợp lý với 2 nút điều khiển analog, bumper, trigger, 4 nút chức năng, nút chuyển hướng.&nbsp;</p><p>Chưa dừng lại ở đó, mặt sau ROG Ally cũng được đầu tư khá chỉnh chu với logo ROG độc quyền cùng hệ thống sync RGB bằng Asus Aura Sync đặc điểm là làm nên thương hiệu của những thiết bị chơi game như bàn phím cơ, chuột máy tính và tai nghe gaming từ ASUS. Hơn nữa, nó còn có thêm hai nút tùy chỉnh hỗ trợ trải nghiệm chơi game của bạn. Sức mạnh đáng gờm từ con chip AMD Asus ROG Ally sẽ ra mắt với con chip CPU từ AMD với hai option. AMD Ryzen Z1 Extreme với 4 nhân 16 luồng, cường độ ép xung có thể lên đến 5.1GHz. Đây là sức mạnh cao cấp nhất cho máy chơi game cầm tay Asus này.&nbsp;</p><p>Bên cạnh đó, bạn cũng có thể lựa chọn một option khác tiêu chuẩn và cơ bản hơn là AMD Ryzen Z1, 4 nhân 12 luồng và cường độ ép xung tối đa là 5.0GHz. Thật không ngoa khi nói, Asus ROG Ally hiển nhiên là một dàn PC Gaming thu nhỏ cho game thủ.</p>', 100, 0, '2024-11-28 23:53:09', '2024-12-02 05:07:13', NULL),
(41, 'Tay cầm Microsoft Xbox Wireless Controller Robot White', 10, 20, '[\"product/1732813625081-hinh-9_ab831c3fd808457995143dd37.jpg\",\"product/1732813625084-hinh-7_23c2933f85bf4bb3a1afc4616.jpg\",\"product/1732813625084-hinh-6_8105ba5526ca459ebc2d798e0.jpg\",\"product/1732813625088-hinh-3-white_5c58ce72dcc04c0580d.jpg\",\"product/1732813625105-hinh-3_e48d6a2fc2f14a7299121aa1d.jpg\"]', 2090000, 1490000, '<p><strong>Hãng sản xuất:</strong> Microsoft&nbsp;</p><p><strong>Bảo hành:</strong> 12 tháng&nbsp;</p><p><strong>Model:</strong> Microsoft Xbox Wireless Controller Robot White&nbsp;</p><p><strong>Màu sắc:</strong> Trắng&nbsp;</p><p><strong>Kiểu kết nối:</strong> Kết nối đến Xbox consoles với Xbox Wireless. Kết nối đến thiết bị Windows 10, máy tính bảng, điện thoại iOS and Android thông qua Bluetooth. Tương thích Xbox Series X, Xbox Series S, Xbox One, Windows 10, Android and iOS.&nbsp;</p><p><strong>Thời gian sử dụng:</strong> Lên đến 40 tiếng (tuỳ điều kiện sử dụng)</p>', 150, 0, '2024-11-29 00:07:05', '2024-12-02 05:08:03', NULL),
(42, 'Tay cầm Microsoft H105 Wireless Hồng', 10, 20, '[\"product/1732813818303-tay-cam-choi-gam-dareu-h105-01-h (3).jpg\",\"product/1732813818305-tay-cam-choi-gam-dareu-h105-01-h (2).jpg\",\"product/1732813818309-tay-cam-choi-gam-dareu-h105-01-h (1).jpg\",\"product/1732813818319-tay-cam-choi-gam-dareu-h105-01-h.jpg\"]', 799000, 690000, '<p><strong>- 3 Chế độ kết nối :</strong> USB cable+2.4G+Bluetooth&nbsp;</p><p><strong>- Hỗ trợ:</strong> PC/Android/Switch (Windows 7/8/10/11, Android 5.0 or above)&nbsp;</p><p><strong>- Keys:</strong> 24 keys for the whole machine</p><p><strong>- Pin:</strong> 930mA&nbsp;</p><p><strong>- LED:</strong> RGB&nbsp;</p><p><strong>- Thời gian sử dụng:</strong> lên đến 25 giờ&nbsp;</p><p><strong>- Sạc:</strong> 3 – 3.5 giờ&nbsp;</p><p><strong>- Trọng lượng:</strong> 210 +/- 10g&nbsp;</p><p><strong>- Bảo hành:</strong> 12 tháng&nbsp;</p><p><strong>- Màu sắc:</strong> Hồng</p>', 20, 0, '2024-11-29 00:10:18', '2024-12-02 05:09:14', NULL),
(43, 'Tay cầm DareU H105 Wireless Trắng Tím', 10, 5, '[\"product/1732814817607-gearvn-tay-cam-dareu-h105-wirele (3).jpg\",\"product/1732814817608-gearvn-tay-cam-dareu-h105-wirele (2).jpg\",\"product/1732814817608-gearvn-tay-cam-dareu-h105-wirele (1).jpg\",\"product/1732814817613-gearvn-tay-cam-dareu-h105-wirele.jpg\",\"product/1732814817614-tay-cam-choi-gam-dareu-h105-01-t.jpg\"]', 799000, 690000, '<p><strong>- 3 Chế độ kết nối:</strong> USB cable+2.4G+Bluetooth&nbsp;</p><p><strong>- Hỗ trợ:</strong> PC/Android/Switch (Windows 7/8/10/11, Android 5.0 or above)&nbsp;</p><p><strong>- Keys:</strong> 24 keys for the whole machine&nbsp;</p><p><strong>- Pin:</strong> 930mA&nbsp;</p><p><strong>- LED:</strong> RGB&nbsp;</p><p><strong>- Thời gian sử dụng:</strong> lên đến 25 giờ&nbsp;</p><p><strong>- Sạc:</strong> 3 – 3.5 giờ&nbsp;</p><p><strong>- Trọng lượng:</strong> 210 +/- 10g&nbsp;</p><p><strong>- Bảo hành:</strong> 12 tháng&nbsp;</p><p><strong>- Màu sắc:</strong> Trắng tím</p>', 15, 0, '2024-11-29 00:26:57', '2024-12-02 05:10:22', NULL),
(44, 'Nintendo Microsoft Switch Microsoft V1 - Cài sẵn game /android app/retro game', 10, 20, '[\"product/1732815674323-switch.00_03_55_25.still006_b371.jpg\",\"product/1732815674327-switch.00_00_50_17.still001_bb1e.jpg\",\"product/1732815674333-endo_switch_cu_dang_mua_nhat_o_t.jpg\",\"product/1732815674340-nintendo-switch-hack_cec30a7ac62.jpg\"]', 6800000, 0, '<p><strong>Máy chơi game Nintendo Switch V1 phiên bản Cài FullGame</strong> sẽ giúp bạn trải nghiệm trọn vẹn hoàn toàn <i><strong>Miễn Phí</strong></i> các tựa game độc quyền cũng như đỉnh cao khác trên Nintendo Switch mà không phải tốn tới hàng triệu đồng tiền mua game. Máy được trang bị thẻ nhớ từ 256GB (hỗ trợ cài game theo yêu cầu).&nbsp;</p><p>Không những thế đội ngũ kĩ thuật của TOPO đã cài sẵn cả kho game Retro như PS1,NES,SNES,GBA... để trải nghiệm song song và bộ ứng dụng Android phổ biến như Youtube, Netflix, VTVgo... để sử dụng như 1 chiếc máy tính bảng.&nbsp;</p><p>&nbsp;</p><p><i><strong>Lưu ý:</strong></i> Máy đã được tặng kèm RCM và cáp kết nối máy tính và miếng dán cường lực Không phải chiếc Switch ver.1 nào trên thị trường cũng có thể chơi game tùy ý mà không cần thẻ game Hiện này các dòng máy Switch cũ trên thì trường đều được giao bán rất nhiều đặc biệt là các dòng máy V1 vì có mức giá rẻ nhất đối với người dùng, nhưng các bạn phải lưu ý vì không phải dòng máy V1 nào cũng có thể can thiệp được phần mềm để chơi game không cần thẻ. Chính vì vậy việc lựa chọn các shop bán hàng có uy tín và kinh nghiệm trong việc cài đặt game là rất quan trọng</p>', 100, 0, '2024-11-29 00:41:14', '2024-12-02 05:11:08', NULL),
(45, 'Máy chơi game cầm tay Microsoft RG Cube', 10, 20, '[\"product/1732816443536-dsc06781_e82e77e3833a46019539938.jpg\",\"product/1732816443548-dsc06765_3298d939f8ed4857b2b425c.jpg\",\"product/1732816443559-dsc06763_5b65ad9fa7f3400497953c5.jpg\",\"product/1732816443566-dsc06762_d360cb686a554f3d94921cc.jpg\",\"product/1732816443569-rg-cube_e76764cdad6c4c6dbd02f1a4.jpg\"]', 4500000, 0, '<p><strong>Anbernic RG CUBE</strong> là mẫu máy chơi game cầm tay cao cấp nhất mà hãng từng trình làng trong nửa cuối năm 2024.&nbsp;</p><p>&nbsp;</p><p>RG CUBE có thiết kế bo tròn độc đáo với màn hình IPS OCA tỉ lệ 1:1 và sở hữu cấu hình đủ khoẻ để chạy Hệ điều hành Android 13 cùng rất nhiều tựa game thuộc các hệ máy như : Nintendo 3DS, Playstation 1, Playstation 2, Dreamcast, GAMECUBE, NES, SNES, SEGA, CPS1, FBA, MAME, GBA… CPU Unisoc T820 Processor GPU Quad Core Mali-G57 850MHz RAM 8GB LPDDR4X Màn Hình 3.95-inch IPS screen, OCA full lamination, multi-touch, resolution: 720*720 SDCard Tặng kèm thẻ JVJ 64gb/128g cài sẵn kho game hay và Việt hóa được TOPO chọn lọc và config sẵn Hỗ trợ Xuất hình qua hdmi và kết nối được tay cầm Pin 5200mAh Cổng sạc Tyce C Chế độ rung Có hỗ trợ</p>', 11, 1, '2024-11-29 00:54:03', '2024-12-02 04:43:44', NULL),
(46, 'Miyoo Mini Plus Asus', 10, 14, '[\"product/1732816687025-_hie0318_c8f27b01da7f435598975b3.jpg\",\"product/1732816687030-_hie0321_894d26547f9f46ba9fe7d97.jpg\",\"product/1732816687034-miyoo-plus-trang_c3195e3bb29e4c9.jpg\",\"product/1732816687037-miyoo-mini-plus-viet-nam_6b823d3.jpg\",\"product/1732816687044-miyoo-plus-xam_08166d2062984a51a.jpg\"]', 1700000, 0, '<p><strong>Miyoo Mini Plus</strong> là mẫu máy chơi game mini ra mắt đầu năm 2023 đã tạo lên cơn sốt trong giới game thủ Retro.&nbsp;</p><p>&nbsp;</p><p>Máy là thế hệ sau của dòng Miyoo Mini vỗn đã quá nối tiếng trước đó.&nbsp;</p><p>Máy có cấu hình khỏe, đủ chơi mượt được tất cả game Retro kể cả hệ PS1, lý tưởng cho việc cầm và chơi nhanh chóng. Và với hỗ trợ save/load game, bạn có thể tiếp tục chơi bất cứ lúc nào ngay cả khi bản gốc của trò chơi không có phần lưu game.&nbsp;</p><p>&nbsp;</p><p>CPU Cotex-A7 dual core 1.2GHz processor RAM 128Mb Màn hình 3.5 inch IPS screen, ultra-narrow frame ratio Hệ game hỗ trợ NES/SNES/GB/GBC/GBA/SMD/SMS/PCE/NEOGEO và PS1. SDCard Tặng kèm thẻ 64/128gb cài sẵn kho game TOPO Các nút L1, R1, L2, R2 nút xoay âm lượng, bật / tắt, Đặt lại Kết nối tai nghe Có jack cắm tai nghe 3.5mm, hỗ trợ nghe nhạc Pin 3000mah lithium Cổng sạc Tyce C Chế độ rung Có hỗ trợ</p>', 43, 2, '2024-11-29 00:58:07', '2024-12-02 04:34:47', NULL),
(47, 'Tai nghe Razer Kraken V4 X USB', 3, 18, '[\"product/1732817308112-kraken_v4_x__2024__render_05__1.jpg\",\"product/1732817308115-kraken_v4_x__2024__render_06__1.jpg\",\"product/1732817308116-kraken_v4_x__2024__render_03__1.jpg\",\"product/1732817308128-kraken_v4_x__2024__render_04__1.jpg\",\"product/1732817308130-kraken_v4_x__2024__render_02__1.jpg\"]', 2990000, 2530000, '<p><strong>Tai Nghe Gaming Razer Kraken V4 X</strong> là một lựa chọn hoàn hảo cho game thủ tìm kiếm sự kết hợp giữa âm thanh tuyệt vời, sự thoải mái khi đeo và thiết kế đẹp mắt.&nbsp;</p><p>Với trọng lượng siêu nhẹ chỉ 250g, Tai Nghe Gaming Razer Kraken V4 X mang đến cảm giác thoải mái ngay cả khi sử dụng trong thời gian dài. Âm Thanh Vòm 7.1 Chân Thực Âm thanh vòm 7.1 đắm chìm đưa bạn vào trung tâm của trò chơi.&nbsp;</p><p>Bạn sẽ cảm nhận được từng bước chân của đối thủ, tiếng súng nổ hay tiếng động cơ gầm rú một cách rõ ràng và sống động. Driver Razer TriForce 40mm Sống Động Driver Razer TriForce 40mm tái tạo âm thanh một cách chính xác và chi tiết, từ âm cao trong trẻo đến âm trầm mạnh mẽ. Bạn sẽ không bỏ lỡ bất kỳ chi tiết âm thanh nào trong trò chơi.</p>', 300, 2, '2024-11-29 01:08:28', '2024-12-02 11:34:08', NULL),
(48, 'Tai nghe DareU EH469 7.1 RGB Pink', 3, 5, '[\"product/1732817429388-_gvn8894_0ad8345edee04221929145e.jpg\",\"product/1732817429389-_gvn8892_ff10ed7b669745358264a90.jpg\",\"product/1732817429389-_gvn8888_e6d7b1f9ae3e4d249016d8b.jpg\",\"product/1732817429394-_gvn8890_d519abdb8c9a469aba95ab8.jpg\",\"product/1732817429395-34400_dareu_eh469_pink_1d57e30ad.jpg\"]', 5900000, 3900000, '<p><strong>Thương hiệu:</strong> DareU&nbsp;</p><p><strong>Bảo hành:</strong> 12 tháng&nbsp;</p><p><strong>Series/Model:</strong> EH469 7.1 RGB Pink&nbsp;</p><p><strong>Màu sắc:</strong> Hồng&nbsp;</p><p><strong>Kiểu tai nghe:</strong> Over-ear&nbsp;</p><p><strong>Kiểu kết nối:</strong> Có dây&nbsp;</p><p><strong>LED:</strong> Có LED RGB tự thay đổi màu sắc&nbsp;</p><p><strong>Chuẩn kết nối:</strong> USB type&nbsp;</p><p><strong>A Microphone:</strong> Có thể điều chỉnh hướng&nbsp;</p><p><strong>Trở kháng: </strong>1KHz / 32Ohm&nbsp;</p><p><strong>Tần số:</strong> 20Hz - 20KHz&nbsp;</p><p><strong>Khả năng cách âm:</strong> Có&nbsp;</p><p><strong>Chất liệu khung: </strong>Hợp kim&nbsp;</p><p><strong>Chất liệu đệm tai nghe:</strong> Da mềm&nbsp;</p><p><strong>Phụ kiện đi kèm: </strong>Hướng dẫn sử dụng&nbsp;</p><p><strong>Tương thích:</strong> Windows / MacOS&nbsp;</p><p><strong>Chức năng đặc biệt:</strong> Giả lập âm thanh 7.1&nbsp;</p><p>&nbsp;</p><p><strong>Đánh giá chi tiết tai nghe:</strong> DareU EH469 7.1 RGB Pink Thiết kế đáng yêu cá tính DareU EH469 7.1 RGB Pink mang thiết kế headband kép đơn giản, trọng lượng chỉ 280g (không bao gồm dây) một trong những sự lựa chọn tai nghe máy tính vô cùng thoải mái khi đeo mà không gây áp lực khó chịu cho đầu. Phần chụp tai với kích thước lớn hình Oval chụp kín tai, phần đệm đầu có thể co dãn cho cảm giác đeo rất thoải mái. Gọng của tai nghe được làm bằng thép cho độ chắc chắn bền bỉ cao. Ngoài ra, phiên bản màu hồng còn đi kèm tai mèo cho những cô nàng đáng yêu. Tai nghe DareU EH469 7.1 RGB Pink có đệm tai tai rất lớn, rất êm, cho cảm giác đeo thoải mái lâu dài.</p>', 116, 2, '2024-11-29 01:10:29', '2024-12-02 04:37:13', NULL),
(49, 'Tai nghe Không dây Logitech Zone 300 Đen', 3, 19, '[\"product/1732817597493-m3o5wy53_38c2178818c94bd09306fc5.jpg\",\"product/1732817597493-yotvtd4m_15e241be0cc247e5833997f.jpg\",\"product/1732817597493-u9y6sy2h_4245a0f653ba40f2bf8dfae.jpg\",\"product/1732817597494-icz2qubb_56b4a8177f6f489e91fa2c4.jpg\"]', 1790000, 1450000, '<p><strong>Đánh giá chi tiết tai nghe không dây Logitech Zone 300 Đen Bạn</strong> đã bao giờ ước ao sở hữu một chiếc tai nghe không chỉ mang lại trải nghiệm âm thanh tuyệt vời mà còn là điểm nhấn thời trang cho phong cách của bạn chưa?&nbsp;</p><p>&nbsp;</p><p>Tai nghe không dây Logitech Zone 300 hông chỉ đáp ứng mọi mong muốn của bạn mà còn vượt xa sự mong đợi. Micro Loại: Mic tạo chùm kép với thuật toán khử tiếng ồn Độ nhạy tần số: 100-7KHz Kết nối không dây Phiên bản Tai nghe Bluetooth: 5.3 Khoảng cách hoạt động: lên tới 30 m 4Đường ngắm của trường mở. Phạm vi không dây có thể thay đổi tùy theo môi trường vận hành và thiết lập máy tính.&nbsp;</p><p>Pin Pin tích hợp (Lithium ion) Thời gian sử dụng pin (thời gian trò chuyện): Lên tới 16 giờ 1Thời gian sử dụng pin có thể thay đổi tùy theo người dùng và điều kiện sử dụng máy tính. Thời gian sử dụng pin (thời gian nghe): Lên tới 20 giờ 2Thời gian sử dụng pin có thể thay đổi tùy theo người dùng và điều kiện sử dụng máy tính. Sạc Sạc đầy: 2 giờ Sạc nhanh: 5 phút cho thời gian đàm thoại lên tới 1 giờ 3Thời gian sử dụng pin có thể thay đổi tùy theo người dùng và điều kiện sử dụng máy tính. Dây cáp sạc USB-C: 1 m Phụ kiện đi kèm Tai nghe không dây Zone 300 Dây sạc USB-C tới USB-C Tài liệu hướng dẫn sử dụng Loa Độ nhạy tần số (chế độ âm nhạc): 50-20KHz Độ nhạy tần số (chế độ trò chuyện): 100-7KHz Độ nhạy: 96dB ±3dB @1kHz Kích thước màng loa: 30 mm Tuân thủ về âm thanh: Tương thích với EN 50332-2</p>', 123, 0, '2024-11-29 01:13:17', '2024-12-02 05:12:01', NULL),
(50, 'Tai nghe Razer Hammerhead True Wireless HyperSpeed (Playstation)', 3, 18, '[\"product/1732817796853-hammerhead_hyperspeed_playstatio (3).jpg\",\"product/1732817796854-r_hce_hc8_9447197114398_221015-h.jpg\",\"product/1732817796855-hammerhead_hyperspeed_playstatio (2).jpg\",\"product/1732817796856-hammerhead_hyperspeed_playstatio (1).jpg\",\"product/1732817796862-hammerhead_hyperspeed_playstatio.jpg\"]', 3790000, 2990000, '<p><strong>Hãng sản xuất:</strong> Razer&nbsp;</p><p><strong>Bảo hành:</strong> 24 tháng&nbsp;</p><p><strong>Model:</strong> Hammerhead True Wireless Hyperspeed - Playstation&nbsp;</p><p><strong>Màu:</strong> Trắng&nbsp;</p><p><strong>Kiểu tai nghe:</strong> In-ear&nbsp;</p><p><strong>Kiểu kết nối:</strong> True wireless (không dây hoàn toàn)&nbsp;</p><p><strong>Chuẩn kết nối:</strong> Bluetooth, Wireless&nbsp;</p><p><strong>Khả năng cách âm:</strong> Có&nbsp;</p><p><strong>Microphone:</strong> Có&nbsp;</p><p><strong>Tần số: </strong>20 Hz - 20000 Hz&nbsp;</p><p><strong>Trở kháng:</strong> 16 Ohm&nbsp;</p><p><strong>Độ nhạy: </strong>Microphone: -26 dBFS&nbsp;</p><p><strong>Phạm vi kết nối:</strong> 10m&nbsp;</p><p><strong>Thời lượng pin:</strong> LIGHTING OFF / ANC OFF Lên đến 32.5 giờ: 6.5 giờ tai nghe + 26 giờ sạc từ case Được kiểm tra trên thiết bị IOS với 50% âm lượng LIGHTING ON / ANC OFF Lên đến 27.5 giờ: 5.5 giờ tai nghe + 22 giờ sạc từ case Được kiểm tra trên thiết bị IOS với 50% âm lượng và độ sáng ở chế độ breathing effect. LIGHTING OFF / ANC ON Lên đến 22.5 giờ: 4.5 giờ tai nghe + 18 giờ sạc từ case Được kiểm tra trên thiết bị ISO với 50% âm lượng và ANC ON LIGHTING ON / ANC ON Lên đến 20 giờ: 4 giờ tai nghe + 16 giờ từ case Được kiểm tra trên thiêt bị IOS với 50% âm lượng và đọ sáng ở chế độ breathing effect và ANC ON Drivers: 10 mm Trọng lượng: 53 g Tương thích: PS5 PC, MAC Điện thoại, máy tính bảng và máy chơi game có kết nối bluetooth Phụ kiện: Hộp sạc Cáp sạc USB-C (chiều dài 0.5m) 6 cặp mút tai bằng silicon (SmoothComfort + SecureSeal S/M/L) 1 cặp mút cao cấp Comply (M)</p>', 444, 0, '2024-11-29 01:16:36', '2024-12-02 05:13:42', NULL),
(51, 'Tai nghe Asus ROG Cetra True Wireless White', 3, 14, '[\"product/1732818135649-rog-cetra-true-wireless-moonligh (4).jpg\",\"product/1732818135649-rog-cetra-true-wireless-moonligh (3).jpg\",\"product/1732818135650-rog-cetra-true-wireless-moonligh (2).jpg\",\"product/1732818135656-rog-cetra-true-wireless-moonligh (1).jpg\",\"product/1732818135657-rog-cetra-true-wireless-moonligh.jpg\"]', 2790000, 2090000, '<p><strong>Thương hiệu:</strong> Asus&nbsp;</p><p><strong>Model:</strong> Asus ROG Cetra True Wireless White&nbsp;</p><p><strong>Bảo hành:</strong> 24 tháng&nbsp;</p><p><strong>Kiểu:</strong> In-ear&nbsp;</p><p><strong>Sử dụng:</strong> Chơi Game Multimedia&nbsp;</p><p><strong>Kết nối:</strong> Không dây, Bluetooth&nbsp;</p><p><strong>Nền tảng hỗ trợ:</strong> PC MAC Máy chơi game Nintendo Switch iOS Android Bluetooth device&nbsp;</p><p><strong>Chất liệu trình điều khiển:</strong> Nam châm neođim&nbsp;</p><p><strong>Kích thước trình điều khiển:</strong> 10 mm&nbsp;</p><p><strong>Trở kháng của tai nghe:</strong> 32 ohm&nbsp;</p><p><strong>Đáp ứng tần số tai nghe:</strong> 20Hz - 20KHz&nbsp;</p>', 19, 0, '2024-11-29 01:22:15', '2024-12-02 05:15:54', NULL),
(52, 'Bàn phím cơ E-DRA EK375 Alpha Đen Đỏ Brown Switch', 13, 21, '[\"product/1733091767479-ban-phim-co-e-dra-ek375-alpha-re (5).jpg\",\"product/1733091767485-ban-phim-co-e-dra-ek375-alpha-re (4).jpg\",\"product/1733091767490-ban-phim-co-e-dra-ek375-alpha-re (3).jpg\",\"product/1733091767493-ban-phim-co-e-dra-ek375-alpha-re (2).jpg\",\"product/1733091767493-ban-phim-co-e-dra-ek375-alpha-re (1).jpg\"]', 729000, 415000, '<ul><li><p><strong>Kích thước &amp; Trọng lượng</strong></p><p>Kích thước</p><p>327 x 136 x 40 mm</p><p>Trọng lượng</p><p>1207 + 5g</p></li><li><p><strong>Thông tin hãng</strong></p><p>Hãng sản xuất</p><p>E-dra</p></li><li><p><strong>Thông số khác</strong></p><p>Tiện ích</p><p>Tương thích hệ điều hành: Windows 98 / 2000 / ME / NT / XP / win 7,8,10</p></li><li><p><strong>Thông số kĩ thuật</strong></p><p>Số phím (bàn phím)</p><p>82 phím</p><p>Keycap (bàn phím)</p><p>PBT Doubleshot</p></li><li><p><strong>Thông số kỹ thuật</strong></p><p>Nút nhấn</p><p>Núm xoay tích hợp điều chỉnh âm lượng nhanh chóng, tiện lợi</p><p>Kết nối</p><p>Dây USB to Type-C</p><p>Đèn LED</p><p>Rainbow</p></li><li><p><strong>Tiện ích</strong></p><p>Tiện ích</p><p>Switch: E-DRA<br>Cấu trúc Gasket - Tốt nhất cho phím cơ<br>Sử dụng Foam case silicon<br>Độ bền Switch lên đến 50 triệu lần nhấn<br>Chống bám vân tay và mồ hôi<br>Các ký tự không bị mờ nhạt theo thời gian</p></li></ul>', 113, 2, '2024-12-02 05:22:47', '2024-12-02 08:37:28', NULL),
(53, 'Bàn phím Bluetooth Logitech Pebble Key 2 K380S', 13, 19, '[\"product/1733091926187-ban-phim-bluetooth-logitech-pebb (3).jpg\",\"product/1733091926188-ban-phim-bluetooth-logitech-pebb (2).jpg\",\"product/1733091926189-ban-phim-bluetooth-logitech-pebb (1).jpg\",\"product/1733091926196-ban-phim-bluetooth-logitech-pebb.jpg\",\"product/1733091926196-ban-phim-logitech-k380s.jpg\"]', 1129000, 665000, '<ul><li><p><strong>Kích thước &amp; Trọng lượng</strong></p><p>Kích thước</p><p>124 x 279 x 16 mm</p><p>Trọng lượng</p><p>415 g (kèm pin)</p></li><li><p><strong>Thông tin hãng</strong></p><p>Hãng sản xuất</p><p>Logitech</p></li><li><p><strong>Thông số kĩ thuật</strong></p><p>Loại bàn phím (bàn phím)</p><p>Mini-size</p></li><li><p><strong>Thông số kỹ thuật</strong></p><p>Nút nhấn</p><p>Hỗ trợ các phím đặc biệt: Hiển thị màn hình, tìm kiếm, quay lại, đọc chính tả bằng giọng nói, menu emoji, chụp màn hình</p><p>Kết nối</p><p>Bluetooth</p><p>Đèn LED</p><p>LED</p><p>Chất liệu</p><p>Nhựa tái chế</p><p>Ứng dụng điều khiển</p><p>Logi Options+</p><p>Pin</p><p>2 x AAA (Pin kiềm)<br>Tuổi thọ pin 36 tháng</p></li><li><p><strong>Kết nối &amp; Tương thích</strong></p><p>Tương thích</p><p>MacOS, Windows, Linux</p><p>Khoảng cách kết nối (Độ dài dây)</p><p>10 mét</p></li><li><p><strong>Tiện ích</strong></p><p>Tiện ích</p><p>Có thể ghép cặp lên đến 3 thiết bị<br>Công nghệ Bluetooth tiết kiệm năng lượng</p></li></ul>', 11, 0, '2024-12-02 05:25:26', '2024-12-02 05:25:26', NULL),
(54, 'Bàn phím cơ DareU EK65s White Black PBT Dream Switch', 13, 5, '[\"product/1733092234124-ek65s__3__edf596f7e6354ae282968d.jpg\",\"product/1733092234143-ek65s__4__28c3d12e97e44e31889202.jpg\",\"product/1733092234145-ek65s__2__7f51872744c544058888a2.jpg\",\"product/1733092234156-ek65s__1__fc88e487086b434bb1e00f.jpg\",\"product/1733092234156-post-01_9403354f97b5460d884e13ae.jpg\"]', 1000000, 650000, '<ul><li><strong>Bảo hành: </strong>24 tháng</li><li><strong>Thương hiệu: </strong>DareU</li><li><strong>Kích thước: </strong>338 x 121 x 38mm</li><li><strong>LED: </strong>RGB</li><li><strong>Trọng lượng: </strong>600g</li><li><strong>Dây: </strong>1.8m (Type-C; rời)</li><li><strong>Keycaps: </strong>PBT Double-shot</li><li><strong>Phím: </strong>68 phím</li></ul>', 123, 1, '2024-12-02 05:30:34', '2024-12-02 08:37:37', NULL),
(55, 'Ghế công thái học WARRIOR Hero Series WEC501 Plus Black', 7, 22, '[\"product/1733092617858-d2a0104-510x765_f7eeb374e7b7418c.jpg\",\"product/1733092617860-d2a0106-510x765_131ec67dbbaa45e2.jpg\",\"product/1733092617864-d2a0105-510x765_de7dac1d01ce40ab.jpg\",\"product/1733092617865-d2a0102-scaled_0dbd5142272d4b9e8.jpg\",\"product/1733092617873-d2a0090-510x765_5909c6566e884adb.jpg\"]', 3190000, 3100000, '<ul><li><strong>Thương hiệu: </strong>WARRIOR</li><li><strong>Bảo hành: </strong>12 tháng</li><li><strong>Màu sắc: </strong>Đen</li><li><strong>Chiều cao tối đa: </strong>180cm</li><li><strong>Trục thủy lực: </strong>Class 4 bền bỉ</li><li><strong>Kê tay: </strong>2D</li><li><strong>Tựa đầu: </strong>3D</li><li><strong>Tải trọng tối đa: </strong>120kg</li></ul>', 123, 1, '2024-12-02 05:36:57', '2024-12-02 10:59:11', NULL),
(56, 'Ghế Gaming E-Dra Dignity EGC234 Red', 7, 21, '[\"product/1733092916925-z5491466558157_641f78b2e9a82b7a6.jpg\",\"product/1733092916929-z5491466558373_78802a41c069a9eba.jpg\",\"product/1733092916929-z5491466558207_c248020a657a009c6.jpg\",\"product/1733092916930-z5491466558209_338ce023fd7a19902.jpg\",\"product/1733092916941-522_egc234r___5_27d195f6a51b4c7a.jpg\"]', 1990000, 1660000, '<figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất:&nbsp;&nbsp; &nbsp;</strong></td><td>E-Dra</td></tr><tr><td><strong>Model:</strong></td><td>E-Dra Yummy EGC234 Black</td></tr><tr><td><strong>Chất liệu</strong></td><td>da PU</td></tr><tr><td><strong>Phần kê tay</strong></td><td>gắn liền - 1D</td></tr><tr><td><strong>Góc nằm max</strong></td><td>150 độ</td></tr><tr><td><strong>Chất liệu khung</strong></td><td>Khung, chân nhựa</td></tr><tr><td><strong>Bộ nâng thủy lực</strong></td><td>Class 2</td></tr><tr><td><strong>Phụ kiện</strong></td><td>Giấy HDSD / Kê chân</td></tr></tbody></table></figure>', 1232, 6, '2024-12-02 05:41:56', '2024-12-02 10:59:16', NULL);
INSERT INTO `product` (`id`, `name`, `category_id`, `brand_id`, `image`, `price`, `promotion_price`, `description`, `quantity`, `view`, `created_at`, `updated_at`, `deleted_at`) VALUES
(57, 'Tai nghe Razer Hammerhead True Wireless HyperSpeed (Playstation)', 3, 18, '[\"product/1733104106942-r_h35_hcc_9447197016094_221015-h.png\",\"product/1733104106960-r_hce_hc8_9447197114398_221015-h.png\",\"product/1733104106963-hammerhead_hyperspeed_playstatio (1).png\",\"product/1733104106975-hammerhead_hyperspeed_playstatio.png\",\"product/1733104106977-hammerhead_hyperspeed_playstation__2022__render_03_917eb422b45241e28161be182ecc5953_grande.webp\"]', 3790000, 2990000, '<figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất:</strong></td><td>Razer&nbsp;</td></tr><tr><td><strong>Bảo hành:</strong></td><td>24 tháng</td></tr><tr><td><strong>Model:</strong></td><td>Hammerhead True Wireless Hyperspeed - Playstation</td></tr><tr><td><strong>Màu:</strong></td><td>Trắng</td></tr><tr><td><strong>Kiểu tai nghe:</strong></td><td>In-ear</td></tr><tr><td><strong>Kiểu kết nối:</strong></td><td>True wireless (không dây hoàn toàn)</td></tr><tr><td><strong>Chuẩn kết nối:</strong></td><td>Bluetooth, Wireless</td></tr><tr><td><strong>Khả năng cách âm:</strong></td><td>Có</td></tr><tr><td><strong>Microphone:</strong></td><td>Có</td></tr><tr><td><strong>Tần số:</strong></td><td>20 Hz - 20000 Hz</td></tr><tr><td><strong>Trở kháng:</strong></td><td>16 Ohm</td></tr><tr><td><strong>Độ nhạy:</strong></td><td>Microphone:&nbsp;-26 dBFS</td></tr><tr><td><strong>Phạm vi kết nối:</strong></td><td>10m</td></tr><tr><td><strong>Thời lượng pin:</strong></td><td><figure class=\"table\"><table><tbody><tr><td><p><strong>LIGHTING OFF / ANC OFF</strong></p><ul><li>Lên đến 32.5 giờ: 6.5 giờ tai nghe + 26 giờ sạc từ case</li><li>Được kiểm tra trên thiết bị IOS với 50% âm lượng</li></ul><p><br><strong>LIGHTING ON / ANC OFF</strong></p><ul><li>Lên đến 27.5 giờ: 5.5 giờ tai nghe + 22 giờ sạc từ case</li><li>Được kiểm tra trên&nbsp;thiết bị IOS với 50% âm lượng và độ sáng ở chế độ breathing effect.</li></ul><p><br><strong>LIGHTING OFF / ANC ON</strong></p><ul><li>Lên đến 22.5 giờ: 4.5 giờ tai nghe + 18 giờ sạc từ case</li><li>Được kiểm tra trên thiết bị ISO với 50% âm lượng và ANC ON</li></ul><p><br><strong>LIGHTING ON / ANC ON</strong></p><ul><li>Lên đến 20 giờ: 4 giờ tai nghe + 16 giờ từ case</li><li>Được kiểm tra trên thiêt bị IOS với 50% âm lượng và đọ sáng ở chế độ breathing effect và ANC ON</li></ul></td></tr></tbody></table></figure></td></tr><tr><td><strong>Drivers:</strong></td><td>10 mm</td></tr><tr><td><strong>Trọng lượng:&nbsp;</strong></td><td>53 g</td></tr><tr><td><strong>Tương thích:</strong></td><td>PS5<br>PC, MAC<br>Điện thoại, máy tính bảng và máy chơi game có kết nối bluetooth</td></tr><tr><td><strong>Phụ kiện:</strong></td><td>Hộp sạc<br>Cáp sạc USB-C (chiều dài 0.5m)<br>6 cặp mút tai bằng silicon&nbsp;(SmoothComfort + SecureSeal S/M/L)<br>1 cặp mút cao cấp Comply (M)</td></tr></tbody></table></figure>', 20, 0, '2024-12-02 08:48:27', '2024-12-02 08:48:27', NULL),
(58, 'Màn hình ASUS ProArt PA279CV 27\" IPS 4K chuyên đồ họa 0.0 Xem đánh giá', 15, 14, '[\"product/1733104512653-a278qv-24-ips-2k-75hz-chuyen-do (1).png\",\"product/1733104512667-a278qv-24-ips-2k-75hz-chuyen-do.png\",\"product/1733104512676-pa278qv-09_1b770e19cd2441cdb4d13.png\",\"product/1733104512692-eyecare_proart_series_298516d7c6.png\",\"product/1733104512853-asus_pa278qv_gearvn_e808117d809a.png\"]', 13890000, 11990000, '<figure class=\"table\"><table><tbody><tr><td><strong>Thương hiệu</strong></td><td>Asus</td></tr><tr><td><strong>Bảo hành</strong></td><td>36 Tháng</td></tr><tr><td><strong>Kích thước</strong></td><td>27 inch</td></tr><tr><td><strong>Độ phân giải</strong></td><td>2K 2560 x 1440 ( 16 : 9 )</td></tr><tr><td><strong>Tấm nền</strong></td><td>IPS</td></tr><tr><td><strong>Tần số quét</strong></td><td>75Hz</td></tr><tr><td><strong>Thời gian phản hồi</strong></td><td>5ms</td></tr><tr><td><strong>Kiểu màn hình ( phẳng / cong )</strong></td><td>Phẳng&nbsp;</td></tr><tr><td><strong>Độ sáng</strong></td><td>350 cd/m2</td></tr><tr><td><strong>Góc nhìn</strong></td><td>178 (H) / 178 (V)</td></tr><tr><td><strong>Khả năng hiển thị màu sắc</strong></td><td>100% sRGB&nbsp;<br>100% Rec.709</td></tr><tr><td><strong>Độ tương phản tĩnh</strong></td><td>1000 : 1&nbsp;</td></tr><tr><td><strong>Độ tương phản động</strong></td><td>100.000.000 : 1&nbsp;</td></tr><tr><td><strong>Thiết kế cơ học</strong></td><td>Góc nghiêng :Có (+35°&nbsp;~&nbsp;-5°)<br>Xoay :Có (+45° ~ -45°)<br>Quay :Có (+90° ~ -90°)<br>Điều chỉnh Độ cao :0~150mm<br>Chuẩn VESA treo tường :100x100mm<br>Khoá Kensington :Có</td></tr><tr><td><strong>Cổng xuất hình</strong></td><td>DisplayPort 1.2 x 2 (Daisy Chain)<br>HDMI 1.4 x 1<br>USB Hub: 4 cổng USB 3.1<br>Jack cắm tai nghe 3.5mm x 1</td></tr><tr><td><strong>Tính năng đặc biệt</strong></td><td>Công nghệ không để lại dấu trace free :Có<br>ProArt Preset : Tiêu chuẩn<br>ProArt Preset : sRGB<br>ProArt Preset : DCI-P3<br>ProArt Preset : Rec. 709<br>ProArt Preset : Cảnh vật<br>ProArt Preset : Đọc<br>ProArt Preset : Phòng tối<br>ProArt Preset : Dựng hình nhanh<br>ProArt Preset : Chế độ Người dùng 1<br>ProArt Preset : Chế độ Người dùng 2<br>Công nghệ SPLENDID :Có<br>Nhiệt độ màu. Lựa chọn :Có(5 chế độ)<br>Điều chỉnh màu sắc :6 trục điều chỉnh(R,G,B,C,M,Y)<br>Điều chỉnh thông số gamma :Có (Support Gamma 1.8/2.0/2.2/2.4/2.6 )<br>Hiển thị màu chính xác :△E&lt; 2<br>ProArt Palette : Có<br>QuickFit : Có<br>HDCP : Yes<br>Extreme Low Motion Blur : Có<br>Công nghệ VRR :Adaptive-Sync<br>Tăng tối :Có<br>Tiện ích ProArt :Có<br>Low Blue Light : Có<br>Tính năng âm thanh: Có loa kép 2W x 2</td></tr><tr><td><strong>Khối lượng</strong></td><td>Khối lượng thực có chân đế: 8.4 kg<br>Khối lượng thực không có chân đế: 5.5 kg<br>Trọng lượng thô: 10.7 kg</td></tr><tr><td><strong>Tiêu thụ điện</strong></td><td>Điện năng tiêu thụ :&lt; 21.28W<br>Chế độ tiết kiệm điện :&lt; 0.5W<br>Chế độ tắt nguồn :0W<br>Điện áp :100-240V, 50/60Hz</td></tr><tr><td><strong>Kích thước chuẩn</strong></td><td>Kích thước vật lý kèm với kệ (WxHxD) : 615 x (374 ~ 524) x 228 mm<br>Kích thước vật lý không kèm kệ (WxHxD) : 615 x 372 x 54 mm<br>Kích thước hộp (WxHxD) : 731 x 456 x 227 mm</td></tr><tr><td><strong>Phụ kiện đi kèm</strong></td><td>Báo cáo hiệu chỉnh màu sắc<br>Cáp DisplayPort<br>Dây điện<br>Hướng dẫn sử dụng<br>Thẻ bảo hành<br>Welcome Card<br>Phụ kiện trong hộp có thể thay đổi theo khu vực</td></tr></tbody></table></figure>', 10, 0, '2024-12-02 08:55:12', '2024-12-02 09:01:36', NULL),
(59, 'Màn hình MSI MAG 271QPX QD-OLED E2 27\" QD-OLED 2K 240Hz chuyên game', 15, 13, '[\"product/1733104811915-n-man-hinh-msi-mag-271qpx-qd-ole (1).png\",\"product/1733104811934-n-man-hinh-msi-mag-271qpx-qd-ole.png\",\"product/1733104811971-msi_mag_271qpx_qd-oled_e2_gearvn.png\"]', 23990000, 11990000, '<ul><li><strong>Thời gian phản hồi: </strong>0.03ms</li><li><strong>Kích thước: </strong>27 inch</li><li><strong>Tần số quét: </strong>240 Hz</li><li><strong>Kiểu màn hình: </strong>Phẳng</li><li><strong>Độ phân giải: </strong>2K (2560 x 1440)</li><li><strong>Khử nhấp nháy: </strong>Có</li></ul>', 10, 0, '2024-12-02 09:00:12', '2024-12-02 09:00:12', NULL),
(60, 'Củ sạc nhanh Samsung 25W không kèm cáp', 12, 1, '[\"product/1733105254459-cu-sac-nhanh-samsung-25w-ep-t251 (3).png\",\"product/1733105254464-cu-sac-nhanh-samsung-25w-ep-t251 (2).png\",\"product/1733105254475-cu-sac-nhanh-samsung-25w-ep-t251 (1).png\",\"product/1733105254476-cu-sac-nhanh-samsung-25w-ep-t251.png\"]', 550000, 250000, '<ul><li><strong>Cổng sạc ra:</strong> 1 x Type-C</li><li><strong>Sạc tối đa:</strong> 1 thiết bị</li><li><strong>Công suất sạc:</strong> 25W</li><li><strong>Tính năng:</strong> Sạc nhanh, Chống cháy nổ</li><li><strong>Tính năng khác:</strong> Không lo dòng điện quá tải cho phép, đoản mạch, nhiệt độ cao, rò rỉ điện,…</li><li><strong>Hãng sản xuất :</strong> Samsung Chính hãng</li><li><p><strong>Tiện ích:</strong> Công nghệ sạc GaN</p><p><strong>Sạc siêu nhanh tối đa:</strong> Tối đa 25W, PD 3.0 PPS. 25W&nbsp;</p><p><strong>Sạc siêu nhanh (SFC)</strong><br><strong>Tiêu thụ điện năng ở chế độ chờ (&lt;5mW)</strong></p></li></ul>', 10, 0, '2024-12-02 09:07:34', '2024-12-02 09:07:34', NULL),
(61, 'Cáp sạc nhanh Baseus Cafule PD 2.0 100W Type-C to Type-C (20V 5A) 2M', 12, 23, '[\"product/1733105772202-cap-sac-nhanh-baseus-cafule-pd-2 (2).png\",\"product/1733105772228-cap-sac-nhanh-baseus-cafule-pd-2 (1).png\",\"product/1733105772232-cap-sac-nhanh-baseus-cafule-pd-2.png\"]', 249000, 199000, '<ul><li><strong>Loại cáp sạc:</strong> Type-C to Type-C</li><li><strong>Chiều dài dây:</strong> 2 mét</li><li><strong>Chất liệu:</strong> Đầu cáp kim loại, Dây bện vải bện dù</li><li><strong>Cổng sạc ra: </strong>1 x Type-C</li><li><strong>Sạc tối đa:</strong>1 thiết bị</li><li><strong>Công suất sạc:</strong> 100W</li><li><strong>Tính năng:</strong> Truyền dữ liệu tốc độ cao, Sạc nhanh, Chống cháy nổ, Có chip điều khiển, Bọc vải, dù, Power Delivery, PowerIQ</li><li><strong>Dòng điện vào:</strong> 20V/5A</li><li><strong>Hãng sản xuất:</strong> Baseus</li><li><strong>Tiện ích: </strong>Truyền dữ liệu 480Mbps</li></ul>', 10, 0, '2024-12-02 09:16:12', '2024-12-02 09:16:12', NULL),
(62, 'Cáp sạc nhanh tự ngắt Baseus Explorer Series Type-C to iPhone 20W 1M', 12, 23, '[\"product/1733105962590-cap-sac-nhanh-tu-ngat-type-c-to (3).png\",\"product/1733105962607-cap-sac-nhanh-tu-ngat-type-c-to (2).png\",\"product/1733105962610-cap-sac-nhanh-tu-ngat-type-c-to (1).png\",\"product/1733105962619-cap-sac-nhanh-tu-ngat-type-c-to.png\"]', 290000, 195000, '<ul><li><strong>Loại cáp sạc:</strong> Type-C to Type-C</li><li><strong>Chiều dài dây:</strong> 2 mét</li><li><strong>Chất liệu:</strong> Đầu cáp kim loại, Dây bện vải bện dù</li><li><strong>Cổng sạc ra: </strong>1 x Lightning</li><li><strong>Sạc tối đa:</strong>1 thiết bị</li><li><strong>Công suất sạc:</strong> 100W</li><li><strong>Tính năng:</strong> Truyền dữ liệu tốc độ cao, Sạc nhanh, Chống cháy nổ, Có chip điều khiển, Bọc vải, dù, Power Delivery, PowerIQ</li><li><strong>Dòng điện vào:</strong> 20V/5A</li><li><strong>Hãng sản xuất:</strong> Baseus</li><li><strong>Tiện ích: </strong>Truyền dữ liệu 480Mbps</li></ul>', 10, 1, '2024-12-02 09:19:22', '2024-12-02 11:23:37', NULL),
(63, 'Cáp sạc nhanh tự ngắt Baseus Explorer Series Type-C to iPhone 20W 1M', 12, 23, '[\"product/1733113441690-cap-sac-nhanh-tu-ngat-type-c-to (7).png\",\"product/1733113441692-cap-sac-nhanh-tu-ngat-type-c-to (6).png\",\"product/1733113441693-cap-sac-nhanh-tu-ngat-type-c-to (5).png\",\"product/1733113441696-cap-sac-nhanh-tu-ngat-type-c-to (4).png\"]', 290000, 190000, '<ul><li><strong>Loại cáp sạc:</strong> Type-C to Type-C</li><li><strong>Chiều dài dây:</strong> 2 mét</li><li><strong>Chất liệu:</strong> Đầu cáp kim loại, Dây bện vải bện dù</li><li><strong>Cổng sạc ra: </strong>1 x Lightning</li><li><strong>Sạc tối đa:</strong>1 thiết bị</li><li><strong>Công suất sạc:</strong> 100W</li><li><strong>Tính năng:</strong> Truyền dữ liệu tốc độ cao, Sạc nhanh, Chống cháy nổ, Có chip điều khiển, Bọc vải, dù, Power Delivery, PowerIQ</li><li><strong>Dòng điện vào:</strong> 20V/5A</li><li><strong>Hãng sản xuất:</strong> Baseus</li><li><strong>Tiện ích: </strong>Truyền dữ liệu 480Mbps</li></ul>', 10, 0, '2024-12-02 11:24:01', '2024-12-02 11:24:01', NULL),
(64, 'Sạc nhanh Baseus GaN6 Pro 2C + 2U 65W US kèm cáp C-C 100W 1m', 12, 23, '[\"product/1733113721306-cu-sac-nhanh-baseus-gan6-pro-2c (3).png\",\"product/1733113721309-cu-sac-nhanh-baseus-gan6-pro-2c (2).png\",\"product/1733113721316-cu-sac-nhanh-baseus-gan6-pro-2c (1).png\",\"product/1733113721317-cu-sac-nhanh-baseus-gan6-pro-2c.png\"]', 100000, 90000, '<ul><li><strong>Cổng giao tiếp:</strong> 2 x USB-C, 2 x USB-A</li><li><strong>Sạc tối đa:</strong> 4 thiết bị</li><li><strong>Công suất sạc:</strong> 65W</li><li><strong>Tính năng:</strong> Sạc nhanh, Chống cháy nổ, Dùng được cho laptop, Power Delivery</li><li><strong>Tính năng khác:</strong> Công nghệ bảo vệ đa lớp: bảo vệ quá dòng, quá áp, ngắn mạch và quá nhiệt</li><li><strong>Hãng sản xuất:</strong> Baseus</li><li><strong>Tiện ích:</strong> Công nghệ GaN (Gallium Nitride)<br>Sạc nhanh điện thoại thông minh, máy tính bảng, tai nghe không dây và nhiều thiết bị khác</li></ul>', 5, 2, '2024-12-02 11:28:41', '2024-12-02 11:51:33', NULL),
(65, 'Sạc nhanh Baseus GaN6 Pro 2C + 2U 100W EU kèm cáp C-C 100W 1m', 12, 23, '[\"product/1733115038716-cu-sac-trusmi-ch11-1a-1c-pd-20w (3).png\",\"product/1733115038717-cu-sac-trusmi-ch11-1a-1c-pd-20w (2).png\",\"product/1733115038717-cu-sac-trusmi-ch11-1a-1c-pd-20w (1).png\",\"product/1733115038724-cu-sac-trusmi-ch11-1a-1c-pd-20w.png\"]', 330000, 250000, '<ul><li><strong>Cổng giao tiếp:</strong> 2 x USB-C, 2 x USB-A</li><li><strong>Sạc tối đa:</strong> 4 thiết bị</li><li><strong>Công suất sạc:</strong> 65W</li><li><strong>Tính năng:</strong> Sạc nhanh, Chống cháy nổ, Dùng được cho laptop, Power Delivery</li><li><strong>Tính năng khác:</strong> Công nghệ bảo vệ đa lớp: bảo vệ quá dòng, quá áp, ngắn mạch và quá nhiệt</li><li><strong>Hãng sản xuất:</strong> Baseus</li><li><strong>Tiện ích:</strong> Công nghệ GaN (Gallium Nitride)<br>Sạc nhanh điện thoại thông minh, máy tính bảng, tai nghe không dây và nhiều thiết bị khác</li></ul>', 5, 0, '2024-12-02 11:50:38', '2024-12-02 11:50:38', NULL),
(66, 'PC ASUS GVN Intel i5-12400F/ VGA GTX 1650 (H610)', 9, 14, '[\"product/1733115389494-post-06_82f9ebb7432f4227966ed156.png\",\"product/1733115389519-post-05_98cee5cc95e344b6b2fc8b94.png\",\"product/1733115389530-pba-banner-2023-1200x1200px_10ef.png\"]', 66170000, 63990000, '<figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\"><strong>Mainboard</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/asus-proart-x670e-creator-wifi-ddr5\"><strong>ASUS ProArt X670E-CREATOR WIFI (DDR5)</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td><a href=\"https://gearvn.com/products/amd-ryzen-7-7700x\"><strong>AMD Ryzen 7 7700X / 4.5GHz Boost 5.4GHz / 8 nhân 16 luồng / 40MB / AM5</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-pc\"><strong>RAM</strong></a></td><td><a href=\"https://gearvn.com/products/ram-ddr5-kingston-fury-beast-2-x-16gb-bus-5600/\"><strong>Kingston Fury Beast RGB 32GB (2x16GB) bus 5600 DDR5</strong></a><strong>&nbsp;</strong></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/vga-card-man-hinh\"><strong>VGA</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/card-man-hinh-asus-dual-geforce-rtx-4070-super-evo-oc-edition-12gb-gddr6x-dual-rtx4070s-o12g-evo/\"><strong>ASUS Dual GeForce RTX 4070 SUPER EVO OC Edition 12GB GDDR6X</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/ssd-o-cung-the-ran\"><strong>SSD</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/ssd-wd-black-sn770-1tb-m-2-nvme-pcie-gen4\"><strong>SSD WD Black SN770 1TB M.2 NVMe PCIe Gen4</strong></a></td><td>60 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/hdd-o-cung-pc\"><strong>HDD</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/hdd-wd-blue-2tb-7200rpm\"><strong>HDD WD Blue 2TB 7200rpm</strong></a></td><td>24 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/psu-nguon-may-tinh\"><strong>PSU</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/1000w-nguon-asus-tuf-gaming-1000w-80-plus-gold-full-modular\"><strong>ASUS TUF Gaming 1000W - 80 Plus Gold - Full Modular</strong></a></td><td>120 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/case-thung-may-tinh\"><strong>Case</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/case-asus-tuf-gaming-gt502-black\"><strong>Asus TUF Gaming GT502 Black</strong></a></td><td>24 Tháng</td></tr><tr><td><strong>Tản</strong></td><td><a href=\"https://gearvn.com/products/tan-nhiet-nuoc-asus-rog-ryuo-iii-360-argb\"><strong>ASUS ROG RYUO III 360 ARGB</strong></a></td><td>72 Tháng</td></tr></tbody></table></figure>', 1, 1, '2024-12-02 11:56:29', '2024-12-02 11:56:51', NULL),
(67, 'PC GVN AMD R9-7950X/VGA RTX 4090', 9, 14, '[\"product/1733115609347-helios_5b9b0d2e13404338856f864ec.png\",\"product/1733115609357-post-01_be37dfc6d8bf42198b537318.png\",\"product/1733115609370-post-19_c5afad9b17f94ebf9509411a.png\"]', 129120000, 123000000, '<figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\"><strong>Mainboard</strong></a></td><td><a href=\"https://gearvn.com/products/asus-rog-crosshair-x670e-hero\"><strong>ASUS ROG CROSSHAIR X670E HERO (DDR5)</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td><a href=\"https://gearvn.com/products/amd-ryzen-9-7950x\"><strong>AMD Ryzen 9 7950X / 4.5GHz Boost 5.7GHz / 16 nhân 32 luồng / 81MB / AM5</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-pc\"><strong>RAM</strong></a></td><td><a href=\"https://gearvn.com/products/ram-g-skill-trident-z5-rgb-32gb-2x16gb-5600-ddr5-black-f5-5600j3636c16gx2-tz5rk\"><strong>G.Skill Trident Z5 RGB 32GB (2x16GB) 5600 DDR5 Black</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/vga-card-man-hinh\"><strong>VGA - Card đồ họa</strong></a></td><td><a href=\"https://gearvn.com/products/asus-rog-strix-geforce-rtx-4090-oc-edition-24gb-gddr6x\"><strong>ASUS ROG Strix GeForce RTX 4090 OC Edition 24GB GDDR6X</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/hdd-o-cung-pc\"><strong>HDD</strong></a></td><td><strong>Tùy chọn </strong><a href=\"https://gearvn.com/collections/hdd-o-cung-pc\"><strong>nâng cấp</strong></a></td><td>24 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/ssd-o-cung-the-ran\"><strong>SSD</strong></a></td><td><a href=\"https://gearvn.com/products/ssd-samsung-980-pro-1tb-m-2-nvme-mz-v8p1t0bw\"><strong>SamSung 980 PRO 1TB M.2 PCIe gen 4 NVMe</strong></a></td><td>60 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/psu-nguon-may-tinh\"><strong>PSU</strong></a></td><td><a href=\"https://gearvn.com/products/1200w-nguon-asus-rog-thor-1200p2-80-plus-platinum-full-modular\"><strong>ASUS Rog Thor 1200P2 - 80 Plus Platinum - Full Modular</strong></a></td><td>120 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/case-thung-may-tinh\"><strong>Case&nbsp;</strong></a></td><td><a href=\"https://gearvn.com/products/case-rog-strix-helios\"><strong>ASUS ROG Strix Helios GX601</strong></a></td><td>24 Tháng</td></tr><tr><td><strong>Cooling</strong></td><td><a href=\"https://gearvn.com/products/tan-nhiet-nuoc-asus-rog-ryujin-iii-360-argb/\"><strong>ASUS ROG RYUJIN III 360 ARGB</strong></a></td><td>72 Tháng</td></tr></tbody></table></figure>', 5, 1, '2024-12-02 12:00:09', '2024-12-02 12:00:26', NULL),
(68, 'PC GVN G-STUDIO AMD R5-5600X/ VGA RTX 3050 (Powered by ASUS)', 9, 14, '[\"product/1733115889099-4000d_artic_3b0a591c88a3440aa7b9.png\",\"product/1733115889114-post-01_c0cbca98f4804984a9024474.png\",\"product/1733115889120-pba-banner-2023-1200x1200px_b130.png\"]', 22400000, 21990000, '<figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\"><strong>Mainboard</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/asus-tuf-gaming-b550m-plus-wifi-ii\"><strong>ASUS TUF GAMING B550M-PLUS WIFI II (Socket AM4)</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td><a href=\"https://gearvn.com/products/amd-ryzen-5-5600x-32mb-3-7ghz-boost-4-6ghz-6-nhan-12-luong\"><strong>AMD Ryzen 5 5600X / 3.7GHz Boost 4.6GHz / 6 nhân 12 luồng / 32MB / AM4</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-pc\"><strong>RAM</strong></a></td><td><a href=\"https://gearvn.com/products/ram-t-group-t-force-delta-1x8gb-3600-rgb-black/\"><strong>T-Group T-Force Delta 1x8GB 3600 RGB Black</strong></a><strong>&nbsp;x 2</strong></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/vga-card-man-hinh\"><strong>VGA</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/card-man-hinh-asus-dual-geforce-rtx-3050-6gb-gddr6-dual-rtx3050-6g/\"><strong>ASUS Dual GeForce RTX 3050 6GB GDDR6</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/ssd-o-cung-the-ran\"><strong>SSD</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/ssd-wd-black-sn770-500g-m-2-nvme-pcie-gen4\"><strong>WD Black SN770 500G M.2 NVMe PCIe Gen4</strong></a></td><td>60 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/hdd-o-cung-pc\"><strong>HDD</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/hdd-seagate-barracuda-2tb-7200rpm\"><strong>Seagate Barracuda 2TB 7200rpm</strong></a></td><td>24 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/psu-nguon-may-tinh\"><strong>PSU</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/nguon-may-tinh-corsair-cx650-80-plus-bronze-650w-cp-9020278-na\"><strong>Corsair CX650 - 80 Plus Bronze (650W)</strong></a></td><td>36 Tháng</td></tr><tr><td><a href=\"https://gearvn.com/collections/case-thung-may-tinh\"><strong>Case</strong></a><strong>&nbsp;</strong></td><td><a href=\"https://gearvn.com/products/case-corsair-4000d-airflow-black\"><strong>Corsair 4000D AIRFLOW Black</strong></a></td><td>24 Tháng</td></tr><tr><td><strong>Tản</strong></td><td><a href=\"https://gearvn.com/products/tan-nhiet-arctic-freezer-34-esports-duo-grey\"><strong>ARCTIC Freezer 34 eSports DUO Grey</strong></a></td><td>72 Tháng</td></tr></tbody></table></figure>', 20, 0, '2024-12-02 12:04:49', '2024-12-02 12:04:49', NULL),
(69, 'Bàn phím Bluetooth Rapoo Ralemo Pre 5 RA Tím', 13, 19, '[\"product/1733116136012-ban_phim_bluetooth_rapoo_ralemo (3).png\",\"product/1733116136038-ban_phim_bluetooth_rapoo_ralemo (2).png\",\"product/1733116136042-ban_phim_bluetooth_rapoo_ralemo (1).png\",\"product/1733116136051-ban_phim_bluetooth_rapoo_ralemo.png\"]', 990000, 590000, '<ul><li>Switch: Rapoo Blue Switch</li><li>Bảo hành: 24 tháng</li><li>Kết nối: Có dây; không dây; Bluetooth</li><li>Thương hiệu: Rapoo</li><li>Kiểu dáng: mini</li><li>Phím: 79 phím</li></ul>', 4, 1, '2024-12-02 12:08:56', '2024-12-02 12:09:03', NULL),
(70, 'Ghế Corsair T3 RUSH Gray/Charcoal 2023 (CF-9010056-WW)', 7, 21, '[\"product/1733116564934-t3_rush_charcoal_gray_render_02.png\",\"product/1733116564954-wx2toafk_340163d61ba7460ba85b4fd.png\",\"product/1733116564974-jbtd8u1t_d7142a23ac394474a51753b.png\"]', 7590000, 6790000, '<p><strong>Ghế gaming Corsair T3 RUSH Gray/Charcoal&nbsp;2023 NEW</strong></p><p><strong>Thông số kỹ thuật:</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất:</strong></td><td>Corsair</td></tr><tr><td><strong>Chất liệu:</strong></td><td>Vải mềm cao cấp (bọt đệm ghế Polyurethane)</td></tr><tr><td><strong>Tải trọng tối đa:</strong></td><td>Cân nặng tối đa: 120kg<br>Chiều cao tối đa: 188cm</td></tr><tr><td><strong>Phần kê tay:</strong></td><td>4D&nbsp;(Up/Down, Left/Right, Front/Back, Swivel)</td></tr><tr><td><strong>Kích thước kê tay:</strong></td><td>26cm x 10cm x 2.65cm</td></tr><tr><td><strong>Góc ngả:</strong></td><td>90°-180°</td></tr><tr><td><strong>Kích thước ghế:&nbsp;</strong></td><td>56cm x 58cm</td></tr><tr><td><strong>Chiều cao lưng ghế:&nbsp;</strong></td><td>85cm</td></tr><tr><td><strong>Độ rộng lưng ghế:</strong></td><td>54cm</td></tr><tr><td><strong>Kích thước bánh xe:</strong></td><td>65mm</td></tr><tr><td><strong>Chất liệu khung ghế:</strong></td><td>kim loại</td></tr></tbody></table></figure>', 5, 1, '2024-12-02 12:16:05', '2024-12-02 12:16:45', NULL),
(71, 'Ghế DXRacer Drifting C NEO Leatherette Black&Red L (GC/LDC23LTA/NR)', 7, 21, '[\"product/1733116890148-ghe-dxracer-drifting-c-neo-leath (2).png\",\"product/1733116890160-ghe-dxracer-drifting-c-neo-leath (1).png\",\"product/1733116890170-ghe-dxracer-drifting-c-neo-leath.png\"]', 7490000, 6700000, '<p><strong>Thông số sản phẩm:</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Chất liệu khung:</strong></td><td>Full kim loại, đệm mút đặc chống xẹp và có khả năng hồi form.</td></tr><tr><td><strong>Màu sắc:</strong></td><td>Đen</td></tr><tr><td><strong>Độ ngả lưng tối đa:</strong></td><td>135 độ</td></tr><tr><td><strong>Bệ đỡ:</strong></td><td>Cóc</td></tr><tr><td><strong>Loại kê tay:</strong></td><td>3D</td></tr><tr><td><strong>Bộ nâng thủy lực:</strong></td><td>Class 4</td></tr><tr><td><strong>Đế chân ghế:</strong></td><td>Chân nhôm to bản rất chắc chắn, chịu tải trọng tốt</td></tr><tr><td><strong>Chất liệu:</strong></td><td>Da Microfiber cao cấp</td></tr><tr><td><strong>Kích thước ghế:</strong></td><td>80 x 68 x 37 (cm)</td></tr><tr><td><strong>Gối cổ:</strong></td><td>Gối cổ tích hợp sẵn theo ghế, có thể tùy chỉnh lên xuống phù hợp với từng khách hàng<br>*Lưu ý: Đệm ngồi và tựa lưng có thể tháo rời được. Phụ kiện module đi kèm cần được mua riêng</td></tr></tbody></table></figure>', 5, 0, '2024-12-02 12:21:30', '2024-12-02 12:21:30', NULL),
(72, 'Ghế DXRacer Drifting C NEO Leatherette Black&Red L (GC/LDC23LTA/NR)', 7, 21, '[\"product/1733117130041-ghe-dxracer-drifting-c-neo-leath (5).png\",\"product/1733117130051-ghe-dxracer-drifting-c-neo-leath (4).png\",\"product/1733117130063-ghe-dxracer-drifting-c-neo-leath (3).png\"]', 7490000, 5200000, '<p><strong>Thông số sản phẩm:</strong></p><figure class=\"table\"><table><tbody><tr><td><strong>Chất liệu khung:</strong></td><td>Full kim loại, đệm mút đặc chống xẹp và có khả năng hồi form.</td></tr><tr><td><strong>Màu sắc:</strong></td><td>Đen</td></tr><tr><td><strong>Độ ngả lưng tối đa:</strong></td><td>135 độ</td></tr><tr><td><strong>Bệ đỡ:</strong></td><td>Cóc</td></tr><tr><td><strong>Loại kê tay:</strong></td><td>3D</td></tr><tr><td><strong>Bộ nâng thủy lực:</strong></td><td>Class 4</td></tr><tr><td><strong>Đế chân ghế:</strong></td><td>Chân nhôm to bản rất chắc chắn, chịu tải trọng tốt</td></tr><tr><td><strong>Chất liệu:</strong></td><td>Da Microfiber cao cấp</td></tr><tr><td><strong>Kích thước ghế:</strong></td><td>80 x 68 x 37 (cm)</td></tr><tr><td><strong>Gối cổ:</strong></td><td>Gối cổ tích hợp sẵn theo ghế, có thể tùy chỉnh lên xuống phù hợp với từng khách hàng<br>*Lưu ý: Đệm ngồi và tựa lưng có thể tháo rời được. Phụ kiện module đi kèm cần được mua riêng</td></tr></tbody></table></figure>', 5, 0, '2024-12-02 12:25:30', '2024-12-02 12:25:30', NULL),
(73, 'Laptop gaming Acer Nitro V ANV16 41 R6ZY', 2, 4, '[\"product/1733117513629-ava_7150eafd9a07470cae41eb3971e35983_grande.png\",\"product/1733117513636-ingerprint-with-backlit-on-wp-ob (2).png\",\"product/1733117513646-ingerprint-with-backlit-on-wp-ob (1).png\",\"product/1733117513657-ingerprint-with-backlit-on-wp-ob.png\"]', 27490000, 25900000, '<h2><strong>Thông số kỹ thuật:</strong></h2><figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td>AMD Ryzen™ 5 8645HS (4.3 GHz upto&nbsp;5.0 GHz, 6 nhân 12 luồng,&nbsp;6 MB L2 cache, up to 16 MB L3 cache)</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-pc\"><strong>Ram</strong></a></td><td>16GB (1x16GB) DDR5 5600MHz (2x SO-DIMM socket, up to 32GB SDRAM)</td></tr><tr><td><a href=\"https://gearvn.com/collections/ssd-laptop\"><strong>Ổ cứng</strong></a></td><td>512GB PCIe NVMe SED SSD (Còn trống 1 khe SSD M.2 PCIE, nâng cấp tối đa 2TB)</td></tr><tr><td><a href=\"https://gearvn.com/collections/vga-card-man-hinh\"><strong>Card đồ họa</strong></a></td><td>NVIDIA® GeForce RTX™ 3050 with 6 GB of dedicated GDDR6 VRAM</td></tr><tr><td><a href=\"https://gearvn.com/pages/man-hinh\"><strong>Màn hình</strong></a></td><td>16\" 16:10 WUXGA (1920x1200) IPS,&nbsp;165Hz, 300nits,&nbsp;100% sRGB,&nbsp;&nbsp;Acer ComfyView™, LED-backlit TFT LCD, Wide viewing angle up to 170 degrees</td></tr><tr><td><strong>Cổng giao tiếp</strong></td><td>&nbsp;USB Type-C™ port supporting:&nbsp;<br>&nbsp;• USB4® 40Gbps&nbsp;<br>&nbsp;• DisplayPort over USB-C&nbsp;<br>&nbsp;• USB charging 5 V; 3 A&nbsp;<br>&nbsp;• DC-in port 20 V; 65 W&nbsp;<br>&nbsp;Two USB Standard-A ports, supporting:&nbsp;<br>&nbsp;• One port for USB 3.2 Gen 1&nbsp;<br>&nbsp;• One port for USB 3.2 Gen 2 featuring power off USB charging HDMI® 2.1 port with HDCP support&nbsp;<br>&nbsp;3.5 mm headphone/speaker jack, supporting headsets with built-in microphone&nbsp;<br>&nbsp;Ethernet (RJ-45) port&nbsp;</td></tr><tr><td><strong>Audio</strong></td><td>DTS® X:Ultra</td></tr><tr><td><a href=\"https://gearvn.com/collections/ban-phim-may-tinh\"><strong>Bàn phím</strong></a></td><td>Amber-backlit keyboard</td></tr><tr><td><strong>Tản nhiệt</strong></td><td>2 quạt</td></tr><tr><td><strong>Chuẩn LAN</strong></td><td>Gigabit Ethernet</td></tr><tr><td><strong>Chuẩn WIFI</strong></td><td>Wi-Fi 6E Wireless LAN&nbsp;</td></tr><tr><td><strong>Bluetooth</strong></td><td>Bluetooth® 5.1</td></tr><tr><td><a href=\"https://gearvn.com/collections/webcam\"><strong>Webcam</strong></a></td><td>720p HD video at 30 fps with Temporal Noise Reduction&nbsp;</td></tr><tr><td><strong>Hệ điều hành</strong></td><td>Windows 11 Home Single Language</td></tr><tr><td><strong>Pin</strong></td><td>4 Cell 57WHr</td></tr><tr><td><strong>Trọng lượng</strong></td><td>2.5 kg</td></tr><tr><td><strong>Màu sắc</strong></td><td>Obsidian black</td></tr><tr><td><strong>Chất liệu</strong></td><td>Cover A, B, C, D: Plastic</td></tr><tr><td><strong>Kích thước</strong></td><td>361.8 (W) x 278.4 (D) x 24.74/25.46 (H) mm</td></tr></tbody></table></figure>', 5, 2, '2024-12-02 12:31:53', '2024-12-02 12:33:04', NULL),
(74, 'Laptop gaming Gigabyte G5 MF F2VN333SH', 2, 14, '[\"product/1733117910021-g5_ge_51vn213sh_9e945568d75145b4.png\",\"product/1733117910051-g5-mf-f2vn333sh_650c328dd1d84dfb.png\",\"product/1733117910059-gigabyte-g5-mf-f2vn333sh-i5-1245.png\"]', 25290000, 19990000, '<h2><strong>&nbsp;Thông số kỹ thuật:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td>Intel Core i5-12450H 3.3GHz up to 4.4GHz, 8 Cores 12 Threads, 12MB Cache</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-laptop\"><strong>RAM</strong></a></td><td>8GB (1x8GB) DDR4-3200Mhz (2 khe ram, nâng cấp tối đa 64GB RAM)</td></tr><tr><td><a href=\"https://gearvn.com/collections/ssd-laptop\"><strong>Ổ cứng</strong></a></td><td>512GB <a href=\"https://gearvn.com/collections/ssd-m-2-pcie-gen-3x4\">SSD M.2 PCIE</a> G4X4 (2 khe M.2, Còn trống 1 khe SSD M.2 PCIE G3x4)</td></tr><tr><td><a href=\"https://gearvn.com/collections/vga-card-man-hinh\"><strong>Card đồ họa</strong></a></td><td>Nvidia Geforce RTX 4050 4GB GDDR6&nbsp;</td></tr><tr><td><a href=\"https://gearvn.com/collections/man-hinh\"><strong>Màn hình</strong></a></td><td>15.6 inch FHD (1920x1080), 144Hz, IPS-level, Thin Bezel, 45% NTSC</td></tr><tr><td><strong>Cổng giao tiếp</strong></td><td><ul><li>2x USB3.2 Gen2 (Type-C)</li><li>1x USB 2.0 (Type-A)</li><li>1x USB3.2 Gen1 (Type-A)</li><li>1x Mini DisplayPort 1.4</li><li>1x HDMI I™ Output port (with HDCP)</li><li>1x 2-in-1 Audio Jack(Headphone / Microphone) 1x Microphone jack</li><li>1x RJ-45 LAN port</li><li>1x DC-in Jack</li></ul></td></tr><tr><td><a href=\"https://gearvn.com/collections/ban-phim-may-tinh\"><strong>Bàn phím</strong></a></td><td>Bàn phím fullsize, hỗ trợ LED 15 màu</td></tr><tr><td><strong>Chuẩn LAN</strong></td><td>Gigabit Ethernet</td></tr><tr><td><strong>Chuẩn WIFI</strong></td><td>Intel® Wi-Fi 6E</td></tr><tr><td><strong>Bluetooth</strong></td><td>Bluetooth V5.2&nbsp;</td></tr><tr><td><strong>Audio</strong></td><td>2x 2W Speaker<br>Microphone<br>DTS:X® Ultra Audio Technology</td></tr><tr><td><a href=\"https://gearvn.com/collections/webcam\"><strong>Webcam</strong></a></td><td>HD 720p</td></tr><tr><td><strong>Hệ điều hành</strong></td><td><a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/windows-11-22h2\">Windows 11</a>&nbsp;Home</td></tr><tr><td><strong>Pin</strong></td><td>4 Cell 54Whrs</td></tr><tr><td><strong>Trọng lượng</strong></td><td>1,9 kg</td></tr><tr><td><strong>Màu sắc</strong></td><td>Đen</td></tr><tr><td><strong>Kích thước</strong></td><td>360 x 238 x 22.7 (mm)</td></tr></tbody></table></figure>', 6, 0, '2024-12-02 12:38:30', '2024-12-02 12:38:30', NULL),
(75, 'Laptop gaming Lenovo Legion 5 15IRX9 83JJ000FVN', 2, 16, '[\"product/1733118030598-ava_0160caea60454756957309f888fd.png\",\"product/1733118030611-legion_5_15irx9_ct1_03_606671095.png\",\"product/1733118030621-legion_5_15irx9_ct2_02_052548923.png\"]', 37990000, 34790000, '<h2><strong>Thông số kĩ thuật:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td>Intel® Core™ i7-13650HX, 14C (6P + 8E) / 20T, P-core 2.6 / 4.9GHz, E-core 1.9 / 3.6GHz, 24MB</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-pc\"><strong>RAM</strong></a></td><td>24GB (2x12GB) SO-DIMM DDR5 4800MHz&nbsp;(2x SO-DIMM socket, up to 32GB SDRAM)</td></tr><tr><td><strong>Ổ cứng</strong></td><td>512GB SSD M.2 2242 PCIe® 4.0x4 NVMe®&nbsp;(2&nbsp;slots&nbsp;M.2 2280 PCIe® 4.0 x4, nâng cấp tối đa 2TB)</td></tr><tr><td><a href=\"https://gearvn.com/collections/vga-card-man-hinh\"><strong>Card đồ họa</strong></a></td><td>NVIDIA® GeForce RTX™ 4060 8GB GDDR6, Boost Clock 2370MHz, TGP 140W, 233 AI TOPS</td></tr><tr><td><strong>Màn hình</strong></td><td>15.6\" FHD (1920x1080) IPS 300nits Anti-glare, 100% sRGB, 144Hz, G-SYNC®</td></tr><tr><td><strong>Cổng giao tiếp</strong></td><td>2x USB-A (USB 5Gbps / USB 3.2 Gen 1)<br>1x USB-A (USB 5Gbps / USB 3.2 Gen 1), Always On<br>1x USB-C® (USB 10Gbps / USB 3.2 Gen 2), with Lenovo® PD 140W and DisplayPort™ 1.4<br>1x USB-C® (USB 10Gbps / USB 3.2 Gen 2), with DisplayPort™ 1.4<br>1x HDMI® 2.1, up to 8K/60Hz<br>1x Headphone / microphone combo jack (3.5mm)<br>1x Ethernet (RJ-45)<br>1x Power connector</td></tr><tr><td><strong>Bàn phím</strong></td><td>White Backlit, English</td></tr><tr><td><strong>Audio</strong></td><td>Stereo speakers, 2W x2, optimized with Nahimic Audio</td></tr><tr><td><strong>Finger Print</strong></td><td>None</td></tr><tr><td><strong>Chuẩn LAN</strong></td><td>100/1000M (RJ-45)</td></tr><tr><td><strong>Chuẩn WIFI</strong></td><td>Wi-Fi® 6E, 11ax 2x2</td></tr><tr><td><strong>Bluetooth</strong></td><td>v5.2</td></tr><tr><td><strong>Webcam</strong></td><td>HD 720p with E-shutter</td></tr><tr><td><strong>Hệ điều hành</strong></td><td>Windows® 11 Home Single Language, English</td></tr><tr><td><strong>Pin</strong></td><td>Integrated 80Wh</td></tr><tr><td><strong>Trọng lượng</strong></td><td>2.32 kg</td></tr><tr><td><strong>Màu sắc</strong></td><td>Storm Grey</td></tr><tr><td><strong>Chất liệu</strong></td><td>Aluminium Stamping (Anodized with Sandblasting)&nbsp;<br>Aluminium (Top), PC-ABS (Bottom)</td></tr><tr><td><strong>Kích thước</strong></td><td>358.8 x 261.4 x 20.5-24.65 mm (14.13 x 10.29 x 0.81-0.97 inches)</td></tr></tbody></table></figure>', 5, 0, '2024-12-02 12:40:30', '2024-12-02 12:40:30', NULL),
(76, 'Laptop Acer Swift Go 14 SFG14 73 57FZ', 2, 4, '[\"product/1733118189886-wift-go-ai-2024-gen-2-sfg14-73-7 (2).png\",\"product/1733118189895-wift-go-ai-2024-gen-2-sfg14-73-7 (1).png\",\"product/1733118189898-wift-go-ai-2024-gen-2-sfg14-73-7.png\"]', 24490000, 23490000, '<h2><strong>Thông số kỹ thuật:</strong></h2><figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td>Intel® Core™ Ultra 5 processor 125H (upto 4.5GHz, 14 lõi 18 luồng, 18 MB Intel® Smart Cache)</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-pc\"><strong>RAM</strong></a></td><td>16GB (1x16GB) LPDDR5 6400MHz Onboard (Không nâng cấp được)</td></tr><tr><td><a href=\"https://gearvn.com/collections/ssd-o-cung-the-ran\"><strong>Ổ cứng</strong></a></td><td>512GB PCIe NVMe SED SSD (2 slots, nâng cấp tối đa 2TB)</td></tr><tr><td><a href=\"https://gearvn.com/collections/vga-card-man-hinh\"><strong>Card đồ họa</strong></a></td><td>Intel® ARC™ Graphics</td></tr><tr><td><a href=\"https://gearvn.com/collections/man-hinh\"><strong>Màn hình</strong></a></td><td>14\" 2.8K (2880x1800)&nbsp;OLED 16:10 aspect ratio,&nbsp;90Hz,&nbsp;400nits,&nbsp;DCI-P3 100%, Adobe100%</td></tr><tr><td><strong>Cổng giao tiếp</strong></td><td>&nbsp;2x USB Type-C™&nbsp;<br>&nbsp; port supporting:<br>&nbsp;• USB4® 40Gbps<br>&nbsp;• Thunderbolt™ 4<br>&nbsp;• USB charging 5 V; 3 A<br>&nbsp;• DC-in port 20 V; 100 W<br>2x USB Standard-A ports, supporting:<br>&nbsp;• One port for USB 3.2 Gen 1<br>&nbsp;• One port for USB 3.2 Gen 1 featuring power off USB charging<br>1x microSD™ Card reader<br>1x Headphone/speaker jack<br>1x HDMI®<br>1x 2.1 port with HDCP support</td></tr><tr><td><strong>Audio</strong></td><td>Acer TrueHarmony technology</td></tr><tr><td><a href=\"https://gearvn.com/collections/ban-phim-may-tinh\"><strong>Bàn phím</strong></a></td><td>Có LED,&nbsp;Đơn sắc - Trắng</td></tr><tr><td><strong>Bảo mật</strong></td><td>Power keycap fingerprint reader with on-chip matching design</td></tr><tr><td><strong>Chuẩn WIFI</strong></td><td>Killer Wi-Fi 7 Wireless LAN<br>&nbsp;• 802.11 a/b/g/n/ac/ax/be<br>&nbsp;• Band: 2.4 GHz, 5 GHz, and 6 GHz<br>&nbsp;• 2x2 MIMO technology</td></tr><tr><td><strong>Bluetooth</strong></td><td>v5.3</td></tr><tr><td><strong>Webcam</strong></td><td>2560 x 1440 resolution<br>1440p QHD video at 30 fps with Temporal</td></tr><tr><td><strong>Hệ điều hành</strong></td><td>Windows 11 Home Single Language</td></tr><tr><td><strong>Trọng lượng</strong></td><td>1.32kg</td></tr><tr><td><strong>Pin</strong></td><td>65 Whr 4-cell&nbsp;</td></tr><tr><td><strong>Màu sắc</strong></td><td>Pure Silver</td></tr><tr><td><strong>Chất liệu</strong></td><td>Cover A/C/D: Aluminum</td></tr><tr><td><strong>Kích thước</strong></td><td>312.9 (W) x 217.9 (D) x 14.9 (H) mm</td></tr></tbody></table></figure>', 9, 0, '2024-12-02 12:43:09', '2024-12-02 12:43:09', NULL),
(77, 'Laptop Lenovo Ideapad 1 14ALC7 82R30077VN', 2, 16, '[\"product/1733118479266-gearvn-laptop-lenovo-ideapad-1-1 (2).png\",\"product/1733118479286-gearvn-laptop-lenovo-ideapad-1-1 (1).png\",\"product/1733118479300-gearvn-laptop-lenovo-ideapad-1-1.png\"]', 13990000, 13, '<h2><strong>Thông số kĩ thuật:</strong></h2><figure class=\"table\"><table><tbody><tr><td><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\"><strong>CPU</strong></a></td><td>AMD Ryzen™ 7 5700U (8C / 16T, 1.8 / 4.3GHz, 4MB L2 / 8MB L3)</td></tr><tr><td><a href=\"https://gearvn.com/collections/ram-pc\"><strong>Ram</strong></a></td><td>16GB (2x8GB) DDR4 3200MHz (8GB Onboard + 8GB So-Dimm, max 16GB)</td></tr><tr><td><a href=\"https://gearvn.com/collections/ssd-o-cung-the-ran\"><strong>SSD</strong></a></td><td>512GB SSD M.2 2242 PCIe® 4.0x4 NVMe® (Không nâng cấp)</td></tr><tr><td><a href=\"https://gearvn.com/collections/vga-card-man-hinh\"><strong>Card đồ họa</strong></a></td><td>Integrated AMD Radeon™ Graphics</td></tr><tr><td><a href=\"https://gearvn.com/pages/man-hinh\"><strong>Màn hình</strong></a></td><td>14\" FHD (1920x1080) IPS 250nits Anti-glare</td></tr><tr><td><strong>Cổng giao tiếp</strong></td><td>1x Card reader<br>1x HDMI® 1.4b<br>1x Headphone / microphone combo jack (3.5mm)<br>1x Power connector<br>1x USB 2.0<br>1x USB 3.2 Gen 1<br>1x USB-C® 3.2 Gen 1 (support data transfer only)</td></tr><tr><td><strong>Bàn phím</strong></td><td>Bàn phím tiêu chuẩn, Không LED</td></tr><tr><td><strong>Audio</strong></td><td>Stereo speakers, 1.5W x2, Dolby® Audio™</td></tr><tr><td><strong>Chuẩn LAN</strong></td><td>None</td></tr><tr><td><strong>Chuẩn WIFI</strong></td><td>Wi-Fi 6, 11ac 2x2</td></tr><tr><td><strong>Bluetooth</strong></td><td>Bluetooth® 5.0</td></tr><tr><td><strong>Webcam</strong></td><td>HD 720p with Privacy Shutter</td></tr><tr><td><strong>Hệ điều hành</strong></td><td>Windows 11 Home&nbsp;Single Language</td></tr><tr><td><strong>Pin</strong></td><td>Integrated 42Wh</td></tr><tr><td><strong>Trọng lượng</strong></td><td>1.38 kg</td></tr><tr><td><strong>Màu sắc</strong></td><td>Cloud Grey</td></tr><tr><td><strong>Kích thước</strong></td><td>325.3 x 216.5 x 17.9 mm&nbsp;</td></tr></tbody></table></figure>', 5, 0, '2024-12-02 12:47:59', '2024-12-02 12:47:59', NULL),
(78, 'Balo Acer Predator SUV', 5, 4, '[\"product/1733118646761-306f73ce-ea1b-49e7-b1e9-8d5913b8.png\"]', 2000000, 1000000, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Balo Acer Predator SUV</strong></p><h2><strong>THÔNG SỐ KĨ THUẬT:&nbsp;</strong></h2><figure class=\"table\"><table><tbody><tr><td>Thương hiệu</td><td>Acer</td></tr><tr><td>Màu sắc</td><td>Đen</td></tr><tr><td>Chất liệu</td><td>Polyester</td></tr><tr><td>Phù hợp với laptop</td><td>14inch, 15.6inch, 17inch.</td></tr><tr><td>Bảo hành</td><td>Không bảo hành</td></tr></tbody></table></figure>', 5, 0, '2024-12-02 12:50:46', '2024-12-02 12:50:46', NULL),
(79, 'Balo ASUS ROG Ranger BP2701 Cybertext Edition', 5, 14, '[\"product/1733118777703-h732_31cfd6e9f3464e70a056e3a0901.png\",\"product/1733118777720-h732__1__9aeb7420a1c94362857c2ab.png\",\"product/1733118777725-h732__6__a111648e64f04c14aa10590.png\"]', 2490000, 0, '<h2><strong>Thông số kỹ thuật:</strong></h2><figure class=\"table\"><table><tbody><tr><td><strong>Thương hiệu</strong></td><td>Asus</td></tr><tr><td><strong>Chất liệu</strong></td><td>Polyester<br>PU<br>Vải sợi Polyester</td></tr><tr><td><strong>Kích thước laptop</strong></td><td>Tương thích với laptop 17&nbsp;inch</td></tr><tr><td><strong>Kích thước</strong></td><td>49.00 x 31.50 x 15.50 cm</td></tr><tr><td><strong>Trọng lượng</strong></td><td>0.93Kg</td></tr><tr><td><strong>Tính năng</strong></td><td>Chống nước<br>Siêu nhẹ<br>Chất liệu phản quang</td></tr></tbody></table></figure>', 6, 4, '2024-12-02 12:52:57', '2024-12-02 12:54:41', NULL),
(80, 'Balo MSI Trooper Backpack', 5, 13, '[\"product/1733119001660-gearvn-balo-msi-trooper-backpack.png\"]', 499000, 300000, '<p>Balo MSI Trooper Backpack được thiết kế dành riêng cho Game thủ chuyên nghiệp đến từ thương hiệu cao cấp MSI. Kiểu dáng, đường nét hiện đại, chất liệu cao cấp đảm bảo độ bền và tính thẩm mỹ cao.</p><p>&nbsp;</p>', 4, 0, '2024-12-02 12:56:41', '2024-12-02 12:56:41', NULL),
(81, 'Máy tính bảng Amazon Fire 8 Tablet HD8 IPS 2GB 32GB', 11, 1, '[\"product/1733119214633-amazon-kindle-fire-hd-8-1.png\",\"product/1733119214666-amazon-kindle-fire-hd-8-2.png\"]', 2990000, 2290000, '<h2><strong>Đặc điểm nổi bật</strong></h2><ul><li>Hiển thị sắc nét - Màn hình IPS 8\" với độ phân giải 720 x 1280 pixel</li><li>Hiệu năng nhanh mượt - Bộ vi xử lý Quad-core 2.0 GHz ổn định</li><li>Kết nối nhanh chóng - trang bị WiFi băng tần kép giúp giữ kết nối internet ổn định</li><li>Thoải mái sử dụng cả ngày dài - Viên pin dung lượng lớn, hoạt động liên tục không lo gián đoạn</li></ul>', 5, 1, '2024-12-02 13:00:14', '2024-12-02 13:00:23', NULL),
(82, 'Xiaomi Pad 6S Pro Wifi 8GB 256GB', 11, 9, '[\"product/1733119447050-dien-thoai-itel-p55_96_.webp\",\"product/1733119447055-may-tinh-bang-xiaomi-pad-6s-pro (1).png\",\"product/1733119447068-may-tinh-bang-xiaomi-pad-6s-pro.png\"]', 14990000, 13190000, '<h2><strong>Đặc điểm nổi bật</strong></h2><ul><li>Xiaomi Pad 6S Pro sở hữu màn hình 12.4 inch, 144Hz cho trải nghiệm hình ảnh mượt mà, sắc nét, phù hợp cho giải trí, xem phim và chơi game.</li><li>RAM 8GB đảm bảo khả năng chạy đa nhiệm ổn định và trơn tru, cùng bộ nhớ trong 256GB đủ rộng để lưu trữ dữ liệu, ứng dụng và các tệp media.</li><li>Máy đi kèm với 6 loa hỗ trợ công nghệ Dolby Atmos, mang lại trải nghiệm âm thanh vòm sống động, lý tưởng cho việc giải trí đa phương tiện.</li><li>Vi xử lý&nbsp;Snapdragon® 8 Gen 2&nbsp;một trong những chip mạnh mẽ trong phân khúc, giúp xử lý mượt mà các tác vụ đa nhiệm.</li><li><strong>Máy tính bảng Xiaomi Pad 6S Pro </strong>là sản phẩm cao cấp với thiết kế sang trọng, khung viền chắc chắn và mặt lưng nhám mịn, giúp hạn chế dấu vân tay. Màn hình lớn <strong>12.4 inch</strong> độ phân giải 3K, <strong>tần số quét 144Hz</strong>, mang đến trải nghiệm hình ảnh sắc nét và mượt mà. Với vi xử lý <strong>Snapdragon 8 Gen 2</strong> cùng RAM lên đến 8GB, máy cho hiệu năng mạnh mẽ, phù hợp cả cho công việc lẫn giải trí. <strong>Pin 10.000mAh</strong> và <strong>sạc nhanh 120W</strong> đảm bảo thời gian sử dụng dài. Máy cũng có kết nối Wi-Fi hiện đại trải nghiệm mạng nhanh chóng.</li></ul>', 7, 0, '2024-12-02 13:04:07', '2024-12-02 13:04:07', NULL),
(83, 'Xiaomi Redmi Pad SE Wifi 8.7 inch 2024 (4GB 128GB)', 11, 9, '[\"product/1733119595416-may-tinh-bang-xiaomi-redmi-pad-s (1).png\",\"product/1733119595426-may-tinh-bang-xiaomi-redmi-pad-s.png\",\"product/1733119595430-xiaomi_redmi_pad_se_8.7_inch_wif (1).png\",\"product/1733119595439-xiaomi_redmi_pad_se_8.7_inch_wif.png\"]', 3990000, 3190000, '<p><strong>Máy tính bảng Xiaomi Pad 6S Pro </strong>là sản phẩm cao cấp với thiết kế sang trọng, khung viền chắc chắn và mặt lưng nhám mịn, giúp hạn chế dấu vân tay. Màn hình lớn <strong>12.4 inch</strong> độ phân giải 3K, <strong>tần số quét 144Hz</strong>, mang đến trải nghiệm hình ảnh sắc nét và mượt mà. Với vi xử lý <strong>Snapdragon 8 Gen 2</strong> cùng RAM lên đến 8GB, máy cho hiệu năng mạnh mẽ, phù hợp cả cho công việc lẫn giải trí. <strong>Pin 10.000mAh</strong> và <strong>sạc nhanh 120W</strong> đảm bảo thời gian sử dụng dài. Máy cũng có kết nối Wi-Fi hiện đại trải nghiệm mạng nhanh chóng.</p>', 6, 0, '2024-12-02 13:06:35', '2024-12-02 13:06:35', NULL),
(84, 'Ghế Corsair TC100 Leatherette Black CF-9010050-WW', 7, 17, '[\"product/1733119787860-6_ba1a25315d8e48e0871287787a4ba1.png\",\"product/1733119787873-7_04416326c0da4b5287c1ca3fcd443e.png\",\"product/1733119787890-8_6750b2d473454028bc28d8e85f7e1d.png\",\"product/1733119787892-1_016065becabf4a578cdc7bf681972c.png\"]', 4900000, 4500000, '<figure class=\"table\"><table><tbody><tr><td><strong>Hãng sản xuất</strong></td><td><strong>Corsair&nbsp;</strong></td></tr><tr><td><strong>Model</strong></td><td>Ghế Corsair TC100 Leatherette Black CF-9010050-WW</td></tr><tr><td><strong>Chất liệu</strong></td><td><strong>Da</strong></td></tr><tr><td><strong>Chiều cao tối đa</strong></td><td><strong>188 cm</strong></td></tr><tr><td><strong>Điều chỉnh tựa lưng</strong></td><td><strong>90 - 160°</strong></td></tr><tr><td><strong>Chất liệu khung ghế</strong></td><td><strong>Thép</strong></td></tr><tr><td><strong>Chiều cao lưng tựa</strong></td><td><strong>81cm</strong></td></tr><tr><td><strong>Chiều rộng lưng tựa</strong></td><td><strong>33 cm</strong></td></tr><tr><td><strong>Tải trọng tối đa</strong></td><td><strong>120kg</strong></td></tr><tr><td><strong>Gối thắt lưng</strong></td><td><strong>Có</strong></td></tr><tr><td><strong>Gối cổ</strong></td><td><strong>Có</strong></td></tr><tr><td><strong>Chiều rộng ghế</strong></td><td><strong>54 cm</strong></td></tr></tbody></table></figure>', 10, 1, '2024-12-02 13:09:47', '2024-12-02 13:10:02', NULL),
(85, 'Củ Sạc Ugreen GaN 100W CD226 Gr 40747', 8, 12, '[\"product/1733120050444-_en_h_ng.png\",\"product/1733120050446-xanh_en_3.png\",\"product/1733120050458-text_ng_n_-_2024-07-29t112734.85.png\",\"product/1733120050458-pin-sac-du-phong-aukey-pb-n83s-1.png\"]', 1260000, 990000, '<h2><strong>Thông số kỹ thuật</strong></h2><ul><li><strong>Dung lượng pin</strong>:10.000mAh</li><li><strong>Công suất sạc:</strong>22.5W (Max)</li><li><strong>Cổng sạc ra:</strong>1 x USB-A, 1 x Type-C</li><li><strong>Cổng sạc vào:</strong>1 x Type-C</li><li><strong>Tính năng:</strong>Sạc nhanh, Sạc nhanh Power Dilevery, Chống cháy nổ, chập điện, Hiển thị thông số sạc</li><li><strong>Dòng điện vào:</strong>USB-C: DC 5V - 2.4A , 9V - 2A , 12V - 1.5A</li><li><p><strong>Dòng điện ra</strong></p><p>USB-C: DC 5V 2.4A / 9V 2.22A / 12V 1.67A<br>USB-A: DC 5V 2.4A / 9V 2A / 12V 1.5A</p></li><li><p><strong>Tính năng khác</strong></p><p>Chuẩn sạc nhanh PD và Quick Charge 3.0<br>Đèn LED thông báo thời lượng pin</p></li><li><strong>Hãng sản xuất: </strong>Aukey</li></ul>', 20, 0, '2024-12-02 13:14:10', '2024-12-02 13:14:10', NULL),
(86, 'Pin sạc dự phòng Anker 633 Magnetic A1641 10.000mAh 20W', 8, 1, '[\"product/1733120250708-633_de.png\",\"product/1733120250711-633_xa.png\",\"product/1733120250720-633.png\",\"product/1733120250721-group_270.png\"]', 500000, 400000, '<p>&nbsp;</p><ul><li><strong>Dung lượng pin:</strong>10000mAh</li><li><p><strong>Công suất sạc:</strong></p><p>-Có dây: 20W<br>-Không dây: 7.5W</p></li><li><strong>Cổng sạc ra:</strong>1 x USB-A, 1 x Type-C</li><li><strong>Cổng sạc vào:</strong>1 x Type-C</li><li><strong>Tính năng:</strong>Sạc nhanh Power Dilevery, Chống cháy nổ, chập điện, Hỗ trợ sạc không dây Magsafe</li><li><strong>Chứng chỉ an toàn:</strong>MultiProtect</li><li><p><strong>Chất liệu:</strong>Nhựa ABS + PC</p><p>&nbsp;</p></li></ul>', 20, 0, '2024-12-02 13:17:30', '2024-12-02 13:17:30', NULL);
INSERT INTO `product` (`id`, `name`, `category_id`, `brand_id`, `image`, `price`, `promotion_price`, `description`, `quantity`, `view`, `created_at`, `updated_at`, `deleted_at`) VALUES
(87, 'Pin dự phòng sạc nhanh Baseus Qpow Pro 20.000mAh 20W cho iPhone, Type C(kèm cáp)', 8, 9, '[\"product/1733120432995-baseus-qpow-pro-2.png\",\"product/1733120432997-baseus-qpow-pro-3.png\",\"product/1733120433004-baseus-qpow-pro-5.png\",\"product/1733120433004-baseus-qpow-pro-4.png\"]', 700000, 650000, '<ul><li><strong>Cổng giao tiếp:</strong>Lightning, Type-C, USB</li><li><strong>Dung lượng pin:</strong>20.000mAh</li><li><strong>Lõi pin:</strong>Pin polymer</li><li><strong>Công suất sạc:</strong>Cáp Lightining: 20 W</li><li><strong>Công nghệ:</strong>Hỗ trợ sạc nhanh (QC3.0 và PD3.0)</li><li><strong>Tính năng:</strong>Sạc nhanh, Sạc nhanh Power Dilevery</li><li><strong>Công suất đầu ra:</strong>1 x USB-A</li><li><strong>Cổng sạc vào:</strong>1 x Lighttning, 1 x Type-C</li><li><strong>Chất liệu:</strong>Nhựa ABS và Mica cao cấp</li><li><strong>Hãng sản xuất:</strong>Baseus</li><li><p><strong>Tiện ích</strong></p><p>Được trang bị thêm 1 dây sạc Type-C 19cm<br>Trang bị đèn led thông minh</p></li></ul>', 10, 1, '2024-12-02 13:20:33', '2024-12-02 13:22:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `parent_comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `review`
--

INSERT INTO `review` (`id`, `product_id`, `user_id`, `rating`, `content`, `created_at`, `updated_at`, `deleted_at`, `parent_comment_id`) VALUES
(6, 47, 1, 5, 'Sản phẩm dùng ok', '2024-11-29 12:52:06', '2024-11-29 12:52:06', NULL, NULL),
(11, 37, 6, 5, 'sản phẩm dùng tốt', '2024-12-02 01:16:34', '2024-12-02 01:16:34', NULL, NULL),
(13, 37, 6, NULL, 'sdas', '2024-12-02 01:18:25', '2024-12-02 01:18:25', NULL, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`, `deleted_at`) VALUES
('20241125084957-add-parent-comment-id-to-review.js', NULL),
('add-address-to-order.js', NULL),
('add-delete_at.js', NULL),
('add-order_id_code.js', NULL),
('add-payment-status.js', NULL),
('add-reset_token-to-reset_token_expiration.js', NULL),
('create-brand.js', NULL),
('create-cart_item.js', NULL),
('create-cart.js', NULL),
('create-category.js', NULL),
('create-contact.js', NULL),
('create-news.js', NULL),
('create-order_detail.js', NULL),
('create-order.js', NULL),
('create-product.js', NULL),
('create-review.js', NULL),
('create-user.js', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT 'avatar/avatar-mac-dinh.png',
  `gender` varchar(255) DEFAULT NULL COMMENT '0: Nam, 1: Nữ, 2: Khác',
  `role` varchar(255) DEFAULT 'user',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expiration` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `avatar`, `gender`, `role`, `created_at`, `updated_at`, `reset_token`, `reset_token_expiration`, `deleted_at`) VALUES
(1, 'Trương Văn Tiến Đạt', 'dattruong792001@gmail.com', '$2b$10$ljrGspylEChqX6kwgN1PWO5SZq97fhLotOhv8ZNJdwDZCeERmkV7y', '0374001914', '24 Lý Thường Kiệt', 'avatar/1732772611222-z4055806225155_ae16cdeae1dd89d2d6de893eaf81b079.jpg', '0', 'admin', '2024-11-15 07:14:59', '2024-12-01 19:20:50', NULL, NULL, NULL),
(4, 'Trương Văn Tiến Đạt', 'admin@gmail.com', '$2b$10$boTjoQu/V6GXus4VzjA9HOIZEdHz70J5LIwEmUStJBOMSeaq8hbwq', '0374001919', NULL, 'avatar/avatar-mac-dinh.png', NULL, 'user', '2024-11-16 22:19:05', '2024-11-29 01:31:08', NULL, NULL, '2024-11-29 01:31:08'),
(5, 'abc', 'ac@email.come', '$2b$10$C0mpoR.qx3MvegUgi.f.e.D8GS16M72NWrqIbpb.GrICiIluw.816', '0374001911', NULL, 'avatar/avatar-mac-dinh.png', NULL, 'user', '2024-11-16 22:25:50', '2024-11-29 01:31:07', '022f3c0378682798229641399dc8d6bdd0ff0397d8c76e6807b56a7d74d1656b', '2024-11-17 15:14:34', '2024-11-29 01:31:07'),
(6, 'Lê Thị Hồng Nhung', 'nhungkappi@gmail.com', '$2b$10$NVXKE.CSwTpgc5ZQCSOtu.oY0hPfCyQsrIwAKHZUZJeKZh2eDBGxK', '0862960216', 'Xuân Hồi, Liên Thủy, Lệ Thủy, Quảng Bình', 'avatar/1732772670909-áº¢nh tháº».jpg', '0', 'user', '2024-11-17 12:59:02', '2024-11-30 17:13:51', NULL, NULL, NULL),
(7, 'TRƯƠNG ĐẠT', 'dattruong07092001@gmail.com', '$2b$10$OefpLk7xNuLfhtyC2F2JZO1u7xA59JO5cjvGA.1ZjcGnbK3TMMleC', '0773315593', NULL, 'avatar/avatar-mac-dinh.png', NULL, 'user', '2024-11-29 01:40:58', '2024-11-29 01:40:58', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `review_parent_comment_id_foreign_idx` (`parent_comment_id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Các ràng buộc cho bảng `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `review_parent_comment_id_foreign_idx` FOREIGN KEY (`parent_comment_id`) REFERENCES `review` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
