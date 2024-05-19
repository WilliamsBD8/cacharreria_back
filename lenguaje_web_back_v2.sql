-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-05-2024 a las 22:10:23
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lenguaje_web_back_v2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brand`
--

CREATE TABLE `brand` (
  `id_brand` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brand`
--

INSERT INTO `brand` (`id_brand`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Corona', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(2, 'Imusa', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(3, 'Oster', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(4, 'Samurai', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(5, 'Chino', '2024-05-02 19:25:05', '2024-05-02 19:25:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_category`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aseo', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(2, 'Cristaleria', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(3, 'Jugueteria', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(4, 'Ropa', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(5, 'Muebles Edit', '2024-05-02 19:25:05', '2024-05-09 12:13:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE `invoices` (
  `id_invoices` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `tax_amount` decimal(20,2) DEFAULT NULL,
  `payable_amount` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `invoices`
--

INSERT INTO `invoices` (`id_invoices`, `user_id`, `status_invoice_id`, `tax_amount`, `payable_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0.00', '4065.00', '2024-05-04 19:18:39', '2024-05-04 19:18:46'),
(2, 2, 1, '6067.08', '31932.00', '2024-05-09 12:24:54', '2024-05-09 12:24:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `line_invoice`
--

CREATE TABLE `line_invoice` (
  `id_line_invoice` bigint(20) UNSIGNED NOT NULL,
  `id_invoice` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `value` decimal(20,2) DEFAULT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `line_tax` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `line_invoice`
--

INSERT INTO `line_invoice` (`id_line_invoice`, `id_invoice`, `id_product`, `value`, `cost`, `quantity`, `line_tax`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '4065.00', '2754.00', 1, '0.00', NULL, NULL),
(2, 2, 101, '5000.00', '4000.00', 3, '14250000.00', '2024-05-09 12:24:54', '2024-05-09 12:24:54'),
(3, 2, 2, '5644.00', '2966.00', 3, '18157199.52', '2024-05-09 12:24:54', '2024-05-09 12:24:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_04_02_143615_category', 1),
(2, '2024_04_02_143816_brand', 1),
(3, '2024_04_02_143827_products', 1),
(4, '2024_04_03_013411_status_invoices', 1),
(5, '2024_04_03_013412_roles', 1),
(6, '2024_04_03_013413_users', 1),
(7, '2024_04_03_013414_invoices', 1),
(8, '2024_04_03_013540_line_invoices', 1),
(9, '2024_05_02_174957_product_images', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `id_brand` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(20,2) NOT NULL,
  `cost` decimal(20,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `tax` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `id_category`, `id_brand`, `name`, `description`, `value`, `cost`, `discount`, `tax`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'Producto 1', 'Descripción 1', '4065.00', '2754.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(2, 2, 2, 'Producto 2', 'Descripción 2', '5644.00', '2966.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(3, 2, 3, 'Producto 3', 'Descripción 3', '18946.00', '570.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(4, 3, 4, 'Producto 4', 'Descripción 4', '2631.00', '2421.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(5, 5, 2, 'Producto 5', 'Descripción 5', '18904.00', '5993.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(6, 4, 5, 'Producto 6', 'Descripción 6', '14717.00', '2808.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(7, 5, 3, 'Producto 7', 'Descripción 7', '5784.00', '649.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(8, 2, 3, 'Producto 8', 'Descripción 8', '2692.00', '2107.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(9, 5, 2, 'Producto 9', 'Descripción 9', '7822.00', '4400.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(10, 4, 4, 'Producto 10', 'Descripción 10', '14247.00', '8340.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(11, 5, 3, 'Producto 11', 'Descripción 11', '18736.00', '15247.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(12, 4, 5, 'Producto 12', 'Descripción 12', '15684.00', '2065.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(13, 4, 4, 'Producto 13', 'Descripción 13', '11627.00', '4924.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(14, 4, 1, 'Producto 14', 'Descripción 14', '3614.00', '2104.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(15, 4, 4, 'Producto 15', 'Descripción 15', '15852.00', '12783.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(16, 2, 4, 'Producto 16', 'Descripción 16', '10396.00', '5454.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(17, 4, 5, 'Producto 17', 'Descripción 17', '9343.00', '5381.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(18, 1, 1, 'Producto 18', 'Descripción 18', '13305.00', '1623.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(19, 1, 3, 'Producto 19', 'Descripción 19', '9683.00', '3513.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(20, 1, 4, 'Producto 20', 'Descripción 20', '3189.00', '1490.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(21, 4, 3, 'Producto 21', 'Descripción 21', '1170.00', '746.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(22, 5, 3, 'Producto 22', 'Descripción 22', '4763.00', '4575.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(23, 5, 4, 'Producto 23', 'Descripción 23', '12937.00', '4755.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(24, 2, 4, 'Producto 24', 'Descripción 24', '7656.00', '6688.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(25, 4, 4, 'Producto 25', 'Descripción 25', '2777.00', '659.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(26, 1, 4, 'Producto 26', 'Descripción 26', '1109.00', '800.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(27, 5, 3, 'Producto 27', 'Descripción 27', '3908.00', '1927.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(28, 4, 2, 'Producto 28', 'Descripción 28', '12271.00', '8344.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(29, 3, 1, 'Producto 29', 'Descripción 29', '10294.00', '10101.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(30, 5, 1, 'Producto 30', 'Descripción 30', '2650.00', '2372.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(31, 1, 5, 'Producto 31', 'Descripción 31', '13430.00', '10589.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(32, 4, 4, 'Producto 32', 'Descripción 32', '7458.00', '1193.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(33, 4, 4, 'Producto 33', 'Descripción 33', '9797.00', '1450.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(34, 4, 2, 'Producto 34', 'Descripción 34', '7115.00', '2603.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(35, 1, 3, 'Producto 35', 'Descripción 35', '11743.00', '7686.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(36, 3, 3, 'Producto 36', 'Descripción 36', '6611.00', '2319.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(37, 5, 1, 'Producto 37', 'Descripción 37', '2224.00', '1542.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(38, 2, 5, 'Producto 38', 'Descripción 38', '1429.00', '1125.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(39, 1, 2, 'Producto 39', 'Descripción 39', '5322.00', '4393.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(40, 1, 5, 'Producto 40', 'Descripción 40', '16893.00', '11862.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(41, 3, 3, 'Producto 41', 'Descripción 41', '3277.00', '2020.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(42, 3, 3, 'Producto 42', 'Descripción 42', '3007.00', '1723.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(43, 2, 1, 'Producto 43', 'Descripción 43', '3711.00', '3173.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(44, 5, 5, 'Producto 44', 'Descripción 44', '8296.00', '1181.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(45, 3, 1, 'Producto 45', 'Descripción 45', '9750.00', '7449.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(46, 1, 4, 'Producto 46', 'Descripción 46', '19495.00', '12171.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(47, 3, 1, 'Producto 47', 'Descripción 47', '6149.00', '549.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(48, 1, 1, 'Producto 48', 'Descripción 48', '12292.00', '7264.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(49, 1, 1, 'Producto 49', 'Descripción 49', '16102.00', '10442.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(50, 1, 5, 'Producto 50', 'Descripción 50', '16222.00', '10934.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(51, 5, 5, 'Producto 51', 'Descripción 51', '7211.00', '4503.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(52, 5, 2, 'Producto 52', 'Descripción 52', '19609.00', '18167.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(53, 2, 1, 'Producto 53', 'Descripción 53', '17895.00', '9118.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(54, 4, 1, 'Producto 54', 'Descripción 54', '5653.00', '1166.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(55, 3, 4, 'Producto 55', 'Descripción 55', '12419.00', '1820.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(56, 1, 5, 'Producto 56', 'Descripción 56', '11019.00', '7394.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(57, 1, 3, 'Producto 57', 'Descripción 57', '16989.00', '4780.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(58, 1, 2, 'Producto 58', 'Descripción 58', '13093.00', '12663.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(59, 5, 5, 'Producto 59', 'Descripción 59', '16630.00', '1747.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(60, 3, 4, 'Producto 60', 'Descripción 60', '2995.00', '623.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(61, 4, 5, 'Producto 61', 'Descripción 61', '15291.00', '2404.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(62, 2, 1, 'Producto 62', 'Descripción 62', '13700.00', '804.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(63, 1, 4, 'Producto 63', 'Descripción 63', '3420.00', '2211.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(64, 5, 3, 'Producto 64', 'Descripción 64', '19042.00', '1562.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(65, 1, 3, 'Producto 65', 'Descripción 65', '19687.00', '8107.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(66, 4, 5, 'Producto 66', 'Descripción 66', '18228.00', '8762.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(67, 2, 4, 'Producto 67', 'Descripción 67', '9189.00', '4557.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(68, 1, 3, 'Producto 68', 'Descripción 68', '6439.00', '5150.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(69, 3, 1, 'Producto 69', 'Descripción 69', '8826.00', '4912.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(70, 5, 5, 'Producto 70', 'Descripción 70', '19829.00', '2651.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(71, 3, 1, 'Producto 71', 'Descripción 71', '18418.00', '2623.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(72, 3, 5, 'Producto 72', 'Descripción 72', '8323.00', '6187.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(73, 4, 3, 'Producto 73', 'Descripción 73', '14831.00', '1476.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(74, 5, 2, 'Producto 74', 'Descripción 74', '4447.00', '1407.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(75, 1, 3, 'Producto 75', 'Descripción 75', '6068.00', '5564.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(76, 1, 4, 'Producto 76', 'Descripción 76', '14843.00', '8450.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(77, 4, 3, 'Producto 77', 'Descripción 77', '9154.00', '6480.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(78, 5, 1, 'Producto 78', 'Descripción 78', '15409.00', '8940.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(79, 1, 5, 'Producto 79', 'Descripción 79', '4966.00', '4457.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(80, 2, 4, 'Producto 80', 'Descripción 80', '18638.00', '3468.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(81, 2, 2, 'Producto 81', 'Descripción 81', '10931.00', '5708.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(82, 3, 2, 'Producto 82', 'Descripción 82', '6935.00', '2296.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(83, 3, 2, 'Producto 83', 'Descripción 83', '13143.00', '11647.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(84, 5, 1, 'Producto 84', 'Descripción 84', '5916.00', '2574.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(85, 3, 5, 'Producto 85', 'Descripción 85', '17645.00', '8340.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(86, 3, 2, 'Producto 86', 'Descripción 86', '9243.00', '3094.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(87, 3, 4, 'Producto 87', 'Descripción 87', '17984.00', '6703.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(88, 2, 2, 'Producto 88', 'Descripción 88', '7568.00', '1201.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(89, 5, 2, 'Producto 89', 'Descripción 89', '10292.00', '6057.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(90, 4, 4, 'Producto 90', 'Descripción 90', '15076.00', '6853.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(91, 3, 4, 'Producto 91', 'Descripción 91', '19981.00', '11291.00', '0.10', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(92, 2, 1, 'Producto 92', 'Descripción 92', '5786.00', '2144.00', '0.00', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(93, 2, 5, 'Producto 93', 'Descripción 93', '11414.00', '4523.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(94, 1, 2, 'Producto 94', 'Descripción 94', '18361.00', '868.00', '0.00', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(95, 3, 4, 'Producto 95', 'Descripción 95', '11239.00', '10855.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(96, 5, 1, 'Producto 96', 'Descripción 96', '16187.00', '6766.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(97, 2, 4, 'Producto 97', 'Descripción 97', '13709.00', '1774.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(98, 3, 4, 'Producto 98', 'Descripción 98', '12529.00', '7468.00', '0.10', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(99, 2, 1, 'Producto 99', 'Descripción 99', '16907.00', '14261.00', '0.05', '0.00', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(100, 5, 2, 'Producto 100', 'Descripción 100', '18019.00', '12223.00', '0.05', '0.19', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(101, 3, 5, 'producto nuevo', 'dsdsdsd', '5000.00', '4000.00', '0.00', '0.19', '2024-05-09 12:22:51', '2024-05-09 12:22:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id_product_image` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrador', 'Super Administrador', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(2, 'Administrador', 'Administrador', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(3, 'Vendedor', 'Vendedor', '2024-05-02 19:25:05', '2024-05-02 19:25:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_invoice`
--

CREATE TABLE `status_invoice` (
  `id_status_invoice` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `status_invoice`
--

INSERT INTO `status_invoice` (`id_status_invoice`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aceptada', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(2, 'Fondos insuficientes', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(3, 'Fallida', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(4, 'Pendiente', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(5, 'Aceptada', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(6, 'Fondos insuficientes', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(7, 'Fallida', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(8, 'Pendiente', '2024-05-02 19:25:05', '2024-05-02 19:25:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_rol` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `id_rol`, `name`, `email`, `username`, `password`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Administrador', 'iplanet@iplanetcolombia.com', 'root', '$2y$10$bJAiC08izF1cK4VgGLf8HO7bJYJHETb9MzVMiuijXFJITTEsiOupW', NULL, 'active', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(2, 2, 'admin', 'iplanet@iplanetcolombia.com', 'admin', '$2y$10$JnggFvxuwQmVyxHnHh6Pl.2zFIErpvKRdysXVu6ZYq.9sA8CA5Z4.', NULL, 'active', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(3, 3, 'vendedor', 'iplanet@iplanetcolombia.com', 'vendedor', '$2y$10$xkoIVydoLEi7d.hTWz0o/uagbxRUHe7w02WhAJNrqqbFEl5jBJzs6', NULL, 'active', '2024-05-02 19:25:05', '2024-05-02 19:25:05'),
(4, 3, 'Adam', 'adam@gmail.com', 'adam', '$2y$10$ucDT271wo8tl.XLXHZAt9.6oNxdlq4Ok.EFPKjry0FjDSOB7iwK3.', NULL, 'inactive', '2024-05-08 02:30:06', '2024-05-08 02:30:06'),
(5, 3, 'William Bonilla', 'qqqq', 'qqq', '$2y$10$XHZJ.zCV.UwRZySJ8ZyAHehqwzMOHkB78eNfwIq6/Rlfb7RGp1d1.', NULL, 'active', '2024-05-08 02:33:19', '2024-05-08 02:33:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id_invoices`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `invoices_status_invoice_id_foreign` (`status_invoice_id`);

--
-- Indices de la tabla `line_invoice`
--
ALTER TABLE `line_invoice`
  ADD PRIMARY KEY (`id_line_invoice`),
  ADD KEY `line_invoice_id_invoice_foreign` (`id_invoice`),
  ADD KEY `line_invoice_id_product_foreign` (`id_product`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `products_id_category_foreign` (`id_category`),
  ADD KEY `products_id_brand_foreign` (`id_brand`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id_product_image`),
  ADD KEY `product_images_id_product_foreign` (`id_product`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `status_invoice`
--
ALTER TABLE `status_invoice`
  ADD PRIMARY KEY (`id_status_invoice`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `users_id_rol_foreign` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id_category` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id_invoices` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `line_invoice`
--
ALTER TABLE `line_invoice`
  MODIFY `id_line_invoice` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id_product_image` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `status_invoice`
--
ALTER TABLE `status_invoice`
  MODIFY `id_status_invoice` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_status_invoice_id_foreign` FOREIGN KEY (`status_invoice_id`) REFERENCES `status_invoice` (`id_status_invoice`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `line_invoice`
--
ALTER TABLE `line_invoice`
  ADD CONSTRAINT `line_invoice_id_invoice_foreign` FOREIGN KEY (`id_invoice`) REFERENCES `invoices` (`id_invoices`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `line_invoice_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_brand_foreign` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id_brand`),
  ADD CONSTRAINT `products_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);

--
-- Filtros para la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
