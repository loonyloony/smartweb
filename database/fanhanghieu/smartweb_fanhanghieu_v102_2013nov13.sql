-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Nov 13, 2013 at 10:16 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `smartweb_fanhanghieu`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `addon`
-- 

CREATE TABLE `addon` (
  `id` bigint(20) NOT NULL auto_increment,
  `addonid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `moduleid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `areacode` varchar(10) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `addon`
-- 

INSERT INTO `addon` VALUES (1, 'productcategory', 'sidebar/productcategory', 'sidebar', 1);
INSERT INTO `addon` VALUES (2, 'supportonline', 'sidebar/supportonline', 'sidebar', 1);
INSERT INTO `addon` VALUES (3, 'webcounter', 'sidebar/webcounter', 'sidebar', 1);
INSERT INTO `addon` VALUES (5, 'homesimpleslides', 'splash/homesimpleslides', 'splash', 1);
INSERT INTO `addon` VALUES (21, 'viewcart', 'sidebar/viewcart', 'sidebar', 1);
INSERT INTO `addon` VALUES (20, 'promotionproduct', 'splash/producttag', 'splash', 1);
INSERT INTO `addon` VALUES (19, 'subscribe', 'sidebar/email', 'sidebar', 1);
INSERT INTO `addon` VALUES (22, 'edwinbanner', 'splash/edwinbanner', 'splash', 1);
INSERT INTO `addon` VALUES (23, 'edwinfadebanner', 'splash/edwinfadebanner', 'splash', 1);
INSERT INTO `addon` VALUES (24, 'snowfall', 'dashboard/snowfall', 'dashboard', 1);
INSERT INTO `addon` VALUES (26, 'threenewslides', 'sidebar/threenewslides', 'sidebar', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `addon_description`
-- 

CREATE TABLE `addon_description` (
  `addonid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `addonname` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`addonid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `addon_description`
-- 

INSERT INTO `addon_description` VALUES ('productcategory', 'vn', 'Danh mục sản phẩm');
INSERT INTO `addon_description` VALUES ('supportonline', 'vn', 'Hỗ trợ trực tuyến');
INSERT INTO `addon_description` VALUES ('webcounter', 'vn', 'Lượt truy cập');
INSERT INTO `addon_description` VALUES ('homesimpleslides', 'vn', 'Banner trượt trang chủ');
INSERT INTO `addon_description` VALUES ('viewcart', 'vn', 'Xem giỏ hàng');
INSERT INTO `addon_description` VALUES ('promotionproduct', 'vn', 'Sản phẩm khuyến mãi');
INSERT INTO `addon_description` VALUES ('subscribe', 'vn', 'Đăng ký nhận tin');
INSERT INTO `addon_description` VALUES ('edwinbanner', 'vn', 'Khuyến mãi và từ thiện');
INSERT INTO `addon_description` VALUES ('custom', 'vn', 'Custom Splash Thương hiệu');
INSERT INTO `addon_description` VALUES ('edwinfadebanner', 'vn', 'Custom Splash Thương hiệu');
INSERT INTO `addon_description` VALUES ('snowfall', 'vn', 'Dashboard giới thiệu sản phẩm dịch vụ');
INSERT INTO `addon_description` VALUES ('threenewslides', 'vn', 'Tin mới');

-- --------------------------------------------------------

-- 
-- Table structure for table `advance_search`
-- 

CREATE TABLE `advance_search` (
  `id` int(11) NOT NULL auto_increment,
  `objtype` varchar(20) NOT NULL,
  `objid` varchar(50) NOT NULL,
  `rootcontent` longtext NOT NULL,
  `escapecontent` longtext NOT NULL,
  `alt_image` longtext NOT NULL,
  `others` longtext NOT NULL,
  `languageid` varchar(100) NOT NULL,
  `title` text NOT NULL,
  `imagepath` text NOT NULL,
  `summary` text NOT NULL,
  `updateddate` datetime NOT NULL,
  `seo_url` text NOT NULL,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `rootcontent` (`rootcontent`),
  FULLTEXT KEY `escapecontent` (`escapecontent`),
  FULLTEXT KEY `alt_image` (`alt_image`),
  FULLTEXT KEY `others` (`others`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

-- 
-- Dumping data for table `advance_search`
-- 

INSERT INTO `advance_search` VALUES (1, 'media', 'default13840672441', '&lt;p&gt;Gu thời trang &#039;thất thường&#039; của Mai Phương Thúy&lt;/p&gt;&lt;p&gt;\r\n	Mai Phương Thúy được người hâm mộ biết đến sau khi đạt gải cao nhất trong cuộc thi nhan sắc lớn Hoa hậu Việt Nam năm 2006. Theo thời gian, hoa hậu ngày càng biết làm mới mình để trở nên gợi cảm quyến rũ trong mắt người hâm mộ tại các sự kiện của làng giải trí bằng những chiếc váy hàng hiệu. Nhưng khi rời xa những món hàng xa xỉ đó, người đẹp diện những chiếc đầm được thiết kế riêng. Thời trang đời thường của Hoa hậu cũng là một đề tài gần đây các fan hâm mộ chú ý vì cách mix đồ của cô khi đẹp, khi xấu rất thất thường.&lt;/p&gt;&lt;div&gt;\r\n	Những hình ảnh mới của Hoa hậu Việt Nam 2006:&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-0.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-0.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Mới đây nhất, trong một chuyến du lịch trời tây, lột bỏ lớp phấn son dầy cộp cùng&lt;br /&gt;\r\n	những chiếc váy hàng hiệu để diện quần sooc bò, áo phông trông Hoa hậu&lt;br /&gt;\r\n	đầy năng động, thoải mái và trẻ trung.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-3.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Chiếc áo dài tay rộng &amp;quot;kín cổng cao tường&amp;quot; như thừa size kết hợp cùng chiếc quần&lt;br /&gt;\r\n	soóc cùng chiếc túi màu đen &amp;#39;lột bỏ&amp;#39; hoàn toàn khoảng cách của một celeb hạng A&lt;br /&gt;\r\n	của showbiz với người hâm mộ.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-2.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; height=&quot;720&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-2.jpg&quot; width=&quot;720&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Mai Phương Thúy tạo dáng xì tin với đôi mắt hình viên đạn.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-2.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-2.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Còn trong style áo phông, quần soóc da, khoác ngoài thêm chiếc áo vest mix&lt;br /&gt;\r\n	&amp;nbsp;cùng đôi giầy da đen. Với phong cách này Mai Phương Thúy khoe được vẻ đẹp&lt;br /&gt;\r\n	khỏe khoắn, linh hoạt và vẫn nữ tính với mái tóc dài đen nhánh.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-3.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Hoa hậu mix độ hơi lạ và đánh đố các nhà thời trang danh tiếng trên thế&lt;br /&gt;\r\n	giới phân tích được ý tưởng kết hợp giữa áo ngoài, áo phông trong với quần bò.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/03.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/03.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Mai Phương Thúy rất yêu thích những chiếc áo phông có màu sắc&lt;br /&gt;\r\n	nổi bật hay in những thông điệp cá tính. Soóc ngắn cũng là một item cô nàng&lt;br /&gt;\r\n	chịu khó tìm kiếm cho tủ đồ của mình.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/07.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/07.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/08-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/08-3.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Không ai còn nhận ra Hoa hậu ở các event thời trang hạng sang nhưng lại&lt;br /&gt;\r\n	thấy vẻ này mang được cá tính của chủ nhân hơn là qua tay các stylist nhà nghề.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/04.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/04.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Còn cách trang điểm nhợt nhạt, váy áo chẳng liên quan này đi sinh nhật&lt;br /&gt;\r\n	Văn Mai Hương thì Mai Phương Thúy đúng là một bông hoa dại&lt;br /&gt;\r\n	trong rừng chưa được &amp;quot;khai quật&amp;quot;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Quần bò áo kẻ caro là mốt của năm nay nhưng nhìn vào cách mix đồ của&lt;br /&gt;\r\n	Mai Phương Thúy, điểm có thể nhận thấy là nhẽ ra cô nên tiếp tục thói quen&lt;br /&gt;\r\n	với soóc ngắn.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06-1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Quần jeans dài bó tôn chiều cao nhưng lại khiến người Mai Phương Thúy&lt;br /&gt;\r\n	gày nhẳng và cứng trong khi chiếc áo sơ mi carô đã làm giúp người mặc&lt;br /&gt;\r\n	có phần mềm mại và điệu đàng. Tóc của cô cũng nên được cột lại&lt;br /&gt;\r\n	thay vì để bay &amp;#39;vô tổ chức&amp;#39;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/12.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/12.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/09.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/09.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Dù tết tóc hay xõa tóc, dù áo phông hay áo sơ mi kết hợp cùng quần bò&lt;br /&gt;\r\n	đều khiến Mai Phương Thúy tự nhiên, khỏe khắn và năng động hơn hẳn jean dài.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/05.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/05.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;img alt=&quot;Mai Phương Thúy bị &amp;quot;mổ xẻ&amp;quot; vì diện quần bó sát phản cảm | Hoa hậu Mai Phương Thúy, Trang phục phản cảm, Quần bó sát, Hoa hậu Việt Nam, Sự cố trang phục&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/01/57/mai-phuong-thuy-bi-che-que-mua-khi-thieu-vay-hang-hieu_20.jpg&quot; /&gt;&lt;br /&gt;\r\n	Xuất hiện tại một rạp chiếu phim, Mai Phương thúy đã bị cư dân mạng cho ăn&lt;br /&gt;\r\n	&amp;quot;đá tảng&amp;quot; vì ăn mặc chưa thực sự tế nhị với chiếc quần bó sát. Item này không có&lt;br /&gt;\r\n	nhiều lợi thế cho Mai Phương Thúy trong trang phục đời thường nếu không&lt;br /&gt;\r\n	cẩn thận mix đồ hoặc &amp;#39;nhìn trước ngó sau&amp;#39; khi ra đường.&lt;/p&gt;', '&lt;p&gt;Gu thoi trang &#039;that thuong&#039; cua Mai Phuong Thuy&lt;/p&gt;&lt;p&gt;\r\n	Mai Phuong Thuy duoc nguoi ham mo biet den sau khi dat gai cao nhat trong cuoc thi nhan sac lon Hoa hau Viet Nam nam 2006. Theo thoi gian, hoa hau ngay cang biet lam moi minh de tro nen goi cam quyen ru trong mat nguoi ham mo tai cac su kien cua lang giai tri bang nhung chiec vay hang hieu. Nhung khi roi xa nhung mon hang xa xi do, nguoi dep dien nhung chiec dam duoc thiet ke rieng. Thoi trang doi thuong cua Hoa hau cung la mot de tai gan day cac fan ham mo chu y vi cach mix do cua co khi dep, khi xau rat that thuong.&lt;/p&gt;&lt;div&gt;\r\n	Nhung hinh anh moi cua Hoa hau Viet Nam 2006:&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-0.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-0.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Moi day nhat, trong mot chuyen du lich troi tay, lot bo lop phan son day cop cung&lt;br /&gt;\r\n	nhung chiec vay hang hieu de dien quan sooc bo, ao phong trong Hoa hau&lt;br /&gt;\r\n	day nang dong, thoai mai va tre trung.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-3.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Chiec ao dai tay rong &amp;quot;kin cong cao tuong&amp;quot; nhu thua size ket hop cung chiec quan&lt;br /&gt;\r\n	sooc cung chiec tui mau den &amp;#39;lot bo&amp;#39; hoan toan khoang cach cua mot celeb hang A&lt;br /&gt;\r\n	cua showbiz voi nguoi ham mo.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-2.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; height=&quot;720&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-2.jpg&quot; width=&quot;720&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Mai Phuong Thuy tao dang xi tin voi doi mat hinh vien dan.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-2.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-2.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Con trong style ao phong, quan sooc da, khoac ngoai them chiec ao vest mix&lt;br /&gt;\r\n	&amp;nbsp;cung doi giay da den. Voi phong cach nay Mai Phuong Thuy khoe duoc ve dep&lt;br /&gt;\r\n	khoe khoan, linh hoat va van nu tinh voi mai toc dai den nhanh.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-3.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Hoa hau mix do hoi la va danh do cac nha thoi trang danh tieng tren the&lt;br /&gt;\r\n	gioi phan tich duoc y tuong ket hop giua ao ngoai, ao phong trong voi quan bo.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/03.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/03.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Mai Phuong Thuy rat yeu thich nhung chiec ao phong co mau sac&lt;br /&gt;\r\n	noi bat hay in nhung thong diep ca tinh. Sooc ngan cung la mot item co nang&lt;br /&gt;\r\n	chiu kho tim kiem cho tu do cua minh.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/07.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/07.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/08-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/08-3.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Khong ai con nhan ra Hoa hau o cac event thoi trang hang sang nhung lai&lt;br /&gt;\r\n	thay ve nay mang duoc ca tinh cua chu nhan hon la qua tay cac stylist nha nghe.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/04.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/04.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Con cach trang diem nhot nhat, vay ao chang lien quan nay di sinh nhat&lt;br /&gt;\r\n	Van Mai Huong thi Mai Phuong Thuy dung la mot bong hoa dai&lt;br /&gt;\r\n	trong rung chua duoc &amp;quot;khai quat&amp;quot;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Quan bo ao ke caro la mot cua nam nay nhung nhin vao cach mix do cua&lt;br /&gt;\r\n	Mai Phuong Thuy, diem co the nhan thay la nhe ra co nen tiep tuc thoi quen&lt;br /&gt;\r\n	voi sooc ngan.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06-1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Quan jeans dai bo ton chieu cao nhung lai khien nguoi Mai Phuong Thuy&lt;br /&gt;\r\n	gay nhang va cung trong khi chiec ao so mi caro da lam giup nguoi mac&lt;br /&gt;\r\n	co phan mem mai va dieu dang. Toc cua co cung nen duoc cot lai&lt;br /&gt;\r\n	thay vi de bay &amp;#39;vo to chuc&amp;#39;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/12.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/12.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/09.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/09.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Du tet toc hay xoa toc, du ao phong hay ao so mi ket hop cung quan bo&lt;br /&gt;\r\n	deu khien Mai Phuong Thuy tu nhien, khoe khan va nang dong hon han jean dai.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/05.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/05.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;img alt=&quot;Mai Phuong Thuy bi &amp;quot;mo xe&amp;quot; vi dien quan bo sat phan cam | Hoa hau Mai Phuong Thuy, Trang phuc phan cam, Quan bo sat, Hoa hau Viet Nam, Su co trang phuc&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/01/57/mai-phuong-thuy-bi-che-que-mua-khi-thieu-vay-hang-hieu_20.jpg&quot; /&gt;&lt;br /&gt;\r\n	Xuat hien tai mot rap chieu phim, Mai Phuong thuy da bi cu dan mang cho an&lt;br /&gt;\r\n	&amp;quot;da tang&amp;quot; vi an mac chua thuc su te nhi voi chiec quan bo sat. Item nay khong co&lt;br /&gt;\r\n	nhieu loi the cho Mai Phuong Thuy trong trang phuc doi thuong neu khong&lt;br /&gt;\r\n	can than mix do hoac &amp;#39;nhin truoc ngo sau&amp;#39; khi ra duong.&lt;/p&gt;', 'Mai Phương Thúy bị &quot;mổ xẻ&quot; vì diện quần bó sát phản cảm | Hoa hậu Mai Phương Thúy, Trang phục phản cảm, Quần bó sát, Hoa hậu Việt Nam, Sự cố trang phục##', '', 'vn', 'Gu thời trang &#039;thất thường&#039; của Mai Phương Thúy', '', '&lt;p&gt;\r\n	Mai Phương Thúy được người hâm mộ biết đến sau khi đạt gải cao nhất trong cuộc thi nhan sắc lớn Hoa hậu Việt Nam năm 2006. Theo thời gian, hoa hậu ngày càng biết làm mới mình để trở nên gợi cảm quyến rũ trong mắt người hâm mộ tại các sự kiện của làng giải trí bằng những chiếc váy hàng hiệu. Nhưng khi rời xa những món hàng xa xỉ đó, người đẹp diện những chiếc đầm được thiết kế riêng. Thời trang đời thường của Hoa hậu cũng là một đề tài gần đây các fan hâm mộ chú ý vì cách mix đồ của cô khi đẹp, khi xấu rất thất thường.&lt;/p&gt;', '2013-11-11 19:27:14', 'gu-thoi-trang-that-thuong-cua-mai-phuong-thuy');
INSERT INTO `advance_search` VALUES (2, 'media', 'default13840233351', '&lt;p&gt;Cùng Emspo về &#039;Miền ký ức&#039;&lt;/p&gt;&lt;p&gt;\r\n	Những hồi ức đẹp đẽ của thời thơ ấu đã trở thành cảm hứng cho bộ sưu tập &amp;#39;Miền ký ức&amp;#39; của thương hiệu thời trang Emspo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lấy ý tưởng từ nét đẹp cổ điển và lãng mạn của những ngày đông xưa cũ, các nhà thiết kế Emspo cho ra đời bộ sưu tập với những thiết kế thời thượng, sang trọng, toát lên vẻ đẹp đậm chất quý tộc. Các sản phẩm sử dụng chất liệu quen thuộc như nhung, dạ, ren hoa nhẹ nhàng, đa dạng kết hợp form dáng thiết kế độc đáo tạo nên nét mới lạ.&lt;/p&gt;&lt;p&gt;\r\n	Lấy ý tưởng từ nét đẹp cổ điển và lãng mạn của những ngày đông xưa cũ, các nhà thiết kế Emspo cho ra đời bộ sưu tập với những thiết kế thời thượng, sang trọng, toát lên vẻ đẹp đậm chất quý tộc. Các sản phẩm sử dụng chất liệu quen thuộc như nhung, dạ, ren hoa nhẹ nhàng, đa dạng kết hợp form dáng thiết kế độc đáo tạo nên nét mới lạ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bộ sưu tập là sự kết hợp hài hòa giữa màu sắc và kiểu dáng, tạo nên một tổng thể diện mạo ấn tượng mà không lạm dụng điểm nhấn ở bất kỳ yếu tố nào. Tất cả tạo nên vẻ quý phái, tinh tế cho phái đẹp khi đến công sở và cả những bữa tiệc sang trọng trong những ngày đón gió lạnh đầu đông.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nhân dịp ra mắt bộ sưu tập mới, thời trang Emspo dành tặng khách hàng chương trình khuyến mãi giảm giá 10% cho bộ sưu tập mới và toàn bộ sản phẩm. Chương trình diễn ra từ ngày 9/11 đến ngày 13/11, áp dụng tại tất cả các showroom của hãng.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;1_dam_lien.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/1-dam-lien-6636-1383897260.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Sự kết hợp độc đáo giữa chất liệu nhung và ren hoa đem đến diện mạo quý phái nhưng cũng thật trẻ trung bởi dáng đầm xòe. Dáng áo vest ngắn cổ điển chưa bao giờ lỗi thời cũng góp phần làm tăng thêm nét sang trọng, quyến rũ cho các quý cô.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;2_dam_lien.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/2-dam-lien-1888-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Đầm liền họa tiết hoa độc đáo với form dáng đơn giản và áo vest trơn màu luôn là bộ đôi cho bất kỳ người phụ nữ nào.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;3_dam_xoe.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/3-dam-xoe-8595-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Đầm xòe hoa tiết nổi duyên dáng và trẻ trung phù hợp mọi hoàn cảnh và mọi vóc dáng.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;4_dam_xoe.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/4-dam-xoe-4414-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Đầm xòe với sắc đỏ nổi bật, phong cách xua tan cái giá lạnh và ảm đảm của đầu đông là lựa chọn cho cô nàng cá tính nhưng không muốn làm mất đi vẻ ngọt ngào vốn có.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;5_bo_vest_cong_so.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/5-bo-vest-cong-so-5715-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Bộ vest juyp chất liệu dạ tex với họa tiết và thiết kế cổ điển với những chi tiết đính hoa hay nẹp viền tinh tế dành riêng cho người phụ nữ thành đạt.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;6_dam_xoe.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/6-dam-xoe-9462-1383897262.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Đầm xòe với một chút phá cách phía chân váy, kết hợp cùng vest lửng trơn màu sẽ là cặp đôi hoàn hảo cho cô nàng ưa vẻ đẹp dịu dàng nền nã.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;7_ao_mang_to.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/7-ao-mang-to-7290-1383897262.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Áo khoác măng tô họa tiết chấm bi cổ điển cùng thiết kế form dáng xòe trẻ trung mang lại vẻ ngoài ngọt ngào và lãng mạn cho người mặc.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;8_ao_khoac_da.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/8-ao-khoac-da-3088-1383897262.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Nếu chị em sợ những chiếc áo măng tô nhàm chán, đừng ngần ngại chọn chiếc áo khoác măng tô dáng dài màu sắc tươi sáng cùng tay áo hơi phồng nhẹ này, chắc chắn bạn sẽ thấy mình trẻ trung và hiện đại hơn rất nhiều.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '&lt;p&gt;Cung Emspo ve &#039;Mien ky uc&#039;&lt;/p&gt;&lt;p&gt;\r\n	Nhung hoi uc dep de cua thoi tho au da tro thanh cam hung cho bo suu tap &amp;#39;Mien ky uc&amp;#39; cua thuong hieu thoi trang Emspo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lay y tuong tu net dep co dien va lang man cua nhung ngay dong xua cu, cac nha thiet ke Emspo cho ra doi bo suu tap voi nhung thiet ke thoi thuong, sang trong, toat len ve dep dam chat quy toc. Cac san pham su dung chat lieu quen thuoc nhu nhung, da, ren hoa nhe nhang, da dang ket hop form dang thiet ke doc dao tao nen net moi la.&lt;/p&gt;&lt;p&gt;\r\n	Lay y tuong tu net dep co dien va lang man cua nhung ngay dong xua cu, cac nha thiet ke Emspo cho ra doi bo suu tap voi nhung thiet ke thoi thuong, sang trong, toat len ve dep dam chat quy toc. Cac san pham su dung chat lieu quen thuoc nhu nhung, da, ren hoa nhe nhang, da dang ket hop form dang thiet ke doc dao tao nen net moi la.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bo suu tap la su ket hop hai hoa giua mau sac va kieu dang, tao nen mot tong the dien mao an tuong ma khong lam dung diem nhan o bat ky yeu to nao. Tat ca tao nen ve quy phai, tinh te cho phai dep khi den cong so va ca nhung bua tiec sang trong trong nhung ngay don gio lanh dau dong.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nhan dip ra mat bo suu tap moi, thoi trang Emspo danh tang khach hang chuong trinh khuyen mai giam gia 10% cho bo suu tap moi va toan bo san pham. Chuong trinh dien ra tu ngay 9/11 den ngay 13/11, ap dung tai tat ca cac showroom cua hang.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;1_dam_lien.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/1-dam-lien-6636-1383897260.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Su ket hop doc dao giua chat lieu nhung va ren hoa dem den dien mao quy phai nhung cung that tre trung boi dang dam xoe. Dang ao vest ngan co dien chua bao gio loi thoi cung gop phan lam tang them net sang trong, quyen ru cho cac quy co.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;2_dam_lien.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/2-dam-lien-1888-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Dam lien hoa tiet hoa doc dao voi form dang don gian va ao vest tron mau luon la bo doi cho bat ky nguoi phu nu nao.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;3_dam_xoe.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/3-dam-xoe-8595-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Dam xoe hoa tiet noi duyen dang va tre trung phu hop moi hoan canh va moi voc dang.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;4_dam_xoe.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/4-dam-xoe-4414-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Dam xoe voi sac do noi bat, phong cach xua tan cai gia lanh va am dam cua dau dong la lua chon cho co nang ca tinh nhung khong muon lam mat di ve ngot ngao von co.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;5_bo_vest_cong_so.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/5-bo-vest-cong-so-5715-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Bo vest juyp chat lieu da tex voi hoa tiet va thiet ke co dien voi nhung chi tiet dinh hoa hay nep vien tinh te danh rieng cho nguoi phu nu thanh dat.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;6_dam_xoe.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/6-dam-xoe-9462-1383897262.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Dam xoe voi mot chut pha cach phia chan vay, ket hop cung vest lung tron mau se la cap doi hoan hao cho co nang ua ve dep diu dang nen na.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;7_ao_mang_to.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/7-ao-mang-to-7290-1383897262.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Ao khoac mang to hoa tiet cham bi co dien cung thiet ke form dang xoe tre trung mang lai ve ngoai ngot ngao va lang man cho nguoi mac.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;8_ao_khoac_da.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/8-ao-khoac-da-3088-1383897262.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Neu chi em so nhung chiec ao mang to nham chan, dung ngan ngai chon chiec ao khoac mang to dang dai mau sac tuoi sang cung tay ao hoi phong nhe nay, chac chan ban se thay minh tre trung va hien dai hon rat nhieu.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '1_dam_lien.jpg##2_dam_lien.jpg##3_dam_xoe.jpg##4_dam_xoe.jpg##5_bo_vest_cong_so.jpg##6_dam_xoe.jpg##7_ao_mang_to.jpg##8_ao_khoac_da.jpg##', '', 'vn', 'Cùng Emspo về &#039;Miền ký ức&#039;', '', '&lt;p&gt;\r\n	Những hồi ức đẹp đẽ của thời thơ ấu đã trở thành cảm hứng cho bộ sưu tập &amp;#39;Miền ký ức&amp;#39; của thương hiệu thời trang Emspo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lấy ý tưởng từ nét đẹp cổ điển và lãng mạn của những ngày đông xưa cũ, các nhà thiết kế Emspo cho ra đời bộ sưu tập với những thiết kế thời thượng, sang trọng, toát lên vẻ đẹp đậm chất quý tộc. Các sản phẩm sử dụng chất liệu quen thuộc như nhung, dạ, ren hoa nhẹ nhàng, đa dạng kết hợp form dáng thiết kế độc đáo tạo nên nét mới lạ.&lt;/p&gt;', '2013-11-11 19:29:57', 'cung-emspo-ve-mien-ky-uc');
INSERT INTO `advance_search` VALUES (3, 'product', '2', 'UGJ01IC103##jeans-armani####[Jeans Armani##&lt;p&gt;\\r\\n	Composition:&amp;nbsp; 98% Cotton, 2% spandex&lt;br /&gt;\\r\\n	Denim, Button, zip, Five pockets&lt;/p&gt;##&lt;p&gt;\\r\\n	The model&amp;rsquo;s measurements are:&amp;nbsp;Height178cm,&amp;nbsp;Bust83cm,&amp;nbsp;Waist60cm,&amp;nbsp;Hips90cm,&amp;nbsp;Tops sizeItalian size 38,&amp;nbsp;Bottoms sizeItalian size 40&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	We offer a speedy Express shipping service with 2 to 4 working day delivery for any address. We also provide an easy return service: just ship your items back to us using the UPS return label included in your package within 10 days from delivery. Read more in the Return Center.&lt;/p&gt;##########hang moi##]', 'UGJ01IC103##jeans-armani####[Jeans Armani##&lt;p&gt;\\r\\n	Composition:&amp;nbsp; 98% Cotton, 2% spandex&lt;br /&gt;\\r\\n	Denim, Button, zip, Five pockets&lt;/p&gt;##&lt;p&gt;\\r\\n	The model&amp;rsquo;s measurements are:&amp;nbsp;Height178cm,&amp;nbsp;Bust83cm,&amp;nbsp;Waist60cm,&amp;nbsp;Hips90cm,&amp;nbsp;Tops sizeItalian size 38,&amp;nbsp;Bottoms sizeItalian size 40&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	We offer a speedy Express shipping service with 2 to 4 working day delivery for any address. We also provide an easy return service: just ship your items back to us using the UPS return label included in your package within 10 days from delivery. Read more in the Return Center.&lt;/p&gt;##########hang moi##]', '', '', 'vn', 'Jeans Armani', 'upload/quan_jean_nu_10__68689_zoom.jpg', '&lt;p&gt;\r\n	Composition:&amp;nbsp; 98% Cotton, 2% spandex&lt;br /&gt;\r\n	Denim, Button, zip, Five pockets&lt;/p&gt;', '2013-11-11 19:30:29', 'jeans-armani');
INSERT INTO `advance_search` VALUES (4, 'product', '3', 'UGJ12IE115##vintage-effect-regular-fit-jeans####[VINTAGE EFFECT REGULAR FIT JEANS##############hang dat##]', 'UGJ12IE115##vintage-effect-regular-fit-jeans####[VINTAGE EFFECT REGULAR FIT JEANS##############hang dat##]', '', '', 'vn', 'VINTAGE EFFECT REGULAR FIT JEANS', 'upload/49-quan-tay-nu04.jpg', '', '2013-11-11 22:45:47', 'vintage-effect-regular-fit-jeans');
INSERT INTO `advance_search` VALUES (5, 'product', '4', 'Sara Bartigua##ao-cong-so-han-quoc-loai-xanh####[Áo công sở Hàn Quốc loại xanh################]', 'Sara Bartigua##ao-cong-so-han-quoc-loai-xanh####[Ao cong so Han Quoc loai xanh################]', '', '', 'vn', 'Áo công sở Hàn Quốc loại xanh', 'upload/0103ao29.jpg', '', '2013-11-11 22:45:53', 'ao-cong-so-han-quoc-loai-xanh');
INSERT INTO `advance_search` VALUES (6, 'product', '1', 'Bowling Bag##bowling-bag####[Bowling Bag##&lt;p&gt;\\r\\n	Composition:&amp;nbsp; 100% Calf-skin leather&lt;br /&gt;\\r\\n	Solid color, Zip closure, External pocket, Internal pockets, Double handle, Logo detail&lt;/p&gt;##&lt;p&gt;\\r\\n	Item code:&amp;nbsp;YGWM50YG582180016&lt;br /&gt;\\r\\n	Depth:&amp;nbsp;&amp;nbsp;13,0&amp;nbsp; cm&lt;br /&gt;\\r\\n	Height:&amp;nbsp;&amp;nbsp;26,0&amp;nbsp; cm&lt;br /&gt;\\r\\n	Length of strap:&amp;nbsp;&amp;nbsp;30,0&amp;nbsp; cm&lt;br /&gt;\\r\\n	Width:&amp;nbsp;&amp;nbsp;23,0&amp;nbsp; cm&lt;br /&gt;\\r\\n	aasdasd asd asdasd asdas das dasda sdas d asd asd ad sd fsd rwe ras dfse rf sdf sdf sd fsd fsd f dsf sdf ds f&lt;/p&gt;##########hang moi##]', 'Bowling Bag##bowling-bag####[Bowling Bag##&lt;p&gt;\\r\\n	Composition:&amp;nbsp; 100% Calf-skin leather&lt;br /&gt;\\r\\n	Solid color, Zip closure, External pocket, Internal pockets, Double handle, Logo detail&lt;/p&gt;##&lt;p&gt;\\r\\n	Item code:&amp;nbsp;YGWM50YG582180016&lt;br /&gt;\\r\\n	Depth:&amp;nbsp;&amp;nbsp;13,0&amp;nbsp; cm&lt;br /&gt;\\r\\n	Height:&amp;nbsp;&amp;nbsp;26,0&amp;nbsp; cm&lt;br /&gt;\\r\\n	Length of strap:&amp;nbsp;&amp;nbsp;30,0&amp;nbsp; cm&lt;br /&gt;\\r\\n	Width:&amp;nbsp;&amp;nbsp;23,0&amp;nbsp; cm&lt;br /&gt;\\r\\n	aasdasd asd asdasd asdas das dasda sdas d asd asd ad sd fsd rwe ras dfse rf sdf sdf sd fsd fsd f dsf sdf ds f&lt;/p&gt;##########hang moi##]', '', '', 'vn', 'Bowling Bag', 'upload/93657_Tui-xach-nu-Vienne-mau-xanh-vien-soc-xanh-den_tui xach nu vienne mau xanh vien soc xanh den IMG_6341 (1).JPG', '&lt;p&gt;\r\n	Composition:&amp;nbsp; 100% Calf-skin leather&lt;br /&gt;\r\n	Solid color, Zip closure, External pocket, Internal pockets, Double handle, Logo detail&lt;/p&gt;', '2013-11-11 22:45:58', 'bowling-bag');
INSERT INTO `advance_search` VALUES (7, 'product', '6', 'Saint Laurent##tui-xach-nua-hang-hieu-voi-yves####[Túi xách nữa hàng hiệu với Yves##############hang moi##]', 'Saint Laurent##tui-xach-nua-hang-hieu-voi-yves####[Tui xach nua hang hieu voi Yves##############hang moi##]', '', '', 'vn', 'Túi xách nữa hàng hiệu với Yves', 'upload/Yves-Saint-Laurent.jpg', '', '2013-11-11 22:46:04', 'tui-xach-nua-hang-hieu-voi-yves');
INSERT INTO `advance_search` VALUES (8, 'product', '14', 'A-ADD001##ao-dau-adidas####[Áo đấu ADIDAS##&lt;p&gt;\\r\\n	Áo đấu &amp;ldquo; UEFA CHAMPIONS LEAGUE&amp;rdquo; chính hãng! Hãy làm bộ sưu tầm áo đấu bong đá cho bạn nhé.&lt;/p&gt;##############]', 'A-ADD001##ao-dau-adidas####[Ao dau ADIDAS##&lt;p&gt;\\r\\n	Ao dau &amp;ldquo; UEFA CHAMPIONS LEAGUE&amp;rdquo; chinh hang! Hay lam bo suu tam ao dau bong da cho ban nhe.&lt;/p&gt;##############]', '', '', 'vn', 'Áo đấu ADIDAS', 'upload/A-ADD001 (1).jpg', '&lt;p&gt;\r\n	Áo đấu &amp;ldquo; UEFA CHAMPIONS LEAGUE&amp;rdquo; chính hãng! Hãy làm bộ sưu tầm áo đấu bong đá cho bạn nhé.&lt;/p&gt;', '2013-11-11 23:42:17', 'ao-dau-adidas');
INSERT INTO `advance_search` VALUES (10, 'product', '15', 'D-EP001##dam-express####[Đầm Express##&lt;p&gt;\\r\\n	Màu: kem xám&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: S , M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thời trang 2013&lt;/p&gt;############]', 'D-EP001##dam-express####[Dam Express##&lt;p&gt;\\r\\n	Mau: kem xam&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: S , M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Đầm Express', 'upload/D-EP001 (1).jpg', '&lt;p&gt;\r\n	Màu: kem xám&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: S , M&lt;/p&gt;', '2013-11-12 14:51:08', 'dam-express');
INSERT INTO `advance_search` VALUES (12, 'product', '16', 'AD-GU001##ao-from-dai-guess####[Áo From dài Guess##&lt;p&gt;\\r\\n	Màu: tím hồng&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: XL&lt;/p&gt;##&lt;p&gt;\\r\\n	Vải áo mềm và mát, thật thích thú vời thời tiết như ở VIệt Nam ta&lt;/p&gt;############]', 'AD-GU001##ao-from-dai-guess####[Ao From dai Guess##&lt;p&gt;\\r\\n	Mau: tim hong&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: XL&lt;/p&gt;##&lt;p&gt;\\r\\n	Vai ao mem va mat, that thich thu voi thoi tiet nhu o VIet Nam ta&lt;/p&gt;############]', '', '', 'vn', 'Áo From dài Guess', 'upload/AD-GU001  (2).jpg', '&lt;p&gt;\r\n	Màu: tím hồng&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: XL&lt;/p&gt;', '2013-11-12 14:48:03', 'ao-from-dai-guess');
INSERT INTO `advance_search` VALUES (14, 'product', '17', 'AD-SB001##ao-from-dai-dau-lau-s-b####[Áo From dài đầu lâu S&amp;B##&lt;p&gt;\\r\\n	Màu: đen&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thời trang 2013&lt;/p&gt;############]', 'AD-SB001##ao-from-dai-dau-lau-s-b####[Ao From dai dau lau S&amp;B##&lt;p&gt;\\r\\n	Mau: den&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Áo From dài đầu lâu S&amp;B', 'upload/AD-SB001 (1).jpg', '&lt;p&gt;\r\n	Màu: đen&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: M&lt;/p&gt;', '2013-11-12 14:49:14', 'ao-from-dai-dau-lau-s-b');
INSERT INTO `advance_search` VALUES (16, 'product', '18', 'D-CY001##dam-trang-trinh-khiet-cyell####[Đầm trắng trinh khiết Cyell##&lt;p&gt;\\r\\n	Màu: trắng&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: S&lt;/p&gt;##&lt;p&gt;\\r\\n	Vải suôn mềm và &amp;nbsp;dễ chịu. phù hợp cho các chị thích form thoải mái&lt;/p&gt;############]', 'D-CY001##dam-trang-trinh-khiet-cyell####[Dam trang trinh khiet Cyell##&lt;p&gt;\\r\\n	Mau: trang&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: S&lt;/p&gt;##&lt;p&gt;\\r\\n	Vai suon mem va &amp;nbsp;de chiu. phu hop cho cac chi thich form thoai mai&lt;/p&gt;############]', '', '', 'vn', 'Đầm trắng trinh khiết Cyell', 'upload/D-CY001 (1).jpg', '&lt;p&gt;\r\n	Màu: trắng&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: S&lt;/p&gt;', '2013-11-12 14:50:13', 'dam-trang-trinh-khiet-cyell');
INSERT INTO `advance_search` VALUES (18, 'product', '19', 'D-FEV001##dam-kieu-han-luoi-lung####[Đầm kiểu Hàn lưới lưng##&lt;p&gt;\\r\\n	Màu: đen&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: S , M , L&lt;/p&gt;##&lt;p&gt;\\r\\n	Thời trang 2013&lt;/p&gt;############]', 'D-FEV001##dam-kieu-han-luoi-lung####[Dam kieu Han luoi lung##&lt;p&gt;\\r\\n	Mau: den&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: S , M , L&lt;/p&gt;##&lt;p&gt;\\r\\n	Thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Đầm kiểu Hàn lưới lưng', 'upload/D-FEV001 (1).jpg', '&lt;p&gt;\r\n	Màu: đen&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: S , M , L&lt;/p&gt;', '2013-11-12 14:51:53', 'dam-kieu-han-luoi-lung');
INSERT INTO `advance_search` VALUES (20, 'product', '20', 'D-FEV0012##dam-kieu-han-caro-vai-mong####[Đầm kiểu Hàn carô vải mỏng################]', 'D-FEV0012##dam-kieu-han-caro-vai-mong####[Dam kieu Han caro vai mong################]', '', '', 'vn', 'Đầm kiểu Hàn carô vải mỏng', 'upload/D-FEV002 (1).jpg', '', '2013-11-12 10:07:18', 'dam-kieu-han-caro-vai-mong');
INSERT INTO `advance_search` VALUES (22, 'product', '21', 'D-IZ001##dam-izzue####[Đầm Izzue##&lt;p&gt;\\r\\n	Màu: đỏ&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: XL&amp;nbsp;&lt;/p&gt;##&lt;p&gt;\\r\\n	Thời trang 2013&lt;/p&gt;############]', 'D-IZ001##dam-izzue####[Dam Izzue##&lt;p&gt;\\r\\n	Mau: do&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: XL&amp;nbsp;&lt;/p&gt;##&lt;p&gt;\\r\\n	Thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Đầm Izzue', 'upload/D-IZ001 (1).jpg', '&lt;p&gt;\r\n	Màu: đỏ&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: XL&amp;nbsp;&lt;/p&gt;', '2013-11-12 14:52:40', 'dam-izzue');
INSERT INTO `advance_search` VALUES (24, 'product', '22', 'D-IZ002##dam-thue-bong####[Đầm thuê bông##&lt;p&gt;\\r\\n	Màu: táo đỏ&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thuê bông hình 3D, phần áo thun ôm body, trông thật sexy và hấp dẫn cho các chị em fan hàng hiệu.&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	&amp;nbsp;&lt;/p&gt;############]', 'D-IZ002##dam-thue-bong####[Dam thue bong##&lt;p&gt;\\r\\n	Mau: tao do&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thue bong hinh 3D, phan ao thun om body, trong that sexy va hap dan cho cac chi em fan hang hieu.&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	&amp;nbsp;&lt;/p&gt;############]', '', '', 'vn', 'Đầm thuê bông', 'upload/D-IZ002 (1).jpg', '&lt;p&gt;\r\n	Màu: táo đỏ&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: M&lt;/p&gt;', '2013-11-12 14:53:34', 'dam-thue-bong');
INSERT INTO `advance_search` VALUES (26, 'product', '23', 'D-JC001##dam-thun-j-crew####[Đầm thun J.Crew##&lt;p&gt;\\r\\n	Màu: xám&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: L&amp;nbsp;&lt;/p&gt;##&lt;p&gt;\\r\\n	Thời trang 2013&lt;/p&gt;############]', 'D-JC001##dam-thun-j-crew####[Dam thun J.Crew##&lt;p&gt;\\r\\n	Mau: xam&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: L&amp;nbsp;&lt;/p&gt;##&lt;p&gt;\\r\\n	Thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Đầm thun J.Crew', 'upload/D-JC001 (1).jpg', '&lt;p&gt;\r\n	Màu: xám&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: L&amp;nbsp;&lt;/p&gt;', '2013-11-12 14:54:13', 'dam-thun-j-crew');
INSERT INTO `advance_search` VALUES (28, 'product', '24', 'D-KM001##dam-caro-tay-dai-jeans-kama####[Đầm carô tay dài Jeans Kama##&lt;p&gt;\\r\\n	Màu: đỏ, xám&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: S, L&amp;nbsp;&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	&amp;nbsp;&lt;/p&gt;##&lt;p&gt;\\r\\n	Vải áo dày nhưng mềm kết hợp với váy ngắn liền chất liệu vải Jeans, quả là một bộ trang phục lý tưởng cho bạn đi du lịch các nơi mát lạnh.&lt;/p&gt;############]', 'D-KM001##dam-caro-tay-dai-jeans-kama####[Dam caro tay dai Jeans Kama##&lt;p&gt;\\r\\n	Mau: do, xam&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: S, L&amp;nbsp;&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	&amp;nbsp;&lt;/p&gt;##&lt;p&gt;\\r\\n	Vai ao day nhung mem ket hop voi vay ngan lien chat lieu vai Jeans, qua la mot bo trang phuc ly tuong cho ban di du lich cac noi mat lanh.&lt;/p&gt;############]', '', '', 'vn', 'Đầm carô tay dài Jeans Kama', 'upload/D-KM001 (1).jpg', '&lt;p&gt;\r\n	Màu: đỏ, xám&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: S, L&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '2013-11-12 14:55:38', 'dam-caro-tay-dai-jeans-kama');
INSERT INTO `advance_search` VALUES (30, 'product', '25', 'D-RH001##dam-jeans-rh-by-robinhood####[Đầm Jeans RH by Robinhood##&lt;p&gt;\\r\\n	Màu: Jeans Xanh&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thời trang 2013&lt;/p&gt;############]', 'D-RH001##dam-jeans-rh-by-robinhood####[Dam Jeans RH by Robinhood##&lt;p&gt;\\r\\n	Mau: Jeans Xanh&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Đầm Jeans RH by Robinhood', 'upload/D-RH001 (1).jpg', '&lt;p&gt;\r\n	Màu: Jeans Xanh&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: M&lt;/p&gt;', '2013-11-12 14:56:19', 'dam-jeans-rh-by-robinhood');
INSERT INTO `advance_search` VALUES (32, 'product', '26', 'D-YSC001##dam-yessica####[Đầm Yessica##&lt;p&gt;\\r\\n	Màu: xám&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thời trang 2013&lt;/p&gt;############]', 'D-YSC001##dam-yessica####[Dam Yessica##&lt;p&gt;\\r\\n	Mau: xam&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Đầm Yessica', 'upload/D-YSC001 (1).jpg', '&lt;p&gt;\r\n	Màu: xám&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: M&lt;/p&gt;', '2013-11-12 14:57:43', 'dam-yessica');
INSERT INTO `advance_search` VALUES (33, 'product', '26', 'D-YSC001##dam-yessica####[Đầm Yessica##&lt;p&gt;\\r\\n	Màu: xám&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thời trang 2013&lt;/p&gt;############]', 'D-YSC001##dam-yessica####[Dam Yessica##&lt;p&gt;\\r\\n	Mau: xam&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Size: M&lt;/p&gt;##&lt;p&gt;\\r\\n	Thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Đầm Yessica', 'upload/D-YSC001 (1).jpg', '&lt;p&gt;\r\n	Màu: xám&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: M&lt;/p&gt;', '2013-11-12 14:57:43', 'dam-yessica');
INSERT INTO `advance_search` VALUES (34, 'product', '27', 'CK001##balo-latop-ck####[Balo Latop “CK”##&lt;p&gt;\\r\\n	Màu:&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt; &lt;/span&gt;xanh đậm&lt;/p&gt;##&lt;p&gt;\\r\\n	Hàng chính hãng, kiểu dáng cá tính thời trang thích dụng trong mọi trường hợp.&lt;/p&gt;############]', 'CK001##balo-latop-ck####[Balo Latop “CK”##&lt;p&gt;\\r\\n	Mau:&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt; &lt;/span&gt;xanh dam&lt;/p&gt;##&lt;p&gt;\\r\\n	Hang chinh hang, kieu dang ca tinh thoi trang thich dung trong moi truong hop.&lt;/p&gt;############]', '', '', 'vn', 'Balo Latop “CK”', 'upload/CK001 (1).jpg', '&lt;p&gt;\r\n	Màu:&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt; &lt;/span&gt;xanh đậm&lt;/p&gt;', '2013-11-12 14:59:38', 'balo-latop-ck');
INSERT INTO `advance_search` VALUES (36, 'product', '28', 'LPS001##balo-lesportsac-xinh-xan####[Balo LeSportsac xinh xắn##&lt;p&gt;\\r\\n	Màu: đen nhiều màu&lt;/p&gt;##&lt;p&gt;\\r\\n	Hàng chính hãng, kiểu dáng xin xắn, nhỏ gọn có tiện dụng.&lt;/p&gt;############]', 'LPS001##balo-lesportsac-xinh-xan####[Balo LeSportsac xinh xan##&lt;p&gt;\\r\\n	Mau: den nhieu mau&lt;/p&gt;##&lt;p&gt;\\r\\n	Hang chinh hang, kieu dang xin xan, nho gon co tien dung.&lt;/p&gt;############]', '', '', 'vn', 'Balo LeSportsac xinh xắn', 'upload/LPS001 (1).jpg', '&lt;p&gt;\r\n	Màu: đen nhiều màu&lt;/p&gt;', '2013-11-12 15:06:21', 'balo-lesportsac-xinh-xan');
INSERT INTO `advance_search` VALUES (38, 'product', '29', 'MJ001##vi-nu-bong-noi-marc-by-marc-jacons####[Ví nữ bông nổi Marc By Marc Jacons##&lt;p&gt;\\r\\n	Màu: hồng&lt;/p&gt;##&lt;p&gt;\\r\\n	Ví nữ đẳng cắp bởi thiết kế của Marc Jacobs, với hình lập thể trên mặt ví, đã tăng lên phần giá trị chi tiết của một sản phẩm hàng hiệu. Hàng chính hãng!&lt;/p&gt;############]', 'MJ001##vi-nu-bong-noi-marc-by-marc-jacons####[Vi nu bong noi Marc By Marc Jacons##&lt;p&gt;\\r\\n	Mau: hong&lt;/p&gt;##&lt;p&gt;\\r\\n	Vi nu dang cap boi thiet ke cua Marc Jacobs, voi hinh lap the tren mat vi, da tang len phan gia tri chi tiet cua mot san pham hang hieu. Hang chinh hang!&lt;/p&gt;############]', '', '', 'vn', 'Ví nữ bông nổi Marc By Marc Jacons', 'upload/MJ001 (1).jpg', '&lt;p&gt;\r\n	Màu: hồng&lt;/p&gt;', '2013-11-12 15:06:52', 'vi-nu-bong-noi-marc-by-marc-jacons');
INSERT INTO `advance_search` VALUES (40, 'product', '30', 'MD001##ba-lo-dao-pho-mandarina-duck####[Ba lô dạo phố Mandarina Duck##&lt;p&gt;\\r\\n	Màu: &amp;nbsp; xám&lt;/p&gt;##&lt;p&gt;\\r\\n	Mẫu ba lô khiến người&amp;nbsp; mua không thể cưỡng nổi bởi kiểu dáng hiện đại và giản dị, kết hợp với không gian ba lô tiện dụng, chất liệu vải nylong chống thắm nước.&lt;/p&gt;############]', 'MD001##ba-lo-dao-pho-mandarina-duck####[Ba lo dao pho Mandarina Duck##&lt;p&gt;\\r\\n	Mau: &amp;nbsp; xam&lt;/p&gt;##&lt;p&gt;\\r\\n	Mau ba lo khien nguoi&amp;nbsp; mua khong the cuong noi boi kieu dang hien dai va gian di, ket hop voi khong gian ba lo tien dung, chat lieu vai nylong chong tham nuoc.&lt;/p&gt;############]', '', '', 'vn', 'Ba lô dạo phố Mandarina Duck', 'upload/MD001 (1).jpg', '&lt;p&gt;\r\n	Màu: &amp;nbsp; xám&lt;/p&gt;', '2013-11-12 15:08:01', 'ba-lo-dao-pho-mandarina-duck');
INSERT INTO `advance_search` VALUES (42, 'product', '31', 'A-ADD001##ao-thi-dau-adidas####[Áo đấu ADIDAS##&lt;div&gt;\\r\\n	Màu: đỏ và các màu phụ khác&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: XL&lt;/div&gt;##&lt;p&gt;\\r\\n	Áo đấu &amp;ldquo; UEFA CHAMPIONS LEAGUE&amp;rdquo; chính hãng. Hãy làm bộ sưu tầm áo đấu bong đá cho bạn nhé.&lt;/p&gt;############]', 'A-ADD001##ao-thi-dau-adidas####[Ao dau ADIDAS##&lt;div&gt;\\r\\n	Mau: do va cac mau phu khac&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: XL&lt;/div&gt;##&lt;p&gt;\\r\\n	Ao dau &amp;ldquo; UEFA CHAMPIONS LEAGUE&amp;rdquo; chinh hang. Hay lam bo suu tam ao dau bong da cho ban nhe.&lt;/p&gt;############]', '', '', 'vn', 'Áo đấu ADIDAS', 'upload/A-ADD001 (1).jpg', '&lt;div&gt;\r\n	Màu: đỏ và các màu phụ khác&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: XL&lt;/div&gt;', '2013-11-12 15:09:11', 'ao-thi-dau-adidas');
INSERT INTO `advance_search` VALUES (44, 'product', '32', 'MD002##ba-lo-tien-dung-mandarina-duck####[Ba lô tiện dụng Mandarina Duck##&lt;p&gt;\\r\\n	Màu: xám&lt;/p&gt;##&lt;p&gt;\\r\\n	Ngăn nắp và cẩn thận, đây chính là chiếc ba lô dành riêng cho bạn, với các ngăn và túi nhỏ cùng với vách ngăn dành riêng cho Latop hoặc Ipad. Tiện dụng với mọi trường hợp như du lịch, công sở các buổi tiệc vui chơi v.v&amp;hellip;&amp;nbsp;&lt;/p&gt;############]', 'MD002##ba-lo-tien-dung-mandarina-duck####[Ba lo tien dung Mandarina Duck##&lt;p&gt;\\r\\n	Mau: xam&lt;/p&gt;##&lt;p&gt;\\r\\n	Ngan nap va can than, day chinh la chiec ba lo danh rieng cho ban, voi cac ngan va tui nho cung voi vach ngan danh rieng cho Latop hoac Ipad. Tien dung voi moi truong hop nhu du lich, cong so cac buoi tiec vui choi v.v&amp;hellip;&amp;nbsp;&lt;/p&gt;############]', '', '', 'vn', 'Ba lô tiện dụng Mandarina Duck', 'upload/MD002 (1).jpg', '&lt;p&gt;\r\n	Màu: xám&lt;/p&gt;', '2013-11-12 15:08:37', 'ba-lo-tien-dung-mandarina-duck');
INSERT INTO `advance_search` VALUES (46, 'product', '33', 'PD001##mat-kinh-hot-prada####[Mắt kính HOT Prada##&lt;p&gt;\\r\\n	Màu: kim Cương Đen&lt;/p&gt;##&lt;p&gt;\\r\\n	Kính thời trang cực sóc với thiết kê cực kiêu, bạn sẽ là người nổi bực trong các buổi tiệc. càng đẹp mắt khi mắt kính đã trở thành phụ kiện cài tóc với các hạt kim cương lóng lánh.&lt;/p&gt;##########hang dat##]', 'PD001##mat-kinh-hot-prada####[Mat kinh HOT Prada##&lt;p&gt;\\r\\n	Mau: kim Cuong Den&lt;/p&gt;##&lt;p&gt;\\r\\n	Kinh thoi trang cuc soc voi thiet ke cuc kieu, ban se la nguoi noi buc trong cac buoi tiec. cang dep mat khi mat kinh da tro thanh phu kien cai toc voi cac hat kim cuong long lanh.&lt;/p&gt;##########hang dat##]', '', '', 'vn', 'Mắt kính HOT Prada', 'upload/PD001 (1).jpg', '&lt;p&gt;\r\n	Màu: kim Cương Đen&lt;/p&gt;', '2013-11-12 15:09:31', 'mat-kinh-hot-prada');
INSERT INTO `advance_search` VALUES (48, 'product', '34', 'A-CPD001##ao-thun-nam-champion####[Áo thun nam Champion##&lt;div&gt;\\r\\n	Màu: cam, rêu, trắng, táo đỏ nhạt&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##&lt;p&gt;\\r\\n	Thật thoải mái với bộ trang phục thu hạ năm 2013 của thượng hiệu CHAMPION&lt;/p&gt;############]', 'A-CPD001##ao-thun-nam-champion####[Ao thun nam Champion##&lt;div&gt;\\r\\n	Mau: cam, reu, trang, tao do nhat&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##&lt;p&gt;\\r\\n	That thoai mai voi bo trang phuc thu ha nam 2013 cua thuong hieu CHAMPION&lt;/p&gt;############]', '', '', 'vn', 'Áo thun nam Champion', 'upload/A-CP001 (11).jpg', '&lt;div&gt;\r\n	Màu: cam, rêu, trắng, táo đỏ nhạt&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '2013-11-12 15:08:35', 'ao-thun-nam-champion');
INSERT INTO `advance_search` VALUES (50, 'product', '35', 'RBM001##tui-xach-nu-hien-dai-rebecca-minkoff####[Túi xách nữ hiện đại Rebecca Minkoff##&lt;p&gt;\\r\\n	Màu: hồng&lt;/p&gt;##&lt;p&gt;\\r\\n	Da bò 100%. thời trang New York xuân hè 2013, sắc sảo và ấn tượng, các thiết kế đậm chất hiện đại trong BST mùa thu của nhãn hiệu Rebecca Minkoff tỏa sáng hơn bao giờ hết. Đây chính là sự lựa chọn của bạn&amp;hellip; Hàng chính hãng!&lt;/p&gt;############]', 'RBM001##tui-xach-nu-hien-dai-rebecca-minkoff####[Tui xach nu hien dai Rebecca Minkoff##&lt;p&gt;\\r\\n	Mau: hong&lt;/p&gt;##&lt;p&gt;\\r\\n	Da bo 100%. thoi trang New York xuan he 2013, sac sao va an tuong, cac thiet ke dam chat hien dai trong BST mua thu cua nhan hieu Rebecca Minkoff toa sang hon bao gio het. Day chinh la su lua chon cua ban&amp;hellip; Hang chinh hang!&lt;/p&gt;############]', '', '', 'vn', 'Túi xách nữ hiện đại Rebecca Minkoff', 'upload/1_10.jpg', '&lt;p&gt;\r\n	Màu: hồng&lt;/p&gt;', '2013-11-12 15:10:02', 'tui-xach-nu-hien-dai-rebecca-minkoff');
INSERT INTO `advance_search` VALUES (52, 'product', '36', 'SK001##vi-nam-phong-do-skap####[Ví nam phong độ Skap##&lt;p&gt;\\r\\n	Màu: nâu da bò&lt;/p&gt;##&lt;p&gt;\\r\\n	Hàng chính hãng!&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Tiện dụng với Ví nam Skap có chia nhiều ngăn nhỏ, kiểu dáng lịch lãm và phong độ.&lt;/p&gt;############]', 'SK001##vi-nam-phong-do-skap####[Vi nam phong do Skap##&lt;p&gt;\\r\\n	Mau: nau da bo&lt;/p&gt;##&lt;p&gt;\\r\\n	Hang chinh hang!&lt;/p&gt;\\r\\n&lt;p&gt;\\r\\n	Tien dung voi Vi nam Skap co chia nhieu ngan nho, kieu dang lich lam va phong do.&lt;/p&gt;############]', '', '', 'vn', 'Ví nam phong độ Skap', 'upload/SK001 (1).jpg', '&lt;p&gt;\r\n	Màu: nâu da bò&lt;/p&gt;', '2013-11-12 15:10:49', 'vi-nam-phong-do-skap');
INSERT INTO `advance_search` VALUES (54, 'product', '37', 'SW001##ba-lo-da-nang-swiss-gear####[Ba lô đa năng Swiss Gear##&lt;p&gt;\\r\\n	Màu: đen&lt;/p&gt;##&lt;p&gt;\\r\\n	Ba lô latop đa năng, tiên dụng trong mọi trường hợp.&lt;/p&gt;##########hang dat##]', 'SW001##ba-lo-da-nang-swiss-gear####[Ba lo da nang Swiss Gear##&lt;p&gt;\\r\\n	Mau: den&lt;/p&gt;##&lt;p&gt;\\r\\n	Ba lo latop da nang, tien dung trong moi truong hop.&lt;/p&gt;##########hang dat##]', '', '', 'vn', 'Ba lô đa năng Swiss Gear', 'upload/SW001 (1).jpg', '&lt;p&gt;\r\n	Màu: đen&lt;/p&gt;', '2013-11-12 15:11:20', 'ba-lo-da-nang-swiss-gear');
INSERT INTO `advance_search` VALUES (56, 'product', '38', 'AS-AMN001##ao-so-mi-nam-armani####[Áo sơ mi Nam Armani##&lt;div&gt;\\r\\n	Màu: đỏ, rêu, xám đen, xanh đen&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , L&lt;/div&gt;##############]', 'AS-AMN001##ao-so-mi-nam-armani####[Ao so mi Nam Armani##&lt;div&gt;\\r\\n	Mau: do, reu, xam den, xanh den&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , L&lt;/div&gt;##############]', '', '', 'vn', 'Áo sơ mi Nam Armani', 'upload/AS-AMN001 (1).jpg', '&lt;div&gt;\r\n	Màu: đỏ, rêu, xám đen, xanh đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , L&lt;/div&gt;', '2013-11-12 15:10:26', 'ao-so-mi-nam-armani');
INSERT INTO `advance_search` VALUES (58, 'product', '39', 'AS-CK001##ao-so-mi-tay-ngan-ck####[Áo sơ mi tay ngắn CK##&lt;div&gt;\\r\\n	Màu: sọc đen&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##############]', 'AS-CK001##ao-so-mi-tay-ngan-ck####[Ao so mi tay ngan CK##&lt;div&gt;\\r\\n	Mau: soc den&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##############]', '', '', 'vn', 'Áo sơ mi tay ngắn CK', 'upload/AS-CK001 (1).jpg', '&lt;div&gt;\r\n	Màu: sọc đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '2013-11-12 15:10:59', 'ao-so-mi-tay-ngan-ck');
INSERT INTO `advance_search` VALUES (60, 'product', '40', 'AS-CK002##ao-so-mi-tay-dai-ck####[Áo sơ mi tay dài CK##&lt;div&gt;\\r\\n	Màu: xanh đen&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##############]', 'AS-CK002##ao-so-mi-tay-dai-ck####[Ao so mi tay dai CK##&lt;div&gt;\\r\\n	Mau: xanh den&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##############]', '', '', 'vn', 'Áo sơ mi tay dài CK', 'upload/AS-CK002 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '2013-11-12 15:11:27', 'ao-so-mi-tay-dai-ck');
INSERT INTO `advance_search` VALUES (62, 'product', '41', 'AS-DS001##ao-so-mi-tay-ngan-diesel####[Áo sơ mi tay ngắn Diesel##&lt;div&gt;\\r\\n	Màu: xanh lam, rêu đậm, xanh nhạc, sọc nâu, sọc xanh&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M , L&lt;/div&gt;##############]', 'AS-DS001##ao-so-mi-tay-ngan-diesel####[Ao so mi tay ngan Diesel##&lt;div&gt;\\r\\n	Mau: xanh lam, reu dam, xanh nhac, soc nau, soc xanh&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M , L&lt;/div&gt;##############]', '', '', 'vn', 'Áo sơ mi tay ngắn Diesel', 'upload/AS-DS001 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh lam, rêu đậm, xanh nhạc, sọc nâu, sọc xanh&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M , L&lt;/div&gt;', '2013-11-12 15:12:12', 'ao-so-mi-tay-ngan-diesel');
INSERT INTO `advance_search` VALUES (64, 'product', '42', 'AS-GU001##ao-so-mi-tay-dai-guess####[Áo sơ mi tay dài Guess##&lt;div&gt;\\r\\n	Màu: đỏ&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: XS , M&lt;/div&gt;##############]', 'AS-GU001##ao-so-mi-tay-dai-guess####[Ao so mi tay dai Guess##&lt;div&gt;\\r\\n	Mau: do&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: XS , M&lt;/div&gt;##############]', '', '', 'vn', 'Áo sơ mi tay dài Guess', 'upload/AS-GU001  (1).jpg', '&lt;div&gt;\r\n	Màu: đỏ&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: XS , M&lt;/div&gt;', '2013-11-12 15:12:41', 'ao-so-mi-tay-dai-guess');
INSERT INTO `advance_search` VALUES (66, 'product', '43', 'AS-TM001##ao-so-mi-tay-ngan-tommy####[Áo sơ mi tay ngắn Tommy##&lt;div&gt;\\r\\n	Màu: cam, xanh, xanh trời , đen&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##############]', 'AS-TM001##ao-so-mi-tay-ngan-tommy####[Ao so mi tay ngan Tommy##&lt;div&gt;\\r\\n	Mau: cam, xanh, xanh troi , den&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##############]', '', '', 'vn', 'Áo sơ mi tay ngắn Tommy', 'upload/AS-TM001 (2).jpg', '&lt;div&gt;\r\n	Màu: cam, xanh, xanh trời , đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '2013-11-12 15:13:13', 'ao-so-mi-tay-ngan-tommy');
INSERT INTO `advance_search` VALUES (68, 'product', '44', 'A-GB005##ao-so-mi-tay-dai-geben####[Áo sơ mi tay dài Geben##&lt;div&gt;\\r\\n	Màu: táo đỏ ca rô&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: &amp;nbsp;M , L&lt;/div&gt;##############]', 'A-GB005##ao-so-mi-tay-dai-geben####[Ao so mi tay dai Geben##&lt;div&gt;\\r\\n	Mau: tao do ca ro&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: &amp;nbsp;M , L&lt;/div&gt;##############]', '', '', 'vn', 'Áo sơ mi tay dài Geben', 'upload/A-GB005 (1).jpg', '&lt;div&gt;\r\n	Màu: táo đỏ ca rô&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: &amp;nbsp;M , L&lt;/div&gt;', '2013-11-12 15:14:08', 'ao-so-mi-tay-dai-geben');
INSERT INTO `advance_search` VALUES (70, 'product', '45', 'A-GB001##ao-gio-geben####[Áo gió Geben##&lt;div&gt;\\r\\n	Màu: xanh đen, vàng xám&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L , XL&lt;/div&gt;##&lt;div&gt;\\r\\n	Mẫu áo gió thời trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-GB001##ao-gio-geben####[Ao gio Geben##&lt;div&gt;\\r\\n	Mau: xanh den, vang xam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L , XL&lt;/div&gt;##&lt;div&gt;\\r\\n	Mau ao gio thoi trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo gió Geben', 'upload/GB-001 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh đen, vàng xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L , XL&lt;/div&gt;', '2013-11-12 15:15:16', 'ao-gio-geben');
INSERT INTO `advance_search` VALUES (72, 'product', '46', 'A-GB002##ao-tay-dai-geben####[Áo tay dài Geben##&lt;div&gt;\\r\\n	Màu: vàng&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mẫu áo thời trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-GB002##ao-tay-dai-geben####[Ao tay dai Geben##&lt;div&gt;\\r\\n	Mau: vang&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mau ao thoi trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo tay dài Geben', 'upload/GB-002 (1).jpg', '&lt;div&gt;\r\n	Màu: vàng&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '2013-11-12 15:16:05', 'ao-tay-dai-geben');
INSERT INTO `advance_search` VALUES (74, 'product', '47', 'A-GB003##ao--lo-geben####[Áo 3 lỗ Geben##&lt;div&gt;\\r\\n	Màu: xám&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mẫu áo thời trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-GB003##ao--lo-geben####[Ao 3 lo Geben##&lt;div&gt;\\r\\n	Mau: xam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mau ao thoi trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo 3 lỗ Geben', 'upload/GB-003 (1).jpg', '&lt;div&gt;\r\n	Màu: xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '2013-11-12 15:16:45', 'ao--lo-geben');
INSERT INTO `advance_search` VALUES (76, 'product', '48', 'A-GB004##ao-so-mi-tay-ngan-geben####[Áo sơ mi tay ngắn Geben##&lt;div&gt;\\r\\n	Màu: xanh&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mẫu áo thời trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-GB004##ao-so-mi-tay-ngan-geben####[Ao so mi tay ngan Geben##&lt;div&gt;\\r\\n	Mau: xanh&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mau ao thoi trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo sơ mi tay ngắn Geben', 'upload/GB-004 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '2013-11-12 15:17:15', 'ao-so-mi-tay-ngan-geben');
INSERT INTO `advance_search` VALUES (78, 'product', '49', 'A-GB005-1##ao-so-mi-tay-dai-geben-1####[Áo sơ mi tay dài Geben##&lt;div&gt;\\r\\n	Màu: đỏ&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M , L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mẫu áo thời trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-GB005-1##ao-so-mi-tay-dai-geben-1####[Ao so mi tay dai Geben##&lt;div&gt;\\r\\n	Mau: do&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M , L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mau ao thoi trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo sơ mi tay dài Geben', 'upload/GB-005 (1).jpg', '&lt;div&gt;\r\n	Màu: đỏ&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M , L&amp;nbsp;&lt;/div&gt;', '2013-11-12 15:17:47', 'ao-so-mi-tay-dai-geben-1');
INSERT INTO `advance_search` VALUES (80, 'product', '50', 'A-GB006##ao-thun-tay-ngan-geben####[Áo thun tay ngắn Geben##&lt;div&gt;\\r\\n	Màu: trắng, xám&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L , XL&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mẫu áo thời trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-GB006##ao-thun-tay-ngan-geben####[Ao thun tay ngan Geben##&lt;div&gt;\\r\\n	Mau: trang, xam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L , XL&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mau ao thoi trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo thun tay ngắn Geben', 'upload/GB-006 (1).jpg', '&lt;div&gt;\r\n	Màu: trắng, xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L , XL&amp;nbsp;&lt;/div&gt;', '2013-11-12 15:18:15', 'ao-thun-tay-ngan-geben');
INSERT INTO `advance_search` VALUES (82, 'product', '51', 'A-GB007##ao-thun-tay-dai####[Áo thun tay dài##&lt;div&gt;\\r\\n	Màu: &amp;nbsp;xám&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mẫu áo thời trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-GB007##ao-thun-tay-dai####[Ao thun tay dai##&lt;div&gt;\\r\\n	Mau: &amp;nbsp;xam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mau ao thoi trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo thun tay dài', 'upload/GB-007 (1).jpg', '&lt;div&gt;\r\n	Màu: &amp;nbsp;xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '2013-11-12 15:18:52', 'ao-thun-tay-dai');
INSERT INTO `advance_search` VALUES (84, 'product', '52', 'A-GB008##ao-thun-tay-dai-1####[Áo thun tay dài##&lt;div&gt;\\r\\n	Màu: &amp;nbsp;đen&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mẫu áo thời trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-GB008##ao-thun-tay-dai-1####[Ao thun tay dai##&lt;div&gt;\\r\\n	Mau: &amp;nbsp;den&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Mau ao thoi trang 2013&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo thun tay dài', 'upload/GB-008 (1).jpg', '&lt;div&gt;\r\n	Màu: &amp;nbsp;đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '2013-11-12 15:19:18', 'ao-thun-tay-dai-1');
INSERT INTO `advance_search` VALUES (86, 'product', '53', 'Q-GB001##quan-kaki-geben####[Quần kaki Geben##&lt;div&gt;\\r\\n	Màu: &amp;nbsp;xám&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&lt;/div&gt;##&lt;p&gt;\\r\\n	Mẫu &amp;nbsp;thời trang 2013&lt;/p&gt;############]', 'Q-GB001##quan-kaki-geben####[Quan kaki Geben##&lt;div&gt;\\r\\n	Mau: &amp;nbsp;xam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&lt;/div&gt;##&lt;p&gt;\\r\\n	Mau &amp;nbsp;thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Quần kaki Geben', 'upload/Q-GB001 (1).jpg', '&lt;div&gt;\r\n	Màu: &amp;nbsp;xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&lt;/div&gt;', '2013-11-12 15:19:47', 'quan-kaki-geben');
INSERT INTO `advance_search` VALUES (88, 'product', '54', 'Q-GB002##quan-kaki-geben-1####[Quần kaki Geben##&lt;div&gt;\\r\\n	Màu: &amp;nbsp;xám&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&lt;/div&gt;##&lt;p&gt;\\r\\n	Mẫu &amp;nbsp;thời trang 2013&lt;/p&gt;############]', 'Q-GB002##quan-kaki-geben-1####[Quan kaki Geben##&lt;div&gt;\\r\\n	Mau: &amp;nbsp;xam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&lt;/div&gt;##&lt;p&gt;\\r\\n	Mau &amp;nbsp;thoi trang 2013&lt;/p&gt;############]', '', '', 'vn', 'Quần kaki Geben', 'upload/Q-GB002 (1).jpg', '&lt;div&gt;\r\n	Màu: &amp;nbsp;xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&lt;/div&gt;', '2013-11-12 15:20:15', 'quan-kaki-geben-1');
INSERT INTO `advance_search` VALUES (90, 'product', '55', 'A-CKD001##ao-thun-nam-ck####[Áo thun nam CK##&lt;div&gt;\\r\\n	Màu: cam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Thun bốn chiều, vải thun mát.&amp;nbsp;&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-CKD001##ao-thun-nam-ck####[Ao thun nam CK##&lt;div&gt;\\r\\n	Mau: cam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S&amp;nbsp;&lt;/div&gt;##&lt;div&gt;\\r\\n	Thun bon chieu, vai thun mat.&amp;nbsp;&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo thun nam CK', 'upload/A-CK001 (1).jpg', '&lt;div&gt;\r\n	Màu: cam&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S&amp;nbsp;&lt;/div&gt;', '2013-11-12 15:07:45', 'ao-thun-nam-ck');
INSERT INTO `advance_search` VALUES (92, 'product', '56', 'A-CKD002##ao-thun-nam-ck-1####[Áo thun nam CK##&lt;div&gt;\\r\\n	Màu: xanh tươi&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M&lt;/div&gt;##&lt;div&gt;\\r\\n	Kiểu dáng kinh điển đơn giản, nhưng không thiếu sự phong thái với thương hiệu CK&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-CKD002##ao-thun-nam-ck-1####[Ao thun nam CK##&lt;div&gt;\\r\\n	Mau: xanh tuoi&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M&lt;/div&gt;##&lt;div&gt;\\r\\n	Kieu dang kinh dien don gian, nhung khong thieu su phong thai voi thuong hieu CK&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo thun nam CK', 'upload/A-CK002 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh tươi&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M&lt;/div&gt;', '2013-11-12 15:07:10', 'ao-thun-nam-ck-1');
INSERT INTO `advance_search` VALUES (94, 'product', '57', 'A-DS001##ao-thun-nam-diesel####[Áo thun nam Diesel##&lt;div&gt;\\r\\n	Màu: xanh biển, tím, nâu&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M , L&lt;/div&gt;##&lt;p&gt;\\r\\n	Kiểu dáng kinh điển đơn giản và phong độ&lt;/p&gt;############]', 'A-DS001##ao-thun-nam-diesel####[Ao thun nam Diesel##&lt;div&gt;\\r\\n	Mau: xanh bien, tim, nau&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M , L&lt;/div&gt;##&lt;p&gt;\\r\\n	Kieu dang kinh dien don gian va phong do&lt;/p&gt;############]', '', '', 'vn', 'Áo thun nam Diesel', 'upload/A-DS001 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh biển, tím, nâu&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M , L&lt;/div&gt;', '2013-11-12 15:06:30', 'ao-thun-nam-diesel');
INSERT INTO `advance_search` VALUES (96, 'product', '58', 'A-DS002##ao-thun-nam-diesel-1####[Áo thun nam Diesel##&lt;div&gt;\\r\\n	Màu: xanh biển, tím, nâu&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M , L&lt;/div&gt;##&lt;div&gt;\\r\\n	Kiểu dáng giản dị với sự nhấn mạnh từ các viền đen và phần LEN viền nút cổ, kinh điển đơn giản và phong độ.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-DS002##ao-thun-nam-diesel-1####[Ao thun nam Diesel##&lt;div&gt;\\r\\n	Mau: xanh bien, tim, nau&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M , L&lt;/div&gt;##&lt;div&gt;\\r\\n	Kieu dang gian di voi su nhan manh tu cac vien den va phan LEN vien nut co, kinh dien don gian va phong do.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo thun nam Diesel', 'upload/A-DS002 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh biển, tím, nâu&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M , L&lt;/div&gt;', '2013-11-12 15:05:51', 'ao-thun-nam-diesel-1');
INSERT INTO `advance_search` VALUES (98, 'product', '59', 'A-EDC001##ao-thun-tay-dai-nam-edc####[Áo thun tay dài nam EDC##&lt;div&gt;\\r\\n	Màu: Đen, xám&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M&lt;/div&gt;##&lt;div&gt;\\r\\n	&amp;nbsp;Áo tay dài thun mát và mỏng, thật thích thợp với khí hậu Việt Nam.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-EDC001##ao-thun-tay-dai-nam-edc####[Ao thun tay dai nam EDC##&lt;div&gt;\\r\\n	Mau: Den, xam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M&lt;/div&gt;##&lt;div&gt;\\r\\n	&amp;nbsp;Ao tay dai thun mat va mong, that thich thop voi khi hau Viet Nam.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Áo thun tay dài nam EDC', 'upload/A-EDC001 (1).jpg', '&lt;div&gt;\r\n	Màu: Đen, xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M&lt;/div&gt;', '2013-11-12 15:05:04', 'ao-thun-tay-dai-nam-edc');
INSERT INTO `advance_search` VALUES (100, 'product', '60', 'A-EB001##thoi-trang-nam-eddie-bauer####[Thời trang Nam Eddie Bauer##&lt;div&gt;\\r\\n	Màu: xanh rêu&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S&lt;/div&gt;##&lt;div&gt;\\r\\n	Kiểu dáng giản dị và phong độ.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-EB001##thoi-trang-nam-eddie-bauer####[Thoi trang Nam Eddie Bauer##&lt;div&gt;\\r\\n	Mau: xanh reu&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S&lt;/div&gt;##&lt;div&gt;\\r\\n	Kieu dang gian di va phong do.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Thời trang Nam Eddie Bauer', 'upload/A-EB001 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh rêu&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S&lt;/div&gt;', '2013-11-12 14:44:05', 'thoi-trang-nam-eddie-bauer');
INSERT INTO `advance_search` VALUES (103, 'product', '61', 'A-EP001##thoi-trang-nam-express####[Thời trang Nam Express##&lt;div&gt;\\r\\n	Màu: xanh đen&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , L&lt;/div&gt;##&lt;div&gt;\\r\\n	Kiểu dáng giản dị và phong độ.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-EP001##thoi-trang-nam-express####[Thoi trang Nam Express##&lt;div&gt;\\r\\n	Mau: xanh den&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , L&lt;/div&gt;##&lt;div&gt;\\r\\n	Kieu dang gian di va phong do.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Thời trang Nam Express', 'upload/A-EP001 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , L&lt;/div&gt;', '2013-11-12 14:47:39', 'thoi-trang-nam-express');
INSERT INTO `advance_search` VALUES (104, 'product', '62', 'A-SS001##thoi-trang-nam-scotch-qcl####[Thời trang Nam Scotch&amp;QCL##&lt;div&gt;\\r\\n	Màu: vàng, xám , đỏ&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##&lt;p&gt;\\r\\n	Kiểu dáng giản dị và phong độ&lt;/p&gt;############]', 'A-SS001##thoi-trang-nam-scotch-qcl####[Thoi trang Nam Scotch&amp;QCL##&lt;div&gt;\\r\\n	Mau: vang, xam , do&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##&lt;p&gt;\\r\\n	Kieu dang gian di va phong do&lt;/p&gt;############]', '', '', 'vn', 'Thời trang Nam Scotch&amp;QCL', 'upload/A-SS001 (1).jpg', '&lt;div&gt;\r\n	Màu: vàng, xám , đỏ&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '2013-11-12 14:51:37', 'thoi-trang-nam-scotch-qcl');
INSERT INTO `advance_search` VALUES (106, 'product', '63', 'A-GU001##thoi-trang-nam-guess####[Thời trang Nam Guess##&lt;div&gt;\\r\\n	Màu: đen, xám, rêu&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: XL&lt;/div&gt;##&lt;div&gt;\\r\\n	Kiểu dáng giản dị và phong độ.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', 'A-GU001##thoi-trang-nam-guess####[Thoi trang Nam Guess##&lt;div&gt;\\r\\n	Mau: den, xam, reu&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: XL&lt;/div&gt;##&lt;div&gt;\\r\\n	Kieu dang gian di va phong do.&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	&amp;nbsp;&lt;/div&gt;############]', '', '', 'vn', 'Thời trang Nam Guess', 'upload/A-GU001 (1).jpg', '&lt;div&gt;\r\n	Màu: đen, xám, rêu&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: XL&lt;/div&gt;', '2013-11-12 14:54:50', 'thoi-trang-nam-guess');
INSERT INTO `advance_search` VALUES (108, 'product', '64', 'A-HK001##thoi-trang-nam-hackett####[Thời trang Nam Hackett##&lt;div&gt;\\r\\n	Màu: xanh lam, đen&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##############]', 'A-HK001##thoi-trang-nam-hackett####[Thoi trang Nam Hackett##&lt;div&gt;\\r\\n	Mau: xanh lam, den&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: S , M&lt;/div&gt;##############]', '', '', 'vn', 'Thời trang Nam Hackett', 'upload/A-HK001 (1).jpg', '&lt;div&gt;\r\n	Màu: xanh lam, đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '2013-11-12 14:58:41', 'thoi-trang-nam-hackett');
INSERT INTO `advance_search` VALUES (110, 'product', '65', 'A-HG001##thoi-trang-nam-hugo####[Thời trang Nam HUGO##&lt;div&gt;\\r\\n	Màu: xám&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&lt;/div&gt;##############]', 'A-HG001##thoi-trang-nam-hugo####[Thoi trang Nam HUGO##&lt;div&gt;\\r\\n	Mau: xam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: L&lt;/div&gt;##############]', '', '', 'vn', 'Thời trang Nam HUGO', 'upload/A-HG001 (1).jpg', '&lt;div&gt;\r\n	Màu: xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&lt;/div&gt;', '2013-11-12 15:00:47', 'thoi-trang-nam-hugo');
INSERT INTO `advance_search` VALUES (112, 'product', '66', 'A-HG002##thoi-trang-nam-hugo-1####[Thời trang Nam HUGO##&lt;div&gt;\\r\\n	Màu: cam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M&lt;/div&gt;##############]', 'A-HG002##thoi-trang-nam-hugo-1####[Thoi trang Nam HUGO##&lt;div&gt;\\r\\n	Mau: cam&lt;/div&gt;\\r\\n&lt;div&gt;\\r\\n	Size: M&lt;/div&gt;##############]', '', '', 'vn', 'Thời trang Nam HUGO', 'upload/A-HG002 (1).jpg', '&lt;div&gt;\r\n	Màu: cam&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M&lt;/div&gt;', '2013-11-12 15:02:54', 'thoi-trang-nam-hugo-1');
INSERT INTO `advance_search` VALUES (114, 'product', '67', 'test dung##ten-test-dung####[ten test dung################]', 'test dung##ten-test-dung####[ten test dung################]', '', '', 'vn', 'ten test dung', '', '', '2013-11-13 10:00:31', 'ten-test-dung');

-- --------------------------------------------------------

-- 
-- Table structure for table `bonus_group`
-- 

CREATE TABLE `bonus_group` (
  `bonus_group_id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `point` double NOT NULL,
  `discount` double NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY  (`bonus_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `bonus_group`
-- 

INSERT INTO `bonus_group` VALUES (1, 'Metal Member', 1000, 10, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `category`
-- 

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL auto_increment,
  `categoryid` varchar(100) collate utf8_unicode_ci NOT NULL,
  `categoryname` text collate utf8_unicode_ci NOT NULL,
  `parent` varchar(100) collate utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `category`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `comment`
-- 

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL auto_increment,
  `fullname` text collate utf8_unicode_ci NOT NULL,
  `email` text collate utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `commentdate` datetime NOT NULL,
  `mediaid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `status` varchar(20) collate utf8_unicode_ci NOT NULL,
  `userid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `refersitemap` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `comment`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `country`
-- 

CREATE TABLE `country` (
  `countryid` int(11) NOT NULL auto_increment,
  `countryname` varchar(64) collate utf8_unicode_ci NOT NULL,
  `iso_code_2` varchar(2) collate utf8_unicode_ci NOT NULL default '',
  `iso_code_3` varchar(3) collate utf8_unicode_ci NOT NULL default '',
  `address_format` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`countryid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=240 ;

-- 
-- Dumping data for table `country`
-- 

INSERT INTO `country` VALUES (1, 'Afghanistan', 'AF', 'AFG', '');
INSERT INTO `country` VALUES (2, 'Albania', 'AL', 'ALB', '');
INSERT INTO `country` VALUES (3, 'Algeria', 'DZ', 'DZA', '');
INSERT INTO `country` VALUES (4, 'American Samoa', 'AS', 'ASM', '');
INSERT INTO `country` VALUES (5, 'Andorra', 'AD', 'AND', '');
INSERT INTO `country` VALUES (6, 'Angola', 'AO', 'AGO', '');
INSERT INTO `country` VALUES (7, 'Anguilla', 'AI', 'AIA', '');
INSERT INTO `country` VALUES (8, 'Antarctica', 'AQ', 'ATA', '');
INSERT INTO `country` VALUES (9, 'Antigua and Barbuda', 'AG', 'ATG', '');
INSERT INTO `country` VALUES (10, 'Argentina', 'AR', 'ARG', '');
INSERT INTO `country` VALUES (11, 'Armenia', 'AM', 'ARM', '');
INSERT INTO `country` VALUES (12, 'Aruba', 'AW', 'ABW', '');
INSERT INTO `country` VALUES (13, 'Australia', 'AU', 'AUS', '');
INSERT INTO `country` VALUES (14, 'Austria', 'AT', 'AUT', '');
INSERT INTO `country` VALUES (15, 'Azerbaijan', 'AZ', 'AZE', '');
INSERT INTO `country` VALUES (16, 'Bahamas', 'BS', 'BHS', '');
INSERT INTO `country` VALUES (17, 'Bahrain', 'BH', 'BHR', '');
INSERT INTO `country` VALUES (18, 'Bangladesh', 'BD', 'BGD', '');
INSERT INTO `country` VALUES (19, 'Barbados', 'BB', 'BRB', '');
INSERT INTO `country` VALUES (20, 'Belarus', 'BY', 'BLR', '');
INSERT INTO `country` VALUES (21, 'Belgium', 'BE', 'BEL', '');
INSERT INTO `country` VALUES (22, 'Belize', 'BZ', 'BLZ', '');
INSERT INTO `country` VALUES (23, 'Benin', 'BJ', 'BEN', '');
INSERT INTO `country` VALUES (24, 'Bermuda', 'BM', 'BMU', '');
INSERT INTO `country` VALUES (25, 'Bhutan', 'BT', 'BTN', '');
INSERT INTO `country` VALUES (26, 'Bolivia', 'BO', 'BOL', '');
INSERT INTO `country` VALUES (27, 'Bosnia and Herzegowina', 'BA', 'BIH', '');
INSERT INTO `country` VALUES (28, 'Botswana', 'BW', 'BWA', '');
INSERT INTO `country` VALUES (29, 'Bouvet Island', 'BV', 'BVT', '');
INSERT INTO `country` VALUES (30, 'Brazil', 'BR', 'BRA', '');
INSERT INTO `country` VALUES (31, 'British Indian Ocean Territory', 'IO', 'IOT', '');
INSERT INTO `country` VALUES (32, 'Brunei Darussalam', 'BN', 'BRN', '');
INSERT INTO `country` VALUES (33, 'Bulgaria', 'BG', 'BGR', '');
INSERT INTO `country` VALUES (34, 'Burkina Faso', 'BF', 'BFA', '');
INSERT INTO `country` VALUES (35, 'Burundi', 'BI', 'BDI', '');
INSERT INTO `country` VALUES (36, 'Cambodia', 'KH', 'KHM', '');
INSERT INTO `country` VALUES (37, 'Cameroon', 'CM', 'CMR', '');
INSERT INTO `country` VALUES (38, 'Canada', 'CA', 'CAN', '');
INSERT INTO `country` VALUES (39, 'Cape Verde', 'CV', 'CPV', '');
INSERT INTO `country` VALUES (40, 'Cayman Islands', 'KY', 'CYM', '');
INSERT INTO `country` VALUES (41, 'Central African Republic', 'CF', 'CAF', '');
INSERT INTO `country` VALUES (42, 'Chad', 'TD', 'TCD', '');
INSERT INTO `country` VALUES (43, 'Chile', 'CL', 'CHL', '');
INSERT INTO `country` VALUES (44, 'China', 'CN', 'CHN', '');
INSERT INTO `country` VALUES (45, 'Christmas Island', 'CX', 'CXR', '');
INSERT INTO `country` VALUES (46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '');
INSERT INTO `country` VALUES (47, 'Colombia', 'CO', 'COL', '');
INSERT INTO `country` VALUES (48, 'Comoros', 'KM', 'COM', '');
INSERT INTO `country` VALUES (49, 'Congo', 'CG', 'COG', '');
INSERT INTO `country` VALUES (50, 'Cook Islands', 'CK', 'COK', '');
INSERT INTO `country` VALUES (51, 'Costa Rica', 'CR', 'CRI', '');
INSERT INTO `country` VALUES (52, 'Cote D''Ivoire', 'CI', 'CIV', '');
INSERT INTO `country` VALUES (53, 'Croatia', 'HR', 'HRV', '');
INSERT INTO `country` VALUES (54, 'Cuba', 'CU', 'CUB', '');
INSERT INTO `country` VALUES (55, 'Cyprus', 'CY', 'CYP', '');
INSERT INTO `country` VALUES (56, 'Czech Republic', 'CZ', 'CZE', '');
INSERT INTO `country` VALUES (57, 'Denmark', 'DK', 'DNK', '');
INSERT INTO `country` VALUES (58, 'Djibouti', 'DJ', 'DJI', '');
INSERT INTO `country` VALUES (59, 'Dominica', 'DM', 'DMA', '');
INSERT INTO `country` VALUES (60, 'Dominican Republic', 'DO', 'DOM', '');
INSERT INTO `country` VALUES (61, 'East Timor', 'TP', 'TMP', '');
INSERT INTO `country` VALUES (62, 'Ecuador', 'EC', 'ECU', '');
INSERT INTO `country` VALUES (63, 'Egypt', 'EG', 'EGY', '');
INSERT INTO `country` VALUES (64, 'El Salvador', 'SV', 'SLV', '');
INSERT INTO `country` VALUES (65, 'Equatorial Guinea', 'GQ', 'GNQ', '');
INSERT INTO `country` VALUES (66, 'Eritrea', 'ER', 'ERI', '');
INSERT INTO `country` VALUES (67, 'Estonia', 'EE', 'EST', '');
INSERT INTO `country` VALUES (68, 'Ethiopia', 'ET', 'ETH', '');
INSERT INTO `country` VALUES (69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '');
INSERT INTO `country` VALUES (70, 'Faroe Islands', 'FO', 'FRO', '');
INSERT INTO `country` VALUES (71, 'Fiji', 'FJ', 'FJI', '');
INSERT INTO `country` VALUES (72, 'Finland', 'FI', 'FIN', '');
INSERT INTO `country` VALUES (73, 'France', 'FR', 'FRA', '');
INSERT INTO `country` VALUES (74, 'France, Metropolitan', 'FX', 'FXX', '');
INSERT INTO `country` VALUES (75, 'French Guiana', 'GF', 'GUF', '');
INSERT INTO `country` VALUES (76, 'French Polynesia', 'PF', 'PYF', '');
INSERT INTO `country` VALUES (77, 'French Southern Territories', 'TF', 'ATF', '');
INSERT INTO `country` VALUES (78, 'Gabon', 'GA', 'GAB', '');
INSERT INTO `country` VALUES (79, 'Gambia', 'GM', 'GMB', '');
INSERT INTO `country` VALUES (80, 'Georgia', 'GE', 'GEO', '');
INSERT INTO `country` VALUES (81, 'Germany', 'DE', 'DEU', '');
INSERT INTO `country` VALUES (82, 'Ghana', 'GH', 'GHA', '');
INSERT INTO `country` VALUES (83, 'Gibraltar', 'GI', 'GIB', '');
INSERT INTO `country` VALUES (84, 'Greece', 'GR', 'GRC', '');
INSERT INTO `country` VALUES (85, 'Greenland', 'GL', 'GRL', '');
INSERT INTO `country` VALUES (86, 'Grenada', 'GD', 'GRD', '');
INSERT INTO `country` VALUES (87, 'Guadeloupe', 'GP', 'GLP', '');
INSERT INTO `country` VALUES (88, 'Guam', 'GU', 'GUM', '');
INSERT INTO `country` VALUES (89, 'Guatemala', 'GT', 'GTM', '');
INSERT INTO `country` VALUES (90, 'Guinea', 'GN', 'GIN', '');
INSERT INTO `country` VALUES (91, 'Guinea-bissau', 'GW', 'GNB', '');
INSERT INTO `country` VALUES (92, 'Guyana', 'GY', 'GUY', '');
INSERT INTO `country` VALUES (93, 'Haiti', 'HT', 'HTI', '');
INSERT INTO `country` VALUES (94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '');
INSERT INTO `country` VALUES (95, 'Honduras', 'HN', 'HND', '');
INSERT INTO `country` VALUES (96, 'Hong Kong', 'HK', 'HKG', '');
INSERT INTO `country` VALUES (97, 'Hungary', 'HU', 'HUN', '');
INSERT INTO `country` VALUES (98, 'Iceland', 'IS', 'ISL', '');
INSERT INTO `country` VALUES (99, 'India', 'IN', 'IND', '');
INSERT INTO `country` VALUES (100, 'Indonesia', 'ID', 'IDN', '');
INSERT INTO `country` VALUES (101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '');
INSERT INTO `country` VALUES (102, 'Iraq', 'IQ', 'IRQ', '');
INSERT INTO `country` VALUES (103, 'Ireland', 'IE', 'IRL', '');
INSERT INTO `country` VALUES (104, 'Israel', 'IL', 'ISR', '');
INSERT INTO `country` VALUES (105, 'Italy', 'IT', 'ITA', '');
INSERT INTO `country` VALUES (106, 'Jamaica', 'JM', 'JAM', '');
INSERT INTO `country` VALUES (107, 'Japan', 'JP', 'JPN', '');
INSERT INTO `country` VALUES (108, 'Jordan', 'JO', 'JOR', '');
INSERT INTO `country` VALUES (109, 'Kazakhstan', 'KZ', 'KAZ', '');
INSERT INTO `country` VALUES (110, 'Kenya', 'KE', 'KEN', '');
INSERT INTO `country` VALUES (111, 'Kiribati', 'KI', 'KIR', '');
INSERT INTO `country` VALUES (112, 'Korea, Democratic People''s Republic of', 'KP', 'PRK', '');
INSERT INTO `country` VALUES (113, 'Korea, Republic of', 'KR', 'KOR', '');
INSERT INTO `country` VALUES (114, 'Kuwait', 'KW', 'KWT', '');
INSERT INTO `country` VALUES (115, 'Kyrgyzstan', 'KG', 'KGZ', '');
INSERT INTO `country` VALUES (116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '');
INSERT INTO `country` VALUES (117, 'Latvia', 'LV', 'LVA', '');
INSERT INTO `country` VALUES (118, 'Lebanon', 'LB', 'LBN', '');
INSERT INTO `country` VALUES (119, 'Lesotho', 'LS', 'LSO', '');
INSERT INTO `country` VALUES (120, 'Liberia', 'LR', 'LBR', '');
INSERT INTO `country` VALUES (121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '');
INSERT INTO `country` VALUES (122, 'Liechtenstein', 'LI', 'LIE', '');
INSERT INTO `country` VALUES (123, 'Lithuania', 'LT', 'LTU', '');
INSERT INTO `country` VALUES (124, 'Luxembourg', 'LU', 'LUX', '');
INSERT INTO `country` VALUES (125, 'Macau', 'MO', 'MAC', '');
INSERT INTO `country` VALUES (126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', '');
INSERT INTO `country` VALUES (127, 'Madagascar', 'MG', 'MDG', '');
INSERT INTO `country` VALUES (128, 'Malawi', 'MW', 'MWI', '');
INSERT INTO `country` VALUES (129, 'Malaysia', 'MY', 'MYS', '');
INSERT INTO `country` VALUES (130, 'Maldives', 'MV', 'MDV', '');
INSERT INTO `country` VALUES (131, 'Mali', 'ML', 'MLI', '');
INSERT INTO `country` VALUES (132, 'Malta', 'MT', 'MLT', '');
INSERT INTO `country` VALUES (133, 'Marshall Islands', 'MH', 'MHL', '');
INSERT INTO `country` VALUES (134, 'Martinique', 'MQ', 'MTQ', '');
INSERT INTO `country` VALUES (135, 'Mauritania', 'MR', 'MRT', '');
INSERT INTO `country` VALUES (136, 'Mauritius', 'MU', 'MUS', '');
INSERT INTO `country` VALUES (137, 'Mayotte', 'YT', 'MYT', '');
INSERT INTO `country` VALUES (138, 'Mexico', 'MX', 'MEX', '');
INSERT INTO `country` VALUES (139, 'Micronesia, Federated States of', 'FM', 'FSM', '');
INSERT INTO `country` VALUES (140, 'Moldova, Republic of', 'MD', 'MDA', '');
INSERT INTO `country` VALUES (141, 'Monaco', 'MC', 'MCO', '');
INSERT INTO `country` VALUES (142, 'Mongolia', 'MN', 'MNG', '');
INSERT INTO `country` VALUES (143, 'Montserrat', 'MS', 'MSR', '');
INSERT INTO `country` VALUES (144, 'Morocco', 'MA', 'MAR', '');
INSERT INTO `country` VALUES (145, 'Mozambique', 'MZ', 'MOZ', '');
INSERT INTO `country` VALUES (146, 'Myanmar', 'MM', 'MMR', '');
INSERT INTO `country` VALUES (147, 'Namibia', 'NA', 'NAM', '');
INSERT INTO `country` VALUES (148, 'Nauru', 'NR', 'NRU', '');
INSERT INTO `country` VALUES (149, 'Nepal', 'NP', 'NPL', '');
INSERT INTO `country` VALUES (150, 'Netherlands', 'NL', 'NLD', '');
INSERT INTO `country` VALUES (151, 'Netherlands Antilles', 'AN', 'ANT', '');
INSERT INTO `country` VALUES (152, 'New Caledonia', 'NC', 'NCL', '');
INSERT INTO `country` VALUES (153, 'New Zealand', 'NZ', 'NZL', '');
INSERT INTO `country` VALUES (154, 'Nicaragua', 'NI', 'NIC', '');
INSERT INTO `country` VALUES (155, 'Niger', 'NE', 'NER', '');
INSERT INTO `country` VALUES (156, 'Nigeria', 'NG', 'NGA', '');
INSERT INTO `country` VALUES (157, 'Niue', 'NU', 'NIU', '');
INSERT INTO `country` VALUES (158, 'Norfolk Island', 'NF', 'NFK', '');
INSERT INTO `country` VALUES (159, 'Northern Mariana Islands', 'MP', 'MNP', '');
INSERT INTO `country` VALUES (160, 'Norway', 'NO', 'NOR', '');
INSERT INTO `country` VALUES (161, 'Oman', 'OM', 'OMN', '');
INSERT INTO `country` VALUES (162, 'Pakistan', 'PK', 'PAK', '');
INSERT INTO `country` VALUES (163, 'Palau', 'PW', 'PLW', '');
INSERT INTO `country` VALUES (164, 'Panama', 'PA', 'PAN', '');
INSERT INTO `country` VALUES (165, 'Papua New Guinea', 'PG', 'PNG', '');
INSERT INTO `country` VALUES (166, 'Paraguay', 'PY', 'PRY', '');
INSERT INTO `country` VALUES (167, 'Peru', 'PE', 'PER', '');
INSERT INTO `country` VALUES (168, 'Philippines', 'PH', 'PHL', '');
INSERT INTO `country` VALUES (169, 'Pitcairn', 'PN', 'PCN', '');
INSERT INTO `country` VALUES (170, 'Poland', 'PL', 'POL', '');
INSERT INTO `country` VALUES (171, 'Portugal', 'PT', 'PRT', '');
INSERT INTO `country` VALUES (172, 'Puerto Rico', 'PR', 'PRI', '');
INSERT INTO `country` VALUES (173, 'Qatar', 'QA', 'QAT', '');
INSERT INTO `country` VALUES (174, 'Reunion', 'RE', 'REU', '');
INSERT INTO `country` VALUES (175, 'Romania', 'RO', 'ROM', '');
INSERT INTO `country` VALUES (176, 'Russian Federation', 'RU', 'RUS', '');
INSERT INTO `country` VALUES (177, 'Rwanda', 'RW', 'RWA', '');
INSERT INTO `country` VALUES (178, 'Saint Kitts and Nevis', 'KN', 'KNA', '');
INSERT INTO `country` VALUES (179, 'Saint Lucia', 'LC', 'LCA', '');
INSERT INTO `country` VALUES (180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '');
INSERT INTO `country` VALUES (181, 'Samoa', 'WS', 'WSM', '');
INSERT INTO `country` VALUES (182, 'San Marino', 'SM', 'SMR', '');
INSERT INTO `country` VALUES (183, 'Sao Tome and Principe', 'ST', 'STP', '');
INSERT INTO `country` VALUES (184, 'Saudi Arabia', 'SA', 'SAU', '');
INSERT INTO `country` VALUES (185, 'Senegal', 'SN', 'SEN', '');
INSERT INTO `country` VALUES (186, 'Seychelles', 'SC', 'SYC', '');
INSERT INTO `country` VALUES (187, 'Sierra Leone', 'SL', 'SLE', '');
INSERT INTO `country` VALUES (188, 'Singapore', 'SG', 'SGP', '');
INSERT INTO `country` VALUES (189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', '');
INSERT INTO `country` VALUES (190, 'Slovenia', 'SI', 'SVN', '');
INSERT INTO `country` VALUES (191, 'Solomon Islands', 'SB', 'SLB', '');
INSERT INTO `country` VALUES (192, 'Somalia', 'SO', 'SOM', '');
INSERT INTO `country` VALUES (193, 'South Africa', 'ZA', 'ZAF', '');
INSERT INTO `country` VALUES (194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '');
INSERT INTO `country` VALUES (195, 'Spain', 'ES', 'ESP', '');
INSERT INTO `country` VALUES (196, 'Sri Lanka', 'LK', 'LKA', '');
INSERT INTO `country` VALUES (197, 'St. Helena', 'SH', 'SHN', '');
INSERT INTO `country` VALUES (198, 'St. Pierre and Miquelon', 'PM', 'SPM', '');
INSERT INTO `country` VALUES (199, 'Sudan', 'SD', 'SDN', '');
INSERT INTO `country` VALUES (200, 'Suriname', 'SR', 'SUR', '');
INSERT INTO `country` VALUES (201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '');
INSERT INTO `country` VALUES (202, 'Swaziland', 'SZ', 'SWZ', '');
INSERT INTO `country` VALUES (203, 'Sweden', 'SE', 'SWE', '');
INSERT INTO `country` VALUES (204, 'Switzerland', 'CH', 'CHE', '');
INSERT INTO `country` VALUES (205, 'Syrian Arab Republic', 'SY', 'SYR', '');
INSERT INTO `country` VALUES (206, 'Taiwan', 'TW', 'TWN', '');
INSERT INTO `country` VALUES (207, 'Tajikistan', 'TJ', 'TJK', '');
INSERT INTO `country` VALUES (208, 'Tanzania, United Republic of', 'TZ', 'TZA', '');
INSERT INTO `country` VALUES (209, 'Thailand', 'TH', 'THA', '');
INSERT INTO `country` VALUES (210, 'Togo', 'TG', 'TGO', '');
INSERT INTO `country` VALUES (211, 'Tokelau', 'TK', 'TKL', '');
INSERT INTO `country` VALUES (212, 'Tonga', 'TO', 'TON', '');
INSERT INTO `country` VALUES (213, 'Trinidad and Tobago', 'TT', 'TTO', '');
INSERT INTO `country` VALUES (214, 'Tunisia', 'TN', 'TUN', '');
INSERT INTO `country` VALUES (215, 'Turkey', 'TR', 'TUR', '');
INSERT INTO `country` VALUES (216, 'Turkmenistan', 'TM', 'TKM', '');
INSERT INTO `country` VALUES (217, 'Turks and Caicos Islands', 'TC', 'TCA', '');
INSERT INTO `country` VALUES (218, 'Tuvalu', 'TV', 'TUV', '');
INSERT INTO `country` VALUES (219, 'Uganda', 'UG', 'UGA', '');
INSERT INTO `country` VALUES (220, 'Ukraine', 'UA', 'UKR', '');
INSERT INTO `country` VALUES (221, 'United Arab Emirates', 'AE', 'ARE', '');
INSERT INTO `country` VALUES (222, 'United Kingdom', 'GB', 'GBR', '');
INSERT INTO `country` VALUES (223, 'United States', 'US', 'USA', '');
INSERT INTO `country` VALUES (224, 'United States Minor Outlying Islands', 'UM', 'UMI', '');
INSERT INTO `country` VALUES (225, 'Uruguay', 'UY', 'URY', '');
INSERT INTO `country` VALUES (226, 'Uzbekistan', 'UZ', 'UZB', '');
INSERT INTO `country` VALUES (227, 'Vanuatu', 'VU', 'VUT', '');
INSERT INTO `country` VALUES (228, 'Vatican City State (Holy See)', 'VA', 'VAT', '');
INSERT INTO `country` VALUES (229, 'Venezuela', 'VE', 'VEN', '');
INSERT INTO `country` VALUES (230, 'Viet Nam', 'VN', 'VNM', '');
INSERT INTO `country` VALUES (231, 'Virgin Islands (British)', 'VG', 'VGB', '');
INSERT INTO `country` VALUES (232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '');
INSERT INTO `country` VALUES (233, 'Wallis and Futuna Islands', 'WF', 'WLF', '');
INSERT INTO `country` VALUES (234, 'Western Sahara', 'EH', 'ESH', '');
INSERT INTO `country` VALUES (235, 'Yemen', 'YE', 'YEM', '');
INSERT INTO `country` VALUES (236, 'Yugoslavia', 'YU', 'YUG', '');
INSERT INTO `country` VALUES (237, 'Zaire', 'ZR', 'ZAR', '');
INSERT INTO `country` VALUES (238, 'Zambia', 'ZM', 'ZMB', '');
INSERT INTO `country` VALUES (239, 'Zimbabwe', 'ZW', 'ZWE', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `customer`
-- 

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL auto_increment,
  `customer_group_id` int(11) NOT NULL,
  `siteid` varchar(30) character set utf8 default NULL,
  `account` varchar(250) NOT NULL,
  `firstname` varchar(200) character set utf8 NOT NULL,
  `lastname` varchar(200) character set utf8 NOT NULL,
  `email` varchar(100) character set utf8 NOT NULL,
  `telephone` varchar(100) character set utf8 NOT NULL,
  `fax` varchar(50) character set utf8 NOT NULL,
  `password` varchar(50) character set utf8 NOT NULL,
  `salt` varchar(100) character set utf8 NOT NULL,
  `cart` text character set utf8 NOT NULL,
  `wishlist` text character set utf8 NOT NULL,
  `newsletter` tinyint(1) NOT NULL,
  `addressid` int(11) NOT NULL,
  `ip` int(50) NOT NULL,
  `status` int(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) character set utf8 NOT NULL,
  `activecode` varchar(50) character set utf8 NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `point` double NOT NULL,
  `identification` varchar(100) NOT NULL,
  `issuedate` datetime NOT NULL,
  `address` varchar(100) NOT NULL,
  `birthdate` datetime NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `completed_profile` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY  (`customerid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `customer`
-- 

INSERT INTO `customer` VALUES (1, 0, 'default', '', 'Đỗ', 'Nguyễn Khoa Học', 'hoc.do@elifepartners.com', '0932 125 898', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, 0, 192168, 1, 1, 'c4ca4238a0b923820dcc509a6f75849b', '', '2013-09-20 12:11:48', '2013-09-20 12:11:48', 1000, '250824549', '2013-11-03 00:00:00', 'ho chi minh fsdafdsa', '2013-11-09 00:00:00', '', 0, 'male');

-- --------------------------------------------------------

-- 
-- Table structure for table `customer_group`
-- 

CREATE TABLE `customer_group` (
  `customer_group_id` int(11) NOT NULL auto_increment,
  `siteid` varchar(30) NOT NULL,
  `approval` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_group`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_group_description`
-- 

CREATE TABLE `customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `languageid` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`customer_group_id`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `customer_group_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_ip`
-- 

CREATE TABLE `customer_ip` (
  `customer_ip_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_ip`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_ip_blacklist`
-- 

CREATE TABLE `customer_ip_blacklist` (
  `customer_ip_blacklist_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY  (`customer_ip_blacklist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_ip_blacklist`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_online`
-- 

CREATE TABLE `customer_online` (
  `customer_online_id` int(11) NOT NULL auto_increment,
  `site_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_online_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_online`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `customer_reward`
-- 

CREATE TABLE `customer_reward` (
  `customer_reward_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `customer_reward`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `dictionary`
-- 

CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL auto_increment,
  `key` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `dictionary`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `dictionary_description`
-- 

CREATE TABLE `dictionary_description` (
  `id` int(11) NOT NULL,
  `language_id` varchar(50) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY  (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `dictionary_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `elife_nhantin`
-- 

CREATE TABLE `elife_nhantin` (
  `id` bigint(20) NOT NULL auto_increment,
  `hoten` text collate utf8_unicode_ci NOT NULL,
  `email` text collate utf8_unicode_ci NOT NULL,
  `ngaydangky` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `elife_nhantin`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `email`
-- 

CREATE TABLE `email` (
  `id` int(11) NOT NULL auto_increment,
  `email` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `email`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `email_description`
-- 

CREATE TABLE `email_description` (
  `id` bigint(20) NOT NULL auto_increment,
  `emailid` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `languageid` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `email_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `file`
-- 

CREATE TABLE `file` (
  `fileid` bigint(20) NOT NULL auto_increment,
  `filetypeid` varchar(20) NOT NULL,
  `filename` text NOT NULL,
  `filepath` text,
  `fileparent` bigint(20) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `filesize` text NOT NULL,
  `extension` varchar(20) NOT NULL,
  `tagkeyword` varchar(20) NOT NULL,
  `activeby` varchar(50) NOT NULL,
  `activedate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `updatedby` varchar(50) NOT NULL,
  `deleteddate` datetime NOT NULL,
  `deletedby` varchar(50) NOT NULL,
  PRIMARY KEY  (`fileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `file`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `filetype`
-- 

CREATE TABLE `filetype` (
  `id` bigint(20) NOT NULL auto_increment,
  `filetypeid` varchar(20) NOT NULL,
  `listextension` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `filetype`
-- 

INSERT INTO `filetype` VALUES (1, 'image', 'jpg, jpeg, png, gif');
INSERT INTO `filetype` VALUES (2, 'video', 'flv, mp4, dat, avi, wmv, mpeg');
INSERT INTO `filetype` VALUES (12, 'any', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `filter`
-- 

CREATE TABLE `filter` (
  `filterid` bigint(20) NOT NULL auto_increment,
  `siteid` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`filterid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `filter`
-- 

INSERT INTO `filter` VALUES (1, 'default', 'checkbox', 2);
INSERT INTO `filter` VALUES (2, 'default', 'checkbox', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `filter_description`
-- 

CREATE TABLE `filter_description` (
  `filterid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY  (`filterid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `filter_description`
-- 

INSERT INTO `filter_description` VALUES (1, 'vn', 'Lọc Theo Loại Sản Phẩm');

-- --------------------------------------------------------

-- 
-- Table structure for table `filter_value`
-- 

CREATE TABLE `filter_value` (
  `filter_value_id` bigint(20) NOT NULL auto_increment,
  `filterid` bigint(20) NOT NULL,
  `image` text NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`filter_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- Dumping data for table `filter_value`
-- 

INSERT INTO `filter_value` VALUES (16, 1, '', 1);
INSERT INTO `filter_value` VALUES (2, 1, '', 2);
INSERT INTO `filter_value` VALUES (3, 1, '', 3);
INSERT INTO `filter_value` VALUES (4, 1, '', 4);
INSERT INTO `filter_value` VALUES (5, 1, '', 5);
INSERT INTO `filter_value` VALUES (6, 1, '', 6);
INSERT INTO `filter_value` VALUES (7, 1, '', 7);
INSERT INTO `filter_value` VALUES (15, 1, '', 1);
INSERT INTO `filter_value` VALUES (14, 1, '', 1);
INSERT INTO `filter_value` VALUES (13, 1, '', 8);
INSERT INTO `filter_value` VALUES (11, 1, '', 1);
INSERT INTO `filter_value` VALUES (17, 1, '', 1);
INSERT INTO `filter_value` VALUES (18, 1, '', 1);
INSERT INTO `filter_value` VALUES (19, 1, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `filter_value_description`
-- 

CREATE TABLE `filter_value_description` (
  `filter_value_id` bigint(20) NOT NULL,
  `filterid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY  (`filter_value_id`,`filterid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `filter_value_description`
-- 

INSERT INTO `filter_value_description` VALUES (2, 1, 'vn', 'Áo công sở');
INSERT INTO `filter_value_description` VALUES (3, 1, 'vn', 'Quần tây');
INSERT INTO `filter_value_description` VALUES (4, 1, 'vn', 'Quần Kaki');
INSERT INTO `filter_value_description` VALUES (5, 1, 'vn', 'Quần Jeans');
INSERT INTO `filter_value_description` VALUES (6, 1, 'vn', 'Quần ngắn');
INSERT INTO `filter_value_description` VALUES (7, 1, 'vn', 'Túi xách');
INSERT INTO `filter_value_description` VALUES (8, 2, 'vn', 'Thời trang nam');
INSERT INTO `filter_value_description` VALUES (9, 2, 'vn', 'Thời trang nữ');
INSERT INTO `filter_value_description` VALUES (10, 2, 'vn', 'Hàng đặt');
INSERT INTO `filter_value_description` VALUES (11, 1, 'vn', 'Áo thun');
INSERT INTO `filter_value_description` VALUES (13, 1, 'vn', 'Áo đầm');
INSERT INTO `filter_value_description` VALUES (14, 1, 'vn', 'Áo sơ mi');
INSERT INTO `filter_value_description` VALUES (15, 1, 'vn', 'Balo');
INSERT INTO `filter_value_description` VALUES (16, 1, 'vn', 'Ví');
INSERT INTO `filter_value_description` VALUES (17, 1, 'vn', 'Túi xách');
INSERT INTO `filter_value_description` VALUES (18, 1, 'vn', 'Mắt kính');
INSERT INTO `filter_value_description` VALUES (19, 1, 'vn', 'Áo gió');

-- --------------------------------------------------------

-- 
-- Table structure for table `language`
-- 

CREATE TABLE `language` (
  `id` bigint(20) NOT NULL auto_increment,
  `languageid` varchar(50) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) default NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sortOrder` int(3) default NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `language`
-- 

INSERT INTO `language` VALUES (1, 'vn', 'Việt Nam', 'vn', 'en_US.UTF-8,en_US,en-gb,vietnam', 'vn.png', 'vietnam', 'vietnam', 1, 1);
INSERT INTO `language` VALUES (2, 'en', 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'en.png', 'english', 'english', 2, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `layout`
-- 

CREATE TABLE `layout` (
  `id` bigint(20) NOT NULL auto_increment,
  `layoutid` varchar(50) character set utf8 NOT NULL,
  `imagedemo` text collate utf8_unicode_ci NOT NULL,
  `linkdemo` text collate utf8_unicode_ci NOT NULL,
  `layouttype` varchar(50) collate utf8_unicode_ci NOT NULL,
  `sidebarleft` bigint(20) NOT NULL,
  `sidebarright` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `layout`
-- 

INSERT INTO `layout` VALUES (1, 'default', 'upload/elife_logo.png', 'http://localhost/demo/upload/', 'nosidebar', 0, 0);
INSERT INTO `layout` VALUES (2, 'homepage', '', '', 'nosidebar', 0, 0);
INSERT INTO `layout` VALUES (12, 'product', '', '', 'nosidebar', 0, 0);
INSERT INTO `layout` VALUES (14, 'info', '', '', 'leftsidebar', 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `layout_dashboard`
-- 

CREATE TABLE `layout_dashboard` (
  `layoutid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `addonid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `layout_dashboard`
-- 

INSERT INTO `layout_dashboard` VALUES ('homepage', 'snowfall', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `layout_description`
-- 

CREATE TABLE `layout_description` (
  `layoutid` varchar(250) character set utf8 NOT NULL,
  `layoutname` text collate utf8_unicode_ci NOT NULL,
  `languageid` varchar(50) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `layout_description`
-- 

INSERT INTO `layout_description` VALUES ('default', 'bố cục mặc định', 'vn');
INSERT INTO `layout_description` VALUES ('homepage', 'Homepage Layout', 'en');
INSERT INTO `layout_description` VALUES ('homepage', 'bố cục trang chủ', 'vn');
INSERT INTO `layout_description` VALUES ('product', 'Bố cục sản phẩm', 'vn');
INSERT INTO `layout_description` VALUES ('product', 'Product layout', 'en');
INSERT INTO `layout_description` VALUES ('info', 'Layout Info', 'en');
INSERT INTO `layout_description` VALUES ('info', 'Bố cục bài viết', 'vn');
INSERT INTO `layout_description` VALUES ('default', 'Default Layout', 'en');
INSERT INTO `layout_description` VALUES ('layout_detail_manufacturer', 'manufacturer layout detail', 'en');
INSERT INTO `layout_description` VALUES ('layout_detail_manufacturer', 'bố cục thương hiệu chi tiết', 'vn');

-- --------------------------------------------------------

-- 
-- Table structure for table `layout_sidebar`
-- 

CREATE TABLE `layout_sidebar` (
  `layoutid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `sidebarid` bigint(20) NOT NULL,
  `position` varchar(50) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `layout_sidebar`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `layout_splash`
-- 

CREATE TABLE `layout_splash` (
  `layoutid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `addonid` varchar(250) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `layout_splash`
-- 

INSERT INTO `layout_splash` VALUES ('homepage', 'homesimpleslides', 1);
INSERT INTO `layout_splash` VALUES ('homepage', 'edwinfadebanner', 1);
INSERT INTO `layout_splash` VALUES ('homepage', 'edwinbanner', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `media`
-- 

CREATE TABLE `media` (
  `id` bigint(20) NOT NULL auto_increment,
  `mediaid` varchar(50) NOT NULL,
  `mediaparent` varchar(50) NOT NULL,
  `mediatype` varchar(50) NOT NULL,
  `refersitemap` varchar(200) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `email` text NOT NULL,
  `languageid` varchar(100) NOT NULL,
  `summary` text NOT NULL,
  `description` longtext NOT NULL,
  `alias` text NOT NULL,
  `keyword` text NOT NULL,
  `meta_title` text NOT NULL,
  `metakeyword` text NOT NULL,
  `metadescription` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `imageid` bigint(20) NOT NULL,
  `imagepath` text NOT NULL,
  `fileid` bigint(20) NOT NULL,
  `filepath` text NOT NULL,
  `groupkeys` text NOT NULL,
  `colors` text NOT NULL,
  `viewcount` bigint(20) NOT NULL,
  `position` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `temp` text NOT NULL,
  `statusdate` datetime default NULL,
  `statusby` varchar(50) default NULL,
  `updateddate` datetime default NULL,
  `seo_content` text NOT NULL,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `author` (`author`),
  FULLTEXT KEY `source` (`source`),
  FULLTEXT KEY `medianame` (`title`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `summary` (`summary`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `media`
-- 

INSERT INTO `media` VALUES (1, 'default13840032411', '', 'media_news', '[8]', 'admin', 'Miss Universe và những sự lựa chọn kỳ lạ', '', '', 'vn', '&lt;p&gt;\r\n	&lt;strong&gt;Liệu Trương Thị May có được &amp;quot;thần may mắn&amp;quot; mỉm cười và đem lại vinh quang cho sắc đẹp nước nhà?&lt;/strong&gt;&lt;/p&gt;', '&lt;p&gt;\r\n	Cuộc thi &lt;a href=&quot;http://www.24h.com.vn/hoa-hau-hoan-vu-2012-c78e2160.html&quot;&gt;Hoa hậu Hoàn vũ&lt;/a&gt; được xem là một trong những cuộc thi sắc đẹp danh giá nhất hành tinh và cũng là cuộc thi sắc đẹp tiềm ẩn nhiều bất ngờ gây ngạc nhiên cho người hâm mộ. Cũng bởi, từ năm 2007 đến nay, top 5 chung cuộc của cuộc thi luôn khiến giới mộ điệu sắc đẹp thắc mắc, khó hiểu.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Theo mặc định của nhiều người, cuộc thi Hoa hậu Hoàn vũ thường tôn vinh những cô gái sở hữu thân hình bốc lửa, những cơ thể săn chắc và gương mặt thu hút. Bên cạnh đó, sự tự tin và hiện đại cũng luôn được đánh giá cao trong cuộc thi này. Tuy nhiên, không phải lúc nào, &amp;quot;chân lý&amp;quot; được mặc định đó cũng đúng tại Miss Universe.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Kể từ năm 2007 đến nay, Miss Universe luôn tiềm ẩn những &amp;quot;dấu hỏi&amp;quot; vì những lựa chọn kỳ lạ của ban giám khảo đối với các thí sinh nằm trong top 5, thậm chí, người giành chiếc vương miện danh giá nhất hành tinh cũng... khó lường hơn trước.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cùng nhìn lại những lựa chọn gây bất ngờ tại Miss Universe từ năm 2007 đến 2012:&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Miss Universe và những sự lựa chọn kỳ lạ - 1&quot; class=&quot;news-image&quot; src=&quot;http://img-hn-02.24hstatic.com:8008/upload/4-2013/images/2013-11-09/1383968573-07_top5.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Năm 2007, vương miện danh giá của cuộc thi Hoa hậu Hoàn Vũ bất ngờ thuộc về đại diện đến từ Nhật Bản&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Miss Universe và những sự lựa chọn kỳ lạ - 2&quot; class=&quot;news-image&quot; src=&quot;http://img-hn-02.24hstatic.com:8008/upload/4-2013/images/2013-11-09/1383968573-2007.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Kêt quả này không khỏi khiến nhiều người bất ngờ khi cô gái sở hữu thân hình mỏng và mảnh của châu Á lại bất ngờ vượt mặt 3 đại diện bốc lửa đến từ Venezuela, Mỹ và Brazil. Năm 2007 cũng là một năm thành công khi có 2 đại diện châu Á là Hàn Quốc và Nhật Bản đăng quang&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Miss Universe và những sự lựa chọn kỳ lạ - 3&quot; class=&quot;news-image&quot; src=&quot;http://img-hn-02.24hstatic.com:8008/upload/4-2013/images/2013-11-09/1383968573-2008.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Năm 2008, không ai nghĩ rằng cô gái có mái tóc mây và vẻ đẹp dễ thương từ Nga lại vượt qua vẻ đẹp tuyệt mỹ của đại diện Mexico và Domenica&lt;/p&gt;\r\n&lt;p align=&quot;center&quot;&gt;\r\n	&lt;img alt=&quot;Miss Universe và những sự lựa chọn kỳ lạ - 4&quot; class=&quot;news-image&quot; src=&quot;http://img-hn-02.24hstatic.com:8008/upload/4-2013/images/2013-11-09/1383968573-miss-universe-2009-267v.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Năm 2009, người đẹp Kosovo khiến khán giả quốc tế... ngơ ngác vì một thân hình nhỏ nhắn, chẳng bốc lửa, thậm chí tỉ lệ cơ thể không cân đối lại vượt qua gần 100 đối thủ để lọt vào top 5. Năm đó, đại diện Venezuela bị chê là &amp;quot;hươu cao cổ&amp;quot; nhưng lại giành vương miện&lt;/p&gt;\r\n&lt;p align=&quot;center&quot;&gt;\r\n	&lt;img alt=&quot;Miss Universe và những sự lựa chọn kỳ lạ - 5&quot; class=&quot;news-image&quot; src=&quot;http://img-hn-02.24hstatic.com:8008/upload/4-2013/images/2013-11-09/1383968573-missuniverse2010_top51.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Năm 2010, Phillippines bị chê xấu lạ trong suốt chặng đường dài của cuộc thi năm đó nhưng lại tiến sâu vào top 5. Người đẹp Mexico có chiều cao khiêm tốn nhất lại giành chiến thắng&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Miss Universe và những sự lựa chọn kỳ lạ - 6&quot; class=&quot;news-image&quot; src=&quot;http://img-hn-02.24hstatic.com:8008/upload/4-2013/images/2013-11-09/1383968573-article-2036782-0ddba5f000000578-797_634x466.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Miss Universe và những sự lựa chọn kỳ lạ - 7&quot; class=&quot;news-image&quot; src=&quot;http://img-hn-02.24hstatic.com:8008/upload/4-2013/images/2013-11-09/1383968573-leila_lopes_-_miss_angola_and_miss_universe_2011_013_.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Năm 2011, đến phút cuối, ai cũng nghĩ sắc đẹp tuyệt trần đến từ Ukraine sẽ chiến thắng nhưng tất cả đều vỡ òa khi người đẹp đến từ lục địa đen - Angola lại đăng quang. Trong suốt cuộc thi, thậm chí Leila Lopes còn chưa từng lọt top bình chọn của các chuyên trang sắc đẹp nổi tiếng&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Miss Universe và những sự lựa chọn kỳ lạ - 8&quot; class=&quot;news-image&quot; src=&quot;http://img-hn-02.24hstatic.com:8008/upload/4-2013/images/2013-11-09/1383968573-miss_universe_2012_13686255.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Năm 2012, nhiều người nghĩ rằng đại diện Venezuela &amp;quot;chắc mẩn&amp;quot; ngôi vị cao nhất, tuy nhiên, người đẹp Phillipines thậm chí còn vượt qua cả đại diện Venezuela để giành ngôi vị Á hậu 1. Trong khi đó, người đẹp cao chưa đầy 1m7 của Mỹ lại dành chiến thắng một cách khó hiểu&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;Miss Universe và những sự lựa chọn kỳ lạ - 9&quot; class=&quot;news-image&quot; src=&quot;http://img-hn-02.24hstatic.com:8008/upload/4-2013/images/2013-11-09/1383969050-1383874465-viet-nam.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	Nhiều người cho rằng, Miss Universe ngày càng có thiên hướng chuộng vẻ đẹp thu hút từ gương mặt và hình thể mảnh nhưng rắn chắc.Là một nhân tố khác biệt trong cuộc thi năm nay, nhiều người kỳ vọng gương mặt đẹp và làn da nâu của đại diện Việt Nam - Trương Thị May có cơ may làm nên điều kỳ diệu trong đêm chung kết&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đêm chung kết của cuộc thi Hoa hậu Hoàn vũ sẽ được truyền hình trực tiếp vào lúc 1h sáng ngày 10/11 trên kênh VTV6.&lt;/p&gt;', 'Miss-Universe-va-nhung-su-lua-chon-ky-la', '', '', '', '', 'Hân Di', 'khampha.vn', 0, 0, '', 0, '', '', '', 3, 0, 'active', '', '2013-11-09 20:20:41', 'admin', '2013-11-10 01:29:21', '');
INSERT INTO `media` VALUES (2, 'default13840233351', '', 'media_news', '[8]', 'admin', 'Cùng Emspo về &#039;Miền ký ức&#039;', '', '', 'vn', '&lt;p&gt;\r\n	Những hồi ức đẹp đẽ của thời thơ ấu đã trở thành cảm hứng cho bộ sưu tập &amp;#39;Miền ký ức&amp;#39; của thương hiệu thời trang Emspo.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lấy ý tưởng từ nét đẹp cổ điển và lãng mạn của những ngày đông xưa cũ, các nhà thiết kế Emspo cho ra đời bộ sưu tập với những thiết kế thời thượng, sang trọng, toát lên vẻ đẹp đậm chất quý tộc. Các sản phẩm sử dụng chất liệu quen thuộc như nhung, dạ, ren hoa nhẹ nhàng, đa dạng kết hợp form dáng thiết kế độc đáo tạo nên nét mới lạ.&lt;/p&gt;', '&lt;p&gt;\r\n	Lấy ý tưởng từ nét đẹp cổ điển và lãng mạn của những ngày đông xưa cũ, các nhà thiết kế Emspo cho ra đời bộ sưu tập với những thiết kế thời thượng, sang trọng, toát lên vẻ đẹp đậm chất quý tộc. Các sản phẩm sử dụng chất liệu quen thuộc như nhung, dạ, ren hoa nhẹ nhàng, đa dạng kết hợp form dáng thiết kế độc đáo tạo nên nét mới lạ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bộ sưu tập là sự kết hợp hài hòa giữa màu sắc và kiểu dáng, tạo nên một tổng thể diện mạo ấn tượng mà không lạm dụng điểm nhấn ở bất kỳ yếu tố nào. Tất cả tạo nên vẻ quý phái, tinh tế cho phái đẹp khi đến công sở và cả những bữa tiệc sang trọng trong những ngày đón gió lạnh đầu đông.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Nhân dịp ra mắt bộ sưu tập mới, thời trang Emspo dành tặng khách hàng chương trình khuyến mãi giảm giá 10% cho bộ sưu tập mới và toàn bộ sản phẩm. Chương trình diễn ra từ ngày 9/11 đến ngày 13/11, áp dụng tại tất cả các showroom của hãng.&lt;/p&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;1_dam_lien.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/1-dam-lien-6636-1383897260.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Sự kết hợp độc đáo giữa chất liệu nhung và ren hoa đem đến diện mạo quý phái nhưng cũng thật trẻ trung bởi dáng đầm xòe. Dáng áo vest ngắn cổ điển chưa bao giờ lỗi thời cũng góp phần làm tăng thêm nét sang trọng, quyến rũ cho các quý cô.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;2_dam_lien.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/2-dam-lien-1888-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Đầm liền họa tiết hoa độc đáo với form dáng đơn giản và áo vest trơn màu luôn là bộ đôi cho bất kỳ người phụ nữ nào.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;3_dam_xoe.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/3-dam-xoe-8595-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Đầm xòe hoa tiết nổi duyên dáng và trẻ trung phù hợp mọi hoàn cảnh và mọi vóc dáng.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;4_dam_xoe.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/4-dam-xoe-4414-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Đầm xòe với sắc đỏ nổi bật, phong cách xua tan cái giá lạnh và ảm đảm của đầu đông là lựa chọn cho cô nàng cá tính nhưng không muốn làm mất đi vẻ ngọt ngào vốn có.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;5_bo_vest_cong_so.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/5-bo-vest-cong-so-5715-1383897261.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Bộ vest juyp chất liệu dạ tex với họa tiết và thiết kế cổ điển với những chi tiết đính hoa hay nẹp viền tinh tế dành riêng cho người phụ nữ thành đạt.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;6_dam_xoe.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/6-dam-xoe-9462-1383897262.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Đầm xòe với một chút phá cách phía chân váy, kết hợp cùng vest lửng trơn màu sẽ là cặp đôi hoàn hảo cho cô nàng ưa vẻ đẹp dịu dàng nền nã.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;7_ao_mang_to.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/7-ao-mang-to-7290-1383897262.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Áo khoác măng tô họa tiết chấm bi cổ điển cùng thiết kế form dáng xòe trẻ trung mang lại vẻ ngoài ngọt ngào và lãng mạn cho người mặc.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;table align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; class=&quot;tplCaption&quot; width=&quot;1&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;text-align: center;&quot;&gt;\r\n				&lt;img alt=&quot;8_ao_khoac_da.jpg&quot; data-natural-width=&quot;400&quot; src=&quot;http://c0.f21.img.vnecdn.net/2013/11/08/8-ao-khoac-da-3088-1383897262.jpg&quot; /&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				&lt;p class=&quot;Image&quot;&gt;\r\n					Nếu chị em sợ những chiếc áo măng tô nhàm chán, đừng ngần ngại chọn chiếc áo khoác măng tô dáng dài màu sắc tươi sáng cùng tay áo hơi phồng nhẹ này, chắc chắn bạn sẽ thấy mình trẻ trung và hiện đại hơn rất nhiều.&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', 'cung-emspo-ve-mien-ky-uc', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 1, 0, 'active', '', '2013-11-10 01:55:35', 'admin', '2013-11-11 19:29:57', '');
INSERT INTO `media` VALUES (3, 'default13840582881', '', 'media_information', '[14]', 'admin', 'Đoàn Từ Thiện Minh Tâm - Chi hội Bảo trợ bệnh nhân nghèo TP. HCM', '', '', 'vn', '&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;caption&quot;&gt;\r\n		Address / Địa chỉ&lt;/div&gt;\r\n	&lt;div class=&quot;data&quot;&gt;\r\n		106C Nguyễn Văn Cừ, Phường Nguyễn Cư Trinh, Quận 1, Sài Gòn - TP HCM, Việt Nam&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;data&quot;&gt;\r\n		Phone: (08) 3920 0862&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;data&quot;&gt;\r\n		Website&lt;a href=&quot;http://www.thegioituthien.com/directory/tu-thien-o-viet-nam/sai-gon-_-tp-hcm/quan-1/ddoan-tu-thien-minh-tam-_-chi-hoi-bao-tro-benh-nhan-ngheo-tp.-hcm-404/visit.html&quot; target=&quot;_blank&quot;&gt;: www.tuthienminhtam.org&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;caption&quot;&gt;\r\n		Address / Địa chỉ&lt;/div&gt;\r\n	&lt;div class=&quot;data&quot;&gt;\r\n		106C Nguyễn Văn Cừ, Phường Nguyễn Cư Trinh, Quận 1, Sài Gòn - TP HCM, Việt Nam&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;data&quot;&gt;\r\n		Phone: (08) 3920 0862&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;data&quot;&gt;\r\n		Website&lt;a href=&quot;http://www.thegioituthien.com/directory/tu-thien-o-viet-nam/sai-gon-_-tp-hcm/quan-1/ddoan-tu-thien-minh-tam-_-chi-hoi-bao-tro-benh-nhan-ngheo-tp.-hcm-404/visit.html&quot; target=&quot;_blank&quot;&gt;: www.tuthienminhtam.org&lt;/a&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span class=&quot;listing-desc&quot;&gt;Hoạt động theo điều lệ Chi hội với mục tiêu thực hiện miễn phí các hoạt động:&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	- Mổ mắt: mổ sáng mắt cho đồng bào nghèo bị mù do đục thủy tinh thể. Khám bệnh: tổ chức đoàn y bác sĩ đến những vùng xa xôi khó khăn khám bệnh và cấp thuốc miễn phí cho đồng bào nghèo.&lt;br /&gt;\r\n	- Xây cầu: xóa cầu tre, cầu khỉ; xây cầu beton cho đồng bào đi lại ở những vùng hẻo lánh, xa xôi, cơ sở hạ tầng yếu kém.&lt;br /&gt;\r\n	- Cứu trợ: cứu trợ khẩn cấp đồng bào bị thiên tai bão lụt, cứu trợ đồng bào nghèo đói hoặc những hoàn cảnh đặc biệt thương tâm qua từng chuyến đi.&lt;br /&gt;\r\n	- Khuyến học: trao học bổng giúp đỡ cho trẻ em nghèo hiếu học.&lt;br /&gt;\r\n	- Thiếu nhi: chăm sóc y tế, tặng quà, tổ chức vui chơi cho các em nhân ngày Tết Thiếu nhi (01.06), Tết Trung thu (Rằm tháng tám âm lịch). &amp;nbsp;&lt;br /&gt;\r\n	- Các họat động từ thiện khác.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Với mục tiêu họat động tất cả vì người nghèo, Từ thiện Minh Tâm bền bĩ làm chiếc cầu nối giữa hai bờ yêu thương: các mạnh thường quân, các nhà hão tâm có tấm lòng nhân ái luôn sẵn sàng đóng góp tiền bạc vật chất kết nối cùng những con người đầy nhiệt huyết với công việc từ thiện, cống hiến bằng sức lực và khả năng của mình đi đến những vùng đất xa xôi còn nhiều thiếu thốn khó khăn, bệnh tật, những nơi xảy ra thiên tai bão lũ, để cứu giúp đồng bào vượt qua cơn ngặt nghèo cuộc sống.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	Từ thiện Minh Tâm với chủ trương đặt ra xuyên suốt mọi hành trình họat động: Tiền của, hiện vật đóng góp của các mạnh thường quân, các nhà hão tâm được đảm bảo trao toàn bộ và trực tiếp đến những đồng bào nghèo thật sự cần trợ giúp. Tất cả họat động khác phục vụ chuyến đi từ thiện (như di chuyển, ăn, nghỉ của các thành viên và kể cả y bác sĩ của Đoàn), chi phí họat động văn phòng của Đoàn&amp;hellip; đều do các thành viên trong Đoàn tự đóng góp. Kết thúc mỗi chuyến đi, Đoàn đều có quyết toán thu chi công khai - minh bạch - rõ ràng.&lt;br /&gt;\r\n	&amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\n	Mỗi một trái tim nhân ái được kết nối là chia đi biết bao ngặt nghèo cuộc sống, là nhân lên hàng vạn hạnh phúc niềm vui. Hãy cùng Chi hội Bảo trợ Bệnh nhân nghèo Minh Tâm đi đến từng góc hẹp cuộc sống của đồng bào nghèo khắp nơi.&lt;/span&gt;&lt;/p&gt;', 'doan-tu-thien-minh-tam', '', '', '', '', '', '', 0, 0, 'upload/tu-thien-minh-tam.png', 0, '', '', '', 0, 0, 'active', '', '2013-11-10 11:38:08', 'admin', '2013-11-10 13:40:11', '');
INSERT INTO `media` VALUES (4, 'default13840672441', '', 'media_news', '[8]', 'admin', 'Gu thời trang &#039;thất thường&#039; của Mai Phương Thúy', '', '', 'vn', '&lt;p&gt;\r\n	Mai Phương Thúy được người hâm mộ biết đến sau khi đạt gải cao nhất trong cuộc thi nhan sắc lớn Hoa hậu Việt Nam năm 2006. Theo thời gian, hoa hậu ngày càng biết làm mới mình để trở nên gợi cảm quyến rũ trong mắt người hâm mộ tại các sự kiện của làng giải trí bằng những chiếc váy hàng hiệu. Nhưng khi rời xa những món hàng xa xỉ đó, người đẹp diện những chiếc đầm được thiết kế riêng. Thời trang đời thường của Hoa hậu cũng là một đề tài gần đây các fan hâm mộ chú ý vì cách mix đồ của cô khi đẹp, khi xấu rất thất thường.&lt;/p&gt;', '&lt;div&gt;\r\n	Những hình ảnh mới của Hoa hậu Việt Nam 2006:&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-0.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-0.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Mới đây nhất, trong một chuyến du lịch trời tây, lột bỏ lớp phấn son dầy cộp cùng&lt;br /&gt;\r\n	những chiếc váy hàng hiệu để diện quần sooc bò, áo phông trông Hoa hậu&lt;br /&gt;\r\n	đầy năng động, thoải mái và trẻ trung.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-3.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Chiếc áo dài tay rộng &amp;quot;kín cổng cao tường&amp;quot; như thừa size kết hợp cùng chiếc quần&lt;br /&gt;\r\n	soóc cùng chiếc túi màu đen &amp;#39;lột bỏ&amp;#39; hoàn toàn khoảng cách của một celeb hạng A&lt;br /&gt;\r\n	của showbiz với người hâm mộ.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-2.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; height=&quot;720&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/01-2.jpg&quot; width=&quot;720&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Mai Phương Thúy tạo dáng xì tin với đôi mắt hình viên đạn.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-2.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-2.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Còn trong style áo phông, quần soóc da, khoác ngoài thêm chiếc áo vest mix&lt;br /&gt;\r\n	&amp;nbsp;cùng đôi giầy da đen. Với phong cách này Mai Phương Thúy khoe được vẻ đẹp&lt;br /&gt;\r\n	khỏe khoắn, linh hoạt và vẫn nữ tính với mái tóc dài đen nhánh.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/02-3.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Hoa hậu mix độ hơi lạ và đánh đố các nhà thời trang danh tiếng trên thế&lt;br /&gt;\r\n	giới phân tích được ý tưởng kết hợp giữa áo ngoài, áo phông trong với quần bò.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/03.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/03.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Mai Phương Thúy rất yêu thích những chiếc áo phông có màu sắc&lt;br /&gt;\r\n	nổi bật hay in những thông điệp cá tính. Soóc ngắn cũng là một item cô nàng&lt;br /&gt;\r\n	chịu khó tìm kiếm cho tủ đồ của mình.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/07.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/07.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/08-3.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/08-3.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Không ai còn nhận ra Hoa hậu ở các event thời trang hạng sang nhưng lại&lt;br /&gt;\r\n	thấy vẻ này mang được cá tính của chủ nhân hơn là qua tay các stylist nhà nghề.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/04.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/04.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Còn cách trang điểm nhợt nhạt, váy áo chẳng liên quan này đi sinh nhật&lt;br /&gt;\r\n	Văn Mai Hương thì Mai Phương Thúy đúng là một bông hoa dại&lt;br /&gt;\r\n	trong rừng chưa được &amp;quot;khai quật&amp;quot;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Quần bò áo kẻ caro là mốt của năm nay nhưng nhìn vào cách mix đồ của&lt;br /&gt;\r\n	Mai Phương Thúy, điểm có thể nhận thấy là nhẽ ra cô nên tiếp tục thói quen&lt;br /&gt;\r\n	với soóc ngắn.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06-1.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/06-1.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Quần jeans dài bó tôn chiều cao nhưng lại khiến người Mai Phương Thúy&lt;br /&gt;\r\n	gày nhẳng và cứng trong khi chiếc áo sơ mi carô đã làm giúp người mặc&lt;br /&gt;\r\n	có phần mềm mại và điệu đàng. Tóc của cô cũng nên được cột lại&lt;br /&gt;\r\n	thay vì để bay &amp;#39;vô tổ chức&amp;#39;.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/12.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/12.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/09.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/09.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	Dù tết tóc hay xõa tóc, dù áo phông hay áo sơ mi kết hợp cùng quần bò&lt;br /&gt;\r\n	đều khiến Mai Phương Thúy tự nhiên, khỏe khắn và năng động hơn hẳn jean dài.&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;a href=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/05.jpg&quot; rel=&quot;lightbox[roadtrip]&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/00/18/05.jpg&quot; /&gt;&lt;/a&gt;&lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;img alt=&quot;Mai Phương Thúy bị &amp;quot;mổ xẻ&amp;quot; vì diện quần bó sát phản cảm | Hoa hậu Mai Phương Thúy, Trang phục phản cảm, Quần bó sát, Hoa hậu Việt Nam, Sự cố trang phục&quot; src=&quot;http://2sao.vietnamnetjsc.vn/2013/10/03/01/57/mai-phuong-thuy-bi-che-que-mua-khi-thieu-vay-hang-hieu_20.jpg&quot; /&gt;&lt;br /&gt;\r\n	Xuất hiện tại một rạp chiếu phim, Mai Phương thúy đã bị cư dân mạng cho ăn&lt;br /&gt;\r\n	&amp;quot;đá tảng&amp;quot; vì ăn mặc chưa thực sự tế nhị với chiếc quần bó sát. Item này không có&lt;br /&gt;\r\n	nhiều lợi thế cho Mai Phương Thúy trong trang phục đời thường nếu không&lt;br /&gt;\r\n	cẩn thận mix đồ hoặc &amp;#39;nhìn trước ngó sau&amp;#39; khi ra đường.&lt;/p&gt;', 'gu-thoi-trang-that-thuong-cua-mai-phuong-thuy', '', '', '', '', 'L Nguyễn', '2sao.vn', 0, 0, '', 0, '', '', '', 3, 0, 'active', '', '2013-11-10 14:07:24', 'admin', '2013-11-11 19:27:14', '');
INSERT INTO `media` VALUES (5, 'default13840705101', '', 'media_faq', '[9]', 'admin', 'Thời gian nhận hàng chậm nhất là bao nhiêu lâu?', '', '', 'vn', '&lt;p&gt;\r\n	Tùy theo loại mặt hàng quý khách hàng order&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trường hợp hàng có sẵn tại cửa hàng, thời gian chậm nhất gửi tới khách hàng là 2 ngày.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trướng hợp hàng đặt, chúng tôi cần ít nhất 1 tuần.&lt;/p&gt;', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-11-10 15:01:50', 'admin', '2013-11-10 15:01:50', '');
INSERT INTO `media` VALUES (6, 'default13840706131', '', 'media_faq', '[9]', 'admin', 'Dịch vụ gửi hàng đi Mỹ (nhanh, tiết kiệm, siêu tiết kiệm) là như thế nào?', '', '', 'vn', '&lt;p&gt;\r\n	&lt;strong&gt;Gửi hàng đi Mỹ&lt;/strong&gt;&amp;nbsp;là dịch vụ vận chuyển hàng từ Việt nam sang Mỹ qua đường hàng không. Trong đó:&lt;br /&gt;\r\n	-&amp;nbsp;&lt;strong&gt;Dịch vụ gửi hàng đi Mỹ nhanh&lt;/strong&gt;:&amp;nbsp;Thời gian vận chuyển là 2-3 ngày làm việc.&lt;br /&gt;\r\n	-&amp;nbsp;&lt;strong&gt;Dịch vụ gửi hàng đi Mỹ tiết kiệm&lt;/strong&gt;:&amp;nbsp;Thời gian vận chuyển là 6-7 ngày làm việc.&lt;br /&gt;\r\n	-&amp;nbsp;&lt;strong&gt;Dịch vụ gửi hàng đi Mỹ siêu tiết kiệm&lt;/strong&gt;:&amp;nbsp;Thời gian vận chuyển từ 5-6 tuần làm việc, áp dụng đối với mức hàng nặng trên 300kg, mỗi kg chỉ từ 1 đến 2usd.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Lưu ý:&amp;nbsp;Thời gian vận chuyển trên không bao gồm thời gian thông quan.&lt;/p&gt;', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-11-10 15:03:33', 'admin', '2013-11-10 15:04:37', '');
INSERT INTO `media` VALUES (7, 'default13840706491', '', 'media_faq', '[9]', 'admin', 'Giá cước gửi hàng đi Mỹ của ba dịch vụ trên có giống nhau không, nếu khác thì khác như thế nào?', '', '', 'vn', '&lt;p&gt;\r\n	&lt;strong&gt;Cước phí gửi hàng đi Mỹ&lt;/strong&gt;&amp;nbsp;phụ thuộc vào số KG hàng gửi, mặt hàng gửi và dịch vụ Khách hàng chọn lựa. Thời gian vận chuyển càng lâu, cước phí vận chuyển càng rẻ. Tuy nhiên, có 1 số trường hợp đối với các mặt hàng đặc trưng như hàng nguy hiểm, dễ cháy nổ và hàng thực phẩm nên sử dụng dịch vụ chuyển phát nhanh.&lt;/p&gt;', '', '', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'active', '', '2013-11-10 15:04:09', 'admin', '2013-11-10 15:04:09', '');
INSERT INTO `media` VALUES (8, 'default13841608011', '', 'media_news', '[6]', 'admin', 'WOW Ưu đãi tháng 03 “Mua 02 tặng 01”', '', '', 'vn', '&lt;p&gt;\r\n	&lt;strong&gt;Với thông điệp &amp;ldquo;Gửi trọn yêu thương&amp;rdquo;, nhãn hàng thời trang mặc nhà WOW dành tặng đến phái nữ chương trình ưu đãi hấp dẫn và bất ngờ trong tháng 03 này.&lt;/strong&gt;&lt;/p&gt;', '&lt;div&gt;\r\n	Từ ngày 06/03 đến hết ngày 31/03/2012, nhãn hàng thời trang mặc nhà WOW tổ chức chương trình ưu đãi với thông điệp &amp;ldquo;Gửi trọn yêu thương&amp;rdquo;. Theo đó với hóa đơn từ 500.000đ, bạn sẽ sở hữu ngay voucher tại nhà hàng Pháp La maison de Saigon trị giá 100.000đ (áp dụng tại khu vực TP.HCM). Đặc biệt, chương trình &amp;ldquo;Mua 02 tặng 01&amp;rdquo; cực hấp dẫn được áp dụng trên phạm vi toàn quốc dành cho những sản phẩm trong danh mục khuyến mãi.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Cũng trong dịp này, WOW chính thức ra mắt BST mới Xuân - Hè 2012 với những mẫu thiết kế trẻ trung, năng động với màu sắc tươi vui trên nền chất liệu thun cao cấp được lấy ý tưởng từ hình ảnh tháp Eiffel &amp;ndash; biểu trưng của nước Pháp. BST đã khắc họa một góc rất khác của kinh đô Pari tráng lệ, đó là hình ảnh những cô gái Pari không kiêu sa lộng lẫy mà tựa như nàng công chúa bé nhỏ đang đắm chìm trong cảm xúc mộng mơ, tinh nghịch và hồn nhiên của lứa tuổi đôi mươi.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hình ảnh BST Xuân - Hè 2012:&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	&lt;div&gt;\r\n		&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/1_70377.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/2_c4f9f.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/3_35a87.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/4_98040.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/WOWSS2012_11677.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Cùng đến WOW để sở hữu ngay những sản phẩm mới nhất trong BST Xuân - Hè 2012 và tham gia chương trình ưu đãi hấp dẫn ngay nhé!&lt;/p&gt;', 'wow-uu-dai-thang--mua--tang-', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2013-11-11 16:33:53', 'admin', '2013-11-11 16:06:41', '');
INSERT INTO `media` VALUES (9, 'default13841621321', '', 'media_news', '[6]', 'admin', 'WOW Ưu đãi tháng 03 “Mua 02 tặng 01”', '', '', 'vn', '&lt;p&gt;\r\n	&lt;strong&gt;Với thông điệp &amp;ldquo;Gửi trọn yêu thương&amp;rdquo;, nhãn hàng thời trang mặc nhà WOW dành tặng đến phái nữ chương trình ưu đãi hấp dẫn và bất ngờ trong tháng 03 này.&lt;/strong&gt;&lt;/p&gt;', '&lt;div&gt;\r\n	Từ ngày 06/03 đến hết ngày 31/03/2012, nhãn hàng thời trang mặc nhà WOW tổ chức chương trình ưu đãi với thông điệp &amp;ldquo;Gửi trọn yêu thương&amp;rdquo;. Theo đó với hóa đơn từ 500.000đ, bạn sẽ sở hữu ngay voucher tại nhà hàng Pháp La maison de Saigon trị giá 100.000đ (áp dụng tại khu vực TP.HCM). Đặc biệt, chương trình &amp;ldquo;Mua 02 tặng 01&amp;rdquo; cực hấp dẫn được áp dụng trên phạm vi toàn quốc dành cho những sản phẩm trong danh mục khuyến mãi.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Cũng trong dịp này, WOW chính thức ra mắt BST mới Xuân - Hè 2012 với những mẫu thiết kế trẻ trung, năng động với màu sắc tươi vui trên nền chất liệu thun cao cấp được lấy ý tưởng từ hình ảnh tháp Eiffel &amp;ndash; biểu trưng của nước Pháp. BST đã khắc họa một góc rất khác của kinh đô Pari tráng lệ, đó là hình ảnh những cô gái Pari không kiêu sa lộng lẫy mà tựa như nàng công chúa bé nhỏ đang đắm chìm trong cảm xúc mộng mơ, tinh nghịch và hồn nhiên của lứa tuổi đôi mươi.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hình ảnh BST Xuân - Hè 2012:&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;img alt=&quot;Wow ưu đãi tháng 12_1&quot; src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/1_70377.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img alt=&quot;Wow ưu đãi tháng 12_2&quot; src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/2_c4f9f.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/3_35a87.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/4_98040.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/WOWSS2012_11677.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Cùng đến WOW để sở hữu ngay những sản phẩm mới nhất trong BST Xuân - Hè 2012 và tham gia chương trình ưu đãi hấp dẫn ngay nhé!&lt;/p&gt;', 'wow-uu-dai-thang--mua--tang', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2013-11-11 16:33:53', 'admin', '2013-11-11 16:28:52', '');
INSERT INTO `media` VALUES (10, 'default13841622921', '', 'media_news', '[6]', 'admin', 'WOW Ưu đãi tháng 03 “Mua 02 tặng 01”', '', '', 'vn', '&lt;p&gt;\r\n	&lt;strong&gt;Với thông điệp &amp;ldquo;Gửi trọn yêu thương&amp;rdquo;, nhãn hàng thời trang mặc nhà WOW dành tặng đến phái nữ chương trình ưu đãi hấp dẫn và bất ngờ trong tháng 03 này.&lt;/strong&gt;&lt;/p&gt;', '&lt;div&gt;\r\n	Từ ngày 06/03 đến hết ngày 31/03/2012, nhãn hàng thời trang mặc nhà WOW tổ chức chương trình ưu đãi với thông điệp &amp;ldquo;Gửi trọn yêu thương&amp;rdquo;. Theo đó với hóa đơn từ 500.000đ, bạn sẽ sở hữu ngay voucher tại nhà hàng Pháp La maison de Saigon trị giá 100.000đ (áp dụng tại khu vực TP.HCM). Đặc biệt, chương trình &amp;ldquo;Mua 02 tặng 01&amp;rdquo; cực hấp dẫn được áp dụng trên phạm vi toàn quốc dành cho những sản phẩm trong danh mục khuyến mãi.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Cũng trong dịp này, WOW chính thức ra mắt BST mới Xuân - Hè 2012 với những mẫu thiết kế trẻ trung, năng động với màu sắc tươi vui trên nền chất liệu thun cao cấp được lấy ý tưởng từ hình ảnh tháp Eiffel &amp;ndash; biểu trưng của nước Pháp. BST đã khắc họa một góc rất khác của kinh đô Pari tráng lệ, đó là hình ảnh những cô gái Pari không kiêu sa lộng lẫy mà tựa như nàng công chúa bé nhỏ đang đắm chìm trong cảm xúc mộng mơ, tinh nghịch và hồn nhiên của lứa tuổi đôi mươi.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hình ảnh BST Xuân - Hè 2012:&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;img alt=&quot;Wow ưu đãi tháng 12_1&quot; src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/1_70377.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img alt=&quot;Wow ưu đãi tháng 12_2&quot; src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/2_c4f9f.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/3_35a87.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/4_98040.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/WOWSS2012_11677.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Cùng đến WOW để sở hữu ngay những sản phẩm mới nhất trong BST Xuân - Hè 2012 và tham gia chương trình ưu đãi hấp dẫn ngay nhé!&lt;/p&gt;', 'wow-uu-dai-thang--mua--tang', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2013-11-11 16:33:58', 'admin', '2013-11-11 16:31:32', '');
INSERT INTO `media` VALUES (11, 'default13841625211', '', 'media_news', '[6]', 'admin', 'WOW ưu đãi tháng 03 “Mua 02 tặng 01”', '', '', 'vn', '&lt;p&gt;\r\n	Với thông điệp &amp;ldquo;Gửi trọn yêu thương&amp;rdquo;, nhãn hàng thời trang mặc nhà WOW dành tặng đến phái nữ chương trình ưu đãi hấp dẫn và bất ngờ trong tháng 03 này.&lt;/p&gt;', '&lt;div&gt;\r\n	Từ ngày 06/03 đến hết ngày 31/03/2012, nhãn hàng thời trang mặc nhà WOW tổ chức chương trình ưu đãi với thông điệp &amp;ldquo;Gửi trọn yêu thương&amp;rdquo;. Theo đó với hóa đơn từ 500.000đ, bạn sẽ sở hữu ngay voucher tại nhà hàng Pháp La maison de Saigon trị giá 100.000đ (áp dụng tại khu vực TP.HCM). Đặc biệt, chương trình &amp;ldquo;Mua 02 tặng 01&amp;rdquo; cực hấp dẫn được áp dụng trên phạm vi toàn quốc dành cho những sản phẩm trong danh mục khuyến mãi.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Cũng trong dịp này, WOW chính thức ra mắt BST mới Xuân - Hè 2012 với những mẫu thiết kế trẻ trung, năng động với màu sắc tươi vui trên nền chất liệu thun cao cấp được lấy ý tưởng từ hình ảnh tháp Eiffel &amp;ndash; biểu trưng của nước Pháp. BST đã khắc họa một góc rất khác của kinh đô Pari tráng lệ, đó là hình ảnh những cô gái Pari không kiêu sa lộng lẫy mà tựa như nàng công chúa bé nhỏ đang đắm chìm trong cảm xúc mộng mơ, tinh nghịch và hồn nhiên của lứa tuổi đôi mươi.&lt;br /&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	Hình ảnh BST Xuân - Hè 2012:&lt;/div&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/1_70377.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/2_c4f9f.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/3_35a87.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/4_98040.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&lt;img src=&quot;http://kenh142.vcmedia.vn/Twjq23kEngxy4esEJk6MKfWozPbfb/Image/2012/03/WOWSS2012_11677.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n	Cùng đến WOW để sở hữu ngay những sản phẩm mới nhất trong BST Xuân - Hè 2012 và tham gia chương trình ưu đãi hấp dẫn ngay nhé!&lt;/p&gt;', 'wow-uu-dai-thang--mua--tang-', '', '', '', '', '', '', 0, 0, '', 0, '', '', '', 0, 0, 'delete', '', '2013-11-11 16:36:08', 'admin', '2013-11-11 16:35:21', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `media_event`
-- 

CREATE TABLE `media_event` (
  `id` bigint(20) NOT NULL auto_increment,
  `mediaid` varchar(100) collate utf8_unicode_ci NOT NULL,
  `startdate` date NOT NULL,
  `starthour` varchar(100) collate utf8_unicode_ci NOT NULL,
  `enddate` date NOT NULL,
  `endhour` varchar(100) collate utf8_unicode_ci NOT NULL,
  `address` text collate utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `media_event`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `media_file`
-- 

CREATE TABLE `media_file` (
  `mediafileid` bigint(20) NOT NULL auto_increment,
  `mediaid` varchar(100) collate utf8_unicode_ci NOT NULL,
  `fileid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `filepath` text collate utf8_unicode_ci NOT NULL,
  `filetype` varchar(50) collate utf8_unicode_ci NOT NULL,
  `status` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`mediafileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `media_file`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `media_file_description`
-- 

CREATE TABLE `media_file_description` (
  `mediafileid` int(11) NOT NULL,
  `languageid` varchar(11) NOT NULL,
  `mediaid` varchar(100) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY  (`mediafileid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `media_file_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `media_information`
-- 

CREATE TABLE `media_information` (
  `id` bigint(20) NOT NULL auto_increment,
  `mediaid` varchar(50) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldvalue` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `media_information`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `media_log`
-- 

CREATE TABLE `media_log` (
  `id` bigint(11) NOT NULL auto_increment,
  `mediaid` varchar(20) NOT NULL,
  `logdate` datetime NOT NULL,
  `logstatus` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `userip` varchar(50) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `media_log`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `message`
-- 

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL auto_increment,
  `messageid` varchar(20) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `attachment` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `folder` varchar(50) NOT NULL,
  `senddate` datetime NOT NULL,
  `replyfrom` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `message`
-- 

INSERT INTO `message` VALUES (1, '1384070282', '', '"pham huynh quoc dung" demen88@gmail.com', 'dung.pham@elifepartners.com', 'Gửi câu hỏi - Hỗ trợ &amp; hướng dẫn', 'Điện thoại: 0906785593<br>Nội dung: Phí giao nhận hàng tại nhà?<br>', '', '', 'inbox', '2013-11-10 14:58:02', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `messagesend`
-- 

CREATE TABLE `messagesend` (
  `id` bigint(20) NOT NULL auto_increment,
  `messageid` varchar(20) NOT NULL,
  `username` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `folder` varchar(50) NOT NULL,
  `senddate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

-- 
-- Dumping data for table `messagesend`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `module`
-- 

CREATE TABLE `module` (
  `id` bigint(20) NOT NULL auto_increment,
  `areacode` varchar(10) NOT NULL,
  `moduleid` char(50) NOT NULL,
  `modulecode` varchar(250) NOT NULL,
  `modulename` text,
  `moduletype` varchar(10) NOT NULL,
  `object` varchar(250) NOT NULL,
  `moduleparent` varchar(50) default NULL,
  `position` int(11) default NULL,
  `status` varchar(20) NOT NULL,
  `modulepath` text NOT NULL,
  `permission` text,
  `languageid` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `width` double NOT NULL,
  `height` double NOT NULL,
  `effectcode` bigint(20) NOT NULL,
  `asshown` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

-- 
-- Dumping data for table `module`
-- 

INSERT INTO `module` VALUES (1, 'module', 'module/none', 'module/none', 'None', 'code', '', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (2, 'module', 'module/group', 'module/group', 'Group', 'code', '', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (3, 'module', 'module/groupfirst', 'module/groupfirst', 'Move to menu automatically', 'code', '', '', 2, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (4, 'module', 'module/homepage', 'module/homepage', 'Home Page', 'code', '', '', 3, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (5, 'module', 'module/information', 'module/information', 'Information', 'manage', 'media_information', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (6, 'module', 'module/news', 'module/news', 'News', 'manage', 'media_news', '', 4, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (7, 'module', 'module/gallery', 'module/gallery', 'Gallery', 'manage', 'media_gallery', '', 5, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (8, 'module', 'module/galleryalbum', 'module/galleryalbum', 'Gallery Album', 'manage', 'media_galleryalbum', '', 6, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (9, 'module', 'module/video', 'module/video', 'Video', 'manage', 'media_video', '', 7, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (10, 'module', 'module/videoalbum', 'module/videoalbum', 'Video Album', 'manage', 'media_videoalbum', '', 8, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (11, 'module', 'module/contact', 'module/contact', 'Contact', 'manage', 'media_contact', '', 9, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (12, 'module', 'module/contactmap', 'module/contactmap', 'Contact includes map', 'manage', 'media_contactmap', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (13, 'module', 'module/download', 'module/download', 'Download', 'manage', 'media_download', '', 10, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (14, 'module', 'module/event', 'module/event', 'Event', 'manage', 'media_event', '', 11, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (15, 'module', 'module/link', 'module/link', 'Link', 'manage', 'sitemap', '', 12, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (16, 'module', 'module/product', 'module/product', 'Product', 'manage', 'product', '', 13, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (17, 'module', 'module/brochure', 'module/brochure', 'Post includes contact', 'manage', 'media_brochure', '', 14, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (18, 'module', 'module/brochurealbum', 'module/brochurealbum', 'Posts includes contact', 'manage', 'media_brochurealbum', '', 15, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (19, 'module', 'module/googlemap', 'module/googlemap', 'Google map', 'manage', 'media_googlemap', '', 16, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (20, 'module', 'module/faq', 'module/faq', 'Q&amp;A', 'manage', 'media_faq', '', 17, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (21, 'module', 'module/partners', 'module/partners', 'Partners', 'manage', 'media_partners', '', 18, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (22, 'sidebar', 'sidebar/supportonline', 'sidebar/supportonline', 'Support Online', 'manage', 'support', '', 19, 'Active', 'sidebar/supportonline', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (23, 'sidebar', 'sidebar/search', 'sidebar/search', 'Search', 'code', '', '', 20, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (24, 'sidebar', 'sidebar/weblinks', 'sidebar/weblinks', 'Web links', 'manage', 'sitemap', '', 21, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (25, 'sidebar', 'sidebar/eventcalendar', 'sidebar/eventcalendar', 'Event Calendar', 'manage', 'media_event', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (26, 'sidebar', 'sidebar/webcounter', 'sidebar/webcounter', 'Web Counter', 'code', '', '', 22, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (27, 'sidebar', 'sidebar/sociallinks', 'sidebar/sociallinks', 'Social Links', 'manage', 'weblink', '', 23, 'Active', 'sidebar/banner', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (28, 'sidebar', 'sidebar/videoplayer', 'sidebar/videoplayer', 'Video Player', 'refer', 'media_videoalbum', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (29, 'sidebar', 'sidebar/videoconnection', 'sidebar/videoconnection', 'Video Connection', 'refer', 'media_videoalbum', '', 24, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (30, 'sidebar', 'sidebar/servicescategories', 'sidebar/servicescategories', 'Services Categories', 'manage', 'sitemap', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (31, 'sidebar', 'sidebar/productcategory', 'sidebar/productcategory', 'Products Categories', 'code', 'sitemap', '', 26, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (32, 'sidebar', 'sidebar/banner', 'sidebar/banner', 'Banner', 'manage', 'media_banner', '', 27, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (33, 'sidebar', 'sidebar/newscollection', 'sidebar/newscollection', 'News Collection', 'manage', 'media_news', '', 28, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (34, 'sidebar', 'sidebar/newsmostviews', 'sidebar/newsmostviews', 'Most Viewed News', 'code', 'media_news', '', 0, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (35, 'sidebar', 'sidebar/newshot', 'sidebar/newshot', 'Hot News', 'refer', 'media_news', '', 30, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (36, 'sidebar', 'sidebar/newarrivalproducts', 'sidebar/newarrivalproducts', 'New Arrival Products', 'code', 'product', '', 31, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (37, 'sidebar', 'sidebar/mostviewedproducts', 'sidebar/mostviewedproducts', 'Most Viewed Products', 'code', 'product', '', 32, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (38, 'sidebar', 'sidebar/hotproducts', 'sidebar/hostproducts', 'Hot Products', 'refer', 'product', '', 33, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (39, 'sidebar', 'sidebar/bestsellerproducts', 'sidebar/bestsellerproducts', 'Best Seller Products', 'code', 'product', '', 34, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (40, 'splash', 'splash/homeslider', 'splash/homeslider', 'Homepage Bigbanner', 'code', '', '', 35, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (41, 'splash', 'splash/homelinks', 'splash/homelinks', 'Home Links', 'code', '', '', 36, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (42, 'module', 'module/downloadalbum', 'module/downloadalbum', 'Download Album', 'code', 'media_download', '', 37, 'Active', '', '[""]', 'en', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (43, 'splash', 'splash/promotionbox', 'splash/promotionbox', 'Box Khuyến mãi', 'manage', 'weblink', '', 38, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, '');
INSERT INTO `module` VALUES (44, 'splash', 'splash/edwinslider', 'splash/edwinslider', 'Edwin Slider', 'code', '', '', 39, 'Active', 'splash/edwinslider', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (45, 'splash', 'splash/edwinbanner', 'splash/edwinbanner', 'Edwin Banner', 'code', '', '', 40, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (46, 'splash', 'splash/edwinfadebanner', 'splash/edwinfadebanner', 'Edwin Fade Banner', 'manage', '', '', 41, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (48, 'splash', 'splash/custom', 'splash/custom', 'custom splash', 'code', '', '', 42, 'Active', '', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (49, 'splash', 'splash/homesimpleslides', 'splash/homesimpleslides', 'homesimpleslides', 'manage', 'home slide', '', 43, 'Active', 'splash/banner', '[""]', '', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (50, 'splash', 'splash/threecolumnnewhomeproducts', 'splash/threecolumnnewhomeproducts', 'Three-Column New Home Products', 'code', '', '', 44, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (51, 'dashboard', 'dashboard/logoslides', 'dashboard/logoslides', 'Logo slides', 'manage', 'weblink', '', 45, 'Active', 'splash/logoslides', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (52, 'sidebar', 'sidebar/threenewslides', 'sidebar/threenewslides', 'Sidebar Top 9 News', 'code', '', '', 46, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (53, 'dashboard', 'dashboard/footerbanner', 'dashboard/footerbanner', 'Dashboard Banners', 'manage', 'weblink', '', 47, 'Active', 'splash/banner', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (54, 'module', 'module/groupsitemap', 'module/groupsitemap', 'Group Sitemap', 'code', '', '', 48, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (55, 'sidebar', 'sidebar/subgroups', 'sidebar/subgroups', 'sidebar sub menu', 'code', '', '', 49, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (56, 'sidebar', 'sidebar/email', 'sidebar/email', 'subscribe', 'manage', 'email', '', 50, 'Active', 'addon/receivedemail', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (57, 'splash', 'splash/producttag', 'splash/producttag', 'Promotion &amp; New Product', 'code', '', '', 51, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (58, 'module', 'module/cart', 'module/cart', 'Shopping Cart', 'code', '', '', 52, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (59, 'module', 'module/active', 'module/active', 'Active Account', 'code', '', '', 53, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (60, 'module', 'module/profile', 'module/profile', 'Profile', 'code', '', '', 54, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (61, 'sidebar', 'sidebar/viewcart', 'sidebar/viewcart', 'View cart', 'code', '', '', 55, 'Active', 'sidebar/viewcart', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (62, 'module', 'module/cartmember', 'module/cartmember', 'History Orders', 'code', '', '', 56, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (63, 'module', 'module/promotionproduct', 'module/promotionproduct', 'Promotion Product', 'code', 'product', '', 57, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (64, 'module', 'module/allproduct', 'module/allproduct', 'Group All Products', 'code', 'product', '', 58, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (65, 'module', 'module/productoption', 'module/productoption', 'Product Option', 'manage', 'productoption', '', 59, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (66, 'module', 'module/productbytag', 'module/productbytag', 'Product By Tag', 'code', 'productbytag', '', 60, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (67, 'dashboard', 'dashboard/snowfall', 'dashboard/snowfall', 'snowfall', 'code', 'snowfall', '', 61, 'Active', '', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (68, 'sidebar', 'product/manufacturertop', 'product/manufacturertop', 'Top manufacturer', 'manage', 'manufacturer', '', 62, 'Active', 'product/manufacturertop', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (69, 'module', 'module/productbymanufacturer', 'module/productbymanufacturer', 'Product by manufacturer', 'manage', 'productbymanufacturer', '', 63, 'Active', 'module/productbymanufacturer', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (70, 'module', 'module/manufacturerdetail', 'module/manufacturerdetail', 'Detail of Manufacturer', 'code', 'manufacturerdetail', '', 64, 'Active', 'module/manufacturerdetail', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (71, 'module', 'product/manufacturer', 'product/manufacturer', 'Manufacturer', 'manage', 'manufacturer', '', 65, 'Active', 'product/manufacturer', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (72, 'module', 'module/login', 'module/login', 'login', 'code', '', '', 66, 'Active', 'module/login', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (73, 'module', 'module/smartcart', 'module/smartcart', 'Smart cart', 'code', '', '', 67, 'Active', 'module/smartcart', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (74, 'module', 'module/advancesearch', 'module/advancesearch', 'smartsearch', 'code', '', '', 68, 'Active', 'module/advancesearch', '[""]', 'en', '', 0, 0, 0, 'none');
INSERT INTO `module` VALUES (75, 'module', 'module/payment', 'module/payment', 'Payment', 'code', '', '', 69, 'Active', 'module/payment', '[""]', 'en', '', 0, 0, 0, 'none');

-- --------------------------------------------------------

-- 
-- Table structure for table `option`
-- 

CREATE TABLE `option` (
  `optionid` bigint(20) NOT NULL auto_increment,
  `siteid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `type` varchar(30) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`optionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `option`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `option_description`
-- 

CREATE TABLE `option_description` (
  `optionid` bigint(20) NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `option_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `option_value`
-- 

CREATE TABLE `option_value` (
  `option_value_id` bigint(20) NOT NULL auto_increment,
  `optionid` bigint(20) NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `option_value`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `option_value_description`
-- 

CREATE TABLE `option_value_description` (
  `option_value_id` bigint(20) NOT NULL,
  `optionid` bigint(20) NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `option_value_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `order`
-- 

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL auto_increment,
  `orderid` varchar(20) NOT NULL,
  `orderdate` datetime NOT NULL,
  `userid` varchar(50) NOT NULL,
  `customername` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comment` text NOT NULL,
  `total` double NOT NULL,
  `point` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `order`
-- 

INSERT INTO `order` VALUES (1, '1379668671', '2013-09-20 16:17:51', '', 'Đỗ Nguyễn Khoa Học', '477 Lạc Long Quân Phường 5, Quận 11, Tp Hồ Chí Minh', 'hoc.do@elifepartners.com', '0932 125 898', 'active', '', 330000, 0);
INSERT INTO `order` VALUES (2, '1379669172', '2013-09-20 16:26:12', '', 'Đỗ Nguyễn Khoa Học', '477 Lạc Long Quân phường 5 quận 11 Tp Hồ Chí Minh', 'hoc.do@elifepartners.com', '0932 125 898', 'pending', '', 180000, 0);
INSERT INTO `order` VALUES (3, '1380693225', '2013-10-02 12:53:45', '', 'Đỗ Nguyễn Khoa Học', 'akfjadjfkadsjfkldsjafkjasdkfjdskfjkl', 'hoc.do@elifepartners.com', '0932 125 898', 'pending', '', 161700, 0);
INSERT INTO `order` VALUES (4, '1380693677', '2013-10-02 13:01:17', '', 'Phạm Đắc Lân', '128/15 Tân Sơn Nhì, Phường Tân Sơn Nhì, Quận Tân Phú', 'lan.pham@elifepartners.com', '0123456789', 'pending', '', 383700, 0);
INSERT INTO `order` VALUES (5, '1380713521', '2013-10-02 18:32:01', '', 'Tran Lang Hoang Hac', '32 Nguyen Thai Hoc, My Binh, Long Xuyen, An Giang', 'hac0284@gmail.com', '0937280284', 'pending', '', 300000, 0);
INSERT INTO `order` VALUES (6, '1380857084', '2013-10-04 10:24:44', '', 'đỗ nguyễn khoa học', '477 abc', 'hoc.do@elifepartners.com', '093456789', 'pending', '', 1250000, 0);
INSERT INTO `order` VALUES (7, '1381804726', '2013-10-15 09:38:46', '', 'Đỗ Nguyễn Khoa Học', '128/15 Tân Sơn Nhì, Phường Tân Sơn Nhì, Quận Tân Phú', 'hoc.do@elifepartners.com', '0932125898', 'pending', '', 733700, 0);
INSERT INTO `order` VALUES (8, '1381805549', '2013-10-15 09:52:29', '', 'Đỗ Nguyễn Khoa Học', '128/15 Tân Sơn Nhì, Phường Tân Sơn Nhì, Quận Tân Phú', 'hoc.do@elifepartners.com', '0932125898', 'pending', '', 1275800, 0);
INSERT INTO `order` VALUES (9, '1383901461', '2013-11-08 16:04:21', '', 'Đỗ Nguyễn Khoa Học', 'jfjgcff', 'das@elifepartners.com', '0932 125 898', 'active', '', 11833000, 5555);
INSERT INTO `order` VALUES (10, '1383902183', '2013-11-08 16:16:23', '', 'Đỗ Nguyễn Khoa Học', 'fdas gdsag sad', 'hoc.do@elifepartners.com', '0932 125 898', 'active', '', 554000, 50);
INSERT INTO `order` VALUES (11, '1383902312', '2013-11-08 16:18:32', '', 'Đỗ Nguyễn Khoa Học', 'dfsa gdsa', 'hoc.do@elifepartners.com', '0932 125 898', 'cancel', '', 554000, 554);
INSERT INTO `order` VALUES (12, '1384248994', '2013-11-12 16:36:34', '', 'Đỗ Nguyễn Khoa Học', 'ho chi minh fsdafdsa', 'hoc.do@elifepartners.com', '0932 125 898', 'pending', '', 31185000, 0);
INSERT INTO `order` VALUES (13, '1384249065', '2013-11-12 16:37:45', '', 'Đỗ Nguyễn Khoa Học', 'ho chi minh fsdafdsa', 'hoc.do@elifepartners.com', '0932 125 898', 'pending', '', 31185000, 0);
INSERT INTO `order` VALUES (14, '1384249294', '2013-11-12 16:41:34', '', 'Đỗ Nguyễn Khoa Học', 'ho chi minh fsdafdsa', 'hoc.do@elifepartners.com', '0932 125 898', 'pending', '', 31185000, 0);
INSERT INTO `order` VALUES (15, '1384249504', '2013-11-12 16:45:04', '', 'Đỗ Nguyễn Khoa Học', 'ho chi minh fsdafdsa', 'hoc.do@elifepartners.com', '0932 125 898', 'pending', '', 315000, 0);
INSERT INTO `order` VALUES (16, '1384249994', '2013-11-12 16:53:14', '', 'Đỗ Nguyễn Khoa Học', 'ho chi minh fsdafdsa', 'hoc.do@elifepartners.com', '0932 125 898', 'pending', '', 3780000, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `order_product`
-- 

CREATE TABLE `order_product` (
  `id` bigint(20) NOT NULL auto_increment,
  `orderid` varchar(20) NOT NULL,
  `mediaid` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `subtotal` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `order_product`
-- 

INSERT INTO `order_product` VALUES (1, '1384248994', '44', 'Áo sơ mi tay dài Geben', 'upload/A-GB005 (1).jpg', 9, 550000, 0, 4950000);
INSERT INTO `order_product` VALUES (2, '1384248994', '37', 'Ba lô đa năng Swiss Gear', 'upload/SW001 (1).jpg', 9, 600000, 0, 5400000);
INSERT INTO `order_product` VALUES (3, '1384248994', '35', 'Túi xách nữ hiện đại Rebecca Minkoff', 'upload/1_10.jpg', 9, 2700000, 0, 24300000);
INSERT INTO `order_product` VALUES (4, '1384249065', '44', 'Áo sơ mi tay dài Geben', 'upload/A-GB005 (1).jpg', 9, 550000, 0, 4950000);
INSERT INTO `order_product` VALUES (5, '1384249065', '37', 'Ba lô đa năng Swiss Gear', 'upload/SW001 (1).jpg', 9, 600000, 0, 5400000);
INSERT INTO `order_product` VALUES (6, '1384249065', '35', 'Túi xách nữ hiện đại Rebecca Minkoff', 'upload/1_10.jpg', 9, 2700000, 0, 24300000);
INSERT INTO `order_product` VALUES (7, '1384249294', '44', 'Áo sơ mi tay dài Geben', 'upload/A-GB005 (1).jpg', 9, 550000, 0, 4950000);
INSERT INTO `order_product` VALUES (8, '1384249294', '37', 'Ba lô đa năng Swiss Gear', 'upload/SW001 (1).jpg', 9, 600000, 0, 5400000);
INSERT INTO `order_product` VALUES (9, '1384249294', '35', 'Túi xách nữ hiện đại Rebecca Minkoff', 'upload/1_10.jpg', 9, 2700000, 0, 24300000);
INSERT INTO `order_product` VALUES (10, '1384249504', '62', 'Thời trang Nam Scotch&amp;QCL', 'upload/A-SS001 (1).jpg', 1, 350000, 0, 350000);
INSERT INTO `order_product` VALUES (11, '1384249994', '66', 'Thời trang Nam HUGO', 'upload/A-HG002 (1).jpg', 7, 600000, 0, 4200000);

-- --------------------------------------------------------

-- 
-- Table structure for table `plugin`
-- 

CREATE TABLE `plugin` (
  `plugin_id` bigint(20) NOT NULL auto_increment,
  `code` varchar(50) collate utf8_unicode_ci NOT NULL,
  `moduleid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `plugin_name` text collate utf8_unicode_ci NOT NULL,
  `language_id` varchar(5) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`plugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `plugin`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product`
-- 

CREATE TABLE `product` (
  `productid` bigint(20) NOT NULL auto_increment,
  `model` varchar(250) collate utf8_unicode_ci NOT NULL,
  `seo_url` varchar(250) collate utf8_unicode_ci NOT NULL,
  `location` text collate utf8_unicode_ci NOT NULL,
  `quantity` double NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `manufacturerid` bigint(20) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `price` double NOT NULL,
  `saleoff` double NOT NULL,
  `fanprice` double NOT NULL,
  `subtract_stock` tinyint(1) NOT NULL,
  `points` int(11) NOT NULL,
  `tax_class_id` bigint(20) NOT NULL,
  `date_available_from` datetime NOT NULL,
  `date_available_to` datetime NOT NULL,
  `weight` double NOT NULL,
  `weight_class_id` bigint(20) NOT NULL,
  `length` double NOT NULL,
  `length_class_id` bigint(20) NOT NULL,
  `width` double NOT NULL,
  `minimum` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `viewed` bigint(20) NOT NULL,
  `status` bigint(20) NOT NULL,
  `sitemapid` bigint(20) NOT NULL,
  `height` double NOT NULL,
  `goodsstatus` text collate utf8_unicode_ci NOT NULL,
  `userid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `statusby` varchar(50) collate utf8_unicode_ci NOT NULL,
  `filter` text character set utf8 NOT NULL,
  `size` text collate utf8_unicode_ci NOT NULL,
  `color` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`productid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=68 ;

-- 
-- Dumping data for table `product`
-- 

INSERT INTO `product` VALUES (20, 'D-FEV0012', 'dam-kieu-han-caro-vai-mong', '', 0, 'upload/D-FEV002 (1).jpg', 0, 13, 0, 450000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:07:18', '2013-11-12 10:07:18', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (21, 'D-IZ001', 'dam-izzue', '', 0, 'upload/D-IZ001 (1).jpg', 0, 14, 0, 200000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:08:30', '2013-11-12 14:52:40', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (19, 'D-FEV001', 'dam-kieu-han-luoi-lung', '', 0, 'upload/D-FEV001 (1).jpg', 0, 13, 0, 450000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:06:16', '2013-11-12 14:51:53', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (18, 'D-CY001', 'dam-trang-trinh-khiet-cyell', '', 0, 'upload/D-CY001 (1).jpg', 0, 12, 0, 200000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:03:55', '2013-11-12 14:50:13', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (17, 'AD-SB001', 'ao-from-dai-dau-lau-s-b', '', 0, 'upload/AD-SB001 (1).jpg', 0, 11, 0, 280000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:01:28', '2013-11-12 14:49:14', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (36, 'SK001', 'vi-nam-phong-do-skap', '', 0, 'upload/SK001 (1).jpg', 0, 25, 0, 1350000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:56:52', '2013-11-12 15:10:49', 0, 0, 3, 0, '', 'admin', 'admin', '16', '', '');
INSERT INTO `product` VALUES (16, 'AD-GU001', 'ao-from-dai-guess', '', 0, 'upload/AD-GU001  (2).jpg', 0, 10, 0, 250000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 09:54:50', '2013-11-12 14:48:03', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (34, 'A-CPD001', 'ao-thun-nam-champion', '', 0, 'upload/A-CP001 (11).jpg', 0, 28, 0, 450000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:48:15', '2013-11-12 15:08:35', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (35, 'RBM001', 'tui-xach-nu-hien-dai-rebecca-minkoff', '', 0, 'upload/1_10.jpg', 0, 24, 0, 2700000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:50:21', '2013-11-12 15:10:02', 0, 0, 4, 0, '', 'admin', 'admin', '17', '', '');
INSERT INTO `product` VALUES (33, 'PD001', 'mat-kinh-hot-prada', '', 0, 'upload/PD001 (1).jpg', 0, 23, 0, 1500000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:45:02', '2013-11-12 15:09:31', 0, 0, 4, 0, '', 'admin', 'admin', '18', '', '');
INSERT INTO `product` VALUES (31, 'A-ADD001', 'ao-thi-dau-adidas', '', 0, 'upload/A-ADD001 (1).jpg', 0, 9, 0, 1200000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:42:26', '2013-11-12 15:09:11', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (32, 'MD002', 'ba-lo-tien-dung-mandarina-duck', '', 0, 'upload/MD002 (1).jpg', 0, 22, 0, 1100000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:42:29', '2013-11-12 15:08:37', 0, 0, 3, 0, '', 'admin', 'admin', '15', '', '');
INSERT INTO `product` VALUES (30, 'MD001', 'ba-lo-dao-pho-mandarina-duck', '', 0, 'upload/MD001 (1).jpg', 0, 22, 0, 1100000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:41:07', '2013-11-12 15:08:01', 0, 0, 3, 0, '', 'admin', 'admin', '15', '', '');
INSERT INTO `product` VALUES (29, 'MJ001', 'vi-nu-bong-noi-marc-by-marc-jacons', '', 0, 'upload/MJ001 (1).jpg', 0, 21, 0, 2100000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:39:05', '2013-11-12 15:06:52', 0, 0, 4, 0, '', 'admin', 'admin', '16', '', '');
INSERT INTO `product` VALUES (28, 'LPS001', 'balo-lesportsac-xinh-xan', '', 0, 'upload/LPS001 (1).jpg', 0, 20, 0, 600000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:36:03', '2013-11-12 15:06:21', 0, 0, 4, 0, '', 'admin', 'admin', '15', '', '');
INSERT INTO `product` VALUES (27, 'CK001', 'balo-latop-ck', '', 0, 'upload/CK001 (1).jpg', 0, 19, 0, 2100000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:30:17', '2013-11-12 14:59:38', 0, 0, 3, 0, '', 'admin', 'admin', '15', '', '');
INSERT INTO `product` VALUES (15, 'D-EP001', 'dam-express', '', 0, 'upload/D-EP001 (1).jpg', 0, 8, 0, 450000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 09:44:09', '2013-11-12 14:51:08', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (22, 'D-IZ002', 'dam-thue-bong', '', 0, 'upload/D-IZ002 (1).jpg', 0, 14, 0, 350000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:10:03', '2013-11-12 14:53:34', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (23, 'D-JC001', 'dam-thun-j-crew', '', 0, 'upload/D-JC001 (1).jpg', 0, 15, 0, 470000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:11:11', '2013-11-12 14:54:13', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (24, 'D-KM001', 'dam-caro-tay-dai-jeans-kama', '', 0, 'upload/D-KM001 (1).jpg', 0, 16, 0, 770000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:13:17', '2013-11-12 14:55:38', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (25, 'D-RH001', 'dam-jeans-rh-by-robinhood', '', 0, 'upload/D-RH001 (1).jpg', 0, 17, 0, 350000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:16:22', '2013-11-12 14:56:19', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (26, 'D-YSC001', 'dam-yessica', '', 0, 'upload/D-YSC001 (1).jpg', 0, 18, 0, 450000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:17:46', '2013-11-12 14:57:43', 0, 0, 4, 0, '', 'admin', 'admin', '13', '', '');
INSERT INTO `product` VALUES (37, 'SW001', 'ba-lo-da-nang-swiss-gear', '', 0, 'upload/SW001 (1).jpg', 0, 26, 0, 600000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 10:58:30', '2013-11-12 15:11:20', 0, 0, 3, 0, '', 'admin', 'admin', '15', '', '');
INSERT INTO `product` VALUES (38, 'AS-AMN001', 'ao-so-mi-nam-armani', '', 0, 'upload/AS-AMN001 (1).jpg', 0, 1, 0, 1100000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:03:39', '2013-11-12 15:10:26', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (39, 'AS-CK001', 'ao-so-mi-tay-ngan-ck', '', 0, 'upload/AS-CK001 (1).jpg', 0, 19, 0, 770000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:05:23', '2013-11-12 15:10:59', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (40, 'AS-CK002', 'ao-so-mi-tay-dai-ck', '', 0, 'upload/AS-CK002 (1).jpg', 0, 19, 0, 800000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:07:08', '2013-11-12 15:11:27', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (41, 'AS-DS001', 'ao-so-mi-tay-ngan-diesel', '', 0, 'upload/AS-DS001 (1).jpg', 0, 29, 0, 730000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:11:13', '2013-11-12 15:12:12', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (42, 'AS-GU001', 'ao-so-mi-tay-dai-guess', '', 0, 'upload/AS-GU001  (1).jpg', 0, 10, 0, 1100000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:14:39', '2013-11-12 15:12:41', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (43, 'AS-TM001', 'ao-so-mi-tay-ngan-tommy', '', 0, 'upload/AS-TM001 (2).jpg', 0, 5, 0, 770000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:22:00', '2013-11-12 15:13:13', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (44, 'A-GB005', 'ao-so-mi-tay-dai-geben', '', 0, 'upload/A-GB005 (1).jpg', 0, 30, 0, 550000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:26:00', '2013-11-12 15:14:08', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (45, 'A-GB001', 'ao-gio-geben', '', 0, 'upload/GB-001 (1).jpg', 0, 30, 0, 600000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:32:17', '2013-11-12 15:15:16', 0, 0, 3, 0, '', 'admin', 'admin', '19', '', '');
INSERT INTO `product` VALUES (46, 'A-GB002', 'ao-tay-dai-geben', '', 0, 'upload/GB-002 (1).jpg', 0, 30, 0, 300000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:37:52', '2013-11-12 15:16:05', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (47, 'A-GB003', 'ao--lo-geben', '', 0, 'upload/GB-003 (1).jpg', 0, 30, 0, 110000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:39:31', '2013-11-12 15:16:45', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (48, 'A-GB004', 'ao-so-mi-tay-ngan-geben', '', 0, 'upload/GB-004 (1).jpg', 0, 30, 0, 550000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:41:13', '2013-11-12 15:17:15', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (49, 'A-GB005-1', 'ao-so-mi-tay-dai-geben-1', '', 0, 'upload/GB-005 (1).jpg', 0, 30, 0, 550000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:47:10', '2013-11-12 15:17:47', 0, 0, 3, 0, '', 'admin', 'admin', '14', '', '');
INSERT INTO `product` VALUES (50, 'A-GB006', 'ao-thun-tay-ngan-geben', '', 0, 'upload/GB-006 (1).jpg', 0, 30, 0, 180000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 11:58:29', '2013-11-12 15:18:15', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (51, 'A-GB007', 'ao-thun-tay-dai', '', 0, 'upload/GB-007 (1).jpg', 0, 30, 0, 190000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 12:00:41', '2013-11-12 15:18:52', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (52, 'A-GB008', 'ao-thun-tay-dai-1', '', 0, 'upload/GB-008 (1).jpg', 0, 30, 0, 190000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 12:03:00', '2013-11-12 15:19:18', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (53, 'Q-GB001', 'quan-kaki-geben', '', 0, 'upload/Q-GB001 (1).jpg', 0, 30, 0, 600000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 12:05:08', '2013-11-12 15:19:47', 0, 0, 3, 0, '', 'admin', 'admin', '4', '', '');
INSERT INTO `product` VALUES (54, 'Q-GB002', 'quan-kaki-geben-1', '', 0, 'upload/Q-GB002 (1).jpg', 0, 30, 0, 600000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 12:06:36', '2013-11-12 15:20:15', 0, 0, 3, 0, '', 'admin', 'admin', '4', '', '');
INSERT INTO `product` VALUES (55, 'A-CKD001', 'ao-thun-nam-ck', '', 0, 'upload/A-CK001 (1).jpg', 0, 19, 0, 770000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:19:57', '2013-11-12 15:07:45', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (56, 'A-CKD002', 'ao-thun-nam-ck-1', '', 0, 'upload/A-CK002 (1).jpg', 0, 19, 0, 550000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:28:38', '2013-11-12 15:07:10', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (57, 'A-DS001', 'ao-thun-nam-diesel', '', 0, 'upload/A-DS001 (1).jpg', 0, 29, 0, 600000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:31:32', '2013-11-12 15:06:30', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (58, 'A-DS002', 'ao-thun-nam-diesel-1', '', 0, 'upload/A-DS002 (1).jpg', 0, 29, 0, 650000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:34:16', '2013-11-12 15:05:51', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (59, 'A-EDC001', 'ao-thun-tay-dai-nam-edc', '', 0, 'upload/A-EDC001 (1).jpg', 0, 2, 0, 450000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:36:24', '2013-11-12 15:05:04', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (60, 'A-EB001', 'thoi-trang-nam-eddie-bauer', '', 0, 'upload/A-EB001 (1).jpg', 0, 6, 0, 500000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:42:38', '2013-11-12 14:44:05', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (61, 'A-EP001', 'thoi-trang-nam-express', '', 0, 'upload/A-EP001 (1).jpg', 0, 8, 0, 450000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:46:58', '2013-11-12 14:47:39', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (62, 'A-SS001', 'thoi-trang-nam-scotch-qcl', '', 0, 'upload/A-SS001 (1).jpg', 0, 31, 0, 350000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:48:22', '2013-11-12 14:51:37', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (63, 'A-GU001', 'thoi-trang-nam-guess', '', 0, 'upload/A-GU001 (1).jpg', 0, 10, 0, 700000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:53:08', '2013-11-12 14:54:50', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (64, 'A-HK001', 'thoi-trang-nam-hackett', '', 0, 'upload/A-HK001 (1).jpg', 0, 32, 0, 600000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 14:56:11', '2013-11-12 14:58:41', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (65, 'A-HG001', 'thoi-trang-nam-hugo', '', 0, 'upload/A-HG001 (1).jpg', 0, 33, 0, 600000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 15:00:47', '2013-11-12 15:00:47', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (66, 'A-HG002', 'thoi-trang-nam-hugo-1', '', 0, 'upload/A-HG002 (1).jpg', 0, 33, 0, 600000, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-12 15:02:54', '2013-11-12 15:02:54', 0, 0, 3, 0, '', 'admin', 'admin', '11', '', '');
INSERT INTO `product` VALUES (67, 'test dung', 'ten-test-dung', '', 0, '', 0, 9, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 1, '2013-11-13 10:00:31', '2013-11-13 10:00:31', 0, 0, 3, 0, '', 'admin', 'admin', '16', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `product_addon`
-- 

CREATE TABLE `product_addon` (
  `productid` bigint(20) NOT NULL,
  `addonid` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `product_addon`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_attribute`
-- 

CREATE TABLE `product_attribute` (
  `product_attribute_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`product_attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_attribute`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_attribute_description`
-- 

CREATE TABLE `product_attribute_description` (
  `product_attribute_id` bigint(20) NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `productid` bigint(20) NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`product_attribute_id`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_attribute_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_description`
-- 

CREATE TABLE `product_description` (
  `productid` bigint(20) NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `tag` text collate utf8_unicode_ci NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL,
  `summary` text collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `meta_title` text collate utf8_unicode_ci NOT NULL,
  `meta_keyword` text collate utf8_unicode_ci NOT NULL,
  `meta_description` text collate utf8_unicode_ci NOT NULL,
  `seo_content` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`productid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_description`
-- 

INSERT INTO `product_description` VALUES (44, 'vn', '', 'Áo sơ mi tay dài Geben', '&lt;div&gt;\r\n	Màu: táo đỏ ca rô&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: &amp;nbsp;M , L&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (34, 'vn', '', 'Áo thun nam Champion', '&lt;div&gt;\r\n	Màu: cam, rêu, trắng, táo đỏ nhạt&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '&lt;p&gt;\r\n	Thật thoải mái với bộ trang phục thu hạ năm 2013 của thượng hiệu CHAMPION&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (36, 'vn', '', 'Ví nam phong độ Skap', '&lt;p&gt;\r\n	Màu: nâu da bò&lt;/p&gt;', '&lt;p&gt;\r\n	Hàng chính hãng!&lt;/p&gt;\r\n&lt;p&gt;\r\n	Tiện dụng với Ví nam Skap có chia nhiều ngăn nhỏ, kiểu dáng lịch lãm và phong độ.&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (37, 'vn', 'hang dat', 'Ba lô đa năng Swiss Gear', '&lt;p&gt;\r\n	Màu: đen&lt;/p&gt;', '&lt;p&gt;\r\n	Ba lô latop đa năng, tiên dụng trong mọi trường hợp.&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (38, 'vn', '', 'Áo sơ mi Nam Armani', '&lt;div&gt;\r\n	Màu: đỏ, rêu, xám đen, xanh đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , L&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (39, 'vn', '', 'Áo sơ mi tay ngắn CK', '&lt;div&gt;\r\n	Màu: sọc đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (40, 'vn', '', 'Áo sơ mi tay dài CK', '&lt;div&gt;\r\n	Màu: xanh đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (41, 'vn', '', 'Áo sơ mi tay ngắn Diesel', '&lt;div&gt;\r\n	Màu: xanh lam, rêu đậm, xanh nhạc, sọc nâu, sọc xanh&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M , L&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (42, 'vn', '', 'Áo sơ mi tay dài Guess', '&lt;div&gt;\r\n	Màu: đỏ&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: XS , M&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (43, 'vn', '', 'Áo sơ mi tay ngắn Tommy', '&lt;div&gt;\r\n	Màu: cam, xanh, xanh trời , đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (19, 'vn', '', 'Đầm kiểu Hàn lưới lưng', '&lt;p&gt;\r\n	Màu: đen&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: S , M , L&lt;/p&gt;', '&lt;p&gt;\r\n	Thời trang 2013&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (20, 'vn', '', 'Đầm kiểu Hàn carô vải mỏng', '', '', '', '', '', '');
INSERT INTO `product_description` VALUES (21, 'vn', '', 'Đầm Izzue', '&lt;p&gt;\r\n	Màu: đỏ&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: XL&amp;nbsp;&lt;/p&gt;', '&lt;p&gt;\r\n	Thời trang 2013&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (22, 'vn', '', 'Đầm thuê bông', '&lt;p&gt;\r\n	Màu: táo đỏ&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: M&lt;/p&gt;', '&lt;p&gt;\r\n	Thuê bông hình 3D, phần áo thun ôm body, trông thật sexy và hấp dẫn cho các chị em fan hàng hiệu.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (23, 'vn', '', 'Đầm thun J.Crew', '&lt;p&gt;\r\n	Màu: xám&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: L&amp;nbsp;&lt;/p&gt;', '&lt;p&gt;\r\n	Thời trang 2013&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (24, 'vn', '', 'Đầm carô tay dài Jeans Kama', '&lt;p&gt;\r\n	Màu: đỏ, xám&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: S, L&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '&lt;p&gt;\r\n	Vải áo dày nhưng mềm kết hợp với váy ngắn liền chất liệu vải Jeans, quả là một bộ trang phục lý tưởng cho bạn đi du lịch các nơi mát lạnh.&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (25, 'vn', '', 'Đầm Jeans RH by Robinhood', '&lt;p&gt;\r\n	Màu: Jeans Xanh&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: M&lt;/p&gt;', '&lt;p&gt;\r\n	Thời trang 2013&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (26, 'vn', '', 'Đầm Yessica', '&lt;p&gt;\r\n	Màu: xám&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: M&lt;/p&gt;', '&lt;p&gt;\r\n	Thời trang 2013&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (33, 'vn', 'hang dat', 'Mắt kính HOT Prada', '&lt;p&gt;\r\n	Màu: kim Cương Đen&lt;/p&gt;', '&lt;p&gt;\r\n	Kính thời trang cực sóc với thiết kê cực kiêu, bạn sẽ là người nổi bực trong các buổi tiệc. càng đẹp mắt khi mắt kính đã trở thành phụ kiện cài tóc với các hạt kim cương lóng lánh.&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (17, 'vn', '', 'Áo From dài đầu lâu S&amp;B', '&lt;p&gt;\r\n	Màu: đen&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: M&lt;/p&gt;', '&lt;p&gt;\r\n	Thời trang 2013&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (18, 'vn', '', 'Đầm trắng trinh khiết Cyell', '&lt;p&gt;\r\n	Màu: trắng&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: S&lt;/p&gt;', '&lt;p&gt;\r\n	Vải suôn mềm và &amp;nbsp;dễ chịu. phù hợp cho các chị thích form thoải mái&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (32, 'vn', '', 'Ba lô tiện dụng Mandarina Duck', '&lt;p&gt;\r\n	Màu: xám&lt;/p&gt;', '&lt;p&gt;\r\n	Ngăn nắp và cẩn thận, đây chính là chiếc ba lô dành riêng cho bạn, với các ngăn và túi nhỏ cùng với vách ngăn dành riêng cho Latop hoặc Ipad. Tiện dụng với mọi trường hợp như du lịch, công sở các buổi tiệc vui chơi v.v&amp;hellip;&amp;nbsp;&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (16, 'vn', '', 'Áo From dài Guess', '&lt;p&gt;\r\n	Màu: tím hồng&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: XL&lt;/p&gt;', '&lt;p&gt;\r\n	Vải áo mềm và mát, thật thích thú vời thời tiết như ở VIệt Nam ta&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (31, 'vn', '', 'Áo đấu ADIDAS', '&lt;div&gt;\r\n	Màu: đỏ và các màu phụ khác&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: XL&lt;/div&gt;', '&lt;p&gt;\r\n	Áo đấu &amp;ldquo; UEFA CHAMPIONS LEAGUE&amp;rdquo; chính hãng. Hãy làm bộ sưu tầm áo đấu bong đá cho bạn nhé.&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (30, 'vn', '', 'Ba lô dạo phố Mandarina Duck', '&lt;p&gt;\r\n	Màu: &amp;nbsp; xám&lt;/p&gt;', '&lt;p&gt;\r\n	Mẫu ba lô khiến người&amp;nbsp; mua không thể cưỡng nổi bởi kiểu dáng hiện đại và giản dị, kết hợp với không gian ba lô tiện dụng, chất liệu vải nylong chống thắm nước.&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (27, 'vn', '', 'Balo Latop “CK”', '&lt;p&gt;\r\n	Màu:&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt; &lt;/span&gt;xanh đậm&lt;/p&gt;', '&lt;p&gt;\r\n	Hàng chính hãng, kiểu dáng cá tính thời trang thích dụng trong mọi trường hợp.&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (28, 'vn', '', 'Balo LeSportsac xinh xắn', '&lt;p&gt;\r\n	Màu: đen nhiều màu&lt;/p&gt;', '&lt;p&gt;\r\n	Hàng chính hãng, kiểu dáng xin xắn, nhỏ gọn có tiện dụng.&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (29, 'vn', '', 'Ví nữ bông nổi Marc By Marc Jacons', '&lt;p&gt;\r\n	Màu: hồng&lt;/p&gt;', '&lt;p&gt;\r\n	Ví nữ đẳng cắp bởi thiết kế của Marc Jacobs, với hình lập thể trên mặt ví, đã tăng lên phần giá trị chi tiết của một sản phẩm hàng hiệu. Hàng chính hãng!&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (15, 'vn', '', 'Đầm Express', '&lt;p&gt;\r\n	Màu: kem xám&lt;/p&gt;\r\n&lt;p&gt;\r\n	Size: S , M&lt;/p&gt;', '&lt;p&gt;\r\n	Thời trang 2013&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (45, 'vn', '', 'Áo gió Geben', '&lt;div&gt;\r\n	Màu: xanh đen, vàng xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L , XL&lt;/div&gt;', '&lt;div&gt;\r\n	Mẫu áo gió thời trang 2013&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (46, 'vn', '', 'Áo tay dài Geben', '&lt;div&gt;\r\n	Màu: vàng&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '&lt;div&gt;\r\n	Mẫu áo thời trang 2013&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (47, 'vn', '', 'Áo 3 lỗ Geben', '&lt;div&gt;\r\n	Màu: xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '&lt;div&gt;\r\n	Mẫu áo thời trang 2013&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (48, 'vn', '', 'Áo sơ mi tay ngắn Geben', '&lt;div&gt;\r\n	Màu: xanh&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '&lt;div&gt;\r\n	Mẫu áo thời trang 2013&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (49, 'vn', '', 'Áo sơ mi tay dài Geben', '&lt;div&gt;\r\n	Màu: đỏ&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M , L&amp;nbsp;&lt;/div&gt;', '&lt;div&gt;\r\n	Mẫu áo thời trang 2013&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (50, 'vn', '', 'Áo thun tay ngắn Geben', '&lt;div&gt;\r\n	Màu: trắng, xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L , XL&amp;nbsp;&lt;/div&gt;', '&lt;div&gt;\r\n	Mẫu áo thời trang 2013&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (51, 'vn', '', 'Áo thun tay dài', '&lt;div&gt;\r\n	Màu: &amp;nbsp;xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '&lt;div&gt;\r\n	Mẫu áo thời trang 2013&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (52, 'vn', '', 'Áo thun tay dài', '&lt;div&gt;\r\n	Màu: &amp;nbsp;đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&amp;nbsp;&lt;/div&gt;', '&lt;div&gt;\r\n	Mẫu áo thời trang 2013&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (53, 'vn', '', 'Quần kaki Geben', '&lt;div&gt;\r\n	Màu: &amp;nbsp;xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&lt;/div&gt;', '&lt;p&gt;\r\n	Mẫu &amp;nbsp;thời trang 2013&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (54, 'vn', '', 'Quần kaki Geben', '&lt;div&gt;\r\n	Màu: &amp;nbsp;xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&lt;/div&gt;', '&lt;p&gt;\r\n	Mẫu &amp;nbsp;thời trang 2013&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (55, 'vn', '', 'Áo thun nam CK', '&lt;div&gt;\r\n	Màu: cam&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S&amp;nbsp;&lt;/div&gt;', '&lt;div&gt;\r\n	Thun bốn chiều, vải thun mát.&amp;nbsp;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (56, 'vn', '', 'Áo thun nam CK', '&lt;div&gt;\r\n	Màu: xanh tươi&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M&lt;/div&gt;', '&lt;div&gt;\r\n	Kiểu dáng kinh điển đơn giản, nhưng không thiếu sự phong thái với thương hiệu CK&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (57, 'vn', '', 'Áo thun nam Diesel', '&lt;div&gt;\r\n	Màu: xanh biển, tím, nâu&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M , L&lt;/div&gt;', '&lt;p&gt;\r\n	Kiểu dáng kinh điển đơn giản và phong độ&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (58, 'vn', '', 'Áo thun nam Diesel', '&lt;div&gt;\r\n	Màu: xanh biển, tím, nâu&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M , L&lt;/div&gt;', '&lt;div&gt;\r\n	Kiểu dáng giản dị với sự nhấn mạnh từ các viền đen và phần LEN viền nút cổ, kinh điển đơn giản và phong độ.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (59, 'vn', '', 'Áo thun tay dài nam EDC', '&lt;div&gt;\r\n	Màu: Đen, xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M&lt;/div&gt;', '&lt;div&gt;\r\n	&amp;nbsp;Áo tay dài thun mát và mỏng, thật thích thợp với khí hậu Việt Nam.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (60, 'vn', '', 'Thời trang Nam Eddie Bauer', '&lt;div&gt;\r\n	Màu: xanh rêu&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S&lt;/div&gt;', '&lt;div&gt;\r\n	Kiểu dáng giản dị và phong độ.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (35, 'vn', '', 'Túi xách nữ hiện đại Rebecca Minkoff', '&lt;p&gt;\r\n	Màu: hồng&lt;/p&gt;', '&lt;p&gt;\r\n	Da bò 100%. thời trang New York xuân hè 2013, sắc sảo và ấn tượng, các thiết kế đậm chất hiện đại trong BST mùa thu của nhãn hiệu Rebecca Minkoff tỏa sáng hơn bao giờ hết. Đây chính là sự lựa chọn của bạn&amp;hellip; Hàng chính hãng!&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (61, 'vn', '', 'Thời trang Nam Express', '&lt;div&gt;\r\n	Màu: xanh đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , L&lt;/div&gt;', '&lt;div&gt;\r\n	Kiểu dáng giản dị và phong độ.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (62, 'vn', '', 'Thời trang Nam Scotch&amp;QCL', '&lt;div&gt;\r\n	Màu: vàng, xám , đỏ&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '&lt;p&gt;\r\n	Kiểu dáng giản dị và phong độ&lt;/p&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (63, 'vn', '', 'Thời trang Nam Guess', '&lt;div&gt;\r\n	Màu: đen, xám, rêu&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: XL&lt;/div&gt;', '&lt;div&gt;\r\n	Kiểu dáng giản dị và phong độ.&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '', '', '');
INSERT INTO `product_description` VALUES (64, 'vn', '', 'Thời trang Nam Hackett', '&lt;div&gt;\r\n	Màu: xanh lam, đen&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: S , M&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (65, 'vn', '', 'Thời trang Nam HUGO', '&lt;div&gt;\r\n	Màu: xám&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: L&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (66, 'vn', '', 'Thời trang Nam HUGO', '&lt;div&gt;\r\n	Màu: cam&lt;/div&gt;\r\n&lt;div&gt;\r\n	Size: M&lt;/div&gt;', '', '', '', '', '');
INSERT INTO `product_description` VALUES (67, 'vn', '', 'ten test dung', '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `product_discount`
-- 

CREATE TABLE `product_discount` (
  `product_discount_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `usertypeid` varchar(20) collate utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `price` double NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  PRIMARY KEY  (`product_discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_discount`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_file`
-- 

CREATE TABLE `product_file` (
  `productfileid` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `filepath` text NOT NULL,
  PRIMARY KEY  (`productfileid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `product_file`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_file_description`
-- 

CREATE TABLE `product_file_description` (
  `id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `productfileid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `product_file_description`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_image`
-- 

CREATE TABLE `product_image` (
  `product_image_id` bigint(20) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_image`
-- 

INSERT INTO `product_image` VALUES (0, 16, 'upload/AD-GU001  (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 16, 'upload/AD-GU001  (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 16, 'upload/AD-GU001  (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 28, 'upload/LPS001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 27, 'upload/CK001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 27, 'upload/CK001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 27, 'upload/CK001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 27, 'upload/CK001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 15, 'upload/D-EP001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 15, 'upload/D-EP001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 15, 'upload/D-EP001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 16, 'upload/AD-GU001  (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 16, 'upload/AD-GU001  (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 16, 'upload/AD-GU001  (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 17, 'upload/AD-SB001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 17, 'upload/AD-SB001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 17, 'upload/AD-SB001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 17, 'upload/AD-SB001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 18, 'upload/D-CY001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 18, 'upload/D-CY001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 19, 'upload/D-FEV001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 19, 'upload/D-FEV001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 19, 'upload/D-FEV001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 19, 'upload/D-FEV001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 20, 'upload/D-FEV002 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 20, 'upload/D-FEV002 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 20, 'upload/D-FEV002 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 21, 'upload/D-IZ001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 21, 'upload/D-IZ001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 21, 'upload/D-IZ001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 22, 'upload/D-IZ002 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 22, 'upload/D-IZ002 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 22, 'upload/D-IZ002 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 22, 'upload/D-IZ002 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 23, 'upload/D-JC001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 23, 'upload/D-JC001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 23, 'upload/D-JC001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 24, 'upload/D-KM001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 24, 'upload/D-KM001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 24, 'upload/D-KM001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 24, 'upload/D-KM001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 24, 'upload/D-KM001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 24, 'upload/D-KM001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 24, 'upload/D-KM001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 24, 'upload/D-KM001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 24, 'upload/D-KM001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 26, 'upload/D-YSC001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 26, 'upload/D-YSC001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 26, 'upload/D-YSC001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 26, 'upload/D-YSC001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 28, 'upload/LPS001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 28, 'upload/LPS001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 28, 'upload/LPS001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 28, 'upload/LPS001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 29, 'upload/MJ001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 29, 'upload/MJ001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 29, 'upload/MJ001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 29, 'upload/MJ001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 30, 'upload/MD001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 30, 'upload/MD001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 30, 'upload/MD001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 30, 'upload/MD001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 30, 'upload/MD001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 30, 'upload/MD001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 31, 'upload/A-ADD001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 31, 'upload/A-ADD001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 31, 'upload/A-ADD001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 31, 'upload/A-ADD001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 31, 'upload/A-ADD001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 32, 'upload/MD002 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 32, 'upload/MD002 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 32, 'upload/MD002 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 32, 'upload/MD002 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 32, 'upload/MD002 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 33, 'upload/PD001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 33, 'upload/PD001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 33, 'upload/PD001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 33, 'upload/PD001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 33, 'upload/PD001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 33, 'upload/PD001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (14).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (15).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (16).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (17).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (18).jpg', 1);
INSERT INTO `product_image` VALUES (0, 36, 'upload/SK001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 36, 'upload/SK001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 36, 'upload/SK001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 36, 'upload/SK001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 36, 'upload/SK001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 37, 'upload/SW001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 37, 'upload/SW001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 37, 'upload/SW001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 37, 'upload/SW001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 37, 'upload/SW001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 37, 'upload/SW001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (21).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (22).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (23).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (14).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (15).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (16).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (17).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (18).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (19).jpg', 1);
INSERT INTO `product_image` VALUES (0, 38, 'upload/AS-AMN001 (20).jpg', 1);
INSERT INTO `product_image` VALUES (0, 39, 'upload/AS-CK001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 39, 'upload/AS-CK001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 39, 'upload/AS-CK001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 39, 'upload/AS-CK001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 39, 'upload/AS-CK001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 39, 'upload/AS-CK001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 40, 'upload/AS-CK002 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 40, 'upload/AS-CK002 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 40, 'upload/AS-CK002 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 40, 'upload/AS-CK002 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 40, 'upload/AS-CK002 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 40, 'upload/AS-CK002 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 40, 'upload/AS-CK002 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 40, 'upload/AS-CK002 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (36).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (14).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (15).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (16).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (17).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (18).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (19).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (20).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (21).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (22).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (23).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (24).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (25).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (26).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (27).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (28).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (29).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (30).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (31).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (32).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (33).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (34).jpg', 1);
INSERT INTO `product_image` VALUES (0, 41, 'upload/AS-DS001 (35).jpg', 1);
INSERT INTO `product_image` VALUES (0, 42, 'upload/AS-GU001  (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 42, 'upload/AS-GU001  (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 42, 'upload/AS-GU001  (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 42, 'upload/AS-GU001  (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 42, 'upload/AS-GU001  (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (21).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (22).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (14).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (15).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (16).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (17).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (18).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (19).jpg', 1);
INSERT INTO `product_image` VALUES (0, 43, 'upload/AS-TM001 (20).jpg', 1);
INSERT INTO `product_image` VALUES (0, 44, 'upload/A-GB005 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 44, 'upload/A-GB005 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 44, 'upload/A-GB005 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 44, 'upload/A-GB005 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 44, 'upload/A-GB005 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 44, 'upload/A-GB005 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 44, 'upload/A-GB005 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 44, 'upload/A-GB005 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 44, 'upload/A-GB005 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (22).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (9.).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (14).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (15).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (16).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (17).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (20).jpg', 1);
INSERT INTO `product_image` VALUES (0, 45, 'upload/GB-001 (21).jpg', 1);
INSERT INTO `product_image` VALUES (0, 46, 'upload/GB-002 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 46, 'upload/GB-002 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 46, 'upload/GB-002 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 46, 'upload/GB-002 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 46, 'upload/GB-002 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 46, 'upload/GB-002 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 46, 'upload/GB-002 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 47, 'upload/GB-003 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 47, 'upload/GB-003 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 47, 'upload/GB-003 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 47, 'upload/GB-003 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 47, 'upload/GB-003 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 47, 'upload/GB-003 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 47, 'upload/GB-003 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 48, 'upload/GB-004 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 49, 'upload/GB-005 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 49, 'upload/GB-005 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 49, 'upload/GB-005 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 49, 'upload/GB-005 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 49, 'upload/GB-005 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 49, 'upload/GB-005 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 49, 'upload/GB-005 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 49, 'upload/GB-005 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 49, 'upload/GB-005 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (21).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (20).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (19).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (18).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (17).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (16).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (15).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (14).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 50, 'upload/GB-006 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 51, 'upload/GB-007 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 51, 'upload/GB-007 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 51, 'upload/GB-007 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 51, 'upload/GB-007 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 51, 'upload/GB-007 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 51, 'upload/GB-007 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 52, 'upload/GB-008 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 52, 'upload/GB-008 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 52, 'upload/GB-008 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 52, 'upload/GB-008 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 52, 'upload/GB-008 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 53, 'upload/Q-GB001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 53, 'upload/Q-GB001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 53, 'upload/Q-GB001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 53, 'upload/Q-GB001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 53, 'upload/Q-GB001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 54, 'upload/Q-GB002 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 54, 'upload/Q-GB002 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 54, 'upload/Q-GB002 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 54, 'upload/Q-GB002 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 54, 'upload/Q-GB002 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 55, 'upload/A-CK001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 55, 'upload/A-CK001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 55, 'upload/A-CK001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 55, 'upload/A-CK001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 56, 'upload/A-CK002 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 56, 'upload/A-CK002 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (14).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (15).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (16).jpg', 1);
INSERT INTO `product_image` VALUES (0, 58, 'upload/A-DS002 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 58, 'upload/A-DS002 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 58, 'upload/A-DS002 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 58, 'upload/A-DS002 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 58, 'upload/A-DS002 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 59, 'upload/A-EDC001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 59, 'upload/A-EDC001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 59, 'upload/A-EDC001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 59, 'upload/A-EDC001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 59, 'upload/A-EDC001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 59, 'upload/A-EDC001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 59, 'upload/A-EDC001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 60, 'upload/A-EB001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 60, 'upload/A-EB001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 60, 'upload/A-EB001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 60, 'upload/A-EB001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 60, 'upload/A-EB001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 61, 'upload/A-EP001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 61, 'upload/A-EP001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 61, 'upload/A-EP001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 61, 'upload/A-EP001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (15).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (14).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 62, 'upload/A-SS001 (16).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (15).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (14).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (13).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (12).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 63, 'upload/A-GU001 (16).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 25, 'upload/D-RH001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (10).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (9).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (8).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (7).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 64, 'upload/A-HK001 (11).jpg', 1);
INSERT INTO `product_image` VALUES (0, 65, 'upload/A-HG001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 65, 'upload/A-HG001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 66, 'upload/A-HG002 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 66, 'upload/A-HG002 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 66, 'upload/A-HG002 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 66, 'upload/A-HG002 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 66, 'upload/A-HG002 (6).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (2).jpg', 1);
INSERT INTO `product_image` VALUES (0, 57, 'upload/A-DS001 (17).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (5).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (4).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (3).jpg', 1);
INSERT INTO `product_image` VALUES (0, 34, 'upload/A-CP001 (2).jpg', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `product_manufacturer`
-- 

CREATE TABLE `product_manufacturer` (
  `manufacturerid` bigint(20) NOT NULL auto_increment,
  `siteid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `name` text collate utf8_unicode_ci NOT NULL,
  `seo_url` text collate utf8_unicode_ci NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
  `link` text collate utf8_unicode_ci NOT NULL,
  `link_direct` tinyint(1) NOT NULL,
  `sitemapid` bigint(20) NOT NULL,
  `area` varchar(250) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(10) NOT NULL,
  PRIMARY KEY  (`manufacturerid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

-- 
-- Dumping data for table `product_manufacturer`
-- 

INSERT INTO `product_manufacturer` VALUES (1, 'default', 'Armani', 'thuong-hieu-armani', 'upload/armani-logo.jpg', '', 0, 15, 'TP Ho Chi Minh', 2);
INSERT INTO `product_manufacturer` VALUES (2, 'default', 'Edc', 'thuong-hieu-edc', 'upload/edc-logo.png', '', 0, 15, 'TP Ho Chi Minh', 1);
INSERT INTO `product_manufacturer` VALUES (3, 'default', 'Good', 'thuong-hieu-good', 'upload/prn-good-logo-1y-2high.jpg', '', 0, 15, 'TP Ho Chi Minh', 3);
INSERT INTO `product_manufacturer` VALUES (4, 'default', 'Polo', 'thuong-hieu-polo', 'upload/Polo-logo.jpg', '', 0, 15, 'TP Ho Chi Minh', 4);
INSERT INTO `product_manufacturer` VALUES (5, 'default', 'Tommy', 'thuong-hieu-tommy-hilfiger', 'upload/tommy_hilfiger.jpg', '', 0, 15, 'TP Ho Chi Minh', 5);
INSERT INTO `product_manufacturer` VALUES (6, 'default', 'Eddie bauer', 'thuong-hieu-eddie-bauer', 'upload/eddie.png', '', 0, 15, 'TP Ho Chi Minh', 6);
INSERT INTO `product_manufacturer` VALUES (7, 'default', 'Eneugie', 'thuong-hieu-eneugie', 'upload/Eneugie.png', '', 0, 15, 'TP Ho Chi Minh', 7);
INSERT INTO `product_manufacturer` VALUES (8, 'default', 'Express', 'thuong-hieu-express', 'upload/Express-Logo.png', '', 0, 15, 'TP Ho Chi Minh', 8);
INSERT INTO `product_manufacturer` VALUES (9, 'default', 'Adidas', 'thuong-hieu-adidas', 'upload/adidas.jpg', '', 0, 15, 'TP Ho Chi Minh', 9);
INSERT INTO `product_manufacturer` VALUES (10, 'default', 'Guess', 'thuong-hieu-guess', 'upload/Guess.jpg', '', 0, 0, 'TP Ho Chi Minh', 10);
INSERT INTO `product_manufacturer` VALUES (11, 'default', 'Simon&amp;Bunco', 'thuong-hieu-simon-bunco', '', '', 0, 0, 'TP Ho Chi Minh', 11);
INSERT INTO `product_manufacturer` VALUES (12, 'default', 'CYELL', 'thuong-hieu-cyell', 'upload/cyell (1).jpg', 'www.cyell.com', 0, 0, 'TP Ho Chi Minh', 12);
INSERT INTO `product_manufacturer` VALUES (13, 'default', 'Forever21', 'thuong-hieu-Forever21', 'upload/F21.jpg', 'www.forever21.com', 0, 0, 'TP Ho Chi Minh', 13);
INSERT INTO `product_manufacturer` VALUES (14, 'default', 'Izzue', 'thuong-hieu-izzue', 'upload/izzue (1).jpg', 'www.izzue.com', 0, 0, 'TP Ho Chi Minh', 14);
INSERT INTO `product_manufacturer` VALUES (15, 'default', 'J.crew', 'thuong-hieu-J.crew', 'upload/JCrew.jpg', 'www.jcrew.com', 0, 0, 'Can Tho', 15);
INSERT INTO `product_manufacturer` VALUES (16, 'default', 'KAMA Classic Jeans', 'thuong-hieu-kama-classic-jeans', '', 'www.kama-classics.com', 0, 15, 'TP Ho Chi Minh', 16);
INSERT INTO `product_manufacturer` VALUES (17, 'default', 'RH By Robinhood', 'thuong-hieu-rh-by-robinhood', '', 'www.robinhood.com.cn', 0, 0, 'TP Ho Chi Minh', 17);
INSERT INTO `product_manufacturer` VALUES (18, 'default', 'Yessica', 'thuong-hieu-yessica', 'upload/ca.jpg', 'www.canda.cn', 0, 0, 'TP Ho Chi Minh', 18);
INSERT INTO `product_manufacturer` VALUES (19, 'default', 'Calvin Klein', 'thuong-hieu-calvin-klein', 'upload/calvin-klein.jpg', 'www.calvinklein.com', 0, 15, 'TP Ho Chi Minh', 19);
INSERT INTO `product_manufacturer` VALUES (20, 'default', 'LeSportsac', 'thuong-hieu-lesportsac', 'upload/lesportsac.jpg', 'www.lesportsa.com', 0, 0, 'TP Ho Chi Minh', 20);
INSERT INTO `product_manufacturer` VALUES (21, 'default', 'Marc By Marc Jacobs', 'thuong-hieu-marc-by-marc-jacobs', 'upload/marc.png', 'www.marcjacobs.com', 0, 0, 'TP Ho Chi Minh', 21);
INSERT INTO `product_manufacturer` VALUES (22, 'default', 'Mandarina Duck', 'thuong-hieu-mandarina-duck', 'upload/mandrina.jpg', 'www.mandarinaduck.com', 0, 0, 'TP Ho Chi Minh', 22);
INSERT INTO `product_manufacturer` VALUES (23, 'default', 'Prada', 'thuong-hieu-prada', '', 'www.prada.com', 0, 15, 'TP Ho Chi Minh', 23);
INSERT INTO `product_manufacturer` VALUES (24, 'default', 'Rebecca Minkoff', 'thuong-hieu-rebeccaminkoff', 'upload/rebeccalogo.png', 'www.rebeccaminkoff.com', 0, 0, 'TP Ho Chi Minh', 24);
INSERT INTO `product_manufacturer` VALUES (25, 'default', 'Skap', 'thuong-hieu-skap', '', 'www.skap.com.cn', 0, 15, 'TP Ho Chi Minh', 25);
INSERT INTO `product_manufacturer` VALUES (26, 'default', 'Swiss grear', 'thuong-hieu-swiss grear', 'upload/swissgear.jpg', 'www.swissbao.com', 0, 15, 'TP Ho Chi Minh', 26);
INSERT INTO `product_manufacturer` VALUES (31, 'default', 'SCOTCH&amp;QCL', 'thuong-hieu-scotch&amp;qcl', 'upload/scotlogo (1).png', 'www.scotch-soda.com', 0, 0, 'TP Ho Chi Minh', 1);
INSERT INTO `product_manufacturer` VALUES (28, 'default', 'Champion', 'thuong-hieu-champion', 'upload/champion.png', 'www.championusa.com', 0, 0, 'TP Ho Chi Minh', 27);
INSERT INTO `product_manufacturer` VALUES (29, 'default', 'Diesel', 'thuong-hieu-diesel', 'upload/diesel.png', 'www.diesel.com', 0, 0, 'TP Ho Chi Minh', 1);
INSERT INTO `product_manufacturer` VALUES (30, 'default', 'Geben', 'thuong-hieu-geben', '', '', 0, 15, 'TP Ho Chi Minh', 1);
INSERT INTO `product_manufacturer` VALUES (32, 'default', 'HACKETT', 'thuong-hieu-hackett', 'upload/Hackett.jpg', 'www.hackett.com', 0, 0, 'TP Ho Chi Minh', 1);
INSERT INTO `product_manufacturer` VALUES (33, 'default', 'HUGO', 'thuong-hieu-hugo', 'upload/hugo.jpg', 'www.hugoboss.com', 0, 0, 'TP Ho Chi Minh', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `product_manufacturer_description`
-- 

CREATE TABLE `product_manufacturer_description` (
  `manufacturerid` bigint(20) NOT NULL,
  `languageid` varchar(30) collate utf8_unicode_ci NOT NULL,
  `summary` text collate utf8_unicode_ci NOT NULL,
  `description` text collate utf8_unicode_ci NOT NULL,
  `meta_description` text collate utf8_unicode_ci NOT NULL,
  `meta_keyword` text collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_manufacturer_description`
-- 

INSERT INTO `product_manufacturer_description` VALUES (9, 'vn', '&lt;p&gt;\r\n	Adidas ltd AG là một nhà sản xuất dụng cụ thể thao của Đức, một thành viên của Adidas Group, bao gồm cả công ty dụng cụ thể thao Reebok, công ty golf Taylormade, công ty sản xuất bóng golf Maxfli và Adidas golf. Adidas là nhà sản xuất dụng cụ thể thao lớn thứ hai trên thế giới.&lt;/p&gt;', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Đức&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 1949&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Nhà sáng lập: Adolf (Adi) Dassler&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website: www.adidas.com&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp; Adidas ltd AG là một nhà sản xuất dụng cụ thể thao của Đức, một thành viên của Adidas Group, bao gồm cả công ty dụng cụ thể thao Reebok, công ty golf Taylormade, công ty sản xuất bóng golf Maxfli và Adidas golf. Adidas là nhà sản xuất dụng cụ thể thao lớn thứ hai trên thế giới.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp; Công ty được đặt theo tên của người sáng lập Adolf (Adi) Dassler, năm 1948. Dassler đã sản xuất giày từ năm 1920 tại Herzogenaurach, gần Nürnberg, với sự giúp đỡ của người anh trai Rudolf Dassler, người mà sau đó đã thành lập công ty giày Puma. Công ty Adidas được đăng ký nhãn hiệu là adidas AG vào ngày 18 tháng 8 năm 1949.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp; Những thiết kế quần áo và giày của công ty biểu tượng cho ba sọc kẻ chéo song song, họa tiết tương tự đã được đưa vào logo chính thức của công ty. Tài sản của công ty năm 2005 ước tính khoảng 6,6 tỷ Euro (khoảng 8,4 tỷ USD). Tài sản năm 2006 ước tính 10.084 tỷ Euro (13.625 tỷ USD). Những sản phẩm chăm sóc cá nhân và nước hoa của công ty được sản xuất bởi Coty, Inc. dưới bản quyền toàn cầu.&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (2, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (3, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (4, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (6, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (7, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (8, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (26, 'vn', '&lt;p&gt;\r\n	&amp;nbsp;Quốc Gia: Thụy Sỹ&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành lập: năm 1893&lt;/p&gt;\r\n&lt;p&gt;\r\n	Website: &lt;a href=&quot;http://www.swissbao.com&quot;&gt;www.swissbao.com&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Balo Swiss Gear được sản xuất bởi hãng balo, cặp nổi tiếng trên thế giới. Cặp có kết cấu thêm nhiều ngăn phụ với cấu tạo đặc biệt để bạn có thể mang mọi thứ như USB, ĐTDĐ, business card, hồ sơ, tài liệu, tạp chí, CDRom ... đẹp và sang trọng phù hợp dành cho các bạn trẻ năng động dùng di lịch, hội hè ... nhất là di lịch trong dịp cuối năm.&lt;/p&gt;', '&lt;p&gt;\r\n	Thương hiệu lịch sử trên 100 năm của ba lô Swiss Gear Rebecca hầu như mọi người đều rất quen thuộc. Nhiều nước trên thế giới rất yêu thích. Bởi vì chất lượng tuyệt vời và thiết kế cao cấp đa dụng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Balo Swiss Gear được sản xuất bởi hãng balo, cặp nổi tiếng trên thế giới. Cặp có kết cấu thêm nhiều ngăn phụ với cấu tạo đặc biệt để bạn có thể mang mọi thứ như USB, ĐTDĐ, business card, hồ sơ, tài liệu, tạp chí, CDRom ... đẹp và sang trọng phù hợp dành cho các bạn trẻ năng động dùng di lịch, hội hè ... nhất là di lịch trong dịp cuối năm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bảo vệ máy tính cực kỳ an toàn, thiết kế đặc biệt với ngăn chống sốc dành cho Latop từ . &amp;nbsp;Dây kéo được thiết kế cực kì chắc chắn.&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (27, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (29, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (28, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (16, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Trung Quốc&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;line-height: 1.5em;&quot;&gt;Thành lập: năm 2002&lt;/span&gt;&lt;/li&gt;\r\n	&lt;li&gt;\r\n		&lt;span style=&quot;line-height: 1.5em;&quot;&gt;Website:&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;http://www.kama-classics.com/&quot; style=&quot;line-height: 1.5em;&quot;&gt;www.kama-classics.com&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/KAMA6.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Thương hiệu Kama rất nổi tiếng bên Trung Quốc, từ khi bắt đầu ra đời đến nay với tinh thần định vị rõ nét, chính là sản phẩm thời trang ưu tú và tuyệt đỉnh của thương hiệu đã nhận được sự khẳng định của các bạn yêu thời trang.&lt;/span&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/KAMA4.jpg&quot; style=&quot;line-height: 1.5em;&quot; width=&quot;auto&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/KAMA5.jpg&quot; style=&quot;line-height: 1.5em;&quot; /&gt;&lt;/div&gt;\r\n&lt;div&gt;\r\n	&amp;nbsp;&lt;/div&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (1, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Ý&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 1975&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Người sáng lập: Giorgio Armani; Sergio Galeotti.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website: &lt;a href=&quot;http://www.armani.com/&quot;&gt;www.armani.com&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Giorgio Armani s.p.a, được biết đến nhiều hơn dưới tên&amp;nbsp;Armani, là 1 hãng thời trang nổi tiếng thế giới của&amp;nbsp;Ý&amp;nbsp;trên các lĩnh vực: thiết kế, sản xuất, phân phối và bán lẻ quần áo thời trang, phụ kiện kính, đồng hồ, đồ trang sức, mỹ phẩm, nước hoa, đồ nội thất &amp;hellip;được thành lập hoặc mua lại bởi nhà tạo mẫu, doanh nhân , tỷ phú nổi tiếng&amp;nbsp;&lt;a href=&quot;http://vi.wikipedia.org/wiki/Giorgio_Armani&quot; title=&quot;Giorgio Armani&quot;&gt;Giorgio Armani&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/GiorgioArmani.jpg&quot; style=&quot;height: 450px; width: 300px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Giorgio Armani&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Công ty có trụ sở tại Corso Venezia, Milano này được thành lập vào ngày 24 tháng 7 năm 1975, khi Giorgio Armani và Sergio Galeotti chỉ có số vốn đầu tư của khoảng 2,5 triệu bảng Anh, chỉ ít tháng sau khi ra mắt bộ sưu tập Prêt-à-Porter (Xuân/ Hè1976), được trình diễn tại khách sạn Plaza ở Milano. Sự khởi đầu xuất sắc này đã mang lại danh tiếng thuộc đẳng cấp Châu Âu cho thương hiệu Armani, năm 1978 các thỏa thuận cấp phép với Tập đoàn Tài chính Dệt may tăng mạnh : Với hợp đồng này, Armani mở rộng quy mô và khai trương 1 trụ sở mới, với đầy đủ phòng họp báo và các phòng trưng bày. Một năm sau,công ty mở rộng ra nước ngoài, và thành lập &amp;quot;Giorgio Armani Corporation&amp;quot;... Trong những năm cuối thập niên 70, Armani là một trong những công ty thời trang hàng đầu trên thế giới, giữ 1 vị trí quan trọng khi cho ra mắt dòng sản phẩm mới: các bộ sưu tập, Armani Junior, phụ kiện Armani, đồ lót Giorgio Armani và đồ bơi Giorgio Armani.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Vào thập niên 80, nhà tạo mẫu G.Armani đã bắt đầu hợp tác (vẫn còn duy trì đến ngày nay) với L&amp;#39;Oréal của Pháp, trong việc tạo ra dòng sản phẩm nước hoa của mình trong cùng thời kỳ tạo ra 2 dòng sản phẩm là: Armani Jeans và Emporio Armani, xây dựng của hàng thời trang cho &amp;quot;Emporio Armani &amp;quot; và &amp;quot;Giorgio Armani&amp;quot; ở Milano.Trong những năm đầu 80, công ty thiết lập một thỏa thuận cấp phép quan trọng với các mùi hương nước hoa và khởi động 2 chiến dịch là Emporio Armani và Armani Jeans. Trong thời gian này công ty đã mở cửa hàng đầu tiên cho Emporio Armani (Milano), tiếp theo là mở cửa hàng Giorgio Armani đầu tiên (Milano). Nửa cuối thập kỷ này, công ty có nhiều mối quan hệ đối tác mới và tiếp tục mở rộng quy mô, theo triết lý quản lý tăng cuờng và nâng cao chất lượng cho các sản phẩm .năm 1987, nhờ vào liên doanh với các công ty Itochu Corporation và Seibu Department Store của Nhật Bản, thì đã nảy sinh sự phân chia &amp;quot; Giorgio Armani Nhật Bản &amp;quot;. Một năm sau, công ty thiết lập một thỏa thuận với Luxottica để sản xuất kính đeo mắt. Ngoài ra, để tăng cường kiểm soát chất lượng và phân phối sản phẩm, Giorgio Armani Spa theo đuổi một loạt các khoản đầu tư vốn cổ phần hiện nay bao gồm các società Intai (100%), Antinea (100%) và Simint (100%) trong đó tất cả cổ phiếu đã được mua lại vào năm 2001.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/ArmaniTui.jpg&quot; style=&quot;line-height: 1.5em; height: 281px; width: 300px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/ArmaniKinh2.jpg&quot; style=&quot;line-height: 1.5em; height: 281px; width: 300px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong style=&quot;line-height: 1.5em;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Fall Winter 2013&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Vào cuối thập niên 90, Armani thành lập website armaniexchange.com vào năm 1999, trang web thương mại điện tử của hãng. Cùng năm đó đã thấy sự ra đời Dòng sản phẩm Phụ kiện của Armani. Năm 2000, cho ra mắt website quốc tế Armani.com (nay là giorgioarmani.com bởi một tranh chấp tên miền với một chủ doanh nghiệp nhỏ) hợp tác với Tập đoàn Zegna, chủ sở hữu 49% cổ phần của các trang web cho sản xuất và phân phối kinh doanh của dòng Armani Collezioni dành cho nam giới trên toàn thế giới, đồng thời tạo ra dòng sản phẩm Mỹ phẩm Giorgio Armani và Armani Casa, và cửa hàng tại khu phố mua sắm thời trang tại 31 Via Manzoni. Năm sau, cửa hiệu &amp;quot;Phụ kiện Giorgio Armani &amp;quot; đầu tiên khánh thành, và trụ sở chính được chuyển từ 21, Bergognone đến 59 Borgonuovo: các trụ sở mới này được thiết kế bởi kiến trúc sư nổi tiếng Nhật Bản Tadao Ando, tọa lạc trên nhà máy cũ của Nestlé, bao gồm nhiều văn phòng và các phòng trưng bày của Armani. Năm 2002, với điều kiện đầu tư tốt Armani đã mua lại Deanna Spa, nhà máy sản xuất hàng dệt kim chất lượng cao và Guardi một công ty điều hành bốn nhà máy chuyên sản xuất giày dép, trong cùng năm đó dòng sản phẩm Armani Jewels đã ra đời. Trong năm 2004, năm của những hợp đồng tối quan trọng với Emaar Properties, đảm bảo mở 14 khách sạn sang trọng tầm cỡ thế giới, cấp giấy phép cho sản xuất và phân phối tất và quần tất với Wolford.Dal. Ngày 06 tháng 06 năm 2008, Giorgio Armani Spa đã xác nhận quyền sở hữu 80% cổ phần của đội bóng rổ Olimpia Milano, được tài trợ bởi nhóm các sản phẩm thuộc thương hiệu Armani Jeans từ năm 2004 đến nay.&lt;/p&gt;', 'Giorgio Armani s.p.a, được biết đến nhiều hơn dưới tên Armani', 'armani');
INSERT INTO `product_manufacturer_description` VALUES (24, 'vn', '&lt;p&gt;\r\n	Quốc Gia: Mỹ&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành lập: năm 2001&lt;/p&gt;\r\n&lt;p&gt;\r\n	Người sáng lập : Rebecca Minkoff&lt;/p&gt;\r\n&lt;p&gt;\r\n	Website: &lt;a href=&quot;http://www.rebeccaminkoff.com&quot;&gt;www.rebeccaminkoff.com&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Với việc cho ra đời 3 bộ sưu tập 1 năm với các dòng sản phẩm chủ đạo là Additional Styles, Mini, MorningAfter và mới đây nhất là bộ sưu tập mang tên Steady, nhãn hiệu REBECCAMINKOFF đã tràn ngập các cửa hàng thời trang ở thị trường những nước có nền thời trang rất phát triển như Mỹ, Nhật, Pháp, Nga. Canada và luôn là chiếc túi mơ ước của các quý bà, quý cô.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;strong&gt;Rebecca Minkoff&lt;/strong&gt;&lt;/span&gt; được sự đón nhận của các ngôi sao và hàng triệu phụ nữ trên toàn thế giới.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sinh ra tại San Diego, California, tình yêu đầu tiên của Rebecca Minkoff đã dành cho nghệ thuật thiết kế và may mặc khi cô mới 18 tuổi. Những thiết kế của Rebecca Minkoff bắt đầu tỏa sáng từ năm 2001 khi người bạn tốt của cô là nữ diễn viên Jenna Elfman yêu cầu cô thiết kế một túi xách cho vai diễn trong phim &amp;#39;Morning After&amp;#39; của cô. Từ đó, thương hiệu Rebecca Minkoff được biết đến như biểu tượng thời trang trẻ trung và sành điệu. Được sự đón nhận của các ngôi sao và hàng triệu phụ nữ trên toàn thế giới, những bộ sưu tập thời trang của Rebecca Minkoff luôn mang đến những bất ngờ trong từng thiết kế.&lt;/p&gt;\r\n&lt;p&gt;\r\n	REBECCAMINOFF nhãn hiệu túi xách ra đời năm 2001 và được đặt tên theo tên của người sáng lập và cũng là người thiết kế ra chúng, cô Rebecca Minkoff.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mặc dù chặng đường phát triển chưa lâu nhưng REBECCAMINKOFF mang đã tạo được dấu ấn cho người tiêu dùng, túi của REBECCAMINKOFF mang một phong cách rất đơn giản và phóng khoáng với chất liệu chủ yếu là da trơn, da bóng với màu sắc trẻ trung, tươi mới kết hợp với kiểu dáng thoải mái nhưng rất lịch lãm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Túi xách của REBECCAMINKOFF luôn được khoác trên tay của sao &amp;ldquo;bự&amp;rdquo; như: Hilary Duff, Lindsay Lohan, Jessica Simpson, Jessica Alb&amp;hellip;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Điểm nhấn trên mỗi chiếc túi là những hạt đá, những chiếc khóa hay dây quai xích mang logo của REBECCAMINKOFF. Nhãn hiệu nổi tiếng này cho ra đời rất nhiều dòng sản phẩm để bạn có thể sử dụng chúng phù hợp trong từng hoàn cảnh khác nhau.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Với việc cho ra đời 3 bộ sưu tập 1 năm với các dòng sản phẩm chủ đạo là Additional Styles, Mini, MorningAfter và mới đây nhất là bộ sưu tập mang tên Steady, nhãn hiệu REBECCAMINKOFF đã tràn ngập các cửa hàng thời trang ở thị trường những nước có nền thời trang rất phát triển như Mỹ, Nhật, Pháp, Nga. Canada và luôn là chiếc túi mơ ước của các quý bà, quý cô.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Dĩ nhiên khi đã là một thương hiệu được nhiều ngôi sao Hollywood ưa chuộng thì giá các sản phẩm của REBECCAMINKOFF thì không hề rẻ nhưng người sử dụng sẽ cảm nhận được chất lượng sản phẩm và đẳng cấp của thương hiệu này đem lại.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hiện nay ở Châu Á, REBECCAMINKOFF đã có mặt ở Nhật Bản, Hàn Quốc, Đài Loan và Singpore.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Hãy sưu tằm những mẫu túi xách cực phong cách của Rebecca Minkoff cùng với chúng tôi nhé!&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (25, 'vn', '&lt;p&gt;\r\n	Thương HIệu Skap xuất xứ từ Pháp, do Ông Fei Lie người Pháp sinh năm 1863 sáng lập. Với yêu cầu chất lượng sản phẩm đòi hỏi rất cao. Nguyên liệu sản phẩm da đều đến từ Tân Tây Lan, Úc, Đức&amp;hellip; là nơi chuyên cung ứng da bò chuyên dùng cho ngành sản xuất thời trang, bởi môi trường không ô nhiễm từ nguồn nước đến thức ăn.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Thương hIệu Skap&lt;/strong&gt;&lt;/span&gt; xuất xứ từ Pháp, do Ông Fei Lie người Pháp sinh năm 1863 sáng lập. Với yêu cầu chất lượng sản phẩm đòi hỏi rất cao. Nguyên liệu sản phẩm da đều đến từ Tân Tây Lan, Úc, Đức&amp;hellip; là nơi chuyên cung ứng da bò chuyên dùng cho ngành sản xuất thời trang, bởi môi trường không ô nhiễm từ nguồn nước đến thức ăn.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Da vân hưu cao cổ là một đặt điểm lớn của sản phẩm thương hiệu SKAP, vì quá trình sản xuất rất phức tạp, sử dụng thiết bị gia công chuyên dùng, để đạt đến yêu cầu chống ẩm chống móc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Long Hao CO.,LTD Trung Quốc là đại lý độc quyền &amp;ldquo;Da Vân Hưu cao cổ&amp;rdquo;, với công nghệ đặc thù và giá thành khá cao do yêu cầu nguyên liệu rất khắc khe, để bảo đảm cho chất lượng sản phẩm luôn được tự nhiên, mềm và có sự đàn hồi tốt.&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (5, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Mỹ&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 1985&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Người sáng lập : Tommy Hilfiger&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website:&amp;nbsp;&lt;a href=&quot;http://global.tommy.com/en&quot; style=&quot;line-height: 1.5em;&quot;&gt;http://global.tommy.com/en&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Kể từ khi thành lập, Tommy Hilfiger đã được xây dựng trên 1 triết lý thiết kế mạnh mẽ: thêm sự tươi mới, cách nhìn mới đối với thời trang truyền thống kết hợp với phong cách của mọi người dân Mỹ. Cách tiếp cận này rất hiệu quả khi mà chỉ trong vòng chưa đầy 2 thập kỷ, Tommy Hilfiger đã phát triển từ 1 dòng duy nhất thành 1 doanh nghiệp toàn cầu với rất nhiều sản phẩm phong phú. Các thiết kế thời trang của Tommy Hilfiger luôn hướng tới một cuộc sống năng động, cá tính, tràn đầy năng lượng dựa trên sự độc đáo đến từng chi tiết trong sản phẩm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Người sáng lập thương hiệu là Thomas Jacob Hilfiger sinh ngày 24 tháng 03 năm 1951 ở Ellesmere. Ông là con thứ 2 trong một gia đình lớn (gồm có 9 anh chị em) của họ Catholic Irish. Năm 18 tuổi, Tommy nghỉ học và bắt đầu làm việc trong một cửa hàng quần áo nhỏ. Công việc kinh doanh đầu tiên của ông là lấy những mặt hàng jeans từ New York và bán lại chúng cho người dân ở quê nhà. Năm 1984, ông đăng kí nhãn hiệu Tommy Hilfiger và ra mắt bộ sưu tập đầu tiên dưới cái tên của mình. Từ đó, Hilfiger được xem như là ông vua trong lĩnh vực thời trang thành thị. Người Mỹ rất ưa chuộng thương hiệu này vì phong cách, chất lượng cao và giá cả bình dân.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/TommyHilfiger.JPG&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Tommy Hilfiger&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Vào năm 1995, những bộ sưu tập thời trang nam giới của Tommy Hilfiger đã giúp cho ông được tôn vinh là &amp;ldquo;Nhà thiết kế của năm&amp;rdquo;. Lại một lần nữa, trong năm 1999, trường Design School Person ở New York trao tặng Tommy Hilfiger giải thưởng &amp;ldquo;Nhà Thiết kế của năm&amp;rdquo; và tạp chí GQ đã đưa ông ta vào danh sách &amp;ldquo;Những người đàn ông của năm&amp;rdquo;. Năm 1999, Tommy Hilfiger là nhà tài trợ cho chuyến lưu diễn có tên là No security của huyền thoại Rolling Stones, tour diễn Mùa thu của Britney Spears và tour diễn mùa hè có tên Freedom của Lenny Kravitz. Năm 2002, Hilfiger được tạp chí GQ đề cử là &amp;ldquo;Nhà thiết kế quốc tế của năm&amp;rdquo; và D.A.R.E tôn vinh ông ta với giải thưởng &amp;ldquo;Tương lai của nước Mỹ&amp;rdquo;. Bên cạnh đó, trong năm này Hilfiger cũng trở thành nhà tài trợ của giải &amp;ldquo;Trượt tuyết theo đội hình toàn nước Mỹ&amp;rdquo;.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/TommyAo.JPG&quot; style=&quot;width: 250px; height: 491px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/TommyAoNam.JPG&quot; style=&quot;line-height: 1.5em; height: 491px; width: 230px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Fall Preview&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Ngày nay, ngoài những nhãn hiệu về thời trang (đặc biệt là đồ thể thao). Tommy Hilfiger còn sản xuất thêm nước hoa. Mà sản phẩm mới nhất là nước hoa True Star kết hợp với thương hiệu Estee Lauder. Nói về nước hoa &amp;ndash; đây là một thành công không thể không kể đến của Tommy. Trong đó, sản phẩm phổ biến nhất là Tommy Girl với hương hoa hồng, gỗ đàn hương và cây thạch được sản xuất vào năm 1996. Các nhãn hiệu thời trang của Tommy Hilfiger như: Red Label (tùy chỉnh theo từng dòng gồm có jeans, áo sơ mi và áo len thể thao) nhãn hiệu H là một dòng đưa ra sau khi công ty được bán đi. Tommy Hilfiger, Tommy Sport là những dòng ra đời từ thập niên 90 và mang lại danh tiếng cho ông Hilfiger. Tommy Hilfiger còn là chủ của dòng sản phẩm về mỹ phẩm chăm sóc cơ thể, đồ nội thất, đồ dùng du lịch và các phụ kiện nhà tắm.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/TommyGirl1.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;Nước hoa Tommy Girl&lt;/strong&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (12, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Anh&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 1995&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website: &lt;a href=&quot;http://www.cyell.com/&quot;&gt;www.cyell.com&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Thương hiệu Cyell rất nổi tiếng về thời trang nữ như dòng áo bikini, áo ngủ, đồ lót v.v&amp;hellip; ở Châu Âu. Cyell có webshop riêng của mình và có trên 1.600 cửa hàng chuyên đồ lót và các cửa hàng sản phẩm khác hơn 14 quốc gia. Một con mắt sắc nét và yêu cầu thẫm mỹ về chi tiết, chất lượng và thời trang luôn đồng hành với nhau.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Cyell.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 37 chuyên viện phục trách thiết kế các bộ sưu tập. Họ tạo mẫu thiết kế và phát triển các bộ sưu tập khác nhau tại trụ sở chính ở Friesland.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Có thể nói Cyell là một thương hiệu tinh khiết, trung thực và đáng tin cậy về chất lượng và mẫu mã.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/Cyell1.jpg&quot; style=&quot;line-height: 1.5em; height: 217px; width: 350px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/Cyell2.jpg&quot; style=&quot;line-height: 1.5em; height: 217px; width: 350px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Summer 2013&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (13, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Mỹ&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 1984&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Nhà sáng lập: Dong - Won Chang và vợ ông là Jin Sook.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website: &lt;a href=&quot;http://www.forever21.com/&quot;&gt;www.forever21.com&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Dong_WonChang.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Dong - Won Chang và vợ ông là Jin Sook&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Forever 21 còn gọi tắt là F21&amp;nbsp;là một nhãn hiệu thời trang tổng hợp với một chuỗi các nhà bán lẻ của Mỹ trên khắp nước Mỹ, Canada, Singapore, Indonesia, Malaysia, UAE, Jordan, Oman, Kuwait, Saudi Arabia, Bahrain, Thái Lan, Trung Quốc, Hàn Quốc, Nhật Bản, Puerto Rico, Philippines, Anh, Ireland. Không chỉ quần áo, mà F21 còn bán các loại phụ kiện thời trang cho nam giới, nữ giới và trẻ em.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Cửa&amp;nbsp;hàng đầu tiên khai trương ngày 21/4/1984 và đặt tại số&amp;nbsp;5.637 N. Figueroa St ở Highland Park của Los Angeles với diện tích 84m2. Ban đầu, F21 với mục&amp;nbsp;đích bán các thiết kế&amp;nbsp;thời trang Hàn Quốc và mục tiêu là cộng đồng người Hàn Quốc tại Mỹ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Tuy nhiên, nhiều người dân từ các nước khác nhau đã ưa chuộng sản phẩm từ F21 và dần dần nó trở nên phổ biến. Đến cuối năm đầu tiên, doanh số tăng từ 35.000$ lên tới 700.000$. Thời trang của F21 được mở rộng cùng với tốc độ phát triển của nhãn hiệu này.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Forever21_1.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;Love 21 contemporary&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Năm&amp;nbsp;1989, Forever 21 đã mở cửa hàng thứ 11. Forever 21 tăng mở rộng kích thước trung bình đến 5.000 feet vuông (460 m2) cho mỗi cửa hàng. Kể từ đó, Forever 21 đã có mặt tại các địa điểm trung tâm mua sắm lớn trên toàn nước Mỹ.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Năm 1995, công ty mở rộng cửa hàng của họ ở Miami Mall của châu Mỹ, vị trí này là cửa hàng đầu tiên bên ngoài California.&amp;nbsp;Forever 21 đã đạt tổng cộng 40 cửa hàng của năm 1997.&amp;nbsp; Tạo cửa hàng mẫu thử nghiệm riêng của mình tại Trung tâm Thời trang Northridge, Forever 21 đã sử dụng khái niệm thiết kế độc quyền của mình cho tất cả các cửa hàng của mình từ đó.&amp;nbsp;Bởi thời gian này Forever 21 cũng tăng kích thước trung bình của nó đến 9.000 feet vuông (840 m2) cho mỗi cửa hàng tại các điểm chính của trung tâm.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Các cửa hàng châu Âu đầu tiên mở tại Dublin, Ireland, tại Trung tâm Mua sắm Jervis ngày 15/11 năm 2010.&amp;nbsp;Cửa hàng tại Anh đang mở cuối năm 2010 tại Bullring Birmingham và thứ hai tại London của thành phố Westfield Stratford.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; F21 có nhiều mặt hàng, nhiều mức giá phục vụ các đối tượng khác nhau và F21 là một nhãn hiệu thời trang cạnh tranh với các hãng thời trang thông dụng khác là Wet Seal, H &amp;amp; M, New Look và Charlotte Russe.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Các mặt hàng của F21 vào Việt Nam thường qua đường hàng xách tay từ các cửa hàng của F21 châu Âu, châu Á, Mỹ, và nhận đặt hàng trực tuyến trên website của F21.&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (30, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (14, 'vn', '', '&lt;p&gt;\r\n	Quốc Gia: Hong Kong&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành lập: năm 1999&lt;/p&gt;\r\n&lt;p&gt;\r\n	Website: &lt;a href=&quot;http://www.izzue.com/&quot;&gt;www.izzue.com&lt;/a&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/izzue.jpg&quot; style=&quot;height: 341px; width: 500px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;izzue&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sự ra đời của &lt;a href=&quot;http://izzue.com/&quot;&gt;http://izzue.com&lt;/a&gt; có thể nói là bước đỉnh của giới thời trang, sự sáng tạo và cách phối màu của giới trẻ đã nhận được sự phản hồi rất lớn . Cá tính nhưng rất giãn dị của thời trang nam, thùy mỵ lại rất phong cách của thời trang nữ, Izzue đã nhận được nhiều sự yêu thích bởi các ngôi sao nổi tiếng Trung Quốc, Đài Loan và HongKong v.v&amp;hellip;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/izzue_ao.jpg&quot; style=&quot;height: 601px; width: 400px;&quot; /&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (15, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Mỹ&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 1983&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website: &lt;a href=&quot;http://www.jcrew.com/&quot;&gt;www.jcrew.com&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/jcrew_logo.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; J. Crew là một tập đoàn đa kênh, đa thương hiệu của Mỹ đồng thời vẫn mang dáng dấp của một nhà bán lẻ đặc trưng. Công ty phân loại và cung cấp các sản phẩm thời trang may mặc dành cho cả nam và nữ, và các phụ kiện đi kèm, bao gồm cả quần áo bơi, áo khoác, túi xách, phụ kiện làm tóc, thắt lưng, đồ trang sức, giày dép trẻ em &amp;hellip;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/jcrew_1.jpg&quot; style=&quot;height: 317px; width: 400px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;J.Crew Collection&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Vào tháng 3 năm 1989, cửa hàng bán lẻ đầu tiền của J. Crew được mở tại Street Seaport ở Nam Manhatan, công ty có kế hoạch mở thêm 45 cửa hàng. 5 tháng sau tức vào tháng 08 năm 1989, công ty đưa ra 2 danh mục sản phẩm mới, bao gồm: &amp;ldquo;Collections&amp;rdquo; và &amp;ldquo;Classics&amp;rdquo;. Trong đó,&amp;ldquo;Collections&amp;rdquo; sử dụng thiết kế phức tạp hơn và các loại vải tốt hơn, tốn kém hơn, trong khi, &amp;ldquo;Classics&amp;rdquo; là dòng sản phẩm đặc trưng có thể mặc trong khi làm việc và giải trí.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Tính đến tháng 01 năm 2011, công ty hoạt động với 333 cửa hàng bán lẻ trên khắp nước Mỹ. J. Crew tiến hành các hoạt động kinh doanh của mình thông qua các nhà máy bán lẻ, nhà máy sản xuất, giải phóng mặt bằng, các cửa hàng Madewell, catalog và trên website của mình. Để phát triển mạnh mẽ hơn nữa và để vượt qua các đối thủ cạnh tranh&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; J. Crew đã bắt tay hợp tác với 2 nhà thiết kế Prabal Gurung và Eddie Borgo và phối hợp với Quỹ thời trang CFDA/Vogue.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Đệ nhất phu nhât Michell Obama là một khách hàng cao cấp của J. Crew bà là một trong những khách hàng quen thuộc và ưa thích các sản phẩm, mẫu thiết kế thời trang của J. Crew.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Mới đây, lookbook mùa mới của JCrew đã chinh phục không ít những cô nàng yêu thời trang khó tính bởi cách phối đồ siêu chuẩn, hội tụ đủ các yếu tố: năng động, đáng yêu, duyên dáng và thanh lịch.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/jcrew_2.jpg&quot; style=&quot;height: 396px; width: 400px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;J.Crew Collection&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (17, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Hong Kong&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 1997&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website: &lt;a href=&quot;http://www.robinhood.com.cn/&quot;&gt;www.robinhood.com.cn&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/RHlogo.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Thương hiệu Robinhood đã có tại London nước Anh năm 1943, vào 1997 Tập Đoàn Robinhood thành lập tại HongKong và bắt đầu phát triển lớn về tại thị trường Châu Á. Từng bước khai thác không ngừng của tập đoàn đã thu mua thương hiệu Wearhouse để triển khai them nhiều dây trang phục cho các đối tượng khách nhau.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/RH_1.jpg&quot; style=&quot;height: 378px; width: 400px;&quot; /&gt;&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/RH_2.jpg&quot; style=&quot;line-height: 1.5em;&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (18, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Trung Quốc&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 1841&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website: &lt;a href=&quot;http://www.canda.cn/&quot;&gt;www.canda.cn&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Thương hiệu Yessica thuộc dòng sản phẩm của C&amp;amp;A, cổ phần khổng lồ bởi tập đoàn COFRA, đến nay thương hiệu đã có trên 20 quốc gia trong toàn cầu. Tháng 01 năm 2010, tại Châu Âu và Châu Mỹ La Tinh đã có 1,645 cửa hàng. Tổng số nhân công toàn cầu là 35,000 người. Riêng thị trường Châu Âu trong vòng 3 năm đã mở trên 450 cửa hàng, lưu lượng khách hàng trong ngày có 2 triệu người.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Yessica_1.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Yessica_2.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Kiểu thiết kế thời trang sáng tạo, đường may tinh tế là bước thắng của thương hiệu Yessica. Rất phù hợp với cách ăn mặc của người Châu Á, đặc biệt tại Việt Nam.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/Yessica_3.jpg&quot; style=&quot;line-height: 1.5em; height: 415px; width: 300px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/Yessica_4.jpg&quot; style=&quot;line-height: 1.5em; height: 415px; width: 300px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (11, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Ma Cao&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 2010&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website:&amp;nbsp;&lt;a href=&quot;http://e-mag2.prj.gzignite.com:81/tc/showcase/fashion-jewelry-showcase/skeleton-t-shirt&quot; style=&quot;line-height: 1.5em;&quot;&gt;http://e-mag2.prj.gzignite.com:81/tc/showcase/fashion-jewelry-showcase/skeleton-t-shirt&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Simon_logo.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Đây thuộc dòng sản phẩm của Công Ty Macaoideas thành lập năm 2004, là đại lý gia công bán thành phẩm xuất khẩu. Với kinh nghiệm lâu năm về hàng chất lượng xuất khẩu, công ty đã cho ra đời thương hiệu của mình là Simon&amp;amp;Bunco vào năm 2010. Thời gian không lâu thương hiệu này đã được nhiều người ưa chuộng bởi chất lượng và thiết kế của thương hiệu.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Simon_1.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/Simon_4.jpg&quot; style=&quot;height: 441px; width: 440px;&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (10, 'vn', '', '&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Quốc Gia: Mỹ&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Thành lập: năm 1981&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Website:&lt;a href=&quot;http://www.guess.com/en/&quot; style=&quot;line-height: 1.5em;&quot;&gt;http://www.guess.com/en/&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Guess là một thương hiệu quần áo&amp;nbsp;nổi tiếng của Mỹ.&amp;nbsp;Guess&amp;nbsp;còn nổi tiếng về&amp;nbsp;phụ kiện thời trang&amp;nbsp;chẳng hạn như&amp;nbsp;đồng hồ,&amp;nbsp;đồ trang sức,&amp;nbsp;nước hoa,&amp;nbsp;dây chuyền&amp;nbsp;Marciano.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Guess_5.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Đầu thập niên 80, thời trang jeans hầu như không tìm được lối đi riêng cho mình. Người ta cho rằng denim (một loại vải bông) là lỗi thời còn jeans thì không phải là một tuyên ngôn thời trang chính thức. Và chính bốn anh em nhà Marciano: George, Armand, Paul và Maurice, những người sáng lập GUESS?, Inc. đã làm thay đổi hoàn toàn nhận định này với công thức kết hợp hoàn hảo giữa phong cách tự do của Mỹ và nét sang trọng của phương Tây.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Bốn anh em nhà Marciano sinh ra tại Algeria nhưng lớn lên tại vùng Marseilles, mảnh đất nuôi dưỡng tài năng thiết kế ở Pháp, đã hình thành nơi anh em Marciano một phong cách thiết kế trẻ trung, quyến rũ, mạnh mẽ và thanh lịch.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Họ chuyển đến California vào năm 1977 và bắt đầu với công ty vào năm 1981. GUESS? sản xuất loại quần jeans stoned wash demin. Loại quần jeans này được washed cho bạc ở phần đùi và trong những năm gần đây, mốt này trở nên thịnh hành hơn bao giờ hết. Bước tiếp cận mới của GUESS? đã mở ra một tương lai mới cho denim.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Trong những ngày đầu tiên, khách hàng vẫn nghi ngại đối với trang phục của GUESS?. Không ai tỏ ra hứng thú với trang phục từ denim. Tuy nhiên, những cố gắng kiên trì của anh em Marciano cuối cùng cũng được đền đáp xứng đáng. Sản phẩm đầu tay, quần jeans Marilyn có phong cách mới lạ, trẻ trung và hấp dẫn. Vì nể nang anh em nhà Marciano, Bloomingdales đã đồng ý nhận bán 1 tá sản phẩm này. Chỉ trong vòng vài giờ, toàn bộ quần jeans Marilyn đã được khách hàng mua hết nhẵn. Mọi việc tiếp theo hoàn toàn thuận lợi cho nhà Marciano với sự kết hợp hài hoà giữa sản phẩm và hình ảnh biểu tượng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; GUESS? nhanh chóng thâm nhập vào nền văn hoá đại chúng và trở thành biểu tượng cuối thế kỷ 20. Những chiến dịch quảng cáo của GUESS? đã mở đường cho rất nhiều người mẫu vô danh tiến đến sự nổi tiếng chỉ qua một đêm diễn. Những siêu sao như Claudia Schiffer, Naomi Cambpell, Carrè Otis, Laetitia Casta và Eva Herzigova đã khởi đầu sự nghiệp của mình với GUESS?. Dưới cặp mắt và sự chỉ đạo nghệ thuật tinh tường của Paul Marciano và được chụp bởi các nhiếp ảnh gia vẫn còn vô danh vào thời điểm ấy như Wayne Maser, Ellen Von Unwerth, Neil Kirk và Raphael Mazzucco, thương hiệu GUESS? đã được chu du qua nhiều nơi, từ vùng sa mạc hoang vu của miền Viễn Tây Hoa Kỳ đến những bãi biển ngập tràn ánh nắng ở Brazil, và cả những đại lộ tuyệt đẹp ở Paris.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Guess_1.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Triết lý làm việc của GUESS? được thể hiện rõ nét thông qua những mẫu thiết kế tinh xảo với phong cách đặc trưng nhằm tôn vinh nét đẹp con người. Phong cách đặc trưng của Mỹ cộng với đôi nét phương Tây mang đến cho trang phục GUESS? một vẻ độc đáo mới lạ, vừa cổ điển vừa trẻ trung, hiện đại. Với các sản phẩm GUESS?, khách hàng có thể tự do tạo nên cho mình một phong cách thời trang riêng. Nổi tiếng về chất lượng, tài năng tiếp thị và là người mở đường cho các phong cách thời trang mới, GUESS? mang đến những bộ sưu tập thời trang đa dạng cho nam, nữ, và cả trẻ em. Ngoài ra, GUESS? còn mở rộng kinh doanh trong các lĩnh vực khác như giày, mắt kính, thắt lưng, nữ trang, đồ da, đồ tắm, đồng hồ, túi xách và nước hoa.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/Guess_2.jpg&quot; style=&quot;height: 479px; width: 350px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/Guess_4.jpg&quot; style=&quot;line-height: 1.5em; height: 479px; width: 350px;&quot; /&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (19, 'vn', '&lt;p&gt;\r\n	Quốc Gia: Mỹ&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành lập: năm 1968&lt;/p&gt;\r\n&lt;p&gt;\r\n	Người sáng lập: Calvin Klein&lt;/p&gt;\r\n&lt;p&gt;\r\n	Website: &lt;a href=&quot;http://www.calvinklein.com/&quot;&gt;www.calvinklein.com&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Calvin Klein là một trong những thương hiệu thiết kế hàng đầu trong ngành công nghiệp thời trang thế giới. Ngoài những bộ sưu tập quần áo thời trang, Calvin Klein còn thể hiện đẳng cấp của mình qua hàng loạt các sản phẩm về túi xách, thắt lưng và giày. Kể từ khi thành lập vào năm 1968, thương hiệu Calvin Klein đồng nghĩa với sự quyến rũ, gợi cảm của các đôi giày cao gót, vẻ đáng yêu ngọt ngào của những chiếc túi sang trọng và sự đa dạng trong phong cách cùng chất lượng tuyệt vời của các bộ quần áo. Calvin Klein &amp;ndash; Đỉnh cao của làng thời trang thế giới.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;strong&gt;Calvin Klein&lt;/strong&gt;&lt;/span&gt; &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;gọi tắt la CK, được thành lập vào năm 1968, và người sáng lập chính Ông Calvin Klein sinh năm 1942, Ông tốt nghiệp tại học viện FIT New York, ông đã nhận được nhiều giải thưởng thiết kế nổi tiếng.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;Calvin Klein là một trong những thương hiệu thiết kế hàng đầu trong ngành công nghiệp thời trang thế giới. Ngoài những bộ sưu tập quần áo thời trang, Calvin Klein còn thể hiện đẳng cấp của mình qua hàng loạt các sản phẩm về túi xách, thắt lưng và giày. Kể từ khi thành lập vào năm 1968, thương hiệu Calvin Klein đồng nghĩa với sự quyến rũ, gợi cảm của các đôi giày cao gót, vẻ đáng yêu ngọt ngào của những chiếc túi sang trọng và sự đa dạng trong phong cách cùng chất lượng tuyệt vời của các bộ quần áo. Calvin Klein &amp;ndash; Đỉnh cao của làng thời trang thế giới.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/CK_1.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;Cậu bé Calvin Klein sinh ngày 19/11/1942 trong một gia đình nhập cư Áo-Hungary. Cha Klein có một cửa hàng tạp hóa và Calvin hay ở đó giúp ông bán hàng. Không bao giờ chơi thể thao với bọn trẻ hàng xóm, sở thích của cậu khá lạ đời: ở nhà tự học cách tạo mẫu và may vá. Niềm yêu thích tiếp theo của cậu là đi mua sắm quần áo giảm giá cùng mẹ.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;Nhạy cảm thời trang và thiên tài marketing đã biến Calvin Klein thành &amp;quot;kẻ chinh phục&amp;quot; xuất chúng với những ảnh hưởng đáng kể trong suốt nửa thế kỷ qua. Ông không chỉ là thầy phù thuỷ trong lĩnh vực thời trang, ông còn là nhà kinh doanh đại tài - người đã dựng nên một công ty trị giá hàng tỷ đôla và một nhãn hiệu có thể được thấy trên mọi thứ, từ đồ jeans, nước hoa cho đến đồ lót.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;Bằng cách cố tình tạo nên những hình ảnh không thể phân biệt được về tuổi tác, giới tính và bản năng giới tính, Calvin Klein đã giữ cho thương hiệu của mình không bị trói buộc với bất kỳ một thị trường riêng biệt nào. Vì vậy, cũng không có gì là ngẫu nhiên khi đó là thương hiệu thời trang mạnh và phổ biến rộng rãi nhất trong số những thương hiệu thời trang cao cấp. Hơn một thập niên sau khi tung ra chiến dịch quảng cáo với Mark Wahlberg, thương hiệu Calvin Klein vẫn là thương hiệu quần lót nam được ưa chuộng nhất trên thế giới.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/CK_2.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/CK_3.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (20, 'vn', '&lt;p&gt;\r\n	Quốc Gia: Mỹ&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành lập: năm 1974&lt;/p&gt;\r\n&lt;p&gt;\r\n	Website: &lt;a href=&quot;http://www.lesportsa.com/&quot;&gt;www.lesportsa.com&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sản phẩm của công ty bao gồm đầy đủ các loại túi xách, va li, ví cầm tay,&amp;hellip;dành cho mọi khách hàng. Các dòng sản phẩm được thiết kế đa dạng phục vụ mọi nhu cầu khách hàng, như tươi tắn trẻ trung và phong cách với những họa tiết đẹp mắt, màu sắc hiện đại là sản phẩm dành cho các cô gái trẻ. Với các quý ông thì lịch lãm sang trọng, với thanh thiếu niên thì năng động hiện đại. LeSportsac là sự lựa chọn hoàn hảo cho tất cả mọi người.&lt;/p&gt;', '&lt;p&gt;\r\n	Quốc Gia: Mỹ&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;Thành lập: năm 1974&lt;/span&gt;&lt;span style=&quot;line-height: 1.5em;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;line-height: 1.5em;&quot;&gt;Website: &lt;/span&gt;&lt;a href=&quot;http://www.lesportsa.com/&quot; style=&quot;line-height: 1.5em;&quot;&gt;www.lesportsa.com&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;strong&gt;LeSportsac&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	được xây dựng vào năm 1974, là thương hiệu túi xách nổi tiếng do Melvin và Sandy Schifter sáng lập, khởi nguồn từ anime Nhật Bản. Sản phẩm của LeSportsac được bày bán ở hơn 60 quóc gia trên thế giới thông qua các nhà phân phối độc quyền tại Châu Á, Châu Âu, Nam Mỹ, Trung Đông&amp;hellip;cùng với hệ thống bản lẻ ở nhiều thành phố.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sản phẩm của công ty bao gồm đầy đủ các loại túi xách, va li, ví cầm tay,&amp;hellip;dành cho mọi khách hàng. Các dòng sản phẩm được thiết kế đa dạng phục vụ mọi nhu cầu khách hàng, như tươi tắn trẻ trung và phong cách với những họa tiết đẹp mắt, màu sắc hiện đại là sản phẩm dành cho các cô gái trẻ. Với các quý ông thì lịch lãm sang trọng, với thanh thiếu niên thì năng động hiện đại. LeSportsac là sự lựa chọn hoàn hảo cho tất cả mọi người.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/LeSortsac_1.jpg&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thương hiệu LeSportsac cũng phối hợp với nhiều tên tuổi danh tiếng trong làng tời trang như Lilly Pulitzer, Diane Von Furstenberg, Jonathan Adler, J. Mendel..để cho ra đời các bộ sưu tập thời trang đầy cuốn hút,&amp;nbsp; và là sản phẩm tín nhiệm của nhiều ngôi sao như JiYoung, Gwen Stefani...&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;images/autosize-700x700/upload/LeSortsac_2.jpg&quot; /&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (31, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (32, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (33, 'vn', '', '', '', '');
INSERT INTO `product_manufacturer_description` VALUES (21, 'vn', '&lt;p&gt;\r\n	Quốc Gia: Mỹ&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành lập: năm 1986&lt;/p&gt;\r\n&lt;p&gt;\r\n	Người sáng lập: Marc Jacobs&lt;/p&gt;\r\n&lt;p&gt;\r\n	Website: &lt;a href=&quot;http://www.marcjacobs.com/&quot;&gt;www.marcjacobs.com&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành công vang dội của thương hiệu mang tên mình Marc Jacobs, ông tiếp tục tung ra dòng sản phẩm thứ hai với tên gọi Marc by Marc Jacobs. Túi xách Marc by Marc Jacobs với thiết kế đột phá, mang phong thái trẻ trung cá tính, dành cho giới trẻ sành điệu. Đây là một bước tiến của nhà thiết kế Marc Jacobs lừng danh nhằm mở rộng thị trường cho thương hiệu mang tên mình đến với giới trẻ yêu thích thời trang.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;strong&gt;Marc Jacobs&lt;/strong&gt;&lt;/span&gt;&amp;nbsp;(sinh ngày 9 tháng 4 năm 1963) là một nhà thiết kế thời trang nổi tiếng người Mỹ. Ông là trưởng ban thiết kế của nhãn hiệu&amp;nbsp;Marc Jacobs, cũng như của dòng sản phẩm&amp;nbsp;Marc by Marc Jacobs. Hiện nay ông là giám đốc thiết kế của hãng thời trang&amp;nbsp;&lt;a href=&quot;http://vi.wikipedia.org/wiki/Ph%C3%A1p&quot; title=&quot;Pháp&quot;&gt;Pháp&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;http://vi.wikipedia.org/wiki/Louis_Vuitton&quot; title=&quot;Louis Vuitton&quot;&gt;Louis Vuitton&lt;/a&gt;&amp;nbsp;danh tiếng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành công vang dội của thương hiệu mang tên mình Marc Jacobs, ông tiếp tục tung ra dòng sản phẩm thứ hai với tên gọi Marc by Marc Jacobs. Túi xách Marc by Marc Jacobs với thiết kế đột phá, mang phong thái trẻ trung cá tính, dành cho giới trẻ sành điệu. Đây là một bước tiến của nhà thiết kế Marc Jacobs lừng danh nhằm mở rộng thị trường cho thương hiệu mang tên mình đến với giới trẻ yêu thích thời trang.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Túi xách Marc Jacobs được thiết kế ấn tượng với đẳng cấp cao, thì Marc by Marc Jacobs lại như một nét chấm phá mang phong cách tươi trẻ, và sành điệu cho làng thời trang thế giới.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thương hiệu Marc by Marc Jacobs được sản xuất bởi tập đoàn Safilo.&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/marc_jacobs.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (22, 'vn', '&lt;p&gt;\r\n	Quốc Gia: Ý&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành lập: năm 1977&lt;/p&gt;\r\n&lt;p&gt;\r\n	Người sáng lập: Paolo Trent; Piero Mannato&lt;/p&gt;\r\n&lt;p&gt;\r\n	Website: &lt;a href=&quot;http://www.mandarinaduck.com/&quot;&gt;www.mandarinaduck.com&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm 1977, Mandarina Duck của Ý được thành lập. Vào lúc đó thị trường sản phẩm hầu như chỉ ưa chuộng các kiểu dáng kinh điển hoặc có màu trắng đen, nhưng riêng Mandarina Duck đã thách thức với các kiều dáng thiết kế màu sắc, và đột phá với chất liệu sản phẩm thường hay sử dụng, đó chính là sự&amp;nbsp; cải cách lớn của thương hiệu. Với các mẫu mã sáng tạo màu sắc tươi tắn và giản dị, không thiếu trí tưởng phong phú, đả khiến thương hiệu dễ nhận biết hơn khi cùng trong hàng loạt sản phẩm khác.&lt;/p&gt;', '&lt;p&gt;\r\n	&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &#039;Times New Roman&#039;; font-size: medium; line-height: normal;&quot;&gt;Năm 1977, &lt;span style=&quot;font-size:18px;&quot;&gt;&lt;strong&gt;Mandarina Duck&lt;/strong&gt;&lt;/span&gt; của Ý được thành lập. Vào lúc đó thị trường sản phẩm hầu như chỉ ưa chuộng các kiểu dáng kinh điển hoặc có màu trắng đen, nhưng riêng Mandarina Duck đã thách thức với các kiều dáng thiết kế màu sắc, và đột phá với chất liệu sản phẩm thường hay sử dụng, đó chính là sự&amp;nbsp; cải cách lớn của thương hiệu. Với các mẫu mã sáng tạo màu sắc tươi tắn và giản dị, không thiếu trí tưởng phong phú, đả khiến thương hiệu dễ nhận biết hơn khi cùng trong hàng loạt sản phẩm khác.&lt;/span&gt;&lt;/p&gt;', '', '');
INSERT INTO `product_manufacturer_description` VALUES (23, 'vn', '&lt;p&gt;\r\n	Quốc Gia: Nước Ý&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thành lập: năm 1913&lt;/p&gt;\r\n&lt;p&gt;\r\n	Người sáng lập : Mario Prada&lt;/p&gt;\r\n&lt;p&gt;\r\n	Designer: năm 1913 MarioPrada; bắc đầu từ thập niên 70 MiucciaPrada&lt;/p&gt;\r\n&lt;p&gt;\r\n	Website: &lt;a href=&quot;http://www.prada.com/&quot;&gt;www.prada.com&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Trên sàn catwalk: Prada, cùng với Calvin Klein và Gucci, được biết đến với việc sử dụng các người mẫu mới có tài năng từ đó mở ra sự nghiệp cho họ. Vị trí người mẫu độc quyền của Prada là một vị trsi rất danh giá trong giới người mẫu. Các người mẫu của hãng gồm có Daria Werbowy, Gemma Ward, Suvi Koponen và Sasha Pivovarova những người đã xuất hiện trong sáu mùa quảng cáo liên tiếp của Prada vào show diễn Fall 2005.&lt;/p&gt;', '&lt;p&gt;\r\n	Công ty được thành lập vào năm 1913 bởi Mario Prada và anh trai Martino tại Milan, Ý. Ban đầu các cửa hàng bán đồ da.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Mario Prada không tin rằng phụ nữ có thể kinh doanh do đó ông ngăn cản việc các người phụ nữ trong gia đình tham gia vào công việc của công ty. Nhưng con trai ông không có tài kinh doanh nên người kế nghiệm của Prada là con gái của ông Luisa Prada và đã điều hành công ty trong vòng 20 năm. Con gái riêng của cô, Miuccia Prada vào làm cho Prada và thay thế vị trí của mẹ mình vào năm 1978.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Miuccia gặp Patrizio Bertelli vào năm 1977 một người Ý làm trong kĩnh vực kinh doanh đồ da ở tuổi 17, sau đó ông cũng gia nhập công ty. Ông là người đã đưa ra lời khuyên với Miuccia nên dừng nhập khẩu da từ anh và thay đổi phong cách hiện có.&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/buying-vintage-prada.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Prada đi lên đỉnh cao của thời trang:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Miuccia thừa kế công ty vào năm 1978 lúc đó doanh số bán hàng đã lên đến 450.000 USD. Cùng với Bertelli làm quản lý kinh doanh, Miuccia đã cho những ý tưởng của mình vào trong các bộ sưu tập của hãng. Bà cho ra đời bộ sưu tập của mình gồm có balo và túi xách, nó không được thành công như mong đợi do quảng cáo ít và có giá quá cao, nhưng đây cũng có thể coi là những bước đầu trong sự thành công trong thương mại của hãng về sau này.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Sau đó, Miuccia và Bertelli tìm ra các địa chỉ bán buôn cho túi xách trong các của hàng bách hóa cao cấp và các cửa hàng thời trang trên thế giới. Vào năm 1983, Prada mở cửa hàng thứ hai tại Milan, cửa hàng này được đặt trong khu Galleria Vittorio Emanuele II.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm sau, Prada cho ra mắt thêm các mẫu túi chất liệu nylon có màu đen đặc trưng của hãng. Cùng năm đó, ngôi nhà Prada được mở rộng ra khắp các nơi trên khắp châu Âu bằng sự có mặt của mình tại các khu mua sắm của các thành phố Paris, Madrid và sau đó là sang New York. Một bộ sưu tập giày cũng được ra mắt vào năm 1884.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm 1885, Miuccia phát hành &amp;quot;Túi xách Prada cổ điển&amp;quot;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm 1987, Miuccia và Bertelli kết hôn, Miuccia cho ra mắt bộ sưu tập quần áo may sẵn cho nữ lần đầu tiên vào năm 1989.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Thập niên 1990: Thời trang Prada trở thành một trong những nhãn hiệu thời trang cao cấp, các sản phẩn của hãng hều hết đều sử dụng loại vải cao cấp sang trọng với những màu chủ đạo chính là đen, nâu, xám, và màu kem.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Doanh số bán hàng của hãng đạt được 31,7 triệu đô ở Mỹ vào năm 1990. Partrizio di Marco trở thành người phụ trách phát triển kinh doanh tại Hoa Kỳ sau khi làm việc cho các cửa hàng của Prada tại châu Á, ông đã đem lại nhiều thành công cho công ty.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm 1992, Miuccia thành lập nhãn hiệu Miu Miu. Miu MIu chủ yếu phục phụ cho đối tượng người tiêu dùng trẻ, hay những người nổi tiếng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đến năm 1993, Prada được Hội đồng thiết kế thời trang Mỹ trao tặng giải thưởng cho các phụ kiện của hãng.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Bộ sưu tập thời trang may sẵn dành cho đàn ông được ra mắt vào giữa những năm 1990 và 1994. Doanh số bán hàng đạt 210 triệu USD, với doanh số bán các bộ trang phục tăng đến 20% (dự kiến tăng gấp đôi vào năm 1995).&lt;/p&gt;\r\n&lt;p&gt;\r\n	Prada dành một giải thưởng của CDFA vào năm 1995 đó là giải &amp;quot;Thiết kế của năm&amp;quot;. Năm 1996 Nhãn hiệu này đã mở của hàng rộng 18,000 ft&amp;sup2; tại Manhattan, New York, cửa hàng lớn nhất từ trước tới nay. Đến nay Prada có 40 điểm bán hàng trên khắp thế giới, trong đó có 20 cửa hàng nằm tại Nhật Bản.Miuccia Prada và công ty của Bertelli được sáp nhập để tạo thành Prapar BV vào năm 1996, tuy nhiên, sau đó được thay đổi thành Prada Patrizio Bertelli BV.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm 1997, Prada đăng doanh thu tại Mỹ đạt 674 triệu USD. Một cửa hàng được mở thêm ở Milan vào năm đó. Theo Wall Street Journal, Bertelli đập vỡ các cửa sổ của cửa hàng một ngày trước khi khai trương sau khi ông không hài lòng với các thiết kế của Prada. Ông cũng mua cổ phiếu của Gucci sau đó lại đổ lỗi cho Gucci &amp;quot;bắt chước kiểu dáng của vợ&amp;quot;.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm 1998, Prada mở cửa hàng dành cho nam đầu tiên ở Los Angeles.&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center&quot;&gt;\r\n	&lt;img alt=&quot;&quot; height=&quot;auto&quot; src=&quot;images/autosize-700x700/upload/Prada_HERO.jpg&quot; width=&quot;auto&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Một cái nhìn mới ở thế kỷ 21&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	Cuối thập niên 90 Prada bắt đầu rơi vào các khoản nợ với các công ty thời trang khác.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Năm 2001 doanh số bán hàng chỉ tăng 295 triệu USD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Đến năm 2006, Helmut Lang, Amy Fairclough, Jil Sander vốn thuộc sở hữu của Prada vào những năm cuối của thập niên 90 được bán. Jil Sander đã được bán cho công ty tư nhân Change Capital Partners.Theo Fortune, Betelli kế hoạch tăng doanh thu của công ty đến 5 tỷ USD vào năm 2010. Prada vẫn cố giảm mức lương phải chi trả cho các công nhân của mình bằng cách sử dụng người lao động đế từ Trung Quốc.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Prada hiện tại:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp; Trên sàn catwalk: Prada, cùng với Calvin Klein và Gucci, được biết đến với việc sử dụng các người mẫu mới có tài năng từ đó mở ra sự nghiệp cho họ. Vị trí người mẫu độc quyền của Prada là một vị trsi rất danh giá trong giới người mẫu. Các người mẫu của hãng gồm có Daria Werbowy, Gemma Ward, Suvi Koponen và Sasha Pivovarova những người đã xuất hiện trong sáu mùa quảng cáo liên tiếp của Prada vào show diễn Fall 2005.&lt;/p&gt;', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `product_option`
-- 

CREATE TABLE `product_option` (
  `product_option_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `optionid` bigint(20) NOT NULL,
  `option_value` text collate utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY  (`product_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_option`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_option_value`
-- 

CREATE TABLE `product_option_value` (
  `product_option_value_id` bigint(20) NOT NULL auto_increment,
  `product_option_id` bigint(20) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `optionid` bigint(20) NOT NULL,
  `option_value_id` bigint(20) NOT NULL,
  `option_value_name` text collate utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` double NOT NULL,
  `price_prefix` varchar(10) collate utf8_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `points_prefix` varchar(10) collate utf8_unicode_ci NOT NULL,
  `weight` double NOT NULL,
  `weight_prefix` varchar(10) collate utf8_unicode_ci NOT NULL,
  `image` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`product_option_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_option_value`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_reward`
-- 

CREATE TABLE `product_reward` (
  `product_reward_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `customer_group_id` bigint(20) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY  (`product_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_reward`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_site`
-- 

CREATE TABLE `product_site` (
  `productid` bigint(20) NOT NULL,
  `siteid` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 
-- Dumping data for table `product_site`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `product_special`
-- 

CREATE TABLE `product_special` (
  `product_special_id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `usertypeid` varchar(20) collate utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `price` double NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  PRIMARY KEY  (`product_special_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `product_special`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `receivedemail`
-- 

CREATE TABLE `receivedemail` (
  `id` bigint(20) NOT NULL auto_increment,
  `email` text NOT NULL,
  `fullname` text NOT NULL,
  `registereddate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `receivedemail`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `sidebar`
-- 

CREATE TABLE `sidebar` (
  `sidebarid` bigint(20) NOT NULL auto_increment,
  `sidebar_name` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`sidebarid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `sidebar`
-- 

INSERT INTO `sidebar` VALUES (1, 'sidebar left');
INSERT INTO `sidebar` VALUES (5, 'sidebar right');
INSERT INTO `sidebar` VALUES (6, 'sidebarmanufacturer');

-- --------------------------------------------------------

-- 
-- Table structure for table `sidebar_addon`
-- 

CREATE TABLE `sidebar_addon` (
  `id` bigint(20) NOT NULL auto_increment,
  `addonid` bigint(20) NOT NULL,
  `sidebarid` bigint(20) NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `sidebar_addon`
-- 

INSERT INTO `sidebar_addon` VALUES (4, 3, 1, 2);
INSERT INTO `sidebar_addon` VALUES (5, 26, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `site`
-- 

CREATE TABLE `site` (
  `id` bigint(10) NOT NULL auto_increment,
  `siteid` varchar(30) NOT NULL,
  `slogan` text NOT NULL,
  `logo` text NOT NULL,
  `symbol` text NOT NULL,
  `imageyahoo` text NOT NULL,
  `imageskype` text NOT NULL,
  `currency` varchar(20) NOT NULL,
  `contactemail` text NOT NULL,
  `sitename` varchar(100) NOT NULL,
  `siteurl` text NOT NULL,
  `language` varchar(20) NOT NULL,
  `pagetopic` text NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `googleanalytics` text NOT NULL,
  `skinid` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `exchange_point` double NOT NULL,
  `shoppinglogin` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `site`
-- 

INSERT INTO `site` VALUES (1, 'default', 'Fan hàng hiệu', 'upload/logo.png', 'upload/logo.png', '', '', 'vnd, usd', 'dat.tran@elifepartners.com', 'Fan Hàng Hiệu', 'http://www.fanhanghieu.com/', 'vn', '', '', '', '', 'fanhanghieu', 'Active', 1000, 'required');

-- --------------------------------------------------------

-- 
-- Table structure for table `sitemap`
-- 

CREATE TABLE `sitemap` (
  `sitemapid` bigint(20) NOT NULL auto_increment,
  `siteid` varchar(30) NOT NULL,
  `sitemapparent` varchar(50) default NULL,
  `seo_url` varchar(100) NOT NULL,
  `position` int(11) default NULL,
  `moduleid` varchar(100) default NULL,
  `imageid` bigint(20) NOT NULL,
  `imagepath` text NOT NULL,
  `hyperlink` text NOT NULL,
  `top_mainmenu` tinyint(1) NOT NULL,
  `top_footermenu` tinyint(1) NOT NULL,
  `layoutid` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY  (`sitemapid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `sitemap`
-- 

INSERT INTO `sitemap` VALUES (1, 'default', '', 'trang-chu', 1, 'module/homepage', 0, '', '', 0, 0, 'homepage', 0);
INSERT INTO `sitemap` VALUES (2, 'default', '', 'hang-moi', 2, 'module/productbytag', 0, '', '', 1, 0, 'product', 1);
INSERT INTO `sitemap` VALUES (3, 'default', '', 'thoi-trang-nam', 4, 'module/product', 0, '', '', 1, 0, 'product', 1);
INSERT INTO `sitemap` VALUES (4, 'default', '', 'thoi-trang-nu', 3, 'module/product', 0, '', '', 1, 0, 'product', 1);
INSERT INTO `sitemap` VALUES (5, 'default', '', 'hang-dat', 5, 'module/productbytag', 0, '', '', 1, 0, 'product', 1);
INSERT INTO `sitemap` VALUES (6, 'default', '', 'uu-dai-dac-biet', 6, 'module/news', 0, '', '', 1, 0, 'info', 1);
INSERT INTO `sitemap` VALUES (7, 'default', '', 'dac-khu-fan', 7, 'module/information', 0, '', '', 1, 0, 'info', 1);
INSERT INTO `sitemap` VALUES (8, 'default', '', 'tin-tuc', 8, 'module/news', 0, '', '', 1, 0, 'info', 1);
INSERT INTO `sitemap` VALUES (9, 'default', '', 'ho-tro-huong-dan', 9, 'module/faq', 0, '', '', 1, 0, 'info', 1);
INSERT INTO `sitemap` VALUES (10, 'default', '', 'lien-he', 10, 'module/contactmap', 0, '', '', 1, 0, 'default', 1);
INSERT INTO `sitemap` VALUES (11, 'default', '', 'thuong-hieu-san-pham', 11, 'module/productbymanufacturer', 0, '', '', 0, 0, 'product', 0);
INSERT INTO `sitemap` VALUES (20, 'default', '', 'tim-kiem', 19, 'module/advancesearch', 0, '', '', 0, 0, 'info', 0);
INSERT INTO `sitemap` VALUES (14, 'default', '', 'tu-thien', 13, 'module/information', 0, '', '', 0, 0, 'info', 1);
INSERT INTO `sitemap` VALUES (15, 'default', '', 'thuong-hieu', 14, 'product/manufacturer', 0, '', '', 0, 0, 'info', 0);
INSERT INTO `sitemap` VALUES (16, 'default', '', 'dang-nhap', 15, 'module/login', 0, '', '', 0, 0, 'default', 0);
INSERT INTO `sitemap` VALUES (17, 'default', '', 'tai-khoan', 16, 'module/profile', 0, '', '', 0, 0, 'default', 1);
INSERT INTO `sitemap` VALUES (18, 'default', '', 'lich-su-don-hang', 17, 'module/cartmember', 0, '', '', 0, 0, 'default', 0);
INSERT INTO `sitemap` VALUES (19, 'default', '', 'gio-hang', 18, 'module/smartcart', 0, '', '', 0, 0, 'default', 0);
INSERT INTO `sitemap` VALUES (21, 'default', '', 'thanh-toan', 20, 'module/payment', 0, '', '', 0, 0, 'default', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `sitemap_description`
-- 

CREATE TABLE `sitemap_description` (
  `sitemapid` int(11) NOT NULL,
  `languageid` varchar(50) NOT NULL,
  `sitemapname` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  PRIMARY KEY  (`sitemapid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `sitemap_description`
-- 

INSERT INTO `sitemap_description` VALUES (1, 'vn', 'Trang chủ', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (2, 'vn', 'Hàng mới', 'hang moi', '', '', '');
INSERT INTO `sitemap_description` VALUES (3, 'vn', 'Thời trang nam', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (4, 'vn', 'Thời trang nữ', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (5, 'vn', 'Hàng đặt', 'hang dat', '', '', '');
INSERT INTO `sitemap_description` VALUES (6, 'vn', 'Ưu đãi đặc biệt', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (7, 'vn', 'Đặc khu fan', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (8, 'vn', 'Tin tức', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (9, 'vn', 'Hỗ trợ &amp; hướng dẫn', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (10, 'vn', 'Liên hệ', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (11, 'vn', 'Thương hiệu sản phẩm', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (20, 'vn', 'Tìm kiếm', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (14, 'vn', 'Từ thiện chung một tấm lòng', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (15, 'vn', 'Thương hiệu', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (16, 'vn', 'Đăng nhập', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (17, 'vn', 'Tài khoản', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (18, 'vn', 'Lịch sử đơn hàng', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (19, 'vn', 'Giỏ hàng', '', '', '', '');
INSERT INTO `sitemap_description` VALUES (21, 'vn', 'Thanh toán', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `support`
-- 

CREATE TABLE `support` (
  `supportid` bigint(20) NOT NULL auto_increment,
  `addonid` varchar(250) NOT NULL,
  `telephone` varchar(250) NOT NULL,
  `skype` text NOT NULL,
  `yahoo` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`supportid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `support`
-- 

INSERT INTO `support` VALUES (3, 'supportonline', '0937 280 284 - 0905 662 552', 'hatomex_lx', 'hatomex_lx', 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `support_description`
-- 

CREATE TABLE `support_description` (
  `supportid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`supportid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `support_description`
-- 

INSERT INTO `support_description` VALUES (3, 'vn', 'Nhân viên kinh doanh', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `tag`
-- 

CREATE TABLE `tag` (
  `sitemapid` bigint(20) NOT NULL,
  `key` text NOT NULL,
  `count` int(11) NOT NULL,
  `language` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `tag`
-- 

INSERT INTO `tag` VALUES (4, 'hang moi', 2, 'vn');
INSERT INTO `tag` VALUES (4, 'hang dat', 2, 'vn');
INSERT INTO `tag` VALUES (3, 'hang dat', 3, 'vn');

-- --------------------------------------------------------

-- 
-- Table structure for table `url_alias`
-- 

CREATE TABLE `url_alias` (
  `url_alias_id` int(11) NOT NULL auto_increment,
  `object` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `keyword` text NOT NULL,
  PRIMARY KEY  (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=324 ;

-- 
-- Dumping data for table `url_alias`
-- 

INSERT INTO `url_alias` VALUES (1, 'sitemap', '1', 'trang-chu');
INSERT INTO `url_alias` VALUES (2, 'sitemap', '2', 'hang-moi');
INSERT INTO `url_alias` VALUES (3, 'sitemap', '3', 'thoi-trang-nam');
INSERT INTO `url_alias` VALUES (4, 'sitemap', '4', 'thoi-trang-nu');
INSERT INTO `url_alias` VALUES (5, 'sitemap', '5', 'hang-dat');
INSERT INTO `url_alias` VALUES (6, 'sitemap', '6', 'uu-dai-dac-biet');
INSERT INTO `url_alias` VALUES (7, 'sitemap', '7', 'dac-khu-fan');
INSERT INTO `url_alias` VALUES (8, 'sitemap', '8', 'tin-tuc');
INSERT INTO `url_alias` VALUES (9, 'sitemap', '9', 'ho-tro-huong-dan');
INSERT INTO `url_alias` VALUES (10, 'sitemap', '10', 'lien-he');
INSERT INTO `url_alias` VALUES (113, 'product', '1', 'bowling-bag');
INSERT INTO `url_alias` VALUES (110, 'product', '2', 'jeans-armani');
INSERT INTO `url_alias` VALUES (111, 'product', '3', 'vintage-effect-regular-fit-jeans');
INSERT INTO `url_alias` VALUES (112, 'product', '4', 'ao-cong-so-han-quoc-loai-xanh');
INSERT INTO `url_alias` VALUES (32, 'product', '5', 'ao-thun-nam-hieu-han-quoc');
INSERT INTO `url_alias` VALUES (114, 'product', '6', 'tui-xach-nua-hang-hieu-voi-yves');
INSERT INTO `url_alias` VALUES (47, 'product', '7', 'ao-thun-nam-abercrombie-trang');
INSERT INTO `url_alias` VALUES (46, 'product', '8', 'poloabercrombie');
INSERT INTO `url_alias` VALUES (48, 'product', '9', 'tui-xach-loai-xam-ca-tinh-hon');
INSERT INTO `url_alias` VALUES (50, 'product', '10', 'tui-xach-tay-cao-cap-my-hang');
INSERT INTO `url_alias` VALUES (53, 'product', '11', 'ao-cong-so-trang');
INSERT INTO `url_alias` VALUES (54, 'product', '12', 'viettien-ao-so-mi-den-thanh-lich');
INSERT INTO `url_alias` VALUES (56, 'product', '13', 'edge-black-sang-trong');
INSERT INTO `url_alias` VALUES (57, 'sitemap', '11', 'thuong-hieu-san-pham');
INSERT INTO `url_alias` VALUES (322, 'manufacturer', '9', 'thuong-hieu-adidas');
INSERT INTO `url_alias` VALUES (60, 'media', 'default13840032411', 'Miss-Universe-va-nhung-su-lua-chon-ky-la');
INSERT INTO `url_alias` VALUES (61, 'media', 'default13840233351', 'cung-emspo-ve-mien-ky-uc');
INSERT INTO `url_alias` VALUES (62, 'sitemap', '14', 'tu-thien');
INSERT INTO `url_alias` VALUES (63, 'media', 'default13840582881', 'doan-tu-thien-minh-tam');
INSERT INTO `url_alias` VALUES (64, 'media', 'default13840672441', 'gu-thoi-trang-that-thuong-cua-mai-phuong-thuy');
INSERT INTO `url_alias` VALUES (65, 'media', 'default13840705101', '');
INSERT INTO `url_alias` VALUES (66, 'media', 'default13840706131', '');
INSERT INTO `url_alias` VALUES (67, 'media', 'default13840706491', '');
INSERT INTO `url_alias` VALUES (68, 'sitemap', '15', 'thuong-hieu');
INSERT INTO `url_alias` VALUES (163, 'manufacturer', '1', 'thuong-hieu-armani');
INSERT INTO `url_alias` VALUES (95, 'manufacturer', '2', 'thuong-hieu-edc');
INSERT INTO `url_alias` VALUES (96, 'manufacturer', '3', 'thuong-hieu-good');
INSERT INTO `url_alias` VALUES (97, 'manufacturer', '4', 'thuong-hieu-polo');
INSERT INTO `url_alias` VALUES (179, 'manufacturer', '5', 'thuong-hieu-tommy-hilfiger');
INSERT INTO `url_alias` VALUES (170, 'manufacturer', '6', 'thuong-hieu-eddie-bauer');
INSERT INTO `url_alias` VALUES (100, 'manufacturer', '8', 'thuong-hieu-express');
INSERT INTO `url_alias` VALUES (99, 'manufacturer', '7', 'thuong-hieu-eneugie');
INSERT INTO `url_alias` VALUES (83, 'sitemap', '16', 'dang-nhap');
INSERT INTO `url_alias` VALUES (84, 'sitemap', '17', 'tai-khoan');
INSERT INTO `url_alias` VALUES (85, 'sitemap', '18', 'lich-su-don-hang');
INSERT INTO `url_alias` VALUES (86, 'sitemap', '19', 'gio-hang');
INSERT INTO `url_alias` VALUES (116, 'product', '14', 'ao-dau-adidas');
INSERT INTO `url_alias` VALUES (106, 'sitemap', '20', 'tim-kiem');
INSERT INTO `url_alias` VALUES (118, 'sitemap', '21', 'thanh-toan');
INSERT INTO `url_alias` VALUES (235, 'product', '15', 'dam-express');
INSERT INTO `url_alias` VALUES (297, 'manufacturer', '10', 'thuong-hieu-guess');
INSERT INTO `url_alias` VALUES (230, 'product', '16', 'ao-from-dai-guess');
INSERT INTO `url_alias` VALUES (217, 'manufacturer', '11', 'thuong-hieu-simon-bunco');
INSERT INTO `url_alias` VALUES (298, 'manufacturer', '12', 'thuong-hieu-cyell');
INSERT INTO `url_alias` VALUES (300, 'manufacturer', '13', 'thuong-hieu-Forever21');
INSERT INTO `url_alias` VALUES (233, 'product', '17', 'ao-from-dai-dau-lau-s-b');
INSERT INTO `url_alias` VALUES (301, 'manufacturer', '14', 'thuong-hieu-izzue');
INSERT INTO `url_alias` VALUES (234, 'product', '18', 'dam-trang-trinh-khiet-cyell');
INSERT INTO `url_alias` VALUES (302, 'manufacturer', '15', 'thuong-hieu-J.crew');
INSERT INTO `url_alias` VALUES (237, 'product', '19', 'dam-kieu-han-luoi-lung');
INSERT INTO `url_alias` VALUES (137, 'product', '20', 'dam-kieu-han-caro-vai-mong');
INSERT INTO `url_alias` VALUES (209, 'manufacturer', '16', 'thuong-hieu-kama-classic-jeans');
INSERT INTO `url_alias` VALUES (211, 'manufacturer', '17', 'thuong-hieu-rh-by-robinhood');
INSERT INTO `url_alias` VALUES (238, 'product', '21', 'dam-izzue');
INSERT INTO `url_alias` VALUES (304, 'manufacturer', '18', 'thuong-hieu-yessica');
INSERT INTO `url_alias` VALUES (240, 'product', '22', 'dam-thue-bong');
INSERT INTO `url_alias` VALUES (294, 'manufacturer', '19', 'thuong-hieu-calvin-klein');
INSERT INTO `url_alias` VALUES (241, 'product', '23', 'dam-thun-j-crew');
INSERT INTO `url_alias` VALUES (243, 'product', '24', 'dam-caro-tay-dai-jeans-kama');
INSERT INTO `url_alias` VALUES (305, 'manufacturer', '20', 'thuong-hieu-lesportsac');
INSERT INTO `url_alias` VALUES (247, 'product', '25', 'dam-jeans-rh-by-robinhood');
INSERT INTO `url_alias` VALUES (306, 'manufacturer', '21', 'thuong-hieu-marc-by-marc-jacobs');
INSERT INTO `url_alias` VALUES (307, 'manufacturer', '22', 'thuong-hieu-mandarina-duck');
INSERT INTO `url_alias` VALUES (248, 'product', '26', 'dam-yessica');
INSERT INTO `url_alias` VALUES (313, 'manufacturer', '23', 'thuong-hieu-prada');
INSERT INTO `url_alias` VALUES (321, 'manufacturer', '24', 'thuong-hieu-rebeccaminkoff');
INSERT INTO `url_alias` VALUES (317, 'manufacturer', '25', 'thuong-hieu-skap');
INSERT INTO `url_alias` VALUES (319, 'manufacturer', '26', 'thuong-hieu-swiss grear');
INSERT INTO `url_alias` VALUES (161, 'manufacturer', '27', 'test');
INSERT INTO `url_alias` VALUES (250, 'product', '27', 'balo-latop-ck');
INSERT INTO `url_alias` VALUES (311, 'manufacturer', '28', 'thuong-hieu-champion');
INSERT INTO `url_alias` VALUES (312, 'manufacturer', '29', 'thuong-hieu-diesel');
INSERT INTO `url_alias` VALUES (255, 'product', '28', 'balo-lesportsac-xinh-xan');
INSERT INTO `url_alias` VALUES (257, 'product', '29', 'vi-nu-bong-noi-marc-by-marc-jacons');
INSERT INTO `url_alias` VALUES (260, 'product', '30', 'ba-lo-dao-pho-mandarina-duck');
INSERT INTO `url_alias` VALUES (263, 'product', '31', 'ao-thi-dau-adidas');
INSERT INTO `url_alias` VALUES (262, 'product', '32', 'ba-lo-tien-dung-mandarina-duck');
INSERT INTO `url_alias` VALUES (264, 'product', '33', 'mat-kinh-hot-prada');
INSERT INTO `url_alias` VALUES (261, 'product', '34', 'ao-thun-nam-champion');
INSERT INTO `url_alias` VALUES (265, 'product', '35', 'tui-xach-nu-hien-dai-rebecca-minkoff');
INSERT INTO `url_alias` VALUES (267, 'product', '36', 'vi-nam-phong-do-skap');
INSERT INTO `url_alias` VALUES (269, 'product', '37', 'ba-lo-da-nang-swiss-gear');
INSERT INTO `url_alias` VALUES (266, 'product', '38', 'ao-so-mi-nam-armani');
INSERT INTO `url_alias` VALUES (268, 'product', '39', 'ao-so-mi-tay-ngan-ck');
INSERT INTO `url_alias` VALUES (270, 'product', '40', 'ao-so-mi-tay-dai-ck');
INSERT INTO `url_alias` VALUES (271, 'product', '41', 'ao-so-mi-tay-ngan-diesel');
INSERT INTO `url_alias` VALUES (272, 'product', '42', 'ao-so-mi-tay-dai-guess');
INSERT INTO `url_alias` VALUES (273, 'product', '43', 'ao-so-mi-tay-ngan-tommy');
INSERT INTO `url_alias` VALUES (193, 'manufacturer', '30', 'thuong-hieu-geben');
INSERT INTO `url_alias` VALUES (274, 'product', '44', 'ao-so-mi-tay-dai-geben');
INSERT INTO `url_alias` VALUES (275, 'product', '45', 'ao-gio-geben');
INSERT INTO `url_alias` VALUES (276, 'product', '46', 'ao-tay-dai-geben');
INSERT INTO `url_alias` VALUES (277, 'product', '47', 'ao--lo-geben');
INSERT INTO `url_alias` VALUES (278, 'product', '48', 'ao-so-mi-tay-ngan-geben');
INSERT INTO `url_alias` VALUES (280, 'product', '49', 'ao-so-mi-tay-dai-geben-1');
INSERT INTO `url_alias` VALUES (281, 'product', '50', 'ao-thun-tay-ngan-geben');
INSERT INTO `url_alias` VALUES (282, 'product', '51', 'ao-thun-tay-dai');
INSERT INTO `url_alias` VALUES (283, 'product', '52', 'ao-thun-tay-dai-1');
INSERT INTO `url_alias` VALUES (285, 'product', '53', 'quan-kaki-geben');
INSERT INTO `url_alias` VALUES (286, 'product', '54', 'quan-kaki-geben-1');
INSERT INTO `url_alias` VALUES (259, 'product', '55', 'ao-thun-nam-ck');
INSERT INTO `url_alias` VALUES (258, 'product', '56', 'ao-thun-nam-ck-1');
INSERT INTO `url_alias` VALUES (256, 'product', '57', 'ao-thun-nam-diesel');
INSERT INTO `url_alias` VALUES (254, 'product', '58', 'ao-thun-nam-diesel-1');
INSERT INTO `url_alias` VALUES (253, 'product', '59', 'ao-thun-tay-dai-nam-edc');
INSERT INTO `url_alias` VALUES (225, 'product', '60', 'thoi-trang-nam-eddie-bauer');
INSERT INTO `url_alias` VALUES (229, 'product', '61', 'thoi-trang-nam-express');
INSERT INTO `url_alias` VALUES (236, 'product', '62', 'thoi-trang-nam-scotch-qcl');
INSERT INTO `url_alias` VALUES (320, 'manufacturer', '31', 'thuong-hieu-scotch&amp;qcl');
INSERT INTO `url_alias` VALUES (242, 'product', '63', 'thoi-trang-nam-guess');
INSERT INTO `url_alias` VALUES (314, 'manufacturer', '32', 'thuong-hieu-hackett');
INSERT INTO `url_alias` VALUES (316, 'manufacturer', '33', 'thuong-hieu-hugo');
INSERT INTO `url_alias` VALUES (249, 'product', '64', 'thoi-trang-nam-hackett');
INSERT INTO `url_alias` VALUES (251, 'product', '65', 'thoi-trang-nam-hugo');
INSERT INTO `url_alias` VALUES (252, 'product', '66', 'thoi-trang-nam-hugo-1');
INSERT INTO `url_alias` VALUES (323, 'product', '67', 'ten-test-dung');

-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
  `userid` varchar(50) NOT NULL,
  `usertypeid` varchar(20) NOT NULL,
  `username` text,
  `password` text,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `imageid` bigint(20) NOT NULL,
  `imagepath` text NOT NULL,
  `address` text NOT NULL,
  `provincecity` text NOT NULL,
  `country` text NOT NULL,
  `birthday` datetime NOT NULL,
  `phone` text NOT NULL,
  `activedate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `deleteddate` datetime NOT NULL,
  `activeby` varchar(50) NOT NULL,
  `updatedby` varchar(50) NOT NULL,
  `deletedby` varchar(50) NOT NULL,
  `userip` varchar(50) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` VALUES ('admin', 'admin', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Ben Solutions', 'tuan.pham@ben-solution.com', 'active', 45, '', 'asdasda', 'dasdsdasd', 'asdas', '2013-07-03 00:00:00', '0906009096999', '2009-12-02 14:34:41', '2013-04-16 17:15:31', '2009-12-02 14:52:10', '123', '1', '', 'fe80::9482:d8b:ac3a:c468');

-- --------------------------------------------------------

-- 
-- Table structure for table `usertype`
-- 

CREATE TABLE `usertype` (
  `id` bigint(20) NOT NULL auto_increment,
  `usertypeid` varchar(20) NOT NULL,
  `usertypename` text,
  `usertypeparent` varchar(20) NOT NULL,
  `permission` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `usertype`
-- 

INSERT INTO `usertype` VALUES (5, '0', 'User', '0', '');
INSERT INTO `usertype` VALUES (8, '0', 'User', '0', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `user_information`
-- 

CREATE TABLE `user_information` (
  `id` bigint(20) NOT NULL auto_increment,
  `userid` varchar(20) NOT NULL,
  `fieldname` varchar(20) NOT NULL,
  `fieldvalue` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `user_information`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `user_saleoff`
-- 

CREATE TABLE `user_saleoff` (
  `id` bigint(20) NOT NULL auto_increment,
  `productid` bigint(20) NOT NULL,
  `parentproduct` bigint(20) NOT NULL,
  `customername` text collate utf8_unicode_ci NOT NULL,
  `idcard` text collate utf8_unicode_ci NOT NULL,
  `phone` text collate utf8_unicode_ci NOT NULL,
  `address` text collate utf8_unicode_ci NOT NULL,
  `purchaseprice` double NOT NULL,
  `purchasedate` datetime NOT NULL,
  `email` text collate utf8_unicode_ci NOT NULL,
  `comment` text collate utf8_unicode_ci NOT NULL,
  `status` text collate utf8_unicode_ci NOT NULL,
  `province` text collate utf8_unicode_ci NOT NULL,
  `district` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `user_saleoff`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `user_stats`
-- 

CREATE TABLE `user_stats` (
  `id` bigint(20) NOT NULL auto_increment,
  `starttime` datetime NOT NULL,
  `sessionid` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `user_stats`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `weblink`
-- 

CREATE TABLE `weblink` (
  `weblinkid` bigint(20) NOT NULL auto_increment,
  `addonid` varchar(250) NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  PRIMARY KEY  (`weblinkid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `weblink`
-- 

INSERT INTO `weblink` VALUES (1, 'homesimpleslides', 'thuong-hieu-armani.html', 'upload/banner_main.png', 1);
INSERT INTO `weblink` VALUES (2, 'homesimpleslides', 'thuong-hieu-adidas.html', 'upload/adidas-banner.png', 1);
INSERT INTO `weblink` VALUES (3, 'edwinfadebanner', '', 'upload/banner_thuonghieu.png', 1);
INSERT INTO `weblink` VALUES (5, 'edwinfadebanner', '', 'upload/quality.jpg', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `weblink_description`
-- 

CREATE TABLE `weblink_description` (
  `weblinkid` bigint(20) NOT NULL,
  `languageid` varchar(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`weblinkid`,`languageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `weblink_description`
-- 

INSERT INTO `weblink_description` VALUES (1, 'vn', 'Thời trang Giorgio Armani', '');
INSERT INTO `weblink_description` VALUES (2, 'vn', 'Thời trang Adidas', '');
INSERT INTO `weblink_description` VALUES (3, 'vn', 'Thương hiệu 1', '');
INSERT INTO `weblink_description` VALUES (5, 'vn', 'Thuong hieu 2', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `zone`
-- 

CREATE TABLE `zone` (
  `zoneid` int(11) NOT NULL auto_increment,
  `countryid` int(11) NOT NULL default '0',
  `code` varchar(32) NOT NULL default '',
  `zonename` varchar(32) NOT NULL,
  PRIMARY KEY  (`zoneid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3842 ;

-- 
-- Dumping data for table `zone`
-- 

INSERT INTO `zone` VALUES (1, 1, 'BDS', 'Badakhshan');
INSERT INTO `zone` VALUES (2, 1, 'BDG', 'Badghis');
INSERT INTO `zone` VALUES (3, 1, 'BGL', 'Baghlan');
INSERT INTO `zone` VALUES (4, 1, 'BAL', 'Balkh');
INSERT INTO `zone` VALUES (5, 1, 'BAM', 'Bamian');
INSERT INTO `zone` VALUES (6, 1, 'FRA', 'Farah');
INSERT INTO `zone` VALUES (7, 1, 'FYB', 'Faryab');
INSERT INTO `zone` VALUES (8, 1, 'GHA', 'Ghazni');
INSERT INTO `zone` VALUES (9, 1, 'GHO', 'Ghowr');
INSERT INTO `zone` VALUES (10, 1, 'HEL', 'Helmand');
INSERT INTO `zone` VALUES (11, 1, 'HER', 'Herat');
INSERT INTO `zone` VALUES (12, 1, 'JOW', 'Jowzjan');
INSERT INTO `zone` VALUES (13, 1, 'KAB', 'Kabul');
INSERT INTO `zone` VALUES (14, 1, 'KAN', 'Kandahar');
INSERT INTO `zone` VALUES (15, 1, 'KAP', 'Kapisa');
INSERT INTO `zone` VALUES (16, 1, 'KHO', 'Khost');
INSERT INTO `zone` VALUES (17, 1, 'KNR', 'Konar');
INSERT INTO `zone` VALUES (18, 1, 'KDZ', 'Kondoz');
INSERT INTO `zone` VALUES (19, 1, 'LAG', 'Laghman');
INSERT INTO `zone` VALUES (20, 1, 'LOW', 'Lowgar');
INSERT INTO `zone` VALUES (21, 1, 'NAN', 'Nangrahar');
INSERT INTO `zone` VALUES (22, 1, 'NIM', 'Nimruz');
INSERT INTO `zone` VALUES (23, 1, 'NUR', 'Nurestan');
INSERT INTO `zone` VALUES (24, 1, 'ORU', 'Oruzgan');
INSERT INTO `zone` VALUES (25, 1, 'PIA', 'Paktia');
INSERT INTO `zone` VALUES (26, 1, 'PKA', 'Paktika');
INSERT INTO `zone` VALUES (27, 1, 'PAR', 'Parwan');
INSERT INTO `zone` VALUES (28, 1, 'SAM', 'Samangan');
INSERT INTO `zone` VALUES (29, 1, 'SAR', 'Sar-e Pol');
INSERT INTO `zone` VALUES (30, 1, 'TAK', 'Takhar');
INSERT INTO `zone` VALUES (31, 1, 'WAR', 'Wardak');
INSERT INTO `zone` VALUES (32, 1, 'ZAB', 'Zabol');
INSERT INTO `zone` VALUES (33, 2, 'BR', 'Berat');
INSERT INTO `zone` VALUES (34, 2, 'BU', 'Bulqize');
INSERT INTO `zone` VALUES (35, 2, 'DL', 'Delvine');
INSERT INTO `zone` VALUES (36, 2, 'DV', 'Devoll');
INSERT INTO `zone` VALUES (37, 2, 'DI', 'Diber');
INSERT INTO `zone` VALUES (38, 2, 'DR', 'Durres');
INSERT INTO `zone` VALUES (39, 2, 'EL', 'Elbasan');
INSERT INTO `zone` VALUES (40, 2, 'ER', 'Kolonje');
INSERT INTO `zone` VALUES (41, 2, 'FR', 'Fier');
INSERT INTO `zone` VALUES (42, 2, 'GJ', 'Gjirokaster');
INSERT INTO `zone` VALUES (43, 2, 'GR', 'Gramsh');
INSERT INTO `zone` VALUES (44, 2, 'HA', 'Has');
INSERT INTO `zone` VALUES (45, 2, 'KA', 'Kavaje');
INSERT INTO `zone` VALUES (46, 2, 'KB', 'Kurbin');
INSERT INTO `zone` VALUES (47, 2, 'KC', 'Kucove');
INSERT INTO `zone` VALUES (48, 2, 'KO', 'Korce');
INSERT INTO `zone` VALUES (49, 2, 'KR', 'Kruje');
INSERT INTO `zone` VALUES (50, 2, 'KU', 'Kukes');
INSERT INTO `zone` VALUES (51, 2, 'LB', 'Librazhd');
INSERT INTO `zone` VALUES (52, 2, 'LE', 'Lezhe');
INSERT INTO `zone` VALUES (53, 2, 'LU', 'Lushnje');
INSERT INTO `zone` VALUES (54, 2, 'MM', 'Malesi e Madhe');
INSERT INTO `zone` VALUES (55, 2, 'MK', 'Mallakaster');
INSERT INTO `zone` VALUES (56, 2, 'MT', 'Mat');
INSERT INTO `zone` VALUES (57, 2, 'MR', 'Mirdite');
INSERT INTO `zone` VALUES (58, 2, 'PQ', 'Peqin');
INSERT INTO `zone` VALUES (59, 2, 'PR', 'Permet');
INSERT INTO `zone` VALUES (60, 2, 'PG', 'Pogradec');
INSERT INTO `zone` VALUES (61, 2, 'PU', 'Puke');
INSERT INTO `zone` VALUES (62, 2, 'SH', 'Shkoder');
INSERT INTO `zone` VALUES (63, 2, 'SK', 'Skrapar');
INSERT INTO `zone` VALUES (64, 2, 'SR', 'Sarande');
INSERT INTO `zone` VALUES (65, 2, 'TE', 'Tepelene');
INSERT INTO `zone` VALUES (66, 2, 'TP', 'Tropoje');
INSERT INTO `zone` VALUES (67, 2, 'TR', 'Tirane');
INSERT INTO `zone` VALUES (68, 2, 'VL', 'Vlore');
INSERT INTO `zone` VALUES (69, 3, 'ADR', 'Adrar');
INSERT INTO `zone` VALUES (70, 3, 'ADE', 'Ain Defla');
INSERT INTO `zone` VALUES (71, 3, 'ATE', 'Ain Temouchent');
INSERT INTO `zone` VALUES (72, 3, 'ALG', 'Alger');
INSERT INTO `zone` VALUES (73, 3, 'ANN', 'Annaba');
INSERT INTO `zone` VALUES (74, 3, 'BAT', 'Batna');
INSERT INTO `zone` VALUES (75, 3, 'BEC', 'Bechar');
INSERT INTO `zone` VALUES (76, 3, 'BEJ', 'Bejaia');
INSERT INTO `zone` VALUES (77, 3, 'BIS', 'Biskra');
INSERT INTO `zone` VALUES (78, 3, 'BLI', 'Blida');
INSERT INTO `zone` VALUES (79, 3, 'BBA', 'Bordj Bou Arreridj');
INSERT INTO `zone` VALUES (80, 3, 'BOA', 'Bouira');
INSERT INTO `zone` VALUES (81, 3, 'BMD', 'Boumerdes');
INSERT INTO `zone` VALUES (82, 3, 'CHL', 'Chlef');
INSERT INTO `zone` VALUES (83, 3, 'CON', 'Constantine');
INSERT INTO `zone` VALUES (84, 3, 'DJE', 'Djelfa');
INSERT INTO `zone` VALUES (85, 3, 'EBA', 'El Bayadh');
INSERT INTO `zone` VALUES (86, 3, 'EOU', 'El Oued');
INSERT INTO `zone` VALUES (87, 3, 'ETA', 'El Tarf');
INSERT INTO `zone` VALUES (88, 3, 'GHA', 'Ghardaia');
INSERT INTO `zone` VALUES (89, 3, 'GUE', 'Guelma');
INSERT INTO `zone` VALUES (90, 3, 'ILL', 'Illizi');
INSERT INTO `zone` VALUES (91, 3, 'JIJ', 'Jijel');
INSERT INTO `zone` VALUES (92, 3, 'KHE', 'Khenchela');
INSERT INTO `zone` VALUES (93, 3, 'LAG', 'Laghouat');
INSERT INTO `zone` VALUES (94, 3, 'MUA', 'Muaskar');
INSERT INTO `zone` VALUES (95, 3, 'MED', 'Medea');
INSERT INTO `zone` VALUES (96, 3, 'MIL', 'Mila');
INSERT INTO `zone` VALUES (97, 3, 'MOS', 'Mostaganem');
INSERT INTO `zone` VALUES (98, 3, 'MSI', 'M''Sila');
INSERT INTO `zone` VALUES (99, 3, 'NAA', 'Naama');
INSERT INTO `zone` VALUES (100, 3, 'ORA', 'Oran');
INSERT INTO `zone` VALUES (101, 3, 'OUA', 'Ouargla');
INSERT INTO `zone` VALUES (102, 3, 'OEB', 'Oum el-Bouaghi');
INSERT INTO `zone` VALUES (103, 3, 'REL', 'Relizane');
INSERT INTO `zone` VALUES (104, 3, 'SAI', 'Saida');
INSERT INTO `zone` VALUES (105, 3, 'SET', 'Setif');
INSERT INTO `zone` VALUES (106, 3, 'SBA', 'Sidi Bel Abbes');
INSERT INTO `zone` VALUES (107, 3, 'SKI', 'Skikda');
INSERT INTO `zone` VALUES (108, 3, 'SAH', 'Souk Ahras');
INSERT INTO `zone` VALUES (109, 3, 'TAM', 'Tamanghasset');
INSERT INTO `zone` VALUES (110, 3, 'TEB', 'Tebessa');
INSERT INTO `zone` VALUES (111, 3, 'TIA', 'Tiaret');
INSERT INTO `zone` VALUES (112, 3, 'TIN', 'Tindouf');
INSERT INTO `zone` VALUES (113, 3, 'TIP', 'Tipaza');
INSERT INTO `zone` VALUES (114, 3, 'TIS', 'Tissemsilt');
INSERT INTO `zone` VALUES (115, 3, 'TOU', 'Tizi Ouzou');
INSERT INTO `zone` VALUES (116, 3, 'TLE', 'Tlemcen');
INSERT INTO `zone` VALUES (117, 4, 'E', 'Eastern');
INSERT INTO `zone` VALUES (118, 4, 'M', 'Manu''a');
INSERT INTO `zone` VALUES (119, 4, 'R', 'Rose Island');
INSERT INTO `zone` VALUES (120, 4, 'S', 'Swains Island');
INSERT INTO `zone` VALUES (121, 4, 'W', 'Western');
INSERT INTO `zone` VALUES (122, 5, 'ALV', 'Andorra la Vella');
INSERT INTO `zone` VALUES (123, 5, 'CAN', 'Canillo');
INSERT INTO `zone` VALUES (124, 5, 'ENC', 'Encamp');
INSERT INTO `zone` VALUES (125, 5, 'ESE', 'Escaldes-Engordany');
INSERT INTO `zone` VALUES (126, 5, 'LMA', 'La Massana');
INSERT INTO `zone` VALUES (127, 5, 'ORD', 'Ordino');
INSERT INTO `zone` VALUES (128, 5, 'SJL', 'Sant Julia de Loria');
INSERT INTO `zone` VALUES (129, 6, 'BGO', 'Bengo');
INSERT INTO `zone` VALUES (130, 6, 'BGU', 'Benguela');
INSERT INTO `zone` VALUES (131, 6, 'BIE', 'Bie');
INSERT INTO `zone` VALUES (132, 6, 'CAB', 'Cabinda');
INSERT INTO `zone` VALUES (133, 6, 'CCU', 'Cuando-Cubango');
INSERT INTO `zone` VALUES (134, 6, 'CNO', 'Cuanza Norte');
INSERT INTO `zone` VALUES (135, 6, 'CUS', 'Cuanza Sul');
INSERT INTO `zone` VALUES (136, 6, 'CNN', 'Cunene');
INSERT INTO `zone` VALUES (137, 6, 'HUA', 'Huambo');
INSERT INTO `zone` VALUES (138, 6, 'HUI', 'Huila');
INSERT INTO `zone` VALUES (139, 6, 'LUA', 'Luanda');
INSERT INTO `zone` VALUES (140, 6, 'LNO', 'Lunda Norte');
INSERT INTO `zone` VALUES (141, 6, 'LSU', 'Lunda Sul');
INSERT INTO `zone` VALUES (142, 6, 'MAL', 'Malange');
INSERT INTO `zone` VALUES (143, 6, 'MOX', 'Moxico');
INSERT INTO `zone` VALUES (144, 6, 'NAM', 'Namibe');
INSERT INTO `zone` VALUES (145, 6, 'UIG', 'Uige');
INSERT INTO `zone` VALUES (146, 6, 'ZAI', 'Zaire');
INSERT INTO `zone` VALUES (147, 9, 'ASG', 'Saint George');
INSERT INTO `zone` VALUES (148, 9, 'ASJ', 'Saint John');
INSERT INTO `zone` VALUES (149, 9, 'ASM', 'Saint Mary');
INSERT INTO `zone` VALUES (150, 9, 'ASL', 'Saint Paul');
INSERT INTO `zone` VALUES (151, 9, 'ASR', 'Saint Peter');
INSERT INTO `zone` VALUES (152, 9, 'ASH', 'Saint Philip');
INSERT INTO `zone` VALUES (153, 9, 'BAR', 'Barbuda');
INSERT INTO `zone` VALUES (154, 9, 'RED', 'Redonda');
INSERT INTO `zone` VALUES (155, 10, 'AN', 'Antartida e Islas del Atlantico');
INSERT INTO `zone` VALUES (156, 10, 'BA', 'Buenos Aires');
INSERT INTO `zone` VALUES (157, 10, 'CA', 'Catamarca');
INSERT INTO `zone` VALUES (158, 10, 'CH', 'Chaco');
INSERT INTO `zone` VALUES (159, 10, 'CU', 'Chubut');
INSERT INTO `zone` VALUES (160, 10, 'CO', 'Cordoba');
INSERT INTO `zone` VALUES (161, 10, 'CR', 'Corrientes');
INSERT INTO `zone` VALUES (162, 10, 'DF', 'Distrito Federal');
INSERT INTO `zone` VALUES (163, 10, 'ER', 'Entre Rios');
INSERT INTO `zone` VALUES (164, 10, 'FO', 'Formosa');
INSERT INTO `zone` VALUES (165, 10, 'JU', 'Jujuy');
INSERT INTO `zone` VALUES (166, 10, 'LP', 'La Pampa');
INSERT INTO `zone` VALUES (167, 10, 'LR', 'La Rioja');
INSERT INTO `zone` VALUES (168, 10, 'ME', 'Mendoza');
INSERT INTO `zone` VALUES (169, 10, 'MI', 'Misiones');
INSERT INTO `zone` VALUES (170, 10, 'NE', 'Neuquen');
INSERT INTO `zone` VALUES (171, 10, 'RN', 'Rio Negro');
INSERT INTO `zone` VALUES (172, 10, 'SA', 'Salta');
INSERT INTO `zone` VALUES (173, 10, 'SJ', 'San Juan');
INSERT INTO `zone` VALUES (174, 10, 'SL', 'San Luis');
INSERT INTO `zone` VALUES (175, 10, 'SC', 'Santa Cruz');
INSERT INTO `zone` VALUES (176, 10, 'SF', 'Santa Fe');
INSERT INTO `zone` VALUES (177, 10, 'SD', 'Santiago del Estero');
INSERT INTO `zone` VALUES (178, 10, 'TF', 'Tierra del Fuego');
INSERT INTO `zone` VALUES (179, 10, 'TU', 'Tucuman');
INSERT INTO `zone` VALUES (180, 11, 'AGT', 'Aragatsotn');
INSERT INTO `zone` VALUES (181, 11, 'ARR', 'Ararat');
INSERT INTO `zone` VALUES (182, 11, 'ARM', 'Armavir');
INSERT INTO `zone` VALUES (183, 11, 'GEG', 'Geghark''unik''');
INSERT INTO `zone` VALUES (184, 11, 'KOT', 'Kotayk''');
INSERT INTO `zone` VALUES (185, 11, 'LOR', 'Lorri');
INSERT INTO `zone` VALUES (186, 11, 'SHI', 'Shirak');
INSERT INTO `zone` VALUES (187, 11, 'SYU', 'Syunik''');
INSERT INTO `zone` VALUES (188, 11, 'TAV', 'Tavush');
INSERT INTO `zone` VALUES (189, 11, 'VAY', 'Vayots'' Dzor');
INSERT INTO `zone` VALUES (190, 11, 'YER', 'Yerevan');
INSERT INTO `zone` VALUES (191, 13, 'ACT', 'Australian Capitol Territory');
INSERT INTO `zone` VALUES (192, 13, 'NSW', 'New South Wales');
INSERT INTO `zone` VALUES (193, 13, 'NT', 'Northern Territory');
INSERT INTO `zone` VALUES (194, 13, 'QLD', 'Queensland');
INSERT INTO `zone` VALUES (195, 13, 'SA', 'South Australia');
INSERT INTO `zone` VALUES (196, 13, 'TAS', 'Tasmania');
INSERT INTO `zone` VALUES (197, 13, 'VIC', 'Victoria');
INSERT INTO `zone` VALUES (198, 13, 'WA', 'Western Australia');
INSERT INTO `zone` VALUES (199, 14, 'BUR', 'Burgenland');
INSERT INTO `zone` VALUES (200, 14, 'KAR', 'KÃƒÆ’Ã‚Â¤rnten');
INSERT INTO `zone` VALUES (201, 14, 'NOS', 'NiederÃƒÆ’Ã‚Â¶sterreich');
INSERT INTO `zone` VALUES (202, 14, 'OOS', 'OberÃƒÆ’Ã‚Â¶sterreich');
INSERT INTO `zone` VALUES (203, 14, 'SAL', 'Salzburg');
INSERT INTO `zone` VALUES (204, 14, 'STE', 'Steiermark');
INSERT INTO `zone` VALUES (205, 14, 'TIR', 'Tirol');
INSERT INTO `zone` VALUES (206, 14, 'VOR', 'Vorarlberg');
INSERT INTO `zone` VALUES (207, 14, 'WIE', 'Wien');
INSERT INTO `zone` VALUES (208, 15, 'AB', 'Ali Bayramli');
INSERT INTO `zone` VALUES (209, 15, 'ABS', 'Abseron');
INSERT INTO `zone` VALUES (210, 15, 'AGC', 'AgcabAdi');
INSERT INTO `zone` VALUES (211, 15, 'AGM', 'Agdam');
INSERT INTO `zone` VALUES (212, 15, 'AGS', 'Agdas');
INSERT INTO `zone` VALUES (213, 15, 'AGA', 'Agstafa');
INSERT INTO `zone` VALUES (214, 15, 'AGU', 'Agsu');
INSERT INTO `zone` VALUES (215, 15, 'AST', 'Astara');
INSERT INTO `zone` VALUES (216, 15, 'BA', 'Baki');
INSERT INTO `zone` VALUES (217, 15, 'BAB', 'BabAk');
INSERT INTO `zone` VALUES (218, 15, 'BAL', 'BalakAn');
INSERT INTO `zone` VALUES (219, 15, 'BAR', 'BArdA');
INSERT INTO `zone` VALUES (220, 15, 'BEY', 'Beylaqan');
INSERT INTO `zone` VALUES (221, 15, 'BIL', 'Bilasuvar');
INSERT INTO `zone` VALUES (222, 15, 'CAB', 'Cabrayil');
INSERT INTO `zone` VALUES (223, 15, 'CAL', 'Calilabab');
INSERT INTO `zone` VALUES (224, 15, 'CUL', 'Culfa');
INSERT INTO `zone` VALUES (225, 15, 'DAS', 'Daskasan');
INSERT INTO `zone` VALUES (226, 15, 'DAV', 'Davaci');
INSERT INTO `zone` VALUES (227, 15, 'FUZ', 'Fuzuli');
INSERT INTO `zone` VALUES (228, 15, 'GA', 'Ganca');
INSERT INTO `zone` VALUES (229, 15, 'GAD', 'Gadabay');
INSERT INTO `zone` VALUES (230, 15, 'GOR', 'Goranboy');
INSERT INTO `zone` VALUES (231, 15, 'GOY', 'Goycay');
INSERT INTO `zone` VALUES (232, 15, 'HAC', 'Haciqabul');
INSERT INTO `zone` VALUES (233, 15, 'IMI', 'Imisli');
INSERT INTO `zone` VALUES (234, 15, 'ISM', 'Ismayilli');
INSERT INTO `zone` VALUES (235, 15, 'KAL', 'Kalbacar');
INSERT INTO `zone` VALUES (236, 15, 'KUR', 'Kurdamir');
INSERT INTO `zone` VALUES (237, 15, 'LA', 'Lankaran');
INSERT INTO `zone` VALUES (238, 15, 'LAC', 'Lacin');
INSERT INTO `zone` VALUES (239, 15, 'LAN', 'Lankaran');
INSERT INTO `zone` VALUES (240, 15, 'LER', 'Lerik');
INSERT INTO `zone` VALUES (241, 15, 'MAS', 'Masalli');
INSERT INTO `zone` VALUES (242, 15, 'MI', 'Mingacevir');
INSERT INTO `zone` VALUES (243, 15, 'NA', 'Naftalan');
INSERT INTO `zone` VALUES (244, 15, 'NEF', 'Neftcala');
INSERT INTO `zone` VALUES (245, 15, 'OGU', 'Oguz');
INSERT INTO `zone` VALUES (246, 15, 'ORD', 'Ordubad');
INSERT INTO `zone` VALUES (247, 15, 'QAB', 'Qabala');
INSERT INTO `zone` VALUES (248, 15, 'QAX', 'Qax');
INSERT INTO `zone` VALUES (249, 15, 'QAZ', 'Qazax');
INSERT INTO `zone` VALUES (250, 15, 'QOB', 'Qobustan');
INSERT INTO `zone` VALUES (251, 15, 'QBA', 'Quba');
INSERT INTO `zone` VALUES (252, 15, 'QBI', 'Qubadli');
INSERT INTO `zone` VALUES (253, 15, 'QUS', 'Qusar');
INSERT INTO `zone` VALUES (254, 15, 'SA', 'Saki');
INSERT INTO `zone` VALUES (255, 15, 'SAT', 'Saatli');
INSERT INTO `zone` VALUES (256, 15, 'SAB', 'Sabirabad');
INSERT INTO `zone` VALUES (257, 15, 'SAD', 'Sadarak');
INSERT INTO `zone` VALUES (258, 15, 'SAH', 'Sahbuz');
INSERT INTO `zone` VALUES (259, 15, 'SAK', 'Saki');
INSERT INTO `zone` VALUES (260, 15, 'SAL', 'Salyan');
INSERT INTO `zone` VALUES (261, 15, 'SM', 'Sumqayit');
INSERT INTO `zone` VALUES (262, 15, 'SMI', 'Samaxi');
INSERT INTO `zone` VALUES (263, 15, 'SKR', 'Samkir');
INSERT INTO `zone` VALUES (264, 15, 'SMX', 'Samux');
INSERT INTO `zone` VALUES (265, 15, 'SAR', 'Sarur');
INSERT INTO `zone` VALUES (266, 15, 'SIY', 'Siyazan');
INSERT INTO `zone` VALUES (267, 15, 'SS', 'Susa');
INSERT INTO `zone` VALUES (268, 15, 'SUS', 'Susa');
INSERT INTO `zone` VALUES (269, 15, 'TAR', 'Tartar');
INSERT INTO `zone` VALUES (270, 15, 'TOV', 'Tovuz');
INSERT INTO `zone` VALUES (271, 15, 'UCA', 'Ucar');
INSERT INTO `zone` VALUES (272, 15, 'XA', 'Xankandi');
INSERT INTO `zone` VALUES (273, 15, 'XAC', 'Xacmaz');
INSERT INTO `zone` VALUES (274, 15, 'XAN', 'Xanlar');
INSERT INTO `zone` VALUES (275, 15, 'XIZ', 'Xizi');
INSERT INTO `zone` VALUES (276, 15, 'XCI', 'Xocali');
INSERT INTO `zone` VALUES (277, 15, 'XVD', 'Xocavand');
INSERT INTO `zone` VALUES (278, 15, 'YAR', 'Yardimli');
INSERT INTO `zone` VALUES (279, 15, 'YEV', 'Yevlax');
INSERT INTO `zone` VALUES (280, 15, 'ZAN', 'Zangilan');
INSERT INTO `zone` VALUES (281, 15, 'ZAQ', 'Zaqatala');
INSERT INTO `zone` VALUES (282, 15, 'ZAR', 'Zardab');
INSERT INTO `zone` VALUES (283, 15, 'NX', 'Naxcivan');
INSERT INTO `zone` VALUES (284, 16, 'ACK', 'Acklins');
INSERT INTO `zone` VALUES (285, 16, 'BER', 'Berry Islands');
INSERT INTO `zone` VALUES (286, 16, 'BIM', 'Bimini');
INSERT INTO `zone` VALUES (287, 16, 'BLK', 'Black Point');
INSERT INTO `zone` VALUES (288, 16, 'CAT', 'Cat Island');
INSERT INTO `zone` VALUES (289, 16, 'CAB', 'Central Abaco');
INSERT INTO `zone` VALUES (290, 16, 'CAN', 'Central Andros');
INSERT INTO `zone` VALUES (291, 16, 'CEL', 'Central Eleuthera');
INSERT INTO `zone` VALUES (292, 16, 'FRE', 'City of Freeport');
INSERT INTO `zone` VALUES (293, 16, 'CRO', 'Crooked Island');
INSERT INTO `zone` VALUES (294, 16, 'EGB', 'East Grand Bahama');
INSERT INTO `zone` VALUES (295, 16, 'EXU', 'Exuma');
INSERT INTO `zone` VALUES (296, 16, 'GRD', 'Grand Cay');
INSERT INTO `zone` VALUES (297, 16, 'HAR', 'Harbour Island');
INSERT INTO `zone` VALUES (298, 16, 'HOP', 'Hope Town');
INSERT INTO `zone` VALUES (299, 16, 'INA', 'Inagua');
INSERT INTO `zone` VALUES (300, 16, 'LNG', 'Long Island');
INSERT INTO `zone` VALUES (301, 16, 'MAN', 'Mangrove Cay');
INSERT INTO `zone` VALUES (302, 16, 'MAY', 'Mayaguana');
INSERT INTO `zone` VALUES (303, 16, 'MOO', 'Moore''s Island');
INSERT INTO `zone` VALUES (304, 16, 'NAB', 'North Abaco');
INSERT INTO `zone` VALUES (305, 16, 'NAN', 'North Andros');
INSERT INTO `zone` VALUES (306, 16, 'NEL', 'North Eleuthera');
INSERT INTO `zone` VALUES (307, 16, 'RAG', 'Ragged Island');
INSERT INTO `zone` VALUES (308, 16, 'RUM', 'Rum Cay');
INSERT INTO `zone` VALUES (309, 16, 'SAL', 'San Salvador');
INSERT INTO `zone` VALUES (310, 16, 'SAB', 'South Abaco');
INSERT INTO `zone` VALUES (311, 16, 'SAN', 'South Andros');
INSERT INTO `zone` VALUES (312, 16, 'SEL', 'South Eleuthera');
INSERT INTO `zone` VALUES (313, 16, 'SWE', 'Spanish Wells');
INSERT INTO `zone` VALUES (314, 16, 'WGB', 'West Grand Bahama');
INSERT INTO `zone` VALUES (315, 17, 'CAP', 'Capital');
INSERT INTO `zone` VALUES (316, 17, 'CEN', 'Central');
INSERT INTO `zone` VALUES (317, 17, 'MUH', 'Muharraq');
INSERT INTO `zone` VALUES (318, 17, 'NOR', 'Northern');
INSERT INTO `zone` VALUES (319, 17, 'SOU', 'Southern');
INSERT INTO `zone` VALUES (320, 18, 'BAR', 'Barisal');
INSERT INTO `zone` VALUES (321, 18, 'CHI', 'Chittagong');
INSERT INTO `zone` VALUES (322, 18, 'DHA', 'Dhaka');
INSERT INTO `zone` VALUES (323, 18, 'KHU', 'Khulna');
INSERT INTO `zone` VALUES (324, 18, 'RAJ', 'Rajshahi');
INSERT INTO `zone` VALUES (325, 18, 'SYL', 'Sylhet');
INSERT INTO `zone` VALUES (326, 19, 'CC', 'Christ Church');
INSERT INTO `zone` VALUES (327, 19, 'AND', 'Saint Andrew');
INSERT INTO `zone` VALUES (328, 19, 'GEO', 'Saint George');
INSERT INTO `zone` VALUES (329, 19, 'JAM', 'Saint James');
INSERT INTO `zone` VALUES (330, 19, 'JOH', 'Saint John');
INSERT INTO `zone` VALUES (331, 19, 'JOS', 'Saint Joseph');
INSERT INTO `zone` VALUES (332, 19, 'LUC', 'Saint Lucy');
INSERT INTO `zone` VALUES (333, 19, 'MIC', 'Saint Michael');
INSERT INTO `zone` VALUES (334, 19, 'PET', 'Saint Peter');
INSERT INTO `zone` VALUES (335, 19, 'PHI', 'Saint Philip');
INSERT INTO `zone` VALUES (336, 19, 'THO', 'Saint Thomas');
INSERT INTO `zone` VALUES (337, 20, 'BR', 'Brestskaya (Brest)');
INSERT INTO `zone` VALUES (338, 20, 'HO', 'Homyel''skaya (Homyel'')');
INSERT INTO `zone` VALUES (339, 20, 'HM', 'Horad Minsk');
INSERT INTO `zone` VALUES (340, 20, 'HR', 'Hrodzyenskaya (Hrodna)');
INSERT INTO `zone` VALUES (341, 20, 'MA', 'Mahilyowskaya (Mahilyow)');
INSERT INTO `zone` VALUES (342, 20, 'MI', 'Minskaya');
INSERT INTO `zone` VALUES (343, 20, 'VI', 'Vitsyebskaya (Vitsyebsk)');
INSERT INTO `zone` VALUES (344, 21, 'VAN', 'Antwerpen');
INSERT INTO `zone` VALUES (345, 21, 'WBR', 'Brabant Wallon');
INSERT INTO `zone` VALUES (346, 21, 'WHT', 'Hainaut');
INSERT INTO `zone` VALUES (347, 21, 'WLG', 'Liege');
INSERT INTO `zone` VALUES (348, 21, 'VLI', 'Limburg');
INSERT INTO `zone` VALUES (349, 21, 'WLX', 'Luxembourg');
INSERT INTO `zone` VALUES (350, 21, 'WNA', 'Namur');
INSERT INTO `zone` VALUES (351, 21, 'VOV', 'Oost-Vlaanderen');
INSERT INTO `zone` VALUES (352, 21, 'VBR', 'Vlaams Brabant');
INSERT INTO `zone` VALUES (353, 21, 'VWV', 'West-Vlaanderen');
INSERT INTO `zone` VALUES (354, 22, 'BZ', 'Belize');
INSERT INTO `zone` VALUES (355, 22, 'CY', 'Cayo');
INSERT INTO `zone` VALUES (356, 22, 'CR', 'Corozal');
INSERT INTO `zone` VALUES (357, 22, 'OW', 'Orange Walk');
INSERT INTO `zone` VALUES (358, 22, 'SC', 'Stann Creek');
INSERT INTO `zone` VALUES (359, 22, 'TO', 'Toledo');
INSERT INTO `zone` VALUES (360, 23, 'AL', 'Alibori');
INSERT INTO `zone` VALUES (361, 23, 'AK', 'Atakora');
INSERT INTO `zone` VALUES (362, 23, 'AQ', 'Atlantique');
INSERT INTO `zone` VALUES (363, 23, 'BO', 'Borgou');
INSERT INTO `zone` VALUES (364, 23, 'CO', 'Collines');
INSERT INTO `zone` VALUES (365, 23, 'DO', 'Donga');
INSERT INTO `zone` VALUES (366, 23, 'KO', 'Kouffo');
INSERT INTO `zone` VALUES (367, 23, 'LI', 'Littoral');
INSERT INTO `zone` VALUES (368, 23, 'MO', 'Mono');
INSERT INTO `zone` VALUES (369, 23, 'OU', 'Oueme');
INSERT INTO `zone` VALUES (370, 23, 'PL', 'Plateau');
INSERT INTO `zone` VALUES (371, 23, 'ZO', 'Zou');
INSERT INTO `zone` VALUES (372, 24, 'DS', 'Devonshire');
INSERT INTO `zone` VALUES (373, 24, 'HC', 'Hamilton City');
INSERT INTO `zone` VALUES (374, 24, 'HA', 'Hamilton');
INSERT INTO `zone` VALUES (375, 24, 'PG', 'Paget');
INSERT INTO `zone` VALUES (376, 24, 'PB', 'Pembroke');
INSERT INTO `zone` VALUES (377, 24, 'GC', 'Saint George City');
INSERT INTO `zone` VALUES (378, 24, 'SG', 'Saint George''s');
INSERT INTO `zone` VALUES (379, 24, 'SA', 'Sandys');
INSERT INTO `zone` VALUES (380, 24, 'SM', 'Smith''s');
INSERT INTO `zone` VALUES (381, 24, 'SH', 'Southampton');
INSERT INTO `zone` VALUES (382, 24, 'WA', 'Warwick');
INSERT INTO `zone` VALUES (383, 25, 'BUM', 'Bumthang');
INSERT INTO `zone` VALUES (384, 25, 'CHU', 'Chukha');
INSERT INTO `zone` VALUES (385, 25, 'DAG', 'Dagana');
INSERT INTO `zone` VALUES (386, 25, 'GAS', 'Gasa');
INSERT INTO `zone` VALUES (387, 25, 'HAA', 'Haa');
INSERT INTO `zone` VALUES (388, 25, 'LHU', 'Lhuntse');
INSERT INTO `zone` VALUES (389, 25, 'MON', 'Mongar');
INSERT INTO `zone` VALUES (390, 25, 'PAR', 'Paro');
INSERT INTO `zone` VALUES (391, 25, 'PEM', 'Pemagatshel');
INSERT INTO `zone` VALUES (392, 25, 'PUN', 'Punakha');
INSERT INTO `zone` VALUES (393, 25, 'SJO', 'Samdrup Jongkhar');
INSERT INTO `zone` VALUES (394, 25, 'SAT', 'Samtse');
INSERT INTO `zone` VALUES (395, 25, 'SAR', 'Sarpang');
INSERT INTO `zone` VALUES (396, 25, 'THI', 'Thimphu');
INSERT INTO `zone` VALUES (397, 25, 'TRG', 'Trashigang');
INSERT INTO `zone` VALUES (398, 25, 'TRY', 'Trashiyangste');
INSERT INTO `zone` VALUES (399, 25, 'TRO', 'Trongsa');
INSERT INTO `zone` VALUES (400, 25, 'TSI', 'Tsirang');
INSERT INTO `zone` VALUES (401, 25, 'WPH', 'Wangdue Phodrang');
INSERT INTO `zone` VALUES (402, 25, 'ZHE', 'Zhemgang');
INSERT INTO `zone` VALUES (403, 26, 'BEN', 'Beni');
INSERT INTO `zone` VALUES (404, 26, 'CHU', 'Chuquisaca');
INSERT INTO `zone` VALUES (405, 26, 'COC', 'Cochabamba');
INSERT INTO `zone` VALUES (406, 26, 'LPZ', 'La Paz');
INSERT INTO `zone` VALUES (407, 26, 'ORU', 'Oruro');
INSERT INTO `zone` VALUES (408, 26, 'PAN', 'Pando');
INSERT INTO `zone` VALUES (409, 26, 'POT', 'Potosi');
INSERT INTO `zone` VALUES (410, 26, 'SCZ', 'Santa Cruz');
INSERT INTO `zone` VALUES (411, 26, 'TAR', 'Tarija');
INSERT INTO `zone` VALUES (412, 27, 'BRO', 'Brcko district');
INSERT INTO `zone` VALUES (413, 27, 'FUS', 'Unsko-Sanski Kanton');
INSERT INTO `zone` VALUES (414, 27, 'FPO', 'Posavski Kanton');
INSERT INTO `zone` VALUES (415, 27, 'FTU', 'Tuzlanski Kanton');
INSERT INTO `zone` VALUES (416, 27, 'FZE', 'Zenicko-Dobojski Kanton');
INSERT INTO `zone` VALUES (417, 27, 'FBP', 'Bosanskopodrinjski Kanton');
INSERT INTO `zone` VALUES (418, 27, 'FSB', 'Srednjebosanski Kanton');
INSERT INTO `zone` VALUES (419, 27, 'FHN', 'Hercegovacko-neretvanski Kanton');
INSERT INTO `zone` VALUES (420, 27, 'FZH', 'Zapadnohercegovacka Zupanija');
INSERT INTO `zone` VALUES (421, 27, 'FSA', 'Kanton Sarajevo');
INSERT INTO `zone` VALUES (422, 27, 'FZA', 'Zapadnobosanska');
INSERT INTO `zone` VALUES (423, 27, 'SBL', 'Banja Luka');
INSERT INTO `zone` VALUES (424, 27, 'SDO', 'Doboj');
INSERT INTO `zone` VALUES (425, 27, 'SBI', 'Bijeljina');
INSERT INTO `zone` VALUES (426, 27, 'SVL', 'Vlasenica');
INSERT INTO `zone` VALUES (427, 27, 'SSR', 'Sarajevo-Romanija or Sokolac');
INSERT INTO `zone` VALUES (428, 27, 'SFO', 'Foca');
INSERT INTO `zone` VALUES (429, 27, 'STR', 'Trebinje');
INSERT INTO `zone` VALUES (430, 28, 'CE', 'Central');
INSERT INTO `zone` VALUES (431, 28, 'GH', 'Ghanzi');
INSERT INTO `zone` VALUES (432, 28, 'KD', 'Kgalagadi');
INSERT INTO `zone` VALUES (433, 28, 'KT', 'Kgatleng');
INSERT INTO `zone` VALUES (434, 28, 'KW', 'Kweneng');
INSERT INTO `zone` VALUES (435, 28, 'NG', 'Ngamiland');
INSERT INTO `zone` VALUES (436, 28, 'NE', 'North East');
INSERT INTO `zone` VALUES (437, 28, 'NW', 'North West');
INSERT INTO `zone` VALUES (438, 28, 'SE', 'South East');
INSERT INTO `zone` VALUES (439, 28, 'SO', 'Southern');
INSERT INTO `zone` VALUES (440, 30, 'AC', 'Acre');
INSERT INTO `zone` VALUES (441, 30, 'AL', 'Alagoas');
INSERT INTO `zone` VALUES (442, 30, 'AP', 'Amapa');
INSERT INTO `zone` VALUES (443, 30, 'AM', 'Amazonas');
INSERT INTO `zone` VALUES (444, 30, 'BA', 'Bahia');
INSERT INTO `zone` VALUES (445, 30, 'CE', 'Ceara');
INSERT INTO `zone` VALUES (446, 30, 'DF', 'Distrito Federal');
INSERT INTO `zone` VALUES (447, 30, 'ES', 'Espirito Santo');
INSERT INTO `zone` VALUES (448, 30, 'GO', 'Goias');
INSERT INTO `zone` VALUES (449, 30, 'MA', 'Maranhao');
INSERT INTO `zone` VALUES (450, 30, 'MT', 'Mato Grosso');
INSERT INTO `zone` VALUES (451, 30, 'MS', 'Mato Grosso do Sul');
INSERT INTO `zone` VALUES (452, 30, 'MG', 'Minas Gerais');
INSERT INTO `zone` VALUES (453, 30, 'PA', 'Para');
INSERT INTO `zone` VALUES (454, 30, 'PB', 'Paraiba');
INSERT INTO `zone` VALUES (455, 30, 'PR', 'Parana');
INSERT INTO `zone` VALUES (456, 30, 'PE', 'Pernambuco');
INSERT INTO `zone` VALUES (457, 30, 'PI', 'Piaui');
INSERT INTO `zone` VALUES (458, 30, 'RJ', 'Rio de Janeiro');
INSERT INTO `zone` VALUES (459, 30, 'RN', 'Rio Grande do Norte');
INSERT INTO `zone` VALUES (460, 30, 'RS', 'Rio Grande do Sul');
INSERT INTO `zone` VALUES (461, 30, 'RO', 'Rondonia');
INSERT INTO `zone` VALUES (462, 30, 'RR', 'Roraima');
INSERT INTO `zone` VALUES (463, 30, 'SC', 'Santa Catarina');
INSERT INTO `zone` VALUES (464, 30, 'SP', 'Sao Paulo');
INSERT INTO `zone` VALUES (465, 30, 'SE', 'Sergipe');
INSERT INTO `zone` VALUES (466, 30, 'TO', 'Tocantins');
INSERT INTO `zone` VALUES (467, 31, 'PB', 'Peros Banhos');
INSERT INTO `zone` VALUES (468, 31, 'SI', 'Salomon Islands');
INSERT INTO `zone` VALUES (469, 31, 'NI', 'Nelsons Island');
INSERT INTO `zone` VALUES (470, 31, 'TB', 'Three Brothers');
INSERT INTO `zone` VALUES (471, 31, 'EA', 'Eagle Islands');
INSERT INTO `zone` VALUES (472, 31, 'DI', 'Danger Island');
INSERT INTO `zone` VALUES (473, 31, 'EG', 'Egmont Islands');
INSERT INTO `zone` VALUES (474, 31, 'DG', 'Diego Garcia');
INSERT INTO `zone` VALUES (475, 32, 'BEL', 'Belait');
INSERT INTO `zone` VALUES (476, 32, 'BRM', 'Brunei and Muara');
INSERT INTO `zone` VALUES (477, 32, 'TEM', 'Temburong');
INSERT INTO `zone` VALUES (478, 32, 'TUT', 'Tutong');
INSERT INTO `zone` VALUES (479, 33, '', 'Blagoevgrad');
INSERT INTO `zone` VALUES (480, 33, '', 'Burgas');
INSERT INTO `zone` VALUES (481, 33, '', 'Dobrich');
INSERT INTO `zone` VALUES (482, 33, '', 'Gabrovo');
INSERT INTO `zone` VALUES (483, 33, '', 'Haskovo');
INSERT INTO `zone` VALUES (484, 33, '', 'Kardjali');
INSERT INTO `zone` VALUES (485, 33, '', 'Kyustendil');
INSERT INTO `zone` VALUES (486, 33, '', 'Lovech');
INSERT INTO `zone` VALUES (487, 33, '', 'Montana');
INSERT INTO `zone` VALUES (488, 33, '', 'Pazardjik');
INSERT INTO `zone` VALUES (489, 33, '', 'Pernik');
INSERT INTO `zone` VALUES (490, 33, '', 'Pleven');
INSERT INTO `zone` VALUES (491, 33, '', 'Plovdiv');
INSERT INTO `zone` VALUES (492, 33, '', 'Razgrad');
INSERT INTO `zone` VALUES (493, 33, '', 'Shumen');
INSERT INTO `zone` VALUES (494, 33, '', 'Silistra');
INSERT INTO `zone` VALUES (495, 33, '', 'Sliven');
INSERT INTO `zone` VALUES (496, 33, '', 'Smolyan');
INSERT INTO `zone` VALUES (497, 33, '', 'Sofia');
INSERT INTO `zone` VALUES (498, 33, '', 'Sofia - town');
INSERT INTO `zone` VALUES (499, 33, '', 'Stara Zagora');
INSERT INTO `zone` VALUES (500, 33, '', 'Targovishte');
INSERT INTO `zone` VALUES (501, 33, '', 'Varna');
INSERT INTO `zone` VALUES (502, 33, '', 'Veliko Tarnovo');
INSERT INTO `zone` VALUES (503, 33, '', 'Vidin');
INSERT INTO `zone` VALUES (504, 33, '', 'Vratza');
INSERT INTO `zone` VALUES (505, 33, '', 'Yambol');
INSERT INTO `zone` VALUES (506, 34, 'BAL', 'Bale');
INSERT INTO `zone` VALUES (507, 34, 'BAM', 'Bam');
INSERT INTO `zone` VALUES (508, 34, 'BAN', 'Banwa');
INSERT INTO `zone` VALUES (509, 34, 'BAZ', 'Bazega');
INSERT INTO `zone` VALUES (510, 34, 'BOR', 'Bougouriba');
INSERT INTO `zone` VALUES (511, 34, 'BLG', 'Boulgou');
INSERT INTO `zone` VALUES (512, 34, 'BOK', 'Boulkiemde');
INSERT INTO `zone` VALUES (513, 34, 'COM', 'Comoe');
INSERT INTO `zone` VALUES (514, 34, 'GAN', 'Ganzourgou');
INSERT INTO `zone` VALUES (515, 34, 'GNA', 'Gnagna');
INSERT INTO `zone` VALUES (516, 34, 'GOU', 'Gourma');
INSERT INTO `zone` VALUES (517, 34, 'HOU', 'Houet');
INSERT INTO `zone` VALUES (518, 34, 'IOA', 'Ioba');
INSERT INTO `zone` VALUES (519, 34, 'KAD', 'Kadiogo');
INSERT INTO `zone` VALUES (520, 34, 'KEN', 'Kenedougou');
INSERT INTO `zone` VALUES (521, 34, 'KOD', 'Komondjari');
INSERT INTO `zone` VALUES (522, 34, 'KOP', 'Kompienga');
INSERT INTO `zone` VALUES (523, 34, 'KOS', 'Kossi');
INSERT INTO `zone` VALUES (524, 34, 'KOL', 'Koulpelogo');
INSERT INTO `zone` VALUES (525, 34, 'KOT', 'Kouritenga');
INSERT INTO `zone` VALUES (526, 34, 'KOW', 'Kourweogo');
INSERT INTO `zone` VALUES (527, 34, 'LER', 'Leraba');
INSERT INTO `zone` VALUES (528, 34, 'LOR', 'Loroum');
INSERT INTO `zone` VALUES (529, 34, 'MOU', 'Mouhoun');
INSERT INTO `zone` VALUES (530, 34, 'NAH', 'Nahouri');
INSERT INTO `zone` VALUES (531, 34, 'NAM', 'Namentenga');
INSERT INTO `zone` VALUES (532, 34, 'NAY', 'Nayala');
INSERT INTO `zone` VALUES (533, 34, 'NOU', 'Noumbiel');
INSERT INTO `zone` VALUES (534, 34, 'OUB', 'Oubritenga');
INSERT INTO `zone` VALUES (535, 34, 'OUD', 'Oudalan');
INSERT INTO `zone` VALUES (536, 34, 'PAS', 'Passore');
INSERT INTO `zone` VALUES (537, 34, 'PON', 'Poni');
INSERT INTO `zone` VALUES (538, 34, 'SAG', 'Sanguie');
INSERT INTO `zone` VALUES (539, 34, 'SAM', 'Sanmatenga');
INSERT INTO `zone` VALUES (540, 34, 'SEN', 'Seno');
INSERT INTO `zone` VALUES (541, 34, 'SIS', 'Sissili');
INSERT INTO `zone` VALUES (542, 34, 'SOM', 'Soum');
INSERT INTO `zone` VALUES (543, 34, 'SOR', 'Sourou');
INSERT INTO `zone` VALUES (544, 34, 'TAP', 'Tapoa');
INSERT INTO `zone` VALUES (545, 34, 'TUY', 'Tuy');
INSERT INTO `zone` VALUES (546, 34, 'YAG', 'Yagha');
INSERT INTO `zone` VALUES (547, 34, 'YAT', 'Yatenga');
INSERT INTO `zone` VALUES (548, 34, 'ZIR', 'Ziro');
INSERT INTO `zone` VALUES (549, 34, 'ZOD', 'Zondoma');
INSERT INTO `zone` VALUES (550, 34, 'ZOW', 'Zoundweogo');
INSERT INTO `zone` VALUES (551, 35, 'BB', 'Bubanza');
INSERT INTO `zone` VALUES (552, 35, 'BJ', 'Bujumbura');
INSERT INTO `zone` VALUES (553, 35, 'BR', 'Bururi');
INSERT INTO `zone` VALUES (554, 35, 'CA', 'Cankuzo');
INSERT INTO `zone` VALUES (555, 35, 'CI', 'Cibitoke');
INSERT INTO `zone` VALUES (556, 35, 'GI', 'Gitega');
INSERT INTO `zone` VALUES (557, 35, 'KR', 'Karuzi');
INSERT INTO `zone` VALUES (558, 35, 'KY', 'Kayanza');
INSERT INTO `zone` VALUES (559, 35, 'KI', 'Kirundo');
INSERT INTO `zone` VALUES (560, 35, 'MA', 'Makamba');
INSERT INTO `zone` VALUES (561, 35, 'MU', 'Muramvya');
INSERT INTO `zone` VALUES (562, 35, 'MY', 'Muyinga');
INSERT INTO `zone` VALUES (563, 35, 'MW', 'Mwaro');
INSERT INTO `zone` VALUES (564, 35, 'NG', 'Ngozi');
INSERT INTO `zone` VALUES (565, 35, 'RT', 'Rutana');
INSERT INTO `zone` VALUES (566, 35, 'RY', 'Ruyigi');
INSERT INTO `zone` VALUES (567, 36, 'PP', 'Phnom Penh');
INSERT INTO `zone` VALUES (568, 36, 'PS', 'Preah Seihanu (Kompong Som or Si');
INSERT INTO `zone` VALUES (569, 36, 'PA', 'Pailin');
INSERT INTO `zone` VALUES (570, 36, 'KB', 'Keb');
INSERT INTO `zone` VALUES (571, 36, 'BM', 'Banteay Meanchey');
INSERT INTO `zone` VALUES (572, 36, 'BA', 'Battambang');
INSERT INTO `zone` VALUES (573, 36, 'KM', 'Kampong Cham');
INSERT INTO `zone` VALUES (574, 36, 'KN', 'Kampong Chhnang');
INSERT INTO `zone` VALUES (575, 36, 'KU', 'Kampong Speu');
INSERT INTO `zone` VALUES (576, 36, 'KO', 'Kampong Som');
INSERT INTO `zone` VALUES (577, 36, 'KT', 'Kampong Thom');
INSERT INTO `zone` VALUES (578, 36, 'KP', 'Kampot');
INSERT INTO `zone` VALUES (579, 36, 'KL', 'Kandal');
INSERT INTO `zone` VALUES (580, 36, 'KK', 'Kaoh Kong');
INSERT INTO `zone` VALUES (581, 36, 'KR', 'Kratie');
INSERT INTO `zone` VALUES (582, 36, 'MK', 'Mondul Kiri');
INSERT INTO `zone` VALUES (583, 36, 'OM', 'Oddar Meancheay');
INSERT INTO `zone` VALUES (584, 36, 'PU', 'Pursat');
INSERT INTO `zone` VALUES (585, 36, 'PR', 'Preah Vihear');
INSERT INTO `zone` VALUES (586, 36, 'PG', 'Prey Veng');
INSERT INTO `zone` VALUES (587, 36, 'RK', 'Ratanak Kiri');
INSERT INTO `zone` VALUES (588, 36, 'SI', 'Siemreap');
INSERT INTO `zone` VALUES (589, 36, 'ST', 'Stung Treng');
INSERT INTO `zone` VALUES (590, 36, 'SR', 'Svay Rieng');
INSERT INTO `zone` VALUES (591, 36, 'TK', 'Takeo');
INSERT INTO `zone` VALUES (592, 37, 'ADA', 'Adamawa (Adamaoua)');
INSERT INTO `zone` VALUES (593, 37, 'CEN', 'Centre');
INSERT INTO `zone` VALUES (594, 37, 'EST', 'East (Est)');
INSERT INTO `zone` VALUES (595, 37, 'EXN', 'Extreme North (Extreme-Nord)');
INSERT INTO `zone` VALUES (596, 37, 'LIT', 'Littoral');
INSERT INTO `zone` VALUES (597, 37, 'NOR', 'North (Nord)');
INSERT INTO `zone` VALUES (598, 37, 'NOT', 'Northwest (Nord-Ouest)');
INSERT INTO `zone` VALUES (599, 37, 'OUE', 'West (Ouest)');
INSERT INTO `zone` VALUES (600, 37, 'SUD', 'South (Sud)');
INSERT INTO `zone` VALUES (601, 37, 'SOU', 'Southwest (Sud-Ouest).');
INSERT INTO `zone` VALUES (602, 38, 'AB', 'Alberta');
INSERT INTO `zone` VALUES (603, 38, 'BC', 'British Columbia');
INSERT INTO `zone` VALUES (604, 38, 'MB', 'Manitoba');
INSERT INTO `zone` VALUES (605, 38, 'NB', 'New Brunswick');
INSERT INTO `zone` VALUES (606, 38, 'NL', 'Newfoundland and Labrador');
INSERT INTO `zone` VALUES (607, 38, 'NT', 'Northwest Territories');
INSERT INTO `zone` VALUES (608, 38, 'NS', 'Nova Scotia');
INSERT INTO `zone` VALUES (609, 38, 'NU', 'Nunavut');
INSERT INTO `zone` VALUES (610, 38, 'ON', 'Ontario');
INSERT INTO `zone` VALUES (611, 38, 'PE', 'Prince Edward Island');
INSERT INTO `zone` VALUES (612, 38, 'QC', 'QuÃƒÆ’Ã‚Â©bec');
INSERT INTO `zone` VALUES (613, 38, 'SK', 'Saskatchewan');
INSERT INTO `zone` VALUES (614, 38, 'YT', 'Yukon Territory');
INSERT INTO `zone` VALUES (615, 39, 'BV', 'Boa Vista');
INSERT INTO `zone` VALUES (616, 39, 'BR', 'Brava');
INSERT INTO `zone` VALUES (617, 39, 'CS', 'Calheta de Sao Miguel');
INSERT INTO `zone` VALUES (618, 39, 'MA', 'Maio');
INSERT INTO `zone` VALUES (619, 39, 'MO', 'Mosteiros');
INSERT INTO `zone` VALUES (620, 39, 'PA', 'Paul');
INSERT INTO `zone` VALUES (621, 39, 'PN', 'Porto Novo');
INSERT INTO `zone` VALUES (622, 39, 'PR', 'Praia');
INSERT INTO `zone` VALUES (623, 39, 'RG', 'Ribeira Grande');
INSERT INTO `zone` VALUES (624, 39, 'SL', 'Sal');
INSERT INTO `zone` VALUES (625, 39, 'CA', 'Santa Catarina');
INSERT INTO `zone` VALUES (626, 39, 'CR', 'Santa Cruz');
INSERT INTO `zone` VALUES (627, 39, 'SD', 'Sao Domingos');
INSERT INTO `zone` VALUES (628, 39, 'SF', 'Sao Filipe');
INSERT INTO `zone` VALUES (629, 39, 'SN', 'Sao Nicolau');
INSERT INTO `zone` VALUES (630, 39, 'SV', 'Sao Vicente');
INSERT INTO `zone` VALUES (631, 39, 'TA', 'Tarrafal');
INSERT INTO `zone` VALUES (632, 40, 'CR', 'Creek');
INSERT INTO `zone` VALUES (633, 40, 'EA', 'Eastern');
INSERT INTO `zone` VALUES (634, 40, 'ML', 'Midland');
INSERT INTO `zone` VALUES (635, 40, 'ST', 'South Town');
INSERT INTO `zone` VALUES (636, 40, 'SP', 'Spot Bay');
INSERT INTO `zone` VALUES (637, 40, 'SK', 'Stake Bay');
INSERT INTO `zone` VALUES (638, 40, 'WD', 'West End');
INSERT INTO `zone` VALUES (639, 40, 'WN', 'Western');
INSERT INTO `zone` VALUES (640, 41, 'BBA', 'Bamingui-Bangoran');
INSERT INTO `zone` VALUES (641, 41, 'BKO', 'Basse-Kotto');
INSERT INTO `zone` VALUES (642, 41, 'HKO', 'Haute-Kotto');
INSERT INTO `zone` VALUES (643, 41, 'HMB', 'Haut-Mbomou');
INSERT INTO `zone` VALUES (644, 41, 'KEM', 'Kemo');
INSERT INTO `zone` VALUES (645, 41, 'LOB', 'Lobaye');
INSERT INTO `zone` VALUES (646, 41, 'MKD', 'MambÃƒÆ’Ã‚Â©re-KadÃƒÆ’Ã‚Â©ÃƒÆ’Ã‚');
INSERT INTO `zone` VALUES (647, 41, 'MBO', 'Mbomou');
INSERT INTO `zone` VALUES (648, 41, 'NMM', 'Nana-Mambere');
INSERT INTO `zone` VALUES (649, 41, 'OMP', 'Ombella-M''Poko');
INSERT INTO `zone` VALUES (650, 41, 'OUK', 'Ouaka');
INSERT INTO `zone` VALUES (651, 41, 'OUH', 'Ouham');
INSERT INTO `zone` VALUES (652, 41, 'OPE', 'Ouham-Pende');
INSERT INTO `zone` VALUES (653, 41, 'VAK', 'Vakaga');
INSERT INTO `zone` VALUES (654, 41, 'NGR', 'Nana-Grebizi');
INSERT INTO `zone` VALUES (655, 41, 'SMB', 'Sangha-Mbaere');
INSERT INTO `zone` VALUES (656, 41, 'BAN', 'Bangui');
INSERT INTO `zone` VALUES (657, 42, 'BA', 'Batha');
INSERT INTO `zone` VALUES (658, 42, 'BI', 'Biltine');
INSERT INTO `zone` VALUES (659, 42, 'BE', 'Borkou-Ennedi-Tibesti');
INSERT INTO `zone` VALUES (660, 42, 'CB', 'Chari-Baguirmi');
INSERT INTO `zone` VALUES (661, 42, 'GU', 'Guera');
INSERT INTO `zone` VALUES (662, 42, 'KA', 'Kanem');
INSERT INTO `zone` VALUES (663, 42, 'LA', 'Lac');
INSERT INTO `zone` VALUES (664, 42, 'LC', 'Logone Occidental');
INSERT INTO `zone` VALUES (665, 42, 'LR', 'Logone Oriental');
INSERT INTO `zone` VALUES (666, 42, 'MK', 'Mayo-Kebbi');
INSERT INTO `zone` VALUES (667, 42, 'MC', 'Moyen-Chari');
INSERT INTO `zone` VALUES (668, 42, 'OU', 'Ouaddai');
INSERT INTO `zone` VALUES (669, 42, 'SA', 'Salamat');
INSERT INTO `zone` VALUES (670, 42, 'TA', 'Tandjile');
INSERT INTO `zone` VALUES (671, 43, 'AI', 'Aisen del General Carlos Ibanez');
INSERT INTO `zone` VALUES (672, 43, 'AN', 'Antofagasta');
INSERT INTO `zone` VALUES (673, 43, 'AR', 'Araucania');
INSERT INTO `zone` VALUES (674, 43, 'AT', 'Atacama');
INSERT INTO `zone` VALUES (675, 43, 'BI', 'Bio-Bio');
INSERT INTO `zone` VALUES (676, 43, 'CO', 'Coquimbo');
INSERT INTO `zone` VALUES (677, 43, 'LI', 'Libertador General Bernardo O''Hi');
INSERT INTO `zone` VALUES (678, 43, 'LL', 'Los Lagos');
INSERT INTO `zone` VALUES (679, 43, 'MA', 'Magallanes y de la Antartica Chi');
INSERT INTO `zone` VALUES (680, 43, 'ML', 'Maule');
INSERT INTO `zone` VALUES (681, 43, 'RM', 'Region Metropolitana');
INSERT INTO `zone` VALUES (682, 43, 'TA', 'Tarapaca');
INSERT INTO `zone` VALUES (683, 43, 'VS', 'Valparaiso');
INSERT INTO `zone` VALUES (684, 44, 'AN', 'Anhui');
INSERT INTO `zone` VALUES (685, 44, 'BE', 'Beijing');
INSERT INTO `zone` VALUES (686, 44, 'CH', 'Chongqing');
INSERT INTO `zone` VALUES (687, 44, 'FU', 'Fujian');
INSERT INTO `zone` VALUES (688, 44, 'GA', 'Gansu');
INSERT INTO `zone` VALUES (689, 44, 'GU', 'Guangdong');
INSERT INTO `zone` VALUES (690, 44, 'GX', 'Guangxi');
INSERT INTO `zone` VALUES (691, 44, 'GZ', 'Guizhou');
INSERT INTO `zone` VALUES (692, 44, 'HA', 'Hainan');
INSERT INTO `zone` VALUES (693, 44, 'HB', 'Hebei');
INSERT INTO `zone` VALUES (694, 44, 'HL', 'Heilongjiang');
INSERT INTO `zone` VALUES (695, 44, 'HE', 'Henan');
INSERT INTO `zone` VALUES (696, 44, 'HK', 'Hong Kong');
INSERT INTO `zone` VALUES (697, 44, 'HU', 'Hubei');
INSERT INTO `zone` VALUES (698, 44, 'HN', 'Hunan');
INSERT INTO `zone` VALUES (699, 44, 'IM', 'Inner Mongolia');
INSERT INTO `zone` VALUES (700, 44, 'JI', 'Jiangsu');
INSERT INTO `zone` VALUES (701, 44, 'JX', 'Jiangxi');
INSERT INTO `zone` VALUES (702, 44, 'JL', 'Jilin');
INSERT INTO `zone` VALUES (703, 44, 'LI', 'Liaoning');
INSERT INTO `zone` VALUES (704, 44, 'MA', 'Macau');
INSERT INTO `zone` VALUES (705, 44, 'NI', 'Ningxia');
INSERT INTO `zone` VALUES (706, 44, 'SH', 'Shaanxi');
INSERT INTO `zone` VALUES (707, 44, 'SA', 'Shandong');
INSERT INTO `zone` VALUES (708, 44, 'SG', 'Shanghai');
INSERT INTO `zone` VALUES (709, 44, 'SX', 'Shanxi');
INSERT INTO `zone` VALUES (710, 44, 'SI', 'Sichuan');
INSERT INTO `zone` VALUES (711, 44, 'TI', 'Tianjin');
INSERT INTO `zone` VALUES (712, 44, 'XI', 'Xinjiang');
INSERT INTO `zone` VALUES (713, 44, 'YU', 'Yunnan');
INSERT INTO `zone` VALUES (714, 44, 'ZH', 'Zhejiang');
INSERT INTO `zone` VALUES (715, 46, 'D', 'Direction Island');
INSERT INTO `zone` VALUES (716, 46, 'H', 'Home Island');
INSERT INTO `zone` VALUES (717, 46, 'O', 'Horsburgh Island');
INSERT INTO `zone` VALUES (718, 46, 'S', 'South Island');
INSERT INTO `zone` VALUES (719, 46, 'W', 'West Island');
INSERT INTO `zone` VALUES (720, 47, 'AMZ', 'Amazonas');
INSERT INTO `zone` VALUES (721, 47, 'ANT', 'Antioquia');
INSERT INTO `zone` VALUES (722, 47, 'ARA', 'Arauca');
INSERT INTO `zone` VALUES (723, 47, 'ATL', 'Atlantico');
INSERT INTO `zone` VALUES (724, 47, 'BDC', 'Bogota D.C.');
INSERT INTO `zone` VALUES (725, 47, 'BOL', 'Bolivar');
INSERT INTO `zone` VALUES (726, 47, 'BOY', 'Boyaca');
INSERT INTO `zone` VALUES (727, 47, 'CAL', 'Caldas');
INSERT INTO `zone` VALUES (728, 47, 'CAQ', 'Caqueta');
INSERT INTO `zone` VALUES (729, 47, 'CAS', 'Casanare');
INSERT INTO `zone` VALUES (730, 47, 'CAU', 'Cauca');
INSERT INTO `zone` VALUES (731, 47, 'CES', 'Cesar');
INSERT INTO `zone` VALUES (732, 47, 'CHO', 'Choco');
INSERT INTO `zone` VALUES (733, 47, 'COR', 'Cordoba');
INSERT INTO `zone` VALUES (734, 47, 'CAM', 'Cundinamarca');
INSERT INTO `zone` VALUES (735, 47, 'GNA', 'Guainia');
INSERT INTO `zone` VALUES (736, 47, 'GJR', 'Guajira');
INSERT INTO `zone` VALUES (737, 47, 'GVR', 'Guaviare');
INSERT INTO `zone` VALUES (738, 47, 'HUI', 'Huila');
INSERT INTO `zone` VALUES (739, 47, 'MAG', 'Magdalena');
INSERT INTO `zone` VALUES (740, 47, 'MET', 'Meta');
INSERT INTO `zone` VALUES (741, 47, 'NAR', 'Narino');
INSERT INTO `zone` VALUES (742, 47, 'NDS', 'Norte de Santander');
INSERT INTO `zone` VALUES (743, 47, 'PUT', 'Putumayo');
INSERT INTO `zone` VALUES (744, 47, 'QUI', 'Quindio');
INSERT INTO `zone` VALUES (745, 47, 'RIS', 'Risaralda');
INSERT INTO `zone` VALUES (746, 47, 'SAP', 'San Andres y Providencia');
INSERT INTO `zone` VALUES (747, 47, 'SAN', 'Santander');
INSERT INTO `zone` VALUES (748, 47, 'SUC', 'Sucre');
INSERT INTO `zone` VALUES (749, 47, 'TOL', 'Tolima');
INSERT INTO `zone` VALUES (750, 47, 'VDC', 'Valle del Cauca');
INSERT INTO `zone` VALUES (751, 47, 'VAU', 'Vaupes');
INSERT INTO `zone` VALUES (752, 47, 'VIC', 'Vichada');
INSERT INTO `zone` VALUES (753, 48, 'G', 'Grande Comore');
INSERT INTO `zone` VALUES (754, 48, 'A', 'Anjouan');
INSERT INTO `zone` VALUES (755, 48, 'M', 'Moheli');
INSERT INTO `zone` VALUES (756, 49, 'BO', 'Bouenza');
INSERT INTO `zone` VALUES (757, 49, 'BR', 'Brazzaville');
INSERT INTO `zone` VALUES (758, 49, 'CU', 'Cuvette');
INSERT INTO `zone` VALUES (759, 49, 'CO', 'Cuvette-Ouest');
INSERT INTO `zone` VALUES (760, 49, 'KO', 'Kouilou');
INSERT INTO `zone` VALUES (761, 49, 'LE', 'Lekoumou');
INSERT INTO `zone` VALUES (762, 49, 'LI', 'Likouala');
INSERT INTO `zone` VALUES (763, 49, 'NI', 'Niari');
INSERT INTO `zone` VALUES (764, 49, 'PL', 'Plateaux');
INSERT INTO `zone` VALUES (765, 49, 'PO', 'Pool');
INSERT INTO `zone` VALUES (766, 49, 'SA', 'Sangha');
INSERT INTO `zone` VALUES (767, 50, 'PU', 'Pukapuka');
INSERT INTO `zone` VALUES (768, 50, 'RK', 'Rakahanga');
INSERT INTO `zone` VALUES (769, 50, 'MK', 'Manihiki');
INSERT INTO `zone` VALUES (770, 50, 'PE', 'Penrhyn');
INSERT INTO `zone` VALUES (771, 50, 'NI', 'Nassau Island');
INSERT INTO `zone` VALUES (772, 50, 'SU', 'Surwarrow');
INSERT INTO `zone` VALUES (773, 50, 'PA', 'Palmerston');
INSERT INTO `zone` VALUES (774, 50, 'AI', 'Aitutaki');
INSERT INTO `zone` VALUES (775, 50, 'MA', 'Manuae');
INSERT INTO `zone` VALUES (776, 50, 'TA', 'Takutea');
INSERT INTO `zone` VALUES (777, 50, 'MT', 'Mitiaro');
INSERT INTO `zone` VALUES (778, 50, 'AT', 'Atiu');
INSERT INTO `zone` VALUES (779, 50, 'MU', 'Mauke');
INSERT INTO `zone` VALUES (780, 50, 'RR', 'Rarotonga');
INSERT INTO `zone` VALUES (781, 50, 'MG', 'Mangaia');
INSERT INTO `zone` VALUES (782, 51, 'AL', 'Alajuela');
INSERT INTO `zone` VALUES (783, 51, 'CA', 'Cartago');
INSERT INTO `zone` VALUES (784, 51, 'GU', 'Guanacaste');
INSERT INTO `zone` VALUES (785, 51, 'HE', 'Heredia');
INSERT INTO `zone` VALUES (786, 51, 'LI', 'Limon');
INSERT INTO `zone` VALUES (787, 51, 'PU', 'Puntarenas');
INSERT INTO `zone` VALUES (788, 51, 'SJ', 'San Jose');
INSERT INTO `zone` VALUES (789, 52, 'ABE', 'Abengourou');
INSERT INTO `zone` VALUES (790, 52, 'ABI', 'Abidjan');
INSERT INTO `zone` VALUES (791, 52, 'ABO', 'Aboisso');
INSERT INTO `zone` VALUES (792, 52, 'ADI', 'Adiake');
INSERT INTO `zone` VALUES (793, 52, 'ADZ', 'Adzope');
INSERT INTO `zone` VALUES (794, 52, 'AGB', 'Agboville');
INSERT INTO `zone` VALUES (795, 52, 'AGN', 'Agnibilekrou');
INSERT INTO `zone` VALUES (796, 52, 'ALE', 'Alepe');
INSERT INTO `zone` VALUES (797, 52, 'BOC', 'Bocanda');
INSERT INTO `zone` VALUES (798, 52, 'BAN', 'Bangolo');
INSERT INTO `zone` VALUES (799, 52, 'BEO', 'Beoumi');
INSERT INTO `zone` VALUES (800, 52, 'BIA', 'Biankouma');
INSERT INTO `zone` VALUES (801, 52, 'BDK', 'Bondoukou');
INSERT INTO `zone` VALUES (802, 52, 'BGN', 'Bongouanou');
INSERT INTO `zone` VALUES (803, 52, 'BFL', 'Bouafle');
INSERT INTO `zone` VALUES (804, 52, 'BKE', 'Bouake');
INSERT INTO `zone` VALUES (805, 52, 'BNA', 'Bouna');
INSERT INTO `zone` VALUES (806, 52, 'BDL', 'Boundiali');
INSERT INTO `zone` VALUES (807, 52, 'DKL', 'Dabakala');
INSERT INTO `zone` VALUES (808, 52, 'DBU', 'Dabou');
INSERT INTO `zone` VALUES (809, 52, 'DAL', 'Daloa');
INSERT INTO `zone` VALUES (810, 52, 'DAN', 'Danane');
INSERT INTO `zone` VALUES (811, 52, 'DAO', 'Daoukro');
INSERT INTO `zone` VALUES (812, 52, 'DIM', 'Dimbokro');
INSERT INTO `zone` VALUES (813, 52, 'DIV', 'Divo');
INSERT INTO `zone` VALUES (814, 52, 'DUE', 'Duekoue');
INSERT INTO `zone` VALUES (815, 52, 'FER', 'Ferkessedougou');
INSERT INTO `zone` VALUES (816, 52, 'GAG', 'Gagnoa');
INSERT INTO `zone` VALUES (817, 52, 'GBA', 'Grand-Bassam');
INSERT INTO `zone` VALUES (818, 52, 'GLA', 'Grand-Lahou');
INSERT INTO `zone` VALUES (819, 52, 'GUI', 'Guiglo');
INSERT INTO `zone` VALUES (820, 52, 'ISS', 'Issia');
INSERT INTO `zone` VALUES (821, 52, 'JAC', 'Jacqueville');
INSERT INTO `zone` VALUES (822, 52, 'KAT', 'Katiola');
INSERT INTO `zone` VALUES (823, 52, 'KOR', 'Korhogo');
INSERT INTO `zone` VALUES (824, 52, 'LAK', 'Lakota');
INSERT INTO `zone` VALUES (825, 52, 'MAN', 'Man');
INSERT INTO `zone` VALUES (826, 52, 'MKN', 'Mankono');
INSERT INTO `zone` VALUES (827, 52, 'MBA', 'Mbahiakro');
INSERT INTO `zone` VALUES (828, 52, 'ODI', 'Odienne');
INSERT INTO `zone` VALUES (829, 52, 'OUM', 'Oume');
INSERT INTO `zone` VALUES (830, 52, 'SAK', 'Sakassou');
INSERT INTO `zone` VALUES (831, 52, 'SPE', 'San-Pedro');
INSERT INTO `zone` VALUES (832, 52, 'SAS', 'Sassandra');
INSERT INTO `zone` VALUES (833, 52, 'SEG', 'Seguela');
INSERT INTO `zone` VALUES (834, 52, 'SIN', 'Sinfra');
INSERT INTO `zone` VALUES (835, 52, 'SOU', 'Soubre');
INSERT INTO `zone` VALUES (836, 52, 'TAB', 'Tabou');
INSERT INTO `zone` VALUES (837, 52, 'TAN', 'Tanda');
INSERT INTO `zone` VALUES (838, 52, 'TIE', 'Tiebissou');
INSERT INTO `zone` VALUES (839, 52, 'TIN', 'Tingrela');
INSERT INTO `zone` VALUES (840, 52, 'TIA', 'Tiassale');
INSERT INTO `zone` VALUES (841, 52, 'TBA', 'Touba');
INSERT INTO `zone` VALUES (842, 52, 'TLP', 'Toulepleu');
INSERT INTO `zone` VALUES (843, 52, 'TMD', 'Toumodi');
INSERT INTO `zone` VALUES (844, 52, 'VAV', 'Vavoua');
INSERT INTO `zone` VALUES (845, 52, 'YAM', 'Yamoussoukro');
INSERT INTO `zone` VALUES (846, 52, 'ZUE', 'Zuenoula');
INSERT INTO `zone` VALUES (847, 53, 'BB', 'Bjelovar-Bilogora');
INSERT INTO `zone` VALUES (848, 53, 'CZ', 'City of Zagreb');
INSERT INTO `zone` VALUES (849, 53, 'DN', 'Dubrovnik-Neretva');
INSERT INTO `zone` VALUES (850, 53, 'IS', 'Istra');
INSERT INTO `zone` VALUES (851, 53, 'KA', 'Karlovac');
INSERT INTO `zone` VALUES (852, 53, 'KK', 'Koprivnica-Krizevci');
INSERT INTO `zone` VALUES (853, 53, 'KZ', 'Krapina-Zagorje');
INSERT INTO `zone` VALUES (854, 53, 'LS', 'Lika-Senj');
INSERT INTO `zone` VALUES (855, 53, 'ME', 'Medimurje');
INSERT INTO `zone` VALUES (856, 53, 'OB', 'Osijek-Baranja');
INSERT INTO `zone` VALUES (857, 53, 'PS', 'Pozega-Slavonia');
INSERT INTO `zone` VALUES (858, 53, 'PG', 'Primorje-Gorski Kotar');
INSERT INTO `zone` VALUES (859, 53, 'SI', 'Sibenik');
INSERT INTO `zone` VALUES (860, 53, 'SM', 'Sisak-Moslavina');
INSERT INTO `zone` VALUES (861, 53, 'SB', 'Slavonski Brod-Posavina');
INSERT INTO `zone` VALUES (862, 53, 'SD', 'Split-Dalmatia');
INSERT INTO `zone` VALUES (863, 53, 'VA', 'Varazdin');
INSERT INTO `zone` VALUES (864, 53, 'VP', 'Virovitica-Podravina');
INSERT INTO `zone` VALUES (865, 53, 'VS', 'Vukovar-Srijem');
INSERT INTO `zone` VALUES (866, 53, 'ZK', 'Zadar-Knin');
INSERT INTO `zone` VALUES (867, 53, 'ZA', 'Zagreb');
INSERT INTO `zone` VALUES (868, 54, 'CA', 'Camaguey');
INSERT INTO `zone` VALUES (869, 54, 'CD', 'Ciego de Avila');
INSERT INTO `zone` VALUES (870, 54, 'CI', 'Cienfuegos');
INSERT INTO `zone` VALUES (871, 54, 'CH', 'Ciudad de La Habana');
INSERT INTO `zone` VALUES (872, 54, 'GR', 'Granma');
INSERT INTO `zone` VALUES (873, 54, 'GU', 'Guantanamo');
INSERT INTO `zone` VALUES (874, 54, 'HO', 'Holguin');
INSERT INTO `zone` VALUES (875, 54, 'IJ', 'Isla de la Juventud');
INSERT INTO `zone` VALUES (876, 54, 'LH', 'La Habana');
INSERT INTO `zone` VALUES (877, 54, 'LT', 'Las Tunas');
INSERT INTO `zone` VALUES (878, 54, 'MA', 'Matanzas');
INSERT INTO `zone` VALUES (879, 54, 'PR', 'Pinar del Rio');
INSERT INTO `zone` VALUES (880, 54, 'SS', 'Sancti Spiritus');
INSERT INTO `zone` VALUES (881, 54, 'SC', 'Santiago de Cuba');
INSERT INTO `zone` VALUES (882, 54, 'VC', 'Villa Clara');
INSERT INTO `zone` VALUES (883, 55, 'F', 'Famagusta');
INSERT INTO `zone` VALUES (884, 55, 'K', 'Kyrenia');
INSERT INTO `zone` VALUES (885, 55, 'A', 'Larnaca');
INSERT INTO `zone` VALUES (886, 55, 'I', 'Limassol');
INSERT INTO `zone` VALUES (887, 55, 'N', 'Nicosia');
INSERT INTO `zone` VALUES (888, 55, 'P', 'Paphos');
INSERT INTO `zone` VALUES (889, 56, 'U', 'Ustecky');
INSERT INTO `zone` VALUES (890, 56, 'C', 'Jihocesky');
INSERT INTO `zone` VALUES (891, 56, 'B', 'Jihomoravsky');
INSERT INTO `zone` VALUES (892, 56, 'K', 'Karlovarsky');
INSERT INTO `zone` VALUES (893, 56, 'H', 'Kralovehradecky');
INSERT INTO `zone` VALUES (894, 56, 'L', 'Liberecky');
INSERT INTO `zone` VALUES (895, 56, 'T', 'Moravskoslezsky');
INSERT INTO `zone` VALUES (896, 56, 'M', 'Olomoucky');
INSERT INTO `zone` VALUES (897, 56, 'E', 'Pardubicky');
INSERT INTO `zone` VALUES (898, 56, 'P', 'Plzensky');
INSERT INTO `zone` VALUES (899, 56, 'A', 'Praha');
INSERT INTO `zone` VALUES (900, 56, 'S', 'Stredocesky');
INSERT INTO `zone` VALUES (901, 56, 'J', 'Vysocina');
INSERT INTO `zone` VALUES (902, 56, 'Z', 'Zlinsky');
INSERT INTO `zone` VALUES (903, 57, 'AR', 'Arhus');
INSERT INTO `zone` VALUES (904, 57, 'BH', 'Bornholm');
INSERT INTO `zone` VALUES (905, 57, 'CO', 'Copenhagen');
INSERT INTO `zone` VALUES (906, 57, 'FO', 'Faroe Islands');
INSERT INTO `zone` VALUES (907, 57, 'FR', 'Frederiksborg');
INSERT INTO `zone` VALUES (908, 57, 'FY', 'Fyn');
INSERT INTO `zone` VALUES (909, 57, 'KO', 'Kobenhavn');
INSERT INTO `zone` VALUES (910, 57, 'NO', 'Nordjylland');
INSERT INTO `zone` VALUES (911, 57, 'RI', 'Ribe');
INSERT INTO `zone` VALUES (912, 57, 'RK', 'Ringkobing');
INSERT INTO `zone` VALUES (913, 57, 'RO', 'Roskilde');
INSERT INTO `zone` VALUES (914, 57, 'SO', 'Sonderjylland');
INSERT INTO `zone` VALUES (915, 57, 'ST', 'Storstrom');
INSERT INTO `zone` VALUES (916, 57, 'VK', 'Vejle');
INSERT INTO `zone` VALUES (917, 57, 'VJ', 'VestjÃƒÆ’Ã‚Â¦lland');
INSERT INTO `zone` VALUES (918, 57, 'VB', 'Viborg');
INSERT INTO `zone` VALUES (919, 58, 'S', '''Ali Sabih');
INSERT INTO `zone` VALUES (920, 58, 'K', 'Dikhil');
INSERT INTO `zone` VALUES (921, 58, 'J', 'Djibouti');
INSERT INTO `zone` VALUES (922, 58, 'O', 'Obock');
INSERT INTO `zone` VALUES (923, 58, 'T', 'Tadjoura');
INSERT INTO `zone` VALUES (924, 59, 'AND', 'Saint Andrew Parish');
INSERT INTO `zone` VALUES (925, 59, 'DAV', 'Saint David Parish');
INSERT INTO `zone` VALUES (926, 59, 'GEO', 'Saint George Parish');
INSERT INTO `zone` VALUES (927, 59, 'JOH', 'Saint John Parish');
INSERT INTO `zone` VALUES (928, 59, 'JOS', 'Saint Joseph Parish');
INSERT INTO `zone` VALUES (929, 59, 'LUK', 'Saint Luke Parish');
INSERT INTO `zone` VALUES (930, 59, 'MAR', 'Saint Mark Parish');
INSERT INTO `zone` VALUES (931, 59, 'PAT', 'Saint Patrick Parish');
INSERT INTO `zone` VALUES (932, 59, 'PAU', 'Saint Paul Parish');
INSERT INTO `zone` VALUES (933, 59, 'PET', 'Saint Peter Parish');
INSERT INTO `zone` VALUES (934, 60, 'DN', 'Distrito Nacional');
INSERT INTO `zone` VALUES (935, 60, 'AZ', 'Azua');
INSERT INTO `zone` VALUES (936, 60, 'BC', 'Baoruco');
INSERT INTO `zone` VALUES (937, 60, 'BH', 'Barahona');
INSERT INTO `zone` VALUES (938, 60, 'DJ', 'Dajabon');
INSERT INTO `zone` VALUES (939, 60, 'DU', 'Duarte');
INSERT INTO `zone` VALUES (940, 60, 'EL', 'Elias Pina');
INSERT INTO `zone` VALUES (941, 60, 'SY', 'El Seybo');
INSERT INTO `zone` VALUES (942, 60, 'ET', 'Espaillat');
INSERT INTO `zone` VALUES (943, 60, 'HM', 'Hato Mayor');
INSERT INTO `zone` VALUES (944, 60, 'IN', 'Independencia');
INSERT INTO `zone` VALUES (945, 60, 'AL', 'La Altagracia');
INSERT INTO `zone` VALUES (946, 60, 'RO', 'La Romana');
INSERT INTO `zone` VALUES (947, 60, 'VE', 'La Vega');
INSERT INTO `zone` VALUES (948, 60, 'MT', 'Maria Trinidad Sanchez');
INSERT INTO `zone` VALUES (949, 60, 'MN', 'Monsenor Nouel');
INSERT INTO `zone` VALUES (950, 60, 'MC', 'Monte Cristi');
INSERT INTO `zone` VALUES (951, 60, 'MP', 'Monte Plata');
INSERT INTO `zone` VALUES (952, 60, 'PD', 'Pedernales');
INSERT INTO `zone` VALUES (953, 60, 'PR', 'Peravia (Bani)');
INSERT INTO `zone` VALUES (954, 60, 'PP', 'Puerto Plata');
INSERT INTO `zone` VALUES (955, 60, 'SL', 'Salcedo');
INSERT INTO `zone` VALUES (956, 60, 'SM', 'Samana');
INSERT INTO `zone` VALUES (957, 60, 'SH', 'Sanchez Ramirez');
INSERT INTO `zone` VALUES (958, 60, 'SC', 'San Cristobal');
INSERT INTO `zone` VALUES (959, 60, 'JO', 'San Jose de Ocoa');
INSERT INTO `zone` VALUES (960, 60, 'SJ', 'San Juan');
INSERT INTO `zone` VALUES (961, 60, 'PM', 'San Pedro de Macoris');
INSERT INTO `zone` VALUES (962, 60, 'SA', 'Santiago');
INSERT INTO `zone` VALUES (963, 60, 'ST', 'Santiago Rodriguez');
INSERT INTO `zone` VALUES (964, 60, 'SD', 'Santo Domingo');
INSERT INTO `zone` VALUES (965, 60, 'VA', 'Valverde');
INSERT INTO `zone` VALUES (966, 61, 'AL', 'Aileu');
INSERT INTO `zone` VALUES (967, 61, 'AN', 'Ainaro');
INSERT INTO `zone` VALUES (968, 61, 'BA', 'Baucau');
INSERT INTO `zone` VALUES (969, 61, 'BO', 'Bobonaro');
INSERT INTO `zone` VALUES (970, 61, 'CO', 'Cova Lima');
INSERT INTO `zone` VALUES (971, 61, 'DI', 'Dili');
INSERT INTO `zone` VALUES (972, 61, 'ER', 'Ermera');
INSERT INTO `zone` VALUES (973, 61, 'LA', 'Lautem');
INSERT INTO `zone` VALUES (974, 61, 'LI', 'Liquica');
INSERT INTO `zone` VALUES (975, 61, 'MT', 'Manatuto');
INSERT INTO `zone` VALUES (976, 61, 'MF', 'Manufahi');
INSERT INTO `zone` VALUES (977, 61, 'OE', 'Oecussi');
INSERT INTO `zone` VALUES (978, 61, 'VI', 'Viqueque');
INSERT INTO `zone` VALUES (979, 62, 'AZU', 'Azuay');
INSERT INTO `zone` VALUES (980, 62, 'BOL', 'Bolivar');
INSERT INTO `zone` VALUES (981, 62, 'CAN', 'CaÃƒÆ’Ã‚Â±ar');
INSERT INTO `zone` VALUES (982, 62, 'CAR', 'Carchi');
INSERT INTO `zone` VALUES (983, 62, 'CHI', 'Chimborazo');
INSERT INTO `zone` VALUES (984, 62, 'COT', 'Cotopaxi');
INSERT INTO `zone` VALUES (985, 62, 'EOR', 'El Oro');
INSERT INTO `zone` VALUES (986, 62, 'ESM', 'Esmeraldas');
INSERT INTO `zone` VALUES (987, 62, 'GPS', 'GalÃƒÆ’Ã‚Â¡pagos');
INSERT INTO `zone` VALUES (988, 62, 'GUA', 'Guayas');
INSERT INTO `zone` VALUES (989, 62, 'IMB', 'Imbabura');
INSERT INTO `zone` VALUES (990, 62, 'LOJ', 'Loja');
INSERT INTO `zone` VALUES (991, 62, 'LRO', 'Los Rios');
INSERT INTO `zone` VALUES (992, 62, 'MAN', 'ManabÃƒÆ’Ã‚Â­');
INSERT INTO `zone` VALUES (993, 62, 'MSA', 'Morona Santiago');
INSERT INTO `zone` VALUES (994, 62, 'NAP', 'Napo');
INSERT INTO `zone` VALUES (995, 62, 'ORE', 'Orellana');
INSERT INTO `zone` VALUES (996, 62, 'PAS', 'Pastaza');
INSERT INTO `zone` VALUES (997, 62, 'PIC', 'Pichincha');
INSERT INTO `zone` VALUES (998, 62, 'SUC', 'SucumbÃƒÆ’Ã‚Â­os');
INSERT INTO `zone` VALUES (999, 62, 'TUN', 'Tungurahua');
INSERT INTO `zone` VALUES (1000, 62, 'ZCH', 'Zamora Chinchipe');
INSERT INTO `zone` VALUES (1001, 63, 'DHY', 'Ad Daqahliyah');
INSERT INTO `zone` VALUES (1002, 63, 'BAM', 'Al Bahr al Ahmar');
INSERT INTO `zone` VALUES (1003, 63, 'BHY', 'Al Buhayrah');
INSERT INTO `zone` VALUES (1004, 63, 'FYM', 'Al Fayyum');
INSERT INTO `zone` VALUES (1005, 63, 'GBY', 'Al Gharbiyah');
INSERT INTO `zone` VALUES (1006, 63, 'IDR', 'Al Iskandariyah');
INSERT INTO `zone` VALUES (1007, 63, 'IML', 'Al Isma''iliyah');
INSERT INTO `zone` VALUES (1008, 63, 'JZH', 'Al Jizah');
INSERT INTO `zone` VALUES (1009, 63, 'MFY', 'Al Minufiyah');
INSERT INTO `zone` VALUES (1010, 63, 'MNY', 'Al Minya');
INSERT INTO `zone` VALUES (1011, 63, 'QHR', 'Al Qahirah');
INSERT INTO `zone` VALUES (1012, 63, 'QLY', 'Al Qalyubiyah');
INSERT INTO `zone` VALUES (1013, 63, 'WJD', 'Al Wadi al Jadid');
INSERT INTO `zone` VALUES (1014, 63, 'SHQ', 'Ash Sharqiyah');
INSERT INTO `zone` VALUES (1015, 63, 'SWY', 'As Suways');
INSERT INTO `zone` VALUES (1016, 63, 'ASW', 'Aswan');
INSERT INTO `zone` VALUES (1017, 63, 'ASY', 'Asyut');
INSERT INTO `zone` VALUES (1018, 63, 'BSW', 'Bani Suwayf');
INSERT INTO `zone` VALUES (1019, 63, 'BSD', 'Bur Sa''id');
INSERT INTO `zone` VALUES (1020, 63, 'DMY', 'Dumyat');
INSERT INTO `zone` VALUES (1021, 63, 'JNS', 'Janub Sina''');
INSERT INTO `zone` VALUES (1022, 63, 'KSH', 'Kafr ash Shaykh');
INSERT INTO `zone` VALUES (1023, 63, 'MAT', 'Matruh');
INSERT INTO `zone` VALUES (1024, 63, 'QIN', 'Qina');
INSERT INTO `zone` VALUES (1025, 63, 'SHS', 'Shamal Sina''');
INSERT INTO `zone` VALUES (1026, 63, 'SUH', 'Suhaj');
INSERT INTO `zone` VALUES (1027, 64, 'AH', 'Ahuachapan');
INSERT INTO `zone` VALUES (1028, 64, 'CA', 'Cabanas');
INSERT INTO `zone` VALUES (1029, 64, 'CH', 'Chalatenango');
INSERT INTO `zone` VALUES (1030, 64, 'CU', 'Cuscatlan');
INSERT INTO `zone` VALUES (1031, 64, 'LB', 'La Libertad');
INSERT INTO `zone` VALUES (1032, 64, 'PZ', 'La Paz');
INSERT INTO `zone` VALUES (1033, 64, 'UN', 'La Union');
INSERT INTO `zone` VALUES (1034, 64, 'MO', 'Morazan');
INSERT INTO `zone` VALUES (1035, 64, 'SM', 'San Miguel');
INSERT INTO `zone` VALUES (1036, 64, 'SS', 'San Salvador');
INSERT INTO `zone` VALUES (1037, 64, 'SV', 'San Vicente');
INSERT INTO `zone` VALUES (1038, 64, 'SA', 'Santa Ana');
INSERT INTO `zone` VALUES (1039, 64, 'SO', 'Sonsonate');
INSERT INTO `zone` VALUES (1040, 64, 'US', 'Usulutan');
INSERT INTO `zone` VALUES (1041, 65, 'AN', 'Provincia Annobon');
INSERT INTO `zone` VALUES (1042, 65, 'BN', 'Provincia Bioko Norte');
INSERT INTO `zone` VALUES (1043, 65, 'BS', 'Provincia Bioko Sur');
INSERT INTO `zone` VALUES (1044, 65, 'CS', 'Provincia Centro Sur');
INSERT INTO `zone` VALUES (1045, 65, 'KN', 'Provincia Kie-Ntem');
INSERT INTO `zone` VALUES (1046, 65, 'LI', 'Provincia Litoral');
INSERT INTO `zone` VALUES (1047, 65, 'WN', 'Provincia Wele-Nzas');
INSERT INTO `zone` VALUES (1048, 66, 'MA', 'Central (Maekel)');
INSERT INTO `zone` VALUES (1049, 66, 'KE', 'Anseba (Keren)');
INSERT INTO `zone` VALUES (1050, 66, 'DK', 'Southern Red Sea (Debub-Keih-Bah');
INSERT INTO `zone` VALUES (1051, 66, 'SK', 'Northern Red Sea (Semien-Keih-Ba');
INSERT INTO `zone` VALUES (1052, 66, 'DE', 'Southern (Debub)');
INSERT INTO `zone` VALUES (1053, 66, 'BR', 'Gash-Barka (Barentu)');
INSERT INTO `zone` VALUES (1054, 67, 'HA', 'Harjumaa (Tallinn)');
INSERT INTO `zone` VALUES (1055, 67, 'HI', 'Hiiumaa (Kardla)');
INSERT INTO `zone` VALUES (1056, 67, 'IV', 'Ida-Virumaa (Johvi)');
INSERT INTO `zone` VALUES (1057, 67, 'JA', 'Jarvamaa (Paide)');
INSERT INTO `zone` VALUES (1058, 67, 'JO', 'Jogevamaa (Jogeva)');
INSERT INTO `zone` VALUES (1059, 67, 'LV', 'Laane-Virumaa (Rakvere)');
INSERT INTO `zone` VALUES (1060, 67, 'LA', 'Laanemaa (Haapsalu)');
INSERT INTO `zone` VALUES (1061, 67, 'PA', 'Parnumaa (Parnu)');
INSERT INTO `zone` VALUES (1062, 67, 'PO', 'Polvamaa (Polva)');
INSERT INTO `zone` VALUES (1063, 67, 'RA', 'Raplamaa (Rapla)');
INSERT INTO `zone` VALUES (1064, 67, 'SA', 'Saaremaa (Kuessaare)');
INSERT INTO `zone` VALUES (1065, 67, 'TA', 'Tartumaa (Tartu)');
INSERT INTO `zone` VALUES (1066, 67, 'VA', 'Valgamaa (Valga)');
INSERT INTO `zone` VALUES (1067, 67, 'VI', 'Viljandimaa (Viljandi)');
INSERT INTO `zone` VALUES (1068, 67, 'VO', 'Vorumaa (Voru)');
INSERT INTO `zone` VALUES (1069, 68, 'AF', 'Afar');
INSERT INTO `zone` VALUES (1070, 68, 'AH', 'Amhara');
INSERT INTO `zone` VALUES (1071, 68, 'BG', 'Benishangul-Gumaz');
INSERT INTO `zone` VALUES (1072, 68, 'GB', 'Gambela');
INSERT INTO `zone` VALUES (1073, 68, 'HR', 'Hariai');
INSERT INTO `zone` VALUES (1074, 68, 'OR', 'Oromia');
INSERT INTO `zone` VALUES (1075, 68, 'SM', 'Somali');
INSERT INTO `zone` VALUES (1076, 68, 'SN', 'Southern Nations - Nationalities');
INSERT INTO `zone` VALUES (1077, 68, 'TG', 'Tigray');
INSERT INTO `zone` VALUES (1078, 68, 'AA', 'Addis Ababa');
INSERT INTO `zone` VALUES (1079, 68, 'DD', 'Dire Dawa');
INSERT INTO `zone` VALUES (1080, 71, 'C', 'Central Division');
INSERT INTO `zone` VALUES (1081, 71, 'N', 'Northern Division');
INSERT INTO `zone` VALUES (1082, 71, 'E', 'Eastern Division');
INSERT INTO `zone` VALUES (1083, 71, 'W', 'Western Division');
INSERT INTO `zone` VALUES (1084, 71, 'R', 'Rotuma');
INSERT INTO `zone` VALUES (1085, 72, 'AL', 'Ahvenanmaan Laani');
INSERT INTO `zone` VALUES (1086, 72, 'ES', 'Etela-Suomen Laani');
INSERT INTO `zone` VALUES (1087, 72, 'IS', 'Ita-Suomen Laani');
INSERT INTO `zone` VALUES (1088, 72, 'LS', 'Lansi-Suomen Laani');
INSERT INTO `zone` VALUES (1089, 72, 'LA', 'Lapin Lanani');
INSERT INTO `zone` VALUES (1090, 72, 'OU', 'Oulun Laani');
INSERT INTO `zone` VALUES (1091, 73, 'AL', 'Alsace');
INSERT INTO `zone` VALUES (1092, 73, 'AQ', 'Aquitaine');
INSERT INTO `zone` VALUES (1093, 73, 'AU', 'Auvergne');
INSERT INTO `zone` VALUES (1094, 73, 'BR', 'Brittany');
INSERT INTO `zone` VALUES (1095, 73, 'BU', 'Burgundy');
INSERT INTO `zone` VALUES (1096, 73, 'CE', 'Center Loire Valley');
INSERT INTO `zone` VALUES (1097, 73, 'CH', 'Champagne');
INSERT INTO `zone` VALUES (1098, 73, 'CO', 'Corse');
INSERT INTO `zone` VALUES (1099, 73, 'FR', 'France Comte');
INSERT INTO `zone` VALUES (1100, 73, 'LA', 'Languedoc Roussillon');
INSERT INTO `zone` VALUES (1101, 73, 'LI', 'Limousin');
INSERT INTO `zone` VALUES (1102, 73, 'LO', 'Lorraine');
INSERT INTO `zone` VALUES (1103, 73, 'MI', 'Midi Pyrenees');
INSERT INTO `zone` VALUES (1104, 73, 'NO', 'Nord Pas de Calais');
INSERT INTO `zone` VALUES (1105, 73, 'NR', 'Normandy');
INSERT INTO `zone` VALUES (1106, 73, 'PA', 'Paris / Ill de France');
INSERT INTO `zone` VALUES (1107, 73, 'PI', 'Picardie');
INSERT INTO `zone` VALUES (1108, 73, 'PO', 'Poitou Charente');
INSERT INTO `zone` VALUES (1109, 73, 'PR', 'Provence');
INSERT INTO `zone` VALUES (1110, 73, 'RH', 'Rhone Alps');
INSERT INTO `zone` VALUES (1111, 73, 'RI', 'Riviera');
INSERT INTO `zone` VALUES (1112, 73, 'WE', 'Western Loire Valley');
INSERT INTO `zone` VALUES (1113, 74, 'Et', 'Etranger');
INSERT INTO `zone` VALUES (1114, 74, '01', 'Ain');
INSERT INTO `zone` VALUES (1115, 74, '02', 'Aisne');
INSERT INTO `zone` VALUES (1116, 74, '03', 'Allier');
INSERT INTO `zone` VALUES (1117, 74, '04', 'Alpes de Haute Provence');
INSERT INTO `zone` VALUES (1118, 74, '05', 'Hautes-Alpes');
INSERT INTO `zone` VALUES (1119, 74, '06', 'Alpes Maritimes');
INSERT INTO `zone` VALUES (1120, 74, '07', 'ArdÃƒÆ’Ã‚Â¨che');
INSERT INTO `zone` VALUES (1121, 74, '08', 'Ardennes');
INSERT INTO `zone` VALUES (1122, 74, '09', 'AriÃƒÆ’Ã‚Â¨ge');
INSERT INTO `zone` VALUES (1123, 74, '10', 'Aube');
INSERT INTO `zone` VALUES (1124, 74, '11', 'Aude');
INSERT INTO `zone` VALUES (1125, 74, '12', 'Aveyron');
INSERT INTO `zone` VALUES (1126, 74, '13', 'Bouches du RhÃƒÆ’Ã‚Â´ne');
INSERT INTO `zone` VALUES (1127, 74, '14', 'Calvados');
INSERT INTO `zone` VALUES (1128, 74, '15', 'Cantal');
INSERT INTO `zone` VALUES (1129, 74, '16', 'Charente');
INSERT INTO `zone` VALUES (1130, 74, '17', 'Charente Maritime');
INSERT INTO `zone` VALUES (1131, 74, '18', 'Cher');
INSERT INTO `zone` VALUES (1132, 74, '19', 'CorrÃƒÆ’Ã‚Â¨ze');
INSERT INTO `zone` VALUES (1133, 74, '2A', 'Corse du Sud');
INSERT INTO `zone` VALUES (1134, 74, '2B', 'Haute Corse');
INSERT INTO `zone` VALUES (1135, 74, '21', 'CÃƒÆ’Ã‚Â´te d''or');
INSERT INTO `zone` VALUES (1136, 74, '22', 'CÃƒÆ’Ã‚Â´tes d''Armor');
INSERT INTO `zone` VALUES (1137, 74, '23', 'Creuse');
INSERT INTO `zone` VALUES (1138, 74, '24', 'Dordogne');
INSERT INTO `zone` VALUES (1139, 74, '25', 'Doubs');
INSERT INTO `zone` VALUES (1140, 74, '26', 'DrÃƒÆ’Ã‚Â´me');
INSERT INTO `zone` VALUES (1141, 74, '27', 'Eure');
INSERT INTO `zone` VALUES (1142, 74, '28', 'Eure et Loir');
INSERT INTO `zone` VALUES (1143, 74, '29', 'FinistÃƒÆ’Ã‚Â¨re');
INSERT INTO `zone` VALUES (1144, 74, '30', 'Gard');
INSERT INTO `zone` VALUES (1145, 74, '31', 'Haute Garonne');
INSERT INTO `zone` VALUES (1146, 74, '32', 'Gers');
INSERT INTO `zone` VALUES (1147, 74, '33', 'Gironde');
INSERT INTO `zone` VALUES (1148, 74, '34', 'HÃƒÆ’Ã‚Â©;rault');
INSERT INTO `zone` VALUES (1149, 74, '35', 'Ille et Vilaine');
INSERT INTO `zone` VALUES (1150, 74, '36', 'Indre');
INSERT INTO `zone` VALUES (1151, 74, '37', 'Indre et Loire');
INSERT INTO `zone` VALUES (1152, 74, '38', 'IsÃƒÆ’Ã‚Â©;re');
INSERT INTO `zone` VALUES (1153, 74, '39', 'Jura');
INSERT INTO `zone` VALUES (1154, 74, '40', 'Landes');
INSERT INTO `zone` VALUES (1155, 74, '41', 'Loir et Cher');
INSERT INTO `zone` VALUES (1156, 74, '42', 'Loire');
INSERT INTO `zone` VALUES (1157, 74, '43', 'Haute Loire');
INSERT INTO `zone` VALUES (1158, 74, '44', 'Loire Atlantique');
INSERT INTO `zone` VALUES (1159, 74, '45', 'Loiret');
INSERT INTO `zone` VALUES (1160, 74, '46', 'Lot');
INSERT INTO `zone` VALUES (1161, 74, '47', 'Lot et Garonne');
INSERT INTO `zone` VALUES (1162, 74, '48', 'LozÃƒÆ’Ã‚Â¨re');
INSERT INTO `zone` VALUES (1163, 74, '49', 'Maine et Loire');
INSERT INTO `zone` VALUES (1164, 74, '50', 'Manche');
INSERT INTO `zone` VALUES (1165, 74, '51', 'Marne');
INSERT INTO `zone` VALUES (1166, 74, '52', 'Haute Marne');
INSERT INTO `zone` VALUES (1167, 74, '53', 'Mayenne');
INSERT INTO `zone` VALUES (1168, 74, '54', 'Meurthe et Moselle');
INSERT INTO `zone` VALUES (1169, 74, '55', 'Meuse');
INSERT INTO `zone` VALUES (1170, 74, '56', 'Morbihan');
INSERT INTO `zone` VALUES (1171, 74, '57', 'Moselle');
INSERT INTO `zone` VALUES (1172, 74, '58', 'NiÃƒÆ’Ã‚Â¨vre');
INSERT INTO `zone` VALUES (1173, 74, '59', 'Nord');
INSERT INTO `zone` VALUES (1174, 74, '60', 'Oise');
INSERT INTO `zone` VALUES (1175, 74, '61', 'Orne');
INSERT INTO `zone` VALUES (1176, 74, '62', 'Pas de Calais');
INSERT INTO `zone` VALUES (1177, 74, '63', 'Puy de DÃƒÆ’Ã‚Â´me');
INSERT INTO `zone` VALUES (1178, 74, '64', 'PyrÃƒÆ’Ã‚Â©nÃƒÆ’Ã‚Â©es Atlantiqu');
INSERT INTO `zone` VALUES (1179, 74, '65', 'Hautes PyrÃƒÆ’Ã‚Â©nÃƒÆ’Ã‚Â©es');
INSERT INTO `zone` VALUES (1180, 74, '66', 'PyrÃƒÆ’Ã‚Â©nÃƒÆ’Ã‚Â©es Orientale');
INSERT INTO `zone` VALUES (1181, 74, '67', 'Bas Rhin');
INSERT INTO `zone` VALUES (1182, 74, '68', 'Haut Rhin');
INSERT INTO `zone` VALUES (1183, 74, '69', 'RhÃƒÆ’Ã‚Â´ne');
INSERT INTO `zone` VALUES (1184, 74, '70', 'Haute SaÃƒÆ’Ã‚Â´ne');
INSERT INTO `zone` VALUES (1185, 74, '71', 'SaÃƒÆ’Ã‚Â´ne et Loire');
INSERT INTO `zone` VALUES (1186, 74, '72', 'Sarthe');
INSERT INTO `zone` VALUES (1187, 74, '73', 'Savoie');
INSERT INTO `zone` VALUES (1188, 74, '74', 'Haute Savoie');
INSERT INTO `zone` VALUES (1189, 74, '75', 'Paris');
INSERT INTO `zone` VALUES (1190, 74, '76', 'Seine Maritime');
INSERT INTO `zone` VALUES (1191, 74, '77', 'Seine et Marne');
INSERT INTO `zone` VALUES (1192, 74, '78', 'Yvelines');
INSERT INTO `zone` VALUES (1193, 74, '79', 'Deux SÃƒÆ’Ã‚Â¨vres');
INSERT INTO `zone` VALUES (1194, 74, '80', 'Somme');
INSERT INTO `zone` VALUES (1195, 74, '81', 'Tarn');
INSERT INTO `zone` VALUES (1196, 74, '82', 'Tarn et Garonne');
INSERT INTO `zone` VALUES (1197, 74, '83', 'Var');
INSERT INTO `zone` VALUES (1198, 74, '84', 'Vaucluse');
INSERT INTO `zone` VALUES (1199, 74, '85', 'VendÃƒÆ’Ã‚Â©e');
INSERT INTO `zone` VALUES (1200, 74, '86', 'Vienne');
INSERT INTO `zone` VALUES (1201, 74, '87', 'Haute Vienne');
INSERT INTO `zone` VALUES (1202, 74, '88', 'Vosges');
INSERT INTO `zone` VALUES (1203, 74, '89', 'Yonne');
INSERT INTO `zone` VALUES (1204, 74, '90', 'Territoire de Belfort');
INSERT INTO `zone` VALUES (1205, 74, '91', 'Essonne');
INSERT INTO `zone` VALUES (1206, 74, '92', 'Hauts de Seine');
INSERT INTO `zone` VALUES (1207, 74, '93', 'Seine St-Denis');
INSERT INTO `zone` VALUES (1208, 74, '94', 'Val de Marne');
INSERT INTO `zone` VALUES (1209, 74, '95', 'Val d''Oise');
INSERT INTO `zone` VALUES (1210, 76, 'M', 'Archipel des Marquises');
INSERT INTO `zone` VALUES (1211, 76, 'T', 'Archipel des Tuamotu');
INSERT INTO `zone` VALUES (1212, 76, 'I', 'Archipel des Tubuai');
INSERT INTO `zone` VALUES (1213, 76, 'V', 'Iles du Vent');
INSERT INTO `zone` VALUES (1214, 76, 'S', 'Iles Sous-le-Vent');
INSERT INTO `zone` VALUES (1215, 77, 'C', 'Iles Crozet');
INSERT INTO `zone` VALUES (1216, 77, 'K', 'Iles Kerguelen');
INSERT INTO `zone` VALUES (1217, 77, 'A', 'Ile Amsterdam');
INSERT INTO `zone` VALUES (1218, 77, 'P', 'Ile Saint-Paul');
INSERT INTO `zone` VALUES (1219, 77, 'D', 'Adelie Land');
INSERT INTO `zone` VALUES (1220, 78, 'ES', 'Estuaire');
INSERT INTO `zone` VALUES (1221, 78, 'HO', 'Haut-Ogooue');
INSERT INTO `zone` VALUES (1222, 78, 'MO', 'Moyen-Ogooue');
INSERT INTO `zone` VALUES (1223, 78, 'NG', 'Ngounie');
INSERT INTO `zone` VALUES (1224, 78, 'NY', 'Nyanga');
INSERT INTO `zone` VALUES (1225, 78, 'OI', 'Ogooue-Ivindo');
INSERT INTO `zone` VALUES (1226, 78, 'OL', 'Ogooue-Lolo');
INSERT INTO `zone` VALUES (1227, 78, 'OM', 'Ogooue-Maritime');
INSERT INTO `zone` VALUES (1228, 78, 'WN', 'Woleu-Ntem');
INSERT INTO `zone` VALUES (1229, 79, 'BJ', 'Banjul');
INSERT INTO `zone` VALUES (1230, 79, 'BS', 'Basse');
INSERT INTO `zone` VALUES (1231, 79, 'BR', 'Brikama');
INSERT INTO `zone` VALUES (1232, 79, 'JA', 'Janjangbure');
INSERT INTO `zone` VALUES (1233, 79, 'KA', 'Kanifeng');
INSERT INTO `zone` VALUES (1234, 79, 'KE', 'Kerewan');
INSERT INTO `zone` VALUES (1235, 79, 'KU', 'Kuntaur');
INSERT INTO `zone` VALUES (1236, 79, 'MA', 'Mansakonko');
INSERT INTO `zone` VALUES (1237, 79, 'LR', 'Lower River');
INSERT INTO `zone` VALUES (1238, 79, 'CR', 'Central River');
INSERT INTO `zone` VALUES (1239, 79, 'NB', 'North Bank');
INSERT INTO `zone` VALUES (1240, 79, 'UR', 'Upper River');
INSERT INTO `zone` VALUES (1241, 79, 'WE', 'Western');
INSERT INTO `zone` VALUES (1242, 80, 'AB', 'Abkhazia');
INSERT INTO `zone` VALUES (1243, 80, 'AJ', 'Ajaria');
INSERT INTO `zone` VALUES (1244, 80, 'TB', 'Tbilisi');
INSERT INTO `zone` VALUES (1245, 80, 'GU', 'Guria');
INSERT INTO `zone` VALUES (1246, 80, 'IM', 'Imereti');
INSERT INTO `zone` VALUES (1247, 80, 'KA', 'Kakheti');
INSERT INTO `zone` VALUES (1248, 80, 'KK', 'Kvemo Kartli');
INSERT INTO `zone` VALUES (1249, 80, 'MM', 'Mtskheta-Mtianeti');
INSERT INTO `zone` VALUES (1250, 80, 'RL', 'Racha Lechkhumi and Kvemo Svanet');
INSERT INTO `zone` VALUES (1251, 80, 'SZ', 'Samegrelo-Zemo Svaneti');
INSERT INTO `zone` VALUES (1252, 80, 'SJ', 'Samtskhe-Javakheti');
INSERT INTO `zone` VALUES (1253, 80, 'SK', 'Shida Kartli');
INSERT INTO `zone` VALUES (1254, 81, 'BAW', 'Baden-WÃƒÆ’Ã‚Â¼rttemberg');
INSERT INTO `zone` VALUES (1255, 81, 'BAY', 'Bayern');
INSERT INTO `zone` VALUES (1256, 81, 'BER', 'Berlin');
INSERT INTO `zone` VALUES (1257, 81, 'BRG', 'Brandenburg');
INSERT INTO `zone` VALUES (1258, 81, 'BRE', 'Bremen');
INSERT INTO `zone` VALUES (1259, 81, 'HAM', 'Hamburg');
INSERT INTO `zone` VALUES (1260, 81, 'HES', 'Hessen');
INSERT INTO `zone` VALUES (1261, 81, 'MEC', 'Mecklenburg-Vorpommern');
INSERT INTO `zone` VALUES (1262, 81, 'NDS', 'Niedersachsen');
INSERT INTO `zone` VALUES (1263, 81, 'NRW', 'Nordrhein-Westfalen');
INSERT INTO `zone` VALUES (1264, 81, 'RHE', 'Rheinland-Pfalz');
INSERT INTO `zone` VALUES (1265, 81, 'SAR', 'Saarland');
INSERT INTO `zone` VALUES (1266, 81, 'SAS', 'Sachsen');
INSERT INTO `zone` VALUES (1267, 81, 'SAC', 'Sachsen-Anhalt');
INSERT INTO `zone` VALUES (1268, 81, 'SCN', 'Schleswig-Holstein');
INSERT INTO `zone` VALUES (1269, 81, 'THE', 'ThÃƒÆ’Ã‚Â¼ringen');
INSERT INTO `zone` VALUES (1270, 82, 'AS', 'Ashanti Region');
INSERT INTO `zone` VALUES (1271, 82, 'BA', 'Brong-Ahafo Region');
INSERT INTO `zone` VALUES (1272, 82, 'CE', 'Central Region');
INSERT INTO `zone` VALUES (1273, 82, 'EA', 'Eastern Region');
INSERT INTO `zone` VALUES (1274, 82, 'GA', 'Greater Accra Region');
INSERT INTO `zone` VALUES (1275, 82, 'NO', 'Northern Region');
INSERT INTO `zone` VALUES (1276, 82, 'UE', 'Upper East Region');
INSERT INTO `zone` VALUES (1277, 82, 'UW', 'Upper West Region');
INSERT INTO `zone` VALUES (1278, 82, 'VO', 'Volta Region');
INSERT INTO `zone` VALUES (1279, 82, 'WE', 'Western Region');
INSERT INTO `zone` VALUES (1280, 84, 'AT', 'Attica');
INSERT INTO `zone` VALUES (1281, 84, 'CN', 'Central Greece');
INSERT INTO `zone` VALUES (1282, 84, 'CM', 'Central Macedonia');
INSERT INTO `zone` VALUES (1283, 84, 'CR', 'Crete');
INSERT INTO `zone` VALUES (1284, 84, 'EM', 'East Macedonia and Thrace');
INSERT INTO `zone` VALUES (1285, 84, 'EP', 'Epirus');
INSERT INTO `zone` VALUES (1286, 84, 'II', 'Ionian Islands');
INSERT INTO `zone` VALUES (1287, 84, 'NA', 'North Aegean');
INSERT INTO `zone` VALUES (1288, 84, 'PP', 'Peloponnesos');
INSERT INTO `zone` VALUES (1289, 84, 'SA', 'South Aegean');
INSERT INTO `zone` VALUES (1290, 84, 'TH', 'Thessaly');
INSERT INTO `zone` VALUES (1291, 84, 'WG', 'West Greece');
INSERT INTO `zone` VALUES (1292, 84, 'WM', 'West Macedonia');
INSERT INTO `zone` VALUES (1293, 85, 'A', 'Avannaa');
INSERT INTO `zone` VALUES (1294, 85, 'T', 'Tunu');
INSERT INTO `zone` VALUES (1295, 85, 'K', 'Kitaa');
INSERT INTO `zone` VALUES (1296, 86, 'A', 'Saint Andrew');
INSERT INTO `zone` VALUES (1297, 86, 'D', 'Saint David');
INSERT INTO `zone` VALUES (1298, 86, 'G', 'Saint George');
INSERT INTO `zone` VALUES (1299, 86, 'J', 'Saint John');
INSERT INTO `zone` VALUES (1300, 86, 'M', 'Saint Mark');
INSERT INTO `zone` VALUES (1301, 86, 'P', 'Saint Patrick');
INSERT INTO `zone` VALUES (1302, 86, 'C', 'Carriacou');
INSERT INTO `zone` VALUES (1303, 86, 'Q', 'Petit Martinique');
INSERT INTO `zone` VALUES (1304, 89, 'AV', 'Alta Verapaz');
INSERT INTO `zone` VALUES (1305, 89, 'BV', 'Baja Verapaz');
INSERT INTO `zone` VALUES (1306, 89, 'CM', 'Chimaltenango');
INSERT INTO `zone` VALUES (1307, 89, 'CQ', 'Chiquimula');
INSERT INTO `zone` VALUES (1308, 89, 'PE', 'El Peten');
INSERT INTO `zone` VALUES (1309, 89, 'PR', 'El Progreso');
INSERT INTO `zone` VALUES (1310, 89, 'QC', 'El Quiche');
INSERT INTO `zone` VALUES (1311, 89, 'ES', 'Escuintla');
INSERT INTO `zone` VALUES (1312, 89, 'GU', 'Guatemala');
INSERT INTO `zone` VALUES (1313, 89, 'HU', 'Huehuetenango');
INSERT INTO `zone` VALUES (1314, 89, 'IZ', 'Izabal');
INSERT INTO `zone` VALUES (1315, 89, 'JA', 'Jalapa');
INSERT INTO `zone` VALUES (1316, 89, 'JU', 'Jutiapa');
INSERT INTO `zone` VALUES (1317, 89, 'QZ', 'Quetzaltenango');
INSERT INTO `zone` VALUES (1318, 89, 'RE', 'Retalhuleu');
INSERT INTO `zone` VALUES (1319, 89, 'ST', 'Sacatepequez');
INSERT INTO `zone` VALUES (1320, 89, 'SM', 'San Marcos');
INSERT INTO `zone` VALUES (1321, 89, 'SR', 'Santa Rosa');
INSERT INTO `zone` VALUES (1322, 89, 'SO', 'Solola');
INSERT INTO `zone` VALUES (1323, 89, 'SU', 'Suchitepequez');
INSERT INTO `zone` VALUES (1324, 89, 'TO', 'Totonicapan');
INSERT INTO `zone` VALUES (1325, 89, 'ZA', 'Zacapa');
INSERT INTO `zone` VALUES (1326, 90, 'CNK', 'Conakry');
INSERT INTO `zone` VALUES (1327, 90, 'BYL', 'Beyla');
INSERT INTO `zone` VALUES (1328, 90, 'BFA', 'Boffa');
INSERT INTO `zone` VALUES (1329, 90, 'BOK', 'Boke');
INSERT INTO `zone` VALUES (1330, 90, 'COY', 'Coyah');
INSERT INTO `zone` VALUES (1331, 90, 'DBL', 'Dabola');
INSERT INTO `zone` VALUES (1332, 90, 'DLB', 'Dalaba');
INSERT INTO `zone` VALUES (1333, 90, 'DGR', 'Dinguiraye');
INSERT INTO `zone` VALUES (1334, 90, 'DBR', 'Dubreka');
INSERT INTO `zone` VALUES (1335, 90, 'FRN', 'Faranah');
INSERT INTO `zone` VALUES (1336, 90, 'FRC', 'Forecariah');
INSERT INTO `zone` VALUES (1337, 90, 'FRI', 'Fria');
INSERT INTO `zone` VALUES (1338, 90, 'GAO', 'Gaoual');
INSERT INTO `zone` VALUES (1339, 90, 'GCD', 'Gueckedou');
INSERT INTO `zone` VALUES (1340, 90, 'KNK', 'Kankan');
INSERT INTO `zone` VALUES (1341, 90, 'KRN', 'Kerouane');
INSERT INTO `zone` VALUES (1342, 90, 'KND', 'Kindia');
INSERT INTO `zone` VALUES (1343, 90, 'KSD', 'Kissidougou');
INSERT INTO `zone` VALUES (1344, 90, 'KBA', 'Koubia');
INSERT INTO `zone` VALUES (1345, 90, 'KDA', 'Koundara');
INSERT INTO `zone` VALUES (1346, 90, 'KRA', 'Kouroussa');
INSERT INTO `zone` VALUES (1347, 90, 'LAB', 'Labe');
INSERT INTO `zone` VALUES (1348, 90, 'LLM', 'Lelouma');
INSERT INTO `zone` VALUES (1349, 90, 'LOL', 'Lola');
INSERT INTO `zone` VALUES (1350, 90, 'MCT', 'Macenta');
INSERT INTO `zone` VALUES (1351, 90, 'MAL', 'Mali');
INSERT INTO `zone` VALUES (1352, 90, 'MAM', 'Mamou');
INSERT INTO `zone` VALUES (1353, 90, 'MAN', 'Mandiana');
INSERT INTO `zone` VALUES (1354, 90, 'NZR', 'Nzerekore');
INSERT INTO `zone` VALUES (1355, 90, 'PIT', 'Pita');
INSERT INTO `zone` VALUES (1356, 90, 'SIG', 'Siguiri');
INSERT INTO `zone` VALUES (1357, 90, 'TLM', 'Telimele');
INSERT INTO `zone` VALUES (1358, 90, 'TOG', 'Tougue');
INSERT INTO `zone` VALUES (1359, 90, 'YOM', 'Yomou');
INSERT INTO `zone` VALUES (1360, 91, 'BF', 'Bafata Region');
INSERT INTO `zone` VALUES (1361, 91, 'BB', 'Biombo Region');
INSERT INTO `zone` VALUES (1362, 91, 'BS', 'Bissau Region');
INSERT INTO `zone` VALUES (1363, 91, 'BL', 'Bolama Region');
INSERT INTO `zone` VALUES (1364, 91, 'CA', 'Cacheu Region');
INSERT INTO `zone` VALUES (1365, 91, 'GA', 'Gabu Region');
INSERT INTO `zone` VALUES (1366, 91, 'OI', 'Oio Region');
INSERT INTO `zone` VALUES (1367, 91, 'QU', 'Quinara Region');
INSERT INTO `zone` VALUES (1368, 91, 'TO', 'Tombali Region');
INSERT INTO `zone` VALUES (1369, 92, 'BW', 'Barima-Waini');
INSERT INTO `zone` VALUES (1370, 92, 'CM', 'Cuyuni-Mazaruni');
INSERT INTO `zone` VALUES (1371, 92, 'DM', 'Demerara-Mahaica');
INSERT INTO `zone` VALUES (1372, 92, 'EC', 'East Berbice-Corentyne');
INSERT INTO `zone` VALUES (1373, 92, 'EW', 'Essequibo Islands-West Demerara');
INSERT INTO `zone` VALUES (1374, 92, 'MB', 'Mahaica-Berbice');
INSERT INTO `zone` VALUES (1375, 92, 'PM', 'Pomeroon-Supenaam');
INSERT INTO `zone` VALUES (1376, 92, 'PI', 'Potaro-Siparuni');
INSERT INTO `zone` VALUES (1377, 92, 'UD', 'Upper Demerara-Berbice');
INSERT INTO `zone` VALUES (1378, 92, 'UT', 'Upper Takutu-Upper Essequibo');
INSERT INTO `zone` VALUES (1379, 93, 'AR', 'Artibonite');
INSERT INTO `zone` VALUES (1380, 93, 'CE', 'Centre');
INSERT INTO `zone` VALUES (1381, 93, 'GA', 'Grand''Anse');
INSERT INTO `zone` VALUES (1382, 93, 'ND', 'Nord');
INSERT INTO `zone` VALUES (1383, 93, 'NE', 'Nord-Est');
INSERT INTO `zone` VALUES (1384, 93, 'NO', 'Nord-Ouest');
INSERT INTO `zone` VALUES (1385, 93, 'OU', 'Ouest');
INSERT INTO `zone` VALUES (1386, 93, 'SD', 'Sud');
INSERT INTO `zone` VALUES (1387, 93, 'SE', 'Sud-Est');
INSERT INTO `zone` VALUES (1388, 94, 'F', 'Flat Island');
INSERT INTO `zone` VALUES (1389, 94, 'M', 'McDonald Island');
INSERT INTO `zone` VALUES (1390, 94, 'S', 'Shag Island');
INSERT INTO `zone` VALUES (1391, 94, 'H', 'Heard Island');
INSERT INTO `zone` VALUES (1392, 95, 'AT', 'Atlantida');
INSERT INTO `zone` VALUES (1393, 95, 'CH', 'Choluteca');
INSERT INTO `zone` VALUES (1394, 95, 'CL', 'Colon');
INSERT INTO `zone` VALUES (1395, 95, 'CM', 'Comayagua');
INSERT INTO `zone` VALUES (1396, 95, 'CP', 'Copan');
INSERT INTO `zone` VALUES (1397, 95, 'CR', 'Cortes');
INSERT INTO `zone` VALUES (1398, 95, 'PA', 'El Paraiso');
INSERT INTO `zone` VALUES (1399, 95, 'FM', 'Francisco Morazan');
INSERT INTO `zone` VALUES (1400, 95, 'GD', 'Gracias a Dios');
INSERT INTO `zone` VALUES (1401, 95, 'IN', 'Intibuca');
INSERT INTO `zone` VALUES (1402, 95, 'IB', 'Islas de la Bahia (Bay Islands)');
INSERT INTO `zone` VALUES (1403, 95, 'PZ', 'La Paz');
INSERT INTO `zone` VALUES (1404, 95, 'LE', 'Lempira');
INSERT INTO `zone` VALUES (1405, 95, 'OC', 'Ocotepeque');
INSERT INTO `zone` VALUES (1406, 95, 'OL', 'Olancho');
INSERT INTO `zone` VALUES (1407, 95, 'SB', 'Santa Barbara');
INSERT INTO `zone` VALUES (1408, 95, 'VA', 'Valle');
INSERT INTO `zone` VALUES (1409, 95, 'YO', 'Yoro');
INSERT INTO `zone` VALUES (1410, 96, 'HCW', 'Central and Western Hong Kong Is');
INSERT INTO `zone` VALUES (1411, 96, 'HEA', 'Eastern Hong Kong Island');
INSERT INTO `zone` VALUES (1412, 96, 'HSO', 'Southern Hong Kong Island');
INSERT INTO `zone` VALUES (1413, 96, 'HWC', 'Wan Chai Hong Kong Island');
INSERT INTO `zone` VALUES (1414, 96, 'KKC', 'Kowloon City Kowloon');
INSERT INTO `zone` VALUES (1415, 96, 'KKT', 'Kwun Tong Kowloon');
INSERT INTO `zone` VALUES (1416, 96, 'KSS', 'Sham Shui Po Kowloon');
INSERT INTO `zone` VALUES (1417, 96, 'KWT', 'Wong Tai Sin Kowloon');
INSERT INTO `zone` VALUES (1418, 96, 'KYT', 'Yau Tsim Mong Kowloon');
INSERT INTO `zone` VALUES (1419, 96, 'NIS', 'Islands New Territories');
INSERT INTO `zone` VALUES (1420, 96, 'NKT', 'Kwai Tsing New Territories');
INSERT INTO `zone` VALUES (1421, 96, 'NNO', 'North New Territories');
INSERT INTO `zone` VALUES (1422, 96, 'NSK', 'Sai Kung New Territories');
INSERT INTO `zone` VALUES (1423, 96, 'NST', 'Sha Tin New Territories');
INSERT INTO `zone` VALUES (1424, 96, 'NTP', 'Tai Po New Territories');
INSERT INTO `zone` VALUES (1425, 96, 'NTW', 'Tsuen Wan New Territories');
INSERT INTO `zone` VALUES (1426, 96, 'NTM', 'Tuen Mun New Territories');
INSERT INTO `zone` VALUES (1427, 96, 'NYL', 'Yuen Long New Territories');
INSERT INTO `zone` VALUES (1428, 97, 'BK', 'Bacs-Kiskun');
INSERT INTO `zone` VALUES (1429, 97, 'BA', 'Baranya');
INSERT INTO `zone` VALUES (1430, 97, 'BE', 'Bekes');
INSERT INTO `zone` VALUES (1431, 97, 'BS', 'Bekescsaba');
INSERT INTO `zone` VALUES (1432, 97, 'BZ', 'Borsod-Abauj-Zemplen');
INSERT INTO `zone` VALUES (1433, 97, 'BU', 'Budapest');
INSERT INTO `zone` VALUES (1434, 97, 'CS', 'Csongrad');
INSERT INTO `zone` VALUES (1435, 97, 'DE', 'Debrecen');
INSERT INTO `zone` VALUES (1436, 97, 'DU', 'Dunaujvaros');
INSERT INTO `zone` VALUES (1437, 97, 'EG', 'Eger');
INSERT INTO `zone` VALUES (1438, 97, 'FE', 'Fejer');
INSERT INTO `zone` VALUES (1439, 97, 'GY', 'Gyor');
INSERT INTO `zone` VALUES (1440, 97, 'GM', 'Gyor-Moson-Sopron');
INSERT INTO `zone` VALUES (1441, 97, 'HB', 'Hajdu-Bihar');
INSERT INTO `zone` VALUES (1442, 97, 'HE', 'Heves');
INSERT INTO `zone` VALUES (1443, 97, 'HO', 'Hodmezovasarhely');
INSERT INTO `zone` VALUES (1444, 97, 'JN', 'Jasz-Nagykun-Szolnok');
INSERT INTO `zone` VALUES (1445, 97, 'KA', 'Kaposvar');
INSERT INTO `zone` VALUES (1446, 97, 'KE', 'Kecskemet');
INSERT INTO `zone` VALUES (1447, 97, 'KO', 'Komarom-Esztergom');
INSERT INTO `zone` VALUES (1448, 97, 'MI', 'Miskolc');
INSERT INTO `zone` VALUES (1449, 97, 'NA', 'Nagykanizsa');
INSERT INTO `zone` VALUES (1450, 97, 'NO', 'Nograd');
INSERT INTO `zone` VALUES (1451, 97, 'NY', 'Nyiregyhaza');
INSERT INTO `zone` VALUES (1452, 97, 'PE', 'Pecs');
INSERT INTO `zone` VALUES (1453, 97, 'PS', 'Pest');
INSERT INTO `zone` VALUES (1454, 97, 'SO', 'Somogy');
INSERT INTO `zone` VALUES (1455, 97, 'SP', 'Sopron');
INSERT INTO `zone` VALUES (1456, 97, 'SS', 'Szabolcs-Szatmar-Bereg');
INSERT INTO `zone` VALUES (1457, 97, 'SZ', 'Szeged');
INSERT INTO `zone` VALUES (1458, 97, 'SE', 'Szekesfehervar');
INSERT INTO `zone` VALUES (1459, 97, 'SL', 'Szolnok');
INSERT INTO `zone` VALUES (1460, 97, 'SM', 'Szombathely');
INSERT INTO `zone` VALUES (1461, 97, 'TA', 'Tatabanya');
INSERT INTO `zone` VALUES (1462, 97, 'TO', 'Tolna');
INSERT INTO `zone` VALUES (1463, 97, 'VA', 'Vas');
INSERT INTO `zone` VALUES (1464, 97, 'VE', 'Veszprem');
INSERT INTO `zone` VALUES (1465, 97, 'ZA', 'Zala');
INSERT INTO `zone` VALUES (1466, 97, 'ZZ', 'Zalaegerszeg');
INSERT INTO `zone` VALUES (1467, 98, 'AL', 'Austurland');
INSERT INTO `zone` VALUES (1468, 98, 'HF', 'Hofuoborgarsvaeoi');
INSERT INTO `zone` VALUES (1469, 98, 'NE', 'Norourland eystra');
INSERT INTO `zone` VALUES (1470, 98, 'NV', 'Norourland vestra');
INSERT INTO `zone` VALUES (1471, 98, 'SL', 'Suourland');
INSERT INTO `zone` VALUES (1472, 98, 'SN', 'Suournes');
INSERT INTO `zone` VALUES (1473, 98, 'VF', 'Vestfiroir');
INSERT INTO `zone` VALUES (1474, 98, 'VL', 'Vesturland');
INSERT INTO `zone` VALUES (1475, 99, 'AN', 'Andaman and Nicobar Islands');
INSERT INTO `zone` VALUES (1476, 99, 'AP', 'Andhra Pradesh');
INSERT INTO `zone` VALUES (1477, 99, 'AR', 'Arunachal Pradesh');
INSERT INTO `zone` VALUES (1478, 99, 'AS', 'Assam');
INSERT INTO `zone` VALUES (1479, 99, 'BI', 'Bihar');
INSERT INTO `zone` VALUES (1480, 99, 'CH', 'Chandigarh');
INSERT INTO `zone` VALUES (1481, 99, 'DA', 'Dadra and Nagar Haveli');
INSERT INTO `zone` VALUES (1482, 99, 'DM', 'Daman and Diu');
INSERT INTO `zone` VALUES (1483, 99, 'DE', 'Delhi');
INSERT INTO `zone` VALUES (1484, 99, 'GO', 'Goa');
INSERT INTO `zone` VALUES (1485, 99, 'GU', 'Gujarat');
INSERT INTO `zone` VALUES (1486, 99, 'HA', 'Haryana');
INSERT INTO `zone` VALUES (1487, 99, 'HP', 'Himachal Pradesh');
INSERT INTO `zone` VALUES (1488, 99, 'JA', 'Jammu and Kashmir');
INSERT INTO `zone` VALUES (1489, 99, 'KA', 'Karnataka');
INSERT INTO `zone` VALUES (1490, 99, 'KE', 'Kerala');
INSERT INTO `zone` VALUES (1491, 99, 'LI', 'Lakshadweep Islands');
INSERT INTO `zone` VALUES (1492, 99, 'MP', 'Madhya Pradesh');
INSERT INTO `zone` VALUES (1493, 99, 'MA', 'Maharashtra');
INSERT INTO `zone` VALUES (1494, 99, 'MN', 'Manipur');
INSERT INTO `zone` VALUES (1495, 99, 'ME', 'Meghalaya');
INSERT INTO `zone` VALUES (1496, 99, 'MI', 'Mizoram');
INSERT INTO `zone` VALUES (1497, 99, 'NA', 'Nagaland');
INSERT INTO `zone` VALUES (1498, 99, 'OR', 'Orissa');
INSERT INTO `zone` VALUES (1499, 99, 'PO', 'Pondicherry');
INSERT INTO `zone` VALUES (1500, 99, 'PU', 'Punjab');
INSERT INTO `zone` VALUES (1501, 99, 'RA', 'Rajasthan');
INSERT INTO `zone` VALUES (1502, 99, 'SI', 'Sikkim');
INSERT INTO `zone` VALUES (1503, 99, 'TN', 'Tamil Nadu');
INSERT INTO `zone` VALUES (1504, 99, 'TR', 'Tripura');
INSERT INTO `zone` VALUES (1505, 99, 'UP', 'Uttar Pradesh');
INSERT INTO `zone` VALUES (1506, 99, 'WB', 'West Bengal');
INSERT INTO `zone` VALUES (1507, 100, 'AC', 'Aceh');
INSERT INTO `zone` VALUES (1508, 100, 'BA', 'Bali');
INSERT INTO `zone` VALUES (1509, 100, 'BT', 'Banten');
INSERT INTO `zone` VALUES (1510, 100, 'BE', 'Bengkulu');
INSERT INTO `zone` VALUES (1511, 100, 'BD', 'BoDeTaBek');
INSERT INTO `zone` VALUES (1512, 100, 'GO', 'Gorontalo');
INSERT INTO `zone` VALUES (1513, 100, 'JK', 'Jakarta Raya');
INSERT INTO `zone` VALUES (1514, 100, 'JA', 'Jambi');
INSERT INTO `zone` VALUES (1515, 100, 'JB', 'Jawa Barat');
INSERT INTO `zone` VALUES (1516, 100, 'JT', 'Jawa Tengah');
INSERT INTO `zone` VALUES (1517, 100, 'JI', 'Jawa Timur');
INSERT INTO `zone` VALUES (1518, 100, 'KB', 'Kalimantan Barat');
INSERT INTO `zone` VALUES (1519, 100, 'KS', 'Kalimantan Selatan');
INSERT INTO `zone` VALUES (1520, 100, 'KT', 'Kalimantan Tengah');
INSERT INTO `zone` VALUES (1521, 100, 'KI', 'Kalimantan Timur');
INSERT INTO `zone` VALUES (1522, 100, 'BB', 'Kepulauan Bangka Belitung');
INSERT INTO `zone` VALUES (1523, 100, 'LA', 'Lampung');
INSERT INTO `zone` VALUES (1524, 100, 'MA', 'Maluku');
INSERT INTO `zone` VALUES (1525, 100, 'MU', 'Maluku Utara');
INSERT INTO `zone` VALUES (1526, 100, 'NB', 'Nusa Tenggara Barat');
INSERT INTO `zone` VALUES (1527, 100, 'NT', 'Nusa Tenggara Timur');
INSERT INTO `zone` VALUES (1528, 100, 'PA', 'Papua');
INSERT INTO `zone` VALUES (1529, 100, 'RI', 'Riau');
INSERT INTO `zone` VALUES (1530, 100, 'SN', 'Sulawesi Selatan');
INSERT INTO `zone` VALUES (1531, 100, 'ST', 'Sulawesi Tengah');
INSERT INTO `zone` VALUES (1532, 100, 'SG', 'Sulawesi Tenggara');
INSERT INTO `zone` VALUES (1533, 100, 'SA', 'Sulawesi Utara');
INSERT INTO `zone` VALUES (1534, 100, 'SB', 'Sumatera Barat');
INSERT INTO `zone` VALUES (1535, 100, 'SS', 'Sumatera Selatan');
INSERT INTO `zone` VALUES (1536, 100, 'SU', 'Sumatera Utara');
INSERT INTO `zone` VALUES (1537, 100, 'YO', 'Yogyakarta');
INSERT INTO `zone` VALUES (1538, 101, 'TEH', 'Tehran');
INSERT INTO `zone` VALUES (1539, 101, 'QOM', 'Qom');
INSERT INTO `zone` VALUES (1540, 101, 'MKZ', 'Markazi');
INSERT INTO `zone` VALUES (1541, 101, 'QAZ', 'Qazvin');
INSERT INTO `zone` VALUES (1542, 101, 'GIL', 'Gilan');
INSERT INTO `zone` VALUES (1543, 101, 'ARD', 'Ardabil');
INSERT INTO `zone` VALUES (1544, 101, 'ZAN', 'Zanjan');
INSERT INTO `zone` VALUES (1545, 101, 'EAZ', 'East Azarbaijan');
INSERT INTO `zone` VALUES (1546, 101, 'WEZ', 'West Azarbaijan');
INSERT INTO `zone` VALUES (1547, 101, 'KRD', 'Kurdistan');
INSERT INTO `zone` VALUES (1548, 101, 'HMD', 'Hamadan');
INSERT INTO `zone` VALUES (1549, 101, 'KRM', 'Kermanshah');
INSERT INTO `zone` VALUES (1550, 101, 'ILM', 'Ilam');
INSERT INTO `zone` VALUES (1551, 101, 'LRS', 'Lorestan');
INSERT INTO `zone` VALUES (1552, 101, 'KZT', 'Khuzestan');
INSERT INTO `zone` VALUES (1553, 101, 'CMB', 'Chahar Mahaal and Bakhtiari');
INSERT INTO `zone` VALUES (1554, 101, 'KBA', 'Kohkiluyeh and Buyer Ahmad');
INSERT INTO `zone` VALUES (1555, 101, 'BSH', 'Bushehr');
INSERT INTO `zone` VALUES (1556, 101, 'FAR', 'Fars');
INSERT INTO `zone` VALUES (1557, 101, 'HRM', 'Hormozgan');
INSERT INTO `zone` VALUES (1558, 101, 'SBL', 'Sistan and Baluchistan');
INSERT INTO `zone` VALUES (1559, 101, 'KRB', 'Kerman');
INSERT INTO `zone` VALUES (1560, 101, 'YZD', 'Yazd');
INSERT INTO `zone` VALUES (1561, 101, 'EFH', 'Esfahan');
INSERT INTO `zone` VALUES (1562, 101, 'SMN', 'Semnan');
INSERT INTO `zone` VALUES (1563, 101, 'MZD', 'Mazandaran');
INSERT INTO `zone` VALUES (1564, 101, 'GLS', 'Golestan');
INSERT INTO `zone` VALUES (1565, 101, 'NKH', 'North Khorasan');
INSERT INTO `zone` VALUES (1566, 101, 'RKH', 'Razavi Khorasan');
INSERT INTO `zone` VALUES (1567, 101, 'SKH', 'South Khorasan');
INSERT INTO `zone` VALUES (1568, 102, 'BD', 'Baghdad');
INSERT INTO `zone` VALUES (1569, 102, 'SD', 'Salah ad Din');
INSERT INTO `zone` VALUES (1570, 102, 'DY', 'Diyala');
INSERT INTO `zone` VALUES (1571, 102, 'WS', 'Wasit');
INSERT INTO `zone` VALUES (1572, 102, 'MY', 'Maysan');
INSERT INTO `zone` VALUES (1573, 102, 'BA', 'Al Basrah');
INSERT INTO `zone` VALUES (1574, 102, 'DQ', 'Dhi Qar');
INSERT INTO `zone` VALUES (1575, 102, 'MU', 'Al Muthanna');
INSERT INTO `zone` VALUES (1576, 102, 'QA', 'Al Qadisyah');
INSERT INTO `zone` VALUES (1577, 102, 'BB', 'Babil');
INSERT INTO `zone` VALUES (1578, 102, 'KB', 'Al Karbala');
INSERT INTO `zone` VALUES (1579, 102, 'NJ', 'An Najaf');
INSERT INTO `zone` VALUES (1580, 102, 'AB', 'Al Anbar');
INSERT INTO `zone` VALUES (1581, 102, 'NN', 'Ninawa');
INSERT INTO `zone` VALUES (1582, 102, 'DH', 'Dahuk');
INSERT INTO `zone` VALUES (1583, 102, 'AL', 'Arbil');
INSERT INTO `zone` VALUES (1584, 102, 'TM', 'At Ta''mim');
INSERT INTO `zone` VALUES (1585, 102, 'SL', 'As Sulaymaniyah');
INSERT INTO `zone` VALUES (1586, 103, 'CA', 'Carlow');
INSERT INTO `zone` VALUES (1587, 103, 'CV', 'Cavan');
INSERT INTO `zone` VALUES (1588, 103, 'CL', 'Clare');
INSERT INTO `zone` VALUES (1589, 103, 'CO', 'Cork');
INSERT INTO `zone` VALUES (1590, 103, 'DO', 'Donegal');
INSERT INTO `zone` VALUES (1591, 103, 'DU', 'Dublin');
INSERT INTO `zone` VALUES (1592, 103, 'GA', 'Galway');
INSERT INTO `zone` VALUES (1593, 103, 'KE', 'Kerry');
INSERT INTO `zone` VALUES (1594, 103, 'KI', 'Kildare');
INSERT INTO `zone` VALUES (1595, 103, 'KL', 'Kilkenny');
INSERT INTO `zone` VALUES (1596, 103, 'LA', 'Laois');
INSERT INTO `zone` VALUES (1597, 103, 'LE', 'Leitrim');
INSERT INTO `zone` VALUES (1598, 103, 'LI', 'Limerick');
INSERT INTO `zone` VALUES (1599, 103, 'LO', 'Longford');
INSERT INTO `zone` VALUES (1600, 103, 'LU', 'Louth');
INSERT INTO `zone` VALUES (1601, 103, 'MA', 'Mayo');
INSERT INTO `zone` VALUES (1602, 103, 'ME', 'Meath');
INSERT INTO `zone` VALUES (1603, 103, 'MO', 'Monaghan');
INSERT INTO `zone` VALUES (1604, 103, 'OF', 'Offaly');
INSERT INTO `zone` VALUES (1605, 103, 'RO', 'Roscommon');
INSERT INTO `zone` VALUES (1606, 103, 'SL', 'Sligo');
INSERT INTO `zone` VALUES (1607, 103, 'TI', 'Tipperary');
INSERT INTO `zone` VALUES (1608, 103, 'WA', 'Waterford');
INSERT INTO `zone` VALUES (1609, 103, 'WE', 'Westmeath');
INSERT INTO `zone` VALUES (1610, 103, 'WX', 'Wexford');
INSERT INTO `zone` VALUES (1611, 103, 'WI', 'Wicklow');
INSERT INTO `zone` VALUES (1612, 104, 'BS', 'Be''er Sheva');
INSERT INTO `zone` VALUES (1613, 104, 'BH', 'Bika''at Hayarden');
INSERT INTO `zone` VALUES (1614, 104, 'EA', 'Eilat and Arava');
INSERT INTO `zone` VALUES (1615, 104, 'GA', 'Galil');
INSERT INTO `zone` VALUES (1616, 104, 'HA', 'Haifa');
INSERT INTO `zone` VALUES (1617, 104, 'JM', 'Jehuda Mountains');
INSERT INTO `zone` VALUES (1618, 104, 'JE', 'Jerusalem');
INSERT INTO `zone` VALUES (1619, 104, 'NE', 'Negev');
INSERT INTO `zone` VALUES (1620, 104, 'SE', 'Semaria');
INSERT INTO `zone` VALUES (1621, 104, 'SH', 'Sharon');
INSERT INTO `zone` VALUES (1622, 104, 'TA', 'Tel Aviv (Gosh Dan)');
INSERT INTO `zone` VALUES (1623, 105, 'AB', 'Abruzzo');
INSERT INTO `zone` VALUES (1624, 105, 'BA', 'Basilicata');
INSERT INTO `zone` VALUES (1625, 105, 'CA', 'Calabria');
INSERT INTO `zone` VALUES (1626, 105, 'CP', 'Campania');
INSERT INTO `zone` VALUES (1627, 105, 'ER', 'Emilia Romagna');
INSERT INTO `zone` VALUES (1628, 105, 'FV', 'Friuli-Venezia Giulia');
INSERT INTO `zone` VALUES (1629, 105, 'LA', 'Lazio (Latium & Rome)');
INSERT INTO `zone` VALUES (1630, 105, 'TM', 'Le Marche (The Marches)');
INSERT INTO `zone` VALUES (1631, 105, 'LI', 'Liguria');
INSERT INTO `zone` VALUES (1632, 105, 'LO', 'Lombardia (Lombardy)');
INSERT INTO `zone` VALUES (1633, 105, 'MO', 'Molise');
INSERT INTO `zone` VALUES (1634, 105, 'PI', 'Piemonte (Piedmont)');
INSERT INTO `zone` VALUES (1635, 105, 'AP', 'Puglia (Apulia)');
INSERT INTO `zone` VALUES (1636, 105, 'SA', 'Sardegna (Sardinia)');
INSERT INTO `zone` VALUES (1637, 105, 'SI', 'Sicilia (Sicily)');
INSERT INTO `zone` VALUES (1638, 105, 'TU', 'Toscana (Tuscany)');
INSERT INTO `zone` VALUES (1639, 105, 'TR', 'Trentino Alto Adige');
INSERT INTO `zone` VALUES (1640, 105, 'UM', 'Umbria');
INSERT INTO `zone` VALUES (1641, 105, 'VA', 'Val d''Aosta');
INSERT INTO `zone` VALUES (1642, 105, 'VE', 'Veneto');
INSERT INTO `zone` VALUES (1643, 106, 'CLA', 'Clarendon Parish');
INSERT INTO `zone` VALUES (1644, 106, 'HAN', 'Hanover Parish');
INSERT INTO `zone` VALUES (1645, 106, 'KIN', 'Kingston Parish');
INSERT INTO `zone` VALUES (1646, 106, 'MAN', 'Manchester Parish');
INSERT INTO `zone` VALUES (1647, 106, 'POR', 'Portland Parish');
INSERT INTO `zone` VALUES (1648, 106, 'AND', 'Saint Andrew Parish');
INSERT INTO `zone` VALUES (1649, 106, 'ANN', 'Saint Ann Parish');
INSERT INTO `zone` VALUES (1650, 106, 'CAT', 'Saint Catherine Parish');
INSERT INTO `zone` VALUES (1651, 106, 'ELI', 'Saint Elizabeth Parish');
INSERT INTO `zone` VALUES (1652, 106, 'JAM', 'Saint James Parish');
INSERT INTO `zone` VALUES (1653, 106, 'MAR', 'Saint Mary Parish');
INSERT INTO `zone` VALUES (1654, 106, 'THO', 'Saint Thomas Parish');
INSERT INTO `zone` VALUES (1655, 106, 'TRL', 'Trelawny Parish');
INSERT INTO `zone` VALUES (1656, 106, 'WML', 'Westmoreland Parish');
INSERT INTO `zone` VALUES (1657, 107, 'AI', 'Aichi');
INSERT INTO `zone` VALUES (1658, 107, 'AK', 'Akita');
INSERT INTO `zone` VALUES (1659, 107, 'AO', 'Aomori');
INSERT INTO `zone` VALUES (1660, 107, 'CH', 'Chiba');
INSERT INTO `zone` VALUES (1661, 107, 'EH', 'Ehime');
INSERT INTO `zone` VALUES (1662, 107, 'FK', 'Fukui');
INSERT INTO `zone` VALUES (1663, 107, 'FU', 'Fukuoka');
INSERT INTO `zone` VALUES (1664, 107, 'FS', 'Fukushima');
INSERT INTO `zone` VALUES (1665, 107, 'GI', 'Gifu');
INSERT INTO `zone` VALUES (1666, 107, 'GU', 'Gumma');
INSERT INTO `zone` VALUES (1667, 107, 'HI', 'Hiroshima');
INSERT INTO `zone` VALUES (1668, 107, 'HO', 'Hokkaido');
INSERT INTO `zone` VALUES (1669, 107, 'HY', 'Hyogo');
INSERT INTO `zone` VALUES (1670, 107, 'IB', 'Ibaraki');
INSERT INTO `zone` VALUES (1671, 107, 'IS', 'Ishikawa');
INSERT INTO `zone` VALUES (1672, 107, 'IW', 'Iwate');
INSERT INTO `zone` VALUES (1673, 107, 'KA', 'Kagawa');
INSERT INTO `zone` VALUES (1674, 107, 'KG', 'Kagoshima');
INSERT INTO `zone` VALUES (1675, 107, 'KN', 'Kanagawa');
INSERT INTO `zone` VALUES (1676, 107, 'KO', 'Kochi');
INSERT INTO `zone` VALUES (1677, 107, 'KU', 'Kumamoto');
INSERT INTO `zone` VALUES (1678, 107, 'KY', 'Kyoto');
INSERT INTO `zone` VALUES (1679, 107, 'MI', 'Mie');
INSERT INTO `zone` VALUES (1680, 107, 'MY', 'Miyagi');
INSERT INTO `zone` VALUES (1681, 107, 'MZ', 'Miyazaki');
INSERT INTO `zone` VALUES (1682, 107, 'NA', 'Nagano');
INSERT INTO `zone` VALUES (1683, 107, 'NG', 'Nagasaki');
INSERT INTO `zone` VALUES (1684, 107, 'NR', 'Nara');
INSERT INTO `zone` VALUES (1685, 107, 'NI', 'Niigata');
INSERT INTO `zone` VALUES (1686, 107, 'OI', 'Oita');
INSERT INTO `zone` VALUES (1687, 107, 'OK', 'Okayama');
INSERT INTO `zone` VALUES (1688, 107, 'ON', 'Okinawa');
INSERT INTO `zone` VALUES (1689, 107, 'OS', 'Osaka');
INSERT INTO `zone` VALUES (1690, 107, 'SA', 'Saga');
INSERT INTO `zone` VALUES (1691, 107, 'SI', 'Saitama');
INSERT INTO `zone` VALUES (1692, 107, 'SH', 'Shiga');
INSERT INTO `zone` VALUES (1693, 107, 'SM', 'Shimane');
INSERT INTO `zone` VALUES (1694, 107, 'SZ', 'Shizuoka');
INSERT INTO `zone` VALUES (1695, 107, 'TO', 'Tochigi');
INSERT INTO `zone` VALUES (1696, 107, 'TS', 'Tokushima');
INSERT INTO `zone` VALUES (1697, 107, 'TK', 'Tokyo');
INSERT INTO `zone` VALUES (1698, 107, 'TT', 'Tottori');
INSERT INTO `zone` VALUES (1699, 107, 'TY', 'Toyama');
INSERT INTO `zone` VALUES (1700, 107, 'WA', 'Wakayama');
INSERT INTO `zone` VALUES (1701, 107, 'YA', 'Yamagata');
INSERT INTO `zone` VALUES (1702, 107, 'YM', 'Yamaguchi');
INSERT INTO `zone` VALUES (1703, 107, 'YN', 'Yamanashi');
INSERT INTO `zone` VALUES (1704, 108, 'AM', '''Amman');
INSERT INTO `zone` VALUES (1705, 108, 'AJ', 'Ajlun');
INSERT INTO `zone` VALUES (1706, 108, 'AA', 'Al ''Aqabah');
INSERT INTO `zone` VALUES (1707, 108, 'AB', 'Al Balqa''');
INSERT INTO `zone` VALUES (1708, 108, 'AK', 'Al Karak');
INSERT INTO `zone` VALUES (1709, 108, 'AL', 'Al Mafraq');
INSERT INTO `zone` VALUES (1710, 108, 'AT', 'At Tafilah');
INSERT INTO `zone` VALUES (1711, 108, 'AZ', 'Az Zarqa''');
INSERT INTO `zone` VALUES (1712, 108, 'IR', 'Irbid');
INSERT INTO `zone` VALUES (1713, 108, 'JA', 'Jarash');
INSERT INTO `zone` VALUES (1714, 108, 'MA', 'Ma''an');
INSERT INTO `zone` VALUES (1715, 108, 'MD', 'Madaba');
INSERT INTO `zone` VALUES (1716, 109, 'AL', 'Almaty');
INSERT INTO `zone` VALUES (1717, 109, 'AC', 'Almaty City');
INSERT INTO `zone` VALUES (1718, 109, 'AM', 'Aqmola');
INSERT INTO `zone` VALUES (1719, 109, 'AQ', 'Aqtobe');
INSERT INTO `zone` VALUES (1720, 109, 'AS', 'Astana City');
INSERT INTO `zone` VALUES (1721, 109, 'AT', 'Atyrau');
INSERT INTO `zone` VALUES (1722, 109, 'BA', 'Batys Qazaqstan');
INSERT INTO `zone` VALUES (1723, 109, 'BY', 'Bayqongyr City');
INSERT INTO `zone` VALUES (1724, 109, 'MA', 'Mangghystau');
INSERT INTO `zone` VALUES (1725, 109, 'ON', 'Ongtustik Qazaqstan');
INSERT INTO `zone` VALUES (1726, 109, 'PA', 'Pavlodar');
INSERT INTO `zone` VALUES (1727, 109, 'QA', 'Qaraghandy');
INSERT INTO `zone` VALUES (1728, 109, 'QO', 'Qostanay');
INSERT INTO `zone` VALUES (1729, 109, 'QY', 'Qyzylorda');
INSERT INTO `zone` VALUES (1730, 109, 'SH', 'Shyghys Qazaqstan');
INSERT INTO `zone` VALUES (1731, 109, 'SO', 'Soltustik Qazaqstan');
INSERT INTO `zone` VALUES (1732, 109, 'ZH', 'Zhambyl');
INSERT INTO `zone` VALUES (1733, 110, 'CE', 'Central');
INSERT INTO `zone` VALUES (1734, 110, 'CO', 'Coast');
INSERT INTO `zone` VALUES (1735, 110, 'EA', 'Eastern');
INSERT INTO `zone` VALUES (1736, 110, 'NA', 'Nairobi Area');
INSERT INTO `zone` VALUES (1737, 110, 'NE', 'North Eastern');
INSERT INTO `zone` VALUES (1738, 110, 'NY', 'Nyanza');
INSERT INTO `zone` VALUES (1739, 110, 'RV', 'Rift Valley');
INSERT INTO `zone` VALUES (1740, 110, 'WE', 'Western');
INSERT INTO `zone` VALUES (1741, 111, 'AG', 'Abaiang');
INSERT INTO `zone` VALUES (1742, 111, 'AM', 'Abemama');
INSERT INTO `zone` VALUES (1743, 111, 'AK', 'Aranuka');
INSERT INTO `zone` VALUES (1744, 111, 'AO', 'Arorae');
INSERT INTO `zone` VALUES (1745, 111, 'BA', 'Banaba');
INSERT INTO `zone` VALUES (1746, 111, 'BE', 'Beru');
INSERT INTO `zone` VALUES (1747, 111, 'bT', 'Butaritari');
INSERT INTO `zone` VALUES (1748, 111, 'KA', 'Kanton');
INSERT INTO `zone` VALUES (1749, 111, 'KR', 'Kiritimati');
INSERT INTO `zone` VALUES (1750, 111, 'KU', 'Kuria');
INSERT INTO `zone` VALUES (1751, 111, 'MI', 'Maiana');
INSERT INTO `zone` VALUES (1752, 111, 'MN', 'Makin');
INSERT INTO `zone` VALUES (1753, 111, 'ME', 'Marakei');
INSERT INTO `zone` VALUES (1754, 111, 'NI', 'Nikunau');
INSERT INTO `zone` VALUES (1755, 111, 'NO', 'Nonouti');
INSERT INTO `zone` VALUES (1756, 111, 'ON', 'Onotoa');
INSERT INTO `zone` VALUES (1757, 111, 'TT', 'Tabiteuea');
INSERT INTO `zone` VALUES (1758, 111, 'TR', 'Tabuaeran');
INSERT INTO `zone` VALUES (1759, 111, 'TM', 'Tamana');
INSERT INTO `zone` VALUES (1760, 111, 'TW', 'Tarawa');
INSERT INTO `zone` VALUES (1761, 111, 'TE', 'Teraina');
INSERT INTO `zone` VALUES (1762, 112, 'CHA', 'Chagang-do');
INSERT INTO `zone` VALUES (1763, 112, 'HAB', 'Hamgyong-bukto');
INSERT INTO `zone` VALUES (1764, 112, 'HAN', 'Hamgyong-namdo');
INSERT INTO `zone` VALUES (1765, 112, 'HWB', 'Hwanghae-bukto');
INSERT INTO `zone` VALUES (1766, 112, 'HWN', 'Hwanghae-namdo');
INSERT INTO `zone` VALUES (1767, 112, 'KAN', 'Kangwon-do');
INSERT INTO `zone` VALUES (1768, 112, 'PYB', 'P''yongan-bukto');
INSERT INTO `zone` VALUES (1769, 112, 'PYN', 'P''yongan-namdo');
INSERT INTO `zone` VALUES (1770, 112, 'YAN', 'Ryanggang-do (Yanggang-do)');
INSERT INTO `zone` VALUES (1771, 112, 'NAJ', 'Rason Directly Governed City');
INSERT INTO `zone` VALUES (1772, 112, 'PYO', 'P''yongyang Special City');
INSERT INTO `zone` VALUES (1773, 113, 'CO', 'Ch''ungch''ong-bukto');
INSERT INTO `zone` VALUES (1774, 113, 'CH', 'Ch''ungch''ong-namdo');
INSERT INTO `zone` VALUES (1775, 113, 'CD', 'Cheju-do');
INSERT INTO `zone` VALUES (1776, 113, 'CB', 'Cholla-bukto');
INSERT INTO `zone` VALUES (1777, 113, 'CN', 'Cholla-namdo');
INSERT INTO `zone` VALUES (1778, 113, 'IG', 'Inch''on-gwangyoksi');
INSERT INTO `zone` VALUES (1779, 113, 'KA', 'Kangwon-do');
INSERT INTO `zone` VALUES (1780, 113, 'KG', 'Kwangju-gwangyoksi');
INSERT INTO `zone` VALUES (1781, 113, 'KD', 'Kyonggi-do');
INSERT INTO `zone` VALUES (1782, 113, 'KB', 'Kyongsang-bukto');
INSERT INTO `zone` VALUES (1783, 113, 'KN', 'Kyongsang-namdo');
INSERT INTO `zone` VALUES (1784, 113, 'PG', 'Pusan-gwangyoksi');
INSERT INTO `zone` VALUES (1785, 113, 'SO', 'Soul-t''ukpyolsi');
INSERT INTO `zone` VALUES (1786, 113, 'TA', 'Taegu-gwangyoksi');
INSERT INTO `zone` VALUES (1787, 113, 'TG', 'Taejon-gwangyoksi');
INSERT INTO `zone` VALUES (1788, 114, 'AL', 'Al ''Asimah');
INSERT INTO `zone` VALUES (1789, 114, 'AA', 'Al Ahmadi');
INSERT INTO `zone` VALUES (1790, 114, 'AF', 'Al Farwaniyah');
INSERT INTO `zone` VALUES (1791, 114, 'AJ', 'Al Jahra''');
INSERT INTO `zone` VALUES (1792, 114, 'HA', 'Hawalli');
INSERT INTO `zone` VALUES (1793, 115, 'GB', 'Bishkek');
INSERT INTO `zone` VALUES (1794, 115, 'B', 'Batken');
INSERT INTO `zone` VALUES (1795, 115, 'C', 'Chu');
INSERT INTO `zone` VALUES (1796, 115, 'J', 'Jalal-Abad');
INSERT INTO `zone` VALUES (1797, 115, 'N', 'Naryn');
INSERT INTO `zone` VALUES (1798, 115, 'O', 'Osh');
INSERT INTO `zone` VALUES (1799, 115, 'T', 'Talas');
INSERT INTO `zone` VALUES (1800, 115, 'Y', 'Ysyk-Kol');
INSERT INTO `zone` VALUES (1801, 116, 'VT', 'Vientiane');
INSERT INTO `zone` VALUES (1802, 116, 'AT', 'Attapu');
INSERT INTO `zone` VALUES (1803, 116, 'BK', 'Bokeo');
INSERT INTO `zone` VALUES (1804, 116, 'BL', 'Bolikhamxai');
INSERT INTO `zone` VALUES (1805, 116, 'CH', 'Champasak');
INSERT INTO `zone` VALUES (1806, 116, 'HO', 'Houaphan');
INSERT INTO `zone` VALUES (1807, 116, 'KH', 'Khammouan');
INSERT INTO `zone` VALUES (1808, 116, 'LM', 'Louang Namtha');
INSERT INTO `zone` VALUES (1809, 116, 'LP', 'Louangphabang');
INSERT INTO `zone` VALUES (1810, 116, 'OU', 'Oudomxai');
INSERT INTO `zone` VALUES (1811, 116, 'PH', 'Phongsali');
INSERT INTO `zone` VALUES (1812, 116, 'SL', 'Salavan');
INSERT INTO `zone` VALUES (1813, 116, 'SV', 'Savannakhet');
INSERT INTO `zone` VALUES (1814, 116, 'VI', 'Vientiane');
INSERT INTO `zone` VALUES (1815, 116, 'XA', 'Xaignabouli');
INSERT INTO `zone` VALUES (1816, 116, 'XE', 'Xekong');
INSERT INTO `zone` VALUES (1817, 116, 'XI', 'Xiangkhoang');
INSERT INTO `zone` VALUES (1818, 116, 'XN', 'Xaisomboun');
INSERT INTO `zone` VALUES (1819, 117, 'AIZ', 'Aizkraukles Rajons');
INSERT INTO `zone` VALUES (1820, 117, 'ALU', 'Aluksnes Rajons');
INSERT INTO `zone` VALUES (1821, 117, 'BAL', 'Balvu Rajons');
INSERT INTO `zone` VALUES (1822, 117, 'BAU', 'Bauskas Rajons');
INSERT INTO `zone` VALUES (1823, 117, 'CES', 'Cesu Rajons');
INSERT INTO `zone` VALUES (1824, 117, 'DGR', 'Daugavpils Rajons');
INSERT INTO `zone` VALUES (1825, 117, 'DOB', 'Dobeles Rajons');
INSERT INTO `zone` VALUES (1826, 117, 'GUL', 'Gulbenes Rajons');
INSERT INTO `zone` VALUES (1827, 117, 'JEK', 'Jekabpils Rajons');
INSERT INTO `zone` VALUES (1828, 117, 'JGR', 'Jelgavas Rajons');
INSERT INTO `zone` VALUES (1829, 117, 'KRA', 'Kraslavas Rajons');
INSERT INTO `zone` VALUES (1830, 117, 'KUL', 'Kuldigas Rajons');
INSERT INTO `zone` VALUES (1831, 117, 'LPR', 'Liepajas Rajons');
INSERT INTO `zone` VALUES (1832, 117, 'LIM', 'Limbazu Rajons');
INSERT INTO `zone` VALUES (1833, 117, 'LUD', 'Ludzas Rajons');
INSERT INTO `zone` VALUES (1834, 117, 'MAD', 'Madonas Rajons');
INSERT INTO `zone` VALUES (1835, 117, 'OGR', 'Ogres Rajons');
INSERT INTO `zone` VALUES (1836, 117, 'PRE', 'Preilu Rajons');
INSERT INTO `zone` VALUES (1837, 117, 'RZR', 'Rezeknes Rajons');
INSERT INTO `zone` VALUES (1838, 117, 'RGR', 'Rigas Rajons');
INSERT INTO `zone` VALUES (1839, 117, 'SAL', 'Saldus Rajons');
INSERT INTO `zone` VALUES (1840, 117, 'TAL', 'Talsu Rajons');
INSERT INTO `zone` VALUES (1841, 117, 'TUK', 'Tukuma Rajons');
INSERT INTO `zone` VALUES (1842, 117, 'VLK', 'Valkas Rajons');
INSERT INTO `zone` VALUES (1843, 117, 'VLM', 'Valmieras Rajons');
INSERT INTO `zone` VALUES (1844, 117, 'VSR', 'Ventspils Rajons');
INSERT INTO `zone` VALUES (1845, 117, 'DGV', 'Daugavpils');
INSERT INTO `zone` VALUES (1846, 117, 'JGV', 'Jelgava');
INSERT INTO `zone` VALUES (1847, 117, 'JUR', 'Jurmala');
INSERT INTO `zone` VALUES (1848, 117, 'LPK', 'Liepaja');
INSERT INTO `zone` VALUES (1849, 117, 'RZK', 'Rezekne');
INSERT INTO `zone` VALUES (1850, 117, 'RGA', 'Riga');
INSERT INTO `zone` VALUES (1851, 117, 'VSL', 'Ventspils');
INSERT INTO `zone` VALUES (1852, 119, 'BE', 'Berea');
INSERT INTO `zone` VALUES (1853, 119, 'BB', 'Butha-Buthe');
INSERT INTO `zone` VALUES (1854, 119, 'LE', 'Leribe');
INSERT INTO `zone` VALUES (1855, 119, 'MF', 'Mafeteng');
INSERT INTO `zone` VALUES (1856, 119, 'MS', 'Maseru');
INSERT INTO `zone` VALUES (1857, 119, 'MH', 'Mohale''s Hoek');
INSERT INTO `zone` VALUES (1858, 119, 'MK', 'Mokhotlong');
INSERT INTO `zone` VALUES (1859, 119, 'QN', 'Qacha''s Nek');
INSERT INTO `zone` VALUES (1860, 119, 'QT', 'Quthing');
INSERT INTO `zone` VALUES (1861, 119, 'TT', 'Thaba-Tseka');
INSERT INTO `zone` VALUES (1862, 120, 'BI', 'Bomi');
INSERT INTO `zone` VALUES (1863, 120, 'BG', 'Bong');
INSERT INTO `zone` VALUES (1864, 120, 'GB', 'Grand Bassa');
INSERT INTO `zone` VALUES (1865, 120, 'CM', 'Grand Cape Mount');
INSERT INTO `zone` VALUES (1866, 120, 'GG', 'Grand Gedeh');
INSERT INTO `zone` VALUES (1867, 120, 'GK', 'Grand Kru');
INSERT INTO `zone` VALUES (1868, 120, 'LO', 'Lofa');
INSERT INTO `zone` VALUES (1869, 120, 'MG', 'Margibi');
INSERT INTO `zone` VALUES (1870, 120, 'ML', 'Maryland');
INSERT INTO `zone` VALUES (1871, 120, 'MS', 'Montserrado');
INSERT INTO `zone` VALUES (1872, 120, 'NB', 'Nimba');
INSERT INTO `zone` VALUES (1873, 120, 'RC', 'River Cess');
INSERT INTO `zone` VALUES (1874, 120, 'SN', 'Sinoe');
INSERT INTO `zone` VALUES (1875, 121, 'AJ', 'Ajdabiya');
INSERT INTO `zone` VALUES (1876, 121, 'AZ', 'Al ''Aziziyah');
INSERT INTO `zone` VALUES (1877, 121, 'FA', 'Al Fatih');
INSERT INTO `zone` VALUES (1878, 121, 'JA', 'Al Jabal al Akhdar');
INSERT INTO `zone` VALUES (1879, 121, 'JU', 'Al Jufrah');
INSERT INTO `zone` VALUES (1880, 121, 'KH', 'Al Khums');
INSERT INTO `zone` VALUES (1881, 121, 'KU', 'Al Kufrah');
INSERT INTO `zone` VALUES (1882, 121, 'NK', 'An Nuqat al Khams');
INSERT INTO `zone` VALUES (1883, 121, 'AS', 'Ash Shati''');
INSERT INTO `zone` VALUES (1884, 121, 'AW', 'Awbari');
INSERT INTO `zone` VALUES (1885, 121, 'ZA', 'Az Zawiyah');
INSERT INTO `zone` VALUES (1886, 121, 'BA', 'Banghazi');
INSERT INTO `zone` VALUES (1887, 121, 'DA', 'Darnah');
INSERT INTO `zone` VALUES (1888, 121, 'GD', 'Ghadamis');
INSERT INTO `zone` VALUES (1889, 121, 'GY', 'Gharyan');
INSERT INTO `zone` VALUES (1890, 121, 'MI', 'Misratah');
INSERT INTO `zone` VALUES (1891, 121, 'MZ', 'Murzuq');
INSERT INTO `zone` VALUES (1892, 121, 'SB', 'Sabha');
INSERT INTO `zone` VALUES (1893, 121, 'SW', 'Sawfajjin');
INSERT INTO `zone` VALUES (1894, 121, 'SU', 'Surt');
INSERT INTO `zone` VALUES (1895, 121, 'TL', 'Tarabulus (Tripoli)');
INSERT INTO `zone` VALUES (1896, 121, 'TH', 'Tarhunah');
INSERT INTO `zone` VALUES (1897, 121, 'TU', 'Tubruq');
INSERT INTO `zone` VALUES (1898, 121, 'YA', 'Yafran');
INSERT INTO `zone` VALUES (1899, 121, 'ZL', 'Zlitan');
INSERT INTO `zone` VALUES (1900, 122, 'V', 'Vaduz');
INSERT INTO `zone` VALUES (1901, 122, 'A', 'Schaan');
INSERT INTO `zone` VALUES (1902, 122, 'B', 'Balzers');
INSERT INTO `zone` VALUES (1903, 122, 'N', 'Triesen');
INSERT INTO `zone` VALUES (1904, 122, 'E', 'Eschen');
INSERT INTO `zone` VALUES (1905, 122, 'M', 'Mauren');
INSERT INTO `zone` VALUES (1906, 122, 'T', 'Triesenberg');
INSERT INTO `zone` VALUES (1907, 122, 'R', 'Ruggell');
INSERT INTO `zone` VALUES (1908, 122, 'G', 'Gamprin');
INSERT INTO `zone` VALUES (1909, 122, 'L', 'Schellenberg');
INSERT INTO `zone` VALUES (1910, 122, 'P', 'Planken');
INSERT INTO `zone` VALUES (1911, 123, 'AL', 'Alytus');
INSERT INTO `zone` VALUES (1912, 123, 'KA', 'Kaunas');
INSERT INTO `zone` VALUES (1913, 123, 'KL', 'Klaipeda');
INSERT INTO `zone` VALUES (1914, 123, 'MA', 'Marijampole');
INSERT INTO `zone` VALUES (1915, 123, 'PA', 'Panevezys');
INSERT INTO `zone` VALUES (1916, 123, 'SI', 'Siauliai');
INSERT INTO `zone` VALUES (1917, 123, 'TA', 'Taurage');
INSERT INTO `zone` VALUES (1918, 123, 'TE', 'Telsiai');
INSERT INTO `zone` VALUES (1919, 123, 'UT', 'Utena');
INSERT INTO `zone` VALUES (1920, 123, 'VI', 'Vilnius');
INSERT INTO `zone` VALUES (1921, 124, 'DD', 'Diekirch');
INSERT INTO `zone` VALUES (1922, 124, 'DC', 'Clervaux');
INSERT INTO `zone` VALUES (1923, 124, 'DR', 'Redange');
INSERT INTO `zone` VALUES (1924, 124, 'DV', 'Vianden');
INSERT INTO `zone` VALUES (1925, 124, 'DW', 'Wiltz');
INSERT INTO `zone` VALUES (1926, 124, 'GG', 'Grevenmacher');
INSERT INTO `zone` VALUES (1927, 124, 'GE', 'Echternach');
INSERT INTO `zone` VALUES (1928, 124, 'GR', 'Remich');
INSERT INTO `zone` VALUES (1929, 124, 'LL', 'Luxembourg');
INSERT INTO `zone` VALUES (1930, 124, 'LC', 'Capellen');
INSERT INTO `zone` VALUES (1931, 124, 'LE', 'Esch-sur-Alzette');
INSERT INTO `zone` VALUES (1932, 124, 'LM', 'Mersch');
INSERT INTO `zone` VALUES (1933, 125, 'OLF', 'Our Lady Fatima Parish');
INSERT INTO `zone` VALUES (1934, 125, 'ANT', 'St. Anthony Parish');
INSERT INTO `zone` VALUES (1935, 125, 'LAZ', 'St. Lazarus Parish');
INSERT INTO `zone` VALUES (1936, 125, 'CAT', 'Cathedral Parish');
INSERT INTO `zone` VALUES (1937, 125, 'LAW', 'St. Lawrence Parish');
INSERT INTO `zone` VALUES (1938, 127, 'AN', 'Antananarivo');
INSERT INTO `zone` VALUES (1939, 127, 'AS', 'Antsiranana');
INSERT INTO `zone` VALUES (1940, 127, 'FN', 'Fianarantsoa');
INSERT INTO `zone` VALUES (1941, 127, 'MJ', 'Mahajanga');
INSERT INTO `zone` VALUES (1942, 127, 'TM', 'Toamasina');
INSERT INTO `zone` VALUES (1943, 127, 'TL', 'Toliara');
INSERT INTO `zone` VALUES (1944, 128, 'BLK', 'Balaka');
INSERT INTO `zone` VALUES (1945, 128, 'BLT', 'Blantyre');
INSERT INTO `zone` VALUES (1946, 128, 'CKW', 'Chikwawa');
INSERT INTO `zone` VALUES (1947, 128, 'CRD', 'Chiradzulu');
INSERT INTO `zone` VALUES (1948, 128, 'CTP', 'Chitipa');
INSERT INTO `zone` VALUES (1949, 128, 'DDZ', 'Dedza');
INSERT INTO `zone` VALUES (1950, 128, 'DWA', 'Dowa');
INSERT INTO `zone` VALUES (1951, 128, 'KRG', 'Karonga');
INSERT INTO `zone` VALUES (1952, 128, 'KSG', 'Kasungu');
INSERT INTO `zone` VALUES (1953, 128, 'LKM', 'Likoma');
INSERT INTO `zone` VALUES (1954, 128, 'LLG', 'Lilongwe');
INSERT INTO `zone` VALUES (1955, 128, 'MCG', 'Machinga');
INSERT INTO `zone` VALUES (1956, 128, 'MGC', 'Mangochi');
INSERT INTO `zone` VALUES (1957, 128, 'MCH', 'Mchinji');
INSERT INTO `zone` VALUES (1958, 128, 'MLJ', 'Mulanje');
INSERT INTO `zone` VALUES (1959, 128, 'MWZ', 'Mwanza');
INSERT INTO `zone` VALUES (1960, 128, 'MZM', 'Mzimba');
INSERT INTO `zone` VALUES (1961, 128, 'NTU', 'Ntcheu');
INSERT INTO `zone` VALUES (1962, 128, 'NKB', 'Nkhata Bay');
INSERT INTO `zone` VALUES (1963, 128, 'NKH', 'Nkhotakota');
INSERT INTO `zone` VALUES (1964, 128, 'NSJ', 'Nsanje');
INSERT INTO `zone` VALUES (1965, 128, 'NTI', 'Ntchisi');
INSERT INTO `zone` VALUES (1966, 128, 'PHL', 'Phalombe');
INSERT INTO `zone` VALUES (1967, 128, 'RMP', 'Rumphi');
INSERT INTO `zone` VALUES (1968, 128, 'SLM', 'Salima');
INSERT INTO `zone` VALUES (1969, 128, 'THY', 'Thyolo');
INSERT INTO `zone` VALUES (1970, 128, 'ZBA', 'Zomba');
INSERT INTO `zone` VALUES (1971, 129, 'JO', 'Johor');
INSERT INTO `zone` VALUES (1972, 129, 'KE', 'Kedah');
INSERT INTO `zone` VALUES (1973, 129, 'KL', 'Kelantan');
INSERT INTO `zone` VALUES (1974, 129, 'LA', 'Labuan');
INSERT INTO `zone` VALUES (1975, 129, 'ME', 'Melaka');
INSERT INTO `zone` VALUES (1976, 129, 'NS', 'Negeri Sembilan');
INSERT INTO `zone` VALUES (1977, 129, 'PA', 'Pahang');
INSERT INTO `zone` VALUES (1978, 129, 'PE', 'Perak');
INSERT INTO `zone` VALUES (1979, 129, 'PR', 'Perlis');
INSERT INTO `zone` VALUES (1980, 129, 'PP', 'Pulau Pinang');
INSERT INTO `zone` VALUES (1981, 129, 'SA', 'Sabah');
INSERT INTO `zone` VALUES (1982, 129, 'SR', 'Sarawak');
INSERT INTO `zone` VALUES (1983, 129, 'SE', 'Selangor');
INSERT INTO `zone` VALUES (1984, 129, 'TE', 'Terengganu');
INSERT INTO `zone` VALUES (1985, 129, 'WP', 'Wilayah Persekutuan');
INSERT INTO `zone` VALUES (1986, 130, 'THU', 'Thiladhunmathi Uthuru');
INSERT INTO `zone` VALUES (1987, 130, 'THD', 'Thiladhunmathi Dhekunu');
INSERT INTO `zone` VALUES (1988, 130, 'MLU', 'Miladhunmadulu Uthuru');
INSERT INTO `zone` VALUES (1989, 130, 'MLD', 'Miladhunmadulu Dhekunu');
INSERT INTO `zone` VALUES (1990, 130, 'MAU', 'Maalhosmadulu Uthuru');
INSERT INTO `zone` VALUES (1991, 130, 'MAD', 'Maalhosmadulu Dhekunu');
INSERT INTO `zone` VALUES (1992, 130, 'FAA', 'Faadhippolhu');
INSERT INTO `zone` VALUES (1993, 130, 'MAA', 'Male Atoll');
INSERT INTO `zone` VALUES (1994, 130, 'AAU', 'Ari Atoll Uthuru');
INSERT INTO `zone` VALUES (1995, 130, 'AAD', 'Ari Atoll Dheknu');
INSERT INTO `zone` VALUES (1996, 130, 'FEA', 'Felidhe Atoll');
INSERT INTO `zone` VALUES (1997, 130, 'MUA', 'Mulaku Atoll');
INSERT INTO `zone` VALUES (1998, 130, 'NAU', 'Nilandhe Atoll Uthuru');
INSERT INTO `zone` VALUES (1999, 130, 'NAD', 'Nilandhe Atoll Dhekunu');
INSERT INTO `zone` VALUES (2000, 130, 'KLH', 'Kolhumadulu');
INSERT INTO `zone` VALUES (2001, 130, 'HDH', 'Hadhdhunmathi');
INSERT INTO `zone` VALUES (2002, 130, 'HAU', 'Huvadhu Atoll Uthuru');
INSERT INTO `zone` VALUES (2003, 130, 'HAD', 'Huvadhu Atoll Dhekunu');
INSERT INTO `zone` VALUES (2004, 130, 'FMU', 'Fua Mulaku');
INSERT INTO `zone` VALUES (2005, 130, 'ADD', 'Addu');
INSERT INTO `zone` VALUES (2006, 131, 'GA', 'Gao');
INSERT INTO `zone` VALUES (2007, 131, 'KY', 'Kayes');
INSERT INTO `zone` VALUES (2008, 131, 'KD', 'Kidal');
INSERT INTO `zone` VALUES (2009, 131, 'KL', 'Koulikoro');
INSERT INTO `zone` VALUES (2010, 131, 'MP', 'Mopti');
INSERT INTO `zone` VALUES (2011, 131, 'SG', 'Segou');
INSERT INTO `zone` VALUES (2012, 131, 'SK', 'Sikasso');
INSERT INTO `zone` VALUES (2013, 131, 'TB', 'Tombouctou');
INSERT INTO `zone` VALUES (2014, 131, 'CD', 'Bamako Capital District');
INSERT INTO `zone` VALUES (2015, 132, 'ATT', 'Attard');
INSERT INTO `zone` VALUES (2016, 132, 'BAL', 'Balzan');
INSERT INTO `zone` VALUES (2017, 132, 'BGU', 'Birgu');
INSERT INTO `zone` VALUES (2018, 132, 'BKK', 'Birkirkara');
INSERT INTO `zone` VALUES (2019, 132, 'BRZ', 'Birzebbuga');
INSERT INTO `zone` VALUES (2020, 132, 'BOR', 'Bormla');
INSERT INTO `zone` VALUES (2021, 132, 'DIN', 'Dingli');
INSERT INTO `zone` VALUES (2022, 132, 'FGU', 'Fgura');
INSERT INTO `zone` VALUES (2023, 132, 'FLO', 'Floriana');
INSERT INTO `zone` VALUES (2024, 132, 'GDJ', 'Gudja');
INSERT INTO `zone` VALUES (2025, 132, 'GZR', 'Gzira');
INSERT INTO `zone` VALUES (2026, 132, 'GRG', 'Gargur');
INSERT INTO `zone` VALUES (2027, 132, 'GXQ', 'Gaxaq');
INSERT INTO `zone` VALUES (2028, 132, 'HMR', 'Hamrun');
INSERT INTO `zone` VALUES (2029, 132, 'IKL', 'Iklin');
INSERT INTO `zone` VALUES (2030, 132, 'ISL', 'Isla');
INSERT INTO `zone` VALUES (2031, 132, 'KLK', 'Kalkara');
INSERT INTO `zone` VALUES (2032, 132, 'KRK', 'Kirkop');
INSERT INTO `zone` VALUES (2033, 132, 'LIJ', 'Lija');
INSERT INTO `zone` VALUES (2034, 132, 'LUQ', 'Luqa');
INSERT INTO `zone` VALUES (2035, 132, 'MRS', 'Marsa');
INSERT INTO `zone` VALUES (2036, 132, 'MKL', 'Marsaskala');
INSERT INTO `zone` VALUES (2037, 132, 'MXL', 'Marsaxlokk');
INSERT INTO `zone` VALUES (2038, 132, 'MDN', 'Mdina');
INSERT INTO `zone` VALUES (2039, 132, 'MEL', 'Melliea');
INSERT INTO `zone` VALUES (2040, 132, 'MGR', 'Mgarr');
INSERT INTO `zone` VALUES (2041, 132, 'MST', 'Mosta');
INSERT INTO `zone` VALUES (2042, 132, 'MQA', 'Mqabba');
INSERT INTO `zone` VALUES (2043, 132, 'MSI', 'Msida');
INSERT INTO `zone` VALUES (2044, 132, 'MTF', 'Mtarfa');
INSERT INTO `zone` VALUES (2045, 132, 'NAX', 'Naxxar');
INSERT INTO `zone` VALUES (2046, 132, 'PAO', 'Paola');
INSERT INTO `zone` VALUES (2047, 132, 'PEM', 'Pembroke');
INSERT INTO `zone` VALUES (2048, 132, 'PIE', 'Pieta');
INSERT INTO `zone` VALUES (2049, 132, 'QOR', 'Qormi');
INSERT INTO `zone` VALUES (2050, 132, 'QRE', 'Qrendi');
INSERT INTO `zone` VALUES (2051, 132, 'RAB', 'Rabat');
INSERT INTO `zone` VALUES (2052, 132, 'SAF', 'Safi');
INSERT INTO `zone` VALUES (2053, 132, 'SGI', 'San Giljan');
INSERT INTO `zone` VALUES (2054, 132, 'SLU', 'Santa Lucija');
INSERT INTO `zone` VALUES (2055, 132, 'SPB', 'San Pawl il-Bahar');
INSERT INTO `zone` VALUES (2056, 132, 'SGW', 'San Gwann');
INSERT INTO `zone` VALUES (2057, 132, 'SVE', 'Santa Venera');
INSERT INTO `zone` VALUES (2058, 132, 'SIG', 'Siggiewi');
INSERT INTO `zone` VALUES (2059, 132, 'SLM', 'Sliema');
INSERT INTO `zone` VALUES (2060, 132, 'SWQ', 'Swieqi');
INSERT INTO `zone` VALUES (2061, 132, 'TXB', 'Ta Xbiex');
INSERT INTO `zone` VALUES (2062, 132, 'TRX', 'Tarxien');
INSERT INTO `zone` VALUES (2063, 132, 'VLT', 'Valletta');
INSERT INTO `zone` VALUES (2064, 132, 'XGJ', 'Xgajra');
INSERT INTO `zone` VALUES (2065, 132, 'ZBR', 'Zabbar');
INSERT INTO `zone` VALUES (2066, 132, 'ZBG', 'Zebbug');
INSERT INTO `zone` VALUES (2067, 132, 'ZJT', 'Zejtun');
INSERT INTO `zone` VALUES (2068, 132, 'ZRQ', 'Zurrieq');
INSERT INTO `zone` VALUES (2069, 132, 'FNT', 'Fontana');
INSERT INTO `zone` VALUES (2070, 132, 'GHJ', 'Ghajnsielem');
INSERT INTO `zone` VALUES (2071, 132, 'GHR', 'Gharb');
INSERT INTO `zone` VALUES (2072, 132, 'GHS', 'Ghasri');
INSERT INTO `zone` VALUES (2073, 132, 'KRC', 'Kercem');
INSERT INTO `zone` VALUES (2074, 132, 'MUN', 'Munxar');
INSERT INTO `zone` VALUES (2075, 132, 'NAD', 'Nadur');
INSERT INTO `zone` VALUES (2076, 132, 'QAL', 'Qala');
INSERT INTO `zone` VALUES (2077, 132, 'VIC', 'Victoria');
INSERT INTO `zone` VALUES (2078, 132, 'SLA', 'San Lawrenz');
INSERT INTO `zone` VALUES (2079, 132, 'SNT', 'Sannat');
INSERT INTO `zone` VALUES (2080, 132, 'ZAG', 'Xagra');
INSERT INTO `zone` VALUES (2081, 132, 'XEW', 'Xewkija');
INSERT INTO `zone` VALUES (2082, 132, 'ZEB', 'Zebbug');
INSERT INTO `zone` VALUES (2083, 133, 'ALG', 'Ailinginae');
INSERT INTO `zone` VALUES (2084, 133, 'ALL', 'Ailinglaplap');
INSERT INTO `zone` VALUES (2085, 133, 'ALK', 'Ailuk');
INSERT INTO `zone` VALUES (2086, 133, 'ARN', 'Arno');
INSERT INTO `zone` VALUES (2087, 133, 'AUR', 'Aur');
INSERT INTO `zone` VALUES (2088, 133, 'BKR', 'Bikar');
INSERT INTO `zone` VALUES (2089, 133, 'BKN', 'Bikini');
INSERT INTO `zone` VALUES (2090, 133, 'BKK', 'Bokak');
INSERT INTO `zone` VALUES (2091, 133, 'EBN', 'Ebon');
INSERT INTO `zone` VALUES (2092, 133, 'ENT', 'Enewetak');
INSERT INTO `zone` VALUES (2093, 133, 'EKB', 'Erikub');
INSERT INTO `zone` VALUES (2094, 133, 'JBT', 'Jabat');
INSERT INTO `zone` VALUES (2095, 133, 'JLT', 'Jaluit');
INSERT INTO `zone` VALUES (2096, 133, 'JEM', 'Jemo');
INSERT INTO `zone` VALUES (2097, 133, 'KIL', 'Kili');
INSERT INTO `zone` VALUES (2098, 133, 'KWJ', 'Kwajalein');
INSERT INTO `zone` VALUES (2099, 133, 'LAE', 'Lae');
INSERT INTO `zone` VALUES (2100, 133, 'LIB', 'Lib');
INSERT INTO `zone` VALUES (2101, 133, 'LKP', 'Likiep');
INSERT INTO `zone` VALUES (2102, 133, 'MJR', 'Majuro');
INSERT INTO `zone` VALUES (2103, 133, 'MLP', 'Maloelap');
INSERT INTO `zone` VALUES (2104, 133, 'MJT', 'Mejit');
INSERT INTO `zone` VALUES (2105, 133, 'MIL', 'Mili');
INSERT INTO `zone` VALUES (2106, 133, 'NMK', 'Namorik');
INSERT INTO `zone` VALUES (2107, 133, 'NAM', 'Namu');
INSERT INTO `zone` VALUES (2108, 133, 'RGL', 'Rongelap');
INSERT INTO `zone` VALUES (2109, 133, 'RGK', 'Rongrik');
INSERT INTO `zone` VALUES (2110, 133, 'TOK', 'Toke');
INSERT INTO `zone` VALUES (2111, 133, 'UJA', 'Ujae');
INSERT INTO `zone` VALUES (2112, 133, 'UJL', 'Ujelang');
INSERT INTO `zone` VALUES (2113, 133, 'UTK', 'Utirik');
INSERT INTO `zone` VALUES (2114, 133, 'WTH', 'Wotho');
INSERT INTO `zone` VALUES (2115, 133, 'WTJ', 'Wotje');
INSERT INTO `zone` VALUES (2116, 135, 'AD', 'Adrar');
INSERT INTO `zone` VALUES (2117, 135, 'AS', 'Assaba');
INSERT INTO `zone` VALUES (2118, 135, 'BR', 'Brakna');
INSERT INTO `zone` VALUES (2119, 135, 'DN', 'Dakhlet Nouadhibou');
INSERT INTO `zone` VALUES (2120, 135, 'GO', 'Gorgol');
INSERT INTO `zone` VALUES (2121, 135, 'GM', 'Guidimaka');
INSERT INTO `zone` VALUES (2122, 135, 'HC', 'Hodh Ech Chargui');
INSERT INTO `zone` VALUES (2123, 135, 'HG', 'Hodh El Gharbi');
INSERT INTO `zone` VALUES (2124, 135, 'IN', 'Inchiri');
INSERT INTO `zone` VALUES (2125, 135, 'TA', 'Tagant');
INSERT INTO `zone` VALUES (2126, 135, 'TZ', 'Tiris Zemmour');
INSERT INTO `zone` VALUES (2127, 135, 'TR', 'Trarza');
INSERT INTO `zone` VALUES (2128, 135, 'NO', 'Nouakchott');
INSERT INTO `zone` VALUES (2129, 136, 'BR', 'Beau Bassin-Rose Hill');
INSERT INTO `zone` VALUES (2130, 136, 'CU', 'Curepipe');
INSERT INTO `zone` VALUES (2131, 136, 'PU', 'Port Louis');
INSERT INTO `zone` VALUES (2132, 136, 'QB', 'Quatre Bornes');
INSERT INTO `zone` VALUES (2133, 136, 'VP', 'Vacoas-Phoenix');
INSERT INTO `zone` VALUES (2134, 136, 'AG', 'Agalega Islands');
INSERT INTO `zone` VALUES (2135, 136, 'CC', 'Cargados Carajos Shoals (Saint B');
INSERT INTO `zone` VALUES (2136, 136, 'RO', 'Rodrigues');
INSERT INTO `zone` VALUES (2137, 136, 'BL', 'Black River');
INSERT INTO `zone` VALUES (2138, 136, 'FL', 'Flacq');
INSERT INTO `zone` VALUES (2139, 136, 'GP', 'Grand Port');
INSERT INTO `zone` VALUES (2140, 136, 'MO', 'Moka');
INSERT INTO `zone` VALUES (2141, 136, 'PA', 'Pamplemousses');
INSERT INTO `zone` VALUES (2142, 136, 'PW', 'Plaines Wilhems');
INSERT INTO `zone` VALUES (2143, 136, 'PL', 'Port Louis');
INSERT INTO `zone` VALUES (2144, 136, 'RR', 'Riviere du Rempart');
INSERT INTO `zone` VALUES (2145, 136, 'SA', 'Savanne');
INSERT INTO `zone` VALUES (2146, 138, 'BN', 'Baja California Norte');
INSERT INTO `zone` VALUES (2147, 138, 'BS', 'Baja California Sur');
INSERT INTO `zone` VALUES (2148, 138, 'CA', 'Campeche');
INSERT INTO `zone` VALUES (2149, 138, 'CI', 'Chiapas');
INSERT INTO `zone` VALUES (2150, 138, 'CH', 'Chihuahua');
INSERT INTO `zone` VALUES (2151, 138, 'CZ', 'Coahuila de Zaragoza');
INSERT INTO `zone` VALUES (2152, 138, 'CL', 'Colima');
INSERT INTO `zone` VALUES (2153, 138, 'DF', 'Distrito Federal');
INSERT INTO `zone` VALUES (2154, 138, 'DU', 'Durango');
INSERT INTO `zone` VALUES (2155, 138, 'GA', 'Guanajuato');
INSERT INTO `zone` VALUES (2156, 138, 'GE', 'Guerrero');
INSERT INTO `zone` VALUES (2157, 138, 'HI', 'Hidalgo');
INSERT INTO `zone` VALUES (2158, 138, 'JA', 'Jalisco');
INSERT INTO `zone` VALUES (2159, 138, 'ME', 'Mexico');
INSERT INTO `zone` VALUES (2160, 138, 'MI', 'Michoacan de Ocampo');
INSERT INTO `zone` VALUES (2161, 138, 'MO', 'Morelos');
INSERT INTO `zone` VALUES (2162, 138, 'NA', 'Nayarit');
INSERT INTO `zone` VALUES (2163, 138, 'NL', 'Nuevo Leon');
INSERT INTO `zone` VALUES (2164, 138, 'OA', 'Oaxaca');
INSERT INTO `zone` VALUES (2165, 138, 'PU', 'Puebla');
INSERT INTO `zone` VALUES (2166, 138, 'QA', 'Queretaro de Arteaga');
INSERT INTO `zone` VALUES (2167, 138, 'QR', 'Quintana Roo');
INSERT INTO `zone` VALUES (2168, 138, 'SA', 'San Luis Potosi');
INSERT INTO `zone` VALUES (2169, 138, 'SI', 'Sinaloa');
INSERT INTO `zone` VALUES (2170, 138, 'SO', 'Sonora');
INSERT INTO `zone` VALUES (2171, 138, 'TB', 'Tabasco');
INSERT INTO `zone` VALUES (2172, 138, 'TM', 'Tamaulipas');
INSERT INTO `zone` VALUES (2173, 138, 'TL', 'Tlaxcala');
INSERT INTO `zone` VALUES (2174, 138, 'VE', 'Veracruz-Llave');
INSERT INTO `zone` VALUES (2175, 138, 'YU', 'Yucatan');
INSERT INTO `zone` VALUES (2176, 138, 'ZA', 'Zacatecas');
INSERT INTO `zone` VALUES (2177, 139, 'C', 'Chuuk');
INSERT INTO `zone` VALUES (2178, 139, 'K', 'Kosrae');
INSERT INTO `zone` VALUES (2179, 139, 'P', 'Pohnpei');
INSERT INTO `zone` VALUES (2180, 139, 'Y', 'Yap');
INSERT INTO `zone` VALUES (2181, 140, 'GA', 'Gagauzia');
INSERT INTO `zone` VALUES (2182, 140, 'CU', 'Chisinau');
INSERT INTO `zone` VALUES (2183, 140, 'BA', 'Balti');
INSERT INTO `zone` VALUES (2184, 140, 'CA', 'Cahul');
INSERT INTO `zone` VALUES (2185, 140, 'ED', 'Edinet');
INSERT INTO `zone` VALUES (2186, 140, 'LA', 'Lapusna');
INSERT INTO `zone` VALUES (2187, 140, 'OR', 'Orhei');
INSERT INTO `zone` VALUES (2188, 140, 'SO', 'Soroca');
INSERT INTO `zone` VALUES (2189, 140, 'TI', 'Tighina');
INSERT INTO `zone` VALUES (2190, 140, 'UN', 'Ungheni');
INSERT INTO `zone` VALUES (2191, 140, 'SN', 'StÃƒÆ’Ã‚Â®nga Nistrului');
INSERT INTO `zone` VALUES (2192, 141, 'FV', 'Fontvieille');
INSERT INTO `zone` VALUES (2193, 141, 'LC', 'La Condamine');
INSERT INTO `zone` VALUES (2194, 141, 'MV', 'Monaco-Ville');
INSERT INTO `zone` VALUES (2195, 141, 'MC', 'Monte-Carlo');
INSERT INTO `zone` VALUES (2196, 142, '1', 'Ulanbaatar');
INSERT INTO `zone` VALUES (2197, 142, '035', 'Orhon');
INSERT INTO `zone` VALUES (2198, 142, '037', 'Darhan uul');
INSERT INTO `zone` VALUES (2199, 142, '039', 'Hentiy');
INSERT INTO `zone` VALUES (2200, 142, '041', 'Hovsgol');
INSERT INTO `zone` VALUES (2201, 142, '043', 'Hovd');
INSERT INTO `zone` VALUES (2202, 142, '046', 'Uvs');
INSERT INTO `zone` VALUES (2203, 142, '047', 'Tov');
INSERT INTO `zone` VALUES (2204, 142, '049', 'Selenge');
INSERT INTO `zone` VALUES (2205, 142, '051', 'Suhbaatar');
INSERT INTO `zone` VALUES (2206, 142, '053', 'Omnogovi');
INSERT INTO `zone` VALUES (2207, 142, '055', 'Ovorhangay');
INSERT INTO `zone` VALUES (2208, 142, '057', 'Dzavhan');
INSERT INTO `zone` VALUES (2209, 142, '059', 'DundgovL');
INSERT INTO `zone` VALUES (2210, 142, '061', 'Dornod');
INSERT INTO `zone` VALUES (2211, 142, '063', 'Dornogov');
INSERT INTO `zone` VALUES (2212, 142, '064', 'Govi-Sumber');
INSERT INTO `zone` VALUES (2213, 142, '065', 'Govi-Altay');
INSERT INTO `zone` VALUES (2214, 142, '067', 'Bulgan');
INSERT INTO `zone` VALUES (2215, 142, '069', 'Bayanhongor');
INSERT INTO `zone` VALUES (2216, 142, '071', 'Bayan-Olgiy');
INSERT INTO `zone` VALUES (2217, 142, '073', 'Arhangay');
INSERT INTO `zone` VALUES (2218, 143, 'A', 'Saint Anthony');
INSERT INTO `zone` VALUES (2219, 143, 'G', 'Saint Georges');
INSERT INTO `zone` VALUES (2220, 143, 'P', 'Saint Peter');
INSERT INTO `zone` VALUES (2221, 144, 'AGD', 'Agadir');
INSERT INTO `zone` VALUES (2222, 144, 'HOC', 'Al Hoceima');
INSERT INTO `zone` VALUES (2223, 144, 'AZI', 'Azilal');
INSERT INTO `zone` VALUES (2224, 144, 'BME', 'Beni Mellal');
INSERT INTO `zone` VALUES (2225, 144, 'BSL', 'Ben Slimane');
INSERT INTO `zone` VALUES (2226, 144, 'BLM', 'Boulemane');
INSERT INTO `zone` VALUES (2227, 144, 'CBL', 'Casablanca');
INSERT INTO `zone` VALUES (2228, 144, 'CHA', 'Chaouen');
INSERT INTO `zone` VALUES (2229, 144, 'EJA', 'El Jadida');
INSERT INTO `zone` VALUES (2230, 144, 'EKS', 'El Kelaa des Sraghna');
INSERT INTO `zone` VALUES (2231, 144, 'ERA', 'Er Rachidia');
INSERT INTO `zone` VALUES (2232, 144, 'ESS', 'Essaouira');
INSERT INTO `zone` VALUES (2233, 144, 'FES', 'Fes');
INSERT INTO `zone` VALUES (2234, 144, 'FIG', 'Figuig');
INSERT INTO `zone` VALUES (2235, 144, 'GLM', 'Guelmim');
INSERT INTO `zone` VALUES (2236, 144, 'IFR', 'Ifrane');
INSERT INTO `zone` VALUES (2237, 144, 'KEN', 'Kenitra');
INSERT INTO `zone` VALUES (2238, 144, 'KHM', 'Khemisset');
INSERT INTO `zone` VALUES (2239, 144, 'KHN', 'Khenifra');
INSERT INTO `zone` VALUES (2240, 144, 'KHO', 'Khouribga');
INSERT INTO `zone` VALUES (2241, 144, 'LYN', 'Laayoune');
INSERT INTO `zone` VALUES (2242, 144, 'LAR', 'Larache');
INSERT INTO `zone` VALUES (2243, 144, 'MRK', 'Marrakech');
INSERT INTO `zone` VALUES (2244, 144, 'MKN', 'Meknes');
INSERT INTO `zone` VALUES (2245, 144, 'NAD', 'Nador');
INSERT INTO `zone` VALUES (2246, 144, 'ORZ', 'Ouarzazate');
INSERT INTO `zone` VALUES (2247, 144, 'OUJ', 'Oujda');
INSERT INTO `zone` VALUES (2248, 144, 'RSA', 'Rabat-Sale');
INSERT INTO `zone` VALUES (2249, 144, 'SAF', 'Safi');
INSERT INTO `zone` VALUES (2250, 144, 'SET', 'Settat');
INSERT INTO `zone` VALUES (2251, 144, 'SKA', 'Sidi Kacem');
INSERT INTO `zone` VALUES (2252, 144, 'TGR', 'Tangier');
INSERT INTO `zone` VALUES (2253, 144, 'TAN', 'Tan-Tan');
INSERT INTO `zone` VALUES (2254, 144, 'TAO', 'Taounate');
INSERT INTO `zone` VALUES (2255, 144, 'TRD', 'Taroudannt');
INSERT INTO `zone` VALUES (2256, 144, 'TAT', 'Tata');
INSERT INTO `zone` VALUES (2257, 144, 'TAZ', 'Taza');
INSERT INTO `zone` VALUES (2258, 144, 'TET', 'Tetouan');
INSERT INTO `zone` VALUES (2259, 144, 'TIZ', 'Tiznit');
INSERT INTO `zone` VALUES (2260, 144, 'ADK', 'Ad Dakhla');
INSERT INTO `zone` VALUES (2261, 144, 'BJD', 'Boujdour');
INSERT INTO `zone` VALUES (2262, 144, 'ESM', 'Es Smara');
INSERT INTO `zone` VALUES (2263, 145, 'CD', 'Cabo Delgado');
INSERT INTO `zone` VALUES (2264, 145, 'GZ', 'Gaza');
INSERT INTO `zone` VALUES (2265, 145, 'IN', 'Inhambane');
INSERT INTO `zone` VALUES (2266, 145, 'MN', 'Manica');
INSERT INTO `zone` VALUES (2267, 145, 'MC', 'Maputo (city)');
INSERT INTO `zone` VALUES (2268, 145, 'MP', 'Maputo');
INSERT INTO `zone` VALUES (2269, 145, 'NA', 'Nampula');
INSERT INTO `zone` VALUES (2270, 145, 'NI', 'Niassa');
INSERT INTO `zone` VALUES (2271, 145, 'SO', 'Sofala');
INSERT INTO `zone` VALUES (2272, 145, 'TE', 'Tete');
INSERT INTO `zone` VALUES (2273, 145, 'ZA', 'Zambezia');
INSERT INTO `zone` VALUES (2274, 146, 'AY', 'Ayeyarwady');
INSERT INTO `zone` VALUES (2275, 146, 'BG', 'Bago');
INSERT INTO `zone` VALUES (2276, 146, 'MG', 'Magway');
INSERT INTO `zone` VALUES (2277, 146, 'MD', 'Mandalay');
INSERT INTO `zone` VALUES (2278, 146, 'SG', 'Sagaing');
INSERT INTO `zone` VALUES (2279, 146, 'TN', 'Tanintharyi');
INSERT INTO `zone` VALUES (2280, 146, 'YG', 'Yangon');
INSERT INTO `zone` VALUES (2281, 146, 'CH', 'Chin State');
INSERT INTO `zone` VALUES (2282, 146, 'KC', 'Kachin State');
INSERT INTO `zone` VALUES (2283, 146, 'KH', 'Kayah State');
INSERT INTO `zone` VALUES (2284, 146, 'KN', 'Kayin State');
INSERT INTO `zone` VALUES (2285, 146, 'MN', 'Mon State');
INSERT INTO `zone` VALUES (2286, 146, 'RK', 'Rakhine State');
INSERT INTO `zone` VALUES (2287, 146, 'SH', 'Shan State');
INSERT INTO `zone` VALUES (2288, 147, 'CA', 'Caprivi');
INSERT INTO `zone` VALUES (2289, 147, 'ER', 'Erongo');
INSERT INTO `zone` VALUES (2290, 147, 'HA', 'Hardap');
INSERT INTO `zone` VALUES (2291, 147, 'KR', 'Karas');
INSERT INTO `zone` VALUES (2292, 147, 'KV', 'Kavango');
INSERT INTO `zone` VALUES (2293, 147, 'KH', 'Khomas');
INSERT INTO `zone` VALUES (2294, 147, 'KU', 'Kunene');
INSERT INTO `zone` VALUES (2295, 147, 'OW', 'Ohangwena');
INSERT INTO `zone` VALUES (2296, 147, 'OK', 'Omaheke');
INSERT INTO `zone` VALUES (2297, 147, 'OT', 'Omusati');
INSERT INTO `zone` VALUES (2298, 147, 'ON', 'Oshana');
INSERT INTO `zone` VALUES (2299, 147, 'OO', 'Oshikoto');
INSERT INTO `zone` VALUES (2300, 147, 'OJ', 'Otjozondjupa');
INSERT INTO `zone` VALUES (2301, 148, 'AO', 'Aiwo');
INSERT INTO `zone` VALUES (2302, 148, 'AA', 'Anabar');
INSERT INTO `zone` VALUES (2303, 148, 'AT', 'Anetan');
INSERT INTO `zone` VALUES (2304, 148, 'AI', 'Anibare');
INSERT INTO `zone` VALUES (2305, 148, 'BA', 'Baiti');
INSERT INTO `zone` VALUES (2306, 148, 'BO', 'Boe');
INSERT INTO `zone` VALUES (2307, 148, 'BU', 'Buada');
INSERT INTO `zone` VALUES (2308, 148, 'DE', 'Denigomodu');
INSERT INTO `zone` VALUES (2309, 148, 'EW', 'Ewa');
INSERT INTO `zone` VALUES (2310, 148, 'IJ', 'Ijuw');
INSERT INTO `zone` VALUES (2311, 148, 'ME', 'Meneng');
INSERT INTO `zone` VALUES (2312, 148, 'NI', 'Nibok');
INSERT INTO `zone` VALUES (2313, 148, 'UA', 'Uaboe');
INSERT INTO `zone` VALUES (2314, 148, 'YA', 'Yaren');
INSERT INTO `zone` VALUES (2315, 149, 'BA', 'Bagmati');
INSERT INTO `zone` VALUES (2316, 149, 'BH', 'Bheri');
INSERT INTO `zone` VALUES (2317, 149, 'DH', 'Dhawalagiri');
INSERT INTO `zone` VALUES (2318, 149, 'GA', 'Gandaki');
INSERT INTO `zone` VALUES (2319, 149, 'JA', 'Janakpur');
INSERT INTO `zone` VALUES (2320, 149, 'KA', 'Karnali');
INSERT INTO `zone` VALUES (2321, 149, 'KO', 'Kosi');
INSERT INTO `zone` VALUES (2322, 149, 'LU', 'Lumbini');
INSERT INTO `zone` VALUES (2323, 149, 'MA', 'Mahakali');
INSERT INTO `zone` VALUES (2324, 149, 'ME', 'Mechi');
INSERT INTO `zone` VALUES (2325, 149, 'NA', 'Narayani');
INSERT INTO `zone` VALUES (2326, 149, 'RA', 'Rapti');
INSERT INTO `zone` VALUES (2327, 149, 'SA', 'Sagarmatha');
INSERT INTO `zone` VALUES (2328, 149, 'SE', 'Seti');
INSERT INTO `zone` VALUES (2329, 150, 'DR', 'Drenthe');
INSERT INTO `zone` VALUES (2330, 150, 'FL', 'Flevoland');
INSERT INTO `zone` VALUES (2331, 150, 'FR', 'Friesland');
INSERT INTO `zone` VALUES (2332, 150, 'GE', 'Gelderland');
INSERT INTO `zone` VALUES (2333, 150, 'GR', 'Groningen');
INSERT INTO `zone` VALUES (2334, 150, 'LI', 'Limburg');
INSERT INTO `zone` VALUES (2335, 150, 'NB', 'Noord Brabant');
INSERT INTO `zone` VALUES (2336, 150, 'NH', 'Noord Holland');
INSERT INTO `zone` VALUES (2337, 150, 'OV', 'Overijssel');
INSERT INTO `zone` VALUES (2338, 150, 'UT', 'Utrecht');
INSERT INTO `zone` VALUES (2339, 150, 'ZE', 'Zeeland');
INSERT INTO `zone` VALUES (2340, 150, 'ZH', 'Zuid Holland');
INSERT INTO `zone` VALUES (2341, 152, 'L', 'Iles Loyaute');
INSERT INTO `zone` VALUES (2342, 152, 'N', 'Nord');
INSERT INTO `zone` VALUES (2343, 152, 'S', 'Sud');
INSERT INTO `zone` VALUES (2344, 153, 'AUK', 'Auckland');
INSERT INTO `zone` VALUES (2345, 153, 'BOP', 'Bay of Plenty');
INSERT INTO `zone` VALUES (2346, 153, 'CAN', 'Canterbury');
INSERT INTO `zone` VALUES (2347, 153, 'COR', 'Coromandel');
INSERT INTO `zone` VALUES (2348, 153, 'GIS', 'Gisborne');
INSERT INTO `zone` VALUES (2349, 153, 'FIO', 'Fiordland');
INSERT INTO `zone` VALUES (2350, 153, 'HKB', 'Hawke''s Bay');
INSERT INTO `zone` VALUES (2351, 153, 'MBH', 'Marlborough');
INSERT INTO `zone` VALUES (2352, 153, 'MWT', 'Manawatu-Wanganui');
INSERT INTO `zone` VALUES (2353, 153, 'MCM', 'Mt Cook-Mackenzie');
INSERT INTO `zone` VALUES (2354, 153, 'NSN', 'Nelson');
INSERT INTO `zone` VALUES (2355, 153, 'NTL', 'Northland');
INSERT INTO `zone` VALUES (2356, 153, 'OTA', 'Otago');
INSERT INTO `zone` VALUES (2357, 153, 'STL', 'Southland');
INSERT INTO `zone` VALUES (2358, 153, 'TKI', 'Taranaki');
INSERT INTO `zone` VALUES (2359, 153, 'WGN', 'Wellington');
INSERT INTO `zone` VALUES (2360, 153, 'WKO', 'Waikato');
INSERT INTO `zone` VALUES (2361, 153, 'WAI', 'Wairprarapa');
INSERT INTO `zone` VALUES (2362, 153, 'WTC', 'West Coast');
INSERT INTO `zone` VALUES (2363, 154, 'AN', 'Atlantico Norte');
INSERT INTO `zone` VALUES (2364, 154, 'AS', 'Atlantico Sur');
INSERT INTO `zone` VALUES (2365, 154, 'BO', 'Boaco');
INSERT INTO `zone` VALUES (2366, 154, 'CA', 'Carazo');
INSERT INTO `zone` VALUES (2367, 154, 'CI', 'Chinandega');
INSERT INTO `zone` VALUES (2368, 154, 'CO', 'Chontales');
INSERT INTO `zone` VALUES (2369, 154, 'ES', 'Esteli');
INSERT INTO `zone` VALUES (2370, 154, 'GR', 'Granada');
INSERT INTO `zone` VALUES (2371, 154, 'JI', 'Jinotega');
INSERT INTO `zone` VALUES (2372, 154, 'LE', 'Leon');
INSERT INTO `zone` VALUES (2373, 154, 'MD', 'Madriz');
INSERT INTO `zone` VALUES (2374, 154, 'MN', 'Managua');
INSERT INTO `zone` VALUES (2375, 154, 'MS', 'Masaya');
INSERT INTO `zone` VALUES (2376, 154, 'MT', 'Matagalpa');
INSERT INTO `zone` VALUES (2377, 154, 'NS', 'Nuevo Segovia');
INSERT INTO `zone` VALUES (2378, 154, 'RS', 'Rio San Juan');
INSERT INTO `zone` VALUES (2379, 154, 'RI', 'Rivas');
INSERT INTO `zone` VALUES (2380, 155, 'AG', 'Agadez');
INSERT INTO `zone` VALUES (2381, 155, 'DF', 'Diffa');
INSERT INTO `zone` VALUES (2382, 155, 'DS', 'Dosso');
INSERT INTO `zone` VALUES (2383, 155, 'MA', 'Maradi');
INSERT INTO `zone` VALUES (2384, 155, 'NM', 'Niamey');
INSERT INTO `zone` VALUES (2385, 155, 'TH', 'Tahoua');
INSERT INTO `zone` VALUES (2386, 155, 'TL', 'Tillaberi');
INSERT INTO `zone` VALUES (2387, 155, 'ZD', 'Zinder');
INSERT INTO `zone` VALUES (2388, 156, 'AB', 'Abia');
INSERT INTO `zone` VALUES (2389, 156, 'CT', 'Abuja Federal Capital Territory');
INSERT INTO `zone` VALUES (2390, 156, 'AD', 'Adamawa');
INSERT INTO `zone` VALUES (2391, 156, 'AK', 'Akwa Ibom');
INSERT INTO `zone` VALUES (2392, 156, 'AN', 'Anambra');
INSERT INTO `zone` VALUES (2393, 156, 'BC', 'Bauchi');
INSERT INTO `zone` VALUES (2394, 156, 'BY', 'Bayelsa');
INSERT INTO `zone` VALUES (2395, 156, 'BN', 'Benue');
INSERT INTO `zone` VALUES (2396, 156, 'BO', 'Borno');
INSERT INTO `zone` VALUES (2397, 156, 'CR', 'Cross River');
INSERT INTO `zone` VALUES (2398, 156, 'DE', 'Delta');
INSERT INTO `zone` VALUES (2399, 156, 'EB', 'Ebonyi');
INSERT INTO `zone` VALUES (2400, 156, 'ED', 'Edo');
INSERT INTO `zone` VALUES (2401, 156, 'EK', 'Ekiti');
INSERT INTO `zone` VALUES (2402, 156, 'EN', 'Enugu');
INSERT INTO `zone` VALUES (2403, 156, 'GO', 'Gombe');
INSERT INTO `zone` VALUES (2404, 156, 'IM', 'Imo');
INSERT INTO `zone` VALUES (2405, 156, 'JI', 'Jigawa');
INSERT INTO `zone` VALUES (2406, 156, 'KD', 'Kaduna');
INSERT INTO `zone` VALUES (2407, 156, 'KN', 'Kano');
INSERT INTO `zone` VALUES (2408, 156, 'KT', 'Katsina');
INSERT INTO `zone` VALUES (2409, 156, 'KE', 'Kebbi');
INSERT INTO `zone` VALUES (2410, 156, 'KO', 'Kogi');
INSERT INTO `zone` VALUES (2411, 156, 'KW', 'Kwara');
INSERT INTO `zone` VALUES (2412, 156, 'LA', 'Lagos');
INSERT INTO `zone` VALUES (2413, 156, 'NA', 'Nassarawa');
INSERT INTO `zone` VALUES (2414, 156, 'NI', 'Niger');
INSERT INTO `zone` VALUES (2415, 156, 'OG', 'Ogun');
INSERT INTO `zone` VALUES (2416, 156, 'ONG', 'Ondo');
INSERT INTO `zone` VALUES (2417, 156, 'OS', 'Osun');
INSERT INTO `zone` VALUES (2418, 156, 'OY', 'Oyo');
INSERT INTO `zone` VALUES (2419, 156, 'PL', 'Plateau');
INSERT INTO `zone` VALUES (2420, 156, 'RI', 'Rivers');
INSERT INTO `zone` VALUES (2421, 156, 'SO', 'Sokoto');
INSERT INTO `zone` VALUES (2422, 156, 'TA', 'Taraba');
INSERT INTO `zone` VALUES (2423, 156, 'YO', 'Yobe');
INSERT INTO `zone` VALUES (2424, 156, 'ZA', 'Zamfara');
INSERT INTO `zone` VALUES (2425, 159, 'N', 'Northern Islands');
INSERT INTO `zone` VALUES (2426, 159, 'R', 'Rota');
INSERT INTO `zone` VALUES (2427, 159, 'S', 'Saipan');
INSERT INTO `zone` VALUES (2428, 159, 'T', 'Tinian');
INSERT INTO `zone` VALUES (2429, 160, 'AK', 'Akershus');
INSERT INTO `zone` VALUES (2430, 160, 'AA', 'Aust-Agder');
INSERT INTO `zone` VALUES (2431, 160, 'BU', 'Buskerud');
INSERT INTO `zone` VALUES (2432, 160, 'FM', 'Finnmark');
INSERT INTO `zone` VALUES (2433, 160, 'HM', 'Hedmark');
INSERT INTO `zone` VALUES (2434, 160, 'HL', 'Hordaland');
INSERT INTO `zone` VALUES (2435, 160, 'MR', 'More og Romdal');
INSERT INTO `zone` VALUES (2436, 160, 'NT', 'Nord-Trondelag');
INSERT INTO `zone` VALUES (2437, 160, 'NL', 'Nordland');
INSERT INTO `zone` VALUES (2438, 160, 'OF', 'Ostfold');
INSERT INTO `zone` VALUES (2439, 160, 'OP', 'Oppland');
INSERT INTO `zone` VALUES (2440, 160, 'OL', 'Oslo');
INSERT INTO `zone` VALUES (2441, 160, 'RL', 'Rogaland');
INSERT INTO `zone` VALUES (2442, 160, 'ST', 'Sor-Trondelag');
INSERT INTO `zone` VALUES (2443, 160, 'SJ', 'Sogn og Fjordane');
INSERT INTO `zone` VALUES (2444, 160, 'SV', 'Svalbard');
INSERT INTO `zone` VALUES (2445, 160, 'TM', 'Telemark');
INSERT INTO `zone` VALUES (2446, 160, 'TR', 'Troms');
INSERT INTO `zone` VALUES (2447, 160, 'VA', 'Vest-Agder');
INSERT INTO `zone` VALUES (2448, 160, 'VF', 'Vestfold');
INSERT INTO `zone` VALUES (2449, 161, 'DA', 'Ad Dakhiliyah');
INSERT INTO `zone` VALUES (2450, 161, 'BA', 'Al Batinah');
INSERT INTO `zone` VALUES (2451, 161, 'WU', 'Al Wusta');
INSERT INTO `zone` VALUES (2452, 161, 'SH', 'Ash Sharqiyah');
INSERT INTO `zone` VALUES (2453, 161, 'ZA', 'Az Zahirah');
INSERT INTO `zone` VALUES (2454, 161, 'MA', 'Masqat');
INSERT INTO `zone` VALUES (2455, 161, 'MU', 'Musandam');
INSERT INTO `zone` VALUES (2456, 161, 'ZU', 'Zufar');
INSERT INTO `zone` VALUES (2457, 162, 'B', 'Balochistan');
INSERT INTO `zone` VALUES (2458, 162, 'T', 'Federally Administered Tribal Ar');
INSERT INTO `zone` VALUES (2459, 162, 'I', 'Islamabad Capital Territory');
INSERT INTO `zone` VALUES (2460, 162, 'N', 'North-West Frontier');
INSERT INTO `zone` VALUES (2461, 162, 'P', 'Punjab');
INSERT INTO `zone` VALUES (2462, 162, 'S', 'Sindh');
INSERT INTO `zone` VALUES (2463, 163, 'AM', 'Aimeliik');
INSERT INTO `zone` VALUES (2464, 163, 'AR', 'Airai');
INSERT INTO `zone` VALUES (2465, 163, 'AN', 'Angaur');
INSERT INTO `zone` VALUES (2466, 163, 'HA', 'Hatohobei');
INSERT INTO `zone` VALUES (2467, 163, 'KA', 'Kayangel');
INSERT INTO `zone` VALUES (2468, 163, 'KO', 'Koror');
INSERT INTO `zone` VALUES (2469, 163, 'ME', 'Melekeok');
INSERT INTO `zone` VALUES (2470, 163, 'NA', 'Ngaraard');
INSERT INTO `zone` VALUES (2471, 163, 'NG', 'Ngarchelong');
INSERT INTO `zone` VALUES (2472, 163, 'ND', 'Ngardmau');
INSERT INTO `zone` VALUES (2473, 163, 'NT', 'Ngatpang');
INSERT INTO `zone` VALUES (2474, 163, 'NC', 'Ngchesar');
INSERT INTO `zone` VALUES (2475, 163, 'NR', 'Ngeremlengui');
INSERT INTO `zone` VALUES (2476, 163, 'NW', 'Ngiwal');
INSERT INTO `zone` VALUES (2477, 163, 'PE', 'Peleliu');
INSERT INTO `zone` VALUES (2478, 163, 'SO', 'Sonsorol');
INSERT INTO `zone` VALUES (2479, 164, 'BT', 'Bocas del Toro');
INSERT INTO `zone` VALUES (2480, 164, 'CH', 'Chiriqui');
INSERT INTO `zone` VALUES (2481, 164, 'CC', 'Cocle');
INSERT INTO `zone` VALUES (2482, 164, 'CL', 'Colon');
INSERT INTO `zone` VALUES (2483, 164, 'DA', 'Darien');
INSERT INTO `zone` VALUES (2484, 164, 'HE', 'Herrera');
INSERT INTO `zone` VALUES (2485, 164, 'LS', 'Los Santos');
INSERT INTO `zone` VALUES (2486, 164, 'PA', 'Panama');
INSERT INTO `zone` VALUES (2487, 164, 'SB', 'San Blas');
INSERT INTO `zone` VALUES (2488, 164, 'VG', 'Veraguas');
INSERT INTO `zone` VALUES (2489, 165, 'BV', 'Bougainville');
INSERT INTO `zone` VALUES (2490, 165, 'CE', 'Central');
INSERT INTO `zone` VALUES (2491, 165, 'CH', 'Chimbu');
INSERT INTO `zone` VALUES (2492, 165, 'EH', 'Eastern Highlands');
INSERT INTO `zone` VALUES (2493, 165, 'EB', 'East New Britain');
INSERT INTO `zone` VALUES (2494, 165, 'ES', 'East Sepik');
INSERT INTO `zone` VALUES (2495, 165, 'EN', 'Enga');
INSERT INTO `zone` VALUES (2496, 165, 'GU', 'Gulf');
INSERT INTO `zone` VALUES (2497, 165, 'MD', 'Madang');
INSERT INTO `zone` VALUES (2498, 165, 'MN', 'Manus');
INSERT INTO `zone` VALUES (2499, 165, 'MB', 'Milne Bay');
INSERT INTO `zone` VALUES (2500, 165, 'MR', 'Morobe');
INSERT INTO `zone` VALUES (2501, 165, 'NC', 'National Capital');
INSERT INTO `zone` VALUES (2502, 165, 'NI', 'New Ireland');
INSERT INTO `zone` VALUES (2503, 165, 'NO', 'Northern');
INSERT INTO `zone` VALUES (2504, 165, 'SA', 'Sandaun');
INSERT INTO `zone` VALUES (2505, 165, 'SH', 'Southern Highlands');
INSERT INTO `zone` VALUES (2506, 165, 'WE', 'Western');
INSERT INTO `zone` VALUES (2507, 165, 'WH', 'Western Highlands');
INSERT INTO `zone` VALUES (2508, 165, 'WB', 'West New Britain');
INSERT INTO `zone` VALUES (2509, 166, 'AG', 'Alto Paraguay');
INSERT INTO `zone` VALUES (2510, 166, 'AN', 'Alto Parana');
INSERT INTO `zone` VALUES (2511, 166, 'AM', 'Amambay');
INSERT INTO `zone` VALUES (2512, 166, 'AS', 'Asuncion');
INSERT INTO `zone` VALUES (2513, 166, 'BO', 'Boqueron');
INSERT INTO `zone` VALUES (2514, 166, 'CG', 'Caaguazu');
INSERT INTO `zone` VALUES (2515, 166, 'CZ', 'Caazapa');
INSERT INTO `zone` VALUES (2516, 166, 'CN', 'Canindeyu');
INSERT INTO `zone` VALUES (2517, 166, 'CE', 'Central');
INSERT INTO `zone` VALUES (2518, 166, 'CC', 'Concepcion');
INSERT INTO `zone` VALUES (2519, 166, 'CD', 'Cordillera');
INSERT INTO `zone` VALUES (2520, 166, 'GU', 'Guaira');
INSERT INTO `zone` VALUES (2521, 166, 'IT', 'Itapua');
INSERT INTO `zone` VALUES (2522, 166, 'MI', 'Misiones');
INSERT INTO `zone` VALUES (2523, 166, 'NE', 'Neembucu');
INSERT INTO `zone` VALUES (2524, 166, 'PA', 'Paraguari');
INSERT INTO `zone` VALUES (2525, 166, 'PH', 'Presidente Hayes');
INSERT INTO `zone` VALUES (2526, 166, 'SP', 'San Pedro');
INSERT INTO `zone` VALUES (2527, 167, 'AM', 'Amazonas');
INSERT INTO `zone` VALUES (2528, 167, 'AN', 'Ancash');
INSERT INTO `zone` VALUES (2529, 167, 'AP', 'Apurimac');
INSERT INTO `zone` VALUES (2530, 167, 'AR', 'Arequipa');
INSERT INTO `zone` VALUES (2531, 167, 'AY', 'Ayacucho');
INSERT INTO `zone` VALUES (2532, 167, 'CJ', 'Cajamarca');
INSERT INTO `zone` VALUES (2533, 167, 'CL', 'Callao');
INSERT INTO `zone` VALUES (2534, 167, 'CU', 'Cusco');
INSERT INTO `zone` VALUES (2535, 167, 'HV', 'Huancavelica');
INSERT INTO `zone` VALUES (2536, 167, 'HO', 'Huanuco');
INSERT INTO `zone` VALUES (2537, 167, 'IC', 'Ica');
INSERT INTO `zone` VALUES (2538, 167, 'JU', 'Junin');
INSERT INTO `zone` VALUES (2539, 167, 'LD', 'La Libertad');
INSERT INTO `zone` VALUES (2540, 167, 'LY', 'Lambayeque');
INSERT INTO `zone` VALUES (2541, 167, 'LI', 'Lima');
INSERT INTO `zone` VALUES (2542, 167, 'LO', 'Loreto');
INSERT INTO `zone` VALUES (2543, 167, 'MD', 'Madre de Dios');
INSERT INTO `zone` VALUES (2544, 167, 'MO', 'Moquegua');
INSERT INTO `zone` VALUES (2545, 167, 'PA', 'Pasco');
INSERT INTO `zone` VALUES (2546, 167, 'PI', 'Piura');
INSERT INTO `zone` VALUES (2547, 167, 'PU', 'Puno');
INSERT INTO `zone` VALUES (2548, 167, 'SM', 'San Martin');
INSERT INTO `zone` VALUES (2549, 167, 'TA', 'Tacna');
INSERT INTO `zone` VALUES (2550, 167, 'TU', 'Tumbes');
INSERT INTO `zone` VALUES (2551, 167, 'UC', 'Ucayali');
INSERT INTO `zone` VALUES (2552, 168, 'ABR', 'Abra');
INSERT INTO `zone` VALUES (2553, 168, 'ANO', 'Agusan del Norte');
INSERT INTO `zone` VALUES (2554, 168, 'ASU', 'Agusan del Sur');
INSERT INTO `zone` VALUES (2555, 168, 'AKL', 'Aklan');
INSERT INTO `zone` VALUES (2556, 168, 'ALB', 'Albay');
INSERT INTO `zone` VALUES (2557, 168, 'ANT', 'Antique');
INSERT INTO `zone` VALUES (2558, 168, 'APY', 'Apayao');
INSERT INTO `zone` VALUES (2559, 168, 'AUR', 'Aurora');
INSERT INTO `zone` VALUES (2560, 168, 'BAS', 'Basilan');
INSERT INTO `zone` VALUES (2561, 168, 'BTA', 'Bataan');
INSERT INTO `zone` VALUES (2562, 168, 'BTE', 'Batanes');
INSERT INTO `zone` VALUES (2563, 168, 'BTG', 'Batangas');
INSERT INTO `zone` VALUES (2564, 168, 'BLR', 'Biliran');
INSERT INTO `zone` VALUES (2565, 168, 'BEN', 'Benguet');
INSERT INTO `zone` VALUES (2566, 168, 'BOL', 'Bohol');
INSERT INTO `zone` VALUES (2567, 168, 'BUK', 'Bukidnon');
INSERT INTO `zone` VALUES (2568, 168, 'BUL', 'Bulacan');
INSERT INTO `zone` VALUES (2569, 168, 'CAG', 'Cagayan');
INSERT INTO `zone` VALUES (2570, 168, 'CNO', 'Camarines Norte');
INSERT INTO `zone` VALUES (2571, 168, 'CSU', 'Camarines Sur');
INSERT INTO `zone` VALUES (2572, 168, 'CAM', 'Camiguin');
INSERT INTO `zone` VALUES (2573, 168, 'CAP', 'Capiz');
INSERT INTO `zone` VALUES (2574, 168, 'CAT', 'Catanduanes');
INSERT INTO `zone` VALUES (2575, 168, 'CAV', 'Cavite');
INSERT INTO `zone` VALUES (2576, 168, 'CEB', 'Cebu');
INSERT INTO `zone` VALUES (2577, 168, 'CMP', 'Compostela');
INSERT INTO `zone` VALUES (2578, 168, 'DNO', 'Davao del Norte');
INSERT INTO `zone` VALUES (2579, 168, 'DSU', 'Davao del Sur');
INSERT INTO `zone` VALUES (2580, 168, 'DOR', 'Davao Oriental');
INSERT INTO `zone` VALUES (2581, 168, 'ESA', 'Eastern Samar');
INSERT INTO `zone` VALUES (2582, 168, 'GUI', 'Guimaras');
INSERT INTO `zone` VALUES (2583, 168, 'IFU', 'Ifugao');
INSERT INTO `zone` VALUES (2584, 168, 'INO', 'Ilocos Norte');
INSERT INTO `zone` VALUES (2585, 168, 'ISU', 'Ilocos Sur');
INSERT INTO `zone` VALUES (2586, 168, 'ILO', 'Iloilo');
INSERT INTO `zone` VALUES (2587, 168, 'ISA', 'Isabela');
INSERT INTO `zone` VALUES (2588, 168, 'KAL', 'Kalinga');
INSERT INTO `zone` VALUES (2589, 168, 'LAG', 'Laguna');
INSERT INTO `zone` VALUES (2590, 168, 'LNO', 'Lanao del Norte');
INSERT INTO `zone` VALUES (2591, 168, 'LSU', 'Lanao del Sur');
INSERT INTO `zone` VALUES (2592, 168, 'UNI', 'La Union');
INSERT INTO `zone` VALUES (2593, 168, 'LEY', 'Leyte');
INSERT INTO `zone` VALUES (2594, 168, 'MAG', 'Maguindanao');
INSERT INTO `zone` VALUES (2595, 168, 'MRN', 'Marinduque');
INSERT INTO `zone` VALUES (2596, 168, 'MSB', 'Masbate');
INSERT INTO `zone` VALUES (2597, 168, 'MIC', 'Mindoro Occidental');
INSERT INTO `zone` VALUES (2598, 168, 'MIR', 'Mindoro Oriental');
INSERT INTO `zone` VALUES (2599, 168, 'MSC', 'Misamis Occidental');
INSERT INTO `zone` VALUES (2600, 168, 'MOR', 'Misamis Oriental');
INSERT INTO `zone` VALUES (2601, 168, 'MOP', 'Mountain');
INSERT INTO `zone` VALUES (2602, 168, 'NOC', 'Negros Occidental');
INSERT INTO `zone` VALUES (2603, 168, 'NOR', 'Negros Oriental');
INSERT INTO `zone` VALUES (2604, 168, 'NCT', 'North Cotabato');
INSERT INTO `zone` VALUES (2605, 168, 'NSM', 'Northern Samar');
INSERT INTO `zone` VALUES (2606, 168, 'NEC', 'Nueva Ecija');
INSERT INTO `zone` VALUES (2607, 168, 'NVZ', 'Nueva Vizcaya');
INSERT INTO `zone` VALUES (2608, 168, 'PLW', 'Palawan');
INSERT INTO `zone` VALUES (2609, 168, 'PMP', 'Pampanga');
INSERT INTO `zone` VALUES (2610, 168, 'PNG', 'Pangasinan');
INSERT INTO `zone` VALUES (2611, 168, 'QZN', 'Quezon');
INSERT INTO `zone` VALUES (2612, 168, 'QRN', 'Quirino');
INSERT INTO `zone` VALUES (2613, 168, 'RIZ', 'Rizal');
INSERT INTO `zone` VALUES (2614, 168, 'ROM', 'Romblon');
INSERT INTO `zone` VALUES (2615, 168, 'SMR', 'Samar');
INSERT INTO `zone` VALUES (2616, 168, 'SRG', 'Sarangani');
INSERT INTO `zone` VALUES (2617, 168, 'SQJ', 'Siquijor');
INSERT INTO `zone` VALUES (2618, 168, 'SRS', 'Sorsogon');
INSERT INTO `zone` VALUES (2619, 168, 'SCO', 'South Cotabato');
INSERT INTO `zone` VALUES (2620, 168, 'SLE', 'Southern Leyte');
INSERT INTO `zone` VALUES (2621, 168, 'SKU', 'Sultan Kudarat');
INSERT INTO `zone` VALUES (2622, 168, 'SLU', 'Sulu');
INSERT INTO `zone` VALUES (2623, 168, 'SNO', 'Surigao del Norte');
INSERT INTO `zone` VALUES (2624, 168, 'SSU', 'Surigao del Sur');
INSERT INTO `zone` VALUES (2625, 168, 'TAR', 'Tarlac');
INSERT INTO `zone` VALUES (2626, 168, 'TAW', 'Tawi-Tawi');
INSERT INTO `zone` VALUES (2627, 168, 'ZBL', 'Zambales');
INSERT INTO `zone` VALUES (2628, 168, 'ZNO', 'Zamboanga del Norte');
INSERT INTO `zone` VALUES (2629, 168, 'ZSU', 'Zamboanga del Sur');
INSERT INTO `zone` VALUES (2630, 168, 'ZSI', 'Zamboanga Sibugay');
INSERT INTO `zone` VALUES (2631, 170, 'DO', 'Dolnoslaskie');
INSERT INTO `zone` VALUES (2632, 170, 'KP', 'Kujawsko-Pomorskie');
INSERT INTO `zone` VALUES (2633, 170, 'LO', 'Lodzkie');
INSERT INTO `zone` VALUES (2634, 170, 'LL', 'Lubelskie');
INSERT INTO `zone` VALUES (2635, 170, 'LU', 'Lubuskie');
INSERT INTO `zone` VALUES (2636, 170, 'ML', 'Malopolskie');
INSERT INTO `zone` VALUES (2637, 170, 'MZ', 'Mazowieckie');
INSERT INTO `zone` VALUES (2638, 170, 'OP', 'Opolskie');
INSERT INTO `zone` VALUES (2639, 170, 'PP', 'Podkarpackie');
INSERT INTO `zone` VALUES (2640, 170, 'PL', 'Podlaskie');
INSERT INTO `zone` VALUES (2641, 170, 'PM', 'Pomorskie');
INSERT INTO `zone` VALUES (2642, 170, 'SL', 'Slaskie');
INSERT INTO `zone` VALUES (2643, 170, 'SW', 'Swietokrzyskie');
INSERT INTO `zone` VALUES (2644, 170, 'WM', 'Warminsko-Mazurskie');
INSERT INTO `zone` VALUES (2645, 170, 'WP', 'Wielkopolskie');
INSERT INTO `zone` VALUES (2646, 170, 'ZA', 'Zachodniopomorskie');
INSERT INTO `zone` VALUES (2647, 198, 'P', 'Saint Pierre');
INSERT INTO `zone` VALUES (2648, 198, 'M', 'Miquelon');
INSERT INTO `zone` VALUES (2649, 171, 'AC', 'AÃƒÆ’Ã‚Â§ores');
INSERT INTO `zone` VALUES (2650, 171, 'AV', 'Aveiro');
INSERT INTO `zone` VALUES (2651, 171, 'BE', 'Beja');
INSERT INTO `zone` VALUES (2652, 171, 'BR', 'Braga');
INSERT INTO `zone` VALUES (2653, 171, 'BA', 'BraganÃƒÆ’Ã‚Â§a');
INSERT INTO `zone` VALUES (2654, 171, 'CB', 'Castelo Branco');
INSERT INTO `zone` VALUES (2655, 171, 'CO', 'Coimbra');
INSERT INTO `zone` VALUES (2656, 171, 'EV', 'ÃƒÆ’Ã‚Â©;vora');
INSERT INTO `zone` VALUES (2657, 171, 'FA', 'Faro');
INSERT INTO `zone` VALUES (2658, 171, 'GU', 'Guarda');
INSERT INTO `zone` VALUES (2659, 171, 'LE', 'Leiria');
INSERT INTO `zone` VALUES (2660, 171, 'LI', 'Lisboa');
INSERT INTO `zone` VALUES (2661, 171, 'ME', 'Madeira');
INSERT INTO `zone` VALUES (2662, 171, 'PO', 'Portalegre');
INSERT INTO `zone` VALUES (2663, 171, 'PR', 'Porto');
INSERT INTO `zone` VALUES (2664, 171, 'SA', 'SantarÃƒÆ’Ã‚Â©;m');
INSERT INTO `zone` VALUES (2665, 171, 'SE', 'SetÃƒÆ’Ã‚Âºbal');
INSERT INTO `zone` VALUES (2666, 171, 'VC', 'Viana do Castelo');
INSERT INTO `zone` VALUES (2667, 171, 'VR', 'Vila Real');
INSERT INTO `zone` VALUES (2668, 171, 'VI', 'Viseu');
INSERT INTO `zone` VALUES (2669, 173, 'DW', 'Ad Dawhah');
INSERT INTO `zone` VALUES (2670, 173, 'GW', 'Al Ghuwayriyah');
INSERT INTO `zone` VALUES (2671, 173, 'JM', 'Al Jumayliyah');
INSERT INTO `zone` VALUES (2672, 173, 'KR', 'Al Khawr');
INSERT INTO `zone` VALUES (2673, 173, 'WK', 'Al Wakrah');
INSERT INTO `zone` VALUES (2674, 173, 'RN', 'Ar Rayyan');
INSERT INTO `zone` VALUES (2675, 173, 'JB', 'Jarayan al Batinah');
INSERT INTO `zone` VALUES (2676, 173, 'MS', 'Madinat ash Shamal');
INSERT INTO `zone` VALUES (2677, 173, 'UD', 'Umm Sa''id');
INSERT INTO `zone` VALUES (2678, 173, 'UL', 'Umm Salal');
INSERT INTO `zone` VALUES (2679, 175, 'AB', 'Alba');
INSERT INTO `zone` VALUES (2680, 175, 'AR', 'Arad');
INSERT INTO `zone` VALUES (2681, 175, 'AG', 'Arges');
INSERT INTO `zone` VALUES (2682, 175, 'BC', 'Bacau');
INSERT INTO `zone` VALUES (2683, 175, 'BH', 'Bihor');
INSERT INTO `zone` VALUES (2684, 175, 'BN', 'Bistrita-Nasaud');
INSERT INTO `zone` VALUES (2685, 175, 'BT', 'Botosani');
INSERT INTO `zone` VALUES (2686, 175, 'BV', 'Brasov');
INSERT INTO `zone` VALUES (2687, 175, 'BR', 'Braila');
INSERT INTO `zone` VALUES (2688, 175, 'B', 'Bucuresti');
INSERT INTO `zone` VALUES (2689, 175, 'BZ', 'Buzau');
INSERT INTO `zone` VALUES (2690, 175, 'CS', 'Caras-Severin');
INSERT INTO `zone` VALUES (2691, 175, 'CL', 'Calarasi');
INSERT INTO `zone` VALUES (2692, 175, 'CJ', 'Cluj');
INSERT INTO `zone` VALUES (2693, 175, 'CT', 'Constanta');
INSERT INTO `zone` VALUES (2694, 175, 'CV', 'Covasna');
INSERT INTO `zone` VALUES (2695, 175, 'DB', 'Dimbovita');
INSERT INTO `zone` VALUES (2696, 175, 'DJ', 'Dolj');
INSERT INTO `zone` VALUES (2697, 175, 'GL', 'Galati');
INSERT INTO `zone` VALUES (2698, 175, 'GR', 'Giurgiu');
INSERT INTO `zone` VALUES (2699, 175, 'GJ', 'Gorj');
INSERT INTO `zone` VALUES (2700, 175, 'HR', 'Harghita');
INSERT INTO `zone` VALUES (2701, 175, 'HD', 'Hunedoara');
INSERT INTO `zone` VALUES (2702, 175, 'IL', 'Ialomita');
INSERT INTO `zone` VALUES (2703, 175, 'IS', 'Iasi');
INSERT INTO `zone` VALUES (2704, 175, 'IF', 'Ilfov');
INSERT INTO `zone` VALUES (2705, 175, 'MM', 'Maramures');
INSERT INTO `zone` VALUES (2706, 175, 'MH', 'Mehedinti');
INSERT INTO `zone` VALUES (2707, 175, 'MS', 'Mures');
INSERT INTO `zone` VALUES (2708, 175, 'NT', 'Neamt');
INSERT INTO `zone` VALUES (2709, 175, 'OT', 'Olt');
INSERT INTO `zone` VALUES (2710, 175, 'PH', 'Prahova');
INSERT INTO `zone` VALUES (2711, 175, 'SM', 'Satu-Mare');
INSERT INTO `zone` VALUES (2712, 175, 'SJ', 'Salaj');
INSERT INTO `zone` VALUES (2713, 175, 'SB', 'Sibiu');
INSERT INTO `zone` VALUES (2714, 175, 'SV', 'Suceava');
INSERT INTO `zone` VALUES (2715, 175, 'TR', 'Teleorman');
INSERT INTO `zone` VALUES (2716, 175, 'TM', 'Timis');
INSERT INTO `zone` VALUES (2717, 175, 'TL', 'Tulcea');
INSERT INTO `zone` VALUES (2718, 175, 'VS', 'Vaslui');
INSERT INTO `zone` VALUES (2719, 175, 'VL', 'Valcea');
INSERT INTO `zone` VALUES (2720, 175, 'VN', 'Vrancea');
INSERT INTO `zone` VALUES (2721, 176, 'AB', 'Abakan');
INSERT INTO `zone` VALUES (2722, 176, 'AG', 'Aginskoye');
INSERT INTO `zone` VALUES (2723, 176, 'AN', 'Anadyr');
INSERT INTO `zone` VALUES (2724, 176, 'AR', 'Arkahangelsk');
INSERT INTO `zone` VALUES (2725, 176, 'AS', 'Astrakhan');
INSERT INTO `zone` VALUES (2726, 176, 'BA', 'Barnaul');
INSERT INTO `zone` VALUES (2727, 176, 'BE', 'Belgorod');
INSERT INTO `zone` VALUES (2728, 176, 'BI', 'Birobidzhan');
INSERT INTO `zone` VALUES (2729, 176, 'BL', 'Blagoveshchensk');
INSERT INTO `zone` VALUES (2730, 176, 'BR', 'Bryansk');
INSERT INTO `zone` VALUES (2731, 176, 'CH', 'Cheboksary');
INSERT INTO `zone` VALUES (2732, 176, 'CL', 'Chelyabinsk');
INSERT INTO `zone` VALUES (2733, 176, 'CR', 'Cherkessk');
INSERT INTO `zone` VALUES (2734, 176, 'CI', 'Chita');
INSERT INTO `zone` VALUES (2735, 176, 'DU', 'Dudinka');
INSERT INTO `zone` VALUES (2736, 176, 'EL', 'Elista');
INSERT INTO `zone` VALUES (2737, 176, 'GO', 'Gomo-Altaysk');
INSERT INTO `zone` VALUES (2738, 176, 'GA', 'Gorno-Altaysk');
INSERT INTO `zone` VALUES (2739, 176, 'GR', 'Groznyy');
INSERT INTO `zone` VALUES (2740, 176, 'IR', 'Irkutsk');
INSERT INTO `zone` VALUES (2741, 176, 'IV', 'Ivanovo');
INSERT INTO `zone` VALUES (2742, 176, 'IZ', 'Izhevsk');
INSERT INTO `zone` VALUES (2743, 176, 'KA', 'Kalinigrad');
INSERT INTO `zone` VALUES (2744, 176, 'KL', 'Kaluga');
INSERT INTO `zone` VALUES (2745, 176, 'KS', 'Kasnodar');
INSERT INTO `zone` VALUES (2746, 176, 'KZ', 'Kazan');
INSERT INTO `zone` VALUES (2747, 176, 'KE', 'Kemerovo');
INSERT INTO `zone` VALUES (2748, 176, 'KH', 'Khabarovsk');
INSERT INTO `zone` VALUES (2749, 176, 'KM', 'Khanty-Mansiysk');
INSERT INTO `zone` VALUES (2750, 176, 'KO', 'Kostroma');
INSERT INTO `zone` VALUES (2751, 176, 'KR', 'Krasnodar');
INSERT INTO `zone` VALUES (2752, 176, 'KN', 'Krasnoyarsk');
INSERT INTO `zone` VALUES (2753, 176, 'KU', 'Kudymkar');
INSERT INTO `zone` VALUES (2754, 176, 'KG', 'Kurgan');
INSERT INTO `zone` VALUES (2755, 176, 'KK', 'Kursk');
INSERT INTO `zone` VALUES (2756, 176, 'KY', 'Kyzyl');
INSERT INTO `zone` VALUES (2757, 176, 'LI', 'Lipetsk');
INSERT INTO `zone` VALUES (2758, 176, 'MA', 'Magadan');
INSERT INTO `zone` VALUES (2759, 176, 'MK', 'Makhachkala');
INSERT INTO `zone` VALUES (2760, 176, 'MY', 'Maykop');
INSERT INTO `zone` VALUES (2761, 176, 'MO', 'Moscow');
INSERT INTO `zone` VALUES (2762, 176, 'MU', 'Murmansk');
INSERT INTO `zone` VALUES (2763, 176, 'NA', 'Nalchik');
INSERT INTO `zone` VALUES (2764, 176, 'NR', 'Naryan Mar');
INSERT INTO `zone` VALUES (2765, 176, 'NZ', 'Nazran');
INSERT INTO `zone` VALUES (2766, 176, 'NI', 'Nizhniy Novgorod');
INSERT INTO `zone` VALUES (2767, 176, 'NO', 'Novgorod');
INSERT INTO `zone` VALUES (2768, 176, 'NV', 'Novosibirsk');
INSERT INTO `zone` VALUES (2769, 176, 'OM', 'Omsk');
INSERT INTO `zone` VALUES (2770, 176, 'OR', 'Orel');
INSERT INTO `zone` VALUES (2771, 176, 'OE', 'Orenburg');
INSERT INTO `zone` VALUES (2772, 176, 'PA', 'Palana');
INSERT INTO `zone` VALUES (2773, 176, 'PE', 'Penza');
INSERT INTO `zone` VALUES (2774, 176, 'PR', 'Perm');
INSERT INTO `zone` VALUES (2775, 176, 'PK', 'Petropavlovsk-Kamchatskiy');
INSERT INTO `zone` VALUES (2776, 176, 'PT', 'Petrozavodsk');
INSERT INTO `zone` VALUES (2777, 176, 'PS', 'Pskov');
INSERT INTO `zone` VALUES (2778, 176, 'RO', 'Rostov-na-Donu');
INSERT INTO `zone` VALUES (2779, 176, 'RY', 'Ryazan');
INSERT INTO `zone` VALUES (2780, 176, 'SL', 'Salekhard');
INSERT INTO `zone` VALUES (2781, 176, 'SA', 'Samara');
INSERT INTO `zone` VALUES (2782, 176, 'SR', 'Saransk');
INSERT INTO `zone` VALUES (2783, 176, 'SV', 'Saratov');
INSERT INTO `zone` VALUES (2784, 176, 'SM', 'Smolensk');
INSERT INTO `zone` VALUES (2785, 176, 'SP', 'St. Petersburg');
INSERT INTO `zone` VALUES (2786, 176, 'ST', 'Stavropol');
INSERT INTO `zone` VALUES (2787, 176, 'SY', 'Syktyvkar');
INSERT INTO `zone` VALUES (2788, 176, 'TA', 'Tambov');
INSERT INTO `zone` VALUES (2789, 176, 'TO', 'Tomsk');
INSERT INTO `zone` VALUES (2790, 176, 'TU', 'Tula');
INSERT INTO `zone` VALUES (2791, 176, 'TR', 'Tura');
INSERT INTO `zone` VALUES (2792, 176, 'TV', 'Tver');
INSERT INTO `zone` VALUES (2793, 176, 'TY', 'Tyumen');
INSERT INTO `zone` VALUES (2794, 176, 'UF', 'Ufa');
INSERT INTO `zone` VALUES (2795, 176, 'UL', 'Ul''yanovsk');
INSERT INTO `zone` VALUES (2796, 176, 'UU', 'Ulan-Ude');
INSERT INTO `zone` VALUES (2797, 176, 'US', 'Ust''-Ordynskiy');
INSERT INTO `zone` VALUES (2798, 176, 'VL', 'Vladikavkaz');
INSERT INTO `zone` VALUES (2799, 176, 'VA', 'Vladimir');
INSERT INTO `zone` VALUES (2800, 176, 'VV', 'Vladivostok');
INSERT INTO `zone` VALUES (2801, 176, 'VG', 'Volgograd');
INSERT INTO `zone` VALUES (2802, 176, 'VD', 'Vologda');
INSERT INTO `zone` VALUES (2803, 176, 'VO', 'Voronezh');
INSERT INTO `zone` VALUES (2804, 176, 'VY', 'Vyatka');
INSERT INTO `zone` VALUES (2805, 176, 'YA', 'Yakutsk');
INSERT INTO `zone` VALUES (2806, 176, 'YR', 'Yaroslavl');
INSERT INTO `zone` VALUES (2807, 176, 'YE', 'Yekaterinburg');
INSERT INTO `zone` VALUES (2808, 176, 'YO', 'Yoshkar-Ola');
INSERT INTO `zone` VALUES (2809, 177, 'BU', 'Butare');
INSERT INTO `zone` VALUES (2810, 177, 'BY', 'Byumba');
INSERT INTO `zone` VALUES (2811, 177, 'CY', 'Cyangugu');
INSERT INTO `zone` VALUES (2812, 177, 'GK', 'Gikongoro');
INSERT INTO `zone` VALUES (2813, 177, 'GS', 'Gisenyi');
INSERT INTO `zone` VALUES (2814, 177, 'GT', 'Gitarama');
INSERT INTO `zone` VALUES (2815, 177, 'KG', 'Kibungo');
INSERT INTO `zone` VALUES (2816, 177, 'KY', 'Kibuye');
INSERT INTO `zone` VALUES (2817, 177, 'KR', 'Kigali Rurale');
INSERT INTO `zone` VALUES (2818, 177, 'KV', 'Kigali-ville');
INSERT INTO `zone` VALUES (2819, 177, 'RU', 'Ruhengeri');
INSERT INTO `zone` VALUES (2820, 177, 'UM', 'Umutara');
INSERT INTO `zone` VALUES (2821, 178, 'CCN', 'Christ Church Nichola Town');
INSERT INTO `zone` VALUES (2822, 178, 'SAS', 'Saint Anne Sandy Point');
INSERT INTO `zone` VALUES (2823, 178, 'SGB', 'Saint George Basseterre');
INSERT INTO `zone` VALUES (2824, 178, 'SGG', 'Saint George Gingerland');
INSERT INTO `zone` VALUES (2825, 178, 'SJW', 'Saint James Windward');
INSERT INTO `zone` VALUES (2826, 178, 'SJC', 'Saint John Capesterre');
INSERT INTO `zone` VALUES (2827, 178, 'SJF', 'Saint John Figtree');
INSERT INTO `zone` VALUES (2828, 178, 'SMC', 'Saint Mary Cayon');
INSERT INTO `zone` VALUES (2829, 178, 'CAP', 'Saint Paul Capesterre');
INSERT INTO `zone` VALUES (2830, 178, 'CHA', 'Saint Paul Charlestown');
INSERT INTO `zone` VALUES (2831, 178, 'SPB', 'Saint Peter Basseterre');
INSERT INTO `zone` VALUES (2832, 178, 'STL', 'Saint Thomas Lowland');
INSERT INTO `zone` VALUES (2833, 178, 'STM', 'Saint Thomas Middle Island');
INSERT INTO `zone` VALUES (2834, 178, 'TPP', 'Trinity Palmetto Point');
INSERT INTO `zone` VALUES (2835, 179, 'AR', 'Anse-la-Raye');
INSERT INTO `zone` VALUES (2836, 179, 'CA', 'Castries');
INSERT INTO `zone` VALUES (2837, 179, 'CH', 'Choiseul');
INSERT INTO `zone` VALUES (2838, 179, 'DA', 'Dauphin');
INSERT INTO `zone` VALUES (2839, 179, 'DE', 'Dennery');
INSERT INTO `zone` VALUES (2840, 179, 'GI', 'Gros-Islet');
INSERT INTO `zone` VALUES (2841, 179, 'LA', 'Laborie');
INSERT INTO `zone` VALUES (2842, 179, 'MI', 'Micoud');
INSERT INTO `zone` VALUES (2843, 179, 'PR', 'Praslin');
INSERT INTO `zone` VALUES (2844, 179, 'SO', 'Soufriere');
INSERT INTO `zone` VALUES (2845, 179, 'VF', 'Vieux-Fort');
INSERT INTO `zone` VALUES (2846, 180, 'C', 'Charlotte');
INSERT INTO `zone` VALUES (2847, 180, 'R', 'Grenadines');
INSERT INTO `zone` VALUES (2848, 180, 'A', 'Saint Andrew');
INSERT INTO `zone` VALUES (2849, 180, 'D', 'Saint David');
INSERT INTO `zone` VALUES (2850, 180, 'G', 'Saint George');
INSERT INTO `zone` VALUES (2851, 180, 'P', 'Saint Patrick');
INSERT INTO `zone` VALUES (2852, 181, 'AN', 'A''ana');
INSERT INTO `zone` VALUES (2853, 181, 'AI', 'Aiga-i-le-Tai');
INSERT INTO `zone` VALUES (2854, 181, 'AT', 'Atua');
INSERT INTO `zone` VALUES (2855, 181, 'FA', 'Fa''asaleleaga');
INSERT INTO `zone` VALUES (2856, 181, 'GE', 'Gaga''emauga');
INSERT INTO `zone` VALUES (2857, 181, 'GF', 'Gagaifomauga');
INSERT INTO `zone` VALUES (2858, 181, 'PA', 'Palauli');
INSERT INTO `zone` VALUES (2859, 181, 'SA', 'Satupa''itea');
INSERT INTO `zone` VALUES (2860, 181, 'TU', 'Tuamasaga');
INSERT INTO `zone` VALUES (2861, 181, 'VF', 'Va''a-o-Fonoti');
INSERT INTO `zone` VALUES (2862, 181, 'VS', 'Vaisigano');
INSERT INTO `zone` VALUES (2863, 182, 'AC', 'Acquaviva');
INSERT INTO `zone` VALUES (2864, 182, 'BM', 'Borgo Maggiore');
INSERT INTO `zone` VALUES (2865, 182, 'CH', 'Chiesanuova');
INSERT INTO `zone` VALUES (2866, 182, 'DO', 'Domagnano');
INSERT INTO `zone` VALUES (2867, 182, 'FA', 'Faetano');
INSERT INTO `zone` VALUES (2868, 182, 'FI', 'Fiorentino');
INSERT INTO `zone` VALUES (2869, 182, 'MO', 'Montegiardino');
INSERT INTO `zone` VALUES (2870, 182, 'SM', 'Citta di San Marino');
INSERT INTO `zone` VALUES (2871, 182, 'SE', 'Serravalle');
INSERT INTO `zone` VALUES (2872, 183, 'S', 'Sao Tome');
INSERT INTO `zone` VALUES (2873, 183, 'P', 'Principe');
INSERT INTO `zone` VALUES (2874, 184, 'BH', 'Al Bahah');
INSERT INTO `zone` VALUES (2875, 184, 'HS', 'Al Hudud ash Shamaliyah');
INSERT INTO `zone` VALUES (2876, 184, 'JF', 'Al Jawf');
INSERT INTO `zone` VALUES (2877, 184, 'MD', 'Al Madinah');
INSERT INTO `zone` VALUES (2878, 184, 'QS', 'Al Qasim');
INSERT INTO `zone` VALUES (2879, 184, 'RD', 'Ar Riyad');
INSERT INTO `zone` VALUES (2880, 184, 'AQ', 'Ash Sharqiyah (Eastern)');
INSERT INTO `zone` VALUES (2881, 184, 'AS', '''Asir');
INSERT INTO `zone` VALUES (2882, 184, 'HL', 'Ha''il');
INSERT INTO `zone` VALUES (2883, 184, 'JZ', 'Jizan');
INSERT INTO `zone` VALUES (2884, 184, 'ML', 'Makkah');
INSERT INTO `zone` VALUES (2885, 184, 'NR', 'Najran');
INSERT INTO `zone` VALUES (2886, 184, 'TB', 'Tabuk');
INSERT INTO `zone` VALUES (2887, 185, 'DA', 'Dakar');
INSERT INTO `zone` VALUES (2888, 185, 'DI', 'Diourbel');
INSERT INTO `zone` VALUES (2889, 185, 'FA', 'Fatick');
INSERT INTO `zone` VALUES (2890, 185, 'KA', 'Kaolack');
INSERT INTO `zone` VALUES (2891, 185, 'KO', 'Kolda');
INSERT INTO `zone` VALUES (2892, 185, 'LO', 'Louga');
INSERT INTO `zone` VALUES (2893, 185, 'MA', 'Matam');
INSERT INTO `zone` VALUES (2894, 185, 'SL', 'Saint-Louis');
INSERT INTO `zone` VALUES (2895, 185, 'TA', 'Tambacounda');
INSERT INTO `zone` VALUES (2896, 185, 'TH', 'Thies');
INSERT INTO `zone` VALUES (2897, 185, 'ZI', 'Ziguinchor');
INSERT INTO `zone` VALUES (2898, 186, 'AP', 'Anse aux Pins');
INSERT INTO `zone` VALUES (2899, 186, 'AB', 'Anse Boileau');
INSERT INTO `zone` VALUES (2900, 186, 'AE', 'Anse Etoile');
INSERT INTO `zone` VALUES (2901, 186, 'AL', 'Anse Louis');
INSERT INTO `zone` VALUES (2902, 186, 'AR', 'Anse Royale');
INSERT INTO `zone` VALUES (2903, 186, 'BL', 'Baie Lazare');
INSERT INTO `zone` VALUES (2904, 186, 'BS', 'Baie Sainte Anne');
INSERT INTO `zone` VALUES (2905, 186, 'BV', 'Beau Vallon');
INSERT INTO `zone` VALUES (2906, 186, 'BA', 'Bel Air');
INSERT INTO `zone` VALUES (2907, 186, 'BO', 'Bel Ombre');
INSERT INTO `zone` VALUES (2908, 186, 'CA', 'Cascade');
INSERT INTO `zone` VALUES (2909, 186, 'GL', 'Glacis');
INSERT INTO `zone` VALUES (2910, 186, 'GM', 'Grand'' Anse (on Mahe)');
INSERT INTO `zone` VALUES (2911, 186, 'GP', 'Grand'' Anse (on Praslin)');
INSERT INTO `zone` VALUES (2912, 186, 'DG', 'La Digue');
INSERT INTO `zone` VALUES (2913, 186, 'RA', 'La Riviere Anglaise');
INSERT INTO `zone` VALUES (2914, 186, 'MB', 'Mont Buxton');
INSERT INTO `zone` VALUES (2915, 186, 'MF', 'Mont Fleuri');
INSERT INTO `zone` VALUES (2916, 186, 'PL', 'Plaisance');
INSERT INTO `zone` VALUES (2917, 186, 'PR', 'Pointe La Rue');
INSERT INTO `zone` VALUES (2918, 186, 'PG', 'Port Glaud');
INSERT INTO `zone` VALUES (2919, 186, 'SL', 'Saint Louis');
INSERT INTO `zone` VALUES (2920, 186, 'TA', 'Takamaka');
INSERT INTO `zone` VALUES (2921, 187, 'E', 'Eastern');
INSERT INTO `zone` VALUES (2922, 187, 'N', 'Northern');
INSERT INTO `zone` VALUES (2923, 187, 'S', 'Southern');
INSERT INTO `zone` VALUES (2924, 187, 'W', 'Western');
INSERT INTO `zone` VALUES (2925, 189, 'BA', 'Banskobystricky');
INSERT INTO `zone` VALUES (2926, 189, 'BR', 'Bratislavsky');
INSERT INTO `zone` VALUES (2927, 189, 'KO', 'Kosicky');
INSERT INTO `zone` VALUES (2928, 189, 'NI', 'Nitriansky');
INSERT INTO `zone` VALUES (2929, 189, 'PR', 'Presovsky');
INSERT INTO `zone` VALUES (2930, 189, 'TC', 'Trenciansky');
INSERT INTO `zone` VALUES (2931, 189, 'TV', 'Trnavsky');
INSERT INTO `zone` VALUES (2932, 189, 'ZI', 'Zilinsky');
INSERT INTO `zone` VALUES (2933, 191, 'CE', 'Central');
INSERT INTO `zone` VALUES (2934, 191, 'CH', 'Choiseul');
INSERT INTO `zone` VALUES (2935, 191, 'GC', 'Guadalcanal');
INSERT INTO `zone` VALUES (2936, 191, 'HO', 'Honiara');
INSERT INTO `zone` VALUES (2937, 191, 'IS', 'Isabel');
INSERT INTO `zone` VALUES (2938, 191, 'MK', 'Makira');
INSERT INTO `zone` VALUES (2939, 191, 'ML', 'Malaita');
INSERT INTO `zone` VALUES (2940, 191, 'RB', 'Rennell and Bellona');
INSERT INTO `zone` VALUES (2941, 191, 'TM', 'Temotu');
INSERT INTO `zone` VALUES (2942, 191, 'WE', 'Western');
INSERT INTO `zone` VALUES (2943, 192, 'AW', 'Awdal');
INSERT INTO `zone` VALUES (2944, 192, 'BK', 'Bakool');
INSERT INTO `zone` VALUES (2945, 192, 'BN', 'Banaadir');
INSERT INTO `zone` VALUES (2946, 192, 'BR', 'Bari');
INSERT INTO `zone` VALUES (2947, 192, 'BY', 'Bay');
INSERT INTO `zone` VALUES (2948, 192, 'GA', 'Galguduud');
INSERT INTO `zone` VALUES (2949, 192, 'GE', 'Gedo');
INSERT INTO `zone` VALUES (2950, 192, 'HI', 'Hiiraan');
INSERT INTO `zone` VALUES (2951, 192, 'JD', 'Jubbada Dhexe');
INSERT INTO `zone` VALUES (2952, 192, 'JH', 'Jubbada Hoose');
INSERT INTO `zone` VALUES (2953, 192, 'MU', 'Mudug');
INSERT INTO `zone` VALUES (2954, 192, 'NU', 'Nugaal');
INSERT INTO `zone` VALUES (2955, 192, 'SA', 'Sanaag');
INSERT INTO `zone` VALUES (2956, 192, 'SD', 'Shabeellaha Dhexe');
INSERT INTO `zone` VALUES (2957, 192, 'SH', 'Shabeellaha Hoose');
INSERT INTO `zone` VALUES (2958, 192, 'SL', 'Sool');
INSERT INTO `zone` VALUES (2959, 192, 'TO', 'Togdheer');
INSERT INTO `zone` VALUES (2960, 192, 'WG', 'Woqooyi Galbeed');
INSERT INTO `zone` VALUES (2961, 193, 'EC', 'Eastern Cape');
INSERT INTO `zone` VALUES (2962, 193, 'FS', 'Free State');
INSERT INTO `zone` VALUES (2963, 193, 'GT', 'Gauteng');
INSERT INTO `zone` VALUES (2964, 193, 'KN', 'KwaZulu-Natal');
INSERT INTO `zone` VALUES (2965, 193, 'LP', 'Limpopo');
INSERT INTO `zone` VALUES (2966, 193, 'MP', 'Mpumalanga');
INSERT INTO `zone` VALUES (2967, 193, 'NW', 'North West');
INSERT INTO `zone` VALUES (2968, 193, 'NC', 'Northern Cape');
INSERT INTO `zone` VALUES (2969, 193, 'WC', 'Western Cape');
INSERT INTO `zone` VALUES (2970, 195, 'CA', 'A CoruÃƒÆ’Ã‚Â±a');
INSERT INTO `zone` VALUES (2971, 195, 'AL', 'ÃƒÆ’Ã‚Âlava');
INSERT INTO `zone` VALUES (2972, 195, 'AB', 'Albacete');
INSERT INTO `zone` VALUES (2973, 195, 'AC', 'Alicante');
INSERT INTO `zone` VALUES (2974, 195, 'AM', 'Almeria');
INSERT INTO `zone` VALUES (2975, 195, 'AS', 'Asturias');
INSERT INTO `zone` VALUES (2976, 195, 'AV', 'ÃƒÆ’Ã‚Âvila');
INSERT INTO `zone` VALUES (2977, 195, 'BJ', 'Badajoz');
INSERT INTO `zone` VALUES (2978, 195, 'IB', 'Baleares');
INSERT INTO `zone` VALUES (2979, 195, 'BA', 'Barcelona');
INSERT INTO `zone` VALUES (2980, 195, 'BU', 'Burgos');
INSERT INTO `zone` VALUES (2981, 195, 'CC', 'CÃƒÆ’Ã‚Â¡ceres');
INSERT INTO `zone` VALUES (2982, 195, 'CZ', 'CÃƒÆ’Ã‚Â¡diz');
INSERT INTO `zone` VALUES (2983, 195, 'CT', 'Cantabria');
INSERT INTO `zone` VALUES (2984, 195, 'CL', 'CastellÃƒÆ’Ã‚Â³n');
INSERT INTO `zone` VALUES (2985, 195, 'CE', 'Ceuta');
INSERT INTO `zone` VALUES (2986, 195, 'CR', 'Ciudad Real');
INSERT INTO `zone` VALUES (2987, 195, 'CD', 'CÃƒÆ’Ã‚Â³rdoba');
INSERT INTO `zone` VALUES (2988, 195, 'CU', 'Cuenca');
INSERT INTO `zone` VALUES (2989, 195, 'GI', 'Girona');
INSERT INTO `zone` VALUES (2990, 195, 'GD', 'Granada');
INSERT INTO `zone` VALUES (2991, 195, 'GJ', 'Guadalajara');
INSERT INTO `zone` VALUES (2992, 195, 'GP', 'GuipÃƒÆ’Ã‚Âºzcoa');
INSERT INTO `zone` VALUES (2993, 195, 'HL', 'Huelva');
INSERT INTO `zone` VALUES (2994, 195, 'HS', 'Huesca');
INSERT INTO `zone` VALUES (2995, 195, 'JN', 'JaÃƒÆ’Ã‚Â©n');
INSERT INTO `zone` VALUES (2996, 195, 'RJ', 'La Rioja');
INSERT INTO `zone` VALUES (2997, 195, 'PM', 'Las Palmas');
INSERT INTO `zone` VALUES (2998, 195, 'LE', 'Leon');
INSERT INTO `zone` VALUES (2999, 195, 'LL', 'Lleida');
INSERT INTO `zone` VALUES (3000, 195, 'LG', 'Lugo');
INSERT INTO `zone` VALUES (3001, 195, 'MD', 'Madrid');
INSERT INTO `zone` VALUES (3002, 195, 'MA', 'Malaga');
INSERT INTO `zone` VALUES (3003, 195, 'ML', 'Melilla');
INSERT INTO `zone` VALUES (3004, 195, 'MU', 'Murcia');
INSERT INTO `zone` VALUES (3005, 195, 'NV', 'Navarra');
INSERT INTO `zone` VALUES (3006, 195, 'OU', 'Ourense');
INSERT INTO `zone` VALUES (3007, 195, 'PL', 'Palencia');
INSERT INTO `zone` VALUES (3008, 195, 'PO', 'Pontevedra');
INSERT INTO `zone` VALUES (3009, 195, 'SL', 'Salamanca');
INSERT INTO `zone` VALUES (3010, 195, 'SC', 'Santa Cruz de Tenerife');
INSERT INTO `zone` VALUES (3011, 195, 'SG', 'Segovia');
INSERT INTO `zone` VALUES (3012, 195, 'SV', 'Sevilla');
INSERT INTO `zone` VALUES (3013, 195, 'SO', 'Soria');
INSERT INTO `zone` VALUES (3014, 195, 'TA', 'Tarragona');
INSERT INTO `zone` VALUES (3015, 195, 'TE', 'Teruel');
INSERT INTO `zone` VALUES (3016, 195, 'TO', 'Toledo');
INSERT INTO `zone` VALUES (3017, 195, 'VC', 'Valencia');
INSERT INTO `zone` VALUES (3018, 195, 'VD', 'Valladolid');
INSERT INTO `zone` VALUES (3019, 195, 'VZ', 'Vizcaya');
INSERT INTO `zone` VALUES (3020, 195, 'ZM', 'Zamora');
INSERT INTO `zone` VALUES (3021, 195, 'ZR', 'Zaragoza');
INSERT INTO `zone` VALUES (3022, 196, 'CE', 'Central');
INSERT INTO `zone` VALUES (3023, 196, 'EA', 'Eastern');
INSERT INTO `zone` VALUES (3024, 196, 'NC', 'North Central');
INSERT INTO `zone` VALUES (3025, 196, 'NO', 'Northern');
INSERT INTO `zone` VALUES (3026, 196, 'NW', 'North Western');
INSERT INTO `zone` VALUES (3027, 196, 'SA', 'Sabaragamuwa');
INSERT INTO `zone` VALUES (3028, 196, 'SO', 'Southern');
INSERT INTO `zone` VALUES (3029, 196, 'UV', 'Uva');
INSERT INTO `zone` VALUES (3030, 196, 'WE', 'Western');
INSERT INTO `zone` VALUES (3031, 197, 'A', 'Ascension');
INSERT INTO `zone` VALUES (3032, 197, 'S', 'Saint Helena');
INSERT INTO `zone` VALUES (3033, 197, 'T', 'Tristan da Cunha');
INSERT INTO `zone` VALUES (3034, 199, 'ANL', 'A''ali an Nil');
INSERT INTO `zone` VALUES (3035, 199, 'BAM', 'Al Bahr al Ahmar');
INSERT INTO `zone` VALUES (3036, 199, 'BRT', 'Al Buhayrat');
INSERT INTO `zone` VALUES (3037, 199, 'JZR', 'Al Jazirah');
INSERT INTO `zone` VALUES (3038, 199, 'KRT', 'Al Khartum');
INSERT INTO `zone` VALUES (3039, 199, 'QDR', 'Al Qadarif');
INSERT INTO `zone` VALUES (3040, 199, 'WDH', 'Al Wahdah');
INSERT INTO `zone` VALUES (3041, 199, 'ANB', 'An Nil al Abyad');
INSERT INTO `zone` VALUES (3042, 199, 'ANZ', 'An Nil al Azraq');
INSERT INTO `zone` VALUES (3043, 199, 'ASH', 'Ash Shamaliyah');
INSERT INTO `zone` VALUES (3044, 199, 'BJA', 'Bahr al Jabal');
INSERT INTO `zone` VALUES (3045, 199, 'GIS', 'Gharb al Istiwa''iyah');
INSERT INTO `zone` VALUES (3046, 199, 'GBG', 'Gharb Bahr al Ghazal');
INSERT INTO `zone` VALUES (3047, 199, 'GDA', 'Gharb Darfur');
INSERT INTO `zone` VALUES (3048, 199, 'GKU', 'Gharb Kurdufan');
INSERT INTO `zone` VALUES (3049, 199, 'JDA', 'Janub Darfur');
INSERT INTO `zone` VALUES (3050, 199, 'JKU', 'Janub Kurdufan');
INSERT INTO `zone` VALUES (3051, 199, 'JQL', 'Junqali');
INSERT INTO `zone` VALUES (3052, 199, 'KSL', 'Kassala');
INSERT INTO `zone` VALUES (3053, 199, 'NNL', 'Nahr an Nil');
INSERT INTO `zone` VALUES (3054, 199, 'SBG', 'Shamal Bahr al Ghazal');
INSERT INTO `zone` VALUES (3055, 199, 'SDA', 'Shamal Darfur');
INSERT INTO `zone` VALUES (3056, 199, 'SKU', 'Shamal Kurdufan');
INSERT INTO `zone` VALUES (3057, 199, 'SIS', 'Sharq al Istiwa''iyah');
INSERT INTO `zone` VALUES (3058, 199, 'SNR', 'Sinnar');
INSERT INTO `zone` VALUES (3059, 199, 'WRB', 'Warab');
INSERT INTO `zone` VALUES (3060, 200, 'BR', 'Brokopondo');
INSERT INTO `zone` VALUES (3061, 200, 'CM', 'Commewijne');
INSERT INTO `zone` VALUES (3062, 200, 'CR', 'Coronie');
INSERT INTO `zone` VALUES (3063, 200, 'MA', 'Marowijne');
INSERT INTO `zone` VALUES (3064, 200, 'NI', 'Nickerie');
INSERT INTO `zone` VALUES (3065, 200, 'PA', 'Para');
INSERT INTO `zone` VALUES (3066, 200, 'PM', 'Paramaribo');
INSERT INTO `zone` VALUES (3067, 200, 'SA', 'Saramacca');
INSERT INTO `zone` VALUES (3068, 200, 'SI', 'Sipaliwini');
INSERT INTO `zone` VALUES (3069, 200, 'WA', 'Wanica');
INSERT INTO `zone` VALUES (3070, 202, 'H', 'Hhohho');
INSERT INTO `zone` VALUES (3071, 202, 'L', 'Lubombo');
INSERT INTO `zone` VALUES (3072, 202, 'M', 'Manzini');
INSERT INTO `zone` VALUES (3073, 202, 'S', 'Shishelweni');
INSERT INTO `zone` VALUES (3074, 203, 'K', 'Blekinge');
INSERT INTO `zone` VALUES (3075, 203, 'W', 'Dalama');
INSERT INTO `zone` VALUES (3076, 203, 'X', 'GÃƒÆ’Ã‚Â¤vleborg');
INSERT INTO `zone` VALUES (3077, 203, 'I', 'Gotland');
INSERT INTO `zone` VALUES (3078, 203, 'N', 'Halland');
INSERT INTO `zone` VALUES (3079, 203, 'Z', 'JÃƒÆ’Ã‚Â¤mtland');
INSERT INTO `zone` VALUES (3080, 203, 'F', 'JÃƒÆ’Ã‚Â¶nkping');
INSERT INTO `zone` VALUES (3081, 203, 'H', 'Kalmar');
INSERT INTO `zone` VALUES (3082, 203, 'G', 'Kronoberg');
INSERT INTO `zone` VALUES (3083, 203, 'BD', 'Norrbotten');
INSERT INTO `zone` VALUES (3084, 203, 'T', 'ÃƒÆ’Ã¢â‚¬â€œrebro');
INSERT INTO `zone` VALUES (3085, 203, 'E', 'ÃƒÆ’Ã¢â‚¬â€œstergÃƒÆ’Ã‚Â¶tland');
INSERT INTO `zone` VALUES (3086, 203, 'M', 'SkÃƒÆ’Ã‚Â¥ne');
INSERT INTO `zone` VALUES (3087, 203, 'D', 'SÃƒÆ’Ã‚Â¶dermanland');
INSERT INTO `zone` VALUES (3088, 203, 'AB', 'Stockholm');
INSERT INTO `zone` VALUES (3089, 203, 'C', 'Uppsala');
INSERT INTO `zone` VALUES (3090, 203, 'S', 'VÃƒÆ’Ã‚Â¤rmland');
INSERT INTO `zone` VALUES (3091, 203, 'AC', 'VÃƒÆ’Ã‚Â¤sterbotten');
INSERT INTO `zone` VALUES (3092, 203, 'Y', 'VÃƒÆ’Ã‚Â¤sternorrland');
INSERT INTO `zone` VALUES (3093, 203, 'U', 'VÃƒÆ’Ã‚Â¤stmanland');
INSERT INTO `zone` VALUES (3094, 203, 'O', 'VÃƒÆ’Ã‚Â¤stra GÃƒÆ’Ã‚Â¶taland');
INSERT INTO `zone` VALUES (3095, 204, 'AG', 'Aargau');
INSERT INTO `zone` VALUES (3096, 204, 'AR', 'Appenzell Ausserrhoden');
INSERT INTO `zone` VALUES (3097, 204, 'AI', 'Appenzell Innerrhoden');
INSERT INTO `zone` VALUES (3098, 204, 'BS', 'Basel-Stadt');
INSERT INTO `zone` VALUES (3099, 204, 'BL', 'Basel-Landschaft');
INSERT INTO `zone` VALUES (3100, 204, 'BE', 'Bern');
INSERT INTO `zone` VALUES (3101, 204, 'FR', 'Fribourg');
INSERT INTO `zone` VALUES (3102, 204, 'GE', 'GenÃƒÆ’Ã‚Â¨ve');
INSERT INTO `zone` VALUES (3103, 204, 'GL', 'Glarus');
INSERT INTO `zone` VALUES (3104, 204, 'GR', 'GraubÃƒÆ’Ã‚Â¼nden');
INSERT INTO `zone` VALUES (3105, 204, 'JU', 'Jura');
INSERT INTO `zone` VALUES (3106, 204, 'LU', 'Luzern');
INSERT INTO `zone` VALUES (3107, 204, 'NE', 'NeuchÃƒÆ’Ã‚Â¢tel');
INSERT INTO `zone` VALUES (3108, 204, 'NW', 'Nidwald');
INSERT INTO `zone` VALUES (3109, 204, 'OW', 'Obwald');
INSERT INTO `zone` VALUES (3110, 204, 'SG', 'St. Gallen');
INSERT INTO `zone` VALUES (3111, 204, 'SH', 'Schaffhausen');
INSERT INTO `zone` VALUES (3112, 204, 'SZ', 'Schwyz');
INSERT INTO `zone` VALUES (3113, 204, 'SO', 'Solothurn');
INSERT INTO `zone` VALUES (3114, 204, 'TG', 'Thurgau');
INSERT INTO `zone` VALUES (3115, 204, 'TI', 'Ticino');
INSERT INTO `zone` VALUES (3116, 204, 'UR', 'Uri');
INSERT INTO `zone` VALUES (3117, 204, 'VS', 'Valais');
INSERT INTO `zone` VALUES (3118, 204, 'VD', 'Vaud');
INSERT INTO `zone` VALUES (3119, 204, 'ZG', 'Zug');
INSERT INTO `zone` VALUES (3120, 204, 'ZH', 'ZÃƒÆ’Ã‚Â¼rich');
INSERT INTO `zone` VALUES (3121, 205, 'HA', 'Al Hasakah');
INSERT INTO `zone` VALUES (3122, 205, 'LA', 'Al Ladhiqiyah');
INSERT INTO `zone` VALUES (3123, 205, 'QU', 'Al Qunaytirah');
INSERT INTO `zone` VALUES (3124, 205, 'RQ', 'Ar Raqqah');
INSERT INTO `zone` VALUES (3125, 205, 'SU', 'As Suwayda');
INSERT INTO `zone` VALUES (3126, 205, 'DA', 'Dara');
INSERT INTO `zone` VALUES (3127, 205, 'DZ', 'Dayr az Zawr');
INSERT INTO `zone` VALUES (3128, 205, 'DI', 'Dimashq');
INSERT INTO `zone` VALUES (3129, 205, 'HL', 'Halab');
INSERT INTO `zone` VALUES (3130, 205, 'HM', 'Hamah');
INSERT INTO `zone` VALUES (3131, 205, 'HI', 'Hims');
INSERT INTO `zone` VALUES (3132, 205, 'ID', 'Idlib');
INSERT INTO `zone` VALUES (3133, 205, 'RD', 'Rif Dimashq');
INSERT INTO `zone` VALUES (3134, 205, 'TA', 'Tartus');
INSERT INTO `zone` VALUES (3135, 206, 'CH', 'Chang-hua');
INSERT INTO `zone` VALUES (3136, 206, 'CI', 'Chia-i');
INSERT INTO `zone` VALUES (3137, 206, 'HS', 'Hsin-chu');
INSERT INTO `zone` VALUES (3138, 206, 'HL', 'Hua-lien');
INSERT INTO `zone` VALUES (3139, 206, 'IL', 'I-lan');
INSERT INTO `zone` VALUES (3140, 206, 'KH', 'Kao-hsiung county');
INSERT INTO `zone` VALUES (3141, 206, 'KM', 'Kin-men');
INSERT INTO `zone` VALUES (3142, 206, 'LC', 'Lien-chiang');
INSERT INTO `zone` VALUES (3143, 206, 'ML', 'Miao-li');
INSERT INTO `zone` VALUES (3144, 206, 'NT', 'Nan-t''ou');
INSERT INTO `zone` VALUES (3145, 206, 'PH', 'P''eng-hu');
INSERT INTO `zone` VALUES (3146, 206, 'PT', 'P''ing-tung');
INSERT INTO `zone` VALUES (3147, 206, 'TG', 'T''ai-chung');
INSERT INTO `zone` VALUES (3148, 206, 'TA', 'T''ai-nan');
INSERT INTO `zone` VALUES (3149, 206, 'TP', 'T''ai-pei county');
INSERT INTO `zone` VALUES (3150, 206, 'TT', 'T''ai-tung');
INSERT INTO `zone` VALUES (3151, 206, 'TY', 'T''ao-yuan');
INSERT INTO `zone` VALUES (3152, 206, 'YL', 'Yun-lin');
INSERT INTO `zone` VALUES (3153, 206, 'CC', 'Chia-i city');
INSERT INTO `zone` VALUES (3154, 206, 'CL', 'Chi-lung');
INSERT INTO `zone` VALUES (3155, 206, 'HC', 'Hsin-chu');
INSERT INTO `zone` VALUES (3156, 206, 'TH', 'T''ai-chung');
INSERT INTO `zone` VALUES (3157, 206, 'TN', 'T''ai-nan');
INSERT INTO `zone` VALUES (3158, 206, 'KC', 'Kao-hsiung city');
INSERT INTO `zone` VALUES (3159, 206, 'TC', 'T''ai-pei city');
INSERT INTO `zone` VALUES (3160, 207, 'GB', 'Gorno-Badakhstan');
INSERT INTO `zone` VALUES (3161, 207, 'KT', 'Khatlon');
INSERT INTO `zone` VALUES (3162, 207, 'SU', 'Sughd');
INSERT INTO `zone` VALUES (3163, 208, 'AR', 'Arusha');
INSERT INTO `zone` VALUES (3164, 208, 'DS', 'Dar es Salaam');
INSERT INTO `zone` VALUES (3165, 208, 'DO', 'Dodoma');
INSERT INTO `zone` VALUES (3166, 208, 'IR', 'Iringa');
INSERT INTO `zone` VALUES (3167, 208, 'KA', 'Kagera');
INSERT INTO `zone` VALUES (3168, 208, 'KI', 'Kigoma');
INSERT INTO `zone` VALUES (3169, 208, 'KJ', 'Kilimanjaro');
INSERT INTO `zone` VALUES (3170, 208, 'LN', 'Lindi');
INSERT INTO `zone` VALUES (3171, 208, 'MY', 'Manyara');
INSERT INTO `zone` VALUES (3172, 208, 'MR', 'Mara');
INSERT INTO `zone` VALUES (3173, 208, 'MB', 'Mbeya');
INSERT INTO `zone` VALUES (3174, 208, 'MO', 'Morogoro');
INSERT INTO `zone` VALUES (3175, 208, 'MT', 'Mtwara');
INSERT INTO `zone` VALUES (3176, 208, 'MW', 'Mwanza');
INSERT INTO `zone` VALUES (3177, 208, 'PN', 'Pemba North');
INSERT INTO `zone` VALUES (3178, 208, 'PS', 'Pemba South');
INSERT INTO `zone` VALUES (3179, 208, 'PW', 'Pwani');
INSERT INTO `zone` VALUES (3180, 208, 'RK', 'Rukwa');
INSERT INTO `zone` VALUES (3181, 208, 'RV', 'Ruvuma');
INSERT INTO `zone` VALUES (3182, 208, 'SH', 'Shinyanga');
INSERT INTO `zone` VALUES (3183, 208, 'SI', 'Singida');
INSERT INTO `zone` VALUES (3184, 208, 'TB', 'Tabora');
INSERT INTO `zone` VALUES (3185, 208, 'TN', 'Tanga');
INSERT INTO `zone` VALUES (3186, 208, 'ZC', 'Zanzibar Central/South');
INSERT INTO `zone` VALUES (3187, 208, 'ZN', 'Zanzibar North');
INSERT INTO `zone` VALUES (3188, 208, 'ZU', 'Zanzibar Urban/West');
INSERT INTO `zone` VALUES (3189, 209, 'Amnat Charoen', 'Amnat Charoen');
INSERT INTO `zone` VALUES (3190, 209, 'Ang Thong', 'Ang Thong');
INSERT INTO `zone` VALUES (3191, 209, 'Ayutthaya', 'Ayutthaya');
INSERT INTO `zone` VALUES (3192, 209, 'Bangkok', 'Bangkok');
INSERT INTO `zone` VALUES (3193, 209, 'Buriram', 'Buriram');
INSERT INTO `zone` VALUES (3194, 209, 'Chachoengsao', 'Chachoengsao');
INSERT INTO `zone` VALUES (3195, 209, 'Chai Nat', 'Chai Nat');
INSERT INTO `zone` VALUES (3196, 209, 'Chaiyaphum', 'Chaiyaphum');
INSERT INTO `zone` VALUES (3197, 209, 'Chanthaburi', 'Chanthaburi');
INSERT INTO `zone` VALUES (3198, 209, 'Chiang Mai', 'Chiang Mai');
INSERT INTO `zone` VALUES (3199, 209, 'Chiang Rai', 'Chiang Rai');
INSERT INTO `zone` VALUES (3200, 209, 'Chon Buri', 'Chon Buri');
INSERT INTO `zone` VALUES (3201, 209, 'Chumphon', 'Chumphon');
INSERT INTO `zone` VALUES (3202, 209, 'Kalasin', 'Kalasin');
INSERT INTO `zone` VALUES (3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet');
INSERT INTO `zone` VALUES (3204, 209, 'Kanchanaburi', 'Kanchanaburi');
INSERT INTO `zone` VALUES (3205, 209, 'Khon Kaen', 'Khon Kaen');
INSERT INTO `zone` VALUES (3206, 209, 'Krabi', 'Krabi');
INSERT INTO `zone` VALUES (3207, 209, 'Lampang', 'Lampang');
INSERT INTO `zone` VALUES (3208, 209, 'Lamphun', 'Lamphun');
INSERT INTO `zone` VALUES (3209, 209, 'Loei', 'Loei');
INSERT INTO `zone` VALUES (3210, 209, 'Lop Buri', 'Lop Buri');
INSERT INTO `zone` VALUES (3211, 209, 'Mae Hong Son', 'Mae Hong Son');
INSERT INTO `zone` VALUES (3212, 209, 'Maha Sarakham', 'Maha Sarakham');
INSERT INTO `zone` VALUES (3213, 209, 'Mukdahan', 'Mukdahan');
INSERT INTO `zone` VALUES (3214, 209, 'Nakhon Nayok', 'Nakhon Nayok');
INSERT INTO `zone` VALUES (3215, 209, 'Nakhon Pathom', 'Nakhon Pathom');
INSERT INTO `zone` VALUES (3216, 209, 'Nakhon Phanom', 'Nakhon Phanom');
INSERT INTO `zone` VALUES (3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima');
INSERT INTO `zone` VALUES (3218, 209, 'Nakhon Sawan', 'Nakhon Sawan');
INSERT INTO `zone` VALUES (3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat');
INSERT INTO `zone` VALUES (3220, 209, 'Nan', 'Nan');
INSERT INTO `zone` VALUES (3221, 209, 'Narathiwat', 'Narathiwat');
INSERT INTO `zone` VALUES (3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu');
INSERT INTO `zone` VALUES (3223, 209, 'Nong Khai', 'Nong Khai');
INSERT INTO `zone` VALUES (3224, 209, 'Nonthaburi', 'Nonthaburi');
INSERT INTO `zone` VALUES (3225, 209, 'Pathum Thani', 'Pathum Thani');
INSERT INTO `zone` VALUES (3226, 209, 'Pattani', 'Pattani');
INSERT INTO `zone` VALUES (3227, 209, 'Phangnga', 'Phangnga');
INSERT INTO `zone` VALUES (3228, 209, 'Phatthalung', 'Phatthalung');
INSERT INTO `zone` VALUES (3229, 209, 'Phayao', 'Phayao');
INSERT INTO `zone` VALUES (3230, 209, 'Phetchabun', 'Phetchabun');
INSERT INTO `zone` VALUES (3231, 209, 'Phetchaburi', 'Phetchaburi');
INSERT INTO `zone` VALUES (3232, 209, 'Phichit', 'Phichit');
INSERT INTO `zone` VALUES (3233, 209, 'Phitsanulok', 'Phitsanulok');
INSERT INTO `zone` VALUES (3234, 209, 'Phrae', 'Phrae');
INSERT INTO `zone` VALUES (3235, 209, 'Phuket', 'Phuket');
INSERT INTO `zone` VALUES (3236, 209, 'Prachin Buri', 'Prachin Buri');
INSERT INTO `zone` VALUES (3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan');
INSERT INTO `zone` VALUES (3238, 209, 'Ranong', 'Ranong');
INSERT INTO `zone` VALUES (3239, 209, 'Ratchaburi', 'Ratchaburi');
INSERT INTO `zone` VALUES (3240, 209, 'Rayong', 'Rayong');
INSERT INTO `zone` VALUES (3241, 209, 'Roi Et', 'Roi Et');
INSERT INTO `zone` VALUES (3242, 209, 'Sa Kaeo', 'Sa Kaeo');
INSERT INTO `zone` VALUES (3243, 209, 'Sakon Nakhon', 'Sakon Nakhon');
INSERT INTO `zone` VALUES (3244, 209, 'Samut Prakan', 'Samut Prakan');
INSERT INTO `zone` VALUES (3245, 209, 'Samut Sakhon', 'Samut Sakhon');
INSERT INTO `zone` VALUES (3246, 209, 'Samut Songkhram', 'Samut Songkhram');
INSERT INTO `zone` VALUES (3247, 209, 'Sara Buri', 'Sara Buri');
INSERT INTO `zone` VALUES (3248, 209, 'Satun', 'Satun');
INSERT INTO `zone` VALUES (3249, 209, 'Sing Buri', 'Sing Buri');
INSERT INTO `zone` VALUES (3250, 209, 'Sisaket', 'Sisaket');
INSERT INTO `zone` VALUES (3251, 209, 'Songkhla', 'Songkhla');
INSERT INTO `zone` VALUES (3252, 209, 'Sukhothai', 'Sukhothai');
INSERT INTO `zone` VALUES (3253, 209, 'Suphan Buri', 'Suphan Buri');
INSERT INTO `zone` VALUES (3254, 209, 'Surat Thani', 'Surat Thani');
INSERT INTO `zone` VALUES (3255, 209, 'Surin', 'Surin');
INSERT INTO `zone` VALUES (3256, 209, 'Tak', 'Tak');
INSERT INTO `zone` VALUES (3257, 209, 'Trang', 'Trang');
INSERT INTO `zone` VALUES (3258, 209, 'Trat', 'Trat');
INSERT INTO `zone` VALUES (3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani');
INSERT INTO `zone` VALUES (3260, 209, 'Udon Thani', 'Udon Thani');
INSERT INTO `zone` VALUES (3261, 209, 'Uthai Thani', 'Uthai Thani');
INSERT INTO `zone` VALUES (3262, 209, 'Uttaradit', 'Uttaradit');
INSERT INTO `zone` VALUES (3263, 209, 'Yala', 'Yala');
INSERT INTO `zone` VALUES (3264, 209, 'Yasothon', 'Yasothon');
INSERT INTO `zone` VALUES (3265, 210, 'K', 'Kara');
INSERT INTO `zone` VALUES (3266, 210, 'P', 'Plateaux');
INSERT INTO `zone` VALUES (3267, 210, 'S', 'Savanes');
INSERT INTO `zone` VALUES (3268, 210, 'C', 'Centrale');
INSERT INTO `zone` VALUES (3269, 210, 'M', 'Maritime');
INSERT INTO `zone` VALUES (3270, 211, 'A', 'Atafu');
INSERT INTO `zone` VALUES (3271, 211, 'F', 'Fakaofo');
INSERT INTO `zone` VALUES (3272, 211, 'N', 'Nukunonu');
INSERT INTO `zone` VALUES (3273, 212, 'H', 'Ha''apai');
INSERT INTO `zone` VALUES (3274, 212, 'T', 'Tongatapu');
INSERT INTO `zone` VALUES (3275, 212, 'V', 'Vava''u');
INSERT INTO `zone` VALUES (3276, 213, 'CT', 'Couva/Tabaquite/Talparo');
INSERT INTO `zone` VALUES (3277, 213, 'DM', 'Diego Martin');
INSERT INTO `zone` VALUES (3278, 213, 'MR', 'Mayaro/Rio Claro');
INSERT INTO `zone` VALUES (3279, 213, 'PD', 'Penal/Debe');
INSERT INTO `zone` VALUES (3280, 213, 'PT', 'Princes Town');
INSERT INTO `zone` VALUES (3281, 213, 'SG', 'Sangre Grande');
INSERT INTO `zone` VALUES (3282, 213, 'SL', 'San Juan/Laventille');
INSERT INTO `zone` VALUES (3283, 213, 'SI', 'Siparia');
INSERT INTO `zone` VALUES (3284, 213, 'TP', 'Tunapuna/Piarco');
INSERT INTO `zone` VALUES (3285, 213, 'PS', 'Port of Spain');
INSERT INTO `zone` VALUES (3286, 213, 'SF', 'San Fernando');
INSERT INTO `zone` VALUES (3287, 213, 'AR', 'Arima');
INSERT INTO `zone` VALUES (3288, 213, 'PF', 'Point Fortin');
INSERT INTO `zone` VALUES (3289, 213, 'CH', 'Chaguanas');
INSERT INTO `zone` VALUES (3290, 213, 'TO', 'Tobago');
INSERT INTO `zone` VALUES (3291, 214, 'AR', 'Ariana');
INSERT INTO `zone` VALUES (3292, 214, 'BJ', 'Beja');
INSERT INTO `zone` VALUES (3293, 214, 'BA', 'Ben Arous');
INSERT INTO `zone` VALUES (3294, 214, 'BI', 'Bizerte');
INSERT INTO `zone` VALUES (3295, 214, 'GB', 'Gabes');
INSERT INTO `zone` VALUES (3296, 214, 'GF', 'Gafsa');
INSERT INTO `zone` VALUES (3297, 214, 'JE', 'Jendouba');
INSERT INTO `zone` VALUES (3298, 214, 'KR', 'Kairouan');
INSERT INTO `zone` VALUES (3299, 214, 'KS', 'Kasserine');
INSERT INTO `zone` VALUES (3300, 214, 'KB', 'Kebili');
INSERT INTO `zone` VALUES (3301, 214, 'KF', 'Kef');
INSERT INTO `zone` VALUES (3302, 214, 'MH', 'Mahdia');
INSERT INTO `zone` VALUES (3303, 214, 'MN', 'Manouba');
INSERT INTO `zone` VALUES (3304, 214, 'ME', 'Medenine');
INSERT INTO `zone` VALUES (3305, 214, 'MO', 'Monastir');
INSERT INTO `zone` VALUES (3306, 214, 'NA', 'Nabeul');
INSERT INTO `zone` VALUES (3307, 214, 'SF', 'Sfax');
INSERT INTO `zone` VALUES (3308, 214, 'SD', 'Sidi');
INSERT INTO `zone` VALUES (3309, 214, 'SL', 'Siliana');
INSERT INTO `zone` VALUES (3310, 214, 'SO', 'Sousse');
INSERT INTO `zone` VALUES (3311, 214, 'TA', 'Tataouine');
INSERT INTO `zone` VALUES (3312, 214, 'TO', 'Tozeur');
INSERT INTO `zone` VALUES (3313, 214, 'TU', 'Tunis');
INSERT INTO `zone` VALUES (3314, 214, 'ZA', 'Zaghouan');
INSERT INTO `zone` VALUES (3315, 215, 'ADA', 'Adana');
INSERT INTO `zone` VALUES (3316, 215, 'ADI', 'Adiyaman');
INSERT INTO `zone` VALUES (3317, 215, 'AFY', 'Afyonkarahisar');
INSERT INTO `zone` VALUES (3318, 215, 'AGR', 'Agri');
INSERT INTO `zone` VALUES (3319, 215, 'AKS', 'Aksaray');
INSERT INTO `zone` VALUES (3320, 215, 'AMA', 'Amasya');
INSERT INTO `zone` VALUES (3321, 215, 'ANK', 'Ankara');
INSERT INTO `zone` VALUES (3322, 215, 'ANT', 'Antalya');
INSERT INTO `zone` VALUES (3323, 215, 'ARD', 'Ardahan');
INSERT INTO `zone` VALUES (3324, 215, 'ART', 'Artvin');
INSERT INTO `zone` VALUES (3325, 215, 'AYI', 'Aydin');
INSERT INTO `zone` VALUES (3326, 215, 'BAL', 'Balikesir');
INSERT INTO `zone` VALUES (3327, 215, 'BAR', 'Bartin');
INSERT INTO `zone` VALUES (3328, 215, 'BAT', 'Batman');
INSERT INTO `zone` VALUES (3329, 215, 'BAY', 'Bayburt');
INSERT INTO `zone` VALUES (3330, 215, 'BIL', 'Bilecik');
INSERT INTO `zone` VALUES (3331, 215, 'BIN', 'Bingol');
INSERT INTO `zone` VALUES (3332, 215, 'BIT', 'Bitlis');
INSERT INTO `zone` VALUES (3333, 215, 'BOL', 'Bolu');
INSERT INTO `zone` VALUES (3334, 215, 'BRD', 'Burdur');
INSERT INTO `zone` VALUES (3335, 215, 'BRS', 'Bursa');
INSERT INTO `zone` VALUES (3336, 215, 'CKL', 'Canakkale');
INSERT INTO `zone` VALUES (3337, 215, 'CKR', 'Cankiri');
INSERT INTO `zone` VALUES (3338, 215, 'COR', 'Corum');
INSERT INTO `zone` VALUES (3339, 215, 'DEN', 'Denizli');
INSERT INTO `zone` VALUES (3340, 215, 'DIY', 'Diyarbakir');
INSERT INTO `zone` VALUES (3341, 215, 'DUZ', 'Duzce');
INSERT INTO `zone` VALUES (3342, 215, 'EDI', 'Edirne');
INSERT INTO `zone` VALUES (3343, 215, 'ELA', 'Elazig');
INSERT INTO `zone` VALUES (3344, 215, 'EZC', 'Erzincan');
INSERT INTO `zone` VALUES (3345, 215, 'EZR', 'Erzurum');
INSERT INTO `zone` VALUES (3346, 215, 'ESK', 'Eskisehir');
INSERT INTO `zone` VALUES (3347, 215, 'GAZ', 'Gaziantep');
INSERT INTO `zone` VALUES (3348, 215, 'GIR', 'Giresun');
INSERT INTO `zone` VALUES (3349, 215, 'GMS', 'Gumushane');
INSERT INTO `zone` VALUES (3350, 215, 'HKR', 'Hakkari');
INSERT INTO `zone` VALUES (3351, 215, 'HTY', 'Hatay');
INSERT INTO `zone` VALUES (3352, 215, 'IGD', 'Igdir');
INSERT INTO `zone` VALUES (3353, 215, 'ISP', 'Isparta');
INSERT INTO `zone` VALUES (3354, 215, 'IST', 'Istanbul');
INSERT INTO `zone` VALUES (3355, 215, 'IZM', 'Izmir');
INSERT INTO `zone` VALUES (3356, 215, 'KAH', 'Kahramanmaras');
INSERT INTO `zone` VALUES (3357, 215, 'KRB', 'Karabuk');
INSERT INTO `zone` VALUES (3358, 215, 'KRM', 'Karaman');
INSERT INTO `zone` VALUES (3359, 215, 'KRS', 'Kars');
INSERT INTO `zone` VALUES (3360, 215, 'KAS', 'Kastamonu');
INSERT INTO `zone` VALUES (3361, 215, 'KAY', 'Kayseri');
INSERT INTO `zone` VALUES (3362, 215, 'KLS', 'Kilis');
INSERT INTO `zone` VALUES (3363, 215, 'KRK', 'Kirikkale');
INSERT INTO `zone` VALUES (3364, 215, 'KLR', 'Kirklareli');
INSERT INTO `zone` VALUES (3365, 215, 'KRH', 'Kirsehir');
INSERT INTO `zone` VALUES (3366, 215, 'KOC', 'Kocaeli');
INSERT INTO `zone` VALUES (3367, 215, 'KON', 'Konya');
INSERT INTO `zone` VALUES (3368, 215, 'KUT', 'Kutahya');
INSERT INTO `zone` VALUES (3369, 215, 'MAL', 'Malatya');
INSERT INTO `zone` VALUES (3370, 215, 'MAN', 'Manisa');
INSERT INTO `zone` VALUES (3371, 215, 'MAR', 'Mardin');
INSERT INTO `zone` VALUES (3372, 215, 'MER', 'Mersin');
INSERT INTO `zone` VALUES (3373, 215, 'MUG', 'Mugla');
INSERT INTO `zone` VALUES (3374, 215, 'MUS', 'Mus');
INSERT INTO `zone` VALUES (3375, 215, 'NEV', 'Nevsehir');
INSERT INTO `zone` VALUES (3376, 215, 'NIG', 'Nigde');
INSERT INTO `zone` VALUES (3377, 215, 'ORD', 'Ordu');
INSERT INTO `zone` VALUES (3378, 215, 'OSM', 'Osmaniye');
INSERT INTO `zone` VALUES (3379, 215, 'RIZ', 'Rize');
INSERT INTO `zone` VALUES (3380, 215, 'SAK', 'Sakarya');
INSERT INTO `zone` VALUES (3381, 215, 'SAM', 'Samsun');
INSERT INTO `zone` VALUES (3382, 215, 'SAN', 'Sanliurfa');
INSERT INTO `zone` VALUES (3383, 215, 'SII', 'Siirt');
INSERT INTO `zone` VALUES (3384, 215, 'SIN', 'Sinop');
INSERT INTO `zone` VALUES (3385, 215, 'SIR', 'Sirnak');
INSERT INTO `zone` VALUES (3386, 215, 'SIV', 'Sivas');
INSERT INTO `zone` VALUES (3387, 215, 'TEL', 'Tekirdag');
INSERT INTO `zone` VALUES (3388, 215, 'TOK', 'Tokat');
INSERT INTO `zone` VALUES (3389, 215, 'TRA', 'Trabzon');
INSERT INTO `zone` VALUES (3390, 215, 'TUN', 'Tunceli');
INSERT INTO `zone` VALUES (3391, 215, 'USK', 'Usak');
INSERT INTO `zone` VALUES (3392, 215, 'VAN', 'Van');
INSERT INTO `zone` VALUES (3393, 215, 'YAL', 'Yalova');
INSERT INTO `zone` VALUES (3394, 215, 'YOZ', 'Yozgat');
INSERT INTO `zone` VALUES (3395, 215, 'ZON', 'Zonguldak');
INSERT INTO `zone` VALUES (3396, 216, 'A', 'Ahal Welayaty');
INSERT INTO `zone` VALUES (3397, 216, 'B', 'Balkan Welayaty');
INSERT INTO `zone` VALUES (3398, 216, 'D', 'Dashhowuz Welayaty');
INSERT INTO `zone` VALUES (3399, 216, 'L', 'Lebap Welayaty');
INSERT INTO `zone` VALUES (3400, 216, 'M', 'Mary Welayaty');
INSERT INTO `zone` VALUES (3401, 217, 'AC', 'Ambergris Cays');
INSERT INTO `zone` VALUES (3402, 217, 'DC', 'Dellis Cay');
INSERT INTO `zone` VALUES (3403, 217, 'FC', 'French Cay');
INSERT INTO `zone` VALUES (3404, 217, 'LW', 'Little Water Cay');
INSERT INTO `zone` VALUES (3405, 217, 'RC', 'Parrot Cay');
INSERT INTO `zone` VALUES (3406, 217, 'PN', 'Pine Cay');
INSERT INTO `zone` VALUES (3407, 217, 'SL', 'Salt Cay');
INSERT INTO `zone` VALUES (3408, 217, 'GT', 'Grand Turk');
INSERT INTO `zone` VALUES (3409, 217, 'SC', 'South Caicos');
INSERT INTO `zone` VALUES (3410, 217, 'EC', 'East Caicos');
INSERT INTO `zone` VALUES (3411, 217, 'MC', 'Middle Caicos');
INSERT INTO `zone` VALUES (3412, 217, 'NC', 'North Caicos');
INSERT INTO `zone` VALUES (3413, 217, 'PR', 'Providenciales');
INSERT INTO `zone` VALUES (3414, 217, 'WC', 'West Caicos');
INSERT INTO `zone` VALUES (3415, 218, 'NMG', 'Nanumanga');
INSERT INTO `zone` VALUES (3416, 218, 'NLK', 'Niulakita');
INSERT INTO `zone` VALUES (3417, 218, 'NTO', 'Niutao');
INSERT INTO `zone` VALUES (3418, 218, 'FUN', 'Funafuti');
INSERT INTO `zone` VALUES (3419, 218, 'NME', 'Nanumea');
INSERT INTO `zone` VALUES (3420, 218, 'NUI', 'Nui');
INSERT INTO `zone` VALUES (3421, 218, 'NFT', 'Nukufetau');
INSERT INTO `zone` VALUES (3422, 218, 'NLL', 'Nukulaelae');
INSERT INTO `zone` VALUES (3423, 218, 'VAI', 'Vaitupu');
INSERT INTO `zone` VALUES (3424, 219, 'KAL', 'Kalangala');
INSERT INTO `zone` VALUES (3425, 219, 'KMP', 'Kampala');
INSERT INTO `zone` VALUES (3426, 219, 'KAY', 'Kayunga');
INSERT INTO `zone` VALUES (3427, 219, 'KIB', 'Kiboga');
INSERT INTO `zone` VALUES (3428, 219, 'LUW', 'Luwero');
INSERT INTO `zone` VALUES (3429, 219, 'MAS', 'Masaka');
INSERT INTO `zone` VALUES (3430, 219, 'MPI', 'Mpigi');
INSERT INTO `zone` VALUES (3431, 219, 'MUB', 'Mubende');
INSERT INTO `zone` VALUES (3432, 219, 'MUK', 'Mukono');
INSERT INTO `zone` VALUES (3433, 219, 'NKS', 'Nakasongola');
INSERT INTO `zone` VALUES (3434, 219, 'RAK', 'Rakai');
INSERT INTO `zone` VALUES (3435, 219, 'SEM', 'Sembabule');
INSERT INTO `zone` VALUES (3436, 219, 'WAK', 'Wakiso');
INSERT INTO `zone` VALUES (3437, 219, 'BUG', 'Bugiri');
INSERT INTO `zone` VALUES (3438, 219, 'BUS', 'Busia');
INSERT INTO `zone` VALUES (3439, 219, 'IGA', 'Iganga');
INSERT INTO `zone` VALUES (3440, 219, 'JIN', 'Jinja');
INSERT INTO `zone` VALUES (3441, 219, 'KAB', 'Kaberamaido');
INSERT INTO `zone` VALUES (3442, 219, 'KML', 'Kamuli');
INSERT INTO `zone` VALUES (3443, 219, 'KPC', 'Kapchorwa');
INSERT INTO `zone` VALUES (3444, 219, 'KTK', 'Katakwi');
INSERT INTO `zone` VALUES (3445, 219, 'KUM', 'Kumi');
INSERT INTO `zone` VALUES (3446, 219, 'MAY', 'Mayuge');
INSERT INTO `zone` VALUES (3447, 219, 'MBA', 'Mbale');
INSERT INTO `zone` VALUES (3448, 219, 'PAL', 'Pallisa');
INSERT INTO `zone` VALUES (3449, 219, 'SIR', 'Sironko');
INSERT INTO `zone` VALUES (3450, 219, 'SOR', 'Soroti');
INSERT INTO `zone` VALUES (3451, 219, 'TOR', 'Tororo');
INSERT INTO `zone` VALUES (3452, 219, 'ADJ', 'Adjumani');
INSERT INTO `zone` VALUES (3453, 219, 'APC', 'Apac');
INSERT INTO `zone` VALUES (3454, 219, 'ARU', 'Arua');
INSERT INTO `zone` VALUES (3455, 219, 'GUL', 'Gulu');
INSERT INTO `zone` VALUES (3456, 219, 'KIT', 'Kitgum');
INSERT INTO `zone` VALUES (3457, 219, 'KOT', 'Kotido');
INSERT INTO `zone` VALUES (3458, 219, 'LIR', 'Lira');
INSERT INTO `zone` VALUES (3459, 219, 'MRT', 'Moroto');
INSERT INTO `zone` VALUES (3460, 219, 'MOY', 'Moyo');
INSERT INTO `zone` VALUES (3461, 219, 'NAK', 'Nakapiripirit');
INSERT INTO `zone` VALUES (3462, 219, 'NEB', 'Nebbi');
INSERT INTO `zone` VALUES (3463, 219, 'PAD', 'Pader');
INSERT INTO `zone` VALUES (3464, 219, 'YUM', 'Yumbe');
INSERT INTO `zone` VALUES (3465, 219, 'BUN', 'Bundibugyo');
INSERT INTO `zone` VALUES (3466, 219, 'BSH', 'Bushenyi');
INSERT INTO `zone` VALUES (3467, 219, 'HOI', 'Hoima');
INSERT INTO `zone` VALUES (3468, 219, 'KBL', 'Kabale');
INSERT INTO `zone` VALUES (3469, 219, 'KAR', 'Kabarole');
INSERT INTO `zone` VALUES (3470, 219, 'KAM', 'Kamwenge');
INSERT INTO `zone` VALUES (3471, 219, 'KAN', 'Kanungu');
INSERT INTO `zone` VALUES (3472, 219, 'KAS', 'Kasese');
INSERT INTO `zone` VALUES (3473, 219, 'KBA', 'Kibaale');
INSERT INTO `zone` VALUES (3474, 219, 'KIS', 'Kisoro');
INSERT INTO `zone` VALUES (3475, 219, 'KYE', 'Kyenjojo');
INSERT INTO `zone` VALUES (3476, 219, 'MSN', 'Masindi');
INSERT INTO `zone` VALUES (3477, 219, 'MBR', 'Mbarara');
INSERT INTO `zone` VALUES (3478, 219, 'NTU', 'Ntungamo');
INSERT INTO `zone` VALUES (3479, 219, 'RUK', 'Rukungiri');
INSERT INTO `zone` VALUES (3480, 220, 'CK', 'Cherkasy');
INSERT INTO `zone` VALUES (3481, 220, 'CH', 'Chernihiv');
INSERT INTO `zone` VALUES (3482, 220, 'CV', 'Chernivtsi');
INSERT INTO `zone` VALUES (3483, 220, 'CR', 'Crimea');
INSERT INTO `zone` VALUES (3484, 220, 'DN', 'Dnipropetrovs''k');
INSERT INTO `zone` VALUES (3485, 220, 'DO', 'Donets''k');
INSERT INTO `zone` VALUES (3486, 220, 'IV', 'Ivano-Frankivs''k');
INSERT INTO `zone` VALUES (3487, 220, 'KL', 'Kharkiv Kherson');
INSERT INTO `zone` VALUES (3488, 220, 'KM', 'Khmel''nyts''kyy');
INSERT INTO `zone` VALUES (3489, 220, 'KR', 'Kirovohrad');
INSERT INTO `zone` VALUES (3490, 220, 'KV', 'Kiev');
INSERT INTO `zone` VALUES (3491, 220, 'KY', 'Kyyiv');
INSERT INTO `zone` VALUES (3492, 220, 'LU', 'Luhans''k');
INSERT INTO `zone` VALUES (3493, 220, 'LV', 'L''viv');
INSERT INTO `zone` VALUES (3494, 220, 'MY', 'Mykolayiv');
INSERT INTO `zone` VALUES (3495, 220, 'OD', 'Odesa');
INSERT INTO `zone` VALUES (3496, 220, 'PO', 'Poltava');
INSERT INTO `zone` VALUES (3497, 220, 'RI', 'Rivne');
INSERT INTO `zone` VALUES (3498, 220, 'SE', 'Sevastopol');
INSERT INTO `zone` VALUES (3499, 220, 'SU', 'Sumy');
INSERT INTO `zone` VALUES (3500, 220, 'TE', 'Ternopil''');
INSERT INTO `zone` VALUES (3501, 220, 'VI', 'Vinnytsya');
INSERT INTO `zone` VALUES (3502, 220, 'VO', 'Volyn''');
INSERT INTO `zone` VALUES (3503, 220, 'ZK', 'Zakarpattya');
INSERT INTO `zone` VALUES (3504, 220, 'ZA', 'Zaporizhzhya');
INSERT INTO `zone` VALUES (3505, 220, 'ZH', 'Zhytomyr');
INSERT INTO `zone` VALUES (3506, 221, 'AZ', 'Abu Zaby');
INSERT INTO `zone` VALUES (3507, 221, 'AJ', '''Ajman');
INSERT INTO `zone` VALUES (3508, 221, 'FU', 'Al Fujayrah');
INSERT INTO `zone` VALUES (3509, 221, 'SH', 'Ash Shariqah');
INSERT INTO `zone` VALUES (3510, 221, 'DU', 'Dubayy');
INSERT INTO `zone` VALUES (3511, 221, 'RK', 'R''as al Khaymah');
INSERT INTO `zone` VALUES (3512, 221, 'UQ', 'Umm al Qaywayn');
INSERT INTO `zone` VALUES (3513, 222, 'ABN', 'Aberdeen');
INSERT INTO `zone` VALUES (3514, 222, 'ABNS', 'Aberdeenshire');
INSERT INTO `zone` VALUES (3515, 222, 'ANG', 'Anglesey');
INSERT INTO `zone` VALUES (3516, 222, 'AGS', 'Angus');
INSERT INTO `zone` VALUES (3517, 222, 'ARY', 'Argyll and Bute');
INSERT INTO `zone` VALUES (3518, 222, 'BEDS', 'Bedfordshire');
INSERT INTO `zone` VALUES (3519, 222, 'BERKS', 'Berkshire');
INSERT INTO `zone` VALUES (3520, 222, 'BLA', 'Blaenau Gwent');
INSERT INTO `zone` VALUES (3521, 222, 'BRI', 'Bridgend');
INSERT INTO `zone` VALUES (3522, 222, 'BSTL', 'Bristol');
INSERT INTO `zone` VALUES (3523, 222, 'BUCKS', 'Buckinghamshire');
INSERT INTO `zone` VALUES (3524, 222, 'CAE', 'Caerphilly');
INSERT INTO `zone` VALUES (3525, 222, 'CAMBS', 'Cambridgeshire');
INSERT INTO `zone` VALUES (3526, 222, 'CDF', 'Cardiff');
INSERT INTO `zone` VALUES (3527, 222, 'CARM', 'Carmarthenshire');
INSERT INTO `zone` VALUES (3528, 222, 'CDGN', 'Ceredigion');
INSERT INTO `zone` VALUES (3529, 222, 'CHES', 'Cheshire');
INSERT INTO `zone` VALUES (3530, 222, 'CLACK', 'Clackmannanshire');
INSERT INTO `zone` VALUES (3531, 222, 'CON', 'Conwy');
INSERT INTO `zone` VALUES (3532, 222, 'CORN', 'Cornwall');
INSERT INTO `zone` VALUES (3533, 222, 'DNBG', 'Denbighshire');
INSERT INTO `zone` VALUES (3534, 222, 'DERBY', 'Derbyshire');
INSERT INTO `zone` VALUES (3535, 222, 'DVN', 'Devon');
INSERT INTO `zone` VALUES (3536, 222, 'DOR', 'Dorset');
INSERT INTO `zone` VALUES (3537, 222, 'DGL', 'Dumfries and Galloway');
INSERT INTO `zone` VALUES (3538, 222, 'DUND', 'Dundee');
INSERT INTO `zone` VALUES (3539, 222, 'DHM', 'Durham');
INSERT INTO `zone` VALUES (3540, 222, 'ARYE', 'East Ayrshire');
INSERT INTO `zone` VALUES (3541, 222, 'DUNBE', 'East Dunbartonshire');
INSERT INTO `zone` VALUES (3542, 222, 'LOTE', 'East Lothian');
INSERT INTO `zone` VALUES (3543, 222, 'RENE', 'East Renfrewshire');
INSERT INTO `zone` VALUES (3544, 222, 'ERYS', 'East Riding of Yorkshire');
INSERT INTO `zone` VALUES (3545, 222, 'SXE', 'East Sussex');
INSERT INTO `zone` VALUES (3546, 222, 'EDIN', 'Edinburgh');
INSERT INTO `zone` VALUES (3547, 222, 'ESX', 'Essex');
INSERT INTO `zone` VALUES (3548, 222, 'FALK', 'Falkirk');
INSERT INTO `zone` VALUES (3549, 222, 'FFE', 'Fife');
INSERT INTO `zone` VALUES (3550, 222, 'FLINT', 'Flintshire');
INSERT INTO `zone` VALUES (3551, 222, 'GLAS', 'Glasgow');
INSERT INTO `zone` VALUES (3552, 222, 'GLOS', 'Gloucestershire');
INSERT INTO `zone` VALUES (3553, 222, 'LDN', 'Greater London');
INSERT INTO `zone` VALUES (3554, 222, 'MCH', 'Greater Manchester');
INSERT INTO `zone` VALUES (3555, 222, 'GDD', 'Gwynedd');
INSERT INTO `zone` VALUES (3556, 222, 'HANTS', 'Hampshire');
INSERT INTO `zone` VALUES (3557, 222, 'HWR', 'Herefordshire');
INSERT INTO `zone` VALUES (3558, 222, 'HERTS', 'Hertfordshire');
INSERT INTO `zone` VALUES (3559, 222, 'HLD', 'Highlands');
INSERT INTO `zone` VALUES (3560, 222, 'IVER', 'Inverclyde');
INSERT INTO `zone` VALUES (3561, 222, 'IOW', 'Isle of Wight');
INSERT INTO `zone` VALUES (3562, 222, 'KNT', 'Kent');
INSERT INTO `zone` VALUES (3563, 222, 'LANCS', 'Lancashire');
INSERT INTO `zone` VALUES (3564, 222, 'LEICS', 'Leicestershire');
INSERT INTO `zone` VALUES (3565, 222, 'LINCS', 'Lincolnshire');
INSERT INTO `zone` VALUES (3566, 222, 'MSY', 'Merseyside');
INSERT INTO `zone` VALUES (3567, 222, 'MERT', 'Merthyr Tydfil');
INSERT INTO `zone` VALUES (3568, 222, 'MLOT', 'Midlothian');
INSERT INTO `zone` VALUES (3569, 222, 'MMOUTH', 'Monmouthshire');
INSERT INTO `zone` VALUES (3570, 222, 'MORAY', 'Moray');
INSERT INTO `zone` VALUES (3571, 222, 'NPRTAL', 'Neath Port Talbot');
INSERT INTO `zone` VALUES (3572, 222, 'NEWPT', 'Newport');
INSERT INTO `zone` VALUES (3573, 222, 'NOR', 'Norfolk');
INSERT INTO `zone` VALUES (3574, 222, 'ARYN', 'North Ayrshire');
INSERT INTO `zone` VALUES (3575, 222, 'LANN', 'North Lanarkshire');
INSERT INTO `zone` VALUES (3576, 222, 'YSN', 'North Yorkshire');
INSERT INTO `zone` VALUES (3577, 222, 'NHM', 'Northamptonshire');
INSERT INTO `zone` VALUES (3578, 222, 'NLD', 'Northumberland');
INSERT INTO `zone` VALUES (3579, 222, 'NOT', 'Nottinghamshire');
INSERT INTO `zone` VALUES (3580, 222, 'ORK', 'Orkney Islands');
INSERT INTO `zone` VALUES (3581, 222, 'OFE', 'Oxfordshire');
INSERT INTO `zone` VALUES (3582, 222, 'PEM', 'Pembrokeshire');
INSERT INTO `zone` VALUES (3583, 222, 'PERTH', 'Perth and Kinross');
INSERT INTO `zone` VALUES (3584, 222, 'PWS', 'Powys');
INSERT INTO `zone` VALUES (3585, 222, 'REN', 'Renfrewshire');
INSERT INTO `zone` VALUES (3586, 222, 'RHON', 'Rhondda Cynon Taff');
INSERT INTO `zone` VALUES (3587, 222, 'RUT', 'Rutland');
INSERT INTO `zone` VALUES (3588, 222, 'BOR', 'Scottish Borders');
INSERT INTO `zone` VALUES (3589, 222, 'SHET', 'Shetland Islands');
INSERT INTO `zone` VALUES (3590, 222, 'SPE', 'Shropshire');
INSERT INTO `zone` VALUES (3591, 222, 'SOM', 'Somerset');
INSERT INTO `zone` VALUES (3592, 222, 'ARYS', 'South Ayrshire');
INSERT INTO `zone` VALUES (3593, 222, 'LANS', 'South Lanarkshire');
INSERT INTO `zone` VALUES (3594, 222, 'YSS', 'South Yorkshire');
INSERT INTO `zone` VALUES (3595, 222, 'SFD', 'Staffordshire');
INSERT INTO `zone` VALUES (3596, 222, 'STIR', 'Stirling');
INSERT INTO `zone` VALUES (3597, 222, 'SFK', 'Suffolk');
INSERT INTO `zone` VALUES (3598, 222, 'SRY', 'Surrey');
INSERT INTO `zone` VALUES (3599, 222, 'SWAN', 'Swansea');
INSERT INTO `zone` VALUES (3600, 222, 'TORF', 'Torfaen');
INSERT INTO `zone` VALUES (3601, 222, 'TWR', 'Tyne and Wear');
INSERT INTO `zone` VALUES (3602, 222, 'VGLAM', 'Vale of Glamorgan');
INSERT INTO `zone` VALUES (3603, 222, 'WARKS', 'Warwickshire');
INSERT INTO `zone` VALUES (3604, 222, 'WDUN', 'West Dunbartonshire');
INSERT INTO `zone` VALUES (3605, 222, 'WLOT', 'West Lothian');
INSERT INTO `zone` VALUES (3606, 222, 'WMD', 'West Midlands');
INSERT INTO `zone` VALUES (3607, 222, 'SXW', 'West Sussex');
INSERT INTO `zone` VALUES (3608, 222, 'YSW', 'West Yorkshire');
INSERT INTO `zone` VALUES (3609, 222, 'WIL', 'Western Isles');
INSERT INTO `zone` VALUES (3610, 222, 'WLT', 'Wiltshire');
INSERT INTO `zone` VALUES (3611, 222, 'WORCS', 'Worcestershire');
INSERT INTO `zone` VALUES (3612, 222, 'WRX', 'Wrexham');
INSERT INTO `zone` VALUES (3613, 223, 'AL', 'Alabama');
INSERT INTO `zone` VALUES (3614, 223, 'AK', 'Alaska');
INSERT INTO `zone` VALUES (3615, 223, 'AS', 'American Samoa');
INSERT INTO `zone` VALUES (3616, 223, 'AZ', 'Arizona');
INSERT INTO `zone` VALUES (3617, 223, 'AR', 'Arkansas');
INSERT INTO `zone` VALUES (3618, 223, 'AF', 'Armed Forces Africa');
INSERT INTO `zone` VALUES (3619, 223, 'AA', 'Armed Forces Americas');
INSERT INTO `zone` VALUES (3620, 223, 'AC', 'Armed Forces Canada');
INSERT INTO `zone` VALUES (3621, 223, 'AE', 'Armed Forces Europe');
INSERT INTO `zone` VALUES (3622, 223, 'AM', 'Armed Forces Middle East');
INSERT INTO `zone` VALUES (3623, 223, 'AP', 'Armed Forces Pacific');
INSERT INTO `zone` VALUES (3624, 223, 'CA', 'California');
INSERT INTO `zone` VALUES (3625, 223, 'CO', 'Colorado');
INSERT INTO `zone` VALUES (3626, 223, 'CT', 'Connecticut');
INSERT INTO `zone` VALUES (3627, 223, 'DE', 'Delaware');
INSERT INTO `zone` VALUES (3628, 223, 'DC', 'District of Columbia');
INSERT INTO `zone` VALUES (3629, 223, 'FM', 'Federated States Of Micronesia');
INSERT INTO `zone` VALUES (3630, 223, 'FL', 'Florida');
INSERT INTO `zone` VALUES (3631, 223, 'GA', 'Georgia');
INSERT INTO `zone` VALUES (3632, 223, 'GU', 'Guam');
INSERT INTO `zone` VALUES (3633, 223, 'HI', 'Hawaii');
INSERT INTO `zone` VALUES (3634, 223, 'ID', 'Idaho');
INSERT INTO `zone` VALUES (3635, 223, 'IL', 'Illinois');
INSERT INTO `zone` VALUES (3636, 223, 'IN', 'Indiana');
INSERT INTO `zone` VALUES (3637, 223, 'IA', 'Iowa');
INSERT INTO `zone` VALUES (3638, 223, 'KS', 'Kansas');
INSERT INTO `zone` VALUES (3639, 223, 'KY', 'Kentucky');
INSERT INTO `zone` VALUES (3640, 223, 'LA', 'Louisiana');
INSERT INTO `zone` VALUES (3641, 223, 'ME', 'Maine');
INSERT INTO `zone` VALUES (3642, 223, 'MH', 'Marshall Islands');
INSERT INTO `zone` VALUES (3643, 223, 'MD', 'Maryland');
INSERT INTO `zone` VALUES (3644, 223, 'MA', 'Massachusetts');
INSERT INTO `zone` VALUES (3645, 223, 'MI', 'Michigan');
INSERT INTO `zone` VALUES (3646, 223, 'MN', 'Minnesota');
INSERT INTO `zone` VALUES (3647, 223, 'MS', 'Mississippi');
INSERT INTO `zone` VALUES (3648, 223, 'MO', 'Missouri');
INSERT INTO `zone` VALUES (3649, 223, 'MT', 'Montana');
INSERT INTO `zone` VALUES (3650, 223, 'NE', 'Nebraska');
INSERT INTO `zone` VALUES (3651, 223, 'NV', 'Nevada');
INSERT INTO `zone` VALUES (3652, 223, 'NH', 'New Hampshire');
INSERT INTO `zone` VALUES (3653, 223, 'NJ', 'New Jersey');
INSERT INTO `zone` VALUES (3654, 223, 'NM', 'New Mexico');
INSERT INTO `zone` VALUES (3655, 223, 'NY', 'New York');
INSERT INTO `zone` VALUES (3656, 223, 'NC', 'North Carolina');
INSERT INTO `zone` VALUES (3657, 223, 'ND', 'North Dakota');
INSERT INTO `zone` VALUES (3658, 223, 'MP', 'Northern Mariana Islands');
INSERT INTO `zone` VALUES (3659, 223, 'OH', 'Ohio');
INSERT INTO `zone` VALUES (3660, 223, 'OK', 'Oklahoma');
INSERT INTO `zone` VALUES (3661, 223, 'OR', 'Oregon');
INSERT INTO `zone` VALUES (3662, 223, 'PW', 'Palau');
INSERT INTO `zone` VALUES (3663, 223, 'PA', 'Pennsylvania');
INSERT INTO `zone` VALUES (3664, 223, 'PR', 'Puerto Rico');
INSERT INTO `zone` VALUES (3665, 223, 'RI', 'Rhode Island');
INSERT INTO `zone` VALUES (3666, 223, 'SC', 'South Carolina');
INSERT INTO `zone` VALUES (3667, 223, 'SD', 'South Dakota');
INSERT INTO `zone` VALUES (3668, 223, 'TN', 'Tennessee');
INSERT INTO `zone` VALUES (3669, 223, 'TX', 'Texas');
INSERT INTO `zone` VALUES (3670, 223, 'UT', 'Utah');
INSERT INTO `zone` VALUES (3671, 223, 'VT', 'Vermont');
INSERT INTO `zone` VALUES (3672, 223, 'VI', 'Virgin Islands');
INSERT INTO `zone` VALUES (3673, 223, 'VA', 'Virginia');
INSERT INTO `zone` VALUES (3674, 223, 'WA', 'Washington');
INSERT INTO `zone` VALUES (3675, 223, 'WV', 'West Virginia');
INSERT INTO `zone` VALUES (3676, 223, 'WI', 'Wisconsin');
INSERT INTO `zone` VALUES (3677, 223, 'WY', 'Wyoming');
INSERT INTO `zone` VALUES (3678, 224, 'BI', 'Baker Island');
INSERT INTO `zone` VALUES (3679, 224, 'HI', 'Howland Island');
INSERT INTO `zone` VALUES (3680, 224, 'JI', 'Jarvis Island');
INSERT INTO `zone` VALUES (3681, 224, 'JA', 'Johnston Atoll');
INSERT INTO `zone` VALUES (3682, 224, 'KR', 'Kingman Reef');
INSERT INTO `zone` VALUES (3683, 224, 'MA', 'Midway Atoll');
INSERT INTO `zone` VALUES (3684, 224, 'NI', 'Navassa Island');
INSERT INTO `zone` VALUES (3685, 224, 'PA', 'Palmyra Atoll');
INSERT INTO `zone` VALUES (3686, 224, 'WI', 'Wake Island');
INSERT INTO `zone` VALUES (3687, 225, 'AR', 'Artigas');
INSERT INTO `zone` VALUES (3688, 225, 'CA', 'Canelones');
INSERT INTO `zone` VALUES (3689, 225, 'CL', 'Cerro Largo');
INSERT INTO `zone` VALUES (3690, 225, 'CO', 'Colonia');
INSERT INTO `zone` VALUES (3691, 225, 'DU', 'Durazno');
INSERT INTO `zone` VALUES (3692, 225, 'FS', 'Flores');
INSERT INTO `zone` VALUES (3693, 225, 'FA', 'Florida');
INSERT INTO `zone` VALUES (3694, 225, 'LA', 'Lavalleja');
INSERT INTO `zone` VALUES (3695, 225, 'MA', 'Maldonado');
INSERT INTO `zone` VALUES (3696, 225, 'MO', 'Montevideo');
INSERT INTO `zone` VALUES (3697, 225, 'PA', 'Paysandu');
INSERT INTO `zone` VALUES (3698, 225, 'RN', 'Rio Negro');
INSERT INTO `zone` VALUES (3699, 225, 'RV', 'Rivera');
INSERT INTO `zone` VALUES (3700, 225, 'RO', 'Rocha');
INSERT INTO `zone` VALUES (3701, 225, 'SL', 'Salto');
INSERT INTO `zone` VALUES (3702, 225, 'SJ', 'San Jose');
INSERT INTO `zone` VALUES (3703, 225, 'SO', 'Soriano');
INSERT INTO `zone` VALUES (3704, 225, 'TA', 'Tacuarembo');
INSERT INTO `zone` VALUES (3705, 225, 'TT', 'Treinta y Tres');
INSERT INTO `zone` VALUES (3706, 226, 'AN', 'Andijon');
INSERT INTO `zone` VALUES (3707, 226, 'BU', 'Buxoro');
INSERT INTO `zone` VALUES (3708, 226, 'FA', 'Farg''ona');
INSERT INTO `zone` VALUES (3709, 226, 'JI', 'Jizzax');
INSERT INTO `zone` VALUES (3710, 226, 'NG', 'Namangan');
INSERT INTO `zone` VALUES (3711, 226, 'NW', 'Navoiy');
INSERT INTO `zone` VALUES (3712, 226, 'QA', 'Qashqadaryo');
INSERT INTO `zone` VALUES (3713, 226, 'QR', 'Qoraqalpog''iston Republikasi');
INSERT INTO `zone` VALUES (3714, 226, 'SA', 'Samarqand');
INSERT INTO `zone` VALUES (3715, 226, 'SI', 'Sirdaryo');
INSERT INTO `zone` VALUES (3716, 226, 'SU', 'Surxondaryo');
INSERT INTO `zone` VALUES (3717, 226, 'TK', 'Toshkent City');
INSERT INTO `zone` VALUES (3718, 226, 'TO', 'Toshkent Region');
INSERT INTO `zone` VALUES (3719, 226, 'XO', 'Xorazm');
INSERT INTO `zone` VALUES (3720, 227, 'MA', 'Malampa');
INSERT INTO `zone` VALUES (3721, 227, 'PE', 'Penama');
INSERT INTO `zone` VALUES (3722, 227, 'SA', 'Sanma');
INSERT INTO `zone` VALUES (3723, 227, 'SH', 'Shefa');
INSERT INTO `zone` VALUES (3724, 227, 'TA', 'Tafea');
INSERT INTO `zone` VALUES (3725, 227, 'TO', 'Torba');
INSERT INTO `zone` VALUES (3726, 229, 'AM', 'Amazonas');
INSERT INTO `zone` VALUES (3727, 229, 'AN', 'Anzoategui');
INSERT INTO `zone` VALUES (3728, 229, 'AP', 'Apure');
INSERT INTO `zone` VALUES (3729, 229, 'AR', 'Aragua');
INSERT INTO `zone` VALUES (3730, 229, 'BA', 'Barinas');
INSERT INTO `zone` VALUES (3731, 229, 'BO', 'Bolivar');
INSERT INTO `zone` VALUES (3732, 229, 'CA', 'Carabobo');
INSERT INTO `zone` VALUES (3733, 229, 'CO', 'Cojedes');
INSERT INTO `zone` VALUES (3734, 229, 'DA', 'Delta Amacuro');
INSERT INTO `zone` VALUES (3735, 229, 'DF', 'Dependencias Federales');
INSERT INTO `zone` VALUES (3736, 229, 'DI', 'Distrito Federal');
INSERT INTO `zone` VALUES (3737, 229, 'FA', 'Falcon');
INSERT INTO `zone` VALUES (3738, 229, 'GU', 'Guarico');
INSERT INTO `zone` VALUES (3739, 229, 'LA', 'Lara');
INSERT INTO `zone` VALUES (3740, 229, 'ME', 'Merida');
INSERT INTO `zone` VALUES (3741, 229, 'MI', 'Miranda');
INSERT INTO `zone` VALUES (3742, 229, 'MO', 'Monagas');
INSERT INTO `zone` VALUES (3743, 229, 'NE', 'Nueva Esparta');
INSERT INTO `zone` VALUES (3744, 229, 'PO', 'Portuguesa');
INSERT INTO `zone` VALUES (3745, 229, 'SU', 'Sucre');
INSERT INTO `zone` VALUES (3746, 229, 'TA', 'Tachira');
INSERT INTO `zone` VALUES (3747, 229, 'TR', 'Trujillo');
INSERT INTO `zone` VALUES (3748, 229, 'VA', 'Vargas');
INSERT INTO `zone` VALUES (3749, 229, 'YA', 'Yaracuy');
INSERT INTO `zone` VALUES (3750, 229, 'ZU', 'Zulia');
INSERT INTO `zone` VALUES (3751, 230, 'AG', 'An Giang');
INSERT INTO `zone` VALUES (3752, 230, 'BG', 'Bac Giang');
INSERT INTO `zone` VALUES (3753, 230, 'BK', 'Bac Kan');
INSERT INTO `zone` VALUES (3754, 230, 'BL', 'Bac Lieu');
INSERT INTO `zone` VALUES (3755, 230, 'BC', 'Bac Ninh');
INSERT INTO `zone` VALUES (3756, 230, 'BR', 'Ba Ria-Vung Tau');
INSERT INTO `zone` VALUES (3757, 230, 'BN', 'Ben Tre');
INSERT INTO `zone` VALUES (3758, 230, 'BH', 'Binh Dinh');
INSERT INTO `zone` VALUES (3759, 230, 'BU', 'Binh Duong');
INSERT INTO `zone` VALUES (3760, 230, 'BP', 'Binh Phuoc');
INSERT INTO `zone` VALUES (3761, 230, 'BT', 'Binh Thuan');
INSERT INTO `zone` VALUES (3762, 230, 'CM', 'Ca Mau');
INSERT INTO `zone` VALUES (3763, 230, 'CT', 'Can Tho');
INSERT INTO `zone` VALUES (3764, 230, 'CB', 'Cao Bang');
INSERT INTO `zone` VALUES (3765, 230, 'DL', 'Dak Lak');
INSERT INTO `zone` VALUES (3766, 230, 'DG', 'Dak Nong');
INSERT INTO `zone` VALUES (3767, 230, 'DN', 'Da Nang');
INSERT INTO `zone` VALUES (3768, 230, 'DB', 'Dien Bien');
INSERT INTO `zone` VALUES (3769, 230, 'DI', 'Dong Nai');
INSERT INTO `zone` VALUES (3770, 230, 'DT', 'Dong Thap');
INSERT INTO `zone` VALUES (3771, 230, 'GL', 'Gia Lai');
INSERT INTO `zone` VALUES (3772, 230, 'HG', 'Ha Giang');
INSERT INTO `zone` VALUES (3773, 230, 'HD', 'Hai Duong');
INSERT INTO `zone` VALUES (3774, 230, 'HP', 'Hai Phong');
INSERT INTO `zone` VALUES (3775, 230, 'HM', 'Ha Nam');
INSERT INTO `zone` VALUES (3776, 230, 'HI', 'Ha Noi');
INSERT INTO `zone` VALUES (3777, 230, 'HT', 'Ha Tay');
INSERT INTO `zone` VALUES (3778, 230, 'HH', 'Ha Tinh');
INSERT INTO `zone` VALUES (3779, 230, 'HB', 'Hoa Binh');
INSERT INTO `zone` VALUES (3780, 230, 'HC', 'Ho Chi Minh');
INSERT INTO `zone` VALUES (3781, 230, 'HU', 'Hau Giang');
INSERT INTO `zone` VALUES (3782, 230, 'HY', 'Hung Yen');
INSERT INTO `zone` VALUES (3783, 232, 'C', 'Saint Croix');
INSERT INTO `zone` VALUES (3784, 232, 'J', 'Saint John');
INSERT INTO `zone` VALUES (3785, 232, 'T', 'Saint Thomas');
INSERT INTO `zone` VALUES (3786, 233, 'A', 'Alo');
INSERT INTO `zone` VALUES (3787, 233, 'S', 'Sigave');
INSERT INTO `zone` VALUES (3788, 233, 'W', 'Wallis');
INSERT INTO `zone` VALUES (3789, 235, 'AB', 'Abyan');
INSERT INTO `zone` VALUES (3790, 235, 'AD', 'Adan');
INSERT INTO `zone` VALUES (3791, 235, 'AM', 'Amran');
INSERT INTO `zone` VALUES (3792, 235, 'BA', 'Al Bayda');
INSERT INTO `zone` VALUES (3793, 235, 'DA', 'Ad Dali');
INSERT INTO `zone` VALUES (3794, 235, 'DH', 'Dhamar');
INSERT INTO `zone` VALUES (3795, 235, 'HD', 'Hadramawt');
INSERT INTO `zone` VALUES (3796, 235, 'HJ', 'Hajjah');
INSERT INTO `zone` VALUES (3797, 235, 'HU', 'Al Hudaydah');
INSERT INTO `zone` VALUES (3798, 235, 'IB', 'Ibb');
INSERT INTO `zone` VALUES (3799, 235, 'JA', 'Al Jawf');
INSERT INTO `zone` VALUES (3800, 235, 'LA', 'Lahij');
INSERT INTO `zone` VALUES (3801, 235, 'MA', 'Ma''rib');
INSERT INTO `zone` VALUES (3802, 235, 'MR', 'Al Mahrah');
INSERT INTO `zone` VALUES (3803, 235, 'MW', 'Al Mahwit');
INSERT INTO `zone` VALUES (3804, 235, 'SD', 'Sa''dah');
INSERT INTO `zone` VALUES (3805, 235, 'SN', 'San''a');
INSERT INTO `zone` VALUES (3806, 235, 'SH', 'Shabwah');
INSERT INTO `zone` VALUES (3807, 235, 'TA', 'Ta''izz');
INSERT INTO `zone` VALUES (3808, 236, 'KOS', 'Kosovo');
INSERT INTO `zone` VALUES (3809, 236, 'MON', 'Montenegro');
INSERT INTO `zone` VALUES (3810, 236, 'SER', 'Serbia');
INSERT INTO `zone` VALUES (3811, 236, 'VOJ', 'Vojvodina');
INSERT INTO `zone` VALUES (3812, 237, 'BC', 'Bas-Congo');
INSERT INTO `zone` VALUES (3813, 237, 'BN', 'Bandundu');
INSERT INTO `zone` VALUES (3814, 237, 'EQ', 'Equateur');
INSERT INTO `zone` VALUES (3815, 237, 'KA', 'Katanga');
INSERT INTO `zone` VALUES (3816, 237, 'KE', 'Kasai-Oriental');
INSERT INTO `zone` VALUES (3817, 237, 'KN', 'Kinshasa');
INSERT INTO `zone` VALUES (3818, 237, 'KW', 'Kasai-Occidental');
INSERT INTO `zone` VALUES (3819, 237, 'MA', 'Maniema');
INSERT INTO `zone` VALUES (3820, 237, 'NK', 'Nord-Kivu');
INSERT INTO `zone` VALUES (3821, 237, 'OR', 'Orientale');
INSERT INTO `zone` VALUES (3822, 237, 'SK', 'Sud-Kivu');
INSERT INTO `zone` VALUES (3823, 238, 'CE', 'Central');
INSERT INTO `zone` VALUES (3824, 238, 'CB', 'Copperbelt');
INSERT INTO `zone` VALUES (3825, 238, 'EA', 'Eastern');
INSERT INTO `zone` VALUES (3826, 238, 'LP', 'Luapula');
INSERT INTO `zone` VALUES (3827, 238, 'LK', 'Lusaka');
INSERT INTO `zone` VALUES (3828, 238, 'NO', 'Northern');
INSERT INTO `zone` VALUES (3829, 238, 'NW', 'North-Western');
INSERT INTO `zone` VALUES (3830, 238, 'SO', 'Southern');
INSERT INTO `zone` VALUES (3831, 238, 'WE', 'Western');
INSERT INTO `zone` VALUES (3832, 239, 'BU', 'Bulawayo');
INSERT INTO `zone` VALUES (3833, 239, 'HA', 'Harare');
INSERT INTO `zone` VALUES (3834, 239, 'ML', 'Manicaland');
INSERT INTO `zone` VALUES (3835, 239, 'MC', 'Mashonaland Central');
INSERT INTO `zone` VALUES (3836, 239, 'ME', 'Mashonaland East');
INSERT INTO `zone` VALUES (3837, 239, 'MW', 'Mashonaland West');
INSERT INTO `zone` VALUES (3838, 239, 'MV', 'Masvingo');
INSERT INTO `zone` VALUES (3839, 239, 'MN', 'Matabeleland North');
INSERT INTO `zone` VALUES (3840, 239, 'MS', 'Matabeleland South');
INSERT INTO `zone` VALUES (3841, 239, 'MD', 'Midlands');
