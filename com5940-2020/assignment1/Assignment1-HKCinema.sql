-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2020 at 03:07 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `HKCinema`
--

CREATE TABLE `HKCinema` (
  `影院名稱` varchar(25) NOT NULL,
  `院線` varchar(11) NOT NULL,
  `電話` varchar(9) DEFAULT NULL,
  `官網` varchar(70) NOT NULL,
  `地區` varchar(2) NOT NULL,
  `行政分區` varchar(4) NOT NULL,
  `地址` varchar(46) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HKCinema`
--

INSERT INTO `HKCinema` (`影院名稱`, `院線`, `電話`, `官網`, `地區`, `行政分區`, `地址`) VALUES
('AMC Pacific Place', 'AMC', '2265-8933', 'http://www.amccinemas.com.hk/', '港島', '中西區', '金鐘 金鐘道88號 太古廣場L1'),
('CGV Cinemas D2 Place', 'CGV院線', '1544-1122', 'https://cgv.com.hk/', '九龍', '深水埗區', '荔枝角 長順街15號 D2 Place 二期 10-11樓'),
('Cinema City Candy Park', 'Cinema City', '2360-0910', 'http://www.cinemacity.com.hk/tc/site/cinemainfo/5', '新界', '荃灣區', '荃灣 愉景新城 第一層 1036號舖'),
('Cinema City JP', 'Cinema City', '2360-0910', 'http://www.cinemacity.com.hk/tc/site/cinemaInfo/3', '港島', '灣仔區', '銅鑼灣 百德新街22-36號 翡翠明珠廣場'),
('Cinema City Victoria', 'Cinema City', '2360-0910', 'http://www.cinemacity.com.hk/tc/site/cinemaInfo/4', '港島', '灣仔區', '銅鑼灣 糖街2-8號 地下'),
('Cinema City 朗豪坊', 'Cinema City', '2360-0910', 'http://www.cinemacity.com.hk/tc/site/cinemaInfo/1', '九龍', '油尖旺區', '旺角 亞皆老街8號 朗豪坊商場 8至11樓'),
('Cinema City 柴灣', 'Cinema City', '2360-0910', 'http://www.cinemacity.com.hk/tc/site/cinemaInfo/2', '港島', '東區', '柴灣 柴灣道333號 永利中心 地下至4樓'),
('L Cinema', '獨立', '2209-4916', 'https://www.facebook.com/L-Cinema-Shau-Kei-Wan-463814693803369', '港島', '東區', '筲箕灣 望隆街 銀河廣場二樓'),
('Lumen Cinema', '獨立', '2638-1826', 'https://www.facebook.com/lumencinemahk/', '新界', '葵青區', '葵涌 打磚坪街1至25號 寶星中心 地下'),
('MCL Festival Grand Cinema', 'MCL戲院', '2237-1992', 'http://www.mclcinema.com/MCLCinema.aspx?ci=012&visLang=1', '九龍', '深水埗區', '九龍塘 達之路80號 又一城 UG層'),
('MCL MOVIE TOWN 新城市廣場', 'MCL戲院', NULL, 'http://www.mclcinema.com/MCLCinema.aspx?ci=014&visLang=1', '新界', '沙田區', '沙田 新城市廣場第1期 L1-L3樓層'),
('MCL STAR Cinema', 'MCL戲院', '2706-9800', 'http://www.mclcinema.com/MCLCinema.aspx?ci=009&visLang=1', '新界', '西貢區', '將軍澳 唐賢街9號 PopCorn 1樓'),
('MCL 康怡戲院', 'MCL戲院', '2513-8028', 'http://www.mclcinema.com/MCLCinema.aspx?ci=006&visLang=1', '港島', '東區', '鰂魚涌 康山道2號 康怡廣場南座 4樓'),
('MCL 德福戲院', 'MCL戲院', '2759-2248', 'http://www.mclcinema.com/MCLCinema.aspx?ci=005&visLang=1', '九龍', '觀塘區', '九龍塘 偉業街33號 德福花園 平台'),
('MCL 新都城戲院', 'MCL戲院', '3194-5179', 'http://www.mclcinema.com/MCLCinema.aspx?ci=002&visLang=1', '新界', '西貢區', '將軍澳 欣景路8號 新都城2期 地下'),
('MCL 海怡戲院', 'MCL戲院', '2180-7326', 'http://www.mclcinema.com/MCLCinema.aspx?ci=011&visLang=1', '港島', '南區', '鴨脷洲 海怡路18A 海怡半島商場東翼 4樓'),
('MCL 皇室戲院', 'MCL戲院', '2129-0148', 'http://www.mclcinema.com/MCLCinema.aspx?ci=003&visLang=1', '港島', '灣仔區', '銅鑼灣 告士打道311號 皇室堡 4樓'),
('MCL 長沙灣戲院', 'MCL戲院', NULL, 'http://www.mclcinema.com/MCLCinema.aspx?ci=015&visLang=1', '九龍', '深水埗區', '長沙灣 長沙灣道680號 麗新商業中心 G56,G58-59號舖'),
('UA Cine Moko', 'UA Cinemas', '3918-5888', 'http://www.uacinemas.com.hk/chi/cinema/2', '九龍', '油尖旺區', '旺角 太子道西193號 新世紀廣場 L4樓'),
('UA Cine Times', 'UA Cinemas', '3918-5888', 'http://www.uacinemas.com.hk/chi/cinema/1', '港島', '灣仔區', '銅鑼灣 勿地臣街1號 時代廣場 13樓'),
('UA K11 Art House', 'UA Cinemas', '3918-5888', 'https://www.uacinemas.com.hk/chi/cinema/1101', '九龍', '油尖旺區', '尖沙咀 梳士巴利道18號 Victoria Dockside K11 MUSEA L4 樓層'),
('UA MegaBox', 'UA Cinemas', '3918-5888', 'http://www.uacinemas.com.hk/chi/cinema/7', '九龍', '觀塘區', '九龍灣 宏照道38號 企業廣場5期 MegaBox 11樓'),
('UA 東薈城', 'UA Cinemas', '3918-5888', 'https://www.uacinemas.com.hk/chi/cinema/1201', '新界', '離島區', '東涌 達東路18-20號 東薈城名店倉 6樓'),
('UA 淘大', 'UA Cinemas', '3918-5888', 'https://www.uacinemas.com.hk/chi/cinema/16', '九龍', '觀塘區', '九龍灣 牛頭角道77號 淘大商場三期'),
('UA 青衣城', 'UA Cinemas', '3918-5888', 'https://www.uacinemas.com.hk/chi/cinema/15', '新界', '葵青區', '青衣 青衣城2期 3樓'),
('元朗戲院', '獨立', '2317-6666', 'http://www.cityline.com/cinema/yuenlong_cinema.do', '新界', '元朗區', '元朗 炮仗坊8號'),
('凱都戲院', '新寶院線', '2459-4857', 'http://www.theatre.com.hk/tc/cinema/hyland_theatre', '新界', '屯門區', '屯門 鄉事會路136號'),
('嘉禾 StagE', '嘉禾院線', '3842-0888', 'https://www.goldenharvest.com/cinema/schedule?cinema_id=10', '新界', '屯門區', '屯門 屯門市廣場1期 3樓 3201鋪'),
('嘉禾 the sky 奧海城', '嘉禾院線', '2359-3166', 'https://www.theskycinema.com/', '九龍', '油尖旺區', '西九龍 海庭道18號 奧海城2期 1樓'),
('嘉禾 V WALK', '嘉禾院線', '2790-2100', 'https://www.goldenharvest.com/cinema/schedule?cinema_id=12', '九龍', '深水埗區', '西九龍 港鐵南昌站 V Walk L2-139A'),
('嘉禾 啟德', '嘉禾院線', '2615-2333', 'https://www.goldenharvest.com/cinema/schedule?cinema_id=11', '九龍', '黃大仙區', '新蒲崗 寧遠街9號 越秀廣場 3樓'),
('嘉禾 海運戲院', '嘉禾院線', '2377-2100', 'https://www.goldenharvest.com/cinema/schedule?cinema_id=3', '九龍', '油尖旺區', '尖沙咀 廣東道3號 海運大廈 地下'),
('嘉禾 粉嶺', '嘉禾院線', NULL, 'https://www.goldenharvest.com/cinema/schedule?cinema_id=6', '新界', '北區', '粉嶺 名都商場 8-9號舖'),
('嘉禾 黃埔', '嘉禾院線', '2622-6688', 'https://www.goldenharvest.com/cinema/schedule?cinema_id=8', '九龍', '九龍城區', '紅磡 德安街7號 黃埔花園第8期 黃埔廣場 2樓'),
('寶石戲院', '獨立', '2365-7116', 'https://www.facebook.com/LuxTheatre', '九龍', '九龍城區', '‎紅磡 寶其利街2號J'),
('巴黎倫敦紐約米蘭戲院', '华懋电影院线', '2452-2123', 'https://www.cel-cinemas.com/', '新界', '屯門區', '屯門 河傍街 康麗花園 地下'),
('新光Super3三面廳影院', '獨立', '2563-2959', 'https://www.cityline.com/cinema/super3.do', '港島', '東區', '北角 英皇道423號'),
('新寶戲院', '新寶院線', '2332-1939', 'http://www.theatre.com.hk/tc/cinema/newport_theatre', '九龍', '油尖旺區', '旺角 豉油街60號'),
('星影匯', '獨立', NULL, 'http://www.metroplex.com.hk/', '九龍', '觀塘區', '九龍灣 展貿徑1號 九龍灣國際展貿中心E-Max 地下'),
('百老匯 MOViE MOViE Cityplaza', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/MOViE-MOViE-Cityplaza/info', '港島', '東區', '太古 太古城道18號 太古城中心1期 5樓'),
('百老匯 MY CINEMA YOHO MALL', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/MY-CINEMA-YOHO-MALL/info', '新界', '元朗區', '元朗 朗日路9號YOHO MALL I 1樓 1021舖'),
('百老匯 PALACE apm', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/PALACE-apm/info', '九龍', '觀塘區', '觀塘 觀塘道418號 創紀之城五期apm 6樓'),
('百老匯 PALACE ifc', '百老匯戲院', '2388-6268', 'http://www.cinema.com.hk/tc/site/cinemainfo/PALACE-ifc/info', '港島', '中西區', '中環 金融街8號 國際金融中心商場 1樓'),
('百老匯 PREMIERE ELEMENTS', '百老匯戲院', '2388-0002', 'https://www.cinema.com.hk/tc/site/cinemainfo/PREMIERE-ELEMENTS/info', '九龍', '油尖旺區', '尖沙咀 柯士甸道西1號 圓方商場 2樓火區'),
('百老匯 The ONE', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/The-ONE/info', '九龍', '油尖旺區', '尖沙咀 彌敦道100號 The ONE 6-11樓'),
('百老匯 嘉湖銀座', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/KINGSWOOD-GINZA/info', '新界', '元朗區', '天水圍 天恩路18號 嘉湖銀座廣場'),
('百老匯 數碼港', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/CYBERPORT/info', '港島', '南區', '數碼港 數碼港道100號 數碼港商場 3號地鋪'),
('百老匯 旺角', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/MONGKOK/info', '九龍', '油尖旺區', '旺角 西洋菜南街6-12號'),
('百老匯 荃灣', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/TSUEN-WAN/info', '新界', '荃灣區', '荃灣 大壩街4-30號 荃灣廣場 L1-L3'),
('百老匯 荷里活', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/HOLLYWOOD/info', '九龍', '黃大仙區', '鑽石山 龍墦街3號 荷里活廣場 3樓'),
('百老匯 葵芳', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/KWAI-FONG/info', '新界', '葵青區', '葵芳 興芳路223號 新都會廣場 L1-L4'),
('百老匯 電影中心', '百老匯戲院', '2388-0002', 'http://www.cinema.com.hk/tc/site/cinemainfo/CINEMATHEQUE/info', '九龍', '油尖旺區', '油麻地 眾坊街3號 駿發花園 H2地舖'),
('總統戲院', '新寶院線', '2836-5581', 'http://www.theatre.com.hk/tc/cinema/president_theatre', '港島', '灣仔區', '銅鑼灣 謝菲道517號'),
('英皇戲院 中環娛樂行', '英皇戲院', '2522-2996', 'https://www.emperorcinemas.com/zh/ticketing/by_date/1', '港島', '中西區', '中環 皇后大道中30號 娛樂行 3樓'),
('英皇戲院 屯門新都商場', '英皇戲院', '2522-2996', 'https://www.emperorcinemas.com/zh/ticketing/by_date/2', '新界', '屯門區', '屯門 新都商場 二樓'),
('英皇戲院 馬鞍山新港城中心', '英皇戲院', '2522-2996', 'https://www.emperorcinemas.com/zh/ticketing/by_date/3', '新界', '沙田區', '馬鞍山 鞍祿街18號 新港城中心 2樓'),
('豪華戲院', '新寶院線', '2399-0363', 'http://www.theatre.com.hk/tc/cinema/dynasty_theatre', '九龍', '油尖旺區', '旺角 旺角道4號'),
('香港藝術中心古天樂電影院', '獨立', '2582-0200', 'https://hkac.org.hk/artsatthecentre_screening/', '港島', '灣仔區', 'wan港灣道2號 香港藝術中心 高層地庫');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `HKCinema`
--
ALTER TABLE `HKCinema`
  ADD PRIMARY KEY (`影院名稱`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
