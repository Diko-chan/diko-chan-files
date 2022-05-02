-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Máj 02. 21:07
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `dikochan`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `artworks`
--

CREATE TABLE `artworks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artwork_name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `artworks`
--

INSERT INTO `artworks` (`id`, `artwork_name`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 'silvervale', 'silvervalefanart.png', '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(2, 'adultgorou', 'adultgoroudone.png', '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(3, 'chibialbedo', 'albedo.png', '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(4, 'ayato', 'ayato.png', '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(5, 'baizhu', 'baizhu.png', '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(6, 'bunny', 'bunny.png', '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(7, 'vex', 'adultgoroudone.png', '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(8, 'adultgorou', 'adultgoroudone.png', '2022-05-01 20:30:32', '2022-05-01 20:30:32');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_age` tinyint(4) NOT NULL,
  `com_gender` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_image` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `com_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `commissions`
--

INSERT INTO `commissions` (`id`, `user_id`, `com_name`, `com_age`, `com_gender`, `com_details`, `com_image`, `com_status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Laran', 15, 'male', 'He has blue eyes, short brown hair and a piercing in his nose. I want a portrait commission.', '', 4, '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(2, '2', 'Ori', 20, 'other', 'She is a robot. she doesnt really has a gender but we give her a girlie face. Her face is girlish but bald, make it green and grey partial', '', 2, '2022-05-01 20:30:32', '2022-05-01 20:30:32');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(84, '2014_10_12_000000_create_users_table', 1),
(85, '2014_10_12_100000_create_password_resets_table', 1),
(86, '2019_08_19_000000_create_failed_jobs_table', 1),
(87, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(88, '2022_04_12_101506_artworks', 1),
(89, '2022_04_12_101912_commissions', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'MyAuthApp', 'b3906ebbabbd1f64c9e763ea1a468313d0a3ea0716e39d9d0c73a8ef4e2c510a', '[\"*\"]', '2022-05-01 20:31:45', '2022-05-01 20:31:45', '2022-05-01 20:31:45'),
(2, 'App\\Models\\User', 1, 'MyAuthApp', 'c92d26793bead0137d96749a97616cbf233dc821973d11d070d3cb54901ee0bd', '[\"*\"]', '2022-05-01 20:39:36', '2022-05-01 20:32:28', '2022-05-01 20:39:36'),
(3, 'App\\Models\\User', 1, 'MyAuthApp', 'b33bf2322949579ba471b68938e837bafd9fa044ba1faa11afc51cb5a94d1739', '[\"*\"]', NULL, '2022-05-01 20:45:12', '2022-05-01 20:45:12'),
(4, 'App\\Models\\User', 1, 'MyAuthApp', '3cad5de64c5c25f79544baa6d56d4dce835ca8c5e0fd7eecca04e0310fa7f240', '[\"*\"]', '2022-05-01 20:48:18', '2022-05-01 20:46:50', '2022-05-01 20:48:18'),
(5, 'App\\Models\\User', 1, 'MyAuthApp', 'd8fa70cf0d9b287986ac39c5b7ebb361da6b3f0b6b4183df09e97dd2e0492d98', '[\"*\"]', '2022-05-01 21:01:36', '2022-05-01 20:48:34', '2022-05-01 21:01:36'),
(6, 'App\\Models\\User', 1, 'MyAuthApp', '579f8c832f2de3ab10f3a38bc2e6366774e10b9722531e6712b89112c0bfa305', '[\"*\"]', '2022-05-01 21:12:43', '2022-05-01 21:12:35', '2022-05-01 21:12:43'),
(7, 'App\\Models\\User', 2, 'MyAuthApp', '3c21fb19257a80d3fa612cbf521599fd8bc7eb603b423bd775538334de6639be', '[\"*\"]', '2022-05-01 21:12:59', '2022-05-01 21:12:59', '2022-05-01 21:12:59'),
(8, 'App\\Models\\User', 3, 'MyAuthApp', 'd6fe41d9002377622a86d7f58fc22d73063a3446a8971ac2a2af0b2613f02a9e', '[\"*\"]', NULL, '2022-05-01 21:13:21', '2022-05-01 21:13:21'),
(9, 'App\\Models\\User', 4, 'MyAuthApp', 'd69474f25ec5fa066aa417bbdcbd6b3d41bab2fcbb9c0766979976a59b7ce911', '[\"*\"]', NULL, '2022-05-01 21:14:34', '2022-05-01 21:14:34'),
(10, 'App\\Models\\User', 5, 'MyAuthApp', 'a97ded5d54ecca75650d867f8b94d019e04cbb42cf1ce9be3710bc54c74a0942', '[\"*\"]', NULL, '2022-05-02 09:44:59', '2022-05-02 09:44:59'),
(11, 'App\\Models\\User', 5, 'MyAuthApp', '2801490ad7e546478f0199a3fd9cb73bac7775911be7b3ef0b302823dae6a814', '[\"*\"]', NULL, '2022-05-02 09:47:02', '2022-05-02 09:47:02'),
(12, 'App\\Models\\User', 1, 'MyAuthApp', '76b320984d0cc476175264f8e27190f33ce2b182bd442581a25401d4f3de12c2', '[\"*\"]', '2022-05-02 16:01:57', '2022-05-02 15:36:55', '2022-05-02 16:01:57');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `userType`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@dikochan.com', '2022-05-01 20:30:32', '$2y$10$JDuuOLjR0/TssIU/AGNjW.uXCoU0PpfD3GrXISoH2nAkCzVPqK2nu', 1, 'o5My2B0FSi', '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(2, 'Juliska', 'juli0123@gmail.com', '2022-05-01 20:30:32', '$2y$10$JDuuOLjR0/TssIU/AGNjW.uXCoU0PpfD3GrXISoH2nAkCzVPqK2nu', 0, 'Kbh0S6RLfJ', '2022-05-01 20:30:32', '2022-05-01 20:30:32'),
(3, 'orsolya', 'orsolya0101@gmail.com', NULL, '$2y$10$9058O1ElN8JNuNxURvekwe.GQ3SC/GgeSqLoDOzYpM5J1KCr7ViWC', 0, NULL, '2022-05-01 21:13:21', '2022-05-01 21:13:21'),
(4, 'Zoltán', 'zoltan123@gmail.com', NULL, '$2y$10$j.mGFim1cmg4R1sSFeVZyOi4ROfjuuVtPD5i58tZJJJBFGvCTshdC', 0, NULL, '2022-05-01 21:14:34', '2022-05-01 21:14:34'),
(5, 'Obertik Orsolya', 'orsolya0110@gmail.com', NULL, '$2y$10$2Bs5z.wBoFl.QQkUdKmcsOCtLi3/kMddGI1XafRzZU1s1HBZlIYbW', 0, NULL, '2022-05-02 09:44:59', '2022-05-02 09:44:59');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `artworks`
--
ALTER TABLE `artworks`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `artworks`
--
ALTER TABLE `artworks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
