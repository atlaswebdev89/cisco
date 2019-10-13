-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 28 2019 г., 07:33
-- Версия сервера: 5.7.27-0ubuntu0.18.04.1
-- Версия PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cisco_ap`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_auth_error`
--

CREATE TABLE `cisco_auth_error` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` int(28) NOT NULL,
  `reason` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_auth_error`
--

INSERT INTO `cisco_auth_error` (`id`, `time`, `ip`, `reason`) VALUES
(1, '2019-06-30 15:47:17', 2130706433, 'Пользователь заблокирован. Обратитесь к администратору ресурса'),
(2, '2019-07-01 19:02:49', 2130706433, 'Пользователь заблокирован. Обратитесь к администратору ресурса'),
(3, '2019-07-14 14:03:38', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(4, '2019-07-14 14:03:48', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(5, '2019-07-14 16:12:30', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(6, '2019-07-14 20:12:40', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(7, '2019-07-14 20:13:53', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(8, '2019-07-14 20:14:55', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(9, '2019-07-15 19:33:28', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(10, '2019-07-16 09:36:01', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(11, '2019-07-18 12:38:55', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(12, '2019-09-04 06:22:36', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(13, '2019-09-04 06:22:41', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(14, '2019-09-04 09:16:27', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(15, '2019-09-06 05:37:49', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(16, '2019-09-10 20:08:54', 2130706433, 'Ошибка. Проверьте ваши данные для доступа'),
(17, '2019-09-10 21:01:14', 2130706433, 'Ошибка. Проверьте ваши данные для доступа');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_business`
--

CREATE TABLE `cisco_business` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_business`
--

INSERT INTO `cisco_business` (`id`, `name`) VALUES
(1, 'Автозаправка АЗС №1 Беларуснефть'),
(2, 'ОАО Беларусбанк'),
(3, 'Гостиница Интурист'),
(6, 'Юность'),
(7, 'АЗС 86'),
(8, 'АЗС 100'),
(9, 'Гостиница Беларусь'),
(10, '123415'),
(11, 'Запровка'),
(12, '123');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_permissions`
--

CREATE TABLE `cisco_permissions` (
  `id` int(11) NOT NULL,
  `permissions` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_permissions`
--

INSERT INTO `cisco_permissions` (`id`, `permissions`) VALUES
(1, 'info'),
(3, 'home'),
(4, 'point'),
(6, 'console');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_points_model`
--

CREATE TABLE `cisco_points_model` (
  `id` int(11) NOT NULL,
  `model` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_points_model`
--

INSERT INTO `cisco_points_model` (`id`, `model`) VALUES
(1, '702');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_point_address`
--

CREATE TABLE `cisco_point_address` (
  `id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_point_address`
--

INSERT INTO `cisco_point_address` (`id`, `address`) VALUES
(1, 'Беларусь, Брест, Московская улица, 202'),
(2, 'Беларусь, Брест, Московская улица, 210'),
(3, 'Беларусь, Брест, Пионерская улица, 50'),
(4, 'Беларусь, Брест, улица Гоголя, 65'),
(5, 'Россия, Москва'),
(6, 'Россия, Иркутская область, Ангарск, 123-й квартал'),
(7, 'Беларусь, Брест, микрорайон Киевка, 3-й Заводской переулок'),
(8, 'Беларусь, Брест, улица Гоголя, 87'),
(9, 'Беларусь, Брэст, садовыя ўчасткі'),
(10, 'Беларусь, Брест, улица 17 Сентября'),
(11, 'Беларусь, Брест, микрорайон Киевка, 3-й Заводской переулок, 11'),
(12, 'Беларусь, Брестская область, Брестский район, Тельминский сельсовет, деревня Тельмы-2'),
(13, 'Беларусь, Брестская область, Кобрин, улица Гоголя'),
(14, 'Беларусь, Брест, улица Гоголя'),
(15, 'Беларусь, Брестская область, Брестский район, Тельминский сельсовет, деревня Тельмы-1'),
(16, 'Беларусь, Брест, улица 17 Сентября, 1'),
(17, 'Беларусь, Брест, 3-й Северный переулок'),
(18, 'Казахстан, Восточно-Казахстанская область, Семей, квартал 343');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_point_data`
--

CREATE TABLE `cisco_point_data` (
  `id` int(11) NOT NULL,
  `ip` int(25) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `id_address` int(11) NOT NULL,
  `id_business` int(11) NOT NULL,
  `notice` text NOT NULL,
  `set_place` varchar(150) NOT NULL,
  `speed_download` float NOT NULL,
  `speed_upload` float NOT NULL,
  `id_ssid` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `id_model` int(11) NOT NULL,
  `mac` varchar(50) NOT NULL,
  `installation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_point_data`
--

INSERT INTO `cisco_point_data` (`id`, `ip`, `latitude`, `longitude`, `id_address`, `id_business`, `notice`, `set_place`, `speed_download`, `speed_upload`, `id_ssid`, `type`, `id_model`, `mac`, `installation_date`) VALUES
(1, 172062209, 12123100, 123123000, 1, 3, 'hello', 'hello', 123, 12, 1, 'hello', 1, 'hello', '2019-09-10'),
(2, 16843009, 52.0934, 23.6983, 4, 2, '123123123', '123', 40, 50, 2, 'internal', 1, '11:11:11:11:11:11', '2018-01-01'),
(3, 16909179, 52.0928, 23.7083, 8, 2, '12312313', '123123', 35, 30, 2, 'external', 1, '13:21:31:23:12:31', '2018-01-01'),
(4, 50529035, 52.0949, 23.6914, 8, 2, '123123', '123', 1, 2, 2, 'internal', 1, '12:31:23:12:31:23', '2018-01-01'),
(5, 16909059, 52.118, 23.8297, 15, 3, '123123', '13123', 10, 35, 2, 'internal', 1, '31:23:12:31:23:31', '2018-01-01'),
(6, 50528535, 52.0961, 23.6911, 15, 2, '12312313', '123123', 100, 40, 2, 'external', 1, '12:31:23:12:31:23', '2018-01-01'),
(7, 50397727, 52.0947, 23.6911, 15, 2, '123123', '3123', 50, 35, 1, 'internal', 1, '12:33:12:31:23:31', '2018-01-01'),
(8, 50463007, 52.0953, 23.6907, 15, 2, '123123', '123123', 40, 35, 2, 'internal', 1, '31:23:12:31:23:12', '2018-01-01'),
(9, 50528743, 52.096, 23.691, 16, 2, '123123', '3123', 3, 2, 2, 'internal', 1, '12:31:23:12:31:23', '2018-01-01'),
(10, 50594089, 52.0951, 23.6914, 6, 2, '123123123', '123', 40, 20, 2, 'internal', 1, '13:21:31:23:12:31', '2018-01-01'),
(11, 83952131, 52.0949, 23.691, 17, 6, '123123', '3123', 50, 25, 2, 'internal', 1, '31:23:12:31:23:12', '2018-01-01'),
(12, 83952159, 52.0948, 23.6908, 16, 12, '124123123', '12123', 40, 20, 1, 'internal', 1, '31:23:12:31:23:12', '2018-01-01'),
(13, 16975112, 52.0954, 23.691, 18, 2, '124124', '124', 30, 15, 1, 'internal', 1, '12:31:23:12:31:23', '2018-01-01'),
(14, 101122561, 52.0949, 23.6908, 16, 2, '12313', '123', 0.5, 3, 2, 'internal', 1, '12:31:23:12:31:23', '2018-01-01'),
(15, 84279553, 52.0965, 23.6901, 16, 3, '123123', '123123', 25, 20, 3, 'external', 1, '12:31:23:12:31:23', '2018-01-01'),
(16, 100795177, 52.0972, 23.6906, 10, 3, '123123', '123123', 50, 40, 2, 'internal', 1, '12:31:23:12:31:23', '2018-01-01'),
(17, 117965346, 52.0961, 23.6899, 15, 2, '12512512512', '125125', 50, 30, 1, 'internal', 1, '51:35:23:51:35:13', '2018-01-01'),
(18, 117572386, 52.0953, 23.6918, 12, 3, '123123123', '23123', 50, 40, 2, 'internal', 1, '12:31:23:12:31:23', '2018-01-01'),
(19, 50726658, 52.1077, 23.738, 11, 2, '123123', '4123', 50, 100, 2, 'external', 1, '62:34:23:42:34:23', '2018-01-01'),
(20, 172061185, 52.0934, 23.6981, 4, 6, '', 'Под потолком', 100, 50, 6, 'internal', 1, '25:1d:ff:da:ff:fa', '2018-01-10');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_point_speed`
--

CREATE TABLE `cisco_point_speed` (
  `id` int(11) NOT NULL,
  `speed` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_point_speed`
--

INSERT INTO `cisco_point_speed` (`id`, `speed`) VALUES
(1, 0.5),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 6),
(7, 8),
(8, 10),
(9, 15),
(10, 20),
(11, 25),
(12, 30),
(13, 35),
(14, 40),
(15, 50),
(16, 100);

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_point_ssid`
--

CREATE TABLE `cisco_point_ssid` (
  `id` int(11) NOT NULL,
  `ssid` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_point_ssid`
--

INSERT INTO `cisco_point_ssid` (`id`, `ssid`) VALUES
(1, 'Alfabank'),
(2, 'SSID'),
(3, 'Belarusbank'),
(5, '124123'),
(6, 'Unost');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_role_permissions`
--

CREATE TABLE `cisco_role_permissions` (
  `id` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_permissions` int(11) NOT NULL,
  `sh` int(11) NOT NULL DEFAULT '1',
  `a` int(11) NOT NULL DEFAULT '0',
  `e` int(11) NOT NULL DEFAULT '0',
  `del` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_role_permissions`
--

INSERT INTO `cisco_role_permissions` (`id`, `id_role`, `id_permissions`, `sh`, `a`, `e`, `del`) VALUES
(24, 1, 1, 1, 0, 0, 0),
(25, 1, 3, 1, 1, 0, 0),
(26, 2, 1, 1, 1, 0, 0),
(28, 1, 4, 1, 1, 0, 0),
(29, 1, 6, 1, 0, 0, 0),
(30, 2, 3, 1, 0, 0, 0),
(31, 2, 4, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_users`
--

CREATE TABLE `cisco_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `banned` int(1) NOT NULL DEFAULT '0',
  `salt` varchar(100) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_users`
--

INSERT INTO `cisco_users` (`id`, `username`, `password`, `banned`, `salt`, `id_role`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, 1),
(2, 'user', '81dc9bdb52d04dc20036dbd8313ed055', 0, NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_users_data`
--

CREATE TABLE `cisco_users_data` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `sessionTime` int(100) NOT NULL DEFAULT '1440',
  `checkIP` int(5) NOT NULL DEFAULT '0',
  `checkAgent` int(5) NOT NULL DEFAULT '0',
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_users_data`
--

INSERT INTO `cisco_users_data` (`id`, `name`, `secondname`, `phone`, `sessionTime`, `checkIP`, `checkAgent`, `id_users`) VALUES
(1, 'Дорошук', 'Дмитрий', '+375297293386', 1440, 1, 1, 1),
(2, 'Иван', 'Иванов', '46579133', 1440, 0, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_users_data_auth`
--

CREATE TABLE `cisco_users_data_auth` (
  `id_session` varchar(100) NOT NULL,
  `id_users` int(20) NOT NULL,
  `ip_address` int(20) NOT NULL,
  `agent_user_hash` varchar(150) NOT NULL,
  `lastVisit` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_users_data_auth`
--

INSERT INTO `cisco_users_data_auth` (`id_session`, `id_users`, `ip_address`, `agent_user_hash`, `lastVisit`) VALUES
('ca47ad11b1838be241250adcdd47a419', 2, 2130706433, '600838512d1aae2feba95646f13f52e6', 1569533604);

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_users_log_data`
--

CREATE TABLE `cisco_users_log_data` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `time_login` int(50) NOT NULL,
  `time_session_delete` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `lastVisit` int(50) NOT NULL,
  `ip_addr` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `user_agent_hash` varchar(100) NOT NULL,
  `id_session` varchar(150) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_users_log_data`
--

INSERT INTO `cisco_users_log_data` (`id`, `id_users`, `time_login`, `time_session_delete`, `lastVisit`, `ip_addr`, `user_agent`, `user_agent_hash`, `id_session`, `time`) VALUES
(308, 1, 1563135363, NULL, 1563135363, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '0d7a12bc1543b5b6fe9bdf00c5c481a0', '2019-07-14 20:16:03'),
(309, 1, 1563177667, '2019-07-15 15:44:43', 1563205483, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'e3cd6ce918f3a44ec6f0cc2d8190f769', '2019-07-15 08:01:07'),
(310, 1, 1563217384, '2019-07-15 19:33:24', 1563219074, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-15 19:03:04'),
(311, 1, 1563219214, NULL, 1563219214, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'fccd89a4789306ae1798d61c907d2896', '2019-07-15 19:33:34'),
(312, 1, 1563269787, '2019-07-16 20:05:18', 1563307518, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'e9d8d45c190700a274f073bf14aa8b1c', '2019-07-16 09:36:27'),
(313, 1, 1563269838, '2019-07-16 09:37:56', 1563269838, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-16 09:37:18'),
(314, 1, 1563307530, '2019-07-16 21:03:19', 1563310999, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'a4895aab0de04dd03879f3e37d52089a', '2019-07-16 20:05:30'),
(315, 1, 1563310999, '2019-07-16 21:47:35', 1563313655, 2130706433, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Mobile Safari/537.36', '1a14c406cc046e8493f2146bbabd82cc', '0e354ea5f9a8cd6709fe54ea3a25ffcf', '2019-07-16 21:03:19'),
(316, 1, 1563314045, '2019-07-16 22:58:14', 1563317894, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '4d7a11a87f95acfdfd72e9d5edb26fd5', '2019-07-16 21:54:05'),
(317, 1, 1563366140, '2019-07-17 12:43:26', 1563367156, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-17 12:22:20'),
(318, 1, 1563367410, '2019-07-17 14:55:10', 1563375310, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '6df5c90f8ac20c255df131f243602800', '2019-07-17 12:43:31'),
(319, 2, 1563367595, '2019-07-17 13:00:59', 1563368459, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-17 12:46:35'),
(320, 2, 1563368897, '2019-07-17 15:02:48', 1563368897, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-17 13:08:17'),
(321, 1, 1563375315, '2019-07-17 15:01:44', 1563375691, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-17 14:55:15'),
(322, 1, 1563375709, '2019-07-17 15:02:22', 1563375709, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-17 15:01:49'),
(323, 1, 1563375827, '2019-07-17 15:06:08', 1563375827, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-17 15:03:47'),
(324, 2, 1563375832, '2019-07-17 15:07:32', 1563375832, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-17 15:03:52'),
(325, 1, 1563376038, '2019-07-17 15:08:05', 1563376038, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-17 15:07:18'),
(326, 2, 1563376081, '2019-07-17 15:08:03', 1563376081, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-17 15:08:01'),
(327, 1, 1563376089, '2019-07-17 15:11:36', 1563376089, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-17 15:08:09'),
(328, 2, 1563376101, '2019-07-17 15:08:26', 1563376101, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-17 15:08:21'),
(329, 2, 1563376291, '2019-07-17 15:23:20', 1563377000, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '5f2bd9c439a25a58cd7007e84070c68f', '2019-07-17 15:11:31'),
(330, 1, 1563376318, '2019-07-17 15:16:15', 1563376318, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-17 15:11:58'),
(331, 1, 1563376606, '2019-07-17 15:54:49', 1563378889, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-17 15:16:46'),
(332, 1, 1563391306, '2019-07-17 20:10:19', 1563394219, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'c14a98d9ceecbbcc182aac6b8aa767d6', '2019-07-17 19:21:46'),
(333, 1, 1563391574, '2019-07-17 19:55:39', 1563393339, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-17 19:26:14'),
(334, 1, 1563453274, '2019-07-18 12:38:50', 1563453274, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-18 12:34:34'),
(335, 2, 1563453539, '2019-07-18 12:39:01', 1563453539, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-18 12:38:59'),
(336, 1, 1563453545, '2019-07-18 13:12:53', 1563455573, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'c47fe2187bfe7ee602a99c9d3ee9ba99', '2019-07-18 12:39:05'),
(337, 1, 1563993370, '2019-07-24 19:05:28', 1563995128, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-24 18:36:10'),
(338, 1, 1563995133, '2019-07-24 20:20:44', 1563999644, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-24 19:05:33'),
(339, 1, 1563999650, '2019-07-24 20:34:47', 1564000487, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '1b904e420a7fb53da5a2858d410871d9', '2019-07-24 20:20:50'),
(340, 1, 1564068356, '2019-07-25 15:52:34', 1564069716, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-25 15:25:57'),
(341, 2, 1564069961, '2019-07-25 15:53:19', 1564069961, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-25 15:52:41'),
(342, 1, 1564070005, '2019-07-25 15:55:25', 1564070005, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-07-25 15:53:25'),
(343, 1, 1564070130, '2019-07-25 18:56:15', 1564080975, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-25 15:55:30'),
(344, 1, 1564080982, '2019-07-25 20:26:13', 1564086373, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-07-25 18:56:22'),
(345, 1, 1564086378, '2019-07-25 21:03:44', 1564088624, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '798972aefd17cf7d3190719738a1ac5b', '2019-07-25 20:26:18'),
(346, 1, 1565548859, '2019-08-11 19:08:28', 1565550508, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-08-11 18:40:59'),
(347, 1, 1565550515, NULL, 1565550515, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '1dfcf5991ae2e3afc77147ac71667b79', '2019-08-11 19:08:35'),
(348, 1, 1567003743, '2019-08-28 15:47:45', 1567007264, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-08-28 14:49:03'),
(349, 2, 1567007272, '2019-08-28 15:48:09', 1567007272, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-08-28 15:47:52'),
(350, 1, 1567007294, '2019-08-28 16:12:45', 1567008765, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-08-28 15:48:14'),
(351, 2, 1567008774, '2019-08-28 16:16:52', 1567008774, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-08-28 16:12:54'),
(352, 1, 1567009017, '2019-08-28 17:07:57', 1567012076, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-08-28 16:16:57'),
(353, 1, 1567012082, NULL, 1567012082, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '74772180378172e58cae6f2c31c94375', '2019-08-28 17:08:02'),
(354, 1, 1567059451, '2019-08-29 17:50:21', 1567101021, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-08-29 06:17:31'),
(355, 1, 1567101026, '2019-08-29 19:15:43', 1567106143, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '9d424891dcc44087a438e25f99487a6e', '2019-08-29 17:50:26'),
(356, 1, 1567297691, NULL, 1567297691, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '53d33e11f6cc2b729143456a7dcc2b1a', '2019-09-01 00:28:11'),
(357, 1, 1567536225, NULL, 1567536225, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '8cfb676c804790e09199d6bcab2b92a8', '2019-09-03 18:43:45'),
(358, 1, 1567536233, '2019-09-03 19:51:00', 1567540260, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'ca1d2ca9ba21729155633d1abdbe575d', '2019-09-03 18:43:53'),
(359, 1, 1567540395, '2019-09-03 20:03:22', 1567541002, 2130706433, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Mobile Safari/537.36', '1a14c406cc046e8493f2146bbabd82cc', '0b4f0d66ca4560238ab21323b131e492', '2019-09-03 19:53:15'),
(360, 1, 1567541025, '2019-09-03 23:07:36', 1567552056, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-03 20:03:45'),
(361, 1, 1567552063, NULL, 1567552063, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'f0c469d693b41674fb20b097a7af44dc', '2019-09-03 23:07:43'),
(362, 1, 1567576193, '2019-09-04 06:22:34', 1567578148, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-09-04 05:49:53'),
(363, 1, 1567582245, '2019-09-04 09:16:22', 1567588400, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-09-04 07:30:45'),
(364, 2, 1567588594, '2019-09-04 09:16:52', 1567588594, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-09-04 09:16:34'),
(365, 1, 1567588617, '2019-09-04 09:43:05', 1567590185, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-04 09:16:57'),
(366, 1, 1567590194, '2019-09-04 09:58:38', 1567591118, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '21919a3bf1e05f06905b5edcd06fcef8', '2019-09-04 09:43:14'),
(367, 1, 1567664219, '2019-09-05 09:14:08', 1567674848, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '94c3b970fde07d20bab836a70cfc0e72', '2019-09-05 06:16:59'),
(368, 1, 1567709656, NULL, 1567709656, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'bfb5e14fc8e360faca31091c862a3da7', '2019-09-05 18:54:16'),
(369, 1, 1567709662, '2019-09-05 19:22:21', 1567711341, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'bac983f1b8743356b5aa13b45de362b2', '2019-09-05 18:54:22'),
(370, 1, 1567711536, NULL, 1567711536, 2130706433, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Mobile Safari/537.36', '1a14c406cc046e8493f2146bbabd82cc', '7389bffd50abaa050ccf3f37d491af57', '2019-09-05 19:25:36'),
(371, 1, 1567711675, '2019-09-05 19:32:56', 1567711976, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'bdcc54b46facb8b6ea393f427aef07d7', '2019-09-05 19:27:55'),
(372, 1, 1567711976, NULL, 1567711976, 2130706433, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Mobile Safari/537.36', '1a14c406cc046e8493f2146bbabd82cc', '12105b6955eac7f8be99faa3fb31bc59', '2019-09-05 19:32:56'),
(373, 1, 1567712119, '2019-09-05 20:33:27', 1567715607, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-05 19:35:19'),
(374, 1, 1567715614, NULL, 1567715614, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'dbe23ae9547983e41f24683b4eea7985', '2019-09-05 20:33:34'),
(375, 1, 1567748280, '2019-09-06 09:47:43', 1567763263, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-06 05:38:00'),
(376, 1, 1567763268, '2019-09-06 10:14:28', 1567764868, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-06 09:47:48'),
(377, 1, 1567764875, '2019-09-06 11:34:39', 1567769679, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '48867d6b6f18bc2a5c809abd6c78e1a0', '2019-09-06 10:14:35'),
(378, 1, 1567803270, '2019-09-06 21:34:12', 1567805474, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-09-06 20:54:31'),
(379, 2, 1567805659, '2019-09-06 21:34:49', 1567805659, 2130706433, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Mobile Safari/537.36', '1a14c406cc046e8493f2146bbabd82cc', 'LogOut', '2019-09-06 21:34:19'),
(380, 1, 1567805694, '2019-09-10 15:33:45', 1568129625, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-06 21:34:54'),
(381, 1, 1568144607, NULL, 1568144607, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'e92d540a3e52a39a6861df8e663e9ad6', '2019-09-10 19:43:27'),
(382, 1, 1568144613, '2019-09-10 20:07:52', 1568146071, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-09-10 19:43:33'),
(383, 1, 1568146172, '2019-09-10 21:01:09', 1568149007, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-09-10 20:09:32'),
(384, 1, 1568149280, '2019-09-10 21:24:25', 1568150665, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '41b464888f3061377316caa8560ed813', '2019-09-10 21:01:20'),
(385, 1, 1568150767, NULL, 1568150767, 2130706433, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Mobile Safari/537.36', '1a14c406cc046e8493f2146bbabd82cc', '985d2f634dd40498d63c3607ec5fe4af', '2019-09-10 21:26:07'),
(386, 1, 1568150914, '2019-09-10 21:39:14', 1568151554, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '830349432a32093585d9a5c3e4b234cb', '2019-09-10 21:28:34'),
(387, 1, 1568151559, NULL, 1568151559, 2130706433, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Mobile Safari/537.36', '1a14c406cc046e8493f2146bbabd82cc', '96aaa22555d5483e30c796b0addcfe09', '2019-09-10 21:39:19'),
(388, 1, 1568151686, '2019-09-10 21:48:07', 1568152087, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '4fe2194071ce284e75a45f92ef3faf11', '2019-09-10 21:41:26'),
(389, 1, 1568651893, '2019-09-16 16:56:20', 1568652980, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '4906c023fcae6831b2cde44535226958', '2019-09-16 16:38:13'),
(390, 1, 1568653192, NULL, 1568653192, 2130706433, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Mobile Safari/537.36', '1a14c406cc046e8493f2146bbabd82cc', '34fa0ff57bfe549a15104ce1af8f3f6e', '2019-09-16 16:59:52'),
(391, 1, 1568653332, NULL, 1568653332, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'c0cf07ee19d0b843fcf822198057b109', '2019-09-16 17:02:12'),
(392, 1, 1568825823, '2019-09-18 17:02:15', 1568826135, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '3b6c11a6c3c65ea47b95da75ab6df963', '2019-09-18 16:57:03'),
(393, 1, 1569130661, '2019-09-22 08:05:07', 1569139507, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-22 05:37:41'),
(394, 1, 1569139515, '2019-09-22 08:46:22', 1569141982, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-22 08:05:15'),
(395, 1, 1569141987, NULL, 1569141987, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '9d521b2de584332ffb739453115132f9', '2019-09-22 08:46:27'),
(396, 1, 1569148866, '2019-09-22 12:43:55', 1569156235, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-22 10:41:06'),
(397, 1, 1569156242, '2019-09-22 19:43:26', 1569181405, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-22 12:44:03'),
(398, 1, 1569181416, '2019-09-22 20:50:53', 1569185453, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-22 19:43:36'),
(399, 1, 1569185460, '2019-09-22 22:08:03', 1569190083, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-22 20:51:00'),
(400, 1, 1569190088, '2019-09-22 23:15:49', 1569194149, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'TimeOut', '2019-09-22 22:08:08'),
(401, 1, 1569194156, '2019-09-23 00:04:57', 1569197097, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '26948ea3d5a952040901cc10c8e29515', '2019-09-22 23:15:57'),
(402, 1, 1569525415, NULL, 1569525415, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', '8c74402b34e04075291a210f03366371', '2019-09-26 19:16:56'),
(403, 1, 1569525423, '2019-09-26 21:33:17', 1569533469, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'LogOut', '2019-09-26 19:17:03'),
(404, 2, 1569533604, NULL, 1569533604, 2130706433, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 YaBrowser/19.4.2.698 (beta) Yowser/2.5 Safari/537.36', '600838512d1aae2feba95646f13f52e6', 'ca47ad11b1838be241250adcdd47a419', '2019-09-26 21:33:24');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_users_role`
--

CREATE TABLE `cisco_users_role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `alias_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_users_role`
--

INSERT INTO `cisco_users_role` (`id`, `role`, `alias_name`) VALUES
(1, 'admin', 'Администратор'),
(2, 'moderator', 'Модератор');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_views_menu_data`
--

CREATE TABLE `cisco_views_menu_data` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `position` int(11) NOT NULL,
  `class` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_views_menu_data`
--

INSERT INTO `cisco_views_menu_data` (`id`, `title`, `alias`, `description`, `position`, `class`) VALUES
(1, 'Инфо', 'info', 'Дополнительные сведения по wifi точкам', 30, ''),
(2, 'Добавить wifi точку', 'add_point', 'Добавление новой точки в систему', 20, 'icon-plus-circle icon-position-right');

-- --------------------------------------------------------

--
-- Структура таблицы `cisco_views_role_menu`
--

CREATE TABLE `cisco_views_role_menu` (
  `id` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cisco_views_role_menu`
--

INSERT INTO `cisco_views_role_menu` (`id`, `id_role`, `id_menu`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cisco_auth_error`
--
ALTER TABLE `cisco_auth_error`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_business`
--
ALTER TABLE `cisco_business`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_permissions`
--
ALTER TABLE `cisco_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_points_model`
--
ALTER TABLE `cisco_points_model`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_point_address`
--
ALTER TABLE `cisco_point_address`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_point_data`
--
ALTER TABLE `cisco_point_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_address` (`id_address`),
  ADD KEY `id_business` (`id_business`),
  ADD KEY `id_ssid` (`id_ssid`),
  ADD KEY `id_model` (`id_model`);

--
-- Индексы таблицы `cisco_point_speed`
--
ALTER TABLE `cisco_point_speed`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_point_ssid`
--
ALTER TABLE `cisco_point_ssid`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_role_permissions`
--
ALTER TABLE `cisco_role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cisco_role_permissions_ibfk_1` (`id_role`),
  ADD KEY `cisco_role_permissions_ibfk_2` (`id_permissions`);

--
-- Индексы таблицы `cisco_users`
--
ALTER TABLE `cisco_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`);

--
-- Индексы таблицы `cisco_users_data`
--
ALTER TABLE `cisco_users_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_users`);

--
-- Индексы таблицы `cisco_users_data_auth`
--
ALTER TABLE `cisco_users_data_auth`
  ADD PRIMARY KEY (`id_session`);

--
-- Индексы таблицы `cisco_users_log_data`
--
ALTER TABLE `cisco_users_log_data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_users_role`
--
ALTER TABLE `cisco_users_role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_views_menu_data`
--
ALTER TABLE `cisco_views_menu_data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cisco_views_role_menu`
--
ALTER TABLE `cisco_views_role_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_menu` (`id_menu`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cisco_auth_error`
--
ALTER TABLE `cisco_auth_error`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `cisco_business`
--
ALTER TABLE `cisco_business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `cisco_permissions`
--
ALTER TABLE `cisco_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `cisco_points_model`
--
ALTER TABLE `cisco_points_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `cisco_point_address`
--
ALTER TABLE `cisco_point_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `cisco_point_data`
--
ALTER TABLE `cisco_point_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `cisco_point_speed`
--
ALTER TABLE `cisco_point_speed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `cisco_point_ssid`
--
ALTER TABLE `cisco_point_ssid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `cisco_role_permissions`
--
ALTER TABLE `cisco_role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблицы `cisco_users`
--
ALTER TABLE `cisco_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cisco_users_data`
--
ALTER TABLE `cisco_users_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cisco_users_log_data`
--
ALTER TABLE `cisco_users_log_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;
--
-- AUTO_INCREMENT для таблицы `cisco_users_role`
--
ALTER TABLE `cisco_users_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cisco_views_menu_data`
--
ALTER TABLE `cisco_views_menu_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cisco_views_role_menu`
--
ALTER TABLE `cisco_views_role_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cisco_point_data`
--
ALTER TABLE `cisco_point_data`
  ADD CONSTRAINT `cisco_point_data_ibfk_1` FOREIGN KEY (`id_address`) REFERENCES `cisco_point_address` (`id`),
  ADD CONSTRAINT `cisco_point_data_ibfk_2` FOREIGN KEY (`id_business`) REFERENCES `cisco_business` (`id`),
  ADD CONSTRAINT `cisco_point_data_ibfk_3` FOREIGN KEY (`id_ssid`) REFERENCES `cisco_point_ssid` (`id`),
  ADD CONSTRAINT `cisco_point_data_ibfk_4` FOREIGN KEY (`id_model`) REFERENCES `cisco_points_model` (`id`);

--
-- Ограничения внешнего ключа таблицы `cisco_role_permissions`
--
ALTER TABLE `cisco_role_permissions`
  ADD CONSTRAINT `cisco_role_permissions_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `cisco_users_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cisco_role_permissions_ibfk_2` FOREIGN KEY (`id_permissions`) REFERENCES `cisco_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cisco_users`
--
ALTER TABLE `cisco_users`
  ADD CONSTRAINT `cisco_users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `cisco_users_role` (`id`);

--
-- Ограничения внешнего ключа таблицы `cisco_users_data`
--
ALTER TABLE `cisco_users_data`
  ADD CONSTRAINT `cisco_users_data_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `cisco_users` (`id`);

--
-- Ограничения внешнего ключа таблицы `cisco_views_role_menu`
--
ALTER TABLE `cisco_views_role_menu`
  ADD CONSTRAINT `cisco_views_role_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `cisco_users_role` (`id`),
  ADD CONSTRAINT `cisco_views_role_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `cisco_views_menu_data` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
