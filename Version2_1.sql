-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 11. 03 2022 kl. 19:00:04
-- Serverversion: 10.4.22-MariaDB
-- PHP-version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `essentialmode`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0),
('property_black_money', 'Money Sale Property', 0),
('society_advokat', 'Advokat', 1),
('society_ambulance', 'EMS', 1),
('society_avocat', 'Advokat', 1),
('society_brothas', 'Brothas', 1),
('society_diablos', 'Diablos', 1),
('society_mechanic', 'Mekaniker', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('stash_black_money_3542', 'Stash Locker', 1),
('stash_cash_3542', 'Cash', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_advokat', 0, NULL),
(2, 'society_ambulance', 999659500, NULL),
(3, 'society_avocat', 0, 'NULL'),
(4, 'society_brothas', 0, 'NULL'),
(5, 'society_diablos', 0, 'NULL'),
(6, 'society_mechanic', 9033842, 'NULL'),
(7, 'society_police', 835519783, 'NULL'),
(8, 'society_taxi', 136900, 'NULL');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('society_avocat', 'Advokat', 1),
('stash_3542', 'Stash Locker', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `allhousing`
--

CREATE TABLE `allhousing` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `owned` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL,
  `resalepercent` int(11) NOT NULL,
  `resalejob` varchar(50) NOT NULL,
  `entry` longtext DEFAULT NULL,
  `garage` longtext DEFAULT NULL,
  `furniture` longtext DEFAULT NULL,
  `shell` varchar(50) NOT NULL,
  `interior` varchar(50) NOT NULL,
  `shells` longtext DEFAULT NULL,
  `doors` longtext DEFAULT NULL,
  `housekeys` longtext DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `inventorylocation` longtext DEFAULT NULL,
  `mortgage_owed` int(11) NOT NULL DEFAULT 0,
  `last_repayment` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `allhousing`
--

INSERT INTO `allhousing` (`id`, `owner`, `ownername`, `owned`, `price`, `resalepercent`, `resalejob`, `entry`, `garage`, `furniture`, `shell`, `interior`, `shells`, `doors`, `housekeys`, `wardrobe`, `inventory`, `inventorylocation`, `mortgage_owed`, `last_repayment`) VALUES
(1, '', '', 0, 25000, 0, '', '{\"y\":-1873.3399658203126,\"z\":23.0,\"w\":200.0,\"x\":54.25}', '{\"y\":-1881.72998046875,\"z\":22.5,\"w\":45.0,\"x\":58.77000045776367}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(2, '', '', 0, 25000, 0, '', '{\"y\":-1864.5,\"z\":23.5,\"w\":200.0,\"x\":45.72999954223633}', '{\"y\":-1852.8199462890626,\"z\":22.82999992370605,\"w\":135.0,\"x\":42.1500015258789}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(3, '', '', 0, 25000, 0, '', '{\"y\":-1854.449951171875,\"z\":24.20000076293945,\"w\":200.0,\"x\":29.85000038146972}', '[]', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(4, '', '', 0, 25000, 0, '', '{\"y\":-1844.3199462890626,\"z\":25.0,\"w\":200.0,\"x\":21.14999961853027}', '{\"y\":-1845.3499755859376,\"z\":24.29999923706054,\"w\":135.0,\"x\":10.06999969482421}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(5, '', '', 0, 25000, 0, '', '{\"y\":-1884.22998046875,\"z\":24.0,\"w\":200.0,\"x\":5.09000015258789}', '{\"y\":-1883.3699951171876,\"z\":23.14999961853027,\"w\":319.0,\"x\":15.1899995803833}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(6, '', '', 0, 25000, 0, '', '{\"y\":-1847.199951171875,\"z\":26.5,\"w\":200.0,\"x\":-34.13000106811523}', '[]', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(7, '', '', 0, 25000, 0, '', '{\"y\":-1858.719970703125,\"z\":25.60000038146972,\"w\":200.0,\"x\":-20.51000022888183}', '{\"y\":-1852.4300537109376,\"z\":25.09000015258789,\"w\":25.09000015258789,\"x\":-22.97999954223632}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(8, '', '', 0, 25000, 0, '', '{\"y\":-1872.18994140625,\"z\":24.5,\"w\":200.0,\"x\":-5.01999998092651}', '{\"y\":-1883.2900390625,\"z\":23.64999961853027,\"w\":315.5,\"x\":-4.86999988555908}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(9, '', '', 0, 25000, 0, '', '{\"y\":-1896.550048828125,\"z\":23.29999923706054,\"w\":200.0,\"x\":23.23999977111816}', '{\"y\":-1885.3499755859376,\"z\":22.17000007629394,\"w\":316.6499938964844,\"x\":18.02000045776367}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(10, '', '', 0, 25000, 0, '', '{\"y\":-1911.5899658203126,\"z\":22.29999923706054,\"w\":200.0,\"x\":39.11000061035156}', '{\"y\":-1924.1099853515626,\"z\":21.67000007629394,\"w\":316.6499938964844,\"x\":39.27000045776367}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(11, '', '', 0, 25000, 0, '', '{\"y\":-1922.6600341796876,\"z\":21.90999984741211,\"w\":200.0,\"x\":56.5099983215332}', '{\"y\":-1921.8599853515626,\"z\":21.32999992370605,\"w\":319.95001220703127,\"x\":68.0}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(12, '', '', 0, 25000, 0, '', '{\"y\":-1939.0899658203126,\"z\":21.3700008392334,\"w\":200.0,\"x\":72.18000030517578}', '[]', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(13, '', '', 0, 25000, 0, '', '{\"y\":-1948.1400146484376,\"z\":21.17000007629394,\"w\":200.0,\"x\":76.20999908447266}', '[]', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(14, '', '', 0, 25000, 0, '', '{\"y\":-1959.6800537109376,\"z\":21.1200008392334,\"w\":200.0,\"x\":85.88999938964844}', '{\"y\":-1971.300048828125,\"z\":20.75,\"w\":316.6499938964844,\"x\":85.61000061035156}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(15, '', '', 0, 25000, 0, '', '{\"y\":-1961.1099853515626,\"z\":21.32999992370605,\"w\":200.0,\"x\":114.19000244140625}', '{\"y\":-1957.2900390625,\"z\":20.75,\"w\":0.94999998807907,\"x\":103.76000213623047}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(16, '', '', 0, 25000, 0, '', '{\"y\":-1930.06005859375,\"z\":21.3799991607666,\"w\":200.0,\"x\":126.68000030517578}', '{\"y\":-1939.4300537109376,\"z\":20.65999984741211,\"w\":111.95999908447266,\"x\":127.58999633789063}', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(17, '', '', 0, 25000, 0, '', '{\"y\":-1921.1199951171876,\"z\":21.31999969482422,\"w\":200.0,\"x\":118.41999816894531}', '[]', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(18, '', '', 0, 25000, 0, '', '{\"y\":-1912.18994140625,\"z\":21.40999984741211,\"w\":200.0,\"x\":100.9000015258789}', '[]', '[]', 'HotelV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(19, '', '', 0, 55000, 0, '', '{\"y\":-574.5599975585938,\"z\":71.7300033569336,\"w\":160.6300048828125,\"x\":1301.0899658203126}', '{\"y\":-583.010009765625,\"z\":71.73999786376953,\"w\":343.0,\"x\":1291.0899658203126}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(20, '', '', 0, 55000, 0, '', '{\"y\":-582.9600219726563,\"z\":73.23999786376953,\"w\":0.15000000596046,\"x\":1323.3900146484376}', '{\"y\":-588.8599853515625,\"z\":72.93000030517578,\"w\":340.0,\"x\":1312.969970703125}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(21, '', '', 0, 55000, 0, '', '{\"y\":-597.1900024414063,\"z\":74.69999694824219,\"w\":220.3000030517578,\"x\":1341.3699951171876}', '{\"y\":-606.7000122070313,\"z\":74.3499984741211,\"w\":323.0,\"x\":1346.8599853515626}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(22, '', '', 0, 55000, 0, '', '{\"y\":-606.47998046875,\"z\":74.70999908447266,\"w\":0.75999999046325,\"x\":1367.219970703125}', '{\"y\":-615.8400268554688,\"z\":74.33000183105469,\"w\":360.0,\"x\":1360.2099609375}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(23, '', '', 0, 55000, 0, '', '{\"y\":-593.4099731445313,\"z\":74.4800033569336,\"w\":75.66000366210938,\"x\":1386.050048828125}', '{\"y\":-605.3200073242188,\"z\":74.33000183105469,\"w\":55.20999908447265,\"x\":1389.989990234375}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(24, '', '', 0, 55000, 0, '', '{\"y\":-569.6099853515625,\"z\":74.48999786376953,\"w\":135.97999572753907,\"x\":1388.9599609375}', '{\"y\":-572.2000122070313,\"z\":74.33000183105469,\"w\":115.19999694824219,\"x\":1400.969970703125}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(25, '', '', 0, 55000, 0, '', '{\"y\":-555.8400268554688,\"z\":74.68000030517578,\"w\":90.43000030517578,\"x\":1373.260009765625}', '{\"y\":-547.7999877929688,\"z\":74.33000183105469,\"w\":155.9499969482422,\"x\":1365.3900146484376}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(26, '', '', 0, 55000, 0, '', '{\"y\":-546.9000244140625,\"z\":73.88999938964844,\"w\":170.16000366210938,\"x\":1348.3399658203126}', '{\"y\":-541.3599853515625,\"z\":73.7699966430664,\"w\":160.61000061035157,\"x\":1358.3299560546876}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(27, '', '', 0, 55000, 0, '', '{\"y\":-536.0,\"z\":72.44000244140625,\"w\":90.20999908447266,\"x\":1328.5}', '{\"y\":-528.3300170898438,\"z\":72.12000274658203,\"w\":159.91000366210938,\"x\":1320.4100341796876}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(28, '', '', 0, 55000, 0, '', '{\"y\":-527.4600219726563,\"z\":71.45999908447266,\"w\":180.55999755859376,\"x\":1303.199951171875}', '{\"y\":-521.6900024414063,\"z\":71.30999755859375,\"w\":162.44000244140626,\"x\":1312.6600341796876}', '[]', 'ApartmentV1', '', '{\"ApartmentV1\":true,\"HotelV1\":true}', NULL, '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0),
(31, '3:110000118852a76', 'Hald', 0, 1, 1, 'police', '{\"y\":-470.51800537109377,\"z\":64.29708862304688,\"w\":72.53509521484375,\"x\":1051.0726318359376}', '{\"y\":-482.76336669921877,\"z\":63.87631225585937,\"w\":235.92747497558595,\"x\":1053.91455078125}', '[]', 'ApartmentV1', '0', '{\"ApartmentV1\":true}', '[]', '[]', '[]', '{\"Weapons\":[],\"Cash\":0,\"Items\":[],\"DirtyMoney\":0}', '[]', 0, 0);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `arrests_list`
--

CREATE TABLE `arrests_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `atganticheatsql`
--

CREATE TABLE `atganticheatsql` (
  `banId` bigint(20) NOT NULL,
  `steam` longtext DEFAULT NULL,
  `license` longtext NOT NULL,
  `xbl` longtext DEFAULT NULL,
  `ip` longtext NOT NULL,
  `discord` longtext DEFAULT NULL,
  `live` longtext DEFAULT NULL,
  `fivem` longtext DEFAULT NULL,
  `banTime` bigint(64) NOT NULL,
  `banLength` bigint(64) NOT NULL,
  `reason` longtext NOT NULL,
  `bannedBy` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `baninfo`
--

CREATE TABLE `baninfo` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `bank_transfer`
--

CREATE TABLE `bank_transfer` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `banlist`
--

CREATE TABLE `banlist` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `added` datetime DEFAULT current_timestamp(),
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` datetime DEFAULT current_timestamp(),
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `blackmarket`
--

CREATE TABLE `blackmarket` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `blackmarket`
--

INSERT INTO `blackmarket` (`id`, `store`, `item`, `price`) VALUES
(1, 'blackmarket', 'hackerDevice', 2500),
(3, 'blackmarket', 'lockpick', 100),
(4, 'blackmarket', 'rolpaper', 10),
(5, 'blackmarket', 'advancedlockpick', 1500),
(6, 'blackmarket', 'bank_c4', 5000),
(7, 'blackmarket', 'blowpipe', 1000),
(8, 'blackmarket', 'skudsikkervest', 500000);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `black_market`
--

CREATE TABLE `black_market` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `black_market`
--

INSERT INTO `black_market` (`id`, `item`, `price`, `stock`, `zone`, `category`) VALUES
(1, 'WEAPON_PISTOL', 300, 14, 'BlackMarket', 'pistol'),
(2, 'WEAPON_ASSAULTRIFLE', 10000, 9, 'BlackMarket', 'rifle'),
(3, 'WEAPON_HEAVYSNIPER', 30000, 4, 'BlackMarket', 'sniper'),
(4, 'WEAPON_PUMPSHOTGUN', 4000, 5, 'BlackMarket', 'shotgun'),
(5, 'WEAPON_SMG', 1500, 7, 'BlackMarket', 'smg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `bolos_list`
--

CREATE TABLE `bolos_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `borsa`
--

CREATE TABLE `borsa` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Label` varchar(50) NOT NULL,
  `Attuale` double DEFAULT NULL,
  `Min` double NOT NULL,
  `Max` double NOT NULL,
  `Med` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(75) NOT NULL,
  `blipname` varchar(75) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `earnings` int(11) NOT NULL,
  `position` text NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `stock_price` int(11) NOT NULL DEFAULT 100,
  `employees` text NOT NULL,
  `taxrate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `bwh_bans`
--

CREATE TABLE `bwh_bans` (
  `id` int(11) NOT NULL,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `length` datetime DEFAULT NULL,
  `reason` text NOT NULL,
  `unbanned` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `bwh_identifiers`
--

CREATE TABLE `bwh_identifiers` (
  `steam` varchar(60) NOT NULL,
  `license` varchar(60) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `xbl` varchar(60) DEFAULT NULL,
  `live` varchar(60) DEFAULT NULL,
  `discord` varchar(60) DEFAULT NULL,
  `fivem` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `bwh_warnings`
--

CREATE TABLE `bwh_warnings` (
  `id` int(11) NOT NULL,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `calls`
--

CREATE TABLE `calls` (
  `callid` mediumint(9) NOT NULL,
  `type` mediumtext NOT NULL,
  `location` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `police_grade` mediumtext NOT NULL,
  `rmu_grade` mediumtext NOT NULL,
  `channel` mediumtext NOT NULL,
  `caller` mediumint(9) NOT NULL,
  `status` mediumint(9) NOT NULL,
  `dateline` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `civilians`
--

CREATE TABLE `civilians` (
  `civid` bigint(20) NOT NULL,
  `name` mediumtext NOT NULL,
  `dob` mediumtext NOT NULL,
  `address` mediumtext NOT NULL,
  `markers` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `civilian_notes`
--

CREATE TABLE `civilian_notes` (
  `noteid` bigint(20) NOT NULL,
  `civid` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `note` mediumtext NOT NULL,
  `dateline` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Ejendom', 0),
('society_avocat', 'Advokat', 1),
('stash_3542', 'Stash Locker', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_advokat', NULL, '{}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_avocat', NULL, '{}'),
(4, 'society_diablos', NULL, '{}'),
(5, 'society_mechanic', NULL, '{}'),
(6, 'society_police', NULL, '{}'),
(7, 'society_taxi', NULL, '{}'),
(8, 'stash_3542', NULL, '{}');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `db_drugsystem`
--

CREATE TABLE `db_drugsystem` (
  `zone` varchar(50) NOT NULL,
  `control` varchar(50) NOT NULL,
  `influence` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `doors`
--

CREATE TABLE `doors` (
  `index` int(11) NOT NULL,
  `door` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `doors`
--

INSERT INTO `doors` (`index`, `door`) VALUES
(34, '{\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_rot\":{\"y\":-179.77420043945313,\"z\":90.00000762939453,\"x\":4.002064812880235e-8},\"door_model\":-1635161509,\"door_loc\":{\"y\":-1024.219970703125,\"z\":29.220199584960939,\"x\":410.0257873535156},\"reposition\":true},{\"door_rot\":{\"y\":-179.77420043945313,\"z\":90.00000762939453,\"x\":4.002064812880235e-8},\"door_model\":-1868050792,\"door_loc\":{\"y\":-1024.2259521484376,\"z\":29.2202205657959,\"x\":410.0257873535156},\"reposition\":true}],\"auth_items\":[],\"break_items\":[],\"interact_in_veh\":true,\"draw\":20.0,\"text_loc\":{\"y\":-1024.222900390625,\"z\":29.220211029052736,\"x\":410.0257873535156},\"dist\":20.0,\"locked\":true}'),
(35, '{\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_rot\":{\"y\":-0.0,\"z\":-0.0,\"x\":0.0},\"door_model\":-1547307588,\"door_loc\":{\"y\":-998.7462158203125,\"z\":30.815303802490236,\"x\":440.73919677734377},\"reposition\":true},{\"door_rot\":{\"y\":-0.0,\"z\":-179.99998474121095,\"x\":0.0},\"door_model\":-1547307588,\"door_loc\":{\"y\":-998.7462158203125,\"z\":30.815303802490236,\"x\":443.061767578125},\"reposition\":true}],\"auth_items\":[],\"break_items\":[],\"interact_in_veh\":false,\"draw\":10.0,\"text_loc\":{\"y\":-998.7462158203125,\"z\":30.815303802490236,\"x\":441.9004821777344},\"dist\":5.0,\"locked\":true}'),
(37, '{\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_rot\":{\"y\":0.0,\"z\":89.9999771118164,\"x\":0.0},\"door_model\":-1406685646,\"door_loc\":{\"y\":-984.201416015625,\"z\":30.823192596435548,\"x\":445.4067077636719},\"reposition\":true}],\"text_loc\":{\"y\":-983.597412109375,\"z\":30.823192596435548,\"x\":445.4067077636719},\"draw\":10.0,\"dist\":5.0,\"break_items\":[],\"auth_items\":[],\"locked\":true}'),
(39, '{\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_rot\":{\"y\":-0.0,\"z\":-179.99998474121095,\"x\":0.0},\"door_model\":-1547307588,\"door_loc\":{\"y\":-972.2542724609375,\"z\":30.8153076171875,\"x\":458.208740234375},\"reposition\":true},{\"door_rot\":{\"y\":-0.0,\"z\":-0.0,\"x\":0.0},\"door_model\":-1547307588,\"door_loc\":{\"y\":-972.2542724609375,\"z\":30.8153076171875,\"x\":455.88616943359377},\"reposition\":true}],\"text_loc\":{\"y\":-972.2542724609375,\"z\":30.8153076171875,\"x\":457.0474548339844},\"draw\":10.0,\"dist\":5.0,\"break_items\":[],\"auth_items\":[],\"locked\":true}'),
(40, '{\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_rot\":{\"y\":-9.998153416290734e-8,\"z\":-179.71615600585938,\"x\":-0.00002001152461161837},\"door_model\":-96679321,\"door_loc\":{\"y\":-986.2334594726563,\"z\":30.823192596435548,\"x\":440.52008056640627},\"reposition\":true}],\"text_loc\":{\"y\":-986.23046875,\"z\":30.823192596435548,\"x\":441.12408447265627},\"draw\":10.0,\"dist\":5.0,\"break_items\":[],\"auth_items\":[],\"locked\":true}'),
(41, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":434.74444580078127,\"y\":-983.078125,\"z\":30.815303802490236},\"door_rot\":{\"x\":-1.3622339167795872e-7,\"y\":-7.127423096164875e-10,\"z\":89.91094970703125},\"door_model\":-1547307588},{\"reposition\":true,\"door_loc\":{\"x\":434.74444580078127,\"y\":-980.7555541992188,\"z\":30.815303802490236},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-90.01729583740235},\"door_model\":-1547307588}],\"text_loc\":{\"x\":434.74444580078127,\"y\":-981.9168701171875,\"z\":30.815303802490236},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(42, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":458.08941650390627,\"y\":-995.524658203125,\"z\":30.823192596435548},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-134.9717559814453},\"door_model\":149284793}],\"text_loc\":{\"x\":457.6625061035156,\"y\":-995.9519653320313,\"z\":30.823192596435548},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(44, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":458.6543273925781,\"y\":-990.6497802734375,\"z\":30.823192596435548},\"door_rot\":{\"x\":-0.0,\"y\":-0.0,\"z\":-89.9999771118164},\"door_model\":-96679321}],\"text_loc\":{\"x\":458.6543273925781,\"y\":-990.0457763671875,\"z\":30.823192596435548},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(45, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":458.6543273925781,\"y\":-976.8864135742188,\"z\":30.823192596435548},\"door_rot\":{\"x\":-0.0,\"y\":-0.0,\"z\":-89.9999771118164},\"door_model\":-1406685646}],\"text_loc\":{\"x\":458.6543273925781,\"y\":-977.4904174804688,\"z\":30.823192596435548},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(46, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":469.44061279296877,\"y\":-985.0313110351563,\"z\":30.823192596435548},\"door_rot\":{\"x\":-1.703899417630631e-16,\"y\":3.7978578383441127e-17,\"z\":-90.10542297363281},\"door_model\":-288803980},{\"reposition\":true,\"door_loc\":{\"x\":469.44061279296877,\"y\":-987.4376831054688,\"z\":30.823192596435548},\"door_rot\":{\"x\":0.0,\"y\":0.0,\"z\":89.9999771118164},\"door_model\":-288803980}],\"text_loc\":{\"x\":469.44061279296877,\"y\":-986.2344970703125,\"z\":30.823192596435548},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(47, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":475.3836975097656,\"y\":-989.82470703125,\"z\":30.823192596435548},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-179.99998474121095},\"door_model\":-1406685646},{\"reposition\":true,\"door_loc\":{\"x\":472.9776916503906,\"y\":-989.82470703125,\"z\":30.823192596435548},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-179.99998474121095},\"door_model\":-96679321}],\"text_loc\":{\"x\":474.1806945800781,\"y\":-989.82470703125,\"z\":30.823192596435548},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(48, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":479.7533874511719,\"y\":-986.215087890625,\"z\":30.823192596435548},\"door_rot\":{\"x\":-0.0,\"y\":-0.0,\"z\":-89.9999771118164},\"door_model\":-1406685646},{\"reposition\":true,\"door_loc\":{\"x\":479.7533874511719,\"y\":-988.620361328125,\"z\":30.823192596435548},\"door_rot\":{\"x\":-0.0,\"y\":-0.0,\"z\":-89.99996948242188},\"door_model\":-96679321}],\"text_loc\":{\"x\":479.7533874511719,\"y\":-987.417724609375,\"z\":30.823192596435548},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(49, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":476.75115966796877,\"y\":-999.6306762695313,\"z\":30.823192596435548},\"door_rot\":{\"x\":0.0,\"y\":0.0,\"z\":89.9999771118164},\"door_model\":-1406685646}],\"text_loc\":{\"x\":476.75115966796877,\"y\":-999.0266723632813,\"z\":30.823192596435548},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(51, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":487.4378356933594,\"y\":-1000.1892700195313,\"z\":30.786972045898439},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-178.71998596191407},\"door_model\":-692649124}],\"text_loc\":{\"x\":486.83642578125,\"y\":-1000.2026977539063,\"z\":30.786972045898439},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(52, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":488.0184326171875,\"y\":-1002.9019775390625,\"z\":30.786972045898439},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-179.99998474121095},\"door_model\":-692649124},{\"reposition\":true,\"door_loc\":{\"x\":485.61334228515627,\"y\":-1002.9019775390625,\"z\":30.786972045898439},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-0.0},\"door_model\":-692649124}],\"text_loc\":{\"x\":486.8158874511719,\"y\":-1002.9019775390625,\"z\":30.786972045898439},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(54, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":448.98681640625,\"y\":-990.2007446289063,\"z\":35.103763580322269},\"door_rot\":{\"x\":0.0,\"y\":0.0,\"z\":45.0281982421875},\"door_model\":-1406685646}],\"text_loc\":{\"x\":449.4137268066406,\"y\":-989.7734375,\"z\":35.103763580322269},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(55, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":448.98455810546877,\"y\":-995.5263671875,\"z\":35.103763580322269},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":134.97177124023438},\"door_model\":-96679321}],\"text_loc\":{\"x\":449.4114685058594,\"y\":-995.9536743164063,\"z\":35.103763580322269},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(56, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":459.9454040527344,\"y\":-990.705322265625,\"z\":35.103981018066409},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-0.0},\"door_model\":-96679321}],\"text_loc\":{\"x\":459.34136962890627,\"y\":-990.705322265625,\"z\":35.103981018066409},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(57, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":459.9454040527344,\"y\":-981.0741577148438,\"z\":35.103981018066409},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-179.99998474121095},\"door_model\":-1406685646}],\"text_loc\":{\"x\":459.34136962890627,\"y\":-981.0741577148438,\"z\":35.103981018066409},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(58, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":464.3085632324219,\"y\":-984.5284423828125,\"z\":43.771240234375},\"door_rot\":{\"x\":0.0,\"y\":0.0,\"z\":89.9999771118164},\"door_model\":-692649124}],\"text_loc\":{\"x\":464.3085632324219,\"y\":-983.9268798828125,\"z\":43.771240234375},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(60, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":469.7742614746094,\"y\":-1014.406005859375,\"z\":26.483816146850587},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-179.99998474121095},\"door_model\":-692649124},{\"reposition\":true,\"door_loc\":{\"x\":467.3686218261719,\"y\":-1014.406005859375,\"z\":26.483816146850587},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-0.0},\"door_model\":-692649124}],\"text_loc\":{\"x\":468.5714416503906,\"y\":-1014.406005859375,\"z\":26.483816146850587},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(64, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":469.9273681640625,\"y\":-1000.543701171875,\"z\":26.40548324584961},\"door_rot\":{\"x\":-0.001397888408973813,\"y\":0.0005504916771315038,\"z\":-179.6747589111328},\"door_model\":-288803980},{\"reposition\":true,\"door_loc\":{\"x\":467.522216796875,\"y\":-1000.543701171875,\"z\":26.40548324584961},\"door_rot\":{\"x\":-0.0007129915757104754,\"y\":-0.00045708013931289315,\"z\":0.07679484039545059},\"door_model\":-288803980}],\"text_loc\":{\"x\":468.72479248046877,\"y\":-1000.543701171875,\"z\":26.40548324584961},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(65, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":471.36785888671877,\"y\":-1007.7933959960938,\"z\":26.40548324584961},\"door_rot\":{\"x\":-1.754443673538308e-15,\"y\":-1.379252070678351e-16,\"z\":-89.94476318359375},\"door_model\":149284793},{\"reposition\":true,\"door_loc\":{\"x\":471.3758239746094,\"y\":-1010.1978759765625,\"z\":26.40548324584961},\"door_rot\":{\"x\":-0.00004375596108729951,\"y\":0.00010417884914204478,\"z\":90.07685089111328},\"door_model\":149284793}],\"text_loc\":{\"x\":471.371826171875,\"y\":-1008.99560546875,\"z\":26.40548324584961},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(66, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":475.953857421875,\"y\":-1006.9378051757813,\"z\":26.40638542175293},\"door_rot\":{\"x\":-4.0172190018950008e-9,\"y\":1.865472915030253e-10,\"z\":-179.79428100585938},\"door_model\":-288803980}],\"text_loc\":{\"x\":475.3498229980469,\"y\":-1006.9400024414063,\"z\":26.40638542175293},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(67, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":475.953857421875,\"y\":-1010.8193359375,\"z\":26.40638542175293},\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-179.99998474121095},\"door_model\":-1406685646}],\"text_loc\":{\"x\":475.3498229980469,\"y\":-1010.8193359375,\"z\":26.40638542175293},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(68, '{\"break_items\":[],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":476.6156921386719,\"y\":-1008.8754272460938,\"z\":26.48005485534668},\"door_rot\":{\"x\":-1.0617505054273452e-15,\"y\":6.522614268023182e-17,\"z\":-90.12603759765625},\"door_model\":-53345114}],\"text_loc\":{\"x\":476.6474914550781,\"y\":-1008.2842407226563,\"z\":26.48005485534668},\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(69, '{\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1014.0839233398438,\"z\":25.567832946777345,\"x\":476.2979736328125},\"door_model\":-1543210774,\"door_rot\":{\"y\":-0.0,\"z\":-92.07001495361328,\"x\":0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":[],\"dist\":5.0,\"break_items\":[],\"text_loc\":{\"y\":-1013.8209228515625,\"z\":25.567832946777345,\"x\":476.4095458984375}}'),
(70, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-1012.1886596679688,\"z\":26.48005485534668,\"x\":477.91259765625},\"door_model\":-53345114,\"door_rot\":{\"y\":4.4154971345911067e-10,\"z\":-0.1800774782896042,\"x\":-1.6547868630922836e-9}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-1012.1563110351563,\"z\":26.48005485534668,\"x\":477.32147216796877}}'),
(72, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-1012.1886596679688,\"z\":26.48005485534668,\"x\":483.9127197265625},\"door_model\":-53345114,\"door_rot\":{\"y\":-0.0,\"z\":-0.0,\"x\":0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-1012.1581420898438,\"z\":26.48005485534668,\"x\":483.3215026855469}}'),
(73, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-1012.1886596679688,\"z\":26.48005485534668,\"x\":486.9131164550781},\"door_model\":-53345114,\"door_rot\":{\"y\":-0.0,\"z\":-0.0,\"x\":0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-1012.1581420898438,\"z\":26.48005485534668,\"x\":486.3218994140625}}'),
(74, '{\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1007.734375,\"z\":26.48005485534668,\"x\":484.1764221191406},\"door_model\":-53345114,\"door_rot\":{\"y\":5.339494037887027e-12,\"z\":-179.51461791992188,\"x\":-5.839653760553176e-10}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"dist\":5.0,\"break_items\":[],\"text_loc\":{\"y\":-1007.7598876953125,\"z\":26.48005485534668,\"x\":484.76788330078127}}'),
(75, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-1007.734375,\"z\":26.48005485534668,\"x\":484.1764221191406},\"door_model\":-53345114,\"door_rot\":{\"y\":5.339494037887027e-12,\"z\":-179.51461791992188,\"x\":-5.839653760553176e-10}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-1007.7598876953125,\"z\":26.48005485534668,\"x\":484.76788330078127}}'),
(76, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-1004.1179809570313,\"z\":26.48005485534668,\"x\":481.00836181640627},\"door_model\":-53345114,\"door_rot\":{\"y\":-0.0,\"z\":-179.99998474121095,\"x\":0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-1004.1484985351563,\"z\":26.48005485534668,\"x\":481.5995788574219}}'),
(77, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-1003.1729736328125,\"z\":26.406503677368165,\"x\":479.0599670410156},\"door_model\":-288803980,\"door_rot\":{\"y\":-1.4007724516067777e-26,\"z\":89.78148651123047,\"x\":-1.0049271461478787e-23}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-1002.5689697265625,\"z\":26.406503677368165,\"x\":479.062255859375}}'),
(78, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-997.9099731445313,\"z\":26.406503677368165,\"x\":479.66375732421877},\"door_model\":149284793,\"door_rot\":{\"y\":-0.0,\"z\":-0.0,\"x\":0.0}},{\"reposition\":true,\"door_loc\":{\"y\":-997.9099731445313,\"z\":26.406503677368165,\"x\":482.0685729980469},\"door_model\":149284793,\"door_rot\":{\"y\":-0.0,\"z\":-179.99998474121095,\"x\":0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-997.9099731445313,\"z\":26.406503677368165,\"x\":480.86614990234377}}'),
(79, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-995.728515625,\"z\":26.40548324584961,\"x\":482.6702575683594},\"door_model\":-1406685646,\"door_rot\":{\"y\":-0.0,\"z\":-89.9999771118164,\"x\":-0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-996.33251953125,\"z\":26.40548324584961,\"x\":482.6702575683594}}'),
(80, '{\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-992.2991333007813,\"z\":26.40548324584961,\"x\":482.669921875},\"door_model\":-1406685646,\"door_rot\":{\"y\":-0.0,\"z\":-89.9999771118164,\"x\":-0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"dist\":5.0,\"break_items\":[],\"text_loc\":{\"y\":-992.9031372070313,\"z\":26.40548324584961,\"x\":482.669921875}}'),
(81, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-992.2991333007813,\"z\":26.40548324584961,\"x\":482.669921875},\"door_model\":-1406685646,\"door_rot\":{\"y\":-0.0,\"z\":-89.9999771118164,\"x\":-0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-992.9031372070313,\"z\":26.40548324584961,\"x\":482.669921875}}'),
(82, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-987.5791625976563,\"z\":26.40548324584961,\"x\":482.6701354980469},\"door_model\":-1406685646,\"door_rot\":{\"y\":-0.0,\"z\":-89.9999771118164,\"x\":-0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-988.1831665039063,\"z\":26.40548324584961,\"x\":482.6701354980469}}'),
(83, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-983.98681640625,\"z\":26.40548324584961,\"x\":482.66943359375},\"door_model\":-1406685646,\"door_rot\":{\"y\":-0.0,\"z\":-89.9999771118164,\"x\":-0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-984.5908203125,\"z\":26.40548324584961,\"x\":482.66943359375}}'),
(84, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-985.0323486328125,\"z\":26.40548324584961,\"x\":479.0624084472656},\"door_model\":149284793,\"door_rot\":{\"y\":-0.0,\"z\":-89.9999771118164,\"x\":-0.0}},{\"reposition\":true,\"door_loc\":{\"y\":-987.4375610351563,\"z\":26.40548324584961,\"x\":479.0624084472656},\"door_model\":149284793,\"door_rot\":{\"y\":0.0,\"z\":89.9999771118164,\"x\":0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-986.2349853515625,\"z\":26.40548324584961,\"x\":479.0624084472656}}'),
(85, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-997.9100952148438,\"z\":26.40548324584961,\"x\":478.2891540527344},\"door_model\":149284793,\"door_rot\":{\"y\":-0.0,\"z\":-179.99998474121095,\"x\":0.0}}],\"draw\":10.0,\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"break_items\":[],\"dist\":5.0,\"text_loc\":{\"y\":-997.9100952148438,\"z\":26.40548324584961,\"x\":477.68511962890627}}'),
(90, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-574.3463134765625,\"z\":43.43391036987305,\"x\":320.26153564453127},\"door_model\":-1700911976,\"door_rot\":{\"y\":-0.0,\"z\":-19.999963760375978,\"x\":-0.0}},{\"reposition\":true,\"door_loc\":{\"y\":-573.4658813476563,\"z\":43.43391036987305,\"x\":317.8425598144531},\"door_model\":-434783486,\"door_rot\":{\"y\":-0.0,\"z\":-19.999963760375978,\"x\":-0.0}}],\"break_items\":[],\"auth_items\":[],\"locked\":true,\"auth_jobs\":{\"ambulance\":{\"min_rank\":0}},\"draw\":10.0,\"dist\":5.0,\"allow_raid\":true,\"text_loc\":{\"y\":-573.9061279296875,\"z\":43.43391036987305,\"x\":319.05206298828127}}'),
(95, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-580.1403198242188,\"z\":43.43391036987305,\"x\":336.162841796875},\"door_model\":854291622,\"door_rot\":{\"y\":-0.0,\"z\":-19.999963760375978,\"x\":-0.0}}],\"break_items\":[],\"auth_items\":[],\"locked\":true,\"auth_jobs\":{\"ambulance\":{\"min_rank\":0}},\"draw\":10.0,\"dist\":5.0,\"allow_raid\":true,\"text_loc\":{\"y\":-580.3631591796875,\"z\":43.43391036987305,\"x\":336.7749938964844}}'),
(100, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-559.9127197265625,\"z\":28.94723892211914,\"x\":321.01483154296877},\"door_model\":-1421582160,\"door_rot\":{\"y\":0.0,\"z\":25.00598907470703,\"x\":0.0}},{\"reposition\":true,\"door_loc\":{\"y\":-561.0086059570313,\"z\":28.94723892211914,\"x\":318.6656188964844},\"door_model\":1248599813,\"door_rot\":{\"y\":-0.0,\"z\":-154.99386596679688,\"x\":0.0}}],\"break_items\":[],\"auth_items\":[],\"interact_in_veh\":false,\"locked\":true,\"auth_jobs\":{\"ambulance\":{\"min_rank\":0}},\"draw\":10.0,\"dist\":5.0,\"allow_raid\":true,\"text_loc\":{\"y\":-560.460693359375,\"z\":28.94723892211914,\"x\":319.8402099609375}}'),
(102, '{\"objects\":[{\"reposition\":true,\"door_loc\":{\"y\":-1607.3861083984376,\"z\":28.341655731201173,\"x\":397.8851013183594},\"door_model\":1286535678,\"door_rot\":{\"y\":-0.0,\"z\":140.00001525878907,\"x\":0.0}}],\"draw\":20.0,\"auth_items\":[],\"interact_in_veh\":true,\"locked\":true,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1609.7369384765626,\"z\":29.88926124572754,\"x\":400.79150390625},\"dist\":20.0,\"break_items\":[]}'),
(103, '{\"text_loc\":{\"y\":-1000.7828979492188,\"x\":452.3005065917969,\"z\":26.74456977844238},\"interact_in_veh\":true,\"auth_items\":[],\"break_items\":[],\"locked\":true,\"dist\":20.0,\"objects\":[{\"door_rot\":{\"y\":1.2005462596276218e-11,\"x\":-1.71411192417144,\"z\":6.193229956652502e-11},\"reposition\":true,\"door_loc\":{\"y\":-1000.7828979492188,\"x\":452.3005065917969,\"z\":26.74456977844238},\"door_model\":2130672747}],\"draw\":20.0,\"auth_jobs\":{\"police\":{\"min_rank\":0}}}'),
(104, '{\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"text_loc\":{\"y\":-975.2671508789063,\"x\":464.1552429199219,\"z\":26.3707046508789},\"objects\":[{\"door_rot\":{\"y\":-7.361948724249335e-12,\"x\":9.477401086144255e-10,\"z\":-90.36270904541016},\"reposition\":true,\"door_loc\":{\"y\":-974.6655883789063,\"x\":464.1590576171875,\"z\":26.3707046508789},\"door_model\":1830360419}],\"draw\":10.0,\"dist\":5.0,\"auth_items\":[]}'),
(105, '{\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"dist\":5.0,\"objects\":[{\"door_rot\":{\"y\":8.072097677780388e-12,\"x\":7.453573348803478e-12,\"z\":0.3729281425476},\"reposition\":true,\"door_loc\":{\"y\":-992.0482177734375,\"x\":475.61138916015627,\"z\":26.51180648803711},\"door_model\":-1258679973}],\"draw\":10.0,\"text_loc\":{\"y\":-992.0517578125,\"x\":475.0682067871094,\"z\":26.51180648803711},\"auth_items\":[]}'),
(106, '{\"text_loc\":{\"y\":-1014.6469116210938,\"x\":459.59686279296877,\"z\":29.15138435363769},\"interact_in_veh\":true,\"auth_items\":[],\"break_items\":[],\"locked\":true,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_rot\":{\"y\":-0.00001119517764,\"x\":-1.49525761604309,\"z\":-90.00006103515625},\"reposition\":true,\"door_loc\":{\"y\":-1014.64599609375,\"x\":459.54052734375,\"z\":29.15138435363769},\"door_model\":-190780785}],\"draw\":20.0,\"dist\":20.0}'),
(107, '{\"text_loc\":{\"y\":-1019.6998901367188,\"x\":459.5971984863281,\"z\":29.12912368774414},\"interact_in_veh\":true,\"auth_items\":[],\"break_items\":[],\"locked\":true,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_rot\":{\"y\":-0.00001870528285,\"x\":-1.4442571401596,\"z\":-90.00005340576172},\"reposition\":true,\"door_loc\":{\"y\":-1019.698974609375,\"x\":459.5408630371094,\"z\":29.12912368774414},\"door_model\":-190780785}],\"draw\":20.0,\"dist\":20.0}'),
(108, '{\"text_loc\":{\"y\":-982.0065307617188,\"x\":449.4129943847656,\"z\":35.10376358032226},\"interact_in_veh\":true,\"auth_items\":[],\"break_items\":[],\"locked\":true,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_rot\":{\"y\":-9.640388487497376e-10,\"x\":0.00011721083137,\"z\":134.8736114501953},\"reposition\":true,\"door_loc\":{\"y\":-981.5784912109375,\"x\":448.98681640625,\"z\":35.10376358032226},\"door_model\":-96679321}],\"draw\":10.0,\"dist\":5.0}'),
(109, '{\"draw\":10.0,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"break_items\":[],\"auth_items\":[],\"locked\":true,\"dist\":5.0,\"text_loc\":{\"z\":30.7891674041748,\"y\":-999.0274658203125,\"x\":479.7518005371094},\"objects\":[{\"door_rot\":{\"z\":89.89911651611328,\"y\":-0.00044932664604,\"x\":0.00035178515827},\"door_loc\":{\"z\":30.7891674041748,\"y\":-999.6290283203125,\"x\":479.750732421875},\"reposition\":true,\"door_model\":-692649124}]}'),
(111, '{\"draw\":10.0,\"auth_jobs\":[],\"objects\":[{\"door_rot\":{\"z\":-45.00006484985351,\"y\":-0.0,\"x\":-0.0},\"door_model\":1413743677,\"reposition\":true,\"door_loc\":{\"z\":46.90217971801758,\"y\":4969.3720703125,\"x\":2453.184326171875}}],\"locked\":true,\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":46.90217971801758,\"y\":4969.82275390625,\"x\":2452.71826171875},\"break_items\":[]}'),
(112, '{\"objects\":[{\"door_rot\":{\"z\":-45.00006484985351,\"y\":-0.0,\"x\":-0.0},\"door_model\":1413743677,\"reposition\":true,\"door_loc\":{\"z\":46.90217971801758,\"y\":4969.3720703125,\"x\":2453.184326171875}}],\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":46.90217971801758,\"y\":4969.82275390625,\"x\":2452.71826171875},\"draw\":10.0,\"auth_jobs\":{\"brothas\":{\"min_rank\":0}},\"allow_raid\":true,\"locked\":true,\"break_items\":[]}'),
(113, '{\"objects\":[{\"door_rot\":{\"z\":-134.46923828125,\"y\":-0.00008233232074,\"x\":-0.00007827446825},\"door_model\":1413743677,\"reposition\":true,\"door_loc\":{\"z\":46.90217971801758,\"y\":4988.77783203125,\"x\":2448.640625}}],\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":46.90217971801758,\"y\":4989.248046875,\"x\":2449.0869140625},\"draw\":10.0,\"auth_jobs\":{\"brothas\":{\"min_rank\":0}},\"allow_raid\":true,\"locked\":true,\"break_items\":[]}'),
(114, '{\"objects\":[{\"door_rot\":{\"z\":135.14627075195313,\"y\":0.00006137834861,\"x\":-0.000053610147},\"door_model\":1194028902,\"reposition\":true,\"door_loc\":{\"z\":51.81630325317383,\"y\":4985.69189453125,\"x\":2450.02001953125}},{\"door_rot\":{\"z\":-45.13605117797851,\"y\":-0.00002842859612,\"x\":-0.00002275084443},\"door_model\":1194028902,\"reposition\":true,\"door_loc\":{\"z\":51.81630325317383,\"y\":4984.095703125,\"x\":2451.615966796875}}],\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":51.81630325317383,\"y\":4984.8935546875,\"x\":2450.81787109375},\"draw\":10.0,\"auth_jobs\":{\"brothas\":{\"min_rank\":0}},\"allow_raid\":true,\"locked\":true,\"break_items\":[]}'),
(115, '{\"objects\":[{\"door_rot\":{\"z\":45.09640502929687,\"y\":0.00016464950749,\"x\":-0.00013729455531},\"door_model\":1194028902,\"reposition\":true,\"door_loc\":{\"z\":51.81630325317383,\"y\":4975.33837890625,\"x\":2455.49853515625}},{\"door_rot\":{\"z\":-134.9265594482422,\"y\":-0.00006920545274,\"x\":0.00010898650361},\"door_model\":1194028902,\"reposition\":true,\"door_loc\":{\"z\":51.81630325317383,\"y\":4973.74267578125,\"x\":2453.902587890625}}],\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":51.81630325317383,\"y\":4974.54052734375,\"x\":2454.70068359375},\"draw\":10.0,\"auth_jobs\":{\"brothas\":{\"min_rank\":0}},\"allow_raid\":true,\"locked\":true,\"break_items\":[]}'),
(117, '{\"objects\":[{\"door_rot\":{\"z\":-44.49372482299805,\"y\":0.00016736796533,\"x\":0.00016284776211},\"door_model\":-5479653,\"reposition\":true,\"door_loc\":{\"z\":51.6573600769043,\"y\":4974.669921875,\"x\":2448.034423828125}}],\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":51.6573600769043,\"y\":4975.1162109375,\"x\":2447.564453125},\"draw\":10.0,\"auth_jobs\":{\"brothas\":{\"min_rank\":0}},\"allow_raid\":true,\"locked\":true,\"break_items\":[]}'),
(118, '{\"objects\":[{\"door_rot\":{\"z\":134.9999237060547,\"y\":-0.0,\"x\":0.0},\"door_model\":1194028902,\"reposition\":true,\"door_loc\":{\"z\":51.81630325317383,\"y\":4981.30126953125,\"x\":2441.465087890625}},{\"door_rot\":{\"z\":-45.00006484985351,\"y\":-0.0,\"x\":-0.0},\"door_model\":1194028902,\"reposition\":true,\"door_loc\":{\"z\":51.81630325317383,\"y\":4979.70556640625,\"x\":2443.061279296875}}],\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":51.81630325317383,\"y\":4980.50341796875,\"x\":2442.26318359375},\"draw\":10.0,\"auth_jobs\":{\"brothas\":{\"min_rank\":0}},\"allow_raid\":true,\"locked\":true,\"break_items\":[]}'),
(119, '{\"objects\":[{\"door_rot\":{\"z\":-45.30584335327148,\"y\":0.00006486033089,\"x\":0.00038904088432},\"door_model\":1413743677,\"reposition\":true,\"door_loc\":{\"z\":46.90217971801758,\"y\":4981.73046875,\"x\":2441.017333984375}}],\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":46.90217971801758,\"y\":4982.18359375,\"x\":2440.5537109375},\"draw\":10.0,\"auth_jobs\":{\"brothas\":{\"min_rank\":0}},\"allow_raid\":true,\"locked\":true,\"break_items\":[]}'),
(120, '{\"objects\":[{\"door_rot\":{\"z\":134.9999237060547,\"y\":-0.0,\"x\":0.0},\"door_model\":479144380,\"reposition\":true,\"door_loc\":{\"z\":46.90217971801758,\"y\":4969.51611328125,\"x\":2436.79833984375}},{\"door_rot\":{\"z\":-45.00006484985351,\"y\":-0.0,\"x\":-0.0},\"door_model\":479144380,\"reposition\":true,\"door_loc\":{\"z\":46.90217971801758,\"y\":4967.68212890625,\"x\":2438.635009765625}}],\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":46.90217971801758,\"y\":4968.59912109375,\"x\":2437.716796875},\"draw\":10.0,\"auth_jobs\":{\"brothas\":{\"min_rank\":0}},\"allow_raid\":true,\"locked\":true,\"break_items\":[]}'),
(121, '{\"objects\":[{\"door_rot\":{\"z\":-134.8890838623047,\"y\":-0.00007588748849,\"x\":0.0001931120787},\"door_model\":1413743677,\"reposition\":true,\"door_loc\":{\"z\":46.90217971801758,\"y\":4975.02490234375,\"x\":2435.429443359375}}],\"auth_items\":[],\"dist\":5.0,\"text_loc\":{\"z\":46.90217971801758,\"y\":4975.49169921875,\"x\":2435.879150390625},\"draw\":10.0,\"auth_jobs\":{\"brothas\":{\"min_rank\":0}},\"allow_raid\":true,\"locked\":true,\"break_items\":[]}'),
(122, '{\"break_items\":[],\"text_loc\":{\"z\":30.82319259643554,\"y\":-977.6023559570313,\"x\":441.1241149902344},\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"draw\":10.0,\"objects\":[{\"reposition\":true,\"door_rot\":{\"z\":-0.1216986477375,\"y\":0.00078924489207,\"x\":0.00002780644172},\"door_loc\":{\"z\":30.82319259643554,\"y\":-977.60107421875,\"x\":440.52008056640627},\"door_model\":-1406685646}],\"dist\":5.0,\"auth_items\":[],\"locked\":true}'),
(123, '{\"draw\":5.0,\"allow_raid\":true,\"auth_jobs\":{\"crips\":{\"min_rank\":0}},\"auth_items\":[],\"break_items\":[],\"text_loc\":{\"z\":29.63846969604492,\"x\":-22.31591033935547,\"y\":-1392.8050537109376},\"locked\":true,\"dist\":2.5,\"objects\":[{\"door_model\":-2003105485,\"reposition\":false,\"door_rot\":{\"z\":-179.50912475585938,\"x\":0.0,\"y\":-0.0},\"door_loc\":{\"z\":29.63846969604492,\"x\":-21.71275901794433,\"y\":-1392.778076171875}}]}'),
(124, '{\"draw\":5.0,\"allow_raid\":true,\"auth_jobs\":{\"crips\":{\"min_rank\":0}},\"auth_items\":[],\"break_items\":[],\"text_loc\":{\"z\":29.63846969604492,\"x\":-22.31351852416992,\"y\":-1399.9515380859376},\"locked\":true,\"dist\":2.5,\"objects\":[{\"door_model\":-2003105485,\"reposition\":false,\"door_rot\":{\"z\":-179.75021362304688,\"x\":0.00010979600483,\"y\":-0.00000164884909},\"door_loc\":{\"z\":29.63846969604492,\"x\":-21.71025848388672,\"y\":-1399.927001953125}}]}'),
(125, '{\"draw\":5.0,\"allow_raid\":true,\"auth_jobs\":{\"crips\":{\"min_rank\":0}},\"auth_items\":[],\"break_items\":[],\"text_loc\":{\"z\":29.63846969604492,\"x\":-32.07650756835937,\"y\":-1392.0423583984376},\"locked\":true,\"dist\":2.5,\"objects\":[{\"door_model\":-2003105485,\"reposition\":false,\"door_rot\":{\"z\":-0.00815889146178,\"x\":0.00002183149445,\"y\":-0.00000750751723},\"door_loc\":{\"z\":29.63846969604492,\"x\":-32.67987060546875,\"y\":-1392.0640869140626}}]}'),
(126, '{\"draw\":5.0,\"allow_raid\":true,\"auth_jobs\":{\"crips\":{\"min_rank\":0}},\"auth_items\":[],\"break_items\":[],\"text_loc\":{\"z\":29.63846969604492,\"x\":-22.31334495544433,\"y\":-1403.7840576171876},\"locked\":true,\"dist\":2.5,\"objects\":[{\"door_model\":-2003105485,\"reposition\":false,\"door_rot\":{\"z\":179.82350158691407,\"x\":-0.00007391643885,\"y\":9.019128697218548e-7},\"door_loc\":{\"z\":29.63846969604492,\"x\":-21.70991897583007,\"y\":-1403.7640380859376}}]}'),
(127, '{\"draw\":5.0,\"allow_raid\":true,\"auth_jobs\":{\"crips\":{\"min_rank\":0}},\"auth_items\":[],\"break_items\":[],\"text_loc\":{\"z\":29.63846969604492,\"x\":-21.2877082824707,\"y\":-1406.2415771484376},\"locked\":true,\"dist\":2.5,\"objects\":[{\"door_model\":-2003105485,\"reposition\":false,\"door_rot\":{\"z\":89.50395965576172,\"x\":-0.00000337362007,\"y\":-0.00008480337419},\"door_loc\":{\"z\":29.63846969604492,\"x\":-21.27106857299804,\"y\":-1406.8450927734376}}]}'),
(133, '{\"dist\":2.5,\"break_items\":[],\"locked\":true,\"draw\":5.0,\"objects\":[{\"door_rot\":{\"x\":-0.00000160310958,\"y\":-0.00017888276488,\"z\":89.53876495361328},\"door_loc\":{\"x\":-24.2266788482666,\"y\":-1403.0670166015626,\"z\":29.63846969604492},\"reposition\":false,\"door_model\":-2003105485}],\"text_loc\":{\"x\":-24.24368667602539,\"y\":-1402.4635009765626,\"z\":29.63846969604492},\"auth_jobs\":{\"crips\":{\"min_rank\":0}},\"auth_items\":[],\"allow_raid\":true}'),
(136, '{\"dist\":5.0,\"text_loc\":{\"y\":-990.05859375,\"z\":26.40548324584961,\"x\":475.406982421875},\"break_items\":[],\"objects\":[{\"door_loc\":{\"y\":-990.4839477539063,\"z\":26.40548324584961,\"x\":475.83233642578127},\"door_model\":-692649124,\"door_rot\":{\"y\":3.273173021511866e-8,\"z\":135.0004425048828,\"x\":-0.00017515003855},\"reposition\":true}],\"draw\":10.0,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"locked\":true,\"auth_items\":[],\"allow_raid\":false}'),
(139, '{\"draw\":10.0,\"text_loc\":{\"z\":54.64392852783203,\"y\":-179.6190185546875,\"x\":550.7640380859375},\"locked\":true,\"break_items\":[],\"objects\":[{\"door_loc\":{\"z\":54.64392852783203,\"y\":-179.6190185546875,\"x\":551.4139404296875},\"door_rot\":{\"z\":179.99998474121095,\"y\":-0.0,\"x\":0.0},\"reposition\":false,\"door_model\":-733661186}],\"auth_items\":[],\"dist\":5.0,\"auth_jobs\":{\"mechanic\":{\"min_rank\":0}}}'),
(143, '{\"dist\":5.0,\"draw\":10.0,\"locked\":true,\"break_items\":[],\"objects\":[{\"door_loc\":{\"z\":54.77276611328125,\"y\":-166.29489135742188,\"x\":534.4030151367188},\"door_model\":141631573,\"door_rot\":{\"z\":-90.19744110107422,\"y\":0.00025643696426,\"x\":0.00041633538785},\"reposition\":false}],\"auth_items\":[],\"text_loc\":{\"z\":54.77276611328125,\"y\":-167.00436401367188,\"x\":534.4005737304688},\"auth_jobs\":{\"mechanic\":{\"min_rank\":0}}}'),
(144, '{\"dist\":5.0,\"draw\":10.0,\"locked\":true,\"break_items\":[],\"objects\":[{\"door_loc\":{\"z\":54.64054870605469,\"y\":-194.2509765625,\"x\":545.216552734375},\"door_model\":1497823487,\"door_rot\":{\"z\":-44.99997329711914,\"y\":-0.0,\"x\":-0.0},\"reposition\":false}],\"auth_items\":[],\"text_loc\":{\"z\":54.64054870605469,\"y\":-193.79141235351563,\"x\":544.7557373046875},\"auth_jobs\":{\"mechanic\":{\"min_rank\":0}}}'),
(145, '{\"dist\":5.0,\"draw\":10.0,\"locked\":true,\"break_items\":[],\"objects\":[{\"door_loc\":{\"z\":54.88402557373047,\"y\":-195.96514892578126,\"x\":540.9420166015625},\"door_model\":-1309543596,\"door_rot\":{\"z\":-89.721923828125,\"y\":1.6533783764316468e-7,\"x\":-1.2736292021031659e-9},\"reposition\":false}],\"auth_items\":[],\"text_loc\":{\"z\":54.88402557373047,\"y\":-196.6825714111328,\"x\":540.947021484375},\"auth_jobs\":{\"mechanic\":{\"min_rank\":0}}}'),
(146, '{\"dist\":5.0,\"draw\":10.0,\"locked\":true,\"break_items\":[],\"objects\":[{\"door_loc\":{\"z\":54.8862075805664,\"y\":-193.46018981933595,\"x\":552.0873413085938},\"door_model\":-1309543596,\"door_rot\":{\"z\":89.95597839355469,\"y\":0.0004015075101,\"x\":0.00005395552216},\"reposition\":false}],\"auth_items\":[],\"text_loc\":{\"z\":54.7539176940918,\"y\":-192.78274536132813,\"x\":552.088134765625},\"auth_jobs\":{\"mechanic\":{\"min_rank\":0}}}'),
(148, '{\"dist\":5.0,\"draw\":10.0,\"locked\":true,\"break_items\":[],\"objects\":[{\"door_loc\":{\"z\":50.98633193969726,\"y\":-166.29856872558595,\"x\":534.4017333984375},\"door_model\":141631573,\"door_rot\":{\"z\":-91.1329345703125,\"y\":0.00027784425765,\"x\":-0.00073496688855},\"reposition\":false}],\"auth_items\":[],\"text_loc\":{\"z\":50.98633193969726,\"y\":-167.00790405273438,\"x\":534.3876953125},\"auth_jobs\":{\"mechanic\":{\"min_rank\":0}}}'),
(152, '{\"break_items\":[],\"text_loc\":{\"y\":-995.9515380859375,\"z\":30.82319259643554,\"x\":452.6943359375},\"auth_items\":[],\"dist\":5.0,\"objects\":[{\"door_rot\":{\"y\":0.00001271202381,\"z\":135.12948608398438,\"x\":0.00038307753857},\"door_model\":-96679321,\"reposition\":false,\"door_loc\":{\"y\":-995.525390625,\"z\":30.82319259643554,\"x\":452.2662658691406}}],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"draw\":10.0,\"locked\":true}'),
(154, '{\"dist\":5.0,\"auth_jobs\":{\"mechanic\":{\"min_rank\":0}},\"allow_raid\":true,\"interact_in_veh\":true,\"auth_items\":[],\"text_loc\":{\"x\":541.32861328125,\"y\":-189.3748016357422,\"z\":54.8831901550293},\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":541.32861328125,\"y\":-189.3748016357422,\"z\":55.518798828125},\"door_model\":-1218332211,\"door_rot\":{\"x\":-0.34697797894477,\"y\":0.00000182606845,\"z\":-89.99993133544922}}],\"locked\":true,\"draw\":10.0,\"break_items\":[]}'),
(156, '{\"dist\":5.0,\"auth_jobs\":{\"mechanic\":{\"min_rank\":0}},\"allow_raid\":true,\"interact_in_veh\":true,\"auth_items\":[],\"text_loc\":{\"x\":537.1795654296875,\"y\":-171.4641876220703,\"z\":54.70515441894531},\"objects\":[{\"reposition\":true,\"door_loc\":{\"x\":537.1795654296875,\"y\":-171.4641876220703,\"z\":55.52162933349609},\"door_model\":-1218332211,\"door_rot\":{\"x\":-1.41737496852874,\"y\":-8.607635777480027e-7,\"z\":0.00000414128317}}],\"locked\":true,\"draw\":10.0,\"break_items\":[]}'),
(157, '{\"break_items\":[],\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_loc\":{\"x\":-608.7288818359375,\"y\":-1610.3153076171876,\"z\":27.15893745422363},\"door_model\":1099436502,\"door_rot\":{\"x\":0.00257834489457,\"y\":-0.00059491518186,\"z\":175.15396118164063}},{\"reposition\":false,\"door_loc\":{\"x\":-611.3200073242188,\"y\":-1610.088623046875,\"z\":27.15893745422363},\"door_model\":-1627599682,\"door_rot\":{\"x\":0.0,\"y\":0.0,\"z\":174.99990844726563}}],\"dist\":5.0,\"locked\":true,\"text_loc\":{\"x\":-610.0404663085938,\"y\":-1610.3787841796876,\"z\":27.15893745422363},\"draw\":10.0}'),
(158, '{\"auth_items\":[],\"break_items\":[],\"text_loc\":{\"x\":-613.6239013671875,\"y\":-1623.09228515625,\"z\":32.00680160522461},\"dist\":5.0,\"auth_jobs\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"x\":-614.6488647460938,\"y\":-1626.7646484375,\"z\":32.00680160522461},\"door_model\":-1586611409,\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-5.00007677078247}},{\"reposition\":false,\"door_loc\":{\"x\":-612.0955810546875,\"y\":-1626.9991455078126,\"z\":32.00680160522461},\"door_model\":-199073634,\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-5.00007677078247}}],\"draw\":10.0}'),
(159, '{\"break_items\":[],\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_loc\":{\"x\":-614.6488647460938,\"y\":-1626.76416015625,\"z\":32.00832748413086},\"door_model\":-1586611409,\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-5.00007677078247}},{\"reposition\":false,\"door_loc\":{\"x\":-612.0955200195313,\"y\":-1626.99853515625,\"z\":32.00680160522461},\"door_model\":-199073634,\"door_rot\":{\"x\":0.0,\"y\":-0.0,\"z\":-5.00007677078247}}],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"text_loc\":{\"x\":-613.3721923828125,\"y\":-1626.88134765625,\"z\":33.06672668457031}}'),
(160, '{\"break_items\":[],\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_loc\":{\"x\":-592.9375610351563,\"y\":-1631.5770263671876,\"z\":27.15931129455566},\"door_model\":1099436502,\"door_rot\":{\"x\":0.00146532407961,\"y\":0.00006455932452,\"z\":85.01728820800781}},{\"reposition\":false,\"door_loc\":{\"x\":-592.7108764648438,\"y\":-1628.9859619140626,\"z\":27.15931129455566},\"door_model\":-1627599682,\"door_rot\":{\"x\":-0.0004069241113,\"y\":0.00134056573733,\"z\":85.1804428100586}}],\"dist\":5.0,\"locked\":true,\"draw\":10.0,\"text_loc\":{\"x\":-592.82421875,\"y\":-1630.281494140625,\"z\":27.15931129455566}}'),
(167, '{\"auth_items\":[],\"objects\":[{\"door_rot\":{\"z\":8.745971058488067e-9,\"y\":7.653797240436688e-8,\"x\":-2.74139952659606},\"door_loc\":{\"z\":26.77346992492675,\"y\":-1000.7889404296875,\"x\":431.41192626953127},\"door_model\":2130672747,\"reposition\":true}],\"draw\":10.0,\"interact_in_veh\":true,\"break_items\":[],\"locked\":true,\"dist\":5.0,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"z\":26.44503784179687,\"y\":-1000.7889404296875,\"x\":431.41192626953127}}'),
(168, '{\"text_loc\":{\"x\":-428.54180908203127,\"z\":31.87312316894531,\"y\":5997.11328125},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_rot\":{\"x\":0.00001977754436,\"z\":-42.76871871948242,\"y\":0.00001151395917},\"door_loc\":{\"x\":-428.06463623046877,\"z\":31.87312316894531,\"y\":5996.671875},\"reposition\":false,\"door_model\":631614199}],\"dist\":5.0}'),
(169, '{\"text_loc\":{\"x\":-431.66656494140627,\"z\":31.87312316894531,\"y\":6000.18603515625},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":631614199,\"door_rot\":{\"x\":0.00000569882467,\"z\":-43.11493682861328,\"y\":-0.00000618942976},\"door_loc\":{\"x\":-431.19207763671877,\"z\":31.87312316894531,\"y\":5999.74169921875}}],\"dist\":5.0}'),
(170, '{\"text_loc\":{\"x\":-432.6391906738281,\"z\":31.87311935424804,\"y\":5992.5771484375},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":631614199,\"door_rot\":{\"x\":0.0,\"z\":-44.48453903198242,\"y\":-0.0},\"door_loc\":{\"x\":-432.1754455566406,\"z\":31.87311935424804,\"y\":5992.12158203125}}],\"dist\":5.0}'),
(172, '{\"text_loc\":{\"x\":-446.7677307128906,\"z\":31.83942604064941,\"y\":6001.86572265625},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":452874391,\"door_rot\":{\"x\":0.0,\"z\":134.83694458007813,\"y\":-0.0},\"door_loc\":{\"x\":-447.2262878417969,\"z\":31.83942604064941,\"y\":6002.32861328125}}],\"dist\":5.0}'),
(173, '{\"text_loc\":{\"x\":-451.4413146972656,\"z\":31.99416542053222,\"y\":6006.53369140625},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":452874391,\"door_rot\":{\"x\":0.0,\"z\":-44.6639518737793,\"y\":-0.0},\"door_loc\":{\"x\":-450.9787292480469,\"z\":31.99416542053222,\"y\":6006.07470703125}}],\"dist\":5.0}'),
(174, '{\"text_loc\":{\"x\":-453.7757568359375,\"z\":31.86981964111328,\"y\":6011.35595703125},\"auth_items\":[],\"draw\":10.0,\"break_items\":[],\"auth_jobs\":[],\"objects\":[{\"reposition\":false,\"door_model\":-519068795,\"door_rot\":{\"x\":0.0,\"z\":10.00857543945312,\"y\":0.0},\"door_loc\":{\"x\":-454.5359802246094,\"z\":31.86981964111328,\"y\":6011.2578125}}],\"dist\":5.0}'),
(175, '{\"text_loc\":{\"x\":-453.8840637207031,\"z\":31.86981964111328,\"y\":6011.3017578125},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-519068795,\"door_rot\":{\"x\":0.0,\"z\":10.00857543945312,\"y\":-0.0},\"door_loc\":{\"x\":-454.5359802246094,\"z\":31.86981964111328,\"y\":6011.2578125}}],\"dist\":5.0}'),
(176, '{\"text_loc\":{\"x\":-448.62957763671877,\"z\":31.80887222290039,\"y\":6007.63720703125},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":245182344,\"door_rot\":{\"x\":-0.0,\"z\":-44.99993896484375,\"y\":-0.0},\"door_loc\":{\"x\":-447.70916748046877,\"z\":31.80887222290039,\"y\":6006.716796875}},{\"reposition\":false,\"door_model\":-681066206,\"door_rot\":{\"x\":0.0,\"z\":135.0000762939453,\"y\":-0.0},\"door_loc\":{\"x\":-449.5500183105469,\"z\":31.80887222290039,\"y\":6008.5576171875}}],\"dist\":5.0}'),
(178, '{\"text_loc\":{\"x\":-450.25408935546877,\"z\":31.86632919311523,\"y\":6015.908203125},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":0.0,\"z\":135.0000762939453,\"y\":-0.0},\"door_loc\":{\"x\":-449.79461669921877,\"z\":31.86632919311523,\"y\":6015.4482421875}}],\"dist\":5.0}'),
(179, '{\"text_loc\":{\"x\":-441.9010925292969,\"z\":31.86632919311523,\"y\":6011.85107421875},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":964838196,\"door_rot\":{\"x\":-0.00024157129519,\"z\":-136.32754516601563,\"y\":0.00011518916289},\"door_loc\":{\"x\":-442.8215026855469,\"z\":31.86632919311523,\"y\":6010.9306640625}},{\"reposition\":false,\"door_model\":964838196,\"door_rot\":{\"x\":-0.00016578652139,\"z\":45.17798614501953,\"y\":0.00014634497347},\"door_loc\":{\"x\":-440.9806823730469,\"z\":31.86632919311523,\"y\":6012.771484375}}],\"dist\":5.0}'),
(181, '{\"text_loc\":{\"x\":-441.51458740234377,\"z\":31.86440086364746,\"y\":6004.53759765625},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-952356348,\"door_rot\":{\"x\":-0.0,\"z\":44.85849380493164,\"y\":-0.0},\"door_loc\":{\"x\":-441.05389404296877,\"z\":31.86440086364746,\"y\":6004.9970703125}}],\"dist\":5.0}'),
(182, '{\"text_loc\":{\"x\":1855.628662109375,\"z\":30.41388893127441,\"y\":3687.968505859375},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":749848321,\"door_rot\":{\"x\":0.0,\"z\":29.87487983703613,\"y\":0.0},\"door_loc\":{\"x\":1856.1600341796876,\"z\":30.41388893127441,\"y\":3688.26806640625}}],\"dist\":5.0}'),
(183, '{\"text_loc\":{\"x\":1855.628662109375,\"z\":30.41388893127441,\"y\":3687.968505859375},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":749848321,\"door_rot\":{\"x\":0.0,\"z\":29.87487983703613,\"y\":0.0},\"door_loc\":{\"x\":1856.1600341796876,\"z\":30.41388893127441,\"y\":3688.26806640625}}],\"dist\":5.0}'),
(184, '{\"text_loc\":{\"x\":1852.3896484375,\"z\":30.41388893127441,\"y\":3686.107421875},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":749848321,\"door_rot\":{\"x\":0.0,\"z\":29.87487602233886,\"y\":0.0},\"door_loc\":{\"x\":1852.9210205078126,\"z\":30.41388893127441,\"y\":3686.406982421875}}],\"dist\":5.0}');
INSERT INTO `doors` (`index`, `door`) VALUES
(185, '{\"text_loc\":{\"x\":1850.3304443359376,\"z\":30.40952682495117,\"y\":3682.7314453125},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":0.00381026696413,\"z\":120.08675384521485,\"y\":0.00293861003592},\"door_loc\":{\"x\":1850.98193359375,\"z\":30.4069881439209,\"y\":3681.609130859375}},{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":-0.00018723733955,\"z\":-60.09259414672851,\"y\":-0.00000644774854},\"door_loc\":{\"x\":1849.678955078125,\"z\":30.41206741333007,\"y\":3683.85400390625}}],\"dist\":5.0}'),
(186, '{\"text_loc\":{\"x\":1859.3544921875,\"z\":30.40921592712402,\"y\":3687.197021484375},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-1927754726,\"door_rot\":{\"x\":0.00001001567034,\"z\":-58.25368881225586,\"y\":0.00004037816324},\"door_loc\":{\"x\":1859.696533203125,\"z\":30.40921592712402,\"y\":3686.644287109375}}],\"dist\":5.0}'),
(187, '{\"text_loc\":{\"x\":1862.4383544921876,\"z\":30.40921592712402,\"y\":3688.976806640625},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-1927754726,\"door_rot\":{\"x\":-0.0,\"z\":-59.9999771118164,\"y\":-0.0},\"door_loc\":{\"x\":1862.7633056640626,\"z\":30.40921592712402,\"y\":3688.413818359375}}],\"dist\":5.0}'),
(188, '{\"text_loc\":{\"x\":1860.5728759765626,\"z\":30.40921592712402,\"y\":3692.206298828125},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-1927754726,\"door_rot\":{\"x\":-0.0,\"z\":-59.9999771118164,\"y\":-0.0},\"door_loc\":{\"x\":1860.8978271484376,\"z\":30.40921592712402,\"y\":3691.643310546875}}],\"dist\":5.0}'),
(189, '{\"text_loc\":{\"x\":1858.67333984375,\"z\":30.40921592712402,\"y\":3695.49951171875},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-1927754726,\"door_rot\":{\"x\":-0.0,\"z\":-59.9999771118164,\"y\":-0.0},\"door_loc\":{\"x\":1858.998291015625,\"z\":30.40921592712402,\"y\":3694.9365234375}}],\"dist\":5.0}'),
(190, '{\"text_loc\":{\"x\":1847.5355224609376,\"z\":30.41008377075195,\"y\":3683.27490234375},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":0.0,\"z\":-149.8027801513672,\"y\":-0.0},\"door_loc\":{\"x\":1848.656982421875,\"z\":30.41103744506836,\"y\":3683.925048828125}},{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":0.00174420129042,\"z\":29.97833633422851,\"y\":-0.00001819776298},\"door_loc\":{\"x\":1846.4140625,\"z\":30.40912818908691,\"y\":3682.625}}],\"dist\":5.0}'),
(191, '{\"text_loc\":{\"x\":1847.5355224609376,\"z\":30.41008377075195,\"y\":3683.27490234375},\"draw\":5.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":0.00174420140683,\"z\":29.97833442687988,\"y\":-0.00001819782301},\"door_loc\":{\"x\":1846.4140625,\"z\":30.40912818908691,\"y\":3682.625}},{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":0.0,\"z\":-149.8027801513672,\"y\":-0.0},\"door_loc\":{\"x\":1848.656982421875,\"z\":30.41103744506836,\"y\":3683.925048828125}}],\"dist\":2.5}'),
(192, '{\"text_loc\":{\"x\":1847.5355224609376,\"z\":34.4193115234375,\"y\":3683.27490234375},\"draw\":5.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":-0.00177774834446,\"z\":30.01844024658203,\"y\":0.00340989558026},\"door_loc\":{\"x\":1846.4140625,\"z\":34.41827011108398,\"y\":3682.625}},{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":0.00191286474,\"z\":-149.79388427734376,\"y\":0.00016971255536},\"door_loc\":{\"x\":1848.656982421875,\"z\":34.42035675048828,\"y\":3683.925048828125}}],\"dist\":2.5}'),
(194, '{\"text_loc\":{\"x\":1856.685791015625,\"z\":34.41841888427734,\"y\":3689.980224609375},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":0.0,\"z\":-150.92782592773438,\"y\":-0.0},\"door_loc\":{\"x\":1857.2540283203126,\"z\":34.41841888427734,\"y\":3690.2958984375}}],\"dist\":5.0}'),
(195, '{\"text_loc\":{\"x\":1844.5245361328126,\"z\":34.41655731201172,\"y\":3693.552734375},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-519068795,\"door_rot\":{\"x\":-0.0,\"z\":-60.33717727661133,\"y\":-0.0},\"door_loc\":{\"x\":1844.2640380859376,\"z\":34.41655731201172,\"y\":3694.15185546875}}],\"dist\":5.0}'),
(196, '{\"text_loc\":{\"x\":1848.2666015625,\"z\":34.41841888427734,\"y\":3690.576171875},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":-0.00496408389881,\"z\":29.046968460083,\"y\":0.00003672435559},\"door_loc\":{\"x\":1847.133056640625,\"z\":34.41841888427734,\"y\":3689.946044921875}},{\"reposition\":false,\"door_model\":-2023754432,\"door_rot\":{\"x\":0.00071724818553,\"z\":-150.93240356445313,\"y\":-0.00000471805788},\"door_loc\":{\"x\":1849.4000244140626,\"z\":34.41841888427734,\"y\":3691.2060546875}}],\"dist\":5.0}'),
(197, '{\"text_loc\":{\"x\":1857.315185546875,\"z\":34.54634857177734,\"y\":3698.62890625},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":1526539404,\"door_rot\":{\"x\":0.0000345604858,\"z\":-148.91140747070313,\"y\":0.00006562844646},\"door_loc\":{\"x\":1858.1571044921876,\"z\":34.54634857177734,\"y\":3699.136474609375}}],\"dist\":5.0}'),
(198, '{\"text_loc\":{\"x\":1860.172607421875,\"z\":34.5936393737793,\"y\":3692.097412109375},\"draw\":10.0,\"auth_items\":[],\"locked\":true,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-1765048490,\"door_rot\":{\"x\":0.00002401528035,\"z\":27.74390029907226,\"y\":-0.00003459547588},\"door_loc\":{\"x\":1860.748046875,\"z\":34.5936393737793,\"y\":3692.400146484375}}],\"dist\":5.0}'),
(199, '{\"text_loc\":{\"x\":1855.142578125,\"z\":34.5936393737793,\"y\":3683.613525390625},\"draw\":10.0,\"auth_items\":[],\"locked\":false,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-1765048490,\"door_rot\":{\"x\":0.0,\"z\":29.40916442871093,\"y\":0.0},\"door_loc\":{\"x\":1855.708984375,\"z\":34.5936393737793,\"y\":3683.932861328125}}],\"dist\":5.0}'),
(200, '{\"text_loc\":{\"x\":480.3216247558594,\"z\":26.48005485534668,\"y\":-1012.1574096679688},\"auth_items\":[],\"draw\":10.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"reposition\":false,\"door_model\":-53345114,\"door_rot\":{\"x\":-0.00013038051838,\"z\":-0.07584075629711,\"y\":-0.0000575342965},\"door_loc\":{\"x\":480.9128112792969,\"z\":26.48005485534668,\"y\":-1012.1886596679688}}],\"dist\":5.0}'),
(201, '{\"break_items\":[],\"auth_jobs\":{\"camorra\":{\"min_rank\":8}},\"locked\":true,\"draw\":10.0,\"dist\":5.0,\"objects\":[{\"reposition\":false,\"door_rot\":{\"y\":-0.00005411578604,\"x\":0.00002046255758,\"z\":149.81849670410157},\"door_model\":-807362247,\"door_loc\":{\"y\":-20.36149024963379,\"x\":404.04931640625,\"z\":92.08687591552735}}],\"text_loc\":{\"y\":-20.08151054382324,\"x\":403.56890869140627,\"z\":92.08687591552735},\"auth_items\":[]}'),
(202, '{\"break_items\":[],\"auth_jobs\":{\"camorra\":{\"min_rank\":8}},\"locked\":true,\"draw\":10.0,\"dist\":5.0,\"objects\":[{\"reposition\":false,\"door_rot\":{\"y\":0.00007669434853,\"x\":0.00014055456267,\"z\":61.16207885742187},\"door_model\":389903619,\"door_loc\":{\"y\":12.04975891113281,\"x\":425.49078369140627,\"z\":92.09587860107422}},{\"reposition\":false,\"door_rot\":{\"y\":-6.0712166461459729e-15,\"x\":1.194239799146837e-15,\"z\":-117.7635726928711},\"door_model\":389903619,\"door_loc\":{\"y\":9.80043220520019,\"x\":424.1964111328125,\"z\":92.09451293945313}}],\"text_loc\":{\"y\":10.9250955581665,\"x\":424.8435974121094,\"z\":92.09519958496094},\"auth_items\":[]}'),
(203, '{\"break_items\":[],\"auth_jobs\":{\"camorra\":{\"min_rank\":8}},\"locked\":true,\"draw\":10.0,\"dist\":5.0,\"objects\":[{\"reposition\":false,\"door_rot\":{\"y\":0.00043079955503,\"x\":0.00070579722523,\"z\":58.91970825195312},\"door_model\":607720026,\"door_loc\":{\"y\":1.96662330627441,\"x\":391.3175964355469,\"z\":92.41473388671875}},{\"reposition\":false,\"door_rot\":{\"y\":-0.00030719308415,\"x\":-0.00051670632092,\"z\":-120.01726531982422},\"door_model\":607720026,\"door_loc\":{\"y\":-0.12108945846557,\"x\":390.1235046386719,\"z\":92.41473388671875}}],\"text_loc\":{\"y\":0.92276692390441,\"x\":390.7205505371094,\"z\":92.41473388671875},\"auth_items\":[]}'),
(205, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":355.902099609375,\"z\":43.43391036987305,\"y\":-583.9745483398438},\"objects\":[{\"door_rot\":{\"x\":1.918587955174189e-8,\"z\":-110.02584838867188,\"y\":-1.1294547935802868e-10},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":356.12518310546877,\"z\":43.43391036987305,\"y\":-583.3624877929688}}]}'),
(206, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"x\":357.26763916015627,\"z\":43.43391036987305,\"y\":-580.2225952148438},\"objects\":[{\"door_rot\":{\"x\":-0.00027078189305,\"z\":-110.03272247314453,\"y\":-0.00113712856546},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":357.49078369140627,\"z\":43.43391036987305,\"y\":-579.6105346679688}}]}'),
(207, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":357.26763916015627,\"z\":43.43391036987305,\"y\":-580.2225952148438},\"objects\":[{\"door_rot\":{\"x\":-0.00027078189305,\"z\":-110.03272247314453,\"y\":-0.00113712856546},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":357.49078369140627,\"z\":43.43391036987305,\"y\":-579.6105346679688}}]}'),
(208, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":348.87353515625,\"z\":43.43391036987305,\"y\":-587.5355224609375},\"objects\":[{\"door_rot\":{\"x\":0.00008727496606,\"z\":-110.22068786621094,\"y\":-0.00007802224718},\"reposition\":false,\"door_model\":-434783486,\"door_loc\":{\"x\":349.3137512207031,\"z\":43.43391036987305,\"y\":-586.3259887695313}},{\"door_rot\":{\"x\":0.00104392168577,\"z\":-109.91980743408203,\"y\":-0.00114167074207},\"reposition\":false,\"door_model\":-1700911976,\"door_loc\":{\"x\":348.4333190917969,\"z\":43.43391036987305,\"y\":-588.7449951171875}}]}'),
(209, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":351.9766540527344,\"z\":43.43391036987305,\"y\":-594.7598266601563},\"objects\":[{\"door_rot\":{\"x\":0.00081661122385,\"z\":-110.02070617675781,\"y\":-0.00023420936486},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":352.1996765136719,\"z\":43.43391036987305,\"y\":-594.1477661132813}}]}'),
(210, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":347.1081237792969,\"z\":43.43391036987305,\"y\":-592.9877319335938},\"objects\":[{\"door_rot\":{\"x\":0.0,\"z\":70.017333984375,\"y\":0.0},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":346.885498046875,\"z\":43.43391036987305,\"y\":-593.5999755859375}}]}'),
(211, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":345.7425537109375,\"z\":43.43391036987305,\"y\":-596.7396850585938},\"objects\":[{\"door_rot\":{\"x\":0.0,\"z\":70.017333984375,\"y\":0.0},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":345.5199279785156,\"z\":43.43391036987305,\"y\":-597.3519287109375}}]}'),
(212, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":350.611083984375,\"z\":43.43391036987305,\"y\":-598.5118408203125},\"objects\":[{\"door_rot\":{\"x\":0.0,\"z\":-110.01725769042969,\"y\":-0.0},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":350.8340759277344,\"z\":43.43391036987305,\"y\":-597.8997192382813}}]}'),
(213, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":347.3860778808594,\"z\":43.43391036987305,\"y\":-584.2252807617188},\"objects\":[{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":346.77392578125,\"z\":43.43391036987305,\"y\":-584.00244140625}}]}'),
(214, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":341.3976745605469,\"z\":43.43391036987305,\"y\":-582.033935546875},\"objects\":[{\"door_rot\":{\"x\":-0.00004918884224,\"z\":-19.03523445129394,\"y\":-3.408658599823866e-8},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":340.7818298339844,\"z\":43.43391036987305,\"y\":-581.8214721679688}}]}'),
(215, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":339.61712646484377,\"z\":43.43391036987305,\"y\":-586.9262084960938},\"objects\":[{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":339.0049743652344,\"z\":43.43391036987305,\"y\":-586.703369140625}}]}'),
(216, '{\"objects\":[{\"door_rot\":{\"x\":0.0,\"z\":-110.01725769042969,\"y\":-0.0},\"reposition\":false,\"door_model\":-434783486,\"door_loc\":{\"x\":326.5498962402344,\"z\":43.43391036987305,\"y\":-578.0406494140625}},{\"door_rot\":{\"x\":0.0,\"z\":-110.01725769042969,\"y\":-0.0},\"reposition\":false,\"door_model\":-1700911976,\"door_loc\":{\"x\":325.6694641113281,\"z\":43.43391036987305,\"y\":-580.4595947265625}}],\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"dist\":5.0,\"draw\":10.0,\"text_loc\":{\"x\":326.10968017578127,\"z\":43.43391036987305,\"y\":-579.2501220703125},\"break_items\":[]}'),
(217, '{\"objects\":[{\"door_rot\":{\"x\":0.00152649753727,\"z\":-19.92655563354492,\"y\":0.00047971398453},\"reposition\":false,\"door_model\":-1700911976,\"door_loc\":{\"x\":326.6549987792969,\"z\":43.43391036987305,\"y\":-590.1066284179688}},{\"door_rot\":{\"x\":-0.00089941424084,\"z\":-20.05721855163574,\"y\":-0.00075750733958},\"reposition\":false,\"door_model\":-434783486,\"door_loc\":{\"x\":324.23602294921877,\"z\":43.43391036987305,\"y\":-589.2261962890625}}],\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"dist\":5.0,\"draw\":10.0,\"text_loc\":{\"x\":325.44549560546877,\"z\":43.43391036987305,\"y\":-589.6663818359375},\"break_items\":[]}'),
(218, '{\"objects\":[{\"door_rot\":{\"x\":-0.00009674527973,\"z\":-110.07006072998047,\"y\":0.00153280375525},\"reposition\":false,\"door_model\":-1700911976,\"door_loc\":{\"x\":327.2560119628906,\"z\":43.43391036987305,\"y\":-595.1950073242188}},{\"door_rot\":{\"x\":3.5318296909281346e-7,\"z\":-110.082275390625,\"y\":4.5080920330065058e-8},\"reposition\":false,\"door_model\":-434783486,\"door_loc\":{\"x\":328.1364440917969,\"z\":43.43391036987305,\"y\":-592.7760620117188}}],\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"dist\":5.0,\"draw\":10.0,\"text_loc\":{\"x\":327.69622802734377,\"z\":43.43391036987305,\"y\":-593.9855346679688},\"break_items\":[]}'),
(221, '{\"objects\":[{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":-434783486,\"door_loc\":{\"x\":302.8030700683594,\"z\":43.43391036987305,\"y\":-581.424560546875}},{\"door_rot\":{\"x\":0.00055739522213,\"z\":-20.12518119812011,\"y\":0.00094724231166},\"reposition\":false,\"door_model\":-1700911976,\"door_loc\":{\"x\":305.22186279296877,\"z\":43.43391036987305,\"y\":-582.3056030273438}}],\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"dist\":5.0,\"draw\":10.0,\"text_loc\":{\"x\":304.012451171875,\"z\":43.43391036987305,\"y\":-581.8651123046875},\"break_items\":[]}'),
(222, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":304.1822509765625,\"z\":43.43391036987305,\"y\":-571.9456787109375},\"objects\":[{\"door_rot\":{\"x\":0.0,\"z\":70.017333984375,\"y\":0.0},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":303.9596252441406,\"z\":43.43391036987305,\"y\":-572.5579223632813}}]}'),
(223, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":307.7303466796875,\"z\":43.43391036987305,\"y\":-569.7918090820313},\"objects\":[{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":307.1181945800781,\"z\":43.43391036987305,\"y\":-569.5689697265625}}]}'),
(224, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":313.214599609375,\"z\":43.43391036987305,\"y\":-571.7813720703125},\"objects\":[{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":-1700911976,\"door_loc\":{\"x\":314.4241027832031,\"z\":43.43391036987305,\"y\":-572.2215576171875}},{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":-434783486,\"door_loc\":{\"x\":312.005126953125,\"z\":43.43391036987305,\"y\":-571.3411865234375}}]}'),
(225, '{\"locked\":false,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":317.27520751953127,\"z\":43.43391036987305,\"y\":-578.7879638671875},\"objects\":[{\"door_rot\":{\"x\":0.0,\"z\":160.00001525878907,\"y\":-0.0},\"reposition\":false,\"door_model\":-434783486,\"door_loc\":{\"x\":318.48468017578127,\"z\":43.43391036987305,\"y\":-579.2281494140625}},{\"door_rot\":{\"x\":0.0,\"z\":160.00001525878907,\"y\":-0.0},\"reposition\":false,\"door_model\":-1700911976,\"door_loc\":{\"x\":316.0657043457031,\"z\":43.43391036987305,\"y\":-578.3477172851563}}]}'),
(226, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":324.447021484375,\"z\":43.43391036987305,\"y\":-575.8696899414063},\"objects\":[{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":-1700911976,\"door_loc\":{\"x\":325.6565246582031,\"z\":43.43391036987305,\"y\":-576.3099365234375}},{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":-434783486,\"door_loc\":{\"x\":323.237548828125,\"z\":43.43391036987305,\"y\":-575.429443359375}}]}'),
(227, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":336.7749938964844,\"z\":43.43391036987305,\"y\":-580.3631591796875},\"objects\":[{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":336.162841796875,\"z\":43.43391036987305,\"y\":-580.1403198242188}}]}'),
(228, '{\"objects\":[{\"door_rot\":{\"x\":-0.0,\"z\":-19.99996376037597,\"y\":-0.0},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":360.5033874511719,\"z\":43.43391036987305,\"y\":-588.99951171875}}],\"auth_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"dist\":5.0,\"draw\":10.0,\"text_loc\":{\"x\":361.11553955078127,\"z\":43.43391036987305,\"y\":-589.2223510742188},\"break_items\":[]}'),
(229, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":359.3383483886719,\"z\":43.43391036987305,\"y\":-594.105224609375},\"objects\":[{\"door_rot\":{\"x\":0.00108130776789,\"z\":-20.09197807312011,\"y\":-0.00029894171166},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":358.7265319824219,\"z\":43.43391036987305,\"y\":-593.8814086914063}}]}'),
(230, '{\"locked\":true,\"draw\":10.0,\"auth_items\":[],\"dist\":5.0,\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0},\"ambulance\":{\"min_rank\":0}},\"text_loc\":{\"x\":361.1151428222656,\"z\":43.43391036987305,\"y\":-589.2235107421875},\"objects\":[{\"door_rot\":{\"x\":-0.00003060332528,\"z\":-20.1088752746582,\"y\":-9.833928515945445e-8},\"reposition\":false,\"door_model\":854291622,\"door_loc\":{\"x\":360.5033874511719,\"z\":43.43391036987305,\"y\":-588.99951171875}}]}'),
(231, '{\"auth_items\":[],\"text_loc\":{\"x\":313.2614440917969,\"y\":-596.0719604492188,\"z\":43.43391036987305},\"objects\":[{\"reposition\":false,\"door_rot\":{\"x\":0.00022594805341,\"y\":-0.0008201796445,\"z\":-109.60875701904297},\"door_loc\":{\"x\":313.4800720214844,\"y\":-595.4583129882813,\"z\":43.43391036987305},\"door_model\":854291622}],\"break_items\":[],\"auth_jobs\":{\"ambulance\":{\"min_rank\":0},\"police\":{\"min_rank\":0}},\"locked\":true,\"draw\":10.0,\"dist\":5.0}'),
(232, '{\"dist\":5.0,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"auth_items\":[],\"draw\":10.0,\"objects\":[{\"door_loc\":{\"z\":30.82319259643554,\"y\":-984.3721923828125,\"x\":475.3836975097656},\"door_rot\":{\"z\":179.8592987060547,\"y\":-0.0,\"x\":0.0},\"reposition\":false,\"door_model\":149284793},{\"door_loc\":{\"z\":30.82319259643554,\"y\":-984.3721923828125,\"x\":472.97808837890627},\"door_rot\":{\"z\":0.12668135762214,\"y\":-0.0003863783495,\"x\":-0.0000440046424},\"reposition\":false,\"door_model\":149284793}],\"break_items\":[],\"text_loc\":{\"z\":30.82319259643554,\"y\":-984.3721923828125,\"x\":474.180908203125}}'),
(233, '{\"dist\":5.0,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"objects\":[{\"door_loc\":{\"z\":26.40548324584961,\"y\":-987.4373779296875,\"x\":471.37530517578127},\"door_rot\":{\"z\":-90.02234649658203,\"y\":0.00087088206782,\"x\":-0.00002863034933},\"reposition\":false,\"door_model\":-96679321},{\"door_loc\":{\"z\":26.40548324584961,\"y\":-985.0319213867188,\"x\":471.37530517578127},\"door_rot\":{\"z\":-89.94257354736328,\"y\":-0.00000637072344,\"x\":-0.00000174417459},\"reposition\":false,\"door_model\":-1406685646}],\"auth_items\":[],\"draw\":10.0,\"locked\":true,\"break_items\":[],\"text_loc\":{\"z\":26.40548324584961,\"y\":-986.234619140625,\"x\":471.37530517578127}}'),
(234, '{\"break_items\":[],\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1602.4151611328126,\"z\":37.09681701660156,\"x\":378.6260070800781},\"door_rot\":{\"y\":-0.0,\"z\":-130.4222412109375,\"x\":0.0},\"door_model\":749848321}],\"dist\":5.0,\"text_loc\":{\"y\":-1601.9539794921876,\"z\":37.09681701660156,\"x\":379.02532958984377},\"auth_jobs\":[],\"draw\":10.0}'),
(235, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1602.4151611328126,\"z\":37.09681701660156,\"x\":378.6260070800781},\"door_rot\":{\"y\":-0.0,\"z\":-130.4222412109375,\"x\":0.0},\"door_model\":749848321},{\"reposition\":false,\"door_loc\":{\"y\":-1602.4151611328126,\"z\":37.09681701660156,\"x\":378.6260070800781},\"door_rot\":{\"y\":-0.0,\"z\":-130.4222412109375,\"x\":0.0},\"door_model\":749848321}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1601.8172607421876,\"z\":37.05605316162109,\"x\":378.9656982421875},\"draw\":10.0}'),
(236, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1604.2139892578126,\"z\":29.44934463500976,\"x\":374.27752685546877},\"door_rot\":{\"y\":-0.0,\"z\":-130.0826873779297,\"x\":0.0},\"door_model\":-1320876379}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1603.7117919921876,\"z\":29.51151275634765,\"x\":374.70013427734377},\"draw\":10.0}'),
(237, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1598.0350341796876,\"z\":29.44454193115234,\"x\":378.36456298828127},\"door_rot\":{\"y\":-0.0,\"z\":139.92237854003907,\"x\":0.0},\"door_model\":-1320876379}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1598.4576416015626,\"z\":29.44454193115234,\"x\":378.86676025390627},\"draw\":10.0}'),
(238, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1604.31396484375,\"z\":29.44934463500976,\"x\":382.9615478515625},\"door_rot\":{\"y\":-0.0,\"z\":-130.31825256347657,\"x\":0.0},\"door_model\":-1320876379}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1603.8135986328126,\"z\":29.44934463500976,\"x\":383.3861999511719},\"draw\":10.0}'),
(239, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1590.5042724609376,\"z\":29.44454193115234,\"x\":369.414306640625},\"door_rot\":{\"y\":-0.0,\"z\":139.92239379882813,\"x\":0.0},\"door_model\":-1320876379}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1590.9268798828126,\"z\":29.44454193115234,\"x\":369.91650390625},\"draw\":10.0}'),
(240, '{\"break_items\":[],\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1588.0673828125,\"z\":29.44719505310058,\"x\":366.17950439453127},\"door_rot\":{\"y\":0.0,\"z\":49.66816711425781,\"x\":0.0},\"door_model\":-1320876379}],\"dist\":5.0,\"text_loc\":{\"y\":-1588.5677490234376,\"z\":29.44719505310058,\"x\":365.7547302246094},\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"draw\":10.0}'),
(241, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1586.0439453125,\"z\":29.44937705993652,\"x\":360.51641845703127},\"door_rot\":{\"y\":-0.0,\"z\":-130.27198791503907,\"x\":0.0},\"door_model\":-1501157055},{\"reposition\":false,\"door_loc\":{\"y\":-1584.0572509765626,\"z\":29.44575500488281,\"x\":362.1820068359375},\"door_rot\":{\"y\":0.0,\"z\":49.89156723022461,\"x\":0.0},\"door_model\":-1501157055}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1585.050537109375,\"z\":29.44756698608398,\"x\":361.3492126464844},\"draw\":10.0}'),
(242, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1595.5643310546876,\"z\":29.44454193115234,\"x\":368.7840576171875},\"door_rot\":{\"y\":0.0,\"z\":50.76413345336914,\"x\":0.0},\"door_model\":-1320876379}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1596.0726318359376,\"z\":29.44454193115234,\"x\":368.3689270019531},\"draw\":10.0}'),
(243, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1600.1129150390626,\"z\":29.4422607421875,\"x\":371.31927490234377},\"door_rot\":{\"y\":-0.0,\"z\":140.071533203125,\"x\":0.0},\"door_model\":749848321}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1600.50830078125,\"z\":29.4422607421875,\"x\":371.7838439941406},\"draw\":10.0}'),
(244, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1592.574462890625,\"z\":29.44672966003418,\"x\":362.38214111328127},\"door_rot\":{\"y\":-0.00017576265963,\"z\":41.01192855834961,\"x\":0.00021054400713},\"door_model\":-1320876379}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1593.005126953125,\"z\":29.44672966003418,\"x\":361.88690185546877},\"draw\":10.0}'),
(245, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1599.831787109375,\"z\":29.44278717041015,\"x\":355.429931640625},\"door_rot\":{\"y\":0.0000163307759,\"z\":-40.51741027832031,\"x\":0.00003785615263},\"door_model\":631614199}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1599.4095458984376,\"z\":29.44278717041015,\"x\":354.935791015625},\"draw\":10.0}'),
(246, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1597.839599609375,\"z\":29.44278717041015,\"x\":353.0617370605469},\"door_rot\":{\"y\":-0.0,\"z\":-40.39459991455078,\"x\":-0.0},\"door_model\":631614199}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1597.4183349609376,\"z\":29.44278717041015,\"x\":352.56671142578127},\"draw\":10.0}'),
(247, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1607.2838134765626,\"z\":29.44278717041015,\"x\":364.33184814453127},\"door_rot\":{\"y\":-0.0,\"z\":-39.75564575195312,\"x\":-0.0},\"door_model\":631614199}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1606.8681640625,\"z\":29.44278717041015,\"x\":363.8321533203125},\"draw\":10.0}'),
(248, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1609.2822265625,\"z\":29.44278717041015,\"x\":366.6982727050781},\"door_rot\":{\"y\":-0.0,\"z\":-39.75564575195312,\"x\":-0.0},\"door_model\":631614199}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1608.8665771484376,\"z\":29.44278717041015,\"x\":366.1985778808594},\"draw\":10.0}'),
(249, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1606.2618408203126,\"z\":29.43037796020507,\"x\":369.8870849609375},\"door_rot\":{\"y\":0.00032796873711,\"z\":49.82144546508789,\"x\":-0.00027242689975},\"door_model\":-1501157055},{\"reposition\":false,\"door_loc\":{\"y\":-1608.241943359375,\"z\":29.43037796020507,\"x\":368.2125549316406},\"door_rot\":{\"y\":0.00002129524182,\"z\":-130.11659240722657,\"x\":-0.00001655448249},\"door_model\":-1501157055}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1607.251953125,\"z\":29.43037796020507,\"x\":369.0498046875},\"draw\":10.0}'),
(250, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1636.0701904296876,\"z\":29.97437667846679,\"x\":391.86016845703127},\"door_rot\":{\"y\":-0.00025359660503,\"z\":49.70621871948242,\"x\":0.00020891614258},\"door_model\":-1156020871}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1635.4322509765626,\"z\":29.76079177856445,\"x\":392.4013977050781},\"draw\":10.0}'),
(251, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1601.5496826171876,\"z\":29.44209098815918,\"x\":349.9471130371094},\"door_rot\":{\"y\":-0.0,\"z\":-40.1172981262207,\"x\":-0.0},\"door_model\":631614199}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1601.130859375,\"z\":29.44209098815918,\"x\":349.4500427246094},\"draw\":10.0}'),
(252, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1603.5372314453126,\"z\":29.44209098815918,\"x\":352.3263244628906},\"door_rot\":{\"y\":-0.0,\"z\":-40.77785491943359,\"x\":-0.0},\"door_model\":631614199}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1603.1126708984376,\"z\":29.44209098815918,\"x\":351.8341064453125},\"draw\":10.0}'),
(253, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1611.0101318359376,\"z\":29.44209098815918,\"x\":361.2001953125},\"door_rot\":{\"y\":-0.0,\"z\":-40.77785491943359,\"x\":-0.0},\"door_model\":631614199}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1610.5855712890626,\"z\":29.44209098815918,\"x\":360.7079772949219},\"draw\":10.0}'),
(254, '{\"break_items\":[],\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1613.006591796875,\"z\":29.44209098815918,\"x\":363.5703430175781},\"door_rot\":{\"y\":-0.0,\"z\":-40.77785491943359,\"x\":-0.0},\"door_model\":631614199}],\"dist\":5.0,\"text_loc\":{\"y\":-1612.58203125,\"z\":29.44209098815918,\"x\":363.078125},\"auth_jobs\":[],\"draw\":10.0}'),
(255, '{\"locked\":true,\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"reposition\":false,\"door_loc\":{\"y\":-1613.006591796875,\"z\":29.44209098815918,\"x\":363.5703430175781},\"door_rot\":{\"y\":-0.0,\"z\":-40.77785491943359,\"x\":-0.0},\"door_model\":631614199}],\"break_items\":[],\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"text_loc\":{\"y\":-1612.58203125,\"z\":29.44209098815918,\"x\":363.078125},\"draw\":10.0}'),
(256, '{\"text_loc\":{\"y\":-102.81499481201172,\"z\":74.99357604980469,\"x\":981.6287231445313},\"auth_items\":[],\"objects\":[{\"door_rot\":{\"y\":0.0,\"z\":42.65185546875,\"x\":0.0},\"door_model\":190770132,\"reposition\":false,\"door_loc\":{\"y\":-103.2552490234375,\"z\":74.99357604980469,\"x\":981.1505126953125}}],\"auth_jobs\":{\"bandidos\":{\"min_rank\":0}},\"draw\":10.0,\"dist\":5.0,\"locked\":true,\"break_items\":[]}'),
(257, '{\"text_loc\":{\"y\":-94.68498229980469,\"z\":74.99793243408203,\"x\":985.167724609375},\"auth_items\":[],\"objects\":[{\"door_rot\":{\"y\":0.00090019451454,\"z\":132.6466827392578,\"x\":-0.00094051111955},\"door_model\":747286790,\"reposition\":false,\"door_loc\":{\"y\":-95.16253662109375,\"z\":74.99793243408203,\"x\":985.6103515625}}],\"auth_jobs\":{\"bandidos\":{\"min_rank\":0}},\"draw\":10.0,\"dist\":5.0,\"locked\":true,\"break_items\":[]}'),
(258, '{\"text_loc\":{\"y\":-96.40335845947266,\"z\":74.99498748779297,\"x\":981.4219360351563},\"auth_items\":[],\"objects\":[{\"door_rot\":{\"y\":0.00042397878132,\"z\":-118.07182312011719,\"x\":0.0006976564764},\"door_model\":747286790,\"reposition\":false,\"door_loc\":{\"y\":-95.827880859375,\"z\":74.99498748779297,\"x\":981.7265625}}],\"auth_jobs\":{\"bandidos\":{\"min_rank\":0}},\"draw\":10.0,\"dist\":5.0,\"locked\":true,\"break_items\":[]}'),
(259, '{\"auth_items\":[],\"dist\":5.0,\"interact_in_veh\":true,\"break_items\":[],\"auth_jobs\":{\"bandidos\":{\"min_rank\":0}},\"draw\":10.0,\"locked\":true,\"text_loc\":{\"y\":-135.6603240966797,\"z\":73.57710266113281,\"x\":982.4237060546875},\"objects\":[{\"door_rot\":{\"y\":-0.00008882940164,\"z\":-120.00372314453125,\"x\":-1.65276825428009},\"door_model\":-190780785,\"reposition\":true,\"door_loc\":{\"y\":-135.63137817382813,\"z\":74.13554382324219,\"x\":982.3753662109375}}]}'),
(260, '{\"objects\":[{\"door_rot\":{\"y\":-0.0,\"z\":-29.81044006347656,\"x\":0.0},\"door_loc\":{\"y\":-142.03363037109376,\"z\":73.43803405761719,\"x\":963.3472290039063},\"reposition\":false,\"door_model\":-768779561}],\"draw\":10.0,\"auth_jobs\":[],\"dist\":5.0,\"text_loc\":{\"y\":-140.39842224121095,\"z\":73.43803405761719,\"x\":960.3750610351563},\"auth_items\":[],\"break_items\":[]}'),
(261, '{\"objects\":[{\"door_rot\":{\"y\":-0.0,\"z\":-29.81044006347656,\"x\":0.0},\"door_loc\":{\"y\":-142.03431701660157,\"z\":73.43804168701172,\"x\":963.3468627929688},\"reposition\":true,\"door_model\":-768779561}],\"draw\":10.0,\"auth_jobs\":[],\"dist\":5.0,\"text_loc\":{\"y\":-140.39910888671876,\"z\":74.44662475585938,\"x\":960.56201171875},\"auth_items\":[],\"break_items\":[]}'),
(262, '{\"auth_items\":[],\"dist\":5.0,\"interact_in_veh\":true,\"objects\":[{\"door_rot\":{\"y\":-0.0,\"z\":-29.81044006347656,\"x\":0.0},\"door_loc\":{\"y\":-142.03431701660157,\"z\":73.43803405761719,\"x\":963.3468627929688},\"reposition\":true,\"door_model\":-768779561}],\"auth_jobs\":{\"bandidos\":{\"min_rank\":0}},\"draw\":10.0,\"locked\":true,\"text_loc\":{\"y\":-140.43907165527345,\"z\":74.43716430664063,\"x\":959.955078125},\"break_items\":[]}'),
(263, '{\"dist\":5.0,\"objects\":[{\"door_rot\":{\"y\":0.00001810001958,\"z\":-122.0240249633789,\"x\":0.00001674574377},\"door_loc\":{\"y\":-142.64137268066407,\"z\":74.42308044433594,\"x\":983.8668212890625},\"reposition\":false,\"door_model\":-1023447729}],\"auth_items\":[],\"auth_jobs\":{\"bandidos\":{\"min_rank\":0}},\"text_loc\":{\"y\":-143.1636962890625,\"z\":74.42308044433594,\"x\":983.4756469726563},\"draw\":10.0,\"locked\":true,\"break_items\":[]}'),
(267, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":142.82569885253907,\"x\":0.0,\"y\":-0.0},\"door_model\":-1563640173,\"door_loc\":{\"z\":74.64028930664063,\"x\":1394.97607421875,\"y\":-598.6109008789063}}],\"draw\":10.0,\"text_loc\":{\"z\":74.64028930664063,\"x\":1394.4580078125,\"y\":-598.2178344726563}}'),
(268, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-127.8047866821289,\"x\":0.00003035662484,\"y\":-0.00016323004092},\"door_model\":964838196,\"door_loc\":{\"z\":74.64988708496094,\"x\":1398.6619873046876,\"y\":-604.1365356445313}}],\"draw\":10.0,\"text_loc\":{\"z\":74.64988708496094,\"x\":1399.0606689453126,\"y\":-603.622314453125}}'),
(270, '{\"break_items\":[],\"text_loc\":{\"z\":77.96910095214844,\"x\":1388.7255859375,\"y\":-599.2559204101563},\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"draw\":10.0,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-127.17430114746094,\"x\":-0.0,\"y\":-0.0},\"door_model\":-1563640173,\"door_loc\":{\"z\":77.96910095214844,\"x\":1389.11865234375,\"y\":-598.7379150390625}}],\"auth_items\":[],\"dist\":5.0}'),
(271, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-179.91748046875,\"x\":0.0,\"y\":-0.0},\"door_model\":520341586,\"door_loc\":{\"z\":74.81451416015625,\"x\":1366.6300048828126,\"y\":-607.0625}}],\"draw\":10.0,\"text_loc\":{\"z\":74.81451416015625,\"x\":1367.278076171875,\"y\":-607.0506591796875}}'),
(272, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":90.08251953125,\"x\":0.0,\"y\":-0.0},\"door_model\":-1563640173,\"door_loc\":{\"z\":74.8682861328125,\"x\":1368.4794921875,\"y\":-616.6725463867188}}],\"draw\":10.0,\"text_loc\":{\"z\":74.8682861328125,\"x\":1368.478759765625,\"y\":-616.0222778320313}}'),
(273, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-179.91748046875,\"x\":-0.0,\"y\":-0.0},\"door_model\":964838196,\"door_loc\":{\"z\":74.87788391113281,\"x\":1366.31298828125,\"y\":-622.951416015625}}],\"draw\":10.0,\"text_loc\":{\"z\":74.87788391113281,\"x\":1366.963623046875,\"y\":-622.9503173828125}}'),
(274, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":90.08251953125,\"x\":0.0,\"y\":-0.0},\"door_model\":-1563640173,\"door_loc\":{\"z\":78.19796752929688,\"x\":1368.7664794921876,\"y\":-622.4938354492188}}],\"draw\":10.0,\"text_loc\":{\"z\":78.19796752929688,\"x\":1368.7657470703126,\"y\":-621.8435668945313}}'),
(275, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-179.91749572753907,\"x\":-0.0,\"y\":-0.0},\"door_model\":-1563640173,\"door_loc\":{\"z\":78.19709777832031,\"x\":1364.832275390625,\"y\":-612.0873413085938}}],\"draw\":10.0,\"text_loc\":{\"z\":78.19709777832031,\"x\":1364.1820068359376,\"y\":-612.0880737304688}}'),
(276, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-66.64051818847656,\"x\":-0.0,\"y\":-0.0},\"door_model\":520341586,\"door_loc\":{\"z\":74.59951782226563,\"x\":1389.68212890625,\"y\":-569.8987426757813}}],\"draw\":10.0,\"text_loc\":{\"z\":74.59951782226563,\"x\":1389.4151611328126,\"y\":-569.30810546875}}'),
(277, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-156.64048767089845,\"x\":0.0,\"y\":-0.0},\"door_model\":-1563640173,\"door_loc\":{\"z\":74.65328979492188,\"x\":1397.7791748046876,\"y\":-564.4021606445313}}],\"draw\":10.0,\"text_loc\":{\"z\":74.65328979492188,\"x\":1397.18212890625,\"y\":-564.6598510742188}}'),
(278, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-66.64051818847656,\"x\":-0.0,\"y\":-0.0},\"door_model\":964838196,\"door_loc\":{\"z\":74.66288757324219,\"x\":1404.403076171875,\"y\":-563.9111328125}}],\"draw\":10.0,\"text_loc\":{\"z\":74.66288757324219,\"x\":1404.1448974609376,\"y\":-563.3138427734375}}'),
(279, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-156.64048767089845,\"x\":0.0,\"y\":-0.0},\"door_model\":-1563640173,\"door_loc\":{\"z\":77.98297119140625,\"x\":1403.01318359375,\"y\":-561.8380737304688}}],\"draw\":10.0,\"text_loc\":{\"z\":77.98297119140625,\"x\":1402.4161376953126,\"y\":-562.0957641601563}}'),
(280, '{\"break_items\":[],\"dist\":5.0,\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"auth_items\":[],\"locked\":true,\"objects\":[{\"reposition\":false,\"door_rot\":{\"z\":-66.6405258178711,\"x\":-0.0,\"y\":-0.0},\"door_model\":-1563640173,\"door_loc\":{\"z\":77.98210144042969,\"x\":1395.0084228515626,\"y\":-569.5643920898438}}],\"draw\":10.0,\"text_loc\":{\"z\":77.98210144042969,\"x\":1395.26611328125,\"y\":-570.1614379882813}}'),
(281, '{\"objects\":[{\"door_loc\":{\"y\":-594.26513671875,\"z\":74.58651733398438,\"x\":1386.20751953125},\"door_rot\":{\"y\":-0.0,\"z\":-127.1742935180664,\"x\":0.0},\"reposition\":false,\"door_model\":520341586}],\"text_loc\":{\"y\":-593.7421264648438,\"z\":74.58651733398438,\"x\":1386.5904541015626},\"dist\":5.0,\"locked\":true,\"auth_items\":[],\"draw\":10.0,\"break_items\":[],\"auth_jobs\":{\"lf\":{\"min_rank\":0}}}'),
(282, '{\"dist\":5.0,\"objects\":[{\"door_model\":-1603817716,\"door_loc\":{\"x\":488.892822265625,\"z\":27.14763450622558,\"y\":-1017.2099609375},\"door_rot\":{\"x\":0.0,\"z\":90.0,\"y\":0.0},\"reposition\":false}],\"text_loc\":{\"x\":488.9140319824219,\"z\":28.71018981933593,\"y\":-1019.9532470703125},\"interact_in_veh\":true,\"locked\":true,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"break_items\":[],\"auth_items\":[],\"draw\":10.0}'),
(285, '{\"text_loc\":{\"z\":77.969970703125,\"y\":-601.5136108398438,\"x\":1399.2652587890626},\"auth_jobs\":{\"lf\":{\"min_rank\":0}},\"dist\":5.0,\"objects\":[{\"door_rot\":{\"z\":142.82569885253907,\"y\":-0.0,\"x\":0.0},\"reposition\":false,\"door_model\":-1563640173,\"door_loc\":{\"z\":77.969970703125,\"y\":-601.9066772460938,\"x\":1399.7833251953126}}],\"draw\":10.0,\"locked\":true,\"break_items\":[],\"auth_items\":[]}'),
(286, '{\"locked\":true,\"text_loc\":{\"z\":54.82746505737305,\"y\":-179.24107360839845,\"x\":541.33349609375},\"break_items\":[],\"dist\":5.0,\"auth_items\":[],\"objects\":[{\"door_rot\":{\"z\":-89.99996948242188,\"y\":0.00000966291827,\"x\":-0.50765091180801},\"door_loc\":{\"z\":55.51271057128906,\"y\":-179.24107360839845,\"x\":541.33349609375},\"door_model\":-1458889440,\"reposition\":false}],\"auth_jobs\":{\"mechanic\":{\"min_rank\":0}},\"draw\":10.0}'),
(287, '{\"draw\":10.0,\"text_loc\":{\"z\":26.3707046508789,\"x\":464.16033935546877,\"y\":-996.90771484375},\"break_items\":[],\"locked\":true,\"auth_jobs\":{\"police\":{\"min_rank\":0}},\"dist\":5.0,\"objects\":[{\"door_loc\":{\"z\":26.3707046508789,\"x\":464.15655517578127,\"y\":-997.50927734375},\"door_model\":1830360419,\"reposition\":false,\"door_rot\":{\"z\":89.64067840576172,\"x\":-3.43336665764582e-7,\"y\":8.914085469768907e-9}}],\"auth_items\":[]}');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `dopeplants`
--

CREATE TABLE `dopeplants` (
  `owner` varchar(50) NOT NULL,
  `plant` longtext NOT NULL,
  `plantid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `esx_manager_bans`
--

CREATE TABLE `esx_manager_bans` (
  `identifier` varchar(60) NOT NULL,
  `name` text NOT NULL,
  `reason` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `esx_manager_warns`
--

CREATE TABLE `esx_manager_warns` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `warned` text NOT NULL,
  `reason` text NOT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `jailtime`, `category`) VALUES
(1, 'Kørsel i spirituspåvirket tilstand (Frakendelse)	', 15000, 10, 0),
(2, 'Kørsel i narkopåvirket tilstand (Frakendelse)', 15000, 15, 0),
(3, 'Hasarderet kørsel			', 5000, 0, 0),
(4, 'Kørsel uden hjelm			', 2500, 0, 0),
(5, 'Overhaling højre om	 (1 klip)		', 2500, 0, 0),
(6, 'Manglende orientering i trafikken			', 2500, 0, 0),
(7, 'Uagtsom personskade ved hasarderet kørsel (1 klip)	', 5000, 0, 0),
(8, 'Kørsel uden sele (1 klip)', 2500, 0, 0),
(9, 'Kørsel  på tog skiner (1 klip)', 5000, 0, 0),
(10, 'Færdselstavle eller pile ikke respekteret (1 klip)', 3500, 0, 0),
(11, 'Kørsel mod færdselsretning\n (1 klip)', 5000, 0, 0),
(12, 'Overskredet spærrelinje ved overhaling			', 2500, 0, 0),
(13, 'Kørsel over for rødt lys (1 klip)	', 2500, 0, 0),
(14, 'Ulovlig kørsel i nødspor			', 5000, 0, 0),
(15, 'Væddeløbskørsel på offentlig vej (Frakendelse)', 10000, 0, 0),
(16, 'Kørsel frem for fuldt stop (1 klip)', 3500, 0, 0),
(17, 'Kørsel over fuldt optrukne linjer', 2500, 0, 0),
(18, 'Ulovlig u-vending			', 2500, 0, 0),
(19, 'Færden på eller langs kørebanen			', 5000, 0, 0),
(20, 'Færden i nødspor			', 10000, 0, 0),
(21, 'Færden på motorvej			', 12000, 0, 0),
(22, 'Motorkøretøj på fortov eller cykelsti (1 klip)', 13000, 0, 0),
(23, 'Undladt at holde så langt til højre som muligt			', 2500, 0, 0),
(24, 'Fejlplacering i sving			', 2500, 0, 0),
(25, 'Ubetinget vigepligt			', 2500, 0, 0),
(26, 'Højre vigepligt', 2500, 0, 0),
(27, 'Manglende vigen for udrykningskøretøj (1 klip)', 2500, 0, 0),
(28, 'Ulovlig parkering			', 1500, 0, 0),
(29, 'Undladt at sikre køretøj			', 2500, 0, 0),
(30, 'Hastighedovertrædelse', 0, 0, 0),
(31, 'Kørsel uden lys			', 1500, 0, 0),
(32, 'Neonlys			', 5000, 0, 0),
(33, 'Røg og støj (1 klip)		', 6000, 0, 0),
(34, 'Defekt lygte (pr lygte)', 2500, 0, 0),
(35, 'Unødig brug af horn			', 3500, 0, 0),
(36, 'Kørsel med tonede ruder			', 3500, 0, 0),
(37, 'Ulovligt horn			', 10000, 0, 0),
(38, 'Kørsel uden førerret\n', 15000, 0, 0),
(39, 'Brugstyveri			', 18000, 15, 0),
(40, 'Køretøj i uforsvarlig tilstand (Frakendelse)	', 20000, 0, 0),
(41, 'Kørsel i frakendelsesperioden			', 20000, 0, 0),
(42, 'Vold', 10000, 10, 1),
(43, 'Grov Vold', 15000, 20, 1),
(44, 'Vold mod tjenstemand', 20000, 25, 1),
(45, 'Grov vold mod tjenestemand			', 25000, 35, 1),
(46, 'Trusler mod civil			', 17000, 10, 1),
(47, 'Trusler mod tjenestemand			', 20000, 10, 1),
(48, 'Mordforsøg', 30000, 35, 1),
(49, 'Mordforsøg på tjenestemand			', 40000, 50, 1),
(50, 'Manddrab			', 60000, 60, 1),
(51, 'Manddrab på tjenestemand		', 60000, 60, 1),
(52, 'Dødstrussel			', 30000, 20, 1),
(53, 'Uagtsomt manddrab			', 30000, 25, 1),
(54, 'Butiksrøveri			', 50000, 30, 1),
(55, 'Væbnet butiksrøveri', 75000, 45, 1),
(56, 'Bankrøveri/juvelrøveri', 55000, 40, 1),
(57, 'Væbnet bankrøveri/juvelrøveri', 90000, 50, 1),
(58, 'Røveri mod Nationalbanken', 125000, 50, 1),
(59, 'Væbnet røveri mod person', 55000, 15, 1),
(60, 'Medvirkende til bankrøveri', 55000, 40, 1),
(61, 'Forsøg på kidnapning', 30000, 20, 1),
(62, 'Kidnapning på tjenestemand', 72000, 60, 1),
(63, 'Kidnapning', 60000, 40, 1),
(64, 'Gidseltagning', 60000, 35, 1),
(65, 'Flugt fra fængsel', 50000, 25, 1),
(66, 'Fængselsudbrud (medskyldig i flugt fra fængsel)', 50000, 25, 1),
(67, 'Terrorisme', 200000, 45, 1),
(68, 'Terrortrusler', 50000, 20, 1),
(69, 'Brandstiftelse', 30000, 20, 1),
(70, 'Dyremishandling', 30000, 20, 1),
(71, 'Bestikkelse', 75000, 15, 1),
(72, 'Afpresning', 75000, 25, 1),
(73, 'Korruption', 295000, 75, 1),
(74, 'Indbrud', 75000, 30, 1),
(75, 'Ulovlig indtrængen', 50000, 3, 1),
(76, 'Brud af polititilhold', 70000, 30, 1),
(77, 'Ulovligt erhverv', 25000, 15, 1),
(78, 'Manglende identifikation', 10500, 0, 1),
(79, 'Udgive sig for at være tjenestemand', 80000, 30, 1),
(80, 'Falsk rapport', 35000, 0, 1),
(81, 'Dokumentfalsk', 55000, 15, 1),
(82, 'Forstyrrelse af ro og orden', 10000, 15, 1),
(83, 'Chikane', 10000, 15, 1),
(84, 'Blufærdighedskrænkelse', 15000, 30, 1),
(85, 'Forstyrrelse af privatlivets fred', 35000, 10, 1),
(86, 'Modsættelse af politiets anvisninger', 30000, 25, 1),
(87, 'Foragt for retten', 25000, 10, 1),
(88, 'Forstyrrelse af politiets arbejde', 35000, 25, 1),
(89, 'Udeblivelse af retten', 40000, 45, 1),
(90, 'Tyveri af statens ejendomme', 0, 0, 1),
(91, 'Tyveri', 35000, 15, 1),
(92, 'Hærværk', 10000, 10, 1),
(93, 'Grov Hærværk', 35000, 20, 1),
(94, 'Indbrud', 15000, 16, 1),
(95, 'Maskering i offentligheden', 45000, 15, 1),
(96, 'Flugt fra politiet til fods', 40000, 20, 1),
(97, 'Flugt fra politiet i båd', 40000, 20, 1),
(98, 'Flugt fra politiet i bil/på motorcykel', 40000, 20, 1),
(99, 'Kokainplanter (50 stk)', 7500, 5, 1),
(100, 'Kokainplanter (100 stk)', 15000, 10, 1),
(101, 'Kokain (50 stk)', 15000, 10, 1),
(102, 'Kokain (100 stk)', 30000, 20, 1),
(103, 'Hash (50 stk)', 7500, 5, 1),
(104, 'Hash (100 stk)', 15000, 10, 1),
(105, 'Herion (50 stk)', 15000, 10, 1),
(106, 'Herion (100 stk)', 30000, 20, 1),
(107, 'Meth (50 stk)', 15000, 10, 1),
(109, 'Meth (100 stk)', 30000, 20, 1),
(110, 'LSD (50 stk)', 15000, 10, 1),
(111, 'LSD (100 stk)', 30000, 20, 1),
(112, 'Besiddelse af klasse 1-våben			', 60000, 40, 1),
(113, 'Besiddelse af klasse 2-våben			', 80000, 60, 1),
(114, 'Besiddelse af slagvåben			', 20000, 15, 1),
(115, 'Besiddelse af stikvåben 			', 35000, 25, 1),
(116, 'Besiddelse af sprængstoffer			', 80000, 75, 1),
(117, 'Besiddelse af ulovlig ammunition 100 stk	', 100000, 0, 1),
(118, 'Besiddelse af ulovlig ammunition 50 stk	', 50000, 0, 1),
(119, 'Våbenhandel			', 60000, 50, 1),
(120, 'Våben affyret			', 60000, 50, 1),
(121, 'Husrøveri', 35000, 35, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `fine_types_ems`
--

CREATE TABLE `fine_types_ems` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `fine_types_ems`
--

INSERT INTO `fine_types_ems` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Place holder', 150, 0),
(2, 'Place holder', 70, 0),
(3, 'Place holder', 70, 0),
(4, 'Place holder', 50, 0),
(5, 'Place holder', 50, 0);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `fuel_stations`
--

CREATE TABLE `fuel_stations` (
  `id` int(11) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `coords` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Data dump for tabellen `fuel_stations`
--

INSERT INTO `fuel_stations` (`id`, `quantity`, `price`, `coords`, `name`, `type`) VALUES
(1, 1000, 2, '{\"y\":2778.79,\"x\":49.42,\"z\":58.04}', 'Xero GS Desert 1', 'fuel_station'),
(2, 883.7, 1, '{\"y\":2606.46,\"x\":263.89,\"z\":44.98}', 'Globe Oil Harmony 2', 'fuel_station'),
(3, 962, 1, '{\"y\":2671.13,\"x\":1039.96,\"z\":39.55}', 'Globe Oil GS Desert 3', 'fuel_station'),
(4, 819.2, 1, '{\"y\":2660.18,\"x\":1207.26,\"z\":37.9}', 'Globe Oil GS Desert 4', 'fuel_station'),
(5, 953, 1, '{\"y\":2594.19,\"x\":2539.69,\"z\":37.94}', 'Rex\'s Diner DQ 5', 'fuel_station'),
(6, 1351.3, 1.25, '{\"y\":3263.95,\"x\":2679.86,\"z\":55.24}', 'Earl\'s GS Desert 6', 'fuel_station'),
(7, 851.6, 1, '{\"y\":3773.89,\"x\":2005.06,\"z\":32.4}', 'Sandy\'s Sandy 7', 'fuel_station'),
(8, 895.8, 1, '{\"y\":4929.39,\"x\":1687.16,\"z\":42.08}', 'Ltd Grapeseed 8', 'fuel_station'),
(9, 895.6, 1, '{\"y\":6416.03,\"x\":1701.31,\"z\":32.76}', 'Globe Oil MC 9', 'fuel_station'),
(10, 866.6, 1, '{\"y\":6602.84,\"x\":179.86,\"z\":31.87}', 'Ron Paleto 10', 'fuel_station'),
(14, 635, 1, '{\"y\":-276.75,\"x\":-1437.62,\"z\":46.21}', 'Ron MorningWood 14', 'fuel_station'),
(16, 1570.2, 3, '{\"y\":-935.16,\"x\":-724.62,\"z\":19.21}', 'Ltd Lil Seoul 16', 'fuel_station'),
(17, 727.1, 1, '{\"y\":-1211.0,\"x\":-526.02,\"z\":18.18}', 'Xero LilS/Calaic Av 17', 'fuel_station'),
(11, 860.5, 1, '{\"y\":6419.59,\"x\":-94.46,\"z\":31.49}', 'Xero Paleto 11', 'fuel_station'),
(12, 795.5, 1, '{\"y\":2334.4,\"x\":-2555.0,\"z\":33.08}', 'Ron Lago Z 12', 'fuel_station'),
(13, 920.4, 1, '{\"y\":803.66,\"x\":-1800.38,\"z\":138.65}', 'Ltd Richman G 13', 'fuel_station'),
(15, 942.7, 1, '{\"y\":-320.29,\"x\":-2096.24,\"z\":13.17}', 'Xero Pacific B 15', 'fuel_station'),
(19, 665.2, 1, '{\"y\":-1261.31,\"x\":265.65,\"z\":29.29}', 'Xero StrawBerry 19', 'fuel_station'),
(18, 4408.4, 3, '{\"y\":-1761.79,\"x\":-70.21,\"z\":29.53}', 'Ltd GS 18', 'fuel_station'),
(20, 770.1, 1.1, '{\"y\":-1028.85,\"x\":819.65,\"z\":26.4}', 'Ron La Mesa 20', 'fuel_station'),
(21, 804.6, 1, '{\"y\":-1402.57,\"x\":1208.95,\"z\":35.22}', 'Ron El Burro 21', 'fuel_station'),
(22, 1550, 4, '{\"y\":-330.85,\"x\":1181.38,\"z\":69.32}', 'Ltd Mirror Park 22', 'fuel_station'),
(23, 138.9, 1, '{\"y\":269.1,\"x\":620.84,\"z\":103.09}', 'Globe Oil Vinewood 23', 'fuel_station'),
(24, 1867, 1, '{\"y\":362.04,\"x\":2581.32,\"z\":108.47}', 'Ron MT 24', 'fuel_station'),
(25, 390.2, 1, '{\"y\":-1562.03,\"x\":176.63,\"z\":29.26}', 'Ron Davis 25', 'fuel_station'),
(26, 1000, 1, '{\"y\":-1562.03,\"x\":176.63,\"z\":29.26}', 'Ron Davis 26', 'fuel_station'),
(27, 318.6, 1, '{\"y\":-1471.71,\"x\":-319.29,\"z\":30.55}', 'Globe Oil La Puerta 27', 'fuel_station'),
(28, 719.2, 1, '{\"y\":3330.55,\"x\":1784.32,\"z\":41.25}', 'FlyWheels GS Desert 28', 'fuel_station'),
(29, 1000, 1, '{\"y\":3234.22,\"x\":1771.4,\"z\":42.33}', 'Aero Sandy 29', 'fuel_station'),
(32, 1000, 1, '{\"y\":-1496.75,\"x\":-805.79,\"z\":1.6}', 'Boat La Puerta32', 'fuel_station'),
(31, 1000, 1, '{\"y\":-1464.27,\"x\":-706.32,\"z\":5.04}', 'Aero La Puerta31', 'fuel_station'),
(30, 1000, 1, '{\"y\":4458.91,\"x\":3858.3,\"z\":1.82}', 'Boat MSC 30', 'fuel_station');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `gangs`
--

CREATE TABLE `gangs` (
  `id` int(11) NOT NULL,
  `gangName` varchar(65) DEFAULT NULL,
  `expireTime` date DEFAULT NULL,
  `gangColor` tinyint(1) DEFAULT 1,
  `blipRadius` int(11) NOT NULL DEFAULT 100,
  `coords` text DEFAULT NULL,
  `accountMoney` varchar(10) NOT NULL DEFAULT '0',
  `canSearch` tinyint(4) NOT NULL DEFAULT 1,
  `canCuff` tinyint(4) NOT NULL DEFAULT 1,
  `canMove` tinyint(4) NOT NULL DEFAULT 1,
  `canOpenCarsDoor` tinyint(4) NOT NULL DEFAULT 1,
  `haveGPS` tinyint(4) NOT NULL DEFAULT 1,
  `slotPlayer` int(11) NOT NULL DEFAULT 0,
  `maxArmor` int(11) NOT NULL DEFAULT 0,
  `inventory` longtext DEFAULT NULL,
  `discordHook` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `gangs_grade`
--

CREATE TABLE `gangs_grade` (
  `gradeId` int(11) NOT NULL,
  `gangId` int(11) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT 0,
  `name` varchar(65) DEFAULT NULL,
  `salary` int(11) NOT NULL DEFAULT 0,
  `maleSkin` text DEFAULT NULL,
  `femaleSkin` text DEFAULT NULL,
  `accessVehicle` tinyint(1) NOT NULL DEFAULT 1,
  `accessArmory` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `gangs_member`
--

CREATE TABLE `gangs_member` (
  `playerIdentifiers` varchar(250) DEFAULT NULL,
  `gangId` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `h_impounded_vehicles`
--

CREATE TABLE `h_impounded_vehicles` (
  `plate` varchar(12) NOT NULL,
  `officer` varchar(255) DEFAULT NULL,
  `mechanic` varchar(255) DEFAULT NULL,
  `releasedate` varchar(25) DEFAULT NULL,
  `fee` double NOT NULL,
  `reason` text NOT NULL,
  `notes` text DEFAULT NULL,
  `vehicle` text NOT NULL,
  `identifier` varchar(30) NOT NULL,
  `hold_o` tinyint(1) DEFAULT 0,
  `hold_m` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `insto_accounts`
--

CREATE TABLE `insto_accounts` (
  `id` int(11) NOT NULL,
  `forename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `surname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `insto_instas`
--

CREATE TABLE `insto_instas` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `insto_likes`
--

CREATE TABLE `insto_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('accesscard', 'Adgangs Kort', 0, 0, 1),
('advancedlockpick', 'Koben', 0.1, 0, 1),
('advrepairkit', 'Adv Repair Kit', 1, 0, 1),
('alive_chicken', 'Levende kylling', 0.1, 0, 1),
('aluminium', 'Aluminium', 0.5, 0, 1),
('bagofdope', 'Bag of Dope', -1, 0, 1),
('bandage', 'Bandage', 0.1, 0, 1),
('bank_c4', 'C4', 1, 0, 1),
('beer', 'Øl', 0.1, 0, 1),
('blindfold', 'Pose', 1, 0, 1),
('blowpipe', 'Skærebrænder', 0.2, 0, 1),
('bread', 'Brød', 0.1, 0, 1),
('burger', 'Burger', 0.1, 0, 1),
('cannabis', 'Cannabis', 0.1, 0, 1),
('carjack', 'Car Jack', 1, 0, 1),
('carokit', 'Karosseriudstyr', 0.3, 0, 1),
('carotool', 'Karosseriværktøjer', 0.2, 0, 1),
('car_door', 'Car Door', 1, 0, 1),
('car_hood', 'Car Hood', 1, 0, 1),
('car_trunk', 'Car Trunk', 1, 0, 1),
('car_wheel', 'Car Wheel', 1, 0, 1),
('celownikdluga', 'Langt syn', 1, 0, 1),
('champagne', 'Champagne Bottle', 0, 0, 1),
('chemicals', 'Kemikalier', 0.1, 0, 1),
('chemicalslisence', 'Chemicals license', 0.1, 0, 1),
('chips', 'Chips', 0.1, 0, 1),
('chocolate', 'Chokolade', 0.1, 0, 1),
('cigarette', 'Cigaret', 0.1, 0, 1),
('clothe', 'Tøj', 0.1, 0, 1),
('cocacola', 'Cola', 0.1, 0, 1),
('cocaine_cut', 'Kokain', 1, 0, 1),
('cocaine_packaged', 'Pakket Kokain', 1, 0, 1),
('cocaine_uncut', 'Kokain Plante', 1, 0, 1),
('coca_leaf', 'Coca Leaf', 40, 0, 1),
('coffe', 'Kaffe', 0.1, 0, 1),
('coke', 'Coke', 40, 0, 1),
('coke10g', 'Kokain (10G)', 0.1, 0, 1),
('coke1g', 'Kokain (1G)', 0.01, 0, 1),
('cokebrick', 'Kokain Blok (100G)', 1, 0, 1),
('cokeplante', 'Kokaplante', 0.1, 0, 1),
('colis', 'Pakker', 0.2, 0, 1),
('contract', 'Kontrakt', 0.1, 0, 1),
('copper', 'Kobber', 0.1, 0, 1),
('cupcake', 'Muffin', 0.1, 0, 1),
('cutted_wood', 'Brænde stykker', 0.1, 0, 1),
('cut_money', 'Sorte Penge - Klippede', 1, 0, 1),
('diamond', 'Diamant', 0.1, 0, 1),
('dopebag', 'Ziplock Bag', -1, 0, 1),
('drill', 'Bor', 0.2, 0, 1),
('drugbags', 'Pose', 0.1, 0, 1),
('drugItem', 'Black USB-C', 2, 0, 1),
('drugscales', 'Drug Scales', -1, 0, 1),
('electric_scrap', 'Electric Scrap', 0.5, 0, 1),
('essence', 'Benzin', 0.1, 0, 1),
('fabric', 'Stof', 0.1, 0, 1),
('fish', 'Fisk', 0.1, 0, 1),
('fixkit', 'Reparationsudstyr', 0.3, 0, 1),
('fixtool', 'Reparationsværktøjer', 0.2, 0, 1),
('flashlight', 'Lygte', 1, 0, 1),
('gazbottle', 'Benzindunk', 0.2, 0, 1),
('glass', 'Glass', 0.5, 0, 1),
('gold', 'Guld', 0.1, 0, 1),
('goldbar', 'Guld Bar', 0.1, 0, 1),
('goldnecklace', 'Gold Halskæde', 0.1, 0, 1),
('goldwatch', 'Guld Ur', 0.1, 0, 1),
('goodbread', 'Masny Chlebek', 0.1, 0, 1),
('grip', 'Grip', 1, 0, 1),
('hackerDevice', 'Hacker Apparat', 0.2, 0, 1),
('hammerwirecutter', 'Hammer And Wire Cutter', 10, 0, 1),
('heroin', 'Heroin', 0.1, 0, 1),
('highgradefemaleseed', 'Female Dope Seed+', -1, 0, 1),
('highgradefert', 'High-Grade Fertilizer', -1, 0, 1),
('highgrademaleseed', 'Male Dope Seed+', -1, 0, 1),
('holografik', 'Holografik', 1, 0, 1),
('hqscale', 'High Quality Scale', 0.1, 0, 1),
('hydrochloric_acid', 'HydroChloric Acid', 0.1, 0, 1),
('icetea', 'Ice-tea', 0.2, 0, 1),
('iron', 'Jern', 0.1, 0, 1),
('jewels', 'Juveler', 0.1, 0, 1),
('joint2g', 'Joint (2G)', 0.2, 0, 1),
('kompensator', 'Kompensator', -1, 0, 1),
('largescope', 'Large Sigte', 0, 0, 1),
('letter', 'Brev', 0.1, 0, 1),
('lighter', 'Lighter', 0.1, 0, 1),
('lockpick', 'Lockpick', 0.1, 0, 1),
('lowgradefemaleseed', 'Female Dope Seed', -1, 0, 1),
('lowgradefert', 'Low-Grade Fertilizer', -1, 0, 1),
('lowgrademaleseed', 'Male Dope Seed', -1, 0, 1),
('lsa', 'LSA', 0.1, 0, 1),
('lsd', 'LSD', 0.1, 0, 1),
('magasin', 'Magasin', 0.1, 0, 1),
('marijuana', 'Marijuana', 14, 0, 1),
('medikit', 'Medkit', 0.2, 0, 1),
('mediumscope', 'Mediumscope', 1, 0, 1),
('meth', 'Meth', 30, 0, 1),
('meth10g', 'Metamfetamin (10G)', 0.1, 0, 1),
('meth1g', 'Metamfetamin (1G)', 0.2, 0, 1),
('methbrick', 'Metamfetamin Blok (100G)', 0.5, 0, 1),
('meth_packaged', 'Pakket Methamfetamin', 1, 0, 1),
('meth_raw', 'Methamfetamin', 1, 0, 1),
('milk', 'Mælk', 0.1, 0, 1),
('milkbottle', 'Butelka Mleka', 0.1, 0, 1),
('mleko', 'Mleko', 0.1, 0, 1),
('moneywash', 'MoneyWash License', 0.1, 0, 1),
('MountedScope', 'Pistol Sigte', -1, 0, 1),
('packaged_chicken', 'Pakket kylling', 0.1, 0, 1),
('packaged_plank', 'Planker', 0.1, 0, 1),
('petrol', 'Olie', 0.1, 0, 1),
('petrol_raffin', 'Raffineret olie', 0.1, 0, 1),
('phone', 'Telefon', 0.1, 0, 1),
('plantpot', 'Plant Pot', -1, 0, 1),
('plastic', 'Plastic', 0.5, 0, 1),
('poppyresin', 'Poppy Resin', 0.1, 0, 1),
('powiekszonymagazynek', 'Udvidet Ammo', -1, 0, 1),
('purifiedwater', 'Purified Water', -1, 0, 1),
('radio', 'Radio', 0.1, 20, 1),
('receipt', 'W.C receipt', 0, 0, 1),
('repairkit', 'Repair Kit', 1, 0, 1),
('rolpaper', 'Rullepapir', 0.1, 0, 1),
('rubber', 'Rubber', 0.5, 0, 1),
('sandwich', 'Sandwich', 0.2, 0, 1),
('scope', 'Sigte', 1, 20, 1),
('scrap_metal', 'Scrap Metal', 0.5, 0, 1),
('skudsikkervest', 'Skudsikker Vest', 1, 0, 1),
('slaughtered_chicken', 'Slagtet kylling', 0.1, 0, 1),
('sodium_hydroxide', 'Sodium Hydroxide', 0.1, 0, 1),
('sorted_money', 'Sorte Penge - Sorteret', 1, 0, 1),
('steel', 'Steel', 0.5, 0, 1),
('stone', 'Sten', 0.1, 0, 1),
('strips', 'Strips', 0.1, 0, 1),
('sulfuric_acid', 'Sulfuric Acid', 0.1, 0, 1),
('suppressor', 'Lyddæmper', 1, 0, 1),
('supressor', 'Lyddæmper', 1, 0, 1),
('tequila', 'Tequila', 0.2, 0, 1),
('thionyl_chloride', 'Thionyl Chloride', 0.1, 0, 1),
('trimmedweed', 'Trimmed Weed', -1, 0, 1),
('vodka', 'Vodka', 0.2, 0, 1),
('washed_stone', 'Vasket sten', 0.1, 0, 1),
('water', 'Vand', 0.1, 0, 1),
('wateringcan', 'Watering Can', -1, 0, 1),
('weed20g', 'Hamp (20G)', 0.2, 0, 1),
('weed4g', 'Hamp (4G)', 0.04, 0, 1),
('weedbrick', 'Hamp Blok (200G)', 2, 0, 1),
('weed_packaged', 'Pakket Hamp', 1, 0, 1),
('weed_untrimmed', 'Hamp', 1, 0, 1),
('wheat', 'Zboze', 0.1, 0, 1),
('whisky', 'Whisky', 0.2, 0, 1),
('wine', 'Vin', 0.2, 0, 1),
('wood', 'Brænde', 0.1, 0, 1),
('wool', 'Uld', 0.1, 0, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `jobblips`
--

CREATE TABLE `jobblips` (
  `id` int(11) NOT NULL,
  `text` varchar(50) DEFAULT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sprite` int(11) NOT NULL DEFAULT 0,
  `color` int(11) NOT NULL DEFAULT 0,
  `job` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `jobcars`
--

CREATE TABLE `jobcars` (
  `id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL DEFAULT '0',
  `job` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `jobclothes`
--

CREATE TABLE `jobclothes` (
  `id` int(11) NOT NULL,
  `job` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `jobconfigs`
--

CREATE TABLE `jobconfigs` (
  `id` int(11) NOT NULL,
  `job` varchar(50) DEFAULT NULL,
  `shop` int(11) DEFAULT NULL,
  `car1` varchar(50) DEFAULT NULL,
  `car2` varchar(50) DEFAULT NULL,
  `idman` int(11) DEFAULT NULL,
  `vehmanagement` int(11) DEFAULT NULL,
  `alerts` int(11) DEFAULT NULL,
  `obj` int(11) DEFAULT NULL,
  `handcuff` int(11) DEFAULT NULL,
  `bill` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `jobitems`
--

CREATE TABLE `jobitems` (
  `id` int(11) NOT NULL,
  `itemType` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `jobpoints`
--

CREATE TABLE `jobpoints` (
  `id` int(11) NOT NULL,
  `job` longtext DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `coords` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('advokat', 'Advokat', 1),
('amadons', 'Amadons Pizza', 1),
('ambulance', 'Læge', 1),
('avocat', 'Advokat', 1),
('balla', 'Ballas', 1),
('bandidos', 'Bandidos', 1),
('brothas', 'Brothas', 1),
('camorra', 'Camorra', 1),
('crips', 'Crips', 1),
('diablos', 'Diablos', 1),
('effb', 'E.F.F.B', 1),
('farmer', 'Farmer', 1),
('fisherman', 'Fisker', 1),
('fueler', 'Oliearbejder', 0),
('garbage', 'Skraldemand', 1),
('juarez', 'Juárez', 1),
('lcn', 'lcn', 1),
('lf', 'LF', 1),
('ltf', 'LTF', 1),
('lumberjack', 'Træhugger', 0),
('mailjob', 'Postmand', 1),
('mechanic', 'Mekaniker', 1),
('miner', 'Miner', 0),
('offambulance', 'Off-Duty', 1),
('offpolice', 'Off-Duty', 1),
('police', 'Politi', 1),
('reporter', 'Journalist', 1),
('slaughterer', 'Slagter', 0),
('tailor', 'Designer', 0),
('taxi', 'Taxi', 0),
('unemployed', 'Kontanthjælp', 0),
('windowcleaner', 'Vinduespudser', 1),
('yakuza', 'Yakuza', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Arbejdsløs', 800, '{}', '{}'),
(2, 'police', 0, 'recruit', 'Politikadet', 2300, '{}', '{}'),
(3, 'police', 1, 'officer', 'Politibetjent', 2500, '{}', '{}'),
(4, 'police', 2, 'sergeant', 'Politiassistent', 2600, '{}', '{}'),
(5, 'police', 4, 'lieutenant', 'Politikommissær', 2800, '{}', '{}'),
(7, 'mechanic', 0, 'recrue', 'Praktikant', 1000, '{\"tshirt_1\":89, \"pants_1\":98, \"bags_1\":52}', '{}'),
(8, 'mechanic', 1, 'novice', 'Mekanikerelev', 1500, '{\"tshirt_1\":89, \"pants_1\":98, \"bags_1\":52}', '{}'),
(9, 'mechanic', 2, 'experimente', 'Mekaniker 1. grad', 2000, '{\"tshirt_1\":89, \"pants_1\":98, \"bags_1\":52}', '{}'),
(10, 'mechanic', 3, 'chief', 'Mekaniker 2. grad', 2500, '{\"tshirt_1\":89, \"pants_1\":98, \"bags_1\":52}', '{}'),
(11, 'mechanic', 4, 'supreme', 'Mekaniker 3. grad', 3450, '{\"tshirt_1\":89, \"pants_1\":98, \"bags_1\":52}', '{}'),
(12, 'mechanic', 5, 'boss', 'MekanikerChef', 3500, '{\"tshirt_1\":89, \"pants_1\":98, \"bags_1\":52}', '{}'),
(13, 'fisherman', 0, 'employee', 'Fisker', 400, '{}', '{}'),
(14, 'fueler', 0, 'employee', 'Fueler', 0, '{}', '{}'),
(15, 'reporter', 0, 'employee', 'Journalist', 850, '{}', '{}'),
(16, 'tailor', 0, 'employee', 'Tailor', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(17, 'miner', 0, 'employee', 'Miner', 675, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(18, 'slaughterer', 0, 'employee', 'Slagter', 700, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(19, 'ambulance', 0, 'ambulance', 'Ambulanceelev', 2500, '{\"tshirt_1\":48,\"tshirt_2\":3,\"shoes\":7,\"torso_1\":244,\"torso_2\":0,\"pants_1\":49,\"pants_2\":2,\"bags_1\":50,\"mask_1\":111}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":252,\"torso_2\":0,\"pants_1\":49,\"pants_2\":0}'),
(20, 'ambulance', 1, 'doctor', 'Ambulanceredder', 3600, '{\"tshirt_1\":48,\"tshirt_2\":3,\"shoes\":7,\"torso_1\":244,\"torso_2\":1,\"pants_1\":49,\"pants_2\":2,\"bags_1\":50,\"mask_1\":111}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":252,\"torso_2\":1,\"pants_1\":49,\"pants_2\":0}'),
(21, 'ambulance', 2, 'chief_doctor', 'Ambulanceredder', 3600, '{\"tshirt_1\":48,\"tshirt_2\":3,\"shoes\":7,\"torso_1\":244,\"torso_2\":1,\"pants_1\":49,\"pants_2\":2,\"bags_1\":50,\"mask_1\":111}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":252,\"torso_2\":1,\"pants_1\":49,\"pants_2\":0}'),
(22, 'ambulance', 3, 'boss', 'Ambulance Ledelse', 4000, '{\"tshirt_1\":48,\"tshirt_2\":3,\"shoes\":7,\"torso_1\":244,\"torso_2\":4,\"pants_1\":49,\"pants_2\":2,\"bags_1\":50,\"mask_1\":111}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":252,\"torso_2\":4,\"pants_1\":49,\"pants_2\":0}'),
(83, 'avocat', 0, 'boss', 'Patron', 500, '', ''),
(84, 'taxi', 0, 'recrue', 'Taxaelev', 350, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(85, 'taxi', 1, 'novice', 'Taxachauffør', 500, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(86, 'taxi', 2, 'experimente', 'Taxa', 500, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(87, 'taxi', 3, 'uber', 'Taxa', 500, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(88, 'taxi', 4, 'boss', 'Taxachef', 1000, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(89, 'windowcleaner', 0, 'cleaner', 'Vinduespudser', 100, '{}', '{}'),
(92, 'offpolice', 0, 'recruit', 'Recruit', 12, '{}', '{}'),
(93, 'offpolice', 1, 'officer', 'Officer', 24, '{}', '{}'),
(94, 'offpolice', 2, 'sergeant', 'Sergeant', 36, '{}', '{}'),
(95, 'lumberjack', 0, 'employee', 'Skovhugger', 1000, '', ''),
(95, 'offpolice', 3, 'lieutenant', 'Lieutenant', 48, '{}', '{}'),
(96, 'offpolice', 4, 'boss', 'Boss', 0, '{}', '{}'),
(97, 'offambulance', 0, 'ambulance', 'Ambulance', 12, '{}', '{}'),
(98, 'offambulance', 1, 'doctor', 'Doctor', 24, '{}', '{}'),
(99, 'offambulance', 2, 'chief_doctor', 'Chef', 36, '{}', '{}'),
(100, 'offambulance', 3, 'boss', 'Boss', 48, '{}', '{}'),
(101, 'advokat', 0, 'boss', 'Advokat', 5000, '', ''),
(102, 'mailjob', 0, 'delivery', 'Per', 160, '{\"tshirt_1\":15, \"tshirt_2\":0, \"torso_1\":13, \"torso_2\":3, \"decals_1\":0, \"decals_2\":0, \"arms\":11, \"pants_1\":96, \"pants_2\":0, \"shoes_1\":10, \"shoes_2\":0, \"chain_1\":0, \"chain_2\":0, \"helmet_1\":-1, \"helmet_2\":0, \"glasses\":0}\', \'{}\')', ''),
(103, 'police', 3, 'sergeant', 'Politiassistent af 1. grad', 2750, '{}', '{}'),
(104, 'police', 5, 'lieutenant', 'Vicepolitiinspektør', 2850, '{}', '{}'),
(105, 'police', 6, 'lieutenant', 'Politiinspektør', 2900, '{}', '{}'),
(106, 'police', 7, 'lieutenant', 'Chefpolitiinspektør', 2950, '{}', '{}'),
(108, 'police', 9, 'boss', 'Politimester', 3200, '{}', '{}'),
(109, 'police', 10, 'boss', 'Politidirektør', 3250, '{}', '{}'),
(110, 'police', 11, 'boss', 'Rigspolitichef', 3500, '{}', '{}'),
(111, 'police', 8, 'lieutenant', 'Afdelingschef', 3000, '{}', '{}'),
(120, 'diablos', 0, 'medlem', 'Diablos', 350, '', ''),
(121, 'brothas', 0, 'medlem', 'Brothas', 350, '{}', '{}'),
(122, 'crips', 0, 'medlem', 'Crips', 350, '', ''),
(151, 'farmer', 0, 'employee', 'Zatrudniony', 500, '{}', '{}'),
(152, 'ltf', 0, 'ltfpusher', 'Pusher', 300, '', ''),
(153, 'ltf', 1, 'ltfmember', 'Medlem', 300, '', ''),
(154, 'ltf', 2, 'ltfadvisor', 'Advisor', 300, '', ''),
(156, 'ltf', 3, 'ltfboss', 'President', 300, '', ''),
(157, 'camorra', 0, 'Associates', 'Associates', 300, '{}', '{}'),
(158, 'camorra', 1, 'Soldiers', 'Soldiers', 300, '{}', '{}'),
(159, 'camorra', 2, 'Caporegime', 'Caporegime', 300, '{}', '{}'),
(160, 'camorra', 3, 'Underboss', 'Underboss', 300, '{}', '{}'),
(161, 'camorra', 4, 'Consigliere', 'Consigliere', 300, '{}', '{}'),
(162, 'camorra', 5, 'Bookkeeper', 'Bookkeeper', 300, '{}', '{}'),
(163, 'camorra', 6, 'Secretary', 'Secretary', 300, '{}', '{}'),
(164, 'camorra', 7, 'Underboss', 'Underboss', 300, '{}', '{}'),
(165, 'camorra', 8, 'Boss', 'Boss', 300, '{}', '{}'),
(169, 'effb', 0, 'Prospect', 'Prospect', 300, '{}', '{}'),
(170, 'effb', 1, 'Patched', 'Patched', 300, '{}', '{}'),
(171, 'effb', 2, 'Enforcer', 'Enforcer', 300, '{}', '{}'),
(172, 'effb', 3, 'SGTatArms', 'SGT at Arms', 300, '{}', '{}'),
(173, 'effb', 4, 'RoadCaptain', 'Road Captain ', 300, '{}', '{}'),
(174, 'effb', 5, 'VicePresident', 'Vice President', 300, '{}', '{}'),
(175, 'effb', 6, 'President', 'President', 300, '{}', '{}'),
(176, 'effb', 7, 'Treasure', 'Treasure', 300, '{}', '{}'),
(177, 'effb', 8, 'Founder', 'Founder', 300, '{}', '{}'),
(178, 'lcn', 1, 'La Cosa Nostra', 'Boss', 300, '', ''),
(179, 'amadons', 0, 'arbejder', 'Medarbejder', 1500, '', ''),
(180, 'amadons', 1, 'chef', 'Chef', 2500, '', ''),
(181, 'balla', 0, 'trust', 'Trustee', 0, '', ''),
(182, 'balla', 1, 'member', 'Medlem', 0, '', ''),
(183, 'balla', 2, 'bring', 'Bringer', 0, '', ''),
(184, 'balla', 3, 'push', 'Pusher', 0, '', ''),
(185, 'balla', 4, 'book', 'Bookkeeper', 0, '', ''),
(186, 'balla', 5, 'aleader', 'Area Leaders ', 0, '', ''),
(187, 'balla', 6, 'chiefe', 'Chief Enforcer', 0, '', ''),
(188, 'balla', 7, 'advise', 'Advisor ', 0, '', ''),
(189, 'balla', 8, 'nextc', 'Chief Enforcer', 0, '', ''),
(190, 'balla', 9, 'chef', 'Boss', 0, '', ''),
(191, 'yakuza', 0, 'shate', 'Shatei', 0, '', ''),
(192, 'yakuza', 1, 'kak', 'Kaikei', 0, '', ''),
(193, 'yakuza', 2, 'shing', 'Shingiin', 0, '', ''),
(194, 'yakuza', 3, 'kyoda', 'Kyodai', 0, '', ''),
(195, 'yakuza', 4, 'shateig', 'Shateigashira', 0, '', ''),
(196, 'yakuza', 5, 'waka', 'Wakagashira', 0, '', ''),
(197, 'yakuza', 6, 'saiko', 'Saiko Komon', 0, '', ''),
(198, 'yakuza', 7, 'oya', 'Oyabun', 0, '', ''),
(199, 'bandidos', 0, 'trymember', 'Prospect', 0, '', ''),
(200, 'bandidos', 1, 'memb', 'Member', 0, '', ''),
(201, 'bandidos', 2, 'vp', 'Vice Præsident', 0, '', ''),
(202, 'bandidos', 3, 'pres', 'Præsident', 0, '', ''),
(203, 'lf', 0, 'asco', 'Associeret', 0, '', ''),
(204, 'lf', 1, 'soldat', 'Soldier', 0, '', ''),
(205, 'lf', 2, 'capo', 'Caporegime', 0, '', ''),
(206, 'lf', 3, 'cons', 'Consigliere', 0, '', ''),
(207, 'lf', 4, 'underb', 'Underboss', 0, '', ''),
(208, 'lf', 5, 'chef', 'Boss', 0, '', ''),
(209, 'juarez', 0, 'memb', 'Member', 0, '', ''),
(210, 'juarez', 1, 'vp', 'Vice Boss', 0, '', ''),
(211, 'juarez', 2, 'boss', 'Boss', 0, '', '');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kc_bans`
--

CREATE TABLE `kc_bans` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL DEFAULT '0',
  `license` varchar(100) NOT NULL,
  `reason` varchar(250) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '127.0.0.1',
  `admin_name` varchar(100) NOT NULL DEFAULT '0',
  `admin_identifier` varchar(100) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kc_jails`
--

CREATE TABLE `kc_jails` (
  `id` int(11) NOT NULL,
  `license` varchar(100) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '0',
  `admin_name` varchar(100) NOT NULL DEFAULT '0',
  `admin_identifier` varchar(100) NOT NULL DEFAULT '0',
  `time` varchar(100) NOT NULL DEFAULT '0',
  `time_s` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kc_warns`
--

CREATE TABLE `kc_warns` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) NOT NULL DEFAULT '0',
  `license` varchar(100) NOT NULL DEFAULT '0',
  `reason` varchar(250) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '0',
  `admin_name` varchar(250) NOT NULL DEFAULT '0',
  `admin_identifier` varchar(100) NOT NULL DEFAULT '0',
  `timestamp` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('chemicalslisence', 'Chemicals license'),
('dmv', 'Teori Prøve'),
('drive', 'Bil kørekort'),
('drive_bike', 'Motorcykel kørekort'),
('drive_truck', 'Lastbil kørekort'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `logs`
--

CREATE TABLE `logs` (
  `logid` bigint(20) NOT NULL,
  `user` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `category` mediumtext NOT NULL,
  `dateline` bigint(20) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT 1 COMMENT '1 = Visible, 0 = Hidden'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `markers`
--

CREATE TABLE `markers` (
  `id` bigint(20) NOT NULL,
  `acronym` mediumtext NOT NULL,
  `name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `markers`
--

INSERT INTO `markers` (`id`, `acronym`, `name`) VALUES
(1, 'T1A', 'Assault'),
(2, 'T1AA', 'Assault with a Deadly Weapon'),
(3, 'T1B', 'Battery'),
(4, 'T1BA', 'Battery with Serious Bodily Harm'),
(5, 'T1C', 'False Imprisonment'),
(6, 'T1D', 'Kidnapping'),
(7, 'T1E', 'Attempted Murder'),
(8, 'T1FA', '1st Degree Murder'),
(9, 'T1FB', '2nd Degree Murder'),
(10, 'T1FC', '3rd Degree Murder'),
(11, 'T1GA', 'Voluntary Manslaughter'),
(12, 'T1GB', 'Involuntary Manslaughter'),
(13, 'T1GC', 'Vehicular Manslaughter'),
(14, 'T1H', 'Sexual Battery'),
(15, 'T1I', 'Toture'),
(16, 'T1J', 'Violating A Restraining Order'),
(17, 'T2A', 'Arson'),
(18, 'T2B', 'Trespassing'),
(19, 'T2C', 'Breaking and Entering'),
(20, 'T2D', 'Burglary'),
(21, 'T2E', 'Possession of criminal tools '),
(22, 'T2F', 'Vandalism'),
(23, 'T3A', 'Forgery'),
(24, 'T3B', 'Fraud'),
(25, 'T3C', 'Money Laundering'),
(26, 'T3DA', 'Petty Theft'),
(27, 'T3DB', 'Theft'),
(28, 'T3DC', 'Grand Theft'),
(29, 'T3DD', 'Grand Theft Auto'),
(30, 'T3DE', 'Grand Theft of Firearms'),
(31, 'T3E', 'Receiving Stolen Property'),
(32, 'T3F', 'Robbery'),
(33, 'T3G', 'Armed Robbery'),
(34, 'T3H', 'Extortion'),
(35, 'T3I', 'Counterfeiting'),
(36, 'T3J', 'Embezzlement'),
(37, 'T3K', 'Carjacking'),
(38, 'T4A', 'Bribery'),
(39, 'T4AA', 'Bribery of a Government Official'),
(40, 'T4AB', 'Accepting A Bribe'),
(41, 'T4B', 'Failure To Pay A Fine'),
(42, 'T4C', 'Resisting Arrest'),
(43, 'T4D', 'Escaping Custody'),
(44, 'T4E', 'Obstruction'),
(45, 'T4F', 'Misuse of a Government Helpline'),
(46, 'T4G', 'Human Trafficking'),
(47, 'T4H', 'Aiding and Abetting'),
(48, 'T4I', 'Accessory After The Fact'),
(49, 'T4J', 'Tampering With Evidence'),
(50, 'T4KA', 'Impersonation Of Another Person'),
(51, 'TK4B', 'Impersonation of a Government Official'),
(52, 'T4KC', 'Contempt of Court '),
(53, 'T4L', 'Corruption'),
(54, 'T4LA', 'Corruption of a Public Office'),
(55, 'T4LB', 'Corruption of Public Duty'),
(56, 'T5A', 'Indecent Exposure'),
(57, 'T5B', 'Disturbing the Peace'),
(58, 'T5C', 'Littering'),
(59, 'T5D', 'Unlawful Assembly'),
(60, 'T5E', 'Rioting'),
(61, 'T5EA', 'Participating in a Riot'),
(62, 'T5EB', 'Initiating a Riot'),
(63, 'T5F', 'Prostitution'),
(64, 'T5G', 'Pimping'),
(65, 'T6A', 'Public Intoxication'),
(66, 'T6B', 'Terrorism'),
(67, 'T6C', 'Possession of a controlled substance'),
(68, 'T6D', 'Possession of a controlled substance with intent'),
(69, 'T6E', 'Sale of a Controlled Substance'),
(70, 'T6FA', 'Manufacture of a Controlled Substance'),
(71, 'T6FB', 'Manufacturing of Alcohol without a license'),
(72, 'T6G', 'Sale of Alcohol to a minor'),
(73, 'T7A', 'Eluding / Evading a Peace Officer'),
(74, 'T7B', 'Reckless Elusion / Evasion?'),
(75, 'T7C', 'Hit and Run'),
(76, 'T7D', 'Hit and Run with Injury'),
(77, 'T7E', 'Failure to yield at a stop sign'),
(78, 'T7F', 'Reckless Driving'),
(79, 'T7G', 'Speeding'),
(80, 'T7H', 'Parking Violation'),
(81, 'T7I', 'Illegal Window Tint'),
(82, 'T7J', 'Driving without Valid License'),
(83, 'T7L', 'Failure to show I.D.'),
(84, 'T7M', 'Open Alcohol Container'),
(85, 'T7N', 'Driving Under the Influence'),
(86, 'T7O', 'Driving Under the Influence of Drugs'),
(87, 'T7P', 'Operation of a ATV on Streets/Highways'),
(88, 'T7Q', 'Operation of a Golf Cart on Streets/Highways'),
(89, 'T7R', 'Failure to Display plates'),
(90, 'T7S', 'Engaging in a Speed Contest'),
(91, 'T8A', 'Carrying a concealed weapon'),
(92, 'T8B', 'Possession of an Automatic Assault Rifle'),
(93, 'T8C', 'Felon in possession of a firearm'),
(94, 'T8D', 'High Dangerous Device'),
(95, 'T8E', 'Brandishing a weapon'),
(96, 'T8F', 'Brandishing a firearm'),
(97, 'T8G', 'Drive By Shooting'),
(98, 'T8H', 'General Prohibited weapons violation'),
(99, 'T8I', 'Weapons Discharge Violation'),
(100, 'T8IA', 'Weapons Discharge Violation (In Public)'),
(101, 'T8J', 'Unlawful sale of a firearm'),
(102, 'T8JA', 'Unlawful sale of a firearm to an unlicensed person'),
(103, 'CLEAN', 'CLEAN RECORD');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `mdt_reports`
--

CREATE TABLE `mdt_reports` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `incident` longtext DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `mdt_sessions`
--

CREATE TABLE `mdt_sessions` (
  `id` mediumint(9) NOT NULL,
  `session_id` mediumtext NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `timestamp` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `mdt_users`
--

CREATE TABLE `mdt_users` (
  `userid` mediumint(9) NOT NULL,
  `first_name` text NOT NULL,
  `surname` mediumtext NOT NULL,
  `email` mediumtext NOT NULL,
  `steamid` longtext NOT NULL,
  `password` mediumtext NOT NULL,
  `collar` mediumtext NOT NULL,
  `groups` mediumtext NOT NULL,
  `joindate` bigint(20) NOT NULL,
  `theme` int(11) NOT NULL DEFAULT 1,
  `last_ip` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `mdt_warrants`
--

CREATE TABLE `mdt_warrants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `report_title` varchar(255) DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `expire` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `messages`
--

CREATE TABLE `messages` (
  `messageid` mediumint(9) NOT NULL,
  `recive` mediumtext NOT NULL,
  `post` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `dateline` bigint(20) NOT NULL,
  `visible` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `nigac_ban`
--

CREATE TABLE `nigac_ban` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `opod_stash`
--

CREATE TABLE `opod_stash` (
  `owner` varchar(70) NOT NULL,
  `placeId` int(4) NOT NULL DEFAULT 0,
  `data` longtext DEFAULT NULL,
  `code` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `opod_stash`
--

INSERT INTO `opod_stash` (`owner`, `placeId`, `data`, `code`) VALUES
('steam:11000010082f698', 3542, '{\"carEntrance\":{\"z\":44.52091979980469,\"y\":-43.15336227416992,\"x\":-454.3158264160156},\"shellName\":\"stashhouse3_shell\",\"vaultPos\":{\"z\":-54.44797897338867,\"y\":-27.62489318847656,\"x\":-458.9191284179688},\"shellPos\":{\"z\":-55.48181533813476,\"y\":-24.01844787597656,\"x\":-459.585205078125},\"footEntrance\":{\"z\":44.51818466186523,\"y\":-24.01844787597656,\"x\":-459.585205078125},\"locked\":true,\"carPos\":{\"z\":-54.44787979125976,\"y\":-21.77375793457031,\"x\":-459.47357177734377},\"owner\":\"steam:11000010082f698\",\"exitPos\":{\"z\":-54.44797897338867,\"y\":-19.21913146972656,\"x\":-459.7283325195313},\"placeId\":3542,\"upgradePos\":{\"z\":-54.44789505004883,\"y\":-26.75379943847656,\"x\":-460.560302734375},\"carActive\":false,\"code\":\"1234\"}', '1234');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(40) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL DEFAULT 'civ',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `gotKey` int(11) NOT NULL DEFAULT 0,
  `alarm` int(11) NOT NULL DEFAULT 0,
  `health` longtext NOT NULL DEFAULT '[{"value":100,"part":"electronics"},{"value":100,"part":"fuelinjector"},{"value":100,"part":"brakes"},{"value":100,"part":"radiator"},{"value":100,"part":"driveshaft"},{"value":100,"part":"transmission"},{"value":100,"part":"clutch"}]',
  `storedhouse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `playerhousing`
--

CREATE TABLE `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `furniture` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `playerhousing_keys`
--

CREATE TABLE `playerhousing_keys` (
  `owner` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `playermotels`
--

CREATE TABLE `playermotels` (
  `id` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `zone` varchar(50) NOT NULL,
  `door` longtext NOT NULL,
  `inventory` longtext NOT NULL,
  `weapons` longtext NOT NULL,
  `dirtymoney` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `playermotels_homeinventory`
--

CREATE TABLE `playermotels_homeinventory` (
  `owner` varchar(50) NOT NULL,
  `inventory` longtext NOT NULL,
  `weapons` longtext NOT NULL,
  `dirtymoney` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `playerpeds`
--

CREATE TABLE `playerpeds` (
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `playerstattoos`
--

CREATE TABLE `playerstattoos` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pois`
--

CREATE TABLE `pois` (
  `id` bigint(20) NOT NULL,
  `civ_id` bigint(20) NOT NULL,
  `image` mediumtext NOT NULL,
  `reason` mediumtext NOT NULL,
  `notes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `policearmory`
--

CREATE TABLE `policearmory` (
  `steamID` tinytext NOT NULL,
  `weapons` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Basic apartment', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Modern Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Modern Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Modern Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Mody Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Mody Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Mody Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Vibrant Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Vibrant Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Vibrant Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Sharp Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Sharp Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Sharp Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Monochrome Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Monochrome Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Monochrome Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Seductive Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Seductive Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Seductive Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Regal Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Regal Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Regal Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Aqua Apartment 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Aqua Apartment 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Aqua Apartment 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(73, 'PenthouseUdsigt', '2200 Penthouse Unity', '{\"y\":-773.63\"z\":302.84,\"x\":85.71}', '{\"y\":-768.63\"z\":332.84,\"x\":243.38}', '{\"y\":-768.63\"z\":332.84,\"x\":243.38}', '{\"y\":-773.63\"z\":302.84,\"x\":85.71}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `remarks`
--

CREATE TABLE `remarks` (
  `remarkid` mediumint(9) NOT NULL,
  `unit` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `dateline` bigint(20) NOT NULL,
  `callid` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) NOT NULL,
  `user` bigint(20) NOT NULL,
  `incident` mediumtext NOT NULL,
  `cad` mediumtext NOT NULL,
  `located` mediumtext NOT NULL,
  `otherUnits` mediumtext NOT NULL,
  `arrested` mediumtext NOT NULL,
  `person` mediumtext NOT NULL,
  `arrestedFor` mediumtext NOT NULL,
  `foundItems` mediumtext NOT NULL,
  `whatHappened` longtext NOT NULL,
  `dateline` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `service`
--

CREATE TABLE `service` (
  `steamID` text DEFAULT NULL,
  `jobName` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 20),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 20),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 20),
(6, 'LTDgasoline', 'water', 15),
(7, 'TwentyFourSeven', 'beer', 25),
(8, 'RobsLiquor', 'beer', 25),
(9, 'LTDgasoline', 'beer', 25),
(10, 'TwentyFourSeven', 'burger', 50),
(11, 'RobsLiquor', 'burger', 50),
(12, 'LTDgasoline', 'burger', 50),
(13, 'TwentyFourSeven', 'radio', 1500),
(14, 'RobsLiquor', 'radio', 1500),
(15, 'LTDgasoline', 'radio', 1500),
(16, 'TwentyFourSeven', 'phone', 5000),
(17, 'RobsLiquor', 'phone', 5000),
(18, 'LTDgasoline', 'phone', 5000),
(22, 'LTDgasoline', 'strips', 50),
(23, 'RobsLiquor', 'strips', 50),
(24, 'TwentyFourSeven', 'strips', 50),
(25, 'TwentyFourSeven', 'cocacola', 15),
(26, 'RobsLiquor', 'cocacola', 15),
(27, 'LTDgasoline', 'cocacola', 15),
(28, 'LTDgasoline', 'cigarette', 50),
(29, 'TwentyFourSeven', 'cigarette', 50),
(30, 'RobsLiquor', 'cigarette', 50),
(31, 'Bar', 'beer', 20),
(32, 'Bar', 'wine', 100),
(33, 'Bar', 'vodka', 150),
(34, 'Bar', 'tequila', 130),
(35, 'Bar', 'whisky', 140),
(36, 'Bar', 'cigarette', 50),
(37, 'TwentyFourSeven', 'chocolate', 10),
(38, 'RobsLiquor', 'chocolate', 10),
(39, 'LTDgasoline', 'chocolate', 10),
(40, 'TwentyFourSeven', 'sandwich', 10),
(41, 'RobsLiquor', 'sandwich', 10),
(42, 'LTDgasoline', 'sandwich', 10),
(43, 'TwentyFourSeven', 'cupcake', 10),
(44, 'RobsLiquor', 'cupcake', 10),
(45, 'LTDgasoline', 'cupcake', 10),
(46, 'TwentyFourSeven', 'chips', 15),
(47, 'RobsLiquor', 'chips', 15),
(48, 'LTDgasoline', 'chips', 15),
(49, 'TwentyFourSeven', 'lighter', 8),
(50, 'RobsLiquor', 'lighter', 8),
(51, 'LTDgasoline', 'lighter', 8),
(52, 'TwentyFourSeven', 'icetea', 10),
(53, 'RobsLiquor', 'icetea', 10),
(54, 'LTDgasoline', 'icetea', 10),
(55, 'TwentyFourSeven', 'coffe', 10),
(56, 'RobsLiquor', 'coffe', 10),
(57, 'LTDgasoline', 'coffe', 10),
(58, 'TwentyFourSeven', 'milk', 15),
(59, 'RobsLiquor', 'milk', 15),
(60, 'LTDgasoline', 'milk', 15),
(61, 'WeaDealer', 'magasin', 50000),
(62, 'Lyddaemper', 'Suppressor', 10000),
(63, 'LTDgasoline', 'blindfold', 30),
(64, 'TwentyFourSeven', 'blindfold', 30),
(65, 'RobsLiquor', 'blindfold', 30);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `t1ger_druglabs`
--

CREATE TABLE `t1ger_druglabs` (
  `identifier` varchar(100) CHARACTER SET latin1 NOT NULL,
  `labID` int(11) NOT NULL,
  `supplies` int(11) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `t1ger_druglabs`
--

INSERT INTO `t1ger_druglabs` (`identifier`, `labID`, `supplies`, `stock`) VALUES
('steam:11000011927b670', 1, 0, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `t1ger_mechanic`
--

CREATE TABLE `t1ger_mechanic` (
  `identifier` varchar(100) CHARACTER SET latin1 NOT NULL,
  `shopID` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Mechanic Shop',
  `money` int(11) NOT NULL DEFAULT 0,
  `employees` longtext NOT NULL DEFAULT '[]',
  `storage` longtext NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `t1ger_mechanic`
--

INSERT INTO `t1ger_mechanic` (`identifier`, `shopID`, `name`, `money`, `employees`, `storage`) VALUES
('steam:11000010082f698', 1, 'Sej', 0, '[{\"jobGrade\":4,\"identifier\":\"steam:11000010c9f447d\"},{\"jobGrade\":0,\"identifier\":\"steam:11000013ee98b7e\"}]', '[{\"count\":90,\"item\":\"aluminium\",\"label\":\"Aluminium\"},{\"count\":90,\"item\":\"electric_scrap\",\"label\":\"Electric Scrap\"},{\"count\":88,\"item\":\"glass\",\"label\":\"Glass\"},{\"count\":90,\"item\":\"copper\",\"label\":\"Kobber\"},{\"count\":90,\"item\":\"steel\",\"label\":\"Steel\"},{\"count\":85,\"item\":\"scrap_metal\",\"label\":\"Scrap Metal\"},{\"count\":88,\"item\":\"rubber\",\"label\":\"Rubber\"},{\"count\":46,\"item\":\"plastic\",\"label\":\"Plastic\"}]');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `territories`
--

CREATE TABLE `territories` (
  `zone` varchar(50) NOT NULL,
  `control` varchar(50) NOT NULL,
  `influence` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `territories`
--

INSERT INTO `territories` (`zone`, `control`, `influence`) VALUES
('Davis', 'police', 100),
('East V', 'police', 100),
('ChamberlainHills', 'police', 100),
('Rancho', 'police', 100);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `units`
--

CREATE TABLE `units` (
  `unitid` mediumint(9) NOT NULL,
  `unit` mediumtext NOT NULL,
  `callid` mediumint(9) NOT NULL,
  `status` mediumtext NOT NULL,
  `collar` mediumtext NOT NULL,
  `steamid` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `usergroups`
--

CREATE TABLE `usergroups` (
  `id` mediumint(9) NOT NULL,
  `name` mediumtext NOT NULL,
  `perms` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `crafting_level` int(11) NOT NULL,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `is_dead` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `kartoteka_avatar` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `zetony` int(11) DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user_convictions`
--

CREATE TABLE `user_convictions` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `offense` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user_lastcharacter`
--

CREATE TABLE `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user_mdt`
--

CREATE TABLE `user_mdt` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `mugshot_url` varchar(255) DEFAULT NULL,
  `bail` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user_perms`
--

CREATE TABLE `user_perms` (
  `perm` bigint(20) NOT NULL,
  `name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `imglink` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `imglink`) VALUES
('Adder', 'adder', 2350000, 'super', 'Adder.jpg'),
('Akuma', 'akuma', 60000, 'mc', 'akuma.png'),
('Alpha', 'alpha', 150000, 'sports', 'Alpha.png'),
('Asea', 'asea', 25000, 'sedans', 'Asea.jpg'),
('Autarch', 'autarch', 3000000, 'super', 'Autarch.png'),
('Bagger', 'bagger', 50000, 'mc', 'bagger.png'),
('Baller', 'baller2', 550000, 'suvs', 'Baller.png'),
('Banshee', 'banshee', 450000, 'sports', 'Banshee.png'),
('Banshee 900R', 'banshee2', 500000, 'super', 'Banshee900R.png'),
('Bati', 'bati', 650000, 'mc', 'bati.png'),
('Bestia GTS', 'bestiagts', 1800000, 'sports', 'Bestiagts.png'),
('Bf Injection', 'bfinjection', 30000, 'offroad', 'Injection.png'),
('Bifta', 'bifta', 100000, 'offroad', 'Bifta.png'),
('Bison', 'bison', 200000, 'vans', 'Bison.png'),
('Blade', 'blade', 135000, 'muscle', 'Blade.png'),
('Blazer', 'blazer', 10000, 'offroad', 'blazer.png'),
('Blazer Sport ', 'blazer4', 25000, 'offroad', 'StreetBlazer.png'),
('Blista', 'blista', 40000, 'compacts', 'Blista.png'),
('Bobcat XL', 'bobcatxl', 700000, 'vans', 'bobcatxl.png'),
('Brawler', 'brawler', 150000, 'offroad', 'Brawler.png'),
('Brioso R/A', 'brioso', 50000, 'compacts', 'brisio.png'),
('Btype', 'btype', 300000, 'sportsclassics', 'Btype.png'),
('Btype Hotroad', 'btype2', 350000, 'sportsclassics', 'BtypeHotroad.png'),
('Btype Luxe', 'btype3', 450000, 'sportsclassics', 'BtypeLuxe.png'),
('Buccaneer', 'buccaneer', 120000, 'muscle', 'Buccaneer.png'),
('Buccaneer Rider', 'buccaneer2', 150000, 'muscle', 'BuccaneerRider.png'),
('Buffalo', 'buffalo', 120000, 'sports', 'Buffalo.png'),
('Buffalo S', 'buffalo2', 200000, 'sports', 'BuffaloS.jpg'),
('Bullet', 'bullet', 700000, 'super', 'Bullet.jpg'),
('Burrito', 'burrito3', 85000, 'vans', 'Burrito.png'),
('Camper', 'camper', 600000, 'vans', 'Camper.png'),
('Carbonizzare', 'carbonizzare', 1200000, 'sports', 'carbonizzare.jpg'),
('Casco', 'casco', 1900000, 'sportsclassics', 'Casco.png'),
('Cavalcade', 'cavalcade2', 225000, 'suvs', 'Cavalcade.jpg'),
('Cheetah', 'cheetah', 1800000, 'super', 'Banshee900R.png'),
('Chino', 'chino', 150000, 'muscle', 'Chino.png'),
('Chino Luxe', 'chino2', 200000, 'muscle', 'ChinoLuxe.png'),
('Cognoscenti Cabrio', 'cogcabrio', 350000, 'coupes', 'cogcabrio.png'),
('Cognoscenti', 'cognoscenti', 300000, 'sedans', 'cognoscenti.png'),
('Comet', 'comet2', 1700000, 'sports', 'Comet.png'),
('Contender', 'contender', 350000, 'suvs', 'Contender.png'),
('Coquette', 'coquette', 1200000, 'sports', 'Coquette.png'),
('Cyclone', 'cyclone', 2200000, 'super', 'Cyclone.png'),
('Daemon', 'daemon', 100000, 'mc', 'daemon.png'),
('Dominator', 'dominator', 550000, 'muscle', 'Dominator.jpg'),
('Dubsta', 'dubsta', 450000, 'suvs', 'BenefactorDubsta.png'),
('Dukes', 'dukes', 175000, 'muscle', 'Dukes.jpg'),
('Elegy', 'elegy2', 825000, 'sports', 'Elegy.jpg'),
('Emperor', 'emperor', 50000, 'sedans', 'Emperor.png'),
('Entity XF', 'entityxf', 1250000, 'super', 'EntityXF.png'),
('Exemplar', 'exemplar', 350000, 'coupes', 'Exemplar.png'),
('F620', 'f620', 650000, 'coupes', 'F620.png'),
('Faction', 'faction', 75000, 'muscle', 'Faction.png'),
('Faggio', 'faggio', 11000, 'mc', 'faggio.png'),
('Felon GT', 'felon2', 550000, 'coupes', 'FelonGT.png'),
('Feltzer', 'feltzer2', 600000, 'sports', 'Feltzer.png'),
('Stirling GT', 'feltzer3', 800000, 'sportsclassics', 'StirlingGT.png'),
('FMJ', 'fmj', 1200000, 'super', 'FMJ.png'),
('Fugitive', 'fugitive', 125000, 'sedans', 'Fugitive.png'),
('Furore GT', 'furoregt', 450000, 'sports', 'furoregt.png'),
('Fusilade', 'fusilade', 325000, 'sports', 'fusilade.jpg'),
('Gauntlet', 'gauntlet', 250000, 'muscle', 'gauntlet.png'),
('Gang Burrito', 'gburrito', 125000, 'vans', 'gburrito.png'),
('Glendale', 'glendale', 65000, 'sedans', 'Glendale.png'),
('Grabger', 'granger', 215000, 'suvs', 'Grabger.png'),
('Gresley', 'gresley', 85000, 'suvs', 'Gresley.png'),
('GT 500', 'gt500', 650000, 'sportsclassics', 'GT500.png'),
('Guardian', 'guardian', 275000, 'offroad', 'guardian.png'),
('Hakuchou', 'hakuchou', 575000, 'mc', 'hakuchou.png'),
('Hermes', 'hermes', 375000, 'muscle', 'hermes.png'),
('Hexer', 'hexer', 75000, 'mc', 'hexer.png'),
('Hotknife', 'hotknife', 315000, 'muscle', 'hotknife.png'),
('Huntley S', 'huntley', 250000, 'suvs', 'huntley.png'),
('Hustler', 'hustler', 575000, 'muscle', 'Hustler.png'),
('Infernus', 'infernus', 785000, 'super', 'Infernus.jpg'),
('Innovation', 'innovation', 125000, 'mc', 'innovation.png'),
('Intruder', 'intruder', 95000, 'sedans', 'intruder.png'),
('Issi', 'issi2', 45000, 'compacts', 'Issi.png'),
('Jackal', 'jackal', 375000, 'coupes', 'jackal.png'),
('Jester', 'jester', 1150000, 'sports', 'jester.png'),
('Jester(Racecar)', 'jester2', 1250000, 'sports', 'JesterRacecar.png'),
('Journey', 'journey', 25000, 'vans', 'Journey.png'),
('Kamacho', 'kamacho', 295000, 'offroad', 'kamacho.png'),
('Khamelion', 'khamelion', 695000, 'sports', 'khamelion.png'),
('Kuruma', 'kuruma', 415000, 'sports', 'kuruma.png'),
('Landstalker', 'landstalker', 135000, 'suvs', 'landstalker.png'),
('RE-7B', 'le7b', 1795000, 'super', 'RE-7B.png'),
('Lynx', 'lynx', 615000, 'sports', 'lynx.png'),
('Mamba', 'mamba', 735000, 'sports', 'Mamba.png'),
('Manana', 'manana', 112500, 'sportsclassics', 'Manana.png'),
('Massacro', 'massacro', 425000, 'sports', 'Massacro.png'),
('Massacro(Racecar)', 'massacro2', 450000, 'sports', 'MassacroRacecar.png'),
('Mesa', 'mesa3', 285000, 'suvs', 'Mesa.png'),
('Minivan', 'minivan', 50000, 'vans', 'minivan.png'),
('Monroe', 'monroe', 675000, 'sportsclassics', 'monroe.png'),
('Moonbeam', 'moonbeam', 100000, 'vans', 'moonbeam.png'),
('Neon', 'neon', 1950000, 'sports', 'neon.png'),
('Nightblade', 'nightblade', 200000, 'mc', 'nightblade.png'),
('Nightshade', 'nightshade', 315000, 'muscle', 'Nightshade.png'),
('9F', 'ninef', 965000, 'sports', '9F.png'),
('Omnis', 'omnis', 315000, 'sports', 'Omnis.png'),
('Oracle XS', 'oracle2', 165000, 'coupes', 'OracleXS.png'),
('Osiris', 'osiris', 1150000, 'super', 'Osiris.png'),
('Panto', 'panto', 35000, 'compacts', 'Panto.png'),
('Paradise', 'paradise', 100000, 'vans', 'Paradise.png'),
('Pariah', 'pariah', 875000, 'sports', 'pariah.png'),
('Patriot', 'patriot', 375000, 'suvs', 'patriot.png'),
('Penumbra', 'penumbra', 415000, 'sports', 'penumbra.png'),
('Pfister', 'pfister811', 935000, 'super', '811.jpg'),
('Phoenix', 'phoenix', 135000, 'muscle', 'phoenix.png'),
('Picador', 'picador', 125000, 'muscle', 'picador.png'),
('Pigalle', 'pigalle', 155000, 'sportsclassics', 'pigalle.png'),
('Prairie', 'prairie', 115000, 'compacts', 'prairie.png'),
('Premier', 'premier', 112500, 'sedans', 'premier.png'),
('Primo Custom', 'primo2', 155000, 'sedans', 'PrimoCustom.png'),
('X80 Proto', 'prototipo', 1950000, 'super', 'X80.png'),
('Radius', 'radi', 185000, 'suvs', 'Radius.png'),
('raiden', 'raiden', 650000, 'sports', 'raiden.png'),
('Rapid GT', 'rapidgt', 425000, 'sports', 'RapidGT.png'),
('Reaper', 'reaper', 1350000, 'super', 'reaper.jpg'),
('Rebel', 'rebel2', 142500, 'offroad', 'Rebel.png'),
('Regina', 'regina', 65000, 'sedans', 'Regina.png'),
('Retinue', 'retinue', 245000, 'sportsclassics', 'retinue.png'),
('riata', 'riata', 145000, 'offroad', 'riata.png'),
('Rocoto', 'rocoto', 352500, 'suvs', 'rocoto.png'),
('Rumpo', 'rumpo', 100000, 'vans', 'Rumpo.png'),
('Sabre Turbo', 'sabregt', 115000, 'muscle', 'SabreTurbo.png'),
('Sanchez', 'sanchez', 15000, 'mc', 'sanchez.png'),
('Sandking', 'sandking', 125000, 'offroad', 'Sandking.png'),
('Savestra', 'savestra', 145000, 'sportsclassics', 'savestra.png'),
('SC 1', 'sc1', 999999, 'super', 'sc1.jpg'),
('Schafter V12', 'schafter3', 2250000, 'sports', 'Schafter.png\r\n'),
('Seminole', 'seminole', 95999, 'suvs', 'Seminole.png'),
('Sentinel', 'sentinel', 215000, 'coupes', 'Sentinel.png'),
('Sentinel XS', 'sentinel2', 250000, 'coupes', 'SentinelXS.png'),
('Seven 70', 'seven70', 235999, 'sports', 'Seven70.png'),
('ETR1', 'sheava', 545999, 'super', 'ETR1.png'),
('Slam Van', 'slamvan3', 375999, 'muscle', 'SlamVan.png'),
('Stinger', 'stinger', 375000, 'sportsclassics', 'Stinger.png'),
('Stinger GT', 'stingergt', 425000, 'sportsclassics', 'StingerGT.png'),
('Streiter', 'streiter', 165000, 'sports', 'Streiter.png'),
('Sultan', 'sultan', 365000, 'sports', 'Sultan.png'),
('Sultan RS', 'sultanrs', 515000, 'super', 'SultanRS.png'),
('Super Diamond', 'superd', 517500, 'sedans', 'Super_Diamond.png'),
('Surano', 'surano', 412500, 'sports', 'Surano.png'),
('Surfer', 'surfer', 85000, 'vans', 'Surfer.png'),
('T20', 't20', 2350000, 'super', 't20.jpg'),
('Tailgater', 'tailgater', 375000, 'sedans', 'tailgater.png'),
('Tampa', 'tampa', 135000, 'muscle', 'Tampa.png'),
('Drift Tampa', 'tampa2', 345000, 'sports', 'TampaD.png'),
('Trophy Truck', 'trophytruck', 495000, 'offroad', 'TrophyTruck.png'),
('Tropos', 'tropos', 975000, 'sports', 'Tropos.png'),
('Turismo R', 'turismor', 1350000, 'super', 'turismor.jpg'),
('Tyrus', 'tyrus', 1400000, 'super', 'tyrus.jpg'),
('Vacca', 'vacca', 935000, 'super', 'vacca.jpg'),
('Vader', 'vader', 235000, 'mc', 'vader.png'),
('Verlierer', 'verlierer2', 1275000, 'sports', 'Verlierer.png'),
('Vigero', 'vigero', 95000, 'muscle', 'Vigero.png'),
('Virgo', 'virgo', 137500, 'muscle', 'Virgo.png'),
('Viseris', 'viseris', 495000, 'sportsclassics', 'Viseris.png'),
('Visione', 'visione', 2175000, 'super', 'visione.jpg'),
('Voltic', 'voltic', 795000, 'super', 'voltic.jpg'),
('Voodoo', 'voodoo', 175000, 'muscle', 'Voodoo.png'),
('Warrener', 'warrener', 135000, 'sedans', 'Warrener.jpg'),
('Washington', 'washington', 97500, 'sedans', 'Washington.png'),
('Windsor', 'windsor', 335000, 'coupes', 'Windsor.png'),
('Windsor Drop', 'windsor2', 435000, 'coupes', 'WindsorDrop.png'),
('XLS', 'xls', 225000, 'suvs', 'XLS.png'),
('Yosemite', 'yosemite', 135000, 'muscle', 'Yosemite.png'),
('Youga', 'youga', 95000, 'vans', 'Youga.png'),
('Youga Luxuary', 'youga2', 100000, 'vans', 'YougaL.png'),
('Z190', 'z190', 635000, 'sportsclassics', 'Z190.png'),
('Zentorno', 'zentorno', 1350000, 'super', 'Zentorno.png'),
('Zion Cabrio', 'zion2', 165000, 'coupes', 'Zion.png'),
('Z-Type', 'ztype', 915000, 'sportsclassics', 'Z-Type.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `vehicles_for_sale`
--

CREATE TABLE `vehicles_for_sale` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('mc', 'Motorcykler'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `vehicle_mdt`
--

CREATE TABLE `vehicle_mdt` (
  `id` int(11) NOT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `stolen` bit(1) DEFAULT b'0',
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `vois`
--

CREATE TABLE `vois` (
  `id` bigint(20) NOT NULL,
  `vehicle_id` bigint(20) NOT NULL,
  `image` mediumtext NOT NULL,
  `reason` mediumtext NOT NULL,
  `notes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `warrants_list`
--

CREATE TABLE `warrants_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `weadealer`
--

CREATE TABLE `weadealer` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `weadealer`
--

INSERT INTO `weadealer` (`id`, `zone`, `item`, `price`) VALUES
(1, 'WeaDealer', 'WEAPON_PISTOL50', 1150000),
(2, 'WeaDealer2', 'WEAPON_APPISTOL', 1250000),
(3, 'WeaDealer3', 'weapon_COMPACTRIFLE', 4200000);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_BAT', 500),
(2, 'GunShop', 'WEAPON_FLASHLIGHT', 250),
(3, 'GunShop', 'WEAPON_KNIFE', 1000),
(4, 'GunShop', 'WEAPON_MACHETE', 5000),
(5, 'GunShop', 'WEAPON_CROWBAR', 750),
(6, 'GunShop', 'weapon_hatchet', 1500),
(7, 'GunShop', 'weapon_golfclub', 450),
(8, 'GunShop', 'weapon_dagger', 850),
(9, 'GunShop', 'weapon_hammer', 500);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `yellowpages_posts`
--

CREATE TABLE `yellowpages_posts` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indeks for tabel `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indeks for tabel `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indeks for tabel `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indeks for tabel `arrests_list`
--
ALTER TABLE `arrests_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `atganticheatsql`
--
ALTER TABLE `atganticheatsql`
  ADD PRIMARY KEY (`banId`);

--
-- Indeks for tabel `baninfo`
--
ALTER TABLE `baninfo`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeks for tabel `bank_transfer`
--
ALTER TABLE `bank_transfer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks for tabel `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeks for tabel `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `blackmarket`
--
ALTER TABLE `blackmarket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `black_market`
--
ALTER TABLE `black_market`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `bolos_list`
--
ALTER TABLE `bolos_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `borsa`
--
ALTER TABLE `borsa`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks for tabel `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `bwh_bans`
--
ALTER TABLE `bwh_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `bwh_identifiers`
--
ALTER TABLE `bwh_identifiers`
  ADD PRIMARY KEY (`steam`);

--
-- Indeks for tabel `bwh_warnings`
--
ALTER TABLE `bwh_warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`callid`);

--
-- Indeks for tabel `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `civilians`
--
ALTER TABLE `civilians`
  ADD PRIMARY KEY (`civid`);

--
-- Indeks for tabel `civilian_notes`
--
ALTER TABLE `civilian_notes`
  ADD PRIMARY KEY (`noteid`);

--
-- Indeks for tabel `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indeks for tabel `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indeks for tabel `doors`
--
ALTER TABLE `doors`
  ADD KEY `index` (`index`);

--
-- Indeks for tabel `esx_manager_bans`
--
ALTER TABLE `esx_manager_bans`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeks for tabel `esx_manager_warns`
--
ALTER TABLE `esx_manager_warns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `h_impounded_vehicles`
--
ALTER TABLE `h_impounded_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indeks for tabel `insto_accounts`
--
ALTER TABLE `insto_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks for tabel `insto_instas`
--
ALTER TABLE `insto_instas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_insto_instas_insto_accounts` (`authorId`);

--
-- Indeks for tabel `insto_likes`
--
ALTER TABLE `insto_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_insto_likes_insto_accounts` (`authorId`),
  ADD KEY `FK_insto_likes_insto_instas` (`inapId`);

--
-- Indeks for tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indeks for tabel `jobblips`
--
ALTER TABLE `jobblips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks for tabel `jobcars`
--
ALTER TABLE `jobcars`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks for tabel `jobclothes`
--
ALTER TABLE `jobclothes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks for tabel `jobconfigs`
--
ALTER TABLE `jobconfigs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks for tabel `jobitems`
--
ALTER TABLE `jobitems`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks for tabel `jobpoints`
--
ALTER TABLE `jobpoints`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks for tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indeks for tabel `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`,`job_name`) USING BTREE;

--
-- Indeks for tabel `kc_bans`
--
ALTER TABLE `kc_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `kc_jails`
--
ALTER TABLE `kc_jails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `kc_warns`
--
ALTER TABLE `kc_warns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indeks for tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`logid`);

--
-- Indeks for tabel `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `mdt_reports`
--
ALTER TABLE `mdt_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `mdt_sessions`
--
ALTER TABLE `mdt_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `mdt_users`
--
ALTER TABLE `mdt_users`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks for tabel `mdt_warrants`
--
ALTER TABLE `mdt_warrants`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indeks for tabel `nigac_ban`
--
ALTER TABLE `nigac_ban`
  ADD PRIMARY KEY (`license`);

--
-- Indeks for tabel `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indeks for tabel `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `pois`
--
ALTER TABLE `pois`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `remarks`
--
ALTER TABLE `remarks`
  ADD PRIMARY KEY (`remarkid`);

--
-- Indeks for tabel `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `t1ger_druglabs`
--
ALTER TABLE `t1ger_druglabs`
  ADD PRIMARY KEY (`labID`);

--
-- Indeks for tabel `t1ger_mechanic`
--
ALTER TABLE `t1ger_mechanic`
  ADD PRIMARY KEY (`shopID`);

--
-- Indeks for tabel `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indeks for tabel `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks for tabel `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indeks for tabel `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indeks for tabel `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unitid`);

--
-- Indeks for tabel `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeks for tabel `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `user_convictions`
--
ALTER TABLE `user_convictions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `user_mdt`
--
ALTER TABLE `user_mdt`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`) USING BTREE;

--
-- Indeks for tabel `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indeks for tabel `vehicle_mdt`
--
ALTER TABLE `vehicle_mdt`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `vois`
--
ALTER TABLE `vois`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `warrants_list`
--
ALTER TABLE `warrants_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `weadealer`
--
ALTER TABLE `weadealer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_yellowpages_posts_twitter_accounts` (`authorId`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3957;

--
-- Tilføj AUTO_INCREMENT i tabel `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `arrests_list`
--
ALTER TABLE `arrests_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `atganticheatsql`
--
ALTER TABLE `atganticheatsql`
  MODIFY `banId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tilføj AUTO_INCREMENT i tabel `bank_transfer`
--
ALTER TABLE `bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `blackmarket`
--
ALTER TABLE `blackmarket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tilføj AUTO_INCREMENT i tabel `black_market`
--
ALTER TABLE `black_market`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tilføj AUTO_INCREMENT i tabel `bolos_list`
--
ALTER TABLE `bolos_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `borsa`
--
ALTER TABLE `borsa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `bwh_bans`
--
ALTER TABLE `bwh_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `bwh_warnings`
--
ALTER TABLE `bwh_warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `calls`
--
ALTER TABLE `calls`
  MODIFY `callid` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `civilians`
--
ALTER TABLE `civilians`
  MODIFY `civid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `civilian_notes`
--
ALTER TABLE `civilian_notes`
  MODIFY `noteid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- Tilføj AUTO_INCREMENT i tabel `doors`
--
ALTER TABLE `doors`
  MODIFY `index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- Tilføj AUTO_INCREMENT i tabel `esx_manager_warns`
--
ALTER TABLE `esx_manager_warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- Tilføj AUTO_INCREMENT i tabel `insto_accounts`
--
ALTER TABLE `insto_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Tilføj AUTO_INCREMENT i tabel `insto_instas`
--
ALTER TABLE `insto_instas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- Tilføj AUTO_INCREMENT i tabel `insto_likes`
--
ALTER TABLE `insto_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- Tilføj AUTO_INCREMENT i tabel `jobblips`
--
ALTER TABLE `jobblips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tilføj AUTO_INCREMENT i tabel `jobcars`
--
ALTER TABLE `jobcars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tilføj AUTO_INCREMENT i tabel `jobclothes`
--
ALTER TABLE `jobclothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tilføj AUTO_INCREMENT i tabel `jobconfigs`
--
ALTER TABLE `jobconfigs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Tilføj AUTO_INCREMENT i tabel `jobitems`
--
ALTER TABLE `jobitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tilføj AUTO_INCREMENT i tabel `jobpoints`
--
ALTER TABLE `jobpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- Tilføj AUTO_INCREMENT i tabel `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- Tilføj AUTO_INCREMENT i tabel `kc_bans`
--
ALTER TABLE `kc_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Tilføj AUTO_INCREMENT i tabel `kc_jails`
--
ALTER TABLE `kc_jails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `kc_warns`
--
ALTER TABLE `kc_warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tilføj AUTO_INCREMENT i tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `logid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `markers`
--
ALTER TABLE `markers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Tilføj AUTO_INCREMENT i tabel `mdt_reports`
--
ALTER TABLE `mdt_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `mdt_sessions`
--
ALTER TABLE `mdt_sessions`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `mdt_users`
--
ALTER TABLE `mdt_users`
  MODIFY `userid` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `mdt_warrants`
--
ALTER TABLE `mdt_warrants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Tilføj AUTO_INCREMENT i tabel `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Tilføj AUTO_INCREMENT i tabel `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tilføj AUTO_INCREMENT i tabel `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `user_convictions`
--
ALTER TABLE `user_convictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `user_mdt`
--
ALTER TABLE `user_mdt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- Tilføj AUTO_INCREMENT i tabel `vehicle_mdt`
--
ALTER TABLE `vehicle_mdt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `warrants_list`
--
ALTER TABLE `warrants_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `weadealer`
--
ALTER TABLE `weadealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tilføj AUTO_INCREMENT i tabel `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `insto_instas`
--
ALTER TABLE `insto_instas`
  ADD CONSTRAINT `FK_insto_instas_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`);

--
-- Begrænsninger for tabel `insto_likes`
--
ALTER TABLE `insto_likes`
  ADD CONSTRAINT `FK_insto_likes_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`),
  ADD CONSTRAINT `FK_insto_likes_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `insto_instas` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);

--
-- Begrænsninger for tabel `yellowpages_posts`
--
ALTER TABLE `yellowpages_posts`
  ADD CONSTRAINT `FK_yellowpages_posts_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
