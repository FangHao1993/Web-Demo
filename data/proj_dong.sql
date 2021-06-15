-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 
-- 伺服器版本: 5.7.24
-- PHP 版本： 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `proj_dong`
--
CREATE DATABASE IF NOT EXISTS `proj_dong` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `proj_dong`;

-- --------------------------------------------------------

--
-- 資料表結構 `abc`
--

CREATE TABLE `abc` (
  `sid` int(11) NOT NULL,
  `english` varchar(255) DEFAULT NULL,
  `chinese` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `abc`
--

INSERT INTO `abc` (`sid`, `english`, `chinese`) VALUES
(1, 'always', '總是'),
(2, 'tea', '茶'),
(3, 'beautiful', '美麗'),
(4, 'lucky', '幸運'),
(5, 'classroom', '課堂'),
(6, 'winter', '冬季'),
(7, 'pen', '鋼筆'),
(8, 'again', '再次'),
(9, 'wet', '濕'),
(10, 'toy', '玩具'),
(11, 'love', '愛'),
(12, 'telephone', '電話'),
(13, 'kiss', '吻'),
(14, 'letter', '信'),
(15, 'country', '國家'),
(16, 'skin', '皮膚'),
(17, 'able', '能夠'),
(18, 'chair', '椅子'),
(19, 'nurse', '護士'),
(20, 'noon', '中午'),
(21, 'smell', '聞'),
(22, 'husband', '丈夫'),
(23, 'taxi', '出租車'),
(24, 'elephant', '象'),
(25, 'lazy', '懶'),
(26, 'airplane', '飛機'),
(27, 'strong', '強大'),
(28, 'chocolate', '巧克力'),
(29, 'shopping', '購物'),
(30, 'low', '低'),
(31, 'change', '更改'),
(32, 'lip', '唇'),
(33, 'key', '鍵'),
(34, 'center', '中央'),
(35, 'wall', '壁'),
(36, 'parent', '父母'),
(37, 'anything', '任何東西'),
(38, 'late', '晚的'),
(39, 'week', '週'),
(40, 'animal', '動物'),
(41, 'sometimes', '有時'),
(42, 'hair', '頭髮'),
(43, 'great', '大'),
(44, 'driver', '司機'),
(45, 'road', '路'),
(46, 'dollar', '美元'),
(47, 'clothes', '衣服'),
(48, 'wide', '寬'),
(49, 'tomato', '番茄'),
(50, 'snow', '雪'),
(51, 'restaurant', '餐廳'),
(52, 'delicious', '美味的'),
(53, 'high', '高'),
(54, 'brother', '哥哥'),
(55, 'dance', '舞蹈'),
(56, 'young', '年輕'),
(57, 'join', '加入'),
(58, 'umbrella', '雨傘'),
(59, 'job', '工作'),
(60, 'aunt', '姨'),
(61, 'both', '都'),
(62, 'soap', '肥皂'),
(63, 'outside', '外'),
(64, 'mountain', '山'),
(65, 'hospital', '醫院'),
(66, 'river', '河'),
(67, 'during', '中'),
(68, 'office', '辦公室'),
(69, 'toilet', '廁所'),
(70, 'trip', '旅行'),
(71, 'pink', '粉'),
(72, 'wine', '葡萄酒'),
(73, 'into', '進入'),
(74, 'small', '小'),
(75, 'either', '要么'),
(76, 'like', '喜歡'),
(77, 'quiet', '安靜'),
(78, 'tennis', '網球'),
(79, 'bag', '袋'),
(80, 'autumn', '秋季'),
(81, 'lady', '淑女'),
(82, 'already', '已經'),
(83, 'tooth', '齒'),
(84, 'just', '只是'),
(85, 'hotel', '旅館'),
(86, 'child', '兒童'),
(87, 'desk', '台'),
(88, 'forest', '森林'),
(89, 'ant', '螞蟻'),
(90, 'ear', '耳'),
(91, 'hot', '熱'),
(92, 'ticket', '票'),
(93, 'travel', '旅行'),
(94, 'sing', '唱'),
(95, 'door', '門'),
(96, 'boat', '船'),
(97, 'interesting', '有趣'),
(98, 'history', '歷史'),
(99, 'bath', '浴'),
(100, 'sweet', '甜'),
(101, 'mail', '郵件'),
(102, 'lion', '獅子'),
(103, 'full', '充分'),
(104, 'size', '尺寸'),
(105, 'ice', '冰'),
(106, 'color', '顏色'),
(107, 'thin', '瘦'),
(108, 'pot', '鍋'),
(109, 'goal', '目標'),
(110, 'idea', '理念'),
(111, 'else', '其他'),
(112, 'soft', '柔軟的'),
(113, 'bridge', '橋'),
(114, 'vegetable', '蔬菜'),
(115, 'silent', '無聲'),
(116, 'year', '年'),
(117, 'toe', '腳趾'),
(118, 'half', '半'),
(119, 'glove', '手套'),
(120, 'fine', '精細'),
(121, 'everyone', '大家'),
(122, 'sky', '天空'),
(123, 'hobby', '愛好'),
(124, 'food', '餐飲'),
(125, 'quick', '快'),
(126, 'bank', '銀行'),
(127, 'sport', '運動'),
(128, 'mad', '狂'),
(129, 'bicycle', '自行車'),
(130, 'neighbor', '鄰居'),
(131, 'sad', '傷心'),
(132, 'bean', '豆角，扁豆'),
(133, 'dream', '夢想'),
(134, 'blackboard', '黑板'),
(135, 'yard', '碼'),
(136, 'arm', '臂'),
(137, 'wing', '翅膀'),
(138, 'something', '某事'),
(139, 'nobody', '沒有人'),
(140, 'deep', '深'),
(141, 'white', '白色'),
(142, 'box', '框'),
(143, 'cake', '蛋糕'),
(144, 'inside', '內'),
(145, 'speed', '速度'),
(146, 'listen', '聽'),
(147, 'weekend', '週末'),
(148, 'dangerous', '危險的'),
(149, 'garden', '花園'),
(150, 'water', '水'),
(151, 'lonely', '孤獨'),
(152, 'test', '測試'),
(153, 'woman', '女人'),
(154, 'slow', '慢'),
(155, 'soup', '湯'),
(156, 'list', '清單'),
(157, 'fat', '脂肪'),
(158, 'glad', '高興'),
(159, 'happen', '發生'),
(160, 'decide', '決定'),
(161, 'knee', '膝蓋'),
(162, 'golden', '金色的'),
(163, 'hill', '爬坡道'),
(164, 'joy', '喜悅'),
(165, 'page', '頁'),
(166, 'knife', '刀'),
(167, 'fish', '魚'),
(168, 'police', '警察'),
(169, 'pocket', '口袋'),
(170, 'ocean', '海洋'),
(171, 'zoo', '動物園'),
(172, 'tie', '領帶'),
(173, 'mirror', '鏡子'),
(174, 'homework', '家庭作業'),
(175, 'summer', '夏天'),
(176, 'dead', '死'),
(177, 'healthy', '健康'),
(178, 'afraid', '害怕'),
(179, 'type', '類型'),
(180, 'drink', '喝'),
(181, 'golf', '高爾夫球'),
(182, 'music', '音樂'),
(183, 'jam', '果醬'),
(184, 'honest', '誠實'),
(185, 'group', '組'),
(186, 'famous', '著名'),
(187, 'perhaps', '也許'),
(188, 'neck', '頸部'),
(189, 'bus', '總線'),
(190, 'thing', '事情'),
(191, 'secret', '秘密'),
(192, 'fly', '飛'),
(193, 'sand', '砂'),
(194, 'floor', '地板'),
(195, 'born', '天生的'),
(196, 'power', '功率'),
(197, 'rice', '白飯'),
(198, 'money', '錢'),
(199, 'musician', '音樂家'),
(200, 'train', '培養'),
(201, 'dinner', '晚餐'),
(202, 'gone', '不見了'),
(203, 'basketball', '籃球'),
(204, 'lake', '湖'),
(205, 'flat', '平面'),
(206, 'breakfast', '早餐'),
(207, 'fast', '快速'),
(208, 'necessary', '必要'),
(209, 'football', '足球'),
(210, 'spring', '彈簧'),
(211, 'plan', '計劃'),
(212, 'space', '空間'),
(213, 'help', '救命'),
(214, 'milk', '牛奶'),
(215, 'monkey', '猴'),
(216, 'anybody', '任何人'),
(217, 'noise', '噪聲'),
(218, 'boot', '開機'),
(219, 'gold', '金'),
(220, 'flower', '花'),
(221, 'since', '以來'),
(222, 'price', '價錢'),
(223, 'dog', '狗'),
(224, 'coat', '塗層'),
(225, 'dictionary', '字典'),
(226, 'gift', '禮品'),
(227, 'enter', '輸入'),
(228, 'suit', '適合'),
(229, 'busy', '忙'),
(230, 'mornin', '早上'),
(231, 'cloud', '雲'),
(232, 'stone', '石'),
(233, 'few', '幾個'),
(234, 'doll', '娃娃'),
(235, 'roof', '屋頂'),
(236, 'library', '圖書館'),
(237, 'video', '視頻'),
(238, 'girl', '女孩'),
(239, 'gas', '加油站'),
(240, 'less', '減'),
(241, 'push', '推'),
(242, 'tunnel', '隧道'),
(243, 'salt', '鹽'),
(244, 'everything', '一切'),
(245, 'green', '綠色'),
(246, 'finish', '完'),
(247, 'midnight', '午夜'),
(248, 'bird', '鳥'),
(249, 'plane', '飛機'),
(250, 'basic', '基本的'),
(251, 'people', '人'),
(252, 'guitar', '吉他'),
(253, 'voice', '語音'),
(254, 'evening', '晚間'),
(255, 'king', '王'),
(256, 'cat', '貓'),
(257, 'horse', '馬'),
(258, 'uncle', '叔叔'),
(259, 'never', '決不'),
(260, 'hard', '硬'),
(261, 'baby', '寶寶'),
(262, 'everywhere', '到處'),
(263, 'pencil', '鉛筆'),
(264, 'bench', '板凳'),
(265, 'certain', '某些'),
(266, 'fight', '鬥爭'),
(267, 'basket', '籃'),
(268, 'cup', '杯子'),
(269, 'town', '鎮'),
(270, 'circle', '圈'),
(271, 'month', '月'),
(272, 'fan', '風扇'),
(273, 'sound', '聲音'),
(274, 'later', '後來'),
(275, 'here', '這裡'),
(276, 'rainy', '多雨的'),
(277, 'enough', '足夠'),
(278, 'little', '小'),
(279, 'important', '重要'),
(280, 'useful', '有用'),
(281, 'swim', '游泳'),
(282, 'apple', '蘋果'),
(283, 'camp', '營'),
(284, 'movie', '電影'),
(285, 'east', '東'),
(286, 'pet', '寵物'),
(287, 'pig', '豬'),
(288, 'dear', '親'),
(289, 'doctor', '醫生'),
(290, 'mile', '英里'),
(291, 'baseball', '棒球'),
(292, 'club', '俱樂部'),
(293, 'pretty', '漂亮'),
(294, 'land', '土地'),
(295, 'beef', '牛肉'),
(296, 'cow', '牛'),
(297, 'super', '超'),
(298, 'poor', '較差的'),
(299, 'vacation', '假期'),
(300, 'gun', '槍'),
(301, 'man', '男人'),
(302, 'happy', '快樂'),
(303, 'supermarket', '超級市場'),
(304, 'bike', '自行車'),
(305, 'car', '汽車'),
(306, 'son', '兒子'),
(307, 'sandwich', '三明治'),
(308, 'butter', '牛油'),
(309, 'race', '種族'),
(310, 'only', '只要'),
(311, 'sun', '太陽'),
(312, 'fork', '叉子'),
(313, 'skirt', '短裙'),
(314, 'cloudy', '多雲的'),
(315, 'wise', '明智的'),
(316, 'airport', '飛機場'),
(317, 'family', '家庭'),
(318, 'snake', '蛇'),
(319, 'wild', '野生'),
(320, 'front', '面前'),
(321, 'tree', '樹'),
(322, 'percent', '百分'),
(323, 'smoker', '吸煙者'),
(324, 'shine', '閃耀'),
(325, 'store', '商店'),
(326, 'because', '因為'),
(327, 'add', '加'),
(328, 'farm', '農場'),
(329, 'but', '但'),
(330, 'by', '通過'),
(331, 'were', '是'),
(332, 'up', '上'),
(333, 'on', '上'),
(334, 'down', '下'),
(335, 'off', '關'),
(336, 'one', '一'),
(337, 'two', '二'),
(338, 'three', '三'),
(339, 'four', '四'),
(340, 'five', '五'),
(341, 'six', '六'),
(342, 'seven', '七'),
(343, 'eight', '八'),
(344, 'nine', '九'),
(345, 'ten', '十'),
(346, 'eleven', '十一'),
(347, 'twelve', '十二'),
(348, 'first', '第一'),
(349, 'second', '第二'),
(350, 'third', '第三'),
(351, 'until', '直到'),
(352, 'out', '出'),
(353, 'at', '在'),
(354, 'in', '在'),
(355, 'into', '進入'),
(356, 'onto', '到'),
(357, 'upon', '在...之上'),
(358, 'over', '過度'),
(359, 'for', '對於'),
(360, 'about', '關於'),
(361, 'against', '反對'),
(362, 'as', '如'),
(363, 'across', '跨越'),
(364, 'through', '通過'),
(365, 'to', '至'),
(366, 'rather', '寧可'),
(367, 'with', '與'),
(368, 'without', '沒有'),
(369, 'above', '以上'),
(370, 'below', '下面'),
(371, 'under', '下'),
(372, 'beyond', '超越'),
(373, 'between', '之間'),
(374, 'among', '其中'),
(375, 'along', '沿'),
(376, 'from', '從'),
(377, 'per', '每'),
(378, 'if', '如果'),
(379, 'the', '的'),
(380, 'this', '這個'),
(381, 'that', '那'),
(382, 'who', '誰'),
(383, 'whoever', '誰'),
(384, 'what', '什麼'),
(385, 'whatever', '隨你'),
(386, 'when', '什麼時候'),
(387, 'whenever', '每當'),
(388, 'why', '為什麼'),
(389, 'where', '哪裡'),
(390, 'wherever', '隨處'),
(391, 'which', '哪一個'),
(392, 'whichever', '任何'),
(393, 'while', '而'),
(394, 'how', '怎麼樣'),
(395, 'however', '然而'),
(396, 'be', '是'),
(397, 'been', '是'),
(398, 'do', '做'),
(399, 'have', '有'),
(400, 'he', '他'),
(401, 'she', '她'),
(402, 'let', '讓'),
(403, 'will', '將'),
(404, 'would', '將'),
(405, 'can', '能夠'),
(406, 'could', '可以'),
(407, 'should', '應該'),
(408, 'shall', '應'),
(409, 'may', '可以'),
(410, 'might', '威力'),
(411, 'many', '許多'),
(412, 'much', '許多'),
(413, 'before', '之前'),
(414, 'after', '後'),
(415, 'there', '那裡'),
(416, 'table', '表'),
(417, 'hole', '洞'),
(418, 'piece', '片'),
(419, 'live', '生活'),
(420, 'dress', '連衣裙'),
(421, 'age', '年齡'),
(422, 'far', '遠'),
(423, 'well', '好'),
(424, 'clock', '時鐘'),
(425, 'know', '知道'),
(426, 'paper', '紙'),
(427, 'line', '線'),
(428, 'hear', '聽'),
(429, 'cold', '冷'),
(430, 'find', '找'),
(431, 'easy', '簡單'),
(432, 'place', '地點'),
(433, 'thick', '厚'),
(434, 'yes', '是'),
(435, 'no', '沒有'),
(436, 'open', '打開'),
(437, 'step', '步'),
(438, 'write', '寫'),
(439, 'work', '工作'),
(440, 'hat', '帽子'),
(441, 'touch', '觸摸'),
(442, 'shit', '拉屎'),
(443, 'date', '日期'),
(444, 'number', '數'),
(445, 'shop', '店'),
(446, 'shoe', '鞋子'),
(447, 'sale', '銷售'),
(448, 'square', '廣場'),
(449, 'shut', '關閉'),
(450, 'build', '建立'),
(451, 'finger', '手指'),
(452, 'stay', '留'),
(453, 'cheap', '賤'),
(454, 'sick', '生病'),
(455, 'back', '背部'),
(456, 'eye', '眼睛'),
(457, 'safe', '安全'),
(458, 'hold', '保持'),
(459, 'sure', '當然'),
(460, 'side', '側'),
(461, 'sign', '標誌'),
(462, 'same', '相同'),
(463, 'grow', '增長'),
(464, 'see', '看到'),
(465, 'reach', '達到'),
(466, 'watch', '看'),
(467, 'note', '注意'),
(468, 'ring', '環'),
(469, 'wash', '洗'),
(470, 'ride', '騎'),
(471, 'seat', '座位'),
(472, 'short', '短'),
(473, 'thank', '謝謝'),
(474, 'light', '光'),
(475, 'south', '南'),
(476, 'care', '關心'),
(477, 'wake', '喚醒'),
(478, 'matter', '物'),
(479, 'best', '最好'),
(480, 'alone', '單獨'),
(481, 'smile', '微笑'),
(482, 'face', '面對'),
(483, 'fun', '好玩'),
(484, 'war', '戰爭'),
(485, 'usual', '通常'),
(486, 'story', '故事'),
(487, 'pick', '挑'),
(488, 'say', '說'),
(489, 'time', '時間'),
(490, 'set', '組'),
(491, 'give ', '給'),
(492, 'get', '得到'),
(493, 'take', '採取'),
(494, 'go', '走'),
(495, 'make', '使'),
(496, 'put', '放'),
(497, 'even', '甚至'),
(498, 'soon', '不久'),
(499, 'learn', '學習'),
(500, 'count', '計數'),
(501, 'nothing', '沒有'),
(502, 'marry', '結婚'),
(503, 'stand', '支架'),
(504, 'head', '頭'),
(505, 'sit', '坐'),
(506, 'sitting', '坐著'),
(507, 'school', '學校'),
(508, 'start', '開始'),
(509, 'field', '領域'),
(510, 'better', '更好'),
(511, 'mean', '意思'),
(512, 'person', '人'),
(513, 'way', '方式'),
(514, 'hit', '擊中'),
(515, 'dry', '幹'),
(516, 'all', '所有'),
(517, 'close', '關'),
(518, 'last', '持續'),
(519, 'drop', '下降'),
(520, 'banana', '香蕉'),
(521, 'popular', '流行'),
(522, 'right', '對'),
(523, 'die', '死'),
(524, 'cool', '涼'),
(525, 'use', '採用'),
(526, 'wind', '風'),
(527, 'word', '字'),
(528, 'cook', '廚師'),
(529, 'more', '更多'),
(530, 'most', '最'),
(531, 'tell', '告訴'),
(532, 'red', '紅色'),
(533, 'talk', '談論'),
(534, 'trouble', '麻煩'),
(535, 'large', '大'),
(536, 'real ', '真實'),
(537, 'night', '晚'),
(538, 'come', '來'),
(539, 'stop', '停'),
(540, 'another', '另一個'),
(541, 'walk', '步行'),
(542, 'home', '家'),
(543, 'wave', '波'),
(544, 'buy', '購買'),
(545, 'show', '節目'),
(546, 'believe', '相信'),
(547, 'true ', '真正'),
(548, 'rise', '上升'),
(549, 'clean', '清潔'),
(550, 'keep', '保持'),
(551, 'wood', '木'),
(552, 'friend', '朋友'),
(553, 'once', '一旦'),
(554, 'play', '玩'),
(555, 'death', '死亡'),
(556, 'pie', '餡餅'),
(557, 'day', '天'),
(558, 'call', '呼叫'),
(559, 'class', '類'),
(560, 'now', '現在'),
(561, 'birthday', '生日'),
(562, 'egg', '蛋'),
(563, 'try', '嘗試'),
(564, 'fool', '傻子'),
(565, 'warm', '暖'),
(566, 'eat', '吃'),
(567, 'read', '讀'),
(568, 'long', '長'),
(569, 'ask', '問'),
(570, 'blue', '藍色'),
(571, 'song', '歌曲'),
(572, 'world', '世界'),
(573, 'book', '書'),
(574, 'question', '題'),
(575, 'look', '看'),
(576, 'good', '好'),
(577, 'sharp', '尖銳'),
(578, 'artist', '藝術家'),
(579, 'station', '站'),
(580, 'cut', '切'),
(581, 'cap', '帽'),
(582, 'star', '星'),
(583, 'radio', '無線電'),
(584, 'shirt', '襯衫'),
(585, 'mine', '礦'),
(586, 'city', '市'),
(587, 'cry', '哭'),
(588, 'building', '建造'),
(589, 'near', '近'),
(590, 'bottle', '瓶子'),
(591, 'gray', '灰色'),
(592, 'weak', '弱'),
(593, 'ski', '滑雪'),
(594, 'shower', '淋浴'),
(595, 'sea', '海'),
(596, 'kill', '殺'),
(597, 'meal', '膳食'),
(598, 'smoke', '抽煙'),
(599, 'north', '北'),
(600, 'none', '沒有'),
(601, 'father', '父親'),
(602, 'wonderful', '精彩'),
(603, 'news', '新聞'),
(604, 'farmer', '農民'),
(605, 'welcome', '歡迎'),
(606, 'fox', '狐狸'),
(607, 'drive', '駕駛'),
(608, 'newspaper', '報紙'),
(609, 'bake', '烘烤'),
(610, 'sugar', '糖'),
(611, 'daughter', '女兒'),
(612, 'really', '真'),
(613, 'pork', '豬肉'),
(614, 'round', '回合'),
(615, 'glass', '玻璃'),
(616, 'pool', '池子'),
(617, 'machine', '機'),
(618, 'photograph', '照片'),
(619, 'middle', '中間'),
(620, 'team', '球隊'),
(621, 'subway', '地鐵'),
(622, 'early', '早'),
(623, 'teach', '教導'),
(624, 'game', '遊戲'),
(625, 'pizza', '比薩'),
(626, 'spend', '花'),
(627, 'market', '市場'),
(628, 'moon', '月亮'),
(629, 'juice', '果汁'),
(630, 'street', '街'),
(631, 'laugh', '笑'),
(632, 'oil', '油'),
(633, 'meeting', '會議'),
(634, 'season', '季節'),
(635, 'gentleman', '紳士'),
(636, 'meter', '儀表'),
(637, 'memory', '記憶'),
(638, 'candy', '糖果'),
(639, 'college', '學院'),
(640, 'fry', '炒'),
(641, 'natural', '自然'),
(642, 'bedroom', '臥室'),
(643, 'chalk', '粉筆'),
(644, 'stamp', '郵票'),
(645, 'master', '主'),
(646, 'member', '會員'),
(647, 'pipe', '管'),
(648, 'forget', '忘記'),
(649, 'chicken', '雞'),
(650, 'mouse', '老鼠'),
(651, 'need', '需要'),
(652, 'fruit', '水果'),
(653, 'heavy', '重'),
(654, 'speaker', '揚聲器'),
(655, 'receive', '接收'),
(656, 'move', '移動'),
(657, 'lesson', '課'),
(658, 'village', '村'),
(659, 'tower', '塔'),
(660, 'holiday', '假日'),
(661, 'diary', '日記'),
(662, 'past', '過去'),
(663, 'bee', '蜜蜂'),
(664, 'choose', '選擇'),
(665, 'picnic', '野餐'),
(666, 'park', '公園'),
(667, 'pilot', '飛行員'),
(668, 'tape', '膠帶'),
(669, 'spoon', '勺'),
(670, 'art', '藝術'),
(671, 'language', '語言'),
(672, 'bat', '蝙蝠'),
(673, 'straight', '直行'),
(674, 'rain', '雨'),
(675, 'lose', '失去'),
(676, 'bread', '麵包'),
(677, 'chief', '首席'),
(678, 'future', '未來'),
(679, 'god', '神'),
(680, 'several', '一些'),
(681, 'kitchen', '廚房'),
(682, 'notebook', '筆記本'),
(683, 'special', '特別'),
(684, 'meat', '肉'),
(685, 'rocket', '火箭'),
(686, 'paint', '塗料'),
(687, 'island', '島'),
(688, 'hurt', '傷害'),
(689, 'pound', '磅'),
(690, 'clever', '聰明'),
(691, 'though', '雖然'),
(692, 'sister', '妹妹'),
(693, 'shoulder', '肩'),
(694, 'mouth', '口'),
(695, 'salad', '沙拉'),
(696, 'lunch', '午餐'),
(697, 'proud', '驕傲'),
(698, 'afternoon', '下午'),
(699, 'want', '想'),
(700, 'someone', '某人'),
(701, 'kid', '小子'),
(702, 'pair', '對'),
(703, 'mother', '母親'),
(704, 'dark', '暗'),
(705, 'classmate', '同班同學'),
(706, 'party', '派對'),
(707, 'toward', '朝'),
(708, 'careful', '小心'),
(709, 'old', '舊'),
(710, 'invite', '邀請'),
(711, 'cheese', '起司'),
(712, 'beside', '旁'),
(713, 'towel', '毛巾'),
(714, 'dish', '碟'),
(715, 'please', '請'),
(716, 'piano', '鋼琴'),
(717, 'narrow', '狹窄'),
(718, 'silver', '銀'),
(719, 'visitor', '遊客'),
(720, 'boss', '老闆'),
(721, 'window', '窗口'),
(722, 'difficult', '難'),
(723, 'post', '發布'),
(724, 'study', '研究'),
(725, 'funny', '滑稽'),
(726, 'robot', '機器人'),
(727, 'card', '卡'),
(728, 'junior', '初級'),
(729, 'remember', '記得'),
(730, 'hour', '小時'),
(731, 'arrive', '到達'),
(732, 'answer', '回答'),
(733, 'bed', '床'),
(734, 'sheep', '羊'),
(735, 'camera', '相機'),
(736, 'wife', '妻子'),
(737, 'thousand', '千'),
(738, 'left', '剩下'),
(739, 'honey', '蜜糖'),
(740, 'church', '教會'),
(741, 'orange', '橙子'),
(742, 'tent', '帳篷'),
(743, 'rose', '玫瑰'),
(744, 'strange', '奇怪'),
(745, 'nice', '不錯'),
(746, 'body', '身體'),
(747, 'nail', '釘'),
(748, 'seem', '似乎'),
(749, 'student', '學生'),
(750, 'climb', '爬'),
(751, 'tall', '高'),
(752, 'next', '下一個'),
(753, 'fresh', '新鮮'),
(754, 'rabbit', '兔子'),
(755, 'tail', '尾巴'),
(756, 'hungry', '飢餓'),
(757, 'each', '每'),
(758, 'teacher', '老師'),
(759, 'tongue', '舌'),
(760, 'above', '以上'),
(761, 'museum', '博物館'),
(762, 'feeling', '感覺'),
(763, 'sleepy', '困'),
(764, 'television', '電視'),
(765, 'potato', '土豆'),
(766, 'worry', '擔心'),
(767, 'worried', '擔心'),
(768, 'frog', '青蛙'),
(769, 'coffee', '咖啡'),
(770, 'science', '科學'),
(771, 'violin', '小提琴'),
(772, 'pants', '褲子'),
(773, 'bring', '帶來'),
(774, 'carry', '攜帶'),
(775, 'break', '打破'),
(776, 'turn', '轉'),
(777, 'according', '根據'),
(778, 'wrap', '包裹'),
(779, 'loose', '疏鬆'),
(780, 'biscuit', '餅乾'),
(781, 'respond', '響應'),
(782, 'desire', '慾望'),
(783, 'muscle', '肌肉'),
(784, 'grip', '握'),
(785, 'dawn', '黎明'),
(786, 'insist', '堅持'),
(787, 'film', '電影'),
(788, 'boring', '無聊的'),
(789, 'belt', '帶'),
(790, 'customer', '顧客'),
(791, 'grass', '草'),
(792, 'sentence', '句子'),
(793, 'cycle', '週期'),
(794, 'rapid', '快速'),
(795, 'ability', '能力'),
(796, 'pupil', '瞳孔'),
(797, 'afterward', '之後'),
(798, 'soldier', '士兵'),
(799, 'truth', '真相'),
(800, 'agree', '同意'),
(801, 'diet', '飲食'),
(802, 'buckle', '扣'),
(803, 'ham', '火腿'),
(804, 'sweat', '流汗'),
(805, 'follow', '跟隨'),
(806, 'object', '賓語'),
(807, 'responsible', '負責任的'),
(808, 'aware', '知道的'),
(809, 'account', '帳戶'),
(810, 'roll', '滾'),
(811, 'lead', '鉛'),
(812, 'chest', '胸部'),
(813, 'except', '除了'),
(814, 'attend', '出席'),
(815, 'cheer', '歡呼'),
(816, 'shot', '射擊'),
(817, 'bottom', '底部'),
(818, 'bottom line', '底線'),
(819, 'yet', '然而'),
(820, 'root', '根'),
(821, 'root for', '加油'),
(822, 'ton', '噸'),
(823, 'worse', '更差'),
(824, 'twice', '兩次'),
(825, 'lie', '位於'),
(826, 'feed', '飼料'),
(827, 'shake', '抖動'),
(828, 'suffer', '遭受'),
(829, 'fail', '失敗'),
(830, 'board', '板'),
(831, 'lift', '電梯'),
(832, 'likely', '可能的'),
(833, 'iron', '鐵'),
(834, 'load', '加載'),
(835, 'bush', '襯套'),
(836, 'dozen', '打'),
(837, 'pleased', '很高興'),
(838, 'cross', '交叉'),
(839, 'beat', '擊敗'),
(840, 'luck', '運氣'),
(841, 'pride', '自豪'),
(842, 'quit', '放棄'),
(843, 'simple', '簡單'),
(844, 'west', '西方'),
(845, 'bad', '壞'),
(846, 'grade', '年級'),
(847, 'enjoy', '請享用'),
(848, 'fill', '填'),
(849, 'spirit', '精神'),
(850, 'split', '分裂'),
(851, 'stomach', '胃'),
(852, 'deal', '成交'),
(853, 'instead', '代替'),
(854, 'raise', '提高'),
(855, 'purple', '紫色'),
(856, 'apart', '分開'),
(857, 'spot', '點'),
(858, 'breath', '呼吸'),
(859, 'ink', '墨'),
(860, 'couple', '一對'),
(861, 'notice', '注意'),
(862, 'familiar', '熟悉的'),
(863, 'beer', '啤酒'),
(864, 'fashion', '時尚'),
(865, 'correct', '正確'),
(866, 'effort', '努力'),
(867, 'peace', '和平'),
(868, 'birth', '出生'),
(869, 'own', '擁有'),
(870, 'fit', '適合'),
(871, 'rail', '軌'),
(872, 'whole', '整個'),
(873, 'guess', '猜測'),
(874, 'spare', '備用'),
(875, 'bay', '灣'),
(876, 'fix', '固定'),
(877, 'bill', '法案'),
(878, 'limit', '限制'),
(879, 'respect', '尊重'),
(880, 'ahead', '先'),
(881, 'favor', '寵愛'),
(882, 'tear', '眼淚'),
(883, 'hunt', '狩獵'),
(884, 'check', '校驗'),
(885, 'opinion', '意見'),
(886, 'hang', '掛'),
(887, 'different', '不同'),
(888, 'storm', '風暴'),
(889, 'zero', '零'),
(890, 'soda', '蘇打'),
(891, 'mix', '混合'),
(892, 'reason', '原因'),
(893, 'jungle', '叢林'),
(894, 'similar', '類似'),
(895, 'sail', '帆'),
(896, 'cause', '原因'),
(897, 'dig', '挖'),
(898, 'mention', '提到'),
(899, 'boil', '煮'),
(900, 'condition', '條件'),
(901, 'shout', '喊'),
(902, 'draw', '畫'),
(903, 'fear', '恐懼'),
(904, 'sight', '視線'),
(905, 'figure', '數字'),
(906, 'quite', '相當'),
(907, 'double', '雙'),
(908, 'duty', '義務'),
(909, 'least', '最小'),
(910, 'nowhere', '無處'),
(911, 'nation', '國家'),
(912, 'steal', '偷'),
(913, 'view', '視圖'),
(914, 'regard', '看待'),
(915, 'nor', '也不'),
(916, 'profit', '利潤'),
(917, 'hammer', '錘子'),
(918, 'thumb', '拇指'),
(919, 'row', '行'),
(920, 'company', '公司'),
(921, 'burn', '燒傷'),
(922, 'nature', '性質'),
(923, 'thought', '思想'),
(924, 'charge', '收費'),
(925, 'manner', '方式'),
(926, 'flag', '旗'),
(927, 'aside', '在旁邊'),
(928, 'prepare', '準備'),
(929, 'tight', '緊'),
(930, 'belong', '屬於'),
(931, 'effect', '影響'),
(932, 'lemon', '檸檬'),
(933, 'value', '值'),
(934, 'lay', '躺下'),
(935, 'stupid', '笨'),
(936, 'angel', '天使'),
(937, 'steam', '蒸汽'),
(938, 'swallow', '吞'),
(939, 'edge', '邊緣'),
(940, 'sort', '分類'),
(941, 'complain', '抱怨'),
(942, 'successful', '成功的'),
(943, 'brave', '勇敢'),
(944, 'rate', '率'),
(945, 'mark', '標記'),
(946, 'term', '術語'),
(947, 'equal', '等於'),
(948, 'thus', '從而'),
(949, 'courage', '勇氣'),
(950, 'computer', '電腦'),
(951, 'weather', '天氣'),
(952, 'lack', '缺乏'),
(953, 'blind', '盲'),
(954, 'weapon', '武器'),
(955, 'upside', '上行空間'),
(956, 'knock', '敲'),
(957, 'record', '記錄'),
(958, 'forward', '向前'),
(959, 'weigh', '稱重'),
(960, 'weight', '重量'),
(961, 'brush', '刷'),
(962, 'inch', '英寸'),
(963, 'track', '跟踪'),
(964, 'surprise', '吃驚'),
(965, 'earn', '賺'),
(966, 'stick', '棒'),
(967, 'height', '高度'),
(968, 'deliver', '交付'),
(969, 'length', '長度'),
(970, 'fault', '故障'),
(971, 'sense', '感'),
(972, 'force', '力'),
(973, 'feather', '羽毛'),
(974, 'enemy', '敵人'),
(975, 'rank', '秩'),
(976, 'sofa', '沙發'),
(977, 'crazy', '瘋'),
(978, 'compare', '相比'),
(979, 'serve', '服務'),
(980, 'wipe', '擦拭'),
(981, 'rush', '趕'),
(982, 'purpose', '目的'),
(983, 'course', '課程'),
(984, 'style', '樣式'),
(985, 'attention', '注意'),
(986, 'mood', '心情'),
(987, 'bit', '一點'),
(988, 'knowledge', '知識'),
(989, 'cost', '成本'),
(990, 'danger', '危險'),
(991, 'blame', '怪'),
(992, 'sink', '下沉'),
(993, 'common', '共同'),
(994, 'subject', '學科'),
(995, 'trick', '特技'),
(996, 'bear', '熊'),
(997, 'rest', '休息'),
(998, 'result', '結果'),
(999, 'blood', '血液');

-- --------------------------------------------------------

--
-- 資料表結構 `member_data_list`
--

CREATE TABLE `member_data_list` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `idcode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `member_data_list`
--

INSERT INTO `member_data_list` (`sid`, `name`, `gender`, `birthday`, `idcode`, `mobile`, `address`, `email`, `account`, `password`, `create_at`) VALUES
(84, 'GM', 'male', '2019-01-01', 'A123456789', '0987987987', '106台北市大安區復興南路一段390號 2,3號15樓', '123@gmail.com', 'GM', 'rootroot', '2019-11-08 11:18:32'),
(87, 'Frank', 'female', '2018-01-01', 'A123456789', '0900123123', '207新北市萬里區1561561', 'frank@gmail.com', 'FRANK', '123123', '2019-11-11 09:02:31'),
(91, '24345354', 'female', '2019-01-01', 'A123456789', '0912345678', '200基隆市仁愛區3453453453', '453453@453543453', '453453', '123123', '2019-11-11 11:42:57'),
(93, '搞事仔', 'male', '2010-11-12', 'Z225588992', '0988168168', '632雲林縣虎尾鎮工專一街135巷48號', 'gogogo@gmail.com', '巴貝里奇', '123123', '2019-11-12 10:16:33'),
(94, 'frankk', 'male', '1997-06-05', 'A123456789', '0988123456', '640雲林縣斗六市雲林縣四湖鄉', 'aaa@iii', 'FRANKK', '123123', '2019-11-12 14:35:37'),
(95, 'realFrank', 'male', '2004-06-06', 'A123456789', '0985321654', '108台北市萬華區台北市大同區', 'frank@gmail.com', 'REALFRANK', '12345678', '2019-11-12 15:23:07');

-- --------------------------------------------------------

--
-- 資料表結構 `point_table`
--

CREATE TABLE `point_table` (
  `sid` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `point_table`
--

INSERT INTO `point_table` (`sid`, `account`, `point`, `create_at`) VALUES
(2, '123', 40, '2019-11-11 11:35:35'),
(3, 'AAA', 230, '2019-11-11 11:39:14'),
(12, '8961', 260, '2019-11-11 13:55:08'),
(22, '巴貝里奇', 400, '2019-11-12 10:18:56'),
(55, 'Frank', 70, '2019-11-08 00:00:00'),
(56, 'Frank', 60, '2019-11-22 00:00:00'),
(57, 'Frank', 20, '2019-11-24 00:00:00'),
(59, 'REALFRANK', 260, '2019-11-12 16:07:28'),
(61, 'Frank', 70, '0000-00-00 00:00:00');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `abc`
--
ALTER TABLE `abc`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `member_data_list`
--
ALTER TABLE `member_data_list`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `point_table`
--
ALTER TABLE `point_table`
  ADD PRIMARY KEY (`sid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `abc`
--
ALTER TABLE `abc`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- 使用資料表 AUTO_INCREMENT `member_data_list`
--
ALTER TABLE `member_data_list`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- 使用資料表 AUTO_INCREMENT `point_table`
--
ALTER TABLE `point_table`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;