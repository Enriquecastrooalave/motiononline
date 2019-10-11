-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2019 a las 21:47:52
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `modb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ryan Reynolds', 'tmdb_vYxl6lGbVPr7f8QlaSdeRLUs5PB.jpg', '2019-08-28 08:59:44', '2019-08-28 08:59:44'),
(2, 'Amy Smart', 'tmdb_yTWkJVYq1wtn2NrnPIwXshTWqby.jpg', '2019-08-28 08:59:45', '2019-08-28 08:59:45'),
(3, 'Anna Faris', 'tmdb_7ppR5KBgVvdqVnDZby9ezpnRPsB.jpg', '2019-08-28 08:59:46', '2019-08-28 08:59:46'),
(4, 'Chris Klein', 'tmdb_foKh17RAUIhmfNgZ3TIvHJrNkDR.jpg', '2019-08-28 08:59:47', '2019-08-28 08:59:47'),
(5, 'Chris Marquette', 'tmdb_kKunkk6VksTnXGj0iK5MNqbYhBt.jpg', '2019-08-28 08:59:48', '2019-08-28 08:59:48'),
(6, 'Mercedes Mason', 'tmdb_zDCtnLO0aRGe6PzUhjE4ndSUqI0.jpg', '2019-08-29 02:51:31', '2019-08-29 02:51:31'),
(7, 'Rubén Blades', 'tmdb_kOgVo3qDJ9jXgIZJRJI3I1bm6sA.jpg', '2019-08-29 02:51:31', '2019-08-29 02:51:31'),
(8, 'Cliff Curtis', 'tmdb_wKeQvFh7z1QwsiJEmZgva83Lp5q.jpg', '2019-08-29 02:51:32', '2019-08-29 02:51:32'),
(9, 'Kim Dickens', 'tmdb_eaJky5Q6X51u0bnQkXyOrM8RnlG.jpg', '2019-08-29 02:51:33', '2019-08-29 02:51:33'),
(10, 'Alycia Debnam-Carey', 'tmdb_jOGFt9WUezPQFN0xxgTekA2Fyta.jpg', '2019-08-29 02:51:34', '2019-08-29 02:51:34'),
(11, 'Ben Burtt', 'tmdb_nfkHcZkAIGEyJ0m2jtOKaPyqNxu.jpg', '2019-08-30 00:38:12', '2019-08-30 00:38:12'),
(12, 'Elissa Knight', 'tmdb_21JKhZc6bTAoHcwSjQhZcdhhx5d.jpg', '2019-08-30 00:38:15', '2019-08-30 00:38:15'),
(13, 'Jeff Garlin', 'tmdb_cBs7u7rBTvDFp5MFCnvrPeF7SI2.jpg', '2019-08-30 00:38:16', '2019-08-30 00:38:16'),
(14, 'Fred Willard', 'tmdb_j1jWdqmklfIH4hpAbw1DK0gPMX0.jpg', '2019-08-30 00:38:19', '2019-08-30 00:38:19'),
(15, 'John Ratzenberger', 'tmdb_oRtDEOuIO1yDhTz5dORBdxXuLMO.jpg', '2019-08-30 00:38:24', '2019-08-30 00:38:24'),
(16, 'Robert Downey Jr.', 'tmdb_1YjdSym1jTG7xjHSI0yGGWEsw5i.jpg', '2019-08-30 00:46:15', '2019-08-30 00:46:15'),
(17, 'Chris Evans', 'tmdb_8CgFKCZJVwZxa1F88n8drEux0vT.jpg', '2019-08-30 00:46:15', '2019-08-30 00:46:15'),
(18, 'Chris Hemsworth', 'tmdb_lrhth7yK9p3vy6p7AabDUM1THKl.jpg', '2019-08-30 00:46:16', '2019-08-30 00:46:16'),
(19, 'Mark Ruffalo', 'tmdb_z3dvKqMNDQWk3QLxzumloQVR0pv.jpg', '2019-08-30 00:46:16', '2019-08-30 00:46:16'),
(20, 'Scarlett Johansson', 'tmdb_tHMgW7Pg0Fg6HmB8Kh8Ixk6yxZw.jpg', '2019-08-30 00:46:17', '2019-08-30 00:46:17'),
(21, 'James McAvoy', 'tmdb_oPIfGm3mf4lbmO5pWwMvfTt5BM1.jpg', '2019-08-30 03:37:41', '2019-08-30 03:37:41'),
(22, 'Michael Fassbender', 'tmdb_oexNPLumoFpazzzUqzBSDDYiUg1.jpg', '2019-08-30 03:37:43', '2019-08-30 03:37:43'),
(23, 'Jennifer Lawrence', 'tmdb_hvMB8ItfetI8baJJ15XgI4gITqf.jpg', '2019-08-30 03:37:45', '2019-08-30 03:37:45'),
(24, 'Nicholas Hoult', 'tmdb_h1gXgpuXERZTVhxMdjT7uvXIyq6.jpg', '2019-08-30 03:37:46', '2019-08-30 03:37:46'),
(25, 'Oscar Isaac', 'tmdb_cY6ail3ebXDx9FCoZMgVGAbmBus.jpg', '2019-08-30 03:37:49', '2019-08-30 03:37:49'),
(26, 'Donald Glover', 'tmdb_36o5mpbQVdxOf9kUxWw7SllOuk.jpg', '2019-08-30 03:38:36', '2019-08-30 03:38:36'),
(27, 'Beyoncé Knowles', 'tmdb_9MgDCYBBVBl4lM1DuxNIIbCHlKy.jpg', '2019-08-30 03:38:39', '2019-08-30 03:38:39'),
(28, 'James Earl Jones', 'tmdb_oqMPIsXrl9SZkRfIKN08eFROmH6.jpg', '2019-08-30 03:38:41', '2019-08-30 03:38:41'),
(29, 'Chiwetel Ejiofor', 'tmdb_kq5DDnqqofoRI0t6ddtRlsJnNPT.jpg', '2019-08-30 03:38:45', '2019-08-30 03:38:45'),
(30, 'Alfre Woodard', 'tmdb_eoBvK34M52no6voo9Qibrd1S0nX.jpg', '2019-08-30 03:38:47', '2019-08-30 03:38:47'),
(31, 'Owen Wilson', 'tmdb_j7oYgvfDiO34VcFdSB7GhM2CSle.jpg', '2019-08-30 03:39:37', '2019-08-30 03:39:37'),
(32, 'Paul Newman', 'tmdb_86y3mhX7mBdUC9A5B0euU8kPWmp.jpg', '2019-08-30 03:39:40', '2019-08-30 03:39:40'),
(33, 'Bonnie Hunt', 'tmdb_uKAfrFRZYnHFAxw53Jldbs8yIZO.jpg', '2019-08-30 03:39:43', '2019-08-30 03:39:43'),
(34, 'Larry the Cable Guy', 'tmdb_9yGwJBveIvLidqJEQI4PRuKQhMr.jpg', '2019-08-30 03:39:46', '2019-08-30 03:39:46'),
(35, 'Tony Shalhoub', 'tmdb_jXzlVxS8u64XEZUoNPiuhGcQXDW.jpg', '2019-08-30 03:39:52', '2019-08-30 03:39:52'),
(36, 'Mena Massoud', 'tmdb_yeaEd4P4kNlRkDqzunsQeh24rQm.jpg', '2019-08-30 03:40:57', '2019-08-30 03:40:57'),
(37, 'Naomi Scott', 'tmdb_d140yTWCle6rYUGE9GIVZVPaPng.jpg', '2019-08-30 03:41:00', '2019-08-30 03:41:00'),
(38, 'Will Smith', 'tmdb_zCrnERhs0L8FNK6xz4f5wWp0pKK.jpg', '2019-08-30 03:41:02', '2019-08-30 03:41:02'),
(39, 'Marwan Kenzari', 'tmdb_k0qx65csI86rAFBR4Sal7phY3Vl.jpg', '2019-08-30 03:41:06', '2019-08-30 03:41:06'),
(40, 'Navid Negahban', 'tmdb_qxp9X0SIA0FWts2qK60IcrmUhnF.jpg', '2019-08-30 03:41:08', '2019-08-30 03:41:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `ad_type` varchar(100) NOT NULL,
  `ad_image` varchar(100) NOT NULL,
  `ad_video` varchar(100) NOT NULL,
  `ad_url` varchar(100) DEFAULT NULL,
  `ad_location` varchar(100) NOT NULL,
  `ad_target` varchar(100) DEFAULT NULL,
  `ad_hold` int(50) DEFAULT NULL,
  `time` varchar(100) NOT NULL,
  `endtime` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audio_languages`
--

CREATE TABLE `audio_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `audio_languages`
--

INSERT INTO `audio_languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Hindi\"}', '2019-07-24 23:48:58', '2019-07-24 23:48:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_customizes`
--

CREATE TABLE `auth_customizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_customizes`
--

