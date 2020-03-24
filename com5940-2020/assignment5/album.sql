-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2020 at 03:14 AM
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
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumID` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `time` varchar(10) DEFAULT NULL,
  `company` varchar(4) DEFAULT NULL,
  `songs` varchar(782) DEFAULT NULL,
  `picture` varchar(98) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumID`, `name`, `time`, `company`, `songs`, `picture`) VALUES
(1, 'A.M.P.M', '2004-11-24', '環球唱片', '1.Intro 2.昨夜，早晨 (粤) 3.无能为力 4.春天 5.孤单公园 (粤) 6.Dear U 7.Blessing (粤) 8.眼晴 9.Envy 10.Interlude 11.Boys &amp; Girls 12.Blessing', 'https://dl.airtable.com/.attachments/167fad69889c25204eeaebbf27bc3325/67037832/A_MP_M.png'),
(2, 'Dahlia II', '2018-05-28', '英皇娛樂', '1.绝 2.囍帖街 3.亲密关系 4.黄色大门 5.一人分饰两角 6.好心分手 7.漩涡 8.下次小心 9.可惜我是水瓶座 10.活得比你好', 'https://dl.airtable.com/.attachments/64efa877dfaaf43f823045812b6b6609/fe33c5ba/DahliaII.jpg'),
(3, 'Felix', '2015-12-17', '英皇娛樂', 'CD 1.找对的人 2.过客别墅 3.绯荔榭•少年 4.叮当可否不要老 5.One Day (国) DVD Music Video 1.找对的人 MV 2.过客别墅 MV 3.One Day (国) MV KKBOX LIVE 张敬轩 \"One Day\" 音乐会 1.One Day (国) 2.灵魂相认 3.同类 (国) [原唱 孙燕姿] 4.I Need You 5.深蓝 [原唱 卢巧音] 6.心动 (国) [原唱 林晓培] 7.好时辰 [原唱 王菀之] 8.过客别墅 9.女皇 [原唱 容祖儿] 10.青春常驻 11.你阿妈大减价 [原唱 尹光] 12.狮子山下 [原唱 罗文]', 'https://dl.airtable.com/.attachments/917124c48c0667cc9df35e548e41e1f5/0fe5f876/Felix.png'),
(4, 'Hins‘s First', '2001-08-03', '幾何文化', '1.First Intro 2.透露 3.触摸心跳  4.Interlude 5.On Fire (Have you ever?) 6.透露 (4 U Version) 7.Outro 8.太远 9.Power In Your Hands', 'https://dl.airtable.com/.attachments/496e5ba5fa9ac8be79210866d20c868a/9d97efb4/HinssFirst.png'),
(5, 'Morph', '2014-10-16', '英皇娛樂', '1.Morph (intro) 纯音乐 2.青春常驻 3.I Need you 4.Do What You Want (featuring冯允谦) 5.Awaiting (interlude) 纯音乐 6.灵魂相认 7.最卑微的愿望 8.Golden Age (interlude) 纯音乐 9.青春常驻 (reprise) 纯音乐 10.家园 (新家园协会 “齐筑福‧新家园” 活动主题曲) 11.一天', 'https://dl.airtable.com/.attachments/1aebd8ebe59cbdcc171084b1bd6ec00b/f11d71d0/Morph.jpeg'),
(6, 'My Way（內地版）', '2002-08-28', '幾何文化', '1.My Way 2.断点 3.自爱 4.Paris 5.明了 6.释放 7.声音 8.晚妆 9.我的宝贝 10.My Way (粤语版)', 'https://dl.airtable.com/.attachments/2d73ed1fa20e189c1fd866fa0fefa902/27079b27/MyWay.png'),
(7, 'My Way（香港版）', '2003-01-14', '環球唱片', '1.Intro 2.My Way 3.断点 4.自爱 5.On Fire (Have you ever?) 6.明了 7.Interlude 8.Paris 9.My Way (Reprise) 10.期待 11.声音 12.释放 13.Outro', 'https://dl.airtable.com/.attachments/01712c9f72755c6a4aff874652bd1324/e7e176d9/MyWay.png'),
(8, 'No. Eleven', '2010-04-16', '環球唱片', '1.春秋 2.衬 3.诗邮寄 4.石径 (张敬轩 + 麦家瑜) 5.摄氏零度 6.茶想曲 7.婚纱背后 8.隔夜茶 9.怎么可 10.Yes & No (Summer Version)', 'https://dl.airtable.com/.attachments/c8d37cd29425e4c6d5aafe18bb64681b/2406ced4/No_Eleven.png'),
(9, 'P.S. I Love You', '2011-04-15', '環球唱片', 'CD 1.Deadline 2.P.S. I Love You 3.壮举 4.披星戴月 5.留低锁匙 6.樱花树下 7.不吐不快 8.相对论 (feat. 林子祥) 9.婚纱背后 10.春秋 11.摄氏零度 12.Yes & No 13.失恋有奖 14.单打独斗 15.吻得太逼真(国) 16.断点(国) DVD Music Videos 1.Deadline 2.P.S. I Love You 3.壮举 4.茶想曲 5.Yes & No (Live) 6.曝光(Dance Version) 7.你最珍贵(feat. 梁文音) (Live) 8.吻得太逼真(国) MOOV Live 2010 张敬轩 1.婚纱背后 2.留低锁匙 3.室乐团指挥 4.只是太爱你(国) 5.P.S. I Love You 6.Deadline 7.DESTINY 制作特辑', 'https://dl.airtable.com/.attachments/c75c8c2a02b047ab92e369477bdfb0ed/e3f24f5b/P.S.ILoveYou.jpg'),
(10, 'Pink Dahlia', '2013-03-07', '環球唱片', 'CD 1.完全因你 2.夜机 3.风花雪 4.假的恋爱 5.值得 6.亲密爱人 7.未知 8.滴汗 9.少女的祈祷 10.不舍也为爱 DVD 1.Making of... 2.完全因你 3.值得 4.少女的祈祷', 'https://dl.airtable.com/.attachments/c986bc43c8a5b987953dfd7c4dc88dcb/e55248aa/PinkDahlia.png'),
(11, 'Senses Inherited', '2018-12-21', '英皇娛樂', '1.20170201 (纯音乐) 2.缺 3.天才儿童1985 4.明明他已离开你 5.潜水 6.形影不离 7.John 14:27 (纯音乐) 8.假以时日 9.倾慕 10.岁月静好 11.装睡的情人 12.百年树木 13.培正东4号 (纯音乐)', 'https://dl.airtable.com/.attachments/c3b5886cc0eb361a68cdd34b7a7ee3ea/acd87983/SensesInherited.jpg'),
(12, 'Urban Emotions', '2008-07-11', '環球唱片', '1.他的故事 　 2.愿望树上 3.樱花树下 4.隐形人 5.狐 6.夜宴 7.酩酊天使 8.闹鬼爱情 9.不吐不快 10.雪花抄 (跑Online主题曲)　 11.Deja vu 12.Hate That I Love You (粤语) - Rihanna & 张敬轩 13.Hate That I Love You (国语) - Rihanna & 张敬轩 14.吻得太逼真 (国语)', 'https://dl.airtable.com/.attachments/91067022509adb8d0210a172dc976092/6779c3c7/UrbanEmotions.png'),
(13, 'Vibes', '2016-10-06', '英皇娛樂', '1.罗宾 2.风起了 3.不同班同学 4.Make Me Proud 5.罗宾 (CP Up Version) featuring MC Jin 6.Hidden Track - 你救哪一个', 'https://dl.airtable.com/.attachments/07204a27f3f2423da8ca9cdc5645b99f/ad366901/Vibes.png'),
(14, 'Why Not', '2012-07-27', '環球唱片', 'CD 1.我和秋天有个约会 2.蝉 3.Stop The Time 4.井 5.结果 Bonus Tracks 1.Stop The Time (Orchestra Version) 2.井 (Piano Version) DVD Music Videos 1.我和秋天有个约会 2.Stop The Time 3.井', 'https://dl.airtable.com/.attachments/d547b1117c83df714c1f524e1e38f66b/9def4a3b/WhyNot.png'),
(15, '我的夢想我的路', '2005-07-31', '幾何文化', '1.断点 2.无能为力 3.期待/我的宝贝 4.My Way 5.孤单公园Remix 6.昨夜，清晨 7.释放 8.Envy 9.Blessing 10.My Way (童年回忆版)', 'https://dl.airtable.com/.attachments/18a7a0e8ec12294fdcedb28d391ed6ac/36efd4b8.png'),
(16, '春·夏·秋·冬', '2006-03-23', '環球唱片', '1.过云雨 2.Hurt So Bad (电影歌 “拥抱每一刻花火”) 3.有一首歌 4.分手前的雨天 5.云里的月光 6.不要 7.随你 -“手望”国语版 (王菀之合唱) 8.如果我 9.偷故事的人 10.绝顶爱情 (Duet with Father)', 'https://dl.airtable.com/.attachments/3bc578664e089f6f0a22f3afddb0c4f9/c8a1a770.jpg'),
(17, '是時候...', '2013-12-20', '環球唱片', 'CD 1 1.温馨提示 2.尘埃落定 3.夜机 4.我和秋天有个约会 5.Stop The Time 6.井 (Piano Version) 7.红 8.Deadline 9.P.S. I Love You 10.壮举 11.惜爱 12.只是太爱你 (国语) 13.春秋 14.婚纱背后 15.怎么可 16.Yes & No (Summer Version) 17.高八度 (王菀之合唱) CD 2 1.义不容情 (孙耀威合唱) 2.留低锁匙 3.故园花茶 4.披星戴月 5.相对论 6.单打独斗 7.失恋有奖 8.无名指的光环 9.曝光 (Dance Version) 10.他的故事 11.樱花树下 12.夜宴 13.不吐不快 14.Hate That I Love You (粤)(Rihanna合唱) 15.吻得太逼真 (国语) 16.酷爱 17.迷失表参道 CD 3 1.感情用事 2.余震 3.骚灵情歌 4.笑忘书 5.无需要太多 6.老了十岁 7.从何唱起 (伦永亮合唱) 8.过云雨 9.Hurt So Bad 10.绝顶爱情 (Duet With Father) 11.手望 (守望版) (王菀之合唱) 12.总在我身旁 (国语) (Featuring Secret Garden) 13.无能为力 14.春天 15.Blessing (粤) 16.孤单公园 17.My Way DVD 1.Stop the Time 2.我和秋天有个约会 3.井 4.只是太爱你 (国语) 5.惜爱 6.P.S. I love you 7.Deadline 8.壮举 9.曝光 (Dance Version) 10.相对论 (Featuring林子祥) 11.披星戴月 12.樱花树下 13.我的天 14.酷爱 15.笑忘书 16.余震 17.手望 (守望版)', 'https://dl.airtable.com/.attachments/6bacee887f0e9bfe1ff23562da35a047/5a4070ea/....jpg'),
(18, '笑忘書', '2006-10-20', '環球唱片', 'CD 1.余震 2.骚灵情歌 3.两座位跑车 4.笑忘书 5.无需要太多 O.T. 我要的不多 6.老了十岁 7.病况 8.第二次爱你 9.不能不见 10.从何唱起 Duet with 伦永亮 11.遇见神 (Bonus Track) DVD 1.余震 2.老了十岁 3.Hurt So Bad (国语) (电影歌 拥抱每一刻花火) 4.过云雨 (国语) 5.Blessing (广东) 6.Dear U (国语) 7.断点 (国语) 8.孤单公园', 'https://dl.airtable.com/.attachments/8de83375b9b0f84f27215b67ef6b88e5/ad0a87af.png'),
(19, '酷愛', '2007-08-16', '環球唱片', 'CD 1.酷爱 2.追风筝的孩子 3.迷失表参道 4.感情用事 5.男孩最痛 6.我的天 7.悔过诗 8.悲剧人物 9.遥吻 10.放榜 DVD 1.酷爱 (MV Only) 2.我的天 (MV Only) 3.放榜 (MV Only) 4.笑忘书 5.余震 6.老了十岁 7.Hurt So Bad (国) (电影歌 拥抱每一刻花火) 8.过云雨 (国) 9.Blessing (Live) 10.Dear U (国) 11.断点 (国) 12.孤单公园', 'https://dl.airtable.com/.attachments/c85c37a01f45878e0884775c1b5a39d1/a57e0c62.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
