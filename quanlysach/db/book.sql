-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2021 lúc 04:06 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `book`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `public_date` date NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) DEFAULT 0,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `name`, `image`, `author`, `public_date`, `price`, `qty`, `description`) VALUES
(1, 'Conan Hoạt Hình Màu - Kẻ Hành Pháp Zero - Tập 2', '2021_12_03_19_08_06conan-hoat-hinh-mau---ke-hanh-phap-zero-tap-2.jpg', 'Gosho Aoyama, Takeharu Saku', '2021-12-10', 50000, 200, 'Kh&ocirc;ng chỉ ở địa điểm tổ chức Hội nghị Thượng đỉnh, nhiều vụ khủng bố c&ograve;n đồng loạt xảy ra tr&ecirc;n địa b&agrave;n th&agrave;nh phố vốn đ&atilde; được bố tr&iacute; an ninh nghi&ecirc;m ngặt!! Trong khi Conan vắt &oacute;c suy nghĩ t&igrave;m hiểu mục đ&iacute;ch thực sự của kẻ tội phạm, v&agrave; c&ocirc;ng an tiến gần hơn tới &acirc;m mưu về một vụ &aacute;n ẩn dấu, Hội nghị Thượng đỉnh Tokyo đ&atilde; ch&iacute;nh thức khai mạc!!\r\n\r\nC&ugrave;ng ng&agrave;y h&ocirc;m đ&oacute;, &ocirc;ng Kogoro nhận được quyết định hủy bỏ khởi tố sau khi bị bắt v&igrave; t&igrave;nh nghi l&agrave; thủ phạm g&acirc;y ra vụ nổ. Tuy nhi&ecirc;n, Conan kh&ocirc;ng tới đ&oacute;n &ocirc;ng m&agrave; đồng h&agrave;nh c&ugrave;ng Amuro. Hai người đ&atilde; ph&aacute;t hiện ra động cơ của thủ phạm thực sự, song ph&iacute;a trước vẫn c&ograve;n nhiều diễn biến gay cấn đ&aacute;ng chờ đợi&hellip;!!'),
(3, 'Doraemon Tập 19: Nobita - Vũ Trụ Phiêu Lưu Kí (Tái Bản 2019)', '2021_12_03_19_18_23image_183237.jpg', 'Fujiko F Fujio', '2021-12-08', 16000, 150, 'Mỗi tập truyện l&agrave; một cuộc phưu lưu kh&aacute;m ph&aacute; những ch&acirc;n trời mới lạ. H&atilde;y để tr&iacute; tưởng tượng của bạn bay bổng c&ugrave;ng nh&oacute;m bạn Doraemon, Nobita, Shizuka, Jaian, Suneo đến c&aacute;c v&ugrave;ng đất xa x&ocirc;i, k&igrave; b&iacute; v&agrave; cảm nhận những khoảnh khắc t&igrave;nh bạn tươi đẹp của cuộc đời!\r\n\r\n24 tập Doraemon truyện d&agrave;i phi&ecirc;n bản mới với nội dung v&agrave; h&igrave;nh thức trung th&agrave;nh với nguy&ecirc;n t&aacute;c của hoạ sĩ Fujiko.F.Fujio kể về 24 chuyến phi&ecirc;u lưu của nh&oacute;m bạn. Những bảo bối trong chiếc t&uacute;i thần kỳ của Doraemon đ&atilde; biến những điều kh&ocirc;ng thể th&agrave;nh c&oacute; thể, biến ước mơ th&agrave;nh hiện thực.\r\n\r\nNhững chuyến phi&ecirc;u lưu kh&ocirc;ng bị hạn chế bởi kh&ocirc;ng gian v&agrave; thời gian. Đ&oacute; l&agrave; chuyến du h&agrave;nh vượt qua thời gian trở về thời tiền sử của vũ trụ (Nobita v&agrave; lịch sử khai ph&aacute; vũ trụ), của tr&aacute;i đất (Ch&uacute; khủng long của Nobita), của nước Nhật (Nobita v&agrave; nước Nhật thời nguy&ecirc;n thủy), đến tương lai (Nobita v&agrave; cuộc phi&ecirc;u lưu ở th&agrave;nh phố d&acirc;y c&oacute;t, Nobita v&agrave; vương quốc robot)... 24 chuyến phi&ecirc;u lưu của nh&oacute;m bạn c&oacute; đ&iacute;ch đến l&agrave; 24 địa điểm kỳ th&uacute;, chỉ c&oacute; tr&iacute; tưởng tượng v&agrave; ước mơ c&oacute; thể vươn tới (Nobita v&agrave; h&agrave;nh tinh mu&ocirc;ng th&uacute;, Nobita v&agrave; chuyến du h&agrave;nh xứ quỷ...).\r\n\r\nNhững c&acirc;u chuyện về ch&uacute; m&egrave;o m&aacute;y th&ocirc;ng minh Doraemon v&agrave; c&aacute;c bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi đưa độc giả bước v&agrave;o thế giới hồn nhi&ecirc;n, trong s&aacute;ng, đầy ắp tiếng cười với một kho bảo bối biến ước mơ th&agrave;nh sự thật. Doraemon ch&iacute;nh l&agrave; hiện th&acirc;n của t&igrave;nh bạn cao đẹp, của niềm kh&aacute;t khao vươn tới những tầm cao.'),
(4, 'Khi Hơi Thở Hóa Thinh Không (Tái Bản 2020)', '2021_12_03_19_20_51image_220964.jpg', 'Paul Kalanithi', '2021-12-02', 87000, 150, 'Khi hơi thở hóa thinh không là tự truyện của một bác sĩ bị mắc bệnh ung thư phổi. Trong cuốn sách này, tác giả đã chia sẻ những trải nghiệm từ khi mới bắt đầu học ngành y, tiếp xúc với bệnh nhân cho tới khi phát hiện ra mình bị ung thư và phải điều trị lâu dài.\r\n\r\nKalanithi rất yêu thích văn chương nên câu chuyện của anh đã được thuật lại theo một phong cách mượt mà, dung dị và đầy cảm xúc. Độc giả cũng được hiểu thêm về triết lý sống, triết lý nghề y của Kalanithi, thông qua ký ức về những ngày anh còn là sinh viên, rồi thực tập, cho đến khi chính thức hành nghề phẫu thuật thần kinh. “Đối với bệnh nhân và gia đình, phẫu thuật não là sự kiện bi thảm nhất mà họ từng phải đối mặt và nó có tác động như bất kỳ một biến cố lớn lao trong đời. Trong những thời điểm nguy cấp đó, câu hỏi không chỉ đơn thuần là sống hay chết mà còn là cuộc sống nào đáng sống.” – Kalanithi luôn biết cách đưa vào câu chuyện những suy nghĩ sâu sắc và đầy sự đồng cảm như thế.\r\n\r\nBạn bè và gia đình đã dành tặng những lời trìu mến nhất cho con người đáng kính trọng cả về tài năng lẫn nhân cách này. Dù không thể vượt qua cơn bệnh nan y, nhưng thông điệp của tác giả sẽ còn khiến người đọc nhớ mãi.'),
(5, 'Mike Tyson - Sự Thật Trần Trụi (Sách Dành Cho Độc Giả Trên 18 Tuổi)', '2021_12_03_19_22_168936071674173_1.jpg', 'Larry Sloman', '2009-01-04', 131820, 100, 'Mike Tyson - Sự Thật Trần Trụi (Sách Dành Cho Độc Giả Trên 18 Tuổi)\r\n\r\nMike Tyson sinh năm 1966 là cựu vận động viên quyền Anh người Mỹ nổi tiếng thế giới. Bắt đầu thi đấu chuyên nghiệp ở độ tuổi mười tám, ông nhanh chóng giành được cả ba đai vô địch WBA, WBC và IBF khi vừa mới hai mươi để trở thành nhà vô địch quyền Anh hạng nặng trẻ tuổi nhất lịch sử. Năm 2010, ông được tạp chí The Ring xếp hạng thứ mười sáu trong danh sách 100 tay đấm vĩ đại nhất mọi thời đại.\r\n\r\nKhông phải là tay đấm số một, nhưng không ai có thể phủ nhận Mike Tyson chính là võ sĩ đem lại nhiều cảm hứng nhất cho giới hâm mộ quyền Anh. Tên tuổi ông cũng đi liền với vô số tai tiếng bởi lối thi đấu quá hung bạo cùng tuổi trẻ thác loạn trong rượu chè, thuốc phiện và tình dục. Song ít ai biết, đằng sau tất cả những hào quang và tăm tối đó là câu chuyện truyền kì...'),
(6, 'Harry Potter And The Chamber Of Secrets: Illustrated Edition', '2021_12_03_19_33_11harry.jpg', 'Jody Revenson', '2021-12-14', 300000, 50, 'Throughout the making of the eight Harry Potter movies, designers and craftspeople were tasked with creating fabulous chocolate-fantasy feasts, flying brooms, enchanted maps, and much more, in addition to numerous magical items necessary in a wizard’s everyday life—for example, newspapers with moving photos, vicious textbooks, and Howlers. Harry Potter: The Artifact Vault chronicles the work of the graphics department in creating vibrant and imaginative labels for potions bottles, brooms, and candy; the creation of Quidditch Quaffles, Bludgers, and Golden Snitches, lovingly crafted by the prop making team; and the stunning inventiveness used by the entire crew to create a rich, bewitched filmic universe.\r\n\r\nAccompanying the captivating text are never-before-seen art and design concepts, unit photography, and other filmmaking secrets from the Warner Bros. archive. This striking full-color compendium includes two exclusive bonus inserts—a booklet showcasing the design of The Tales of Beedle the Bard prop and a Black Family Tapestry poster—as well as many more surprises.'),
(7, 'Lập Trình Và Cuộc Sống', '2021_12_30_03_49_29sach-day-lap-trinh-co-ban-800x800.jpg', 'Jeff Atwood', '2004-03-18', 200000, 10, '“Lập Trình Và Cuộc Sống” của Jeff Atwood chú trọng vào yếu tố con người. Bởi Jeff Atwood cho rằng “để lập trình hiệu quả, viết code thôi là chưa đủ, con người mới là nhân tố quan trọng nhất”.\r\n\r\nQuyển sách này được khởi nguồn từ blog “Coding Horror” của Jeff Atwood và được dịch giả Hồ Sỹ Hùng biên soạn lại.'),
(8, 'Code Dạo Kí Sự', '2021_12_30_03_53_052ef5aa337d3b20f7ee672d34add8281a.jpg', 'Phạm Huy Hoàng', '2017-01-01', 160000, 100, 'D&ugrave; bạn l&agrave; một beginner hay người đ&atilde; từng học qua lập tr&igrave;nh th&igrave; website &ldquo;toidicodedao&rdquo; kh&ocirc;ng c&ograve;n l&agrave; c&aacute;i t&ecirc;n xa lạ đối với bạn.\r\n\r\nV&agrave; t&aacute;c giả của blog n&agrave;y ch&iacute;nh l&agrave; một lập tr&igrave;nh vi&ecirc;n full stack &ndash; anh Phạm Huy Ho&agrave;ng. Cũng ch&iacute;nh l&agrave; t&aacute;c giả của cuốn s&aacute;ch dạy lập tr&igrave;nh cơ bản &ldquo;Code Dạo K&iacute; Sự&rdquo;.\r\n&ldquo;Code Dạo K&iacute; Sự&rdquo; bao gồm những chia sẻ kinh nghiệm về việc học lập tr&igrave;nh v&agrave; qu&aacute; tr&igrave;nh l&agrave;m việc với tư c&aacute;ch l&agrave; một Developer Full Stack.'),
(9, 'Giáo Trình Kỹ Thuật Lập Trình C Căn Bản Và Nâng Cao', '2021_12_30_03_57_07ky-thuat-lap-trinh-c-can-ban-va-nang-cao.jpg', 'Phạm Văn Ất', '2006-01-01', 82000, 48, 'Qua nhiều năm giảng dạy, gi&aacute;o sư Phạm Văn Ất c&ugrave;ng với c&aacute;c cộng sự của m&igrave;nh đ&atilde; xuất  bản cuốn s&aacute;ch &ldquo;Gi&aacute;o Tr&igrave;nh Kỹ Thuật Lập Tr&igrave;nh C Căn Bản V&agrave; N&acirc;ng Cao&rdquo;. Ng&ocirc;n ngữ C l&agrave; một trong những ng&ocirc;n ngữ lập tr&igrave;nh cơ bản v&agrave; quan trọng.\r\n\r\nCh&iacute;nh v&igrave; thế, nếu muốn trở th&agrave;nh một developer chuy&ecirc;n nghiệp th&igrave; bạn cần nắm vững n&oacute;. Cuốn s&aacute;ch n&agrave;y chủ yếu đề cập đến những kiến thức cốt l&otilde;i về lập tr&igrave;nh.\r\n\r\nB&ecirc;n cạnh đ&oacute;, c&ograve;n c&oacute; c&aacute;c kỹ thuật tổ chức dữ liệu v&agrave; lập tr&igrave;nh cơ bản với ng&ocirc;n ngữ C.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