INSERT INTO `auth_customizes` (`id`, `image`, `detail`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"auth_page1569262568perform-2.png\"}', '{\"en\":\"<h1>&iexcl;Bienvenido a Motion online!<\\/h1>\"}', '2018-04-21 18:30:00', '2019-09-24 21:43:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buttons`
--

CREATE TABLE `buttons` (
  `id` int(10) UNSIGNED NOT NULL,
  `rightclick` tinyint(1) NOT NULL DEFAULT 1,
  `inspect` tinyint(1) DEFAULT NULL,
  `goto` tinyint(1) NOT NULL DEFAULT 1,
  `color` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `buttons`
--

INSERT INTO `buttons` (`id`, `rightclick`, `inspect`, `goto`, `color`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 0, '2018-07-31 06:00:00', '2019-09-24 13:47:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_pub_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_mar_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_add` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prime_main_slider` tinyint(1) NOT NULL DEFAULT 1,
  `prime_genre_slider` tinyint(1) NOT NULL DEFAULT 1,
  `prime_footer` tinyint(1) NOT NULL DEFAULT 1,
  `prime_movie_single` tinyint(1) NOT NULL DEFAULT 1,
  `terms_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_pol` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_pol` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_payment` tinyint(1) NOT NULL DEFAULT 1,
  `paypal_payment` tinyint(1) NOT NULL DEFAULT 1,
  `payu_payment` tinyint(1) NOT NULL DEFAULT 1,
  `paytm_payment` int(11) UNSIGNED DEFAULT 0,
  `preloader` tinyint(1) NOT NULL DEFAULT 1,
  `wel_eml` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configs`
--

INSERT INTO `configs` (`id`, `logo`, `favicon`, `title`, `w_email`, `stripe_pub_key`, `stripe_secret_key`, `paypal_mar_email`, `currency_code`, `currency_symbol`, `invoice_add`, `prime_main_slider`, `prime_genre_slider`, `prime_footer`, `prime_movie_single`, `terms_condition`, `privacy_pol`, `refund_pol`, `copyright`, `stripe_payment`, `paypal_payment`, `payu_payment`, `paytm_payment`, `preloader`, `wel_eml`, `created_at`, `updated_at`) VALUES
(1, 'logo_1569247053LOGO MO LARGO chico 2.png.png', 'favicon.png', '{\"en\":\"Motion Online\"}', 'online@motioncenter.cl', '', '', '', 'CLP', 'fa fa-dollar', '{\"en\":null}', 0, 1, 1, 1, '{\"en\":null,\"nl\":\"<p>newvious&nbsp;goodesioanos<\\/p>\"}', NULL, NULL, '{\"en\":\"<p>&copy; 2019&nbsp;Motion Online&nbsp;| All Rights Reserved.<\\/p>\"}', 0, 0, 0, 1, 1, 0, NULL, '2019-09-23 16:57:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent_off` double(8,2) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_off` double(8,2) DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'once',
  `max_redemptions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redeem_by` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directors`
--

CREATE TABLE `directors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donater_lists`
--

CREATE TABLE `donater_lists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `method` varchar(191) DEFAULT NULL,
  `donor_msg` longtext DEFAULT NULL,
  `amount` varchar(191) DEFAULT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episodes`
--

CREATE TABLE `episodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `seasons_id` int(10) UNSIGNED NOT NULL,
  `tmdb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `episode_no` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmdb` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` tinyint(1) DEFAULT NULL,
  `subtitle_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_files` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `released` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'E',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `episodes`
--

INSERT INTO `episodes` (`id`, `seasons_id`, `tmdb_id`, `episode_no`, `title`, `tmdb`, `duration`, `detail`, `a_language`, `subtitle`, `subtitle_list`, `subtitle_files`, `released`, `type`, `created_at`, `updated_at`) VALUES
(5, 4, NULL, 1, 'ccnnb', 'N', 'ccc', '{\"en\":\"xxccvvcbv\"}', '1', 0, NULL, NULL, '3032-05-04', 'E', '2019-08-10 05:00:20', '2019-08-10 05:00:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excersices`
--

CREATE TABLE `excersices` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `excersices`
--

INSERT INTO `excersices` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'Peso muerto convencional', '2019-09-12 15:08:58', '2019-09-20 12:13:54'),
(9, 'Sentadilla con barra', '2019-09-12 15:10:37', '2019-09-20 12:13:38'),
(12, 'Hip Thrust barra', '2019-09-20 12:13:00', '2019-09-20 12:13:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exercise_reports`
--

CREATE TABLE `exercise_reports` (
  `id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `exercise_reports`
--

INSERT INTO `exercise_reports` (`id`, `exercise_id`, `value`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 1, 100, '2019-09-12 12:10:28', '2019-09-12 12:10:28', 1),
(2, 2, 50, '2019-09-12 14:25:46', '2019-09-12 14:25:46', 1),
(3, 2, 70, '2019-09-12 14:26:00', '2019-09-12 14:26:00', 1),
(4, 2, 85, '2019-09-12 14:26:24', '2019-09-12 14:26:24', 1),
(5, 2, 100, '2019-09-12 14:26:41', '2019-09-12 14:26:41', 1),
(6, 2, 90, '2019-09-12 14:26:49', '2019-09-12 14:26:49', 1),
(7, 3, 75, '2019-09-12 14:27:12', '2019-09-12 14:27:12', 1),
(8, 3, 85, '2019-09-12 14:27:35', '2019-09-12 14:27:35', 1),
(9, 3, 100, '2019-09-12 14:27:54', '2019-09-12 14:27:54', 1),
(10, 3, 110, '2019-09-12 14:28:27', '2019-09-12 14:28:27', 1),
(11, 3, 150, '2019-09-12 14:28:42', '2019-09-12 14:28:42', 1),
(12, 4, 5, '2019-09-12 14:29:39', '2019-09-12 14:29:39', 1),
(13, 4, 50, '2019-09-12 14:30:33', '2019-09-12 14:30:33', 1),
(14, 6, 20, '2019-09-12 14:39:38', '2019-09-12 14:39:38', 1),
(15, 6, 35, '2019-09-12 14:39:54', '2019-09-12 14:39:54', 1),
(16, 4, 70, '2019-09-12 15:04:50', '2019-09-12 15:04:50', 1),
(17, 8, 50, '2019-09-12 15:09:34', '2019-09-12 15:09:34', 1),
(18, 8, 70, '2019-09-12 15:09:43', '2019-09-12 15:09:43', 1),
(19, 8, 85, '2019-09-12 15:09:49', '2019-09-12 15:09:49', 1),
(20, 8, 90, '2019-09-12 15:09:56', '2019-09-12 15:09:56', 1),
(21, 8, 50, '2019-09-12 15:10:08', '2019-09-12 15:10:08', 1),
(22, 9, 50, '2019-09-12 15:11:03', '2019-09-12 15:11:03', 1),
(23, 9, 70, '2019-09-12 15:11:13', '2019-09-12 15:11:13', 1),
(24, 8, 50, '2019-09-12 15:11:18', '2019-09-12 15:11:18', 1),
(25, 9, 50, '2019-09-12 15:11:28', '2019-09-12 15:11:28', 1),
(26, 9, 35, '2019-09-12 15:11:41', '2019-09-12 15:11:41', 1),
(27, 10, 70, '2019-09-17 13:32:21', '2019-09-17 13:32:21', 1),
(28, 10, 100, '2019-09-17 13:32:33', '2019-09-17 13:32:33', 1),
(29, 10, 35, '2019-09-17 13:32:46', '2019-09-17 13:32:46', 1),
(30, 10, 85, '2019-09-17 13:33:30', '2019-09-17 13:33:30', 1),
(31, 10, 95, '2019-09-25 16:46:15', '2019-09-25 16:46:15', 1),
(32, 8, 60, '2019-09-26 15:11:22', '2019-09-26 15:11:22', 31),
(33, 9, 65, '2019-09-26 15:11:35', '2019-09-26 15:11:35', 31),
(34, 12, 100, '2019-09-26 15:11:48', '2019-09-26 15:11:48', 31),
(35, 8, 100, '2019-09-26 15:11:59', '2019-09-26 15:11:59', 31),
(36, 9, 60, '2019-09-27 20:46:25', '2019-09-27 20:46:25', 27),
(37, 8, 40, '2019-09-29 18:03:14', '2019-09-29 18:03:14', 32),
(38, 8, 50, '2019-09-29 18:03:24', '2019-09-29 18:03:24', 32),
(39, 8, 55, '2019-09-29 18:03:40', '2019-09-29 18:03:40', 32),
(40, 8, 60, '2019-09-29 18:03:56', '2019-09-29 18:03:56', 32),
(41, 8, 63, '2019-09-29 18:04:12', '2019-09-29 18:04:12', 32),
(42, 8, 55, '2019-09-29 18:04:27', '2019-09-29 18:04:27', 32),
(43, 8, 64, '2019-09-29 18:04:42', '2019-09-29 18:04:42', 32),
(44, 8, 67, '2019-09-29 18:04:56', '2019-09-29 18:04:56', 32),
(45, 9, 35, '2019-09-29 18:05:19', '2019-09-29 18:05:19', 32),
(46, 9, 40, '2019-09-29 18:05:35', '2019-09-29 18:05:35', 32),
(47, 9, 50, '2019-09-29 18:05:49', '2019-09-29 18:05:49', 32),
(48, 9, 52, '2019-09-29 18:06:22', '2019-09-29 18:06:22', 32),
(49, 9, 52, '2019-09-29 18:06:36', '2019-09-29 18:06:36', 32),
(50, 9, 52, '2019-09-29 18:06:50', '2019-09-29 18:06:50', 32),
(51, 9, 60, '2019-09-29 18:07:10', '2019-09-29 18:07:10', 32),
(52, 9, 60, '2019-09-29 18:07:23', '2019-09-29 18:07:23', 32),
(53, 12, 50, '2019-09-29 18:07:40', '2019-09-29 18:07:40', 32),
(54, 12, 60, '2019-09-29 18:07:59', '2019-09-29 18:07:59', 32),
(55, 12, 70, '2019-09-29 18:08:10', '2019-09-29 18:08:10', 32),
(56, 12, 80, '2019-09-29 18:08:22', '2019-09-29 18:08:22', 32),
(57, 12, 90, '2019-09-29 18:08:46', '2019-09-29 18:08:46', 32),
(58, 12, 95, '2019-09-29 18:08:56', '2019-09-29 18:08:56', 32),
(59, 12, 100, '2019-09-29 18:10:13', '2019-09-29 18:10:13', 32),
(60, 12, 110, '2019-09-29 18:10:32', '2019-09-29 18:10:32', 32),
(61, 8, 100, '2019-10-04 19:29:54', '2019-10-04 19:29:54', 30),
(62, 8, 150, '2019-10-04 19:30:09', '2019-10-04 19:30:09', 30),
(63, 9, 85, '2019-10-04 19:30:21', '2019-10-04 19:30:21', 30),
(64, 9, 110, '2019-10-04 19:30:30', '2019-10-04 19:30:30', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `footer_translations`
--

CREATE TABLE `footer_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `footer_translations`
--

INSERT INTO `footer_translations` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'terms and condition', '{\"en\":\"termin\",\"nl\":\"Terms and condition2\",\"de\":\"Gesch\\u00e4ftsbedingung\"}', NULL, '2019-09-23 19:05:19'),
(2, 'privacy policy', '{\"en\":\"dweded\",\"nl\":\"Privacy policy2\",\"de\":\"Datenschutz-Bestimmungen\"}', NULL, '2019-09-23 19:05:19'),
(3, 'refund policy', '{\"en\":\"dede\",\"nl\":\"Refund policy2\",\"de\":\"R\\u00fcckgaberecht\"}', NULL, '2019-09-23 19:05:19'),
(4, 'help', '{\"en\":\"Ayuda\",\"nl\":\"Help2\",\"de\":\"Hilfe\"}', NULL, '2019-09-23 21:29:14'),
(5, 'corporate', '{\"en\":\"corp\",\"nl\":\"Corporate2\",\"de\":\"Unternehmen\"}', NULL, '2019-09-23 19:05:19'),
(6, 'sitemap', '{\"en\":\"deded\",\"nl\":\"Sitemap2\",\"de\":\"Seitenverzeichnis\"}', NULL, '2019-09-23 19:05:19'),
(7, 'subscribe', '{\"en\":\"Subscribete\",\"nl\":\"Subscribe2\",\"de\":\"Abonnieren\"}', NULL, '2019-09-23 21:29:14'),
(8, 'subscribe text', '{\"en\":\".\",\"nl\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.2\",\"de\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.\"}', NULL, '2019-09-23 21:29:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `front_slider_updates`
--

CREATE TABLE `front_slider_updates` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_show` int(11) UNSIGNED DEFAULT NULL,
  `orderby` int(11) DEFAULT 1,
  `sliderview` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `front_slider_updates`
--

INSERT INTO `front_slider_updates` (`id`, `item_show`, `orderby`, `sliderview`) VALUES
(1, 5, 1, 0),
(2, 5, 1, 0),
(3, 5, 1, 0),
(4, 5, 0, 0),
(5, NULL, 0, 1),
(6, NULL, 1, 0),
(7, NULL, 1, 0),
(8, NULL, 1, 0),
(9, NULL, 1, 0),
(10, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Ejercicios de empuje inferior...\"}', '2019-08-27 21:35:28', '2019-09-21 03:27:33'),
(4, '{\"en\":\"Ejercicios de tracci\\u00f3n superior...\"}', '2019-08-28 00:15:21', '2019-09-21 03:27:24'),
(6, '{\"en\":\"Ejercicios de tracci\\u00f3n inferior...\"}', '2019-08-28 00:20:53', '2019-09-21 03:27:54'),
(7, '{\"en\":\"Ejercicios de empuje superior...\"}', '2019-08-29 17:42:23', '2019-09-21 03:28:11'),
(12, '{\"en\":\"Ejercicios de flexibilidad...\"}', '2019-08-31 01:28:15', '2019-09-21 03:29:52'),
(13, '{\"en\":\"Tips y datos importantes!, aprende a alimentarte con nosotros...\"}', '2019-09-19 00:57:21', '2019-09-19 01:09:51'),
(16, '{\"en\":\"Descuentos y promociones\"}', '2019-09-19 00:58:45', '2019-09-19 00:58:45'),
(17, '{\"en\":\"Evaluaciones...\"}', '2019-09-19 00:59:41', '2019-09-21 03:30:53'),
(19, '{\"en\":\"\\u00a1 Desaf\\u00edos y competencias !\"}', '2019-09-19 01:00:28', '2019-09-21 03:29:32'),
(21, '{\"en\":\"Aprende sobre los aceites y las grasas...\"}', '2019-09-19 01:57:43', '2019-09-21 03:20:44'),
(22, '{\"en\":\"Aprende sobre los carbohidratos y cereales...\"}', '2019-09-19 01:58:09', '2019-09-21 03:21:23'),
(23, '{\"en\":\"Aprende sobre las proteinas...\"}', '2019-09-19 01:58:17', '2019-09-21 03:22:59'),
(24, '{\"en\":\"Aprende sobre las frutas y verduras...\"}', '2019-09-19 01:58:39', '2019-09-21 03:21:56'),
(25, '{\"en\":\"Aprende sobre la hidratacion...\"}', '2019-09-19 01:58:54', '2019-09-21 03:22:21'),
(26, '{\"en\":\"Ejercicios de core y abdomen...\"}', '2019-09-20 15:20:28', '2019-09-21 03:28:40'),
(27, '{\"en\":\"Tips y datos importantes!, aprende a entrenar con nosotros...\"}', '2019-09-21 03:25:30', '2019-09-21 03:25:49'),
(28, '{\"en\":\"Ejemplos de colaciones...\"}', '2019-09-21 05:53:57', '2019-09-21 05:53:57'),
(29, '{\"en\":\"Ejemplos de almuerzos y cenas...\"}', '2019-09-21 05:54:11', '2019-09-21 05:54:47'),
(30, '{\"en\":\"Ejemplos de desayunos, once o te...\"}', '2019-09-21 05:54:30', '2019-09-21 06:01:51'),
(31, '{\"en\":\"Aprende sobre suplementos...\"}', '2019-09-21 06:32:03', '2019-09-21 06:32:03'),
(32, '{\"en\":\"Tips y datos importantes!, aprende a cuidar tu cuerpo con nosotros...\"}', '2019-09-21 07:16:50', '2019-09-21 07:16:50'),
(33, '{\"en\":\"Aprende sobre tu cuerpo mujer...\"}', '2019-09-21 07:22:14', '2019-09-21 07:22:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `header_translations`
--

CREATE TABLE `header_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `header_translations`
--

INSERT INTO `header_translations` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4, 'dashboard', '{\"en\":\"Mi Perfil\",\"nl\":\"Dashboard\",\"de\":\"Instrumententafel\"}', NULL, '2019-09-23 16:07:27'),
(5, 'faqs', '{\"en\":\"Faq\'s\",\"nl\":\"Faq\'s\",\"de\":\"Faq\'s\"}', NULL, '2018-04-24 03:30:15'),
(6, 'sign in', '{\"en\":\"Ingresar\",\"nl\":\"Sign In\",\"de\":\"Anmelden\"}', NULL, '2019-09-03 08:42:30'),
(7, 'sign out', '{\"en\":\"Salir\",\"nl\":\"Sign Out\",\"de\":\"Ausloggen\"}', NULL, '2019-09-03 08:42:30'),
(8, 'watchlist', '{\"en\":\"Mi Mes\",\"nl\":\"Watchlist\",\"de\":\"Beobachtungsliste\"}', NULL, '2019-09-03 08:42:30'),
(9, 'register', '{\"en\":\"Registro\",\"nl\":\"Register\",\"de\":\"Registrieren\"}', NULL, '2019-09-03 08:42:30'),
(10, 'report', '{\"en\":\"Mi Progreso\"}', NULL, '2019-09-23 16:07:27'),
(11, 'question', '{\"en\":\"Mi Chat\"}', NULL, '2019-09-23 16:07:27'),
(12, 'excercise', '{\"en\":\"Mi fuerza\"}', NULL, '2019-10-08 15:16:39'),
(13, 'weight', '{\"en\":\"Mi composici\\u00f3n corporal\"}', NULL, '2019-10-08 15:16:39'),
(14, 'virtualcard', '{\"en\":\"Mi Tarjeta\"}', NULL, '2019-09-23 16:34:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED DEFAULT NULL,
  `tv_series_id` int(10) UNSIGNED DEFAULT NULL,
  `slide_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `movie_id`, `tv_series_id`, `slide_image`, `active`, `position`, `created_at`, `updated_at`) VALUES
(4, 29, NULL, 'slide_1569328541motio educa2.jpg', 1, 1, '2019-09-21 06:59:15', '2019-09-24 15:35:41'),
(6, 43, NULL, 'slide_1569328558grimalt entrenando 2.jpg', 1, 3, '2019-09-21 07:06:23', '2019-09-24 15:35:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_translations`
--

CREATE TABLE `home_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `home_translations`
--

INSERT INTO `home_translations` (`id`, `key`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'watch next tv series and movies', '{\"en\":\"Watch Next TV Series And Movies\",\"nl\":\"Watch Nexot TV Seriesee And Moviessk\",\"de\":\"Schaue n\\u00e4chste TV-Serie und Filme\"}', 0, NULL, '2019-09-19 00:53:08'),
(2, 'watch next movies', '{\"en\":\"Watch Next Movies\",\"nl\":\"Watch Next Movies5\",\"de\":\"Sieh dir die n\\u00e4chsten Filme an\"}', 0, NULL, '2019-09-19 00:53:06'),
(3, 'watch next tv series', '{\"en\":\"Watch Next TV Series\",\"nl\":\"Watch Next TV Series5\",\"de\":\"Sehen Sie sich die n\\u00e4chste TV-Serie an\"}', 0, NULL, '2019-09-19 00:53:04'),
(4, 'view all', '{\"en\":\"View all\",\"nl\":\"View all5\",\"de\":\"Alle ansehen\"}', 1, NULL, '2019-09-23 21:26:16'),
(5, 'featured', '{\"en\":\"Featured\",\"nl\":\"featured5\",\"de\":\"gekennzeichnet\"}', 0, NULL, '2019-09-19 00:53:13'),
(7, 'movies in', '{\"en\":\"Movies  in\",\"nl\":\"movies  in5\",\"de\":\"Filme in\"}', 0, NULL, '2019-09-19 00:53:02'),
(8, 'tv shows in', '{\"en\":\"Tv Shows in\",\"nl\":\"tv shows in5\",\"de\":\"Fernsehshows in\"}', 0, NULL, '2019-09-19 00:52:59'),
(9, 'at the big screen at home', '{\"en\":\"at the big screen at home\",\"nl\":\"at the big screen at home5\",\"de\":\"auf dem gro\\u00dfen Bildschirm zu Hause\"}', 1, NULL, '2018-04-24 03:36:54'),
(10, 'recently added', '{\"en\":\"Recently Added\",\"nl\":\"Recently Added5\",\"de\":\"K\\u00fcrzlich hinzugef\\u00fcgt\"}', 1, NULL, '2018-04-24 03:36:54'),
(11, 'found for', '{\"en\":\"Found for\",\"nl\":\"found for5\",\"de\":\"gefunden f\\u00fcr\"}', 1, NULL, '2018-04-24 03:39:13'),
(12, 'directors', '{\"en\":\"Directors\",\"nl\":\"Directors5\",\"de\":\"Direktoren\"}', 1, NULL, '2018-04-24 03:36:54'),
(13, 'starring', '{\"en\":\"Starring\",\"nl\":\"Starring5\",\"de\":\"Mit\"}', 1, NULL, '2018-04-24 03:36:54'),
(14, 'genres', '{\"en\":\"Genres\",\"nl\":\"Genres5\",\"de\":\"Genres\"}', 1, NULL, '2018-04-24 03:36:54'),
(15, 'audio languages', '{\"en\":\"Audio Languages\",\"nl\":\"Audio Languages5\",\"de\":\"Audio-Sprachen\"}', 1, NULL, '2018-04-24 03:36:54'),
(16, 'customers also watched', '{\"en\":\"Customers also watched\",\"nl\":\"Customers also watched5\",\"de\":\"Kunden haben auch zugeschaut\"}', 1, NULL, '2018-04-24 03:36:54'),
(17, 'episodes', '{\"en\":\"Episodes\",\"nl\":\"Episodes5\",\"de\":\"Episoden\"}', 1, NULL, '2018-04-24 03:36:54'),
(18, 'series', '{\"en\":\"Series\",\"nl\":\"Series5\",\"de\":\"Serie\"}', 1, NULL, '2018-04-24 03:36:54'),
(19, 'frequently asked questions', '{\"en\":\"Frequently Asked Questions\",\"nl\":\"Frequently Asked Questions5\",\"de\":\"H\\u00e4ufig gestellte Fragen\"}', 1, NULL, '2018-04-24 03:36:54'),
(20, 'movies', '{\"en\":\"Movies\",\"nl\":\"Movies5\",\"de\":\"Filme\"}', 1, NULL, '2019-09-23 21:26:16'),
(21, 'tv shows', '{\"en\":\"Tv Shows\",\"nl\":\"Tv Shows5\",\"de\":\"Fernsehshows\"}', 0, NULL, '2019-09-19 00:53:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` tinyint(1) NOT NULL DEFAULT 1,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left` tinyint(1) NOT NULL DEFAULT 1,
  `position` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `image`, `heading`, `detail`, `button`, `button_text`, `button_link`, `left`, `position`, `created_at`, `updated_at`) VALUES
(1, 'landing_page_1569267161hiclipart.png', '{\"en\":\"Bienvenidos!  Unete a Motion online\",\"de\":\"Herzlich willkommen! Beitreten Next Hour\"}', '{\"en\":\"Evaluate presencialmente con nosotros y recibe nuestro exclusivo contenido y asesoramiento!\",\"de\":\"Nehmen Sie an der Next Hour teil und schauen Sie sich die neuesten Filme an, das Elite-TV-Programm erscheint und gew\\u00e4hrt Ihnen die beste Mitgliedschaft in der n\\u00e4chsten Stunde zu den niedrigsten Kosten.\"}', 1, '{\"en\":\"Ingresa a Motion online\",\"de\":\"Join Next Hour\"}', 'login', 0, 1, '2018-04-24 02:18:44', '2019-09-23 22:32:41'),
(2, 'landing_page_1569256270perform-2-2.png', '{\"en\":\"Plan Black\",\"de\":\"Vermisse Fernsehserien nicht\"}', '{\"en\":\"- Evaluaci\\u00f3n presencial en MOTION gratis.\\r\\n- Asesoramiento en entrenamiento, nutricion y prevencion de lesiones.\\r\\n- Chat con nuestros mejores trainers.\\r\\n- Descuentos en suplementos alimenticios, implementos y accesorios MOTION.\\r\\n- Se uno mas de nuestra comunidad, subiremos tus historias a nuestra cuenta de Instgram!.\",\"de\":\"Mit Ihrer Mitgliedschaft bei der n\\u00e4chsten Stunde n\\u00e4hern Sie sich ausgew\\u00e4hlten US- und allen TV-Shows, gewinnen Next-Hour-Serien und Kinder- und Kindershows.\"}', 1, '{\"en\":\"Ingresa a Motion online\",\"de\":\"Register Now\"}', 'login', 1, 2, '2018-04-24 02:19:42', '2019-09-23 19:31:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `local` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `def` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `local`, `name`, `def`, `created_at`, `updated_at`) VALUES
(3, 'en', 'English', 1, '2019-05-02 12:23:19', '2019-05-12 10:00:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `position`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Training\"}', 'ejercicios', 2, '2019-08-27 21:40:04', '2019-09-20 15:21:33'),
(2, '{\"en\":\"Nutrition\"}', 'nutricion', 1, '2019-08-27 21:40:13', '2019-09-20 15:23:21'),
(3, '{\"en\":\"Healthy body\"}', 'pre-kine', 3, '2019-08-27 21:40:31', '2019-09-20 15:22:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_videos`
--

CREATE TABLE `menu_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED DEFAULT NULL,
  `tv_series_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_videos`
--

INSERT INTO `menu_videos` (`id`, `menu_id`, `movie_id`, `tv_series_id`, `created_at`, `updated_at`) VALUES
(13, 2, NULL, 4, '2019-08-28 18:21:39', '2019-08-28 18:21:39'),
(57, 2, 50, NULL, '2019-09-19 02:01:25', '2019-09-19 02:01:25'),
(60, 1, 51, NULL, '2019-09-20 15:29:28', '2019-09-20 15:29:28'),
(61, 1, 52, NULL, '2019-09-20 15:48:32', '2019-09-20 15:48:32'),
(62, 1, 53, NULL, '2019-09-20 15:50:08', '2019-09-20 15:50:08'),
(63, 1, 54, NULL, '2019-09-20 15:50:40', '2019-09-20 15:50:40'),
(64, 1, 55, NULL, '2019-09-20 15:51:42', '2019-09-20 15:51:42'),
(65, 1, 56, NULL, '2019-09-20 15:53:25', '2019-09-20 15:53:25'),
(66, 1, 57, NULL, '2019-09-20 15:54:21', '2019-09-20 15:54:21'),
(67, 1, 58, NULL, '2019-09-20 15:57:05', '2019-09-20 15:57:05'),
(68, 1, 59, NULL, '2019-09-20 15:58:32', '2019-09-20 15:58:32'),
(69, 1, 60, NULL, '2019-09-20 16:01:04', '2019-09-20 16:01:04'),
(70, 1, 61, NULL, '2019-09-20 16:02:42', '2019-09-20 16:02:42'),
(71, 1, 62, NULL, '2019-09-20 16:04:04', '2019-09-20 16:04:04'),
(72, 1, 63, NULL, '2019-09-20 16:05:13', '2019-09-20 16:05:13'),
(73, 1, 64, NULL, '2019-09-20 16:07:17', '2019-09-20 16:07:17'),
(74, 1, 65, NULL, '2019-09-20 16:08:40', '2019-09-20 16:08:40'),
(75, 1, 66, NULL, '2019-09-20 16:09:12', '2019-09-20 16:09:12'),
(76, 1, 67, NULL, '2019-09-20 16:10:15', '2019-09-20 16:10:15'),
(77, 1, 68, NULL, '2019-09-20 16:11:02', '2019-09-20 16:11:02'),
(78, 1, 69, NULL, '2019-09-20 16:12:13', '2019-09-20 16:12:13'),
(79, 1, 70, NULL, '2019-09-20 16:13:36', '2019-09-20 16:13:36'),
(80, 1, 71, NULL, '2019-09-20 16:14:44', '2019-09-20 16:14:44'),
(81, 1, 72, NULL, '2019-09-20 16:15:57', '2019-09-20 16:15:57'),
(82, 1, 73, NULL, '2019-09-20 16:17:07', '2019-09-20 16:17:07'),
(83, 1, 74, NULL, '2019-09-20 16:18:28', '2019-09-20 16:18:28'),
(84, 1, 75, NULL, '2019-09-20 16:19:13', '2019-09-20 16:19:13'),
(85, 1, 76, NULL, '2019-09-20 16:20:26', '2019-09-20 16:20:26'),
(86, 1, 77, NULL, '2019-09-20 16:23:39', '2019-09-20 16:23:39'),
(87, 1, 78, NULL, '2019-09-20 16:24:54', '2019-09-20 16:24:54'),
(88, 1, 79, NULL, '2019-09-20 16:25:53', '2019-09-20 16:25:53'),
(89, 1, 80, NULL, '2019-09-20 16:26:53', '2019-09-20 16:26:53'),
(90, 1, 81, NULL, '2019-09-20 16:28:00', '2019-09-20 16:28:00'),
(91, 1, 82, NULL, '2019-09-20 16:28:37', '2019-09-20 16:28:37'),
(92, 2, 83, NULL, '2019-09-21 05:56:44', '2019-09-21 05:56:44'),
(93, 2, 84, NULL, '2019-09-21 05:57:14', '2019-09-21 05:57:14'),
(95, 2, 86, NULL, '2019-09-21 05:58:36', '2019-09-21 05:58:36'),
(96, 2, 87, NULL, '2019-09-21 05:59:14', '2019-09-21 05:59:14'),
(97, 2, 88, NULL, '2019-09-21 05:59:42', '2019-09-21 05:59:42'),
(98, 2, 89, NULL, '2019-09-21 06:00:21', '2019-09-21 06:00:21'),
(100, 2, 91, NULL, '2019-09-21 06:04:02', '2019-09-21 06:04:02'),
(101, 2, 92, NULL, '2019-09-21 06:04:33', '2019-09-21 06:04:33'),
(102, 2, 93, NULL, '2019-09-21 06:04:58', '2019-09-21 06:04:58'),
(103, 2, 94, NULL, '2019-09-21 06:06:34', '2019-09-21 06:06:34'),
(104, 2, 95, NULL, '2019-09-21 06:07:07', '2019-09-21 06:07:07'),
(105, 2, 96, NULL, '2019-09-21 06:07:46', '2019-09-21 06:07:46'),
(106, 2, 97, NULL, '2019-09-21 06:08:15', '2019-09-21 06:08:15'),
(109, 2, 85, NULL, '2019-09-21 06:15:23', '2019-09-21 06:15:23'),
(110, 2, 98, NULL, '2019-09-21 06:24:09', '2019-09-21 06:24:09'),
(111, 2, 99, NULL, '2019-09-21 06:25:18', '2019-09-21 06:25:18'),
(112, 2, 100, NULL, '2019-09-21 06:25:45', '2019-09-21 06:25:45'),
(113, 2, 101, NULL, '2019-09-21 06:26:11', '2019-09-21 06:26:11'),
(114, 2, 102, NULL, '2019-09-21 06:26:47', '2019-09-21 06:26:47'),
(115, 2, 103, NULL, '2019-09-21 06:27:24', '2019-09-21 06:27:24'),
(116, 2, 104, NULL, '2019-09-21 06:27:59', '2019-09-21 06:27:59'),
(118, 2, 105, NULL, '2019-09-21 06:29:46', '2019-09-21 06:29:46'),
(119, 2, 49, NULL, '2019-09-21 06:30:46', '2019-09-21 06:30:46'),
(120, 2, 44, NULL, '2019-09-21 06:32:35', '2019-09-21 06:32:35'),
(121, 2, 45, NULL, '2019-09-21 06:33:47', '2019-09-21 06:33:47'),
(122, 2, 42, NULL, '2019-09-21 06:34:15', '2019-09-21 06:34:15'),
(123, 2, 29, NULL, '2019-09-21 06:34:49', '2019-09-21 06:34:49'),
(124, 2, 43, NULL, '2019-09-21 06:35:10', '2019-09-21 06:35:10'),
(125, 2, 46, NULL, '2019-09-21 06:35:32', '2019-09-21 06:35:32'),
(126, 2, 47, NULL, '2019-09-21 06:35:54', '2019-09-21 06:35:54'),
(127, 2, 48, NULL, '2019-09-21 06:36:11', '2019-09-21 06:36:11'),
(128, 2, 106, NULL, '2019-09-21 06:37:53', '2019-09-21 06:37:53'),
(129, 2, 107, NULL, '2019-09-21 06:38:17', '2019-09-21 06:38:17'),
(130, 2, 108, NULL, '2019-09-21 06:38:44', '2019-09-21 06:38:44'),
(131, 2, 109, NULL, '2019-09-21 06:39:43', '2019-09-21 06:39:43'),
(132, 2, 110, NULL, '2019-09-21 06:45:21', '2019-09-21 06:45:21'),
(133, 2, 111, NULL, '2019-09-21 06:45:53', '2019-09-21 06:45:53'),
(134, 2, 112, NULL, '2019-09-21 06:46:28', '2019-09-21 06:46:28'),
(135, 2, 113, NULL, '2019-09-21 06:47:13', '2019-09-21 06:47:13'),
(136, 2, 114, NULL, '2019-09-21 06:47:54', '2019-09-21 06:47:54'),
(137, 2, 115, NULL, '2019-09-21 06:48:47', '2019-09-21 06:48:47'),
(138, 2, 116, NULL, '2019-09-21 06:49:34', '2019-09-21 06:49:34'),
(139, 2, 117, NULL, '2019-09-21 06:50:41', '2019-09-21 06:50:41'),
(140, 2, 118, NULL, '2019-09-21 06:51:23', '2019-09-21 06:51:23'),
(141, 2, 119, NULL, '2019-09-21 06:52:03', '2019-09-21 06:52:03'),
(142, 2, 120, NULL, '2019-09-21 06:52:35', '2019-09-21 06:52:35'),
(143, 3, 121, NULL, '2019-09-21 07:22:42', '2019-09-21 07:22:42'),
(144, 1, 122, NULL, '2019-09-21 07:23:39', '2019-09-21 07:23:39'),
(145, 1, 123, NULL, '2019-09-21 07:24:25', '2019-09-21 07:24:25'),
(146, 1, 124, NULL, '2019-09-21 07:25:06', '2019-09-21 07:25:06'),
(147, 1, 125, NULL, '2019-09-21 07:26:04', '2019-09-21 07:26:04'),
(148, 3, 126, NULL, '2019-09-21 07:26:48', '2019-09-21 07:26:48'),
(149, 3, 127, NULL, '2019-09-21 07:27:24', '2019-09-21 07:27:24'),
(150, 3, 128, NULL, '2019-09-21 07:28:19', '2019-09-21 07:28:19'),
(151, 1, 129, NULL, '2019-09-21 07:28:54', '2019-09-21 07:28:54'),
(152, 3, 130, NULL, '2019-09-21 07:29:38', '2019-09-21 07:29:38'),
(153, 1, 131, NULL, '2019-09-21 07:30:11', '2019-09-21 07:30:11'),
(154, 1, 132, NULL, '2019-09-21 07:31:16', '2019-09-21 07:31:16'),
(155, 1, 133, NULL, '2019-09-21 07:31:58', '2019-09-21 07:31:58'),
(156, 1, 134, NULL, '2019-09-21 07:32:52', '2019-09-21 07:32:52'),
(157, 1, 135, NULL, '2019-09-21 07:33:18', '2019-09-21 07:33:18'),
(158, 1, 136, NULL, '2019-09-21 07:34:11', '2019-09-21 07:34:11'),
(159, 1, 137, NULL, '2019-09-21 07:35:00', '2019-09-21 07:35:00'),
(164, 2, 139, NULL, '2019-09-22 06:37:49', '2019-09-22 06:37:49'),
(165, 2, 140, NULL, '2019-09-22 06:38:53', '2019-09-22 06:38:53'),
(166, 2, 141, NULL, '2019-09-22 06:40:34', '2019-09-22 06:40:34'),
(168, 2, 142, NULL, '2019-09-22 06:41:56', '2019-09-22 06:41:56'),
(169, 2, 143, NULL, '2019-09-22 06:43:46', '2019-09-22 06:43:46'),
(170, 2, 144, NULL, '2019-09-22 06:44:39', '2019-09-22 06:44:39'),
(171, 2, 145, NULL, '2019-09-22 06:45:19', '2019-09-22 06:45:19'),
(172, 2, 138, NULL, '2019-09-24 16:09:20', '2019-09-24 16:09:20'),
(173, 2, 146, NULL, '2019-09-25 03:04:27', '2019-09-25 03:04:27'),
(174, 2, 147, NULL, '2019-09-25 03:05:39', '2019-09-25 03:05:39'),
(175, 2, 148, NULL, '2019-09-25 03:06:45', '2019-09-25 03:06:45'),
(176, 2, 149, NULL, '2019-09-25 03:08:56', '2019-09-25 03:08:56'),
(177, 2, 150, NULL, '2019-09-25 03:10:06', '2019-09-25 03:10:06'),
(178, 2, 151, NULL, '2019-09-25 03:14:39', '2019-09-25 03:14:39'),
(179, 2, 152, NULL, '2019-09-25 03:15:18', '2019-09-25 03:15:18'),
(180, 2, 153, NULL, '2019-09-25 03:15:46', '2019-09-25 03:15:46'),
(181, 2, 154, NULL, '2019-09-25 03:16:43', '2019-09-25 03:16:43'),
(182, 2, 155, NULL, '2019-09-25 03:18:42', '2019-09-25 03:18:42'),
(183, 2, 156, NULL, '2019-09-25 03:19:09', '2019-09-25 03:19:09'),
(184, 2, 157, NULL, '2019-09-25 03:20:00', '2019-09-25 03:20:00'),
(185, 2, 158, NULL, '2019-09-25 03:20:38', '2019-09-25 03:20:38'),
(186, 2, 159, NULL, '2019-09-25 03:21:11', '2019-09-25 03:21:11'),
(187, 2, 160, NULL, '2019-09-25 05:04:10', '2019-09-25 05:04:10'),
(188, 2, 161, NULL, '2019-09-25 05:08:33', '2019-09-25 05:08:33'),
(189, 2, 162, NULL, '2019-09-25 05:09:29', '2019-09-25 05:09:29'),
(190, 2, 163, NULL, '2019-09-25 05:10:35', '2019-09-25 05:10:35'),
(191, 2, 164, NULL, '2019-09-25 05:11:12', '2019-09-25 05:11:12'),
(196, 2, 169, NULL, '2019-09-25 06:16:46', '2019-09-25 06:16:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_03_07_311070_create_tracker_paths_table', 1),
(4, '2015_03_07_311071_create_tracker_queries_table', 1),
(5, '2015_03_07_311072_create_tracker_queries_arguments_table', 1),
(6, '2015_03_07_311073_create_tracker_routes_table', 1),
(7, '2015_03_07_311074_create_tracker_routes_paths_table', 1),
(8, '2015_03_07_311075_create_tracker_route_path_parameters_table', 1),
(9, '2015_03_07_311076_create_tracker_agents_table', 1),
(10, '2015_03_07_311077_create_tracker_cookies_table', 1),
(11, '2015_03_07_311078_create_tracker_devices_table', 1),
(12, '2015_03_07_311079_create_tracker_domains_table', 1),
(13, '2015_03_07_311080_create_tracker_referers_table', 1),
(14, '2015_03_07_311081_create_tracker_geoip_table', 1),
(15, '2015_03_07_311082_create_tracker_sessions_table', 1),
(16, '2015_03_07_311083_create_tracker_errors_table', 1),
(17, '2015_03_07_311084_create_tracker_system_classes_table', 1),
(18, '2015_03_07_311085_create_tracker_log_table', 1),
(19, '2015_03_07_311086_create_tracker_events_table', 1),
(20, '2015_03_07_311087_create_tracker_events_log_table', 1),
(21, '2015_03_07_311088_create_tracker_sql_queries_table', 1),
(22, '2015_03_07_311089_create_tracker_sql_query_bindings_table', 1),
(23, '2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table', 1),
(24, '2015_03_07_311091_create_tracker_sql_queries_log_table', 1),
(25, '2015_03_07_311092_create_tracker_connections_table', 1),
(26, '2015_03_07_311093_create_tracker_tables_relations', 1),
(27, '2015_03_13_311094_create_tracker_referer_search_term_table', 1),
(28, '2015_03_13_311095_add_tracker_referer_columns', 1),
(29, '2015_11_23_311096_add_tracker_referer_column_to_log', 1),
(30, '2015_11_23_311097_create_tracker_languages_table', 1),
(31, '2015_11_23_311098_add_language_id_column_to_sessions', 1),
(32, '2015_11_23_311099_add_tracker_language_foreign_key_to_sessions', 1),
(33, '2015_11_23_311100_add_nullable_to_tracker_error', 1),
(34, '2017_01_31_311101_fix_agent_name', 1),
(35, '2017_06_20_311102_add_agent_name_hash', 1),
(36, '2017_11_11_083037_create_movies_table', 1),
(37, '2017_11_12_054912_create_directors_table', 1),
(38, '2017_11_12_055733_create_actors_table', 1),
(39, '2017_11_12_060041_create_genres_table', 1),
(40, '2017_11_12_060748_create_packages_table', 1),
(41, '2017_11_12_061316_create_faqs_table', 1),
(42, '2017_11_12_061432_create_configs_table', 1),
(43, '2018_01_09_083026_add_cashier_table_fields', 1),
(44, '2018_01_09_090132_create_permission_tables', 1),
(45, '2018_01_11_040258_create_coupon_codes_table', 1),
(46, '2018_01_16_110614_create_movie_series_table', 1),
(47, '2018_01_16_153532_create_audio_languages_table', 1),
(48, '2018_01_24_123038_create_tv_series_table', 1),
(49, '2018_02_03_073641_create_wishlists_table', 1),
(50, '2018_03_14_132728_create_home_sliders_table', 1),
(51, '2018_03_14_135038_create_seasons_table', 1),
(52, '2018_03_14_140100_create_episodes_table', 1),
(53, '2018_03_25_132517_create_videolinks_table', 1),
(54, '2018_04_02_140524_create_paypal_subscriptions_table', 1),
(55, '2018_04_12_035533_create_languages_table', 1),
(56, '2018_04_14_053616_create_home_translations_table', 2),
(57, '2018_04_14_172143_create_header_translations_table', 3),
(58, '2018_04_14_172228_create_footer_translations_table', 3),
(59, '2018_04_14_180413_create_popover_translations_table', 4),
(60, '2018_04_16_065808_create_menus_table', 5),
(61, '2018_04_16_070130_create_menu_videos_table', 5),
(62, '2018_04_16_080456_create_menu_videos_table', 6),
(63, '2016_12_03_000000_create_payu_payments_table', 7),
(64, '2018_04_19_163952_create_landing_pages_table', 8),
(65, '2018_04_22_163308_create_manage_packages_table', 9),
(66, '2018_04_22_165105_create_auth_customizes_table', 10),
(67, '2018_07_20_113202_create_subs_table', 11),
(68, '2018_07_20_171234_create_seos_table', 11),
(69, '2018_07_21_053731_create_plans_table', 12),
(70, '2018_07_31_115802_create_buttons_table', 13),
(72, '2019_02_10_115619_create_pricing_texts_table', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmdb_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmdb` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetch_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trailer_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `maturity_rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` tinyint(1) DEFAULT NULL,
  `subtitle_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_files` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` int(11) DEFAULT NULL,
  `released` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `series` tinyint(1) DEFAULT NULL,
  `a_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio_files` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `tmdb_id`, `title`, `keyword`, `description`, `duration`, `thumbnail`, `poster`, `tmdb`, `fetch_by`, `director_id`, `actor_id`, `genre_id`, `trailer_url`, `detail`, `rating`, `maturity_rating`, `subtitle`, `subtitle_list`, `subtitle_files`, `publish_year`, `released`, `featured`, `series`, `a_language`, `audio_files`, `type`, `created_at`, `updated_at`) VALUES
(29, NULL, 'info 18 hidratacion', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1569035550Diapositiva1.JPG', NULL, 'N', NULL, NULL, NULL, '25', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-17 03:00:12', '2019-09-21 06:34:49'),
(42, NULL, 'info 17 tips', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1568844943Captura.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-19 01:15:43', '2019-09-21 06:34:14'),
(43, NULL, 'info 1 tips', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1568847266Captura8.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-19 01:54:26', '2019-09-21 06:35:10'),
(44, NULL, 'info 2 suplementos', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1568847319Captura28.JPG', NULL, 'N', NULL, NULL, NULL, '31', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-19 01:55:20', '2019-09-21 06:32:35'),
(45, NULL, 'info 3 tips', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1568847367Captura22.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-19 01:56:07', '2019-09-21 06:33:47'),
(46, NULL, 'info 4 tips', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1568847443Captura20.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-19 01:57:23', '2019-09-21 06:35:32'),
(47, NULL, 'info 5 proteinas', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1568847591Captura 2.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-19 01:59:51', '2019-09-21 06:35:54'),
(48, NULL, 'info 6 proteinas', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1568847629Captura 3.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-19 02:00:29', '2019-09-21 06:36:11'),
(49, NULL, 'info 7 proteina', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1568847657Captura29.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-19 02:00:57', '2019-09-21 06:30:46'),
(50, NULL, 'info 8 platanos', NULL, NULL, NULL, 'thumb_1568847685Captura24.JPG', NULL, 'N', NULL, NULL, NULL, '24', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-19 02:01:25', '2019-09-19 02:01:25'),
(51, NULL, 'Sentadilla con mancuerna', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1568982433SENTADILLA MANCUERNA.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICION: a) Pies al ancho de los hombro y puntas de los pies ligeramente abiertas. b) Escapulas juntas y codos cerrados. \\r\\n\\r\\nMOVIMIENTO: a) Tomar aire con el abdomen y tensar musculo abdominal (sin acortar musculo). b) Bajar llevando las caderas hacia atras e inclinando ligeramente el tronco hacia adelante. c) Rodillas se van abriendo en la misma linea que proyectan la punta de los pies. d) Bajar hasta que caderas lleguen a la altura de las rodillas. e) Mantener siempre tension abdominal y realizar fuerte contracci\\u00f3n glutea llegar arriba.\"}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 15:27:13', '2019-09-20 15:29:28'),
(52, NULL, 'Abdominales con balon', NULL, NULL, NULL, 'thumb_1568983712ABS CON BALON.gif', NULL, 'N', NULL, NULL, NULL, '26', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 15:48:32', '2019-09-20 15:48:32'),
(53, NULL, 'Biceps martillo', NULL, NULL, NULL, 'thumb_1568983808BICEP MARTILLO.gif', NULL, 'N', NULL, NULL, NULL, '4', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 15:50:08', '2019-09-20 15:50:08'),
(54, NULL, 'Biceps con barra', NULL, NULL, NULL, 'thumb_1568983840BICEPS BARRA.gif', NULL, 'N', NULL, NULL, NULL, '4', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 15:50:40', '2019-09-20 15:50:40'),
(55, NULL, 'Peso muerto convencional', NULL, NULL, NULL, 'thumb_1568983902CDL.gif', NULL, 'N', NULL, NULL, NULL, '6', NULL, '{\"en\":\"POSICION: Pies al ancho de las caderas, pies apuntando hacia adelante. Manos al ancho de los hombros al tomar la barra. Espalda siempre derecha y escapulas se juntan. \\r\\n\\r\\nMOVIMIENTO: Flectar o doblar ligeramente las rodillas y enseguida comenzar a inclinar tronco hacia adelante, siempre manteniendo espalda derecha. Todo el movimiento se produce en las caderas. Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Inclinar tronco hasta que este horizontal.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 15:51:42', '2019-09-20 15:51:42'),
(56, NULL, 'Estocada Inversa con mancuernas', NULL, NULL, NULL, 'thumb_1568984005ESTOCADA INVERSA.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICION: De pie y con los pies deben estar juntos.\\r\\n\\r\\nMOVIMIENTO: Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Subir y bajar siempre manteniendo ligera inclinaci\\u00f3n de tronco hacia delante. El largo del paso hacia atr\\u00e1s es de dos pies de distancia entre pies (de tal\\u00f3n a punta). Repetir en la otra pierna.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 15:53:25', '2019-09-20 15:53:25'),
(57, NULL, 'Estocada split', NULL, NULL, NULL, 'thumb_1568984060ESTOCADA SPLIT.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICI\\u00d3N: Los pies deben estar a una distancia de dos pies (longitudinal). Tronco ligeramente inclinado hacia delante. \\r\\n\\r\\nMOVIMIENTO: Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Subir y bajar siempre manteniendo ligera inclinaci\\u00f3n de tronco hacia delante y pierna posterior siempre en punta de pies. Al llegar arriba extender completamente ambas rodillas. Repetir en la otra pierna.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 15:54:20', '2019-09-20 15:54:20'),
(58, NULL, 'Estocada bulgara', NULL, NULL, NULL, 'thumb_1568984225ESTOCADAS BULGARAS.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICION: Los pies deben estar juntos. \\r\\n\\r\\nMOVIMIENTO: Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Subir y bajar siempre manteniendo ligera inclinaci\\u00f3n de tronco hacia delante. El largo del paso hacia atr\\u00e1s es de dos pies de distancia entre el pie delantero y el apoyo (desde el tal\\u00f3n hasta el punto de apoyo). Repetir en la otra pierna.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 15:57:05', '2019-09-20 15:57:05'),
(59, NULL, 'Extension de cuadriceps', NULL, NULL, NULL, 'thumb_1568984312EXTENSION DE CUADRICEPS.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICI\\u00d3N: Ajustar respaldo de la maquina de tal manera que permita un buen apoyo de la columna. Que al sentarse, el borde del asiento quede justo por detr\\u00e1s de la rodilla . Ajustar almohadilla justo arriba de los tobillos. \\r\\n\\r\\nMOVIMIENTO: Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Empujar fuerte, pausa de 2 segundos arriba (piernas estiradas) y bajar controlado.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 15:58:32', '2019-09-20 15:58:32'),
(60, NULL, 'Hip thrust con barra', NULL, NULL, NULL, 'thumb_1568984464HIP THRUST CON BARRA.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICI\\u00d3N: Pies al ancho de las caderas, rodillas y caderas flectadas.\\r\\n\\r\\nMOVIMIENTO: Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Empujar fuerte, mantener 2 segundos arriba generado una buena contracci\\u00f3n gl\\u00fatea y bajar suave. Apena discos tocan el suelo empujar de nuevo. Al llegar arriba las caderas deben estar completamente extendidas y las rodillas en un \\u00e1ngulo de 90\\u00ba de flexi\\u00f3n.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:01:04', '2019-09-20 16:01:04'),
(61, NULL, 'Hip Thrust unilateral', NULL, NULL, NULL, 'thumb_1568984562HIP THRUST UNILAT.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICION: Escapulas apoyadas en una banca, pies en el suelo. Luego elevamos uno de los pies del suelo. \\r\\n\\r\\nMOVIMIENTO: Subir y bajar las caderas dejando siempre elevado un pie en el aire, la pierna que realiza el trabajo es la que se mantiene en el suelo. Al llegar arriba realizar una pausa y contraer fuerte el gl\\u00fateo. Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Repetir en la otra pierna.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:02:42', '2019-09-20 16:02:42'),
(62, NULL, 'Isquiotibial en maquina', NULL, NULL, NULL, 'thumb_1568984643ISQUIOTIBIAL MAQUINA.gif', NULL, 'N', NULL, NULL, NULL, '6', NULL, '{\"en\":\"POSICION: Ajustar apoyo de m\\u00e1quina, con tal que el apoyo quede a la altura de los tobillos. \\r\\n\\r\\nMOVIMIENTO: Flectar y extender rodillas siempre con la espalda recta. Para lograr esto, mantener tensi\\u00f3n abdominal constante durante todo el movimiento.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:04:03', '2019-09-20 16:04:03'),
(63, NULL, 'Isquiotibial con balon', NULL, NULL, NULL, 'thumb_1568984713ISQUIOTIBIALES CON BALON.gif', NULL, 'N', NULL, NULL, NULL, '6', NULL, '{\"en\":\"POSICION: Acostado boca arriba en el suelo. Subir pies a un bal\\u00f3n, separar los pies unos 10 cms aprox. \\r\\n\\r\\nMOVIMIENTO: Elevar caderas, y dejando estas siempre elevadas, comenzar a extender y flectar las rodillas (alejar y acercar el bal\\u00f3n). Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Punta de los pies apuntando hacia la cabeza.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:05:13', '2019-09-20 16:05:13'),
(64, NULL, 'Monster walk', NULL, NULL, NULL, 'thumb_1568984836MONSTER WALK.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICION: Banda el\\u00e1stica a la altura de los tobillos. En posici\\u00f3n de pie, con los pies al ancho de los hombros, ligera flexi\\u00f3n de caderas y rodillas. \\r\\n\\r\\nMOVIMIENTO: Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Pasos laterales de una amplitud tal que no pierda tensi\\u00f3n la banda el\\u00e1stica. Mantenerse siempre ligeramente agachado (15cms menos de estatura). Ejercicio es en ambas direcciones.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:07:16', '2019-09-20 16:07:16'),
(65, NULL, 'Pecho plano con mancuernas', NULL, NULL, NULL, 'thumb_1568984920PECHO PLANO MANCUERNAS.gif', NULL, 'N', NULL, NULL, NULL, '7', NULL, '{\"en\":\"POSICION: Acostado boca arriba en una banca. \\r\\n\\r\\nMOVIMIENTO: Empujar fuerte mancuernas hacia arriba. La trayectoria de las mancuernas al moverse deber\\u00eda dibujar una letra U invertida, esto significa que en el punto mas bajo las mancuernas est\\u00e1n alejadas y a medida que van subiendo estas se van acercando, en el punto mas alto se juntan (sin chocar ni rebotar). Repasar en video los detalles de este complejo movimiento.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:08:40', '2019-09-20 16:08:40'),
(66, NULL, 'Pecho plano en maquina', NULL, NULL, NULL, 'thumb_1568984952PECHO PLANO MAQUINA.gif', NULL, 'N', NULL, NULL, NULL, '7', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:09:12', '2019-09-20 16:09:12'),
(67, NULL, 'Plancha frontal', NULL, NULL, NULL, 'thumb_1568985015PLANCHA FRONTAL.jpg', NULL, 'N', NULL, NULL, NULL, '26', NULL, '{\"en\":\"POSICION: Acostado boca abajo sobre una superficie blanda. Llegar a la posici\\u00f3n de plancha apoyando solo antebrazos y punta de los pies en el suelo. En la posici\\u00f3n final el brazo debe estar vertical y la mirada hacia el suelo. \\r\\n\\r\\nMantener tensi\\u00f3n abdominal constante durante todo el movimiento. Mantener posici\\u00f3n por el tiempo indicado en la planificaci\\u00f3n.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:10:15', '2019-09-20 16:10:15'),
(68, NULL, 'Plancha lateral', NULL, NULL, NULL, 'thumb_1568985062PLANCHA LATERAL.gif', NULL, 'N', NULL, NULL, NULL, '26', NULL, '{\"en\":\"POSICION: Acostado de lado en una colchoneta. Poner un pie encima del otro y elevar las caderas, dejando como apoyo el antebrazo (debe estar perpendicular al cuerpo) y la zona lateral del pie. Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Mantener posici\\u00f3n por el tiempo indicado en la planificaci\\u00f3n.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:11:02', '2019-09-20 16:11:02'),
(69, NULL, 'Prensa de piernas', NULL, NULL, NULL, 'thumb_1568985133PRENSA DE PIERNAS.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICION: Pies al ancho de los hombros y ligeramente rotados hacia afuera. Pies apoyados en la zona centro-superior de la plataforma de la prensa.\\r\\n\\r\\nMOVIMIENTO: Primero empuja la plataforma y retira los seguros. Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Deja descender la prensa llevando rodillas hacia afuera (en misma direcci\\u00f3n que la punta de los pies). Bajar hasta el punto en que no se pierda el contacto entre la espalda baja (lumbar) y el respaldo de la m\\u00e1quina.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:12:13', '2019-09-20 16:12:13'),
(70, NULL, 'Press de hombro con mancuernas', NULL, NULL, NULL, 'thumb_1568985215PRESS DE HOMBRO.gif', NULL, 'N', NULL, NULL, NULL, '7', NULL, '{\"en\":\"POSICION: Sentado en un banco o de pie. \\r\\n\\r\\nMOVIMIENTO: Empujar fuerte mancuernas hacia arriba. La trayectoria de las mancuernas al moverse deber\\u00eda dibujar una letra U invertida, esto significa que en el punto mas bajo las mancuernas est\\u00e1n alejadas y a medida que van subiendo estas se van acercando, en el punto mas alto se juntan (sin chocar ni rebotar). Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Repasar en video los detalles de este complejo movimiento.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:13:35', '2019-09-20 16:13:35'),
(71, NULL, 'Pulldown amplio', NULL, NULL, NULL, 'thumb_1568985284PULLDOWN AMPLIO.gif', NULL, 'N', NULL, NULL, NULL, '4', NULL, '{\"en\":\"POSICION: Tomar barra a un ancho de 3 o 4 manos (ancho palma) mayor que el ancho de nuestros hombros. \\r\\n\\r\\nMOVIMIENTO: Traccionar fuerte la barra hacia nuestro pecho, siempre manteniendo los antebrazos verticales. Mantener tensi\\u00f3n abdominal constante durante todo el movimiento.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:14:44', '2019-09-20 16:14:44'),
(72, NULL, 'Pulldown supino', NULL, NULL, NULL, 'thumb_1568985357PULLDOWN SUPINO.gif', NULL, 'N', NULL, NULL, NULL, '4', NULL, '{\"en\":\"POSICION: Tomar barra al ancho de nuestros hombros con las palmas hacia atras. \\r\\n\\r\\nMOVIMIENTO: Traccionar fuerte la barra hacia nuestro pecho, siempre manteniendo los antebrazos verticales. Mantener tensi\\u00f3n abdominal constante durante todo el movimiento.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:15:57', '2019-09-20 16:15:57'),
(73, NULL, 'Push up (flexiones de brazos)', NULL, NULL, NULL, 'thumb_1568985427PUSH UP.gif', NULL, 'N', NULL, NULL, NULL, '7', NULL, '{\"en\":\"POSICION: Apoyar manos en una banca, a un ancho de 1 o 2 manos (ancho palma) mayor que el ancho de nuestros hombros. Pies al ancho de las caderas. Hombros, columna, caderas y pies en una misma l\\u00ednea. \\r\\n\\r\\nMOVIMIENTO: Empujar fuerte contra la banca, manteniendo tensi\\u00f3n abdominal constante durante todo el movimiento. Repasar en video los detalles de este complejo movimiento.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:17:07', '2019-09-20 16:17:07'),
(74, NULL, 'Peso muerto rumano', NULL, NULL, NULL, 'thumb_1568985508RDL.gif', NULL, 'N', NULL, NULL, NULL, '6', NULL, '{\"en\":\"POSICION: Pies al ancho de las caderas, pies apuntando hacia adelante. Manos al ancho de los hombros al tomar la barra. Espalda siempre derecha y escapulas se juntan. \\r\\n\\r\\nMOVIMIENTO: Flectar o doblar ligeramente las rodillas y enseguida comenzar a inclinar tronco hacia adelante, siempre manteniendo espalda derecha. Todo el movimiento se produce en las caderas. Mantener tensi\\u00f3n abdominal constante durante todo el movimiento. Inclinar tronco hasta que este horizontal.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:18:28', '2019-09-20 16:18:28'),
(75, NULL, 'Remo en maquina', NULL, NULL, NULL, 'thumb_1568985553REMO MAQUINA.gif', NULL, 'N', NULL, NULL, NULL, '4', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:19:13', '2019-09-20 16:19:13'),
(76, NULL, 'Remo unilateral con mancuerna', NULL, NULL, NULL, 'thumb_1568985626REMO UNILAT MANCUERNA.gif', NULL, 'N', NULL, NULL, NULL, '4', NULL, '{\"en\":\"POSICION: Apoya mano y rodilla del mismo lado del cuerpo en una banca, el brazo y el muslo deben quedar totalmente vertical, o en otras palabras, la mano por debajo del hombro y la rodilla por debajo de la cadera. Mantener columna derecha. \\r\\n\\r\\nMOVIMIENTO: Traccionar hacia arriba la mancuerna intentando no mover o rotar el tronco. Todo el movimiento se produce en el hombro y codo. Mantener tensi\\u00f3n abdominal constante durante todo el movimiento.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:20:26', '2019-09-20 16:20:26'),
(77, NULL, 'Sentadilla con barra', NULL, NULL, NULL, 'thumb_1568985819SENTADILLA BARRA.gif', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"POSICION: Pies al ancho de los hombro (o mas) y puntas de los pies ligeramente abiertas. Escapulas juntas y brazos tomando firme la barra. Se recomienda que la tomada de la barra no sea muy abierta (se pierde rigidez).\\r\\n\\r\\nMOVIMIENTO: Tomar aire con el abdomen y tensar musculo abdominal (sin acortar musculo). Bajar llevando las caderas hacia atras e inclinando ligeramente el tronco hacia adelante. Rodillas se van abriendo en la misma linea que proyectan la punta de los pies. Bajar hasta que caderas lleguen a la altura de las rodillas. Mantener siempre tension abdominal y realizar fuerte contracci\\u00f3n glutea llegar arriba.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:23:39', '2019-09-20 16:23:39'),
(78, NULL, 'Superman', NULL, NULL, NULL, 'thumb_1568985894SUPERMAN.gif', NULL, 'N', NULL, NULL, NULL, '26', NULL, '{\"en\":\"POSICION: En \\u201ccuatro patas\\u201d sobre una superficie blanda (colchoneta). Manos bajo los hombros y rodillas bajo las caderas. \\r\\n\\r\\nMOVIMIENTO: Extender y elevar brazo y pierna del lado contrario. Esto \\u00faltimo sin sobrepasar la altura de los hombro y caderas. Mantener tensi\\u00f3n abdominal constante durante todo el movimiento.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:24:54', '2019-09-20 16:24:54'),
(79, NULL, 'Triceps en polea con cuerda', NULL, NULL, NULL, 'thumb_1568985953TRICEP CUERDA.gif', NULL, 'N', NULL, NULL, NULL, '7', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:25:53', '2019-09-20 16:25:53'),
(80, NULL, 'Triceps a la frente con mancuernas', NULL, NULL, NULL, 'thumb_1568986013TRICEP FRENTE.gif', NULL, 'N', NULL, NULL, NULL, '7', NULL, '{\"en\":\"POSICION: Acostado boca arriba en una banca o en el suelo. \\r\\n\\r\\nMOVIMIENTO: Al realizar el ejercicio los brazos deben permanecer verticales en todo momento, codo siempre arriba del hombro. Mancuernas bajan hasta estar laterales a la cabeza.\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:26:53', '2019-09-20 16:26:53'),
(81, NULL, 'Vuelos laterales con mancuernas', NULL, NULL, NULL, 'thumb_1568986080VUELOS LATERALES.gif', NULL, 'N', NULL, NULL, NULL, '7', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:28:00', '2019-09-20 16:28:00'),
(82, NULL, 'Vuelos posteriores en polea', NULL, NULL, NULL, 'thumb_1568986117VUELOS POST.gif', NULL, 'N', NULL, NULL, NULL, '4', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-20 16:28:37', '2019-09-20 16:28:37'),
(83, NULL, 'Colacion de 100 cals (1)', NULL, NULL, NULL, 'thumb_1569034604Diapositiva2.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 05:56:44', '2019-09-21 05:56:44'),
(84, NULL, 'Colacion de 100 cals (2)', NULL, NULL, NULL, 'thumb_1569034634Diapositiva3.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 05:57:14', '2019-09-21 05:57:14'),
(85, NULL, 'Colacion de 100 cals (3)', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1569034663Diapositiva4.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 05:57:43', '2019-09-21 06:15:23'),
(86, NULL, 'Colacion de 100 cals (4)', NULL, NULL, NULL, 'thumb_1569034716Diapositiva13.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 05:58:36', '2019-09-21 05:58:36'),
(87, NULL, 'Colacion de 100 cals (5)', NULL, NULL, NULL, 'thumb_1569034754Diapositiva14.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 05:59:14', '2019-09-21 05:59:14'),
(88, NULL, 'Colacion de 100 cals (6)', NULL, NULL, NULL, 'thumb_1569034782Diapositiva15.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 05:59:42', '2019-09-21 05:59:42'),
(89, NULL, 'Colacion de 200 cals (1)', NULL, NULL, NULL, 'thumb_1569034821Diapositiva16.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:00:21', '2019-09-21 06:00:21'),
(91, NULL, 'Desayuno de 300 cals (1)', NULL, NULL, NULL, 'thumb_1569035042Diapositiva6.JPG', NULL, 'N', NULL, NULL, NULL, '30', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:04:02', '2019-09-21 06:04:02'),
(92, NULL, 'Desayuno de 400 cals (2)', NULL, NULL, NULL, 'thumb_1569035073Diapositiva7.JPG', NULL, 'N', NULL, NULL, NULL, '30', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:04:33', '2019-09-21 06:04:33'),
(93, NULL, 'Desayuno de 300 cals (2)', NULL, NULL, NULL, 'thumb_1569035098Diapositiva8.JPG', NULL, 'N', NULL, NULL, NULL, '30', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:04:58', '2019-09-21 06:04:58'),
(94, NULL, 'Almuerzo o cena de 500 cals (1)', NULL, NULL, NULL, 'thumb_1569035194Diapositiva9.JPG', NULL, 'N', NULL, NULL, NULL, '29', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:06:34', '2019-09-21 06:06:34'),
(95, NULL, 'Almuerzo o cena de 500 cals (2)', NULL, NULL, NULL, 'thumb_1569035227Diapositiva10.JPG', NULL, 'N', NULL, NULL, NULL, '29', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:07:07', '2019-09-21 06:07:07'),
(96, NULL, 'Almuerzo o cena de 400 cals (1)', NULL, NULL, NULL, 'thumb_1569035266Diapositiva11.JPG', NULL, 'N', NULL, NULL, NULL, '29', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:07:46', '2019-09-21 06:07:46'),
(97, NULL, 'Almuerzo o cena de 400 cals (2)', NULL, NULL, NULL, 'thumb_1569035295Diapositiva12.JPG', NULL, 'N', NULL, NULL, NULL, '29', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:08:15', '2019-09-21 06:08:15'),
(98, NULL, 'info 9 proteinas', NULL, NULL, NULL, 'thumb_1569036249Captura7.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:24:09', '2019-09-21 06:24:09'),
(99, NULL, 'info 10 proteina 1', NULL, NULL, NULL, 'thumb_1569036318Captura4.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:25:18', '2019-09-21 06:25:18'),
(100, NULL, 'info 11 proteinas 2', NULL, NULL, NULL, 'thumb_1569036345Captura5.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:25:45', '2019-09-21 06:25:45'),
(101, NULL, 'info 12 proteinas 3', NULL, NULL, NULL, 'thumb_1569036371Captura6.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:26:11', '2019-09-21 06:26:11'),
(102, NULL, 'info 13 proteinas', NULL, NULL, NULL, 'thumb_1569036407Captura9.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:26:47', '2019-09-21 06:26:47'),
(103, NULL, 'info 14 proteinas', NULL, NULL, NULL, 'thumb_1569036444Captura11.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:27:24', '2019-09-21 06:27:24'),
(104, NULL, 'info 15 proteinas', NULL, NULL, NULL, 'thumb_1569036479Captura14.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:27:59', '2019-09-21 06:27:59'),
(105, NULL, 'info 16 proteina', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1569036536Captura26.JPG', NULL, 'N', NULL, NULL, NULL, '23', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:28:56', '2019-09-21 06:29:46'),
(106, NULL, 'info 18 grasas', NULL, NULL, NULL, 'thumb_1569037073Captura10.JPG', NULL, 'N', NULL, NULL, NULL, '21', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:37:53', '2019-09-21 06:37:53'),
(107, NULL, 'info 19 grasas', NULL, NULL, NULL, 'thumb_1569037097Captura12.JPG', NULL, 'N', NULL, NULL, NULL, '21', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:38:17', '2019-09-21 06:38:17'),
(108, NULL, 'info 20 grasas', NULL, NULL, NULL, 'thumb_1569037123Captura13.JPG', NULL, 'N', NULL, NULL, NULL, '21', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:38:43', '2019-09-21 06:38:43'),
(109, NULL, 'info 21 tips', NULL, NULL, NULL, 'thumb_1569037183Captura15.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:39:43', '2019-09-21 06:39:43'),
(110, NULL, 'info 22 tips', NULL, NULL, NULL, 'thumb_1569037521Captura16.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:45:21', '2019-09-21 06:45:21'),
(111, NULL, 'info 23 tips', NULL, NULL, NULL, 'thumb_1569037553Captura17.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:45:53', '2019-09-21 06:45:53'),
(112, NULL, 'info 24 carbos', NULL, NULL, NULL, 'thumb_1569037588Captura18.JPG', NULL, 'N', NULL, NULL, NULL, '22', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:46:28', '2019-09-21 06:46:28'),
(113, NULL, 'info 25 tips', NULL, NULL, NULL, 'thumb_1569037633Captura19.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:47:13', '2019-09-21 06:47:13'),
(114, NULL, 'info 26 grasas', NULL, NULL, NULL, 'thumb_1569037674Captura21.JPG', NULL, 'N', NULL, NULL, NULL, '21', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:47:54', '2019-09-21 06:47:54'),
(115, NULL, 'info 27 tips', NULL, NULL, NULL, 'thumb_1569037727Captura22.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:48:47', '2019-09-21 06:48:47'),
(116, NULL, 'info 28 grasas', NULL, NULL, NULL, 'thumb_1569037774Captura23.JPG', NULL, 'N', NULL, NULL, NULL, '21', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:49:34', '2019-09-21 06:49:34'),
(117, NULL, 'info 29 carbos', NULL, NULL, NULL, 'thumb_1569037841Captura25.JPG', NULL, 'N', NULL, NULL, NULL, '22', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:50:41', '2019-09-21 06:50:41'),
(118, NULL, 'info 30 carbos', NULL, NULL, NULL, 'thumb_1569037882Captura27.JPG', NULL, 'N', NULL, NULL, NULL, '22', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:51:22', '2019-09-21 06:51:22'),
(119, NULL, 'info 31 grasas', NULL, NULL, NULL, 'thumb_1569037923Captura30.JPG', NULL, 'N', NULL, NULL, NULL, '21', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:52:03', '2019-09-21 06:52:03'),
(120, NULL, 'info 32 tips', NULL, NULL, NULL, 'thumb_1569037955Captura31.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 06:52:35', '2019-09-21 06:52:35'),
(121, NULL, 'info 33 mujer', NULL, NULL, NULL, 'thumb_15690397622.JPG', NULL, 'N', NULL, NULL, NULL, '33', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:22:42', '2019-09-21 07:22:42'),
(122, NULL, 'info 34 tips', NULL, NULL, NULL, 'thumb_15690398193.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:23:39', '2019-09-21 07:23:39'),
(123, NULL, 'info 35 tips', NULL, NULL, NULL, 'thumb_15690398654.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:24:25', '2019-09-21 07:24:25'),
(124, NULL, 'info 36 tips', NULL, NULL, NULL, 'thumb_15690399065.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:25:06', '2019-09-21 07:25:06'),
(125, NULL, 'info 37 tips', NULL, NULL, NULL, 'thumb_15690399647.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:26:04', '2019-09-21 07:26:04'),
(126, NULL, 'info 38 tips', NULL, NULL, NULL, 'thumb_15690400088.JPG', NULL, 'N', NULL, NULL, NULL, '32', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:26:48', '2019-09-21 07:26:48'),
(127, NULL, 'info 39 tips', NULL, NULL, NULL, 'thumb_15690400449.JPG', NULL, 'N', NULL, NULL, NULL, '32', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:27:24', '2019-09-21 07:27:24'),
(128, NULL, 'info 40 tips', NULL, NULL, NULL, 'thumb_156904009910.JPG', NULL, 'N', NULL, NULL, NULL, '32', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:28:19', '2019-09-21 07:28:19'),
(129, NULL, 'info 41 tips', NULL, NULL, NULL, 'thumb_156904013411.jpg', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:28:54', '2019-09-21 07:28:54'),
(130, NULL, 'info 41 tips', NULL, NULL, NULL, 'thumb_156904017812.JPG', NULL, 'N', NULL, NULL, NULL, '32', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:29:38', '2019-09-21 07:29:38'),
(131, NULL, 'info 42 tips', NULL, NULL, NULL, 'thumb_156904021013.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:30:10', '2019-09-21 07:30:10'),
(132, NULL, 'info 43 tips', NULL, NULL, NULL, 'thumb_156904027614.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:31:16', '2019-09-21 07:31:16'),
(133, NULL, 'info 44 tips', NULL, NULL, NULL, 'thumb_156904031815.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:31:58', '2019-09-21 07:31:58'),
(134, NULL, 'info 45  tips', NULL, NULL, NULL, 'thumb_156904037216.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:32:52', '2019-09-21 07:32:52'),
(135, NULL, 'info 46', NULL, NULL, NULL, 'thumb_156904039817.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:33:18', '2019-09-21 07:33:18'),
(136, NULL, 'info 47', NULL, NULL, NULL, 'thumb_156904045118.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:34:11', '2019-09-21 07:34:11'),
(137, NULL, 'info 48', NULL, NULL, NULL, 'thumb_156904050019.JPG', NULL, 'N', NULL, NULL, NULL, '27', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-21 07:35:00', '2019-09-21 07:35:00'),
(138, NULL, 'Capsula introductora, lo basico.', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1569123319basico.JPG', 'thumb_1569123319FLECHAS.jpg', 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":\"POSICION: a) Pies al ancho de los hombro y puntas de los pies ligeramente abiertas. b) Escapulas juntas y codos cerrados. \\r\\n\\r\\nMOVIMIENTO: a) Tomar aire con el abdomen y tensar musculo abdominal (sin acortar musculo). b) Bajar llevando las caderas hacia atras e inclinando ligeramente el tronco hacia adelante. c) Rodillas se van abriendo en la misma linea que proyectan la punta de los pies. d) Bajar hasta que caderas lleguen a la altura de las rodillas. e) Mantener siempre tension abdominal y realizar fuerte contracci\\u00f3n glutea llegar arriba.\"}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-22 06:25:20', '2019-09-24 16:09:20'),
(139, NULL, 'Capsula sobre vitaminas y minerales', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1569122861vit.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-22 06:27:41', '2019-09-22 06:37:48'),
(140, NULL, 'Capsula sobre carbohidratos...', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1569122908carb.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-22 06:28:28', '2019-09-22 06:38:53'),
(141, NULL, 'Capsula sobre suplementacion...', NULL, NULL, NULL, 'thumb_1569123634suple.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-22 06:40:34', '2019-09-22 06:40:34'),
(142, NULL, 'Capsula sobre la perdida de peso...', '{\"en\":null}', '{\"en\":null}', NULL, 'thumb_1569123673perdida peso.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, 'all age', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-22 06:41:13', '2019-09-22 06:41:56'),
(143, NULL, 'Capsula sobre las grasas...', NULL, NULL, NULL, 'thumb_1569123826grasa.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-22 06:43:46', '2019-09-22 06:43:46'),
(144, NULL, 'Capsula sobre hidratacion...', NULL, NULL, NULL, 'thumb_1569123879hidrat.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-22 06:44:39', '2019-09-22 06:44:39'),
(145, NULL, 'Capsula sobre proteinas...', NULL, NULL, NULL, 'thumb_1569123919prot.JPG', NULL, 'N', NULL, NULL, NULL, '13', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-22 06:45:19', '2019-09-22 06:45:19'),
(146, NULL, 'Desayuno de 400 cals (1)', NULL, NULL, NULL, 'thumb_1569369867Diapositiva4.JPG', NULL, 'N', NULL, NULL, NULL, '30', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:04:27', '2019-09-25 03:04:27'),
(147, NULL, 'Desayuno de 400 cals (3)', NULL, NULL, NULL, 'thumb_1569369939Diapositiva8.JPG', NULL, 'N', NULL, NULL, NULL, '30', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:05:39', '2019-09-25 03:05:39'),
(148, NULL, 'Desayuno de 400 cals (4)', NULL, NULL, NULL, 'thumb_1569370005Diapositiva6.JPG', NULL, 'N', NULL, NULL, NULL, '30', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:06:45', '2019-09-25 03:06:45'),
(149, NULL, 'Desayuno de 300 cals (3)', NULL, NULL, NULL, 'thumb_1569370136Diapositiva7.JPG', NULL, 'N', NULL, NULL, NULL, '30', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:08:56', '2019-09-25 03:08:56'),
(150, NULL, 'Desayuno de 300 cals (4)', NULL, NULL, NULL, 'thumb_1569370206Diapositiva5.JPG', NULL, 'N', NULL, NULL, NULL, '30', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:10:06', '2019-09-25 03:10:06'),
(151, NULL, 'Colacion de 200 cals (2)', NULL, NULL, NULL, 'thumb_1569370479Diapositiva29.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:14:39', '2019-09-25 03:14:39'),
(152, NULL, 'Colacion de 200 cals (3)', NULL, NULL, NULL, 'thumb_1569370518Diapositiva25.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:15:18', '2019-09-25 03:15:18'),
(153, NULL, 'Colacion de 200 cals (4)', NULL, NULL, NULL, 'thumb_1569370546Diapositiva23.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:15:46', '2019-09-25 03:15:46'),
(154, NULL, 'Colacion de 200 cals (5)', NULL, NULL, NULL, 'thumb_1569370603Diapositiva21.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:16:43', '2019-09-25 03:16:43'),
(155, NULL, 'Colacion de 300 cals (1)', NULL, NULL, NULL, 'thumb_1569370722Diapositiva28.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:18:42', '2019-09-25 03:18:42'),
(156, NULL, 'Colacion de 300 cals (2)', NULL, NULL, NULL, 'thumb_1569370749Diapositiva26.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:19:09', '2019-09-25 03:19:09'),
(157, NULL, 'Colacion de 300 cals (3)', NULL, NULL, NULL, 'thumb_1569370800Diapositiva24.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:20:00', '2019-09-25 03:20:00'),
(158, NULL, 'Colacion de 300 cals (4)', NULL, NULL, NULL, 'thumb_1569370838Diapositiva22.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:20:38', '2019-09-25 03:20:38'),
(159, NULL, 'Colacion de 300 cals (5)', NULL, NULL, NULL, 'thumb_1569370871Diapositiva19.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 03:21:11', '2019-09-25 03:21:11'),
(160, NULL, 'Colacion de 300 cals (6)', NULL, NULL, NULL, 'thumb_1569377050Diapositiva18.JPG', NULL, 'N', NULL, NULL, NULL, '28', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 05:04:10', '2019-09-25 05:04:10'),
(161, NULL, 'Almuerzo o cena de 500 cals (3)', NULL, NULL, NULL, 'thumb_1569377312Diapositiva11.JPG', NULL, 'N', NULL, NULL, NULL, '29', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 05:08:32', '2019-09-25 05:08:32'),
(162, NULL, 'Almuerzo o cena de 500 cals (4)', NULL, NULL, NULL, 'thumb_1569377369Diapositiva12.JPG', NULL, 'N', NULL, NULL, NULL, '29', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 05:09:29', '2019-09-25 05:09:29'),
(163, NULL, 'Almuerzo o cena de 400 cals (3)', NULL, NULL, NULL, 'thumb_1569377435Diapositiva9.JPG', NULL, 'N', NULL, NULL, NULL, '29', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 05:10:35', '2019-09-25 05:10:35'),
(164, NULL, 'Almuerzo o cena de 400 cals (4)', NULL, NULL, NULL, 'thumb_1569377472Diapositiva10.JPG', NULL, 'N', NULL, NULL, NULL, '29', NULL, '{\"en\":null}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 05:11:12', '2019-09-25 05:11:12'),
(169, NULL, 'PUSH PULL', NULL, NULL, NULL, 'thumb_1569381406perform-2.png', NULL, 'N', NULL, NULL, NULL, '1', NULL, '{\"en\":\"<h1>Puente de gluteos<\\/h1>\\r\\n\\r\\n<hr \\/>\\r\\n<p>POSICION: Pies al ancho de las caderas, rodillas y caderas flectadas.<\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<p>MOVIMIENTO: Mantener tensi&oacute;n abdominal constante durante todo el movimiento. Empujar fuerte, mantener 2 segundos arriba generado una buena contracci&oacute;n gl&uacute;tea y bajar suave. Apena discos tocan el suelo empujar de nuevo. Al llegar arriba las caderas deben estar completamente extendidas y las rodillas en un &aacute;ngulo de 90&ordm; de flexi&oacute;n.<\\/p>\\r\\n\\r\\n<hr \\/>\\r\\n<ol>\\r\\n\\t<li>SASSDDAS<\\/li>\\r\\n\\t<li>DADASDAASSDD<\\/li>\\r\\n\\t<li>SADASASDADADS<\\/li>\\r\\n\\t<li>DASDAASSADADA<\\/li>\\r\\n\\t<li>DADASDASADADSS<\\/li>\\r\\n<\\/ol>\"}', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'M', '2019-09-25 06:16:46', '2019-09-25 06:16:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movie_series`
--

CREATE TABLE `movie_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `series_movie_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multiplescreens`
--

CREATE TABLE `multiplescreens` (
  `id` int(11) UNSIGNED NOT NULL,
  `screen1` varchar(50) DEFAULT NULL,
  `screen2` varchar(50) DEFAULT NULL,
  `screen3` varchar(50) DEFAULT NULL,
  `screen4` varchar(50) DEFAULT NULL,
  `screen5` varchar(50) DEFAULT NULL,
  `screen6` varchar(50) DEFAULT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `activescreen` varchar(191) DEFAULT NULL,
  `pkg_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for multiple screens for user ';

--
-- Volcado de datos para la tabla `multiplescreens`
--

INSERT INTO `multiplescreens` (`id`, `screen1`, `screen2`, `screen3`, `screen4`, `screen5`, `screen6`, `user_id`, `activescreen`, `pkg_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, '2019-08-21 05:10:13', '2019-08-21 05:10:13'),
(2, 'Admin', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, '2019-08-21 08:53:42', '2019-08-21 08:53:42'),
(3, 'Admin', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, '2019-08-22 08:38:16', '2019-08-22 08:38:16'),
(4, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, '2019-08-23 04:15:28', '2019-08-23 04:15:28'),
(5, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, '2019-08-23 04:16:00', '2019-08-23 04:16:00'),
(6, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, '2019-08-23 04:20:30', '2019-08-23 04:20:30'),
(7, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, '2019-08-23 04:23:22', '2019-08-23 04:23:22'),
(8, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, '2019-08-23 04:25:34', '2019-08-23 04:25:34'),
(9, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, '2019-08-23 04:26:38', '2019-08-23 04:26:38'),
(10, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, '2019-08-23 04:27:16', '2019-08-23 04:27:16'),
(11, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 3, '2019-08-23 04:29:26', '2019-08-23 04:29:26'),
(12, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-23 04:33:49', '2019-08-23 04:33:49'),
(13, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-23 04:37:21', '2019-08-23 04:37:21'),
(14, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-23 04:41:59', '2019-08-23 04:41:59'),
(15, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-23 04:42:43', '2019-08-23 04:42:43'),
(16, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-23 04:43:51', '2019-08-23 04:43:51'),
(17, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-23 04:44:12', '2019-08-23 04:44:12'),
(18, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:17:11', '2019-08-24 00:17:11'),
(19, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:24:54', '2019-08-24 00:24:54'),
(20, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:25:20', '2019-08-24 00:25:20'),
(21, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:27:59', '2019-08-24 00:27:59'),
(22, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:35:42', '2019-08-24 00:35:42'),
(23, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:36:29', '2019-08-24 00:36:29'),
(24, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:36:56', '2019-08-24 00:36:56'),
(25, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:37:06', '2019-08-24 00:37:06'),
(26, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:37:29', '2019-08-24 00:37:29'),
(27, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:38:28', '2019-08-24 00:38:28'),
(28, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:38:58', '2019-08-24 00:38:58'),
(29, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:44:48', '2019-08-24 00:44:48'),
(30, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:45:24', '2019-08-24 00:45:24'),
(31, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 00:56:24', '2019-08-24 00:56:24'),
(32, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:02:43', '2019-08-24 01:02:43'),
(33, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:03:41', '2019-08-24 01:03:41'),
(34, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:08:49', '2019-08-24 01:08:49'),
(35, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:10:56', '2019-08-24 01:10:56'),
(36, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:11:37', '2019-08-24 01:11:37'),
(37, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:13:12', '2019-08-24 01:13:12'),
(38, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:15:02', '2019-08-24 01:15:02'),
(39, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:17:34', '2019-08-24 01:17:34'),
(40, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:18:51', '2019-08-24 01:18:51'),
(41, 'John', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, '2019-08-24 01:21:05', '2019-08-24 01:21:05'),
(42, 'diosito borges', NULL, NULL, NULL, NULL, NULL, 26, NULL, 1, '2019-08-27 21:57:36', '2019-08-27 21:57:36'),
(43, 'diosito borges', NULL, NULL, NULL, NULL, NULL, 26, NULL, 1, '2019-08-27 23:05:40', '2019-08-27 23:05:40'),
(44, 'Jorge Caca', NULL, NULL, NULL, NULL, NULL, 24, NULL, 3, '2019-08-28 00:29:33', '2019-08-28 00:29:33'),
(45, 'Diosito Borges', NULL, NULL, NULL, NULL, NULL, 26, NULL, 1, '2019-08-28 00:36:20', '2019-08-28 00:36:20'),
(46, 'Diosito Borges', NULL, NULL, NULL, NULL, NULL, 26, NULL, 1, '2019-08-28 00:41:34', '2019-08-28 00:41:34'),
(47, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-08-28 17:52:32', '2019-08-28 17:52:32'),
(48, 'Martin Castro', NULL, NULL, NULL, NULL, NULL, 25, NULL, 3, '2019-08-28 18:28:34', '2019-08-28 18:28:34'),
(49, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-08-29 16:44:38', '2019-08-29 16:44:38'),
(50, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-08-29 17:30:16', '2019-08-29 17:30:16'),
(51, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-08-30 00:34:12', '2019-08-30 00:34:12'),
(52, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-08-30 23:32:58', '2019-08-30 23:32:58'),
(53, 'Diosito Borges', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, '2019-09-06 23:53:27', '2019-09-06 23:53:27'),
(54, 'Diosito Borges', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, '2019-09-07 00:00:44', '2019-09-07 00:00:44'),
(55, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-09-17 17:31:01', '2019-09-17 17:31:01'),
(56, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-09-19 16:58:56', '2019-09-19 16:58:56'),
(57, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 1, '2019-09-23 18:54:41', '2019-09-23 18:54:41'),
(58, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-09-24 15:06:25', '2019-09-24 15:06:25'),
(59, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-09-24 15:19:16', '2019-09-24 15:19:16'),
(60, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-09-24 15:37:55', '2019-09-24 15:37:55'),
(61, 'JOSE MANUEL GOMEZ L.', NULL, NULL, NULL, NULL, NULL, 30, NULL, 2, '2019-09-24 22:40:55', '2019-09-24 22:40:55'),
(62, 'JOSE MANUEL GOMEZ L.', NULL, NULL, NULL, NULL, NULL, 30, NULL, 2, '2019-09-24 22:46:11', '2019-09-24 22:46:11'),
(63, 'JOSE MANUEL GOMEZ L.', NULL, NULL, NULL, NULL, NULL, 30, NULL, 2, '2019-09-25 00:36:22', '2019-09-25 00:36:22'),
(64, 'Diosito Borges', NULL, NULL, NULL, NULL, NULL, 26, NULL, 3, '2019-09-27 23:38:19', '2019-09-27 23:38:19'),
(65, 'Josefina Hernandez Z.', NULL, NULL, NULL, NULL, NULL, 32, NULL, 1, '2019-09-29 20:55:47', '2019-09-29 20:55:47'),
(66, 'Josefina Hernandez Z.', NULL, NULL, NULL, NULL, NULL, 32, NULL, 1, '2019-09-30 03:48:28', '2019-09-30 03:48:28'),
(67, 'Josefina Hernandez Z.', NULL, NULL, NULL, NULL, NULL, 32, NULL, 1, '2019-09-30 04:16:09', '2019-09-30 04:16:09'),
(68, 'Kimi Linda', NULL, NULL, NULL, NULL, NULL, 27, NULL, 2, '2019-09-30 15:47:15', '2019-09-30 15:47:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `my_progresses`
--

CREATE TABLE `my_progresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `fat` varchar(100) DEFAULT NULL,
  `calorie` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `my_progresses`
--

INSERT INTO `my_progresses` (`id`, `user_id`, `weight`, `fat`, `calorie`, `created_at`, `updated_at`) VALUES
(10, 27, '60', '25', NULL, '2019-09-06 19:33:15', '2019-09-06 19:33:15'),
(11, 27, '58', '23', NULL, '2019-09-06 19:33:28', '2019-09-06 19:33:28'),
(12, 27, '56', '21', NULL, '2019-09-06 19:33:39', '2019-09-06 19:33:39'),
(13, 27, '54', '20', NULL, '2019-09-06 19:33:56', '2019-09-06 19:33:56'),
(14, 27, '52', '18.5', NULL, '2019-09-06 19:34:12', '2019-09-06 19:34:12'),
(15, 27, '52', '17', NULL, '2019-09-06 19:34:37', '2019-09-06 19:34:37'),
(16, 27, '51', '16', NULL, '2019-09-06 19:34:46', '2019-09-06 19:34:46'),
(17, 27, '50', '15', NULL, '2019-09-06 19:34:55', '2019-09-06 19:34:55'),
(18, 26, '60', '14', NULL, '2019-09-06 19:49:57', '2019-09-06 19:49:57'),
(19, 26, '80', '20', NULL, '2019-09-06 19:50:03', '2019-09-06 19:50:03'),
(20, 26, '80', '9', NULL, '2019-09-06 19:50:09', '2019-09-06 19:50:09'),
(21, 27, '80', '30', NULL, '2019-09-08 00:32:56', '2019-09-08 00:32:56'),
(27, 30, '85', '15', '2500', '2019-09-24 21:38:36', '2019-09-24 21:38:36'),
(28, 30, '90', '20', '220', '2019-09-24 21:39:10', '2019-09-24 21:39:10'),
(29, 30, '92', NULL, NULL, '2019-09-24 21:40:29', '2019-09-24 21:40:29'),
(30, 30, '85', NULL, NULL, '2019-09-24 21:40:55', '2019-09-24 21:40:55'),
(31, 30, '88', NULL, NULL, '2019-09-24 21:41:02', '2019-09-24 21:41:02'),
(32, 30, '89', NULL, NULL, '2019-09-24 21:41:09', '2019-09-24 21:41:09'),
(33, 30, '95', NULL, NULL, '2019-09-24 21:41:34', '2019-09-24 21:41:34'),
(34, 30, '98', NULL, NULL, '2019-09-24 21:41:51', '2019-09-24 21:41:51'),
(35, 30, '100', NULL, NULL, '2019-09-24 21:41:57', '2019-09-24 21:41:57'),
(36, 30, '102', NULL, NULL, '2019-09-24 21:42:03', '2019-09-24 21:42:03'),
(37, 30, '104', NULL, NULL, '2019-09-24 21:42:09', '2019-09-24 21:42:09'),
(38, 30, '106', NULL, NULL, '2019-09-24 21:42:15', '2019-09-24 21:42:15'),
(39, 30, '109', NULL, NULL, '2019-09-24 21:42:30', '2019-09-24 21:42:30'),
(40, 30, NULL, '35', NULL, '2019-09-24 21:43:01', '2019-09-24 21:43:01'),
(41, 30, NULL, '12', NULL, '2019-09-24 21:50:33', '2019-09-24 21:50:33'),
(42, 28, '80', '14', '2000', '2019-09-25 04:06:14', '2019-09-25 04:06:14'),
(43, 28, '85', '16', '2000', '2019-09-25 04:06:30', '2019-09-25 04:06:30'),
(44, 28, '60', '14', '1800', '2019-09-25 04:06:49', '2019-09-25 04:06:49'),
(45, 28, NULL, NULL, '1.500', '2019-09-25 04:12:07', '2019-09-25 04:12:07'),
(47, 31, '60', '8', NULL, '2019-09-26 14:09:15', '2019-09-26 14:09:15'),
(48, 31, '60', '8', NULL, '2019-09-26 14:09:18', '2019-09-26 14:09:18'),
(49, 31, '80', '15', NULL, '2019-09-26 15:10:52', '2019-09-26 15:10:52'),
(50, 27, NULL, NULL, '2000', '2019-09-27 20:45:56', '2019-09-27 20:45:56'),
(51, 27, NULL, NULL, '2200', '2019-09-27 20:46:08', '2019-09-27 20:46:08'),
(52, 32, '65', '25', NULL, '2019-09-29 17:56:28', '2019-09-29 17:56:28'),
(53, 32, '64', '24', NULL, '2019-09-29 17:56:41', '2019-09-29 17:56:41'),
(54, 32, '63', '23', NULL, '2019-09-29 17:56:53', '2019-09-29 17:56:53'),
(55, 32, '62', '22', NULL, '2019-09-29 17:57:04', '2019-09-29 17:57:04'),
(56, 32, '61', '21', NULL, '2019-09-29 17:57:15', '2019-09-29 17:57:15'),
(57, 32, '60', '20', NULL, '2019-09-29 17:57:28', '2019-09-29 17:57:28'),
(58, 32, '59', '19', NULL, '2019-09-29 17:57:37', '2019-09-29 17:57:37'),
(59, 32, '58', '18', NULL, '2019-09-29 17:57:48', '2019-09-29 17:57:48'),
(60, 32, '57', '18', NULL, '2019-09-29 17:58:07', '2019-09-29 17:58:07'),
(61, 32, '56', '17', NULL, '2019-09-29 17:58:27', '2019-09-29 17:58:27'),
(62, 32, '56', '17', NULL, '2019-09-29 17:58:38', '2019-09-29 17:58:38'),
(63, 32, '55', '16', NULL, '2019-09-29 17:58:59', '2019-09-29 17:58:59'),
(64, 32, NULL, NULL, '1500', '2019-09-29 17:59:28', '2019-09-29 17:59:28'),
(65, 32, NULL, NULL, '1600', '2019-09-29 17:59:41', '2019-09-29 17:59:41'),
(66, 32, NULL, NULL, '1700', '2019-09-29 17:59:51', '2019-09-29 17:59:51'),
(67, 32, NULL, NULL, '1800', '2019-09-29 18:00:02', '2019-09-29 18:00:02'),
(68, 32, NULL, NULL, '1900', '2019-09-29 18:00:10', '2019-09-29 18:00:10'),
(69, 32, NULL, NULL, '1500', '2019-09-29 18:00:20', '2019-09-29 18:00:20'),
(70, 32, NULL, NULL, NULL, '2019-09-29 18:00:27', '2019-09-29 18:00:27'),
(71, 32, NULL, NULL, '1900', '2019-09-29 18:00:39', '2019-09-29 18:00:39'),
(72, 32, NULL, NULL, '2000', '2019-09-29 18:00:49', '2019-09-29 18:00:49'),
(73, 32, NULL, NULL, '2100', '2019-09-29 18:00:59', '2019-09-29 18:00:59'),
(74, 32, NULL, NULL, '1500', '2019-09-29 18:01:17', '2019-09-29 18:01:17'),
(75, 32, NULL, NULL, '1400', '2019-09-29 18:01:26', '2019-09-29 18:01:26'),
(76, 32, NULL, NULL, '1400', '2019-09-29 18:01:37', '2019-09-29 18:01:37'),
(77, 32, NULL, NULL, '1400', '2019-09-29 18:02:41', '2019-09-29 18:02:41'),
(78, 1, '85', '16', '2000', '2019-10-02 10:11:21', '2019-10-02 10:11:21'),
(79, 1, NULL, NULL, '2400', '2019-10-02 10:23:49', '2019-10-02 10:23:49'),
(80, 1, NULL, NULL, '2000', '2019-10-02 10:24:13', '2019-10-02 10:24:13'),
(81, 1, '85', '16', NULL, '2019-10-02 10:24:24', '2019-10-02 10:24:24'),
(82, 1, '85', '15', NULL, '2019-10-02 10:24:36', '2019-10-02 10:24:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_id` int(11) NOT NULL,
  `tv_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `movie_id`, `tv_id`, `title`, `read_at`, `created_at`, `updated_at`) VALUES
('11de1773-c7d0-4eaa-bdd6-bd8e218f27ff', 'App\\Notifications\\MyNotification', 1, 'App\\User', '{\"title\":\"sasa\",\"data\":\"sasassasasa\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"1\"]]}', 0, 0, 'sasa', '2019-10-02 14:00:54', '2019-10-02 13:21:26', '2019-10-02 14:00:54'),
('131c1207-16b7-4c23-9c1c-4763f5451e5c', 'App\\Notifications\\MyNotification', 1, 'App\\User', '{\"title\":\"Pre kine rodilla\",\"data\":\"Tienes alguna duda?, consultanos en \\\"Mi chat\\\" !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"1\"]]}', 0, 0, 'Pre kine rodilla', '2019-10-04 22:35:55', '2019-10-03 16:24:03', '2019-10-04 22:35:55'),
('1ce127d1-22af-433c-ac56-9b5c2d91fbeb', 'App\\Notifications\\MyNotification', 1, 'App\\User', '{\"title\":\"Pre kine rodilla\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"1\"]]}', 0, 0, 'Pre kine rodilla', '2019-10-02 14:04:46', '2019-10-02 14:03:38', '2019-10-02 14:04:46'),
('1d99bf34-e072-4bfb-9a96-57e07330bcaa', 'App\\Notifications\\MyNotification', 32, 'App\\User', '{\"title\":\"Dudas\",\"data\":\"Tienes alguna duda?, consultanos en \\\"Mi chat\\\" !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"32\"]]}', 0, 0, 'Dudas', NULL, '2019-09-30 03:53:40', '2019-09-30 03:53:40'),
('230aa2fb-b4af-4c8f-93af-1e5cde684326', 'App\\Notifications\\MyNotification', 1, 'App\\User', '{\"title\":\"Toca evaluarte\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"29\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1]}', 29, 0, 'Toca evaluarte', '2019-09-17 16:37:27', '2019-09-17 16:36:58', '2019-09-17 16:37:27'),
('326d7489-1f10-4c69-9a0d-4478da27fac6', 'App\\Notifications\\MyNotification', 28, 'App\\User', '{\"title\":\"Toca evaluarte\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"29\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24,25,26,27,28]}', 29, 0, 'Toca evaluarte', NULL, '2019-09-17 16:36:58', '2019-09-17 16:36:58'),
('3ad3436e-45a4-4335-b827-c30c114836d0', 'App\\Notifications\\MyNotification', 1, 'App\\User', '{\"title\":\"my new notification\",\"data\":\"Just an example,,go and create notification from admin\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"1\"]]}', 0, 0, 'my new notification', '2019-09-17 16:30:19', '2019-09-17 15:30:14', '2019-09-17 16:30:19'),
('60785e09-4cf8-4d1d-9ad6-5d251ad9e9dc', 'App\\Notifications\\MyNotification', 32, 'App\\User', '{\"title\":\"Bienvenido a Motion Online\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"32\"]]}', 0, 0, 'Bienvenido a Motion Online', NULL, '2019-09-30 03:52:44', '2019-09-30 03:52:44'),
('7f13988e-f833-49cb-b9c8-29c75609d46b', 'App\\Notifications\\MyNotification', 28, 'App\\User', '{\"title\":\"Entrenaste ?\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24,25,26,27,28]}', 0, 0, 'Entrenaste ?', NULL, '2019-09-17 16:29:08', '2019-09-17 16:29:08'),
('82ebb86a-0c4a-429d-a5af-49a73599fe59', 'App\\Notifications\\MyNotification', 1, 'App\\User', '{\"title\":\"Pre kine rodilla\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"1\"]]}', 0, 0, 'Pre kine rodilla', '2019-10-03 16:21:50', '2019-10-02 18:29:46', '2019-10-03 16:21:50'),
('82ed4268-eeb5-4045-a577-de978a03509b', 'App\\Notifications\\MyNotification', 24, 'App\\User', '{\"title\":\"Toca evaluarte\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"29\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24]}', 29, 0, 'Toca evaluarte', NULL, '2019-09-17 16:36:58', '2019-09-17 16:36:58'),
('9a7b9059-ee4c-4e9d-a0cf-6ae022c5c4f1', 'App\\Notifications\\MyNotification', 24, 'App\\User', '{\"title\":\"Entrenaste ?\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24]}', 0, 0, 'Entrenaste ?', NULL, '2019-09-17 16:29:08', '2019-09-17 16:29:08'),
('a1909518-493a-442d-88f9-365a887fce8e', 'App\\Notifications\\MyNotification', 27, 'App\\User', '{\"title\":\"Entrenaste ?\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24,25,26,27]}', 0, 0, 'Entrenaste ?', '2019-09-17 16:40:39', '2019-09-17 16:29:08', '2019-09-17 16:40:39'),
('b1568471-6076-45d8-85cb-c3eca937d9df', 'App\\Notifications\\MyNotification', 26, 'App\\User', '{\"title\":\"Entrenaste ?\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24,25,26]}', 0, 0, 'Entrenaste ?', NULL, '2019-09-17 16:29:08', '2019-09-17 16:29:08'),
('b7aaecda-165f-440e-acad-a623acd6af99', 'App\\Notifications\\MyNotification', 27, 'App\\User', '{\"title\":\"Toca evaluarte\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"29\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24,25,26,27]}', 29, 0, 'Toca evaluarte', '2019-09-17 16:40:31', '2019-09-17 16:36:58', '2019-09-17 16:40:31'),
('c37535f3-fc29-43ff-b9e4-02459ba50af8', 'App\\Notifications\\MyNotification', 25, 'App\\User', '{\"title\":\"Toca evaluarte\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"29\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24,25]}', 29, 0, 'Toca evaluarte', NULL, '2019-09-17 16:36:58', '2019-09-17 16:36:58'),
('e9a624eb-1964-483d-8147-eb44f043676c', 'App\\Notifications\\MyNotification', 26, 'App\\User', '{\"title\":\"Toca evaluarte\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"29\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24,25,26]}', 29, 0, 'Toca evaluarte', NULL, '2019-09-17 16:36:58', '2019-09-17 16:36:58'),
('ee553a5a-788a-4f67-9bdd-1b5ee0cbed50', 'App\\Notifications\\MyNotification', 1, 'App\\User', '{\"title\":\"Entrenaste ?\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1]}', 0, 0, 'Entrenaste ?', '2019-09-17 16:29:26', '2019-09-17 16:29:08', '2019-09-17 16:29:26'),
('f7b8469a-b0cf-412b-aaa4-af9d7fe61cbc', 'App\\Notifications\\MyNotification', 25, 'App\\User', '{\"title\":\"Entrenaste ?\",\"data\":\"Hola !, ya fuiste a entrenar hoy?, vamos animo !!\",\"movie_id\":\"0\",\"tv_id\":\"0\",\"notifiable_id\":[[\"0\"],1,24,25]}', 0, 0, 'Entrenaste ?', NULL, '2019-09-17 16:29:08', '2019-09-17 16:29:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `packages`
--

CREATE TABLE `packages` (
  `id` int(11) UNSIGNED NOT NULL,
  `plan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `mycolor` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval_count` int(11) DEFAULT NULL,
  `trial_period_days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `screens` int(11) UNSIGNED DEFAULT 1,
  `delete_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `packages`
--

INSERT INTO `packages` (`id`, `plan_id`, `name`, `currency`, `amount`, `mycolor`, `interval`, `interval_count`, `trial_period_days`, `status`, `screens`, `delete_status`, `created_at`, `updated_at`) VALUES
(1, 'Training + Nutrition', '{\"en\":\"Training + Nutrition\"}', 'CLP', 49000.00, 'platinum', 'month', 3, NULL, 1, 1, 1, '2019-08-27 21:44:53', '2019-09-23 18:59:18'),
(2, 'Training + Nutrition + Healthy body', '{\"en\":\"Training + Nutrition + Healthy body\"}', 'CLP', 59000.00, 'black', 'month', 3, NULL, 1, 1, 1, '2019-08-27 21:46:11', '2019-09-23 18:57:18'),
(3, 'Training', '{\"en\":\"Training\"}', 'CLP', 39900.00, 'gold', 'month', 3, NULL, 1, 1, 1, '2019-08-27 21:46:52', '2019-09-23 18:58:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `package_menu`
--

CREATE TABLE `package_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `package_id` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `package_menu`
--

INSERT INTO `package_menu` (`id`, `menu_id`, `package_id`, `created_at`, `updated_at`) VALUES
(8, 1, 'plan entrenamiento', '2019-08-27 16:43:59', '2019-08-27 16:43:59'),
(27, 1, 'Training + Nutrition', '2019-09-23 12:59:18', '2019-09-23 12:59:18'),
(28, 2, 'Training + Nutrition', '2019-09-23 12:59:18', '2019-09-23 12:59:18'),
(29, 1, 'Training', '2019-09-23 12:59:37', '2019-09-23 12:59:37'),
(30, 1, 'Training + Nutrition + Healthy body', '2019-09-23 12:59:49', '2019-09-23 12:59:49'),
(31, 2, 'Training + Nutrition + Healthy body', '2019-09-23 12:59:49', '2019-09-23 12:59:49'),
(32, 3, 'Training + Nutrition + Healthy body', '2019-09-23 12:59:49', '2019-09-23 12:59:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@mediacity.co.in', '$2y$10$MYykmCl2xOQ/k7F/PhsuruA4jlLqW.ASAASQAGBiz0rByJH2e6U9C', '2019-07-03 04:46:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paypal_subscriptions`
--

CREATE TABLE `paypal_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_from` timestamp NULL DEFAULT NULL,
  `subscription_to` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paypal_subscriptions`
--

INSERT INTO `paypal_subscriptions` (`id`, `user_id`, `payment_id`, `user_name`, `package_id`, `price`, `status`, `method`, `subscription_from`, `subscription_to`, `created_at`, `updated_at`) VALUES
(1, 24, 'by admin', 'jorge caca', 3, 30000.00, 1, 'by Admin', '2019-08-27 21:47:30', '2019-11-27 20:47:30', '2019-08-27 21:47:21', '2019-08-27 21:47:30'),
(2, 25, 'by admin', 'martin castro', 3, 39900.00, 1, 'by Admin', '2019-10-01 20:16:58', '2020-01-01 20:16:58', '2019-08-27 21:47:45', '2019-10-01 20:16:58'),
(3, 26, 'by admin', 'diosito borges', 3, 30000.00, 1, 'by Admin', '2019-08-28 00:43:16', '2019-11-27 23:43:16', '2019-08-27 21:47:59', '2019-08-28 00:43:16'),
(4, 28, 'by admin', 'josepelao@gmail.com', 1, 50000.00, 1, 'by Admin', '2019-08-27 21:48:13', '2019-11-27 20:48:13', '2019-08-27 21:48:13', '2019-08-27 21:48:13'),
(5, 27, 'by admin', 'kimi linda', 2, 59000.00, 1, 'by Admin', '2019-09-23 19:00:05', '2019-12-23 19:00:05', '2019-08-27 21:48:22', '2019-09-23 19:00:05'),
(6, 30, 'by admin', 'JOSE MANUEL GOMEZ L.', 2, 59000.00, 1, 'by Admin', '2019-09-24 21:56:11', '2019-12-24 21:56:11', '2019-09-24 21:56:11', '2019-09-24 21:56:11'),
(7, 31, 'by admin', 'Juan Jose Zunino', 1, 49000.00, 1, 'by Admin', '2019-09-26 16:25:12', '2019-12-26 16:25:12', '2019-09-26 16:20:22', '2019-09-26 16:25:12'),
(8, 32, 'by admin', 'Josefina Hernandez Z.', 1, 49000.00, 1, 'by Admin', '2019-09-29 19:44:52', '2019-12-29 19:44:52', '2019-09-29 19:44:52', '2019-09-29 19:44:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_settings`
--

CREATE TABLE `player_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_enable` tinyint(1) DEFAULT NULL,
  `cpy_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share_opt` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `player_settings`
--

INSERT INTO `player_settings` (`id`, `logo`, `logo_enable`, `cpy_text`, `share_opt`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 1, '2019 Motion Online', 0, NULL, '2019-09-25 18:08:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `popover_translations`
--

CREATE TABLE `popover_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `popover_translations`
--

INSERT INTO `popover_translations` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'mins', '{\"en\":\"Mins\",\"nl\":\"mins2\",\"de\":\"Minuten\"}', NULL, '2018-04-24 03:38:42'),
(2, 'season', '{\"en\":\"Season\",\"nl\":\"season2\",\"de\":\"Jahreszeit\"}', NULL, '2018-04-24 03:38:42'),
(3, 'all age', '{\"en\":\"All age\",\"nl\":\"all age2\",\"de\":\"jedes Alter\"}', NULL, '2018-04-24 03:38:42'),
(4, 'read more', '{\"en\":\"Read more\",\"nl\":\"Read more2\",\"de\":\"Weiterlesen\"}', NULL, '2018-04-24 03:38:04'),
(5, 'less', '{\"en\":\"Less\",\"nl\":\"Less2\",\"de\":\"Weniger\"}', NULL, '2018-04-24 03:38:04'),
(6, 'play', '{\"en\":\"Play\",\"nl\":\"play2\",\"de\":\"abspielen\"}', NULL, '2019-09-23 21:22:55'),
(7, 'watch trailer', '{\"en\":\"Watch trailer\",\"nl\":\"watch trailer2\",\"de\":\"Trailer ansehen\"}', NULL, '2018-04-24 03:38:42'),
(8, 'add to watchlist', '{\"en\":\"Add to watchlist\",\"nl\":\"add to watchlist2\",\"de\":\"Auf die Beobachtungsliste\"}', NULL, '2018-04-24 03:38:42'),
(9, 'remove from watchlist', '{\"en\":\"Remove  from watchlist\",\"nl\":\"remove  from watchlist2\",\"de\":\"aus der Beobachtungsliste entfernen\"}', NULL, '2018-04-24 03:38:42'),
(10, 'subtitles', '{\"en\":\"Subtitles\",\"nl\":\"subtitles2\",\"de\":\"Untertitel\"}', NULL, '2018-04-24 03:38:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pricing_texts`
--

CREATE TABLE `pricing_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pricing_texts`
--

INSERT INTO `pricing_texts` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title1', '{\"en\":\"Duracion\",\"de\":\"Minimale duur\",\"es-co\":\"Min duration vbbffghhgh\",\"es\":\"Min duration\",\"De\":\"Min duration\"}', NULL, '2019-10-01 14:12:09'),
(2, 'title2', '{\"en\":\"Conectate desde tu telefono celular o tablet\",\"de\":\"Kijk op je laptop, tv, telefoon en tablet\",\"es-co\":\"Watch on your laptop, TV, phone and tablet\",\"es\":\"Watch on your laptop, TV, phone and tablet\",\"De\":\"Watch on your laptop, TV, phone and tablet\"}', NULL, '2019-10-01 14:12:09'),
(3, 'title3', '{\"en\":\"Contenido exclusivo de Motion\",\"de\":\"Full HD en 4K beschikbaar\",\"es-co\":\"Full HD and 4K available\",\"es\":\"Full HD and 4K available\",\"De\":\"Full HD and 4K available\"}', NULL, '2019-10-01 14:12:09'),
(4, 'title4', '{\"en\":\"Subiremos tus historias entrenando!\",\"de\":\"Ongelimiteerde films en tv-programma\'s\",\"es-co\":\"Unlimited movies and TV shows\",\"es\":\"Unlimited movies and TV shows\",\"De\":\"Unlimited movies and TV shows\"}', NULL, '2019-10-01 14:16:28'),
(5, 'title5', '{\"en\":\"Asesoramiento 24\\/7\",\"de\":\"24\\/7 technische ondersteuning\",\"es-co\":\"24\\/7 Tech Support\",\"es\":\"24\\/7 Tech Supports\",\"De\":\"24\\/7 Tech Support\"}', NULL, '2019-10-01 14:12:09'),
(6, 'title6', '{\"en\":\"Beneficios y descuentos exclusivos\",\"de\":\"Annuleer op elk gewenst moment\",\"es-co\":\"Cancel anytime\",\"es\":\"Cancel anytimes\",\"De\":\"Cancel anytimes\"}', NULL, '2019-10-01 14:16:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seasons`
--

CREATE TABLE `seasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `tv_series_id` int(10) UNSIGNED NOT NULL,
  `tmdb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `season_no` bigint(20) NOT NULL,
  `tmdb` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` tinyint(1) DEFAULT NULL,
  `subtitle_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seasons`
--

INSERT INTO `seasons` (`id`, `tv_series_id`, `tmdb_id`, `season_no`, `tmdb`, `publish_year`, `thumbnail`, `poster`, `actor_id`, `a_language`, `subtitle`, `subtitle_list`, `detail`, `featured`, `type`, `created_at`, `updated_at`) VALUES
(4, 4, NULL, 1, 'N', '5023', 'thumb_1565432984entertainment-ipad-mockup-265685.jpg', NULL, '1', '1', 0, NULL, '{\"en\":\"dffg\"}', 0, 'S', '2019-08-10 04:59:44', '2019-08-10 04:59:44'),
(5, 4, NULL, 1, 'N', '5023', 'thumb_1565432985entertainment-ipad-mockup-265685.jpg', NULL, '1', '1', 0, NULL, '{\"en\":\"dffg\"}', 0, 'S', '2019-08-10 04:59:45', '2019-08-10 04:59:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seos`
--

CREATE TABLE `seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seos`
--

INSERT INTO `seos` (`id`, `author`, `fb`, `google`, `metadata`, `description`, `keyword`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":null}', NULL, NULL, '{\"en\":\"this ts a next hour\"}', '{\"en\":null}', '{\"en\":null}', NULL, '2019-09-19 00:54:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_icons`
--

CREATE TABLE `social_icons` (
  `id` int(11) NOT NULL,
  `url1` varchar(191) DEFAULT NULL,
  `url2` varchar(191) DEFAULT NULL,
  `url3` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `social_icons`
--

INSERT INTO `social_icons` (`id`, `url1`, `url2`, `url3`, `created_at`, `updated_at`) VALUES
(1, 'http://facebook.com', 'http://twitter.com', 'http://youtube.com', '2019-03-29 05:22:39', '2019-03-28 23:52:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subtitles`
--

CREATE TABLE `subtitles` (
  `id` int(11) UNSIGNED NOT NULL,
  `sub_lang` varchar(100) DEFAULT NULL,
  `sub_t` varchar(191) DEFAULT NULL,
  `m_t_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tv_series`
--

CREATE TABLE `tv_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmdb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmdb` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `episode_runtime` double(8,2) DEFAULT NULL,
  `maturity_rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'T',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gitlab_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `password`, `google_id`, `facebook_id`, `gitlab_id`, `dob`, `mobile`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'admin@mediacity.co.in', '$2y$10$1w2kbraQWFVkZVcyAwXmgeGhD4QYxTcg9Hx12KYtNN821CuOMtyda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'FJvwsOIfqY0gHuVgevlSBIZheuj6CBH9SAabM653nbRn34CDbZAx0kPLB0GG', '2018-04-24 07:56:34', '2018-04-24 07:56:34'),
(24, 'Jorge Caca', NULL, 'jorge@caca.com', '$2y$10$AnaSIa0OtRknN.pC17mY8e8yreDNk/aqB/ebDfPa2eyOuXqyQSvVa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'rTsjc0ZvoQpvTdLIimgfsGppKJ7EYVxFj4Dd69HKqoat2J1OPGGf3335m6o9', '2019-08-27 21:29:37', '2019-08-28 00:00:17'),
(25, 'Martina Dovic Z.', NULL, 'martinadzaf@uolmail.com', '$2y$10$EEyjTuuwup6tfCVRRxd3WuLNw9twH.guNPpIMAAIHuVGgHsC2fLGm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'OgkBxh2HriMbSzJivllGE4TnkMsRCvHE8qtMobBofwA5NBkNuQzDRLJwg4qS', '2019-08-27 21:30:03', '2019-10-01 20:15:54'),
(26, 'Diosito Borges', NULL, 'diosito@caca.com', '$2y$10$5dS7IbOvX3vjHxUxSlLbDOdG0fTK..sR2uCwhABstQcDs7KSbtO8.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'FBUiQtumBIrp6XTYBmBh8obPDtpA99VErMLc1fkvhfXwIho4I2zgr5ICFHjQ', '2019-08-27 21:30:31', '2019-08-28 00:00:46'),
(27, 'Kimi Linda', NULL, 'kimilinda@amor.com', '$2y$10$bLH7K9eKx4LYl19OGtHJGeh4b.Sx6hUD4wUlHKLs3RTmfIs2DtzYm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'po1KLVTQ64h48YnuMXfvLdlxNIRWxmRgvZw8D9GZofV4vODY2j1NGaydELfm', '2019-08-27 21:31:06', '2019-08-28 00:00:01'),
(28, 'Jose Pelado', NULL, 'pelao@caca.com', '$2y$10$x/SJzlbmrLPWWnO9X1iyj.7N0nv4KQ2LOthEEyQ10R0BlTywNVpI6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'N0YhAomapcyLlSKhjA7dSvIzFJwcfD8OTSbdsb1EtGClzUKuWUOdE05hwJbE', '2019-08-27 21:31:33', '2019-08-27 23:59:39'),
(29, 'Enrique Castro Olave', NULL, 'enriquecastroolave@gmail.com', '$2y$10$c3z9wPKFfFHUbmNFLDcvyeHjGHVvVfn6OQor9SLa3fhpDZiweJXVa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'vPMqQCtCIt01Qngpm4inOzaOCs3vFruQJqdW9Mvv5TFmxoZXChh16U0KB0Kx', '2019-09-23 20:49:25', '2019-09-23 20:49:25'),
(30, 'JOSE MANUEL GOMEZ L.', NULL, 'JGOMEZ@MOTIONCENTER.CL', '$2y$10$m8JPqz78GSDlFB.qDoldNOr4/7ZYZbW8NiVshXKjEjZlPNqmL.Q/i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'SgdUtPp6Tzb9oyMnmsnxQFxv6d9h0ZS410OIWQWrOl3FHUHhavSvkxSIUQOL', '2019-09-24 21:55:57', '2019-09-24 21:55:57'),
(31, 'Juan Jose Zunino', NULL, 'jjzunino@underarmour.cl', '$2y$10$6uHUDfsLWagqycTJ7W0UG.HYc5amIoDaUltoI1X5eWzvDdXPyVpWy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7GYPugzVFHL5CAMcUufktzZJq4YOPUGCb94zCtQbwjzrbuqdXDHrmNqUESI6', '2019-09-26 16:19:51', '2019-09-26 16:19:51'),
(32, 'Josefina Hernandez Z.', NULL, 'jherndzaf@uolmail.com', '$2y$10$YaHAxQQ2PXZLdiuZYyShnuyRFjJtkwJOpxrxIO6pVdO32c0.XAhc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '9tCCuc5rFdgTGqSU69zEzT4UVAlG4PvxYE7SkriNKxm8kYZqA8e3ISP9njwE', '2019-09-29 19:44:25', '2019-09-29 19:44:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videolinks`
--

CREATE TABLE `videolinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED DEFAULT NULL,
  `episode_id` int(10) UNSIGNED DEFAULT NULL,
  `iframeurl` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ready_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_360` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_480` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_720` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_1080` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `videolinks`
--

INSERT INTO `videolinks` (`id`, `movie_id`, `episode_id`, `iframeurl`, `ready_url`, `url_360`, `url_480`, `url_720`, `url_1080`, `created_at`, `updated_at`) VALUES
(14, NULL, 5, NULL, 'https://www.youtube.com/watch?v=C3FVibMcKTk', NULL, NULL, NULL, NULL, '2019-08-10 05:00:20', '2019-08-10 05:00:20'),
(34, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-19 03:19:36', '2019-09-21 06:10:23'),
(74, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-17 03:00:12', '2019-09-17 03:00:12'),
(87, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-19 01:15:43', '2019-09-19 01:15:43'),
(88, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-19 01:54:26', '2019-09-19 01:54:26'),
(89, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-19 01:55:20', '2019-09-19 01:55:20'),
(90, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-19 01:56:07', '2019-09-19 01:56:07'),
(91, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-19 01:57:23', '2019-09-19 01:57:23'),
(92, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-19 01:59:51', '2019-09-19 01:59:51'),
(93, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-19 02:00:29', '2019-09-19 02:00:29'),
(94, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-19 02:00:57', '2019-09-19 02:00:57'),
(95, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-19 02:01:25', '2019-09-19 02:01:25'),
(96, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 15:27:13', '2019-09-20 15:27:13'),
(97, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 15:48:32', '2019-09-20 15:48:32'),
(98, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 15:50:08', '2019-09-20 15:50:08'),
(99, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 15:50:40', '2019-09-20 15:50:40'),
(100, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 15:51:42', '2019-09-20 15:51:42'),
(101, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 15:53:25', '2019-09-20 15:53:25'),
(102, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 15:54:20', '2019-09-20 15:54:20'),
(103, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 15:57:05', '2019-09-20 15:57:05'),
(104, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 15:58:32', '2019-09-20 15:58:32'),
(105, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:01:04', '2019-09-20 16:01:04'),
(106, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:02:42', '2019-09-20 16:02:42'),
(107, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:04:04', '2019-09-20 16:04:04'),
(108, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:05:13', '2019-09-20 16:05:13'),
(109, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:07:17', '2019-09-20 16:07:17'),
(110, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:08:40', '2019-09-20 16:08:40'),
(111, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:09:12', '2019-09-20 16:09:12'),
(112, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:10:15', '2019-09-20 16:10:15'),
(113, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:11:02', '2019-09-20 16:11:02'),
(114, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:12:13', '2019-09-20 16:12:13'),
(115, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:13:36', '2019-09-20 16:13:36'),
(116, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:14:44', '2019-09-20 16:14:44'),
(117, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:15:57', '2019-09-20 16:15:57'),
(118, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:17:07', '2019-09-20 16:17:07'),
(119, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:18:28', '2019-09-20 16:18:28'),
(120, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:19:13', '2019-09-20 16:19:13'),
(121, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:20:26', '2019-09-20 16:20:26'),
(122, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:23:39', '2019-09-20 16:23:39'),
(123, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:24:54', '2019-09-20 16:24:54'),
(124, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:25:53', '2019-09-20 16:25:53'),
(125, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:26:53', '2019-09-20 16:26:53'),
(126, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:28:00', '2019-09-20 16:28:00'),
(127, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-20 16:28:37', '2019-09-20 16:28:37'),
(128, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 05:56:44', '2019-09-21 05:56:44'),
(129, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 05:57:14', '2019-09-21 05:57:14'),
(130, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 05:57:43', '2019-09-21 05:57:43'),
(131, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 05:58:36', '2019-09-21 05:58:36'),
(132, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 05:59:14', '2019-09-21 05:59:14'),
(133, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 05:59:42', '2019-09-21 05:59:42'),
(134, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:00:21', '2019-09-21 06:00:21'),
(136, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:04:02', '2019-09-21 06:04:02'),
(137, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:04:33', '2019-09-21 06:04:33'),
(138, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:04:58', '2019-09-21 06:04:58'),
(139, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:06:34', '2019-09-21 06:06:34'),
(140, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:07:07', '2019-09-21 06:07:07'),
(141, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:07:46', '2019-09-21 06:07:46'),
(142, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:08:15', '2019-09-21 06:08:15'),
(143, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:24:09', '2019-09-21 06:24:09'),
(144, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:25:18', '2019-09-21 06:25:18'),
(145, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:25:45', '2019-09-21 06:25:45'),
(146, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:26:11', '2019-09-21 06:26:11'),
(147, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:26:47', '2019-09-21 06:26:47'),
(148, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:27:24', '2019-09-21 06:27:24'),
(149, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:27:59', '2019-09-21 06:27:59'),
(150, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:28:56', '2019-09-21 06:28:56'),
(151, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:37:53', '2019-09-21 06:37:53'),
(152, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:38:17', '2019-09-21 06:38:17'),
(153, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:38:44', '2019-09-21 06:38:44'),
(154, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:39:43', '2019-09-21 06:39:43'),
(155, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:45:21', '2019-09-21 06:45:21'),
(156, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:45:53', '2019-09-21 06:45:53'),
(157, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:46:28', '2019-09-21 06:46:28'),
(158, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:47:13', '2019-09-21 06:47:13'),
(159, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:47:54', '2019-09-21 06:47:54'),
(160, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:48:47', '2019-09-21 06:48:47'),
(161, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:49:34', '2019-09-21 06:49:34'),
(162, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:50:41', '2019-09-21 06:50:41'),
(163, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:51:23', '2019-09-21 06:51:23'),
(164, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:52:03', '2019-09-21 06:52:03'),
(165, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 06:52:35', '2019-09-21 06:52:35'),
(166, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:22:42', '2019-09-21 07:22:42'),
(167, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:23:39', '2019-09-21 07:23:39'),
(168, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:24:25', '2019-09-21 07:24:25'),
(169, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:25:06', '2019-09-21 07:25:06'),
(170, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:26:04', '2019-09-21 07:26:04'),
(171, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:26:48', '2019-09-21 07:26:48'),
(172, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:27:24', '2019-09-21 07:27:24'),
(173, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:28:19', '2019-09-21 07:28:19'),
(174, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:28:54', '2019-09-21 07:28:54'),
(175, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:29:38', '2019-09-21 07:29:38'),
(176, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:30:11', '2019-09-21 07:30:11'),
(177, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:31:16', '2019-09-21 07:31:16'),
(178, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:31:58', '2019-09-21 07:31:58'),
(179, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:32:52', '2019-09-21 07:32:52'),
(180, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:33:18', '2019-09-21 07:33:18'),
(181, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:34:11', '2019-09-21 07:34:11'),
(182, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-21 07:35:00', '2019-09-21 07:35:00'),
(183, 138, NULL, NULL, 'https://www.youtube.com/watch?v=IWKwBzlC1jM', NULL, NULL, NULL, NULL, '2019-09-22 06:25:20', '2019-09-22 06:35:19'),
(184, 139, NULL, NULL, 'https://www.youtube.com/watch?v=DoMUkGXUWrw', NULL, NULL, NULL, NULL, '2019-09-22 06:27:41', '2019-09-22 06:37:48'),
(185, 140, NULL, NULL, 'https://www.youtube.com/watch?v=HMrpLI-OWhU', NULL, NULL, NULL, NULL, '2019-09-22 06:28:28', '2019-09-22 06:38:53'),
(186, 141, NULL, NULL, 'https://www.youtube.com/watch?v=qgkAJWkTNHw', NULL, NULL, NULL, NULL, '2019-09-22 06:40:34', '2019-09-22 06:40:34'),
(187, 142, NULL, NULL, 'https://www.youtube.com/watch?v=AvQv2Q_PNGM', NULL, NULL, NULL, NULL, '2019-09-22 06:41:13', '2019-09-22 06:41:56'),
(188, 143, NULL, NULL, 'https://www.youtube.com/watch?v=gxUV6PDlN3w', NULL, NULL, NULL, NULL, '2019-09-22 06:43:46', '2019-09-22 06:43:46'),
(189, 144, NULL, NULL, 'https://www.youtube.com/watch?v=R82y_f7ov60', NULL, NULL, NULL, NULL, '2019-09-22 06:44:39', '2019-09-22 06:44:39'),
(190, 145, NULL, NULL, 'https://www.youtube.com/watch?v=wdryuS_opF0', NULL, NULL, NULL, NULL, '2019-09-22 06:45:19', '2019-09-22 06:45:19'),
(191, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:04:27', '2019-09-25 03:04:27'),
(192, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:05:39', '2019-09-25 03:05:39'),
(193, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:06:45', '2019-09-25 03:06:45'),
(194, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:08:56', '2019-09-25 03:08:56'),
(195, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:10:06', '2019-09-25 03:10:06'),
(196, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:14:39', '2019-09-25 03:14:39'),
(197, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:15:18', '2019-09-25 03:15:18'),
(198, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:15:46', '2019-09-25 03:15:46'),
(199, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:16:43', '2019-09-25 03:16:43'),
(200, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:18:42', '2019-09-25 03:18:42'),
(201, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:19:09', '2019-09-25 03:19:09'),
(202, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:20:00', '2019-09-25 03:20:00'),
(203, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:20:38', '2019-09-25 03:20:38'),
(204, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 03:21:11', '2019-09-25 03:21:11'),
(205, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 05:04:10', '2019-09-25 05:04:10'),
(206, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 05:08:33', '2019-09-25 05:08:33'),
(207, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 05:09:29', '2019-09-25 05:09:29'),
(208, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 05:10:35', '2019-09-25 05:10:35'),
(209, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 05:11:12', '2019-09-25 05:11:12'),
(214, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-25 06:16:46', '2019-09-25 06:16:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `views`
--

CREATE TABLE `views` (
  `id` int(10) UNSIGNED NOT NULL,
  `viewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewable_id` bigint(20) UNSIGNED NOT NULL,
  `visitor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `views`
--

INSERT INTO `views` (`id`, `viewable_type`, `viewable_id`, `visitor`, `collection`, `viewed_at`) VALUES
(2, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 11:42:51'),
(3, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 11:43:30'),
(4, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 11:43:32'),
(5, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 11:48:22'),
(6, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 11:48:34'),
(7, 'App\\Season', 2, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 11:48:52'),
(8, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 11:49:05'),
(9, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 11:50:20'),
(10, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:31:01'),
(11, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:35:14'),
(12, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:35:22'),
(13, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:35:32'),
(14, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:35:40'),
(15, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:35:58'),
(16, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:36:50'),
(17, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:37:24'),
(18, 'App\\Season', 2, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:37:30'),
(19, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 12:37:36'),
(20, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 23:05:32'),
(21, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 23:05:43'),
(22, 'App\\Season', 2, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 23:06:04'),
(23, 'App\\Season', 2, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 23:06:30'),
(24, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 23:06:37'),
(25, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 23:06:47'),
(26, 'App\\Season', 1, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 23:08:03'),
(27, 'App\\Season', 3, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 23:39:39'),
(28, 'App\\Season', 3, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-24 23:53:19'),
(29, 'App\\Season', 11, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-25 02:15:16'),
(30, 'App\\Season', 11, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-25 02:15:35'),
(31, 'App\\Season', 11, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-25 02:16:49'),
(32, 'App\\Season', 11, 'pas1RtobGOc7TTexQnv06q7FUqnWf4lUGI80v0qosgp2Hd6mwjN7uB89Q0nBhKXK6dALJZSvIA16QNso', NULL, '2019-07-25 02:17:15'),
(34, 'App\\Season', 1, 'u9CnnvaA36Au7ihUU9xwXnKLHrD8SW4wfc21hsA2VPlP3sAK311E2Yy1KgTSFn9Xm8Wju9bQKqNLCEtR', NULL, '2019-08-08 03:03:21'),
(35, 'App\\Season', 1, 'u9CnnvaA36Au7ihUU9xwXnKLHrD8SW4wfc21hsA2VPlP3sAK311E2Yy1KgTSFn9Xm8Wju9bQKqNLCEtR', NULL, '2019-08-08 03:04:37'),
(37, 'App\\Season', 2, 'u9CnnvaA36Au7ihUU9xwXnKLHrD8SW4wfc21hsA2VPlP3sAK311E2Yy1KgTSFn9Xm8Wju9bQKqNLCEtR', NULL, '2019-08-09 02:02:43'),
(44, 'App\\Season', 4, 'u9CnnvaA36Au7ihUU9xwXnKLHrD8SW4wfc21hsA2VPlP3sAK311E2Yy1KgTSFn9Xm8Wju9bQKqNLCEtR', NULL, '2019-08-10 07:16:55'),
(46, 'App\\Season', 4, 'u9CnnvaA36Au7ihUU9xwXnKLHrD8SW4wfc21hsA2VPlP3sAK311E2Yy1KgTSFn9Xm8Wju9bQKqNLCEtR', NULL, '2019-08-17 03:09:22'),
(47, 'App\\Season', 5, 'u9CnnvaA36Au7ihUU9xwXnKLHrD8SW4wfc21hsA2VPlP3sAK311E2Yy1KgTSFn9Xm8Wju9bQKqNLCEtR', NULL, '2019-08-19 02:56:29'),
(54, 'App\\Season', 4, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-08-28 18:22:23'),
(74, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-17 03:01:39'),
(75, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-17 03:01:39'),
(76, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-17 03:01:39'),
(78, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-17 16:37:27'),
(79, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-17 16:40:33'),
(98, 'App\\Movie', 45, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-19 02:04:39'),
(115, 'App\\Movie', 51, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-20 15:28:22'),
(116, 'App\\Movie', 51, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-20 15:29:01'),
(117, 'App\\Movie', 51, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-20 15:29:37'),
(118, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-21 06:10:36'),
(119, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-21 06:12:39'),
(120, 'App\\Movie', 43, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-21 07:07:23'),
(121, 'App\\Movie', 138, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-22 06:35:44'),
(122, 'App\\Movie', 139, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-22 06:37:55'),
(123, 'App\\Movie', 142, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-22 06:42:09'),
(124, 'App\\Movie', 77, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 15:01:41'),
(125, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 15:03:17'),
(126, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 15:04:02'),
(127, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 16:57:50'),
(128, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 16:59:44'),
(129, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 17:02:46'),
(130, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 17:02:47'),
(131, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 17:03:42'),
(132, 'App\\Movie', 43, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 19:02:12'),
(133, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 20:58:20'),
(134, 'App\\Movie', 143, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 20:59:36'),
(135, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 21:00:54'),
(136, 'App\\Movie', 73, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-23 21:21:43'),
(137, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:36:45'),
(138, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:37:49'),
(139, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:39:51'),
(140, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:41:38'),
(141, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:41:38'),
(142, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:41:38'),
(143, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:41:39'),
(144, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:41:49'),
(145, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:42:16'),
(146, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:42:17'),
(147, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:42:17'),
(148, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:43:18'),
(149, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:44:03'),
(150, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:44:41'),
(151, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:45:21'),
(152, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:45:21'),
(153, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:45:21'),
(154, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:45:21'),
(155, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:46:15'),
(156, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:47:27'),
(157, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:52:12'),
(158, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:54:06'),
(159, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:54:42'),
(160, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:54:51'),
(161, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:56:13'),
(162, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:56:19'),
(163, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:57:18'),
(164, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:57:18'),
(165, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:57:19'),
(166, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:57:19'),
(167, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:57:19'),
(168, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:57:19'),
(169, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 13:59:08'),
(170, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 14:00:10'),
(171, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 14:39:43'),
(172, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 15:28:19'),
(173, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:09:28'),
(174, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:09:50'),
(175, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:11:54'),
(176, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:14:03'),
(177, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:14:10'),
(178, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:14:48'),
(179, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:15:59'),
(180, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:16:03'),
(181, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:16:50'),
(182, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:19:31'),
(183, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:24:52'),
(184, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:27:18'),
(185, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:29:04'),
(186, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 16:32:34'),
(187, 'App\\Movie', 138, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-24 20:36:18'),
(188, 'App\\Movie', 151, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-25 04:35:27'),
(189, 'App\\Movie', 85, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-25 04:35:33'),
(190, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-25 05:32:09'),
(197, 'App\\Movie', 169, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-25 06:17:02'),
(198, 'App\\Movie', 43, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-25 13:43:16'),
(199, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-26 15:38:01'),
(200, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-09-26 15:43:14'),
(201, 'App\\Movie', 43, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-10-02 14:04:51'),
(202, 'App\\Movie', 138, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-10-02 14:08:44'),
(203, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-10-02 23:39:28'),
(204, 'App\\Movie', 145, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-10-02 23:40:08'),
(205, 'App\\Movie', 29, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-10-04 22:31:28'),
(206, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-10-04 22:32:23'),
(207, 'App\\Movie', 144, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-10-04 22:32:54'),
(208, 'App\\Movie', 138, 'G6az5dXt2yb7AkHrguW000w59c91EV4Cfrq5mRa21Raa1ePIRD1E47L4sqk4MVU6rwOSskkPax9wNxiR', NULL, '2019-10-06 01:35:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `added` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist_admins`
--

CREATE TABLE `wishlist_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `video_group_id` varchar(110) NOT NULL,
  `day` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist_admins`
--

INSERT INTO `wishlist_admins` (`id`, `user_group_id`, `video_group_id`, `day`, `created_at`, `updated_at`) VALUES
(104, 6, '[\"38\"]', 3, '2019-09-26 13:21:13', '2019-09-26 13:21:13'),
(107, 6, '[\"39\"]', 6, '2019-09-26 13:21:23', '2019-09-26 13:21:23'),
(109, 6, '[\"47\",\"10\"]', 1, '2019-09-26 13:24:33', '2019-09-26 13:24:33'),
(110, 6, '[\"40\",\"16\"]', 2, '2019-09-26 13:24:38', '2019-09-26 13:24:38'),
(111, 6, '[\"45\",\"10\"]', 4, '2019-09-26 13:24:43', '2019-09-26 13:24:43'),
(112, 6, '[\"43\",\"16\"]', 5, '2019-09-26 13:24:47', '2019-09-26 13:24:47'),
(117, 7, '[\"10\",\"47\"]', 1, '2019-09-29 18:25:12', '2019-09-29 18:25:12'),
(118, 7, '[\"16\",\"40\"]', 2, '2019-09-29 18:25:18', '2019-09-29 18:25:18'),
(119, 7, '[\"38\"]', 3, '2019-09-29 18:25:28', '2019-09-29 18:25:28'),
(120, 7, '[\"10\",\"39\"]', 4, '2019-09-29 18:25:39', '2019-09-29 18:25:39'),
(121, 7, '[\"16\",\"43\"]', 5, '2019-09-29 18:25:45', '2019-09-29 18:25:45'),
(122, 7, '[\"39\"]', 6, '2019-09-29 18:26:02', '2019-09-29 18:26:02'),
(124, 4, '[\"10\",\"47\"]', 1, '2019-10-02 10:47:47', '2019-10-02 10:47:47'),
(126, 4, '[\"16\",\"40\"]', 2, '2019-10-02 10:48:00', '2019-10-02 10:48:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist_user_groups`
--

CREATE TABLE `wishlist_user_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `created_At` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_At` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist_user_groups`
--

INSERT INTO `wishlist_user_groups` (`id`, `title`, `user_id`, `created_At`, `updated_At`) VALUES
(2, 'Kimi linda', '[\"27\"]', '2019-08-29 13:06:30', '2019-08-29 13:32:20'),
(4, 'Admin', '[\"1\"]', '2019-08-30 13:43:03', '2019-08-30 13:43:03'),
(6, 'JJZunino', '[\"31\"]', '2019-09-26 13:20:53', '2019-09-26 13:20:53'),
(7, 'J.HER.Z', '[\"32\"]', '2019-09-29 18:24:22', '2019-09-29 18:24:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist_video_groups`
--

CREATE TABLE `wishlist_video_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `movie_id` varchar(200) DEFAULT NULL,
  `tv_id` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist_video_groups`
--

INSERT INTO `wishlist_video_groups` (`id`, `title`, `movie_id`, `tv_id`, `created_at`, `updated_at`) VALUES
(2, 'Pre kine rodilla', '[\"3\",\"13\"]', NULL, '2019-08-29 13:36:18', '2019-08-29 13:36:18'),
(4, '1500 calorias', '[\"5\"]', NULL, '2019-08-29 13:49:32', '2019-09-03 15:34:44'),
(5, '1300 calorias', '[\"6\",\"21\"]', NULL, '2019-08-29 20:03:04', '2019-09-03 15:34:51'),
(6, 'Pre kine cadera', NULL, NULL, '2019-08-30 19:14:40', '2019-08-30 19:14:40'),
(7, 'Pre kine tobillo', NULL, NULL, '2019-08-30 19:15:20', '2019-08-30 19:15:20'),
(8, 'Pre kine cervical', NULL, NULL, '2019-08-30 19:16:43', '2019-09-03 15:44:56'),
(9, 'Pre kine lumbar', '[\"18\"]', NULL, '2019-08-30 19:16:51', '2019-09-03 15:45:03'),
(10, 'EyT/H/B/1', '[\"53\",\"58\",\"59\",\"69\",\"71\",\"72\",\"77\"]', NULL, '2019-08-30 19:17:47', '2019-09-26 13:23:12'),
(11, 'EyT/H/B/2', '[\"7\",\"11\"]', NULL, '2019-08-30 19:17:57', '2019-09-03 15:36:50'),
(12, 'EyT/H/B/3', '[\"1\",\"3\",\"7\",\"10\",\"11\"]', NULL, '2019-08-30 19:18:08', '2019-09-03 15:37:06'),
(13, 'EyT/H/A/1', '[\"53\",\"54\",\"58\",\"59\",\"69\",\"71\",\"72\",\"75\",\"77\",\"82\"]', NULL, '2019-08-30 19:18:36', '2019-09-20 13:35:57'),
(14, 'EyT/H/A/2', NULL, NULL, '2019-08-30 19:18:51', '2019-09-03 15:43:33'),
(15, 'EyT/H/A/3', NULL, NULL, '2019-08-30 19:18:55', '2019-09-03 15:43:17'),
(16, 'TyE/H/B/1', '[\"55\",\"62\",\"65\",\"66\",\"70\",\"74\",\"79\",\"81\"]', NULL, '2019-08-30 19:21:38', '2019-09-26 13:24:15'),
(17, 'TyE/H/B/2', '[\"12\",\"15\"]', NULL, '2019-08-30 19:21:57', '2019-09-03 15:42:57'),
(18, 'TyE/H/B/3', NULL, NULL, '2019-08-30 19:22:03', '2019-09-03 15:41:42'),
(19, 'TyE/H/A/1', NULL, NULL, '2019-08-30 19:22:19', '2019-09-03 15:42:06'),
(20, 'TyE/H/A/2', NULL, NULL, '2019-08-30 19:22:24', '2019-09-03 15:39:48'),
(21, 'TyE/H/A/3', NULL, NULL, '2019-08-30 19:22:31', '2019-09-03 15:39:14'),
(22, 'CORE 1', NULL, NULL, '2019-08-30 20:43:42', '2019-08-30 20:43:42'),
(23, 'CORE 2', NULL, NULL, '2019-08-30 20:43:49', '2019-08-30 20:43:49'),
(24, 'HIIT 1', NULL, NULL, '2019-08-30 20:43:57', '2019-08-30 20:43:57'),
(25, 'HIIT 2', NULL, NULL, '2019-08-30 20:44:03', '2019-08-30 20:44:03'),
(26, 'LIS 1', NULL, NULL, '2019-08-30 20:44:21', '2019-08-30 20:44:21'),
(27, 'LIS 2', NULL, NULL, '2019-08-30 20:44:25', '2019-08-30 20:44:25'),
(28, 'MOVILIDAD 1', NULL, NULL, '2019-08-30 20:44:56', '2019-08-30 20:44:56'),
(29, 'MOVILIDAD 2', NULL, NULL, '2019-08-30 20:45:09', '2019-08-30 20:45:09'),
(30, 'FLEXIBILIDAD 1', '[\"17\"]', NULL, '2019-08-30 20:45:18', '2019-08-30 21:32:48'),
(31, 'FLEXIBILIDAD 2', NULL, NULL, '2019-08-30 20:45:28', '2019-08-30 20:45:28'),
(32, '1700 calorias', NULL, NULL, '2019-08-30 20:45:56', '2019-09-03 15:40:53'),
(33, '1900 calorias', NULL, NULL, '2019-08-30 20:46:03', '2019-09-03 15:40:15'),
(34, '2100 calorias', NULL, NULL, '2019-08-30 20:46:13', '2019-09-03 15:40:07'),
(35, '2300 calorias', NULL, NULL, '2019-08-30 20:46:22', '2019-09-03 15:40:28'),
(36, '2500 calorias', NULL, NULL, '2019-08-30 20:46:32', '2019-09-03 15:40:43'),
(37, '1200', '[\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\"]', NULL, '2019-09-16 23:34:18', '2019-09-17 00:00:48'),
(38, 'Colaciones de 200 cals', '[\"89\",\"151\",\"152\",\"153\",\"154\"]', NULL, '2019-09-18 00:29:10', '2019-09-25 01:58:59'),
(39, 'Almuerzos o cenas de 400 cals', '[\"96\",\"97\",\"163\",\"164\"]', NULL, '2019-09-18 00:29:54', '2019-09-25 02:12:15'),
(40, 'Desayunos de 400 cals', '[\"92\",\"146\",\"147\",\"148\"]', NULL, '2019-09-18 00:30:25', '2019-09-25 02:15:08'),
(42, 'test2', '[\"55\",\"62\",\"70\",\"74\",\"80\"]', NULL, '2019-09-24 12:45:08', '2019-09-24 12:45:08'),
(43, 'Colaciones de 100 cals', '[\"83\",\"84\",\"85\",\"86\",\"87\",\"88\"]', NULL, '2019-09-25 00:23:19', '2019-09-25 01:59:17'),
(44, 'Colaciones de 300 cals', '[\"155\",\"156\",\"157\",\"158\",\"159\",\"160\"]', NULL, '2019-09-25 02:05:21', '2019-09-25 02:05:21'),
(45, 'Almuerzos o cenas de 500 cals', '[\"94\",\"95\",\"161\",\"162\"]', NULL, '2019-09-25 02:12:53', '2019-09-25 02:12:53'),
(46, 'Desayunos de 300 cals', '[\"91\",\"93\",\"149\",\"150\"]', NULL, '2019-09-25 02:15:58', '2019-09-25 02:15:58'),
(47, 'Capsulas nutricion', '[\"138\",\"139\",\"145\"]', NULL, '2019-09-26 13:21:57', '2019-09-26 13:21:57');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `audio_languages`
--
ALTER TABLE `audio_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_customizes`
--
ALTER TABLE `auth_customizes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `donater_lists`
--
ALTER TABLE `donater_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episodes_seasons_id_foreign` (`seasons_id`);

--
-- Indices de la tabla `excersices`
--
ALTER TABLE `excersices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `exercise_reports`
--
ALTER TABLE `exercise_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `footer_translations`
--
ALTER TABLE `footer_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `front_slider_updates`
--
ALTER TABLE `front_slider_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `header_translations`
--
ALTER TABLE `header_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_sliders_movie_id_foreign` (`movie_id`),
  ADD KEY `home_sliders_tv_series_id_foreign` (`tv_series_id`);

--
-- Indices de la tabla `home_translations`
--
ALTER TABLE `home_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_videos`
--
ALTER TABLE `menu_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_videos_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_videos_movie_id_foreign` (`movie_id`),
  ADD KEY `menu_videos_tv_series_id_foreign` (`tv_series_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movie_series`
--
ALTER TABLE `movie_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_series_movie_id_foreign` (`movie_id`);

--
-- Indices de la tabla `multiplescreens`
--
ALTER TABLE `multiplescreens`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `my_progresses`
--
ALTER TABLE `my_progresses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indices de la tabla `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `package_menu`
--
ALTER TABLE `package_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `paypal_subscriptions`
--
ALTER TABLE `paypal_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_email_unique` (`email`);

--
-- Indices de la tabla `player_settings`
--
ALTER TABLE `player_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `popover_translations`
--
ALTER TABLE `popover_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pricing_texts`
--
ALTER TABLE `pricing_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seasons_tv_series_id_foreign` (`tv_series_id`);

--
-- Indices de la tabla `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subtitles`
--
ALTER TABLE `subtitles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tv_series`
--
ALTER TABLE `tv_series`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `google_id` (`google_id`),
  ADD UNIQUE KEY `facebook_id` (`facebook_id`),
  ADD UNIQUE KEY `gitlab_id` (`gitlab_id`);

--
-- Indices de la tabla `videolinks`
--
ALTER TABLE `videolinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videolinks_movie_id_foreign` (`movie_id`),
  ADD KEY `videolinks_episode_id_foreign` (`episode_id`);

--
-- Indices de la tabla `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_viewable_type_viewable_id_index` (`viewable_type`,`viewable_id`);

--
-- Indices de la tabla `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `wishlist_admins`
--
ALTER TABLE `wishlist_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist_user_groups`
--
ALTER TABLE `wishlist_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist_video_groups`
--
ALTER TABLE `wishlist_video_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `audio_languages`
--
ALTER TABLE `audio_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_customizes`
--
ALTER TABLE `auth_customizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `buttons`
--
ALTER TABLE `buttons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `donater_lists`
--
ALTER TABLE `donater_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `excersices`
--
ALTER TABLE `excersices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `exercise_reports`
--
ALTER TABLE `exercise_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `footer_translations`
--
ALTER TABLE `footer_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `front_slider_updates`
--
ALTER TABLE `front_slider_updates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `header_translations`
--
ALTER TABLE `header_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `home_translations`
--
ALTER TABLE `home_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu_videos`
--
ALTER TABLE `menu_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT de la tabla `movie_series`
--
ALTER TABLE `movie_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `multiplescreens`
--
ALTER TABLE `multiplescreens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `my_progresses`
--
ALTER TABLE `my_progresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `package_menu`
--
ALTER TABLE `package_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `paypal_subscriptions`
--
ALTER TABLE `paypal_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `player_settings`
--
ALTER TABLE `player_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `popover_translations`
--
ALTER TABLE `popover_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pricing_texts`
--
ALTER TABLE `pricing_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subtitles`
--
ALTER TABLE `subtitles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tv_series`
--
ALTER TABLE `tv_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `videolinks`
--
ALTER TABLE `videolinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT de la tabla `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT de la tabla `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wishlist_admins`
--
ALTER TABLE `wishlist_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `wishlist_user_groups`
--
ALTER TABLE `wishlist_user_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `wishlist_video_groups`
--
ALTER TABLE `wishlist_video_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_seasons_id_foreign` FOREIGN KEY (`seasons_id`) REFERENCES `seasons` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD CONSTRAINT `home_sliders_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `home_sliders_tv_series_id_foreign` FOREIGN KEY (`tv_series_id`) REFERENCES `tv_series` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `menu_videos`
--
ALTER TABLE `menu_videos`
  ADD CONSTRAINT `menu_videos_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_videos_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_videos_tv_series_id_foreign` FOREIGN KEY (`tv_series_id`) REFERENCES `tv_series` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `movie_series`
--
ALTER TABLE `movie_series`
  ADD CONSTRAINT `movie_series_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `seasons`
--
ALTER TABLE `seasons`
  ADD CONSTRAINT `seasons_tv_series_id_foreign` FOREIGN KEY (`tv_series_id`) REFERENCES `tv_series` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `videolinks`
--
ALTER TABLE `videolinks`
  ADD CONSTRAINT `videolinks_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `videolinks_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
