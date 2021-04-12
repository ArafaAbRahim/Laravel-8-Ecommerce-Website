-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2021 at 06:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronics', '2021-02-14 10:59:00', '2021-02-18 09:30:36'),
(2, 'Mobile', 'mobile', '2021-02-14 10:59:01', '2021-02-18 21:28:16'),
(3, 'consequuntur aliquam', 'consequuntur-aliquam', '2021-02-14 10:59:01', '2021-02-14 10:59:01'),
(4, 'voluptatum quia', 'voluptatum-quia', '2021-02-14 10:59:01', '2021-02-14 10:59:01'),
(5, 'quos quisquam', 'quos-quisquam', '2021-02-14 10:59:01', '2021-02-14 10:59:01'),
(6, 'totam aperiam', 'totam-aperiam', '2021-02-14 10:59:01', '2021-02-14 10:59:01'),
(7, 'similique et', 'similique-et', '2021-02-15 00:00:42', '2021-02-15 00:00:42'),
(8, 'placeat consequatur', 'placeat-consequatur', '2021-02-15 00:00:42', '2021-02-15 00:00:42'),
(9, 'numquam et', 'numquam-et', '2021-02-15 00:00:42', '2021-02-15 00:00:42'),
(10, 'aut omnis', 'aut-omnis', '2021-02-15 00:00:42', '2021-02-15 00:00:42'),
(11, 'Cloth-Male', 'cloth-male', '2021-02-15 00:00:42', '2021-02-18 10:59:03'),
(12, 'nobi-voluptas', 'nobi-voluptas', '2021-02-15 00:00:42', '2021-02-18 10:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(4, 'OFF80', 'fixed', '80.00', '800.00', '2021-04-02 00:18:33', '2021-04-04 01:56:00', '2021-04-05'),
(5, 'OFF10P', 'percent', '10.00', '600.00', '2021-04-02 09:19:36', '2021-04-04 01:40:00', '2021-04-07'),
(6, 'OFF20P', 'percent', '20.00', '2000.00', '2021-04-04 00:16:50', '2021-04-04 01:40:41', '2021-04-06'),
(7, 'OFF30P', 'percent', '30.00', '2000.00', '2021-04-04 01:02:01', '2021-04-04 01:40:22', '2021-04-08'),
(8, 'OFF100', 'fixed', '100.00', '1000.00', '2021-04-04 01:09:49', '2021-04-04 01:09:49', '2021-04-05'),
(9, 'OFF15P', 'percent', '15.00', '1500.00', '2021-04-04 01:11:30', '2021-04-04 01:11:30', '2021-04-06'),
(10, 'OFF10', 'fixed', '10.00', '500.00', '2021-04-04 01:14:09', '2021-04-04 01:14:09', '2021-04-07'),
(11, 'OFF30', 'fixed', '30.00', '1500.00', '2021-04-04 01:25:21', '2021-04-04 01:25:21', '2021-04-07'),
(12, 'OFF5P', 'percent', '5.00', '1200.00', '2021-04-04 01:43:35', '2021-04-04 01:43:35', '2021-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '3,5,6,8,9,11', 8, '2021-02-28 15:10:38', '2021-02-28 11:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'First Slider', 'First Slider Subtitle', '100', 'http://localhost:8000/shop', '1614187907.jpg', 1, '2021-02-24 11:31:47', '2021-02-24 11:31:47'),
(5, 'Second Slider', 'Second Slider Subtitle', '250', 'http://localhost:8000/shop', '1614188073.jpg', 1, '2021-02-24 11:34:33', '2021-02-24 11:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_12_143939_create_sessions_table', 1),
(7, '2021_02_14_160143_create_categories_table', 2),
(8, '2021_02_14_160340_create_products_table', 2),
(9, '2021_02_24_134234_create_home_sliders_table', 3),
(10, '2021_02_28_150303_create_home_categories_table', 4),
(11, '2021_03_04_141852_create_sales_table', 5),
(12, '2021_03_31_040825_create_coupons_table', 6),
(13, '2021_04_04_052303_add_expiry_date_to_coupons_table', 7),
(14, '2021_04_05_133520_create_orders_table', 8),
(15, '2021_04_05_133659_create_order_items_table', 8),
(16, '2021_04_05_133729_create_shippings_table', 8),
(17, '2021_04_05_133806_create_transactions_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`) VALUES
(1, 2, '430.00', '0.00', '90.30', '520.30', 'First', 'last', '1316434630', 'first@last.com', '2/5/c', '2/4/d', 'Mohammadpur', 'Dhaka', 'Bangladesh', '1207', 'ordered', 1, '2021-04-09 09:46:22', '2021-04-09 09:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '430.00', 1, '2021-04-09 09:46:22', '2021-04-09 09:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'et explicabo consequatur est', 'et-explicabo-consequatur-est', 'Labore et in fugiat id. Illo necessitatibus soluta omnis voluptas id soluta velit voluptatem. In tempore odio in consectetur.', 'Et nobis voluptas ab ut et quasi. Vel ab debitis facere accusantium laboriosam voluptatem quos. Eum voluptatibus voluptas aliquam voluptas et facilis quaerat. Aut sed qui ipsam est sit. Voluptatibus quibusdam placeat sed a temporibus. Sint molestiae possimus vero in omnis iusto est. Cumque sit molestiae ipsum quo delectus. Veniam et explicabo ea modi asperiores. Recusandae distinctio aut nisi.', '430.00', '400.00', 'DIGI320', 'instock', 0, 369, 'digital_7.jpg', NULL, 5, '2021-02-14 10:59:01', '2021-03-04 07:33:27'),
(2, 'perferendis eius ullam maiores', 'perferendis-eius-ullam-maiores', 'Consequatur ipsam sunt esse. Aut et aut voluptatem impedit expedita cumque ducimus eveniet. Totam aut earum possimus voluptate qui labore. Eos deserunt qui qui eius aut sed.', 'Ducimus dicta laboriosam vitae rerum. Rerum praesentium placeat minus. Molestiae sed voluptatibus magni consequatur in sed quaerat. Dolorum non quia eum similique ex est. Sunt sint tempora hic eligendi. Tenetur voluptatum error dignissimos sit. Quis debitis recusandae qui esse quia. Dolore quia molestiae quo et qui repudiandae.', '76.00', '70.00', 'DIGI433', 'instock', 0, 444, 'digital_13.jpg', NULL, 3, '2021-02-14 10:59:01', '2021-03-04 07:33:47'),
(3, 'blanditiis et optio aut', 'blanditiis-et-optio-aut', 'Delectus enim debitis quasi ex et ducimus et. Et quae ut ut vel repellendus. Deleniti necessitatibus reprehenderit repellendus eum alias hic repellendus vero. Facere odit animi consequatur in.', 'Quaerat qui dignissimos debitis ducimus saepe rem. Dolores eaque debitis fugit. Non molestiae eaque perferendis placeat perferendis culpa repudiandae. Atque omnis reiciendis quos et aliquam. Ipsam quidem officiis velit quos odit. Id tenetur tempora fugiat nisi omnis. Est labore ad commodi dicta aut laudantium. Repellat excepturi consectetur quidem libero cupiditate et eligendi. Non itaque magnam nemo in dolor. Deserunt vitae soluta impedit inventore facere.', '278.00', '250.00', 'DIGI261', 'instock', 0, 385, 'digital_10.jpg', NULL, 2, '2021-02-14 10:59:01', '2021-03-04 07:34:20'),
(4, 'aspernatur est aut quo', 'aspernatur-est-aut-quo', 'Non enim velit repellendus vitae. Sed asperiores quaerat ut modi tempora natus. Veniam ducimus repellat aliquam doloremque assumenda expedita. Aut consectetur aperiam ad quaerat.', 'Voluptatem expedita impedit qui vero. Cumque omnis velit blanditiis nihil dolores quas ut maxime. Qui beatae ut perspiciatis itaque. Ea pariatur et ducimus iste in quod. Nobis rerum enim nam. Illum nihil libero nihil natus qui nihil. Et aut sapiente impedit ut omnis. Voluptatum laudantium dolores temporibus tempore vitae. Reprehenderit eos ad quisquam nobis. Atque voluptas rerum quis facere.', '340.00', '300.00', 'DIGI268', 'instock', 0, 150, 'digital_11.jpg', NULL, 2, '2021-02-14 10:59:02', '2021-03-04 07:34:39'),
(5, 'dolor voluptates omnis rerum', 'dolor-voluptates-omnis-rerum', 'Sint harum aperiam labore. Porro maxime odio quidem. Debitis quos voluptates in molestiae labore soluta.', 'In aut mollitia itaque dolorum. Adipisci aut deleniti sunt sed nobis doloribus. Nam quia cupiditate aut delectus nemo. Architecto cupiditate temporibus aut sed sint fugit. Est id necessitatibus sed quia. Officia dolor accusantium qui neque numquam voluptatem qui. Quibusdam quos alias et deleniti est in. Totam dolor fugiat architecto sint. Ad quo exercitationem voluptatem. Fugiat maxime quo ut aliquid. Modi aspernatur provident cumque.', '310.00', '270.00', 'DIGI380', 'instock', 0, 419, 'digital_8.jpg', NULL, 1, '2021-02-14 10:59:02', '2021-03-04 07:35:31'),
(6, 'qui quia deleniti recusandae', 'qui-quia-deleniti-recusandae', 'Quasi vero quidem esse ducimus quis. Molestiae doloribus maiores cum vel. Aut sunt fuga quam eum eaque.', 'Odit sed aut iusto sunt nobis sed. Quis consequatur dolorem quis rerum quae. Sequi est voluptatem occaecati est. Ea hic quae commodi eos eos eaque itaque. Aut iure necessitatibus ab consequatur facilis. Consequatur odit eum sunt earum et et. Porro labore fugiat impedit architecto temporibus doloribus laboriosam. Aliquid aut vero nisi nemo enim nobis doloribus.', '46.00', '35.00', 'DIGI486', 'instock', 0, 295, 'digital_17.jpg', NULL, 1, '2021-02-14 10:59:02', '2021-03-04 07:37:28'),
(7, 'delectus ullam sequi quia', 'delectus-ullam-sequi-quia', 'Neque dolor aliquid exercitationem sed id sed. Fugiat sit ex non vero eum enim eos. Fugit molestiae officia quia in necessitatibus beatae. Praesentium ut quibusdam sed.', 'Nemo quo consequatur dolorem et aut error suscipit. Dicta minima labore nesciunt vel. Culpa velit vel corrupti et. Vitae aut et voluptatem. Aut dolores hic et occaecati maiores ut pariatur. Saepe voluptas velit fuga dolores qui vel perferendis quidem. Ut quidem atque eaque nesciunt hic. Molestiae nemo vel eligendi aut. In in commodi aut incidunt quaerat.', '378.00', NULL, 'DIGI494', 'instock', 0, 435, 'digital_6.jpg', NULL, 1, '2021-02-15 00:00:42', '2021-02-15 00:00:42'),
(8, 'et impedit sit nobis', 'et-impedit-sit-nobis', 'Labore eligendi quidem id quia velit nihil vel. Et consectetur possimus ipsa et velit. Dolorem aut eum repudiandae dolor dolorum aut omnis non. Quod autem placeat natus quo blanditiis consequuntur.', 'Minus maiores et sunt animi inventore aut beatae. Ducimus sit et laudantium distinctio quia maxime. Rerum aperiam hic suscipit minima laborum. At sint natus eos assumenda et. Deleniti saepe minima quibusdam tempore dolore eaque. Voluptatem aliquam recusandae pariatur quis reprehenderit. Corporis ducimus vero impedit ea dicta.', '158.00', NULL, 'DIGI349', 'instock', 0, 158, 'digital_2.jpg', NULL, 5, '2021-02-15 00:00:42', '2021-02-15 00:00:42'),
(9, 'facere dolorum et nulla', 'facere-dolorum-et-nulla', 'Nulla delectus est dolorem quae suscipit. Maxime ullam fuga porro aut voluptatum est quae incidunt.', 'Sint pariatur sit qui consequatur possimus quia. Dolorem eum aut veniam est enim molestias quia. Atque facilis rerum mollitia ut. Vel in molestiae rerum et. Ut pariatur et sit iste amet repudiandae. Laboriosam cum dicta error autem non. Earum sapiente fuga provident. Ipsum molestias et totam velit dicta. Suscipit sit consequuntur facilis tempore unde asperiores.', '23.00', NULL, 'DIGI127', 'instock', 0, 397, 'digital_22.jpg', NULL, 4, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(10, 'quo eaque sit deleniti', 'quo-eaque-sit-deleniti', 'Et quis vel eveniet voluptates. Repellat unde voluptatum a ut assumenda rerum ad. Ad sunt qui nam voluptas error tempore voluptas nostrum.', 'Est voluptatem sed architecto sit corrupti voluptatem et. Dolores dolor aut suscipit quod. Iure est eos fugiat nemo qui doloremque. Qui rerum consequatur est sunt facilis. Fuga quasi laudantium molestiae hic delectus illum et. Dolorem autem modi recusandae repellat odio saepe. Saepe atque qui sed tenetur. Voluptas cupiditate est autem vel. Minima eligendi est repellendus error tempore omnis dignissimos.', '135.00', NULL, 'DIGI219', 'instock', 0, 332, 'digital_15.jpg', NULL, 1, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(11, 'sit omnis qui officiis', 'sit-omnis-qui-officiis', 'Ut non modi repellendus libero distinctio. Voluptatem aperiam fugit consequuntur reprehenderit ex ut.', 'Et rerum vel a molestiae. Et nihil et natus dolorem doloribus nostrum adipisci. Neque dolor sed omnis. Illo ipsam quod non. Voluptate quia dolore laborum voluptas omnis fuga. Natus quas sed laboriosam mollitia. Dolor eos cum esse. Provident recusandae id veniam dolorem dolores. Omnis mollitia blanditiis deleniti praesentium fuga adipisci aspernatur.', '238.00', NULL, 'DIGI218', 'instock', 0, 446, 'digital_5.jpg', NULL, 4, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(12, 'dignissimos voluptas velit architecto', 'dignissimos-voluptas-velit-architecto', 'Tenetur velit accusantium dolor voluptatum facere itaque maxime. Unde eum porro omnis eum ea voluptates eveniet. Cumque ut quia et sed et quia blanditiis.', 'Explicabo quia totam veniam quos error minima sit. Nobis voluptate corrupti esse corrupti hic. Sed repudiandae magni aut in. Eius sequi repellat modi et. Reiciendis cupiditate non ratione non sit illo. Eos laudantium sit eum et sed. Est optio quam fugit omnis eius. Dolor quis vel ea inventore neque. Nostrum eos id voluptas. Velit corporis dolore blanditiis est eum iusto odit. Facilis ipsam voluptate atque non sunt velit quos. Distinctio consequuntur atque in quas.', '471.00', NULL, 'DIGI221', 'instock', 0, 176, 'digital_17.jpg', NULL, 3, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(13, 'sapiente placeat nam autem', 'sapiente-placeat-nam-autem', 'Debitis et libero et fuga inventore quidem. Dolor reprehenderit praesentium nostrum inventore quasi omnis. Fugiat saepe et dolorem omnis et. Vero aut itaque aperiam quod adipisci et unde.', 'Enim voluptatum distinctio sunt ex quis. Et eum amet laudantium commodi recusandae voluptatem. Ratione doloribus vel sit nihil hic. Alias repellendus voluptatibus voluptas enim. Qui possimus dignissimos neque veniam sed atque. Quia voluptatem ipsum fugiat sed eum. Delectus tempore ut quos tempore. Nulla temporibus dolores placeat voluptatem. Ex quae est mollitia aperiam id.', '185.00', NULL, 'DIGI131', 'instock', 0, 262, 'digital_14.jpg', NULL, 2, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(14, 'sunt velit enim voluptatem', 'sunt-velit-enim-voluptatem', 'Nisi et ut qui dolor harum nam quasi. Molestias exercitationem ut est doloribus ratione. Qui commodi eaque et neque voluptatem ex autem. Impedit fuga sint dolorem aperiam.', 'Velit ut nisi repudiandae eius magni totam. Non ipsa iure nulla earum. Atque nihil non soluta omnis voluptas. Maxime dolore officiis rem beatae voluptatem ea quasi. Veniam odio molestiae unde dolor ut impedit repellendus dolor. Voluptatibus id sed at sint repellendus porro assumenda. Qui ducimus nisi at et provident repudiandae. Animi in et consectetur sapiente. Voluptates inventore deserunt mollitia. Itaque velit molestias occaecati eligendi ea omnis cumque.', '152.00', NULL, 'DIGI374', 'instock', 0, 264, 'digital_18.jpg', NULL, 2, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(15, 'vel eum unde dignissimos', 'vel-eum-unde-dignissimos', 'Ullam aliquam numquam nemo consequatur. Natus iusto a harum est numquam.', 'Eos quisquam quo quidem nemo ab quasi. Qui eveniet necessitatibus corrupti fugit aut accusantium. Excepturi id ut corrupti ut. Nulla similique tempore ut cum temporibus. In velit id dolore culpa omnis ut. Asperiores voluptatum et rerum error odit dolor et. Neque dolor esse aut dolor.', '149.00', NULL, 'DIGI156', 'instock', 0, 336, 'digital_8.jpg', NULL, 2, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(16, 'magnam eos aut blanditiis', 'magnam-eos-aut-blanditiis', 'Fugit et et aut iure. Ex et debitis sed consequatur hic est perferendis. Harum labore dolor optio provident quis dicta cum.', 'Suscipit delectus totam quis pariatur beatae corrupti dolor dolorum. Distinctio aliquid ut enim ducimus id nulla vel et. Iusto quis quas qui vel nostrum optio. Minus rerum commodi amet. Enim ex sit sit aut minima excepturi soluta culpa. Quisquam odio omnis voluptatem aut amet. Quis voluptatem dolorem aut est. Assumenda sed aspernatur rerum perferendis repellat velit tempora labore.', '420.00', NULL, 'DIGI470', 'instock', 0, 494, 'digital_21.jpg', NULL, 4, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(17, 'et deserunt nulla velit', 'et-deserunt-nulla-velit', 'Aut accusantium doloremque omnis quisquam. Blanditiis quasi officiis quas sit. Natus exercitationem et commodi natus sit.', 'Vel ea sed iste corrupti ut odit. Velit rerum rerum deleniti qui. Qui sint et et quis consequatur nemo vitae aliquam. Rerum harum et illo. Amet expedita sequi qui maxime. Vel explicabo quia architecto id perspiciatis possimus. Est voluptates sunt sint similique. Nesciunt excepturi repudiandae illum sequi qui ut. Non rerum amet voluptatum id consectetur autem. Pariatur optio corrupti odio unde.', '122.00', NULL, 'DIGI315', 'instock', 0, 277, 'digital_11.jpg', NULL, 2, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(18, 'enim qui minima necessitatibus', 'enim-qui-minima-necessitatibus', 'Est quos quia rerum mollitia fuga a provident. Qui placeat recusandae ut iste eos excepturi. Nulla at consequatur debitis adipisci amet quasi illo.', 'Iusto culpa deleniti et et consequuntur. Et ducimus id est ut similique. Possimus autem ut laboriosam. Laboriosam animi porro esse ducimus voluptas et. Cum praesentium est nemo fugit architecto. Harum quod omnis voluptatum. Libero est qui veritatis consectetur odit sint. Aliquid aspernatur quas distinctio voluptatem debitis. Enim eveniet sunt reprehenderit rerum. Itaque vero voluptatem explicabo debitis laudantium numquam esse. Vel perferendis consequatur ut beatae.', '426.00', NULL, 'DIGI379', 'instock', 0, 145, 'digital_9.jpg', NULL, 5, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(19, 'laborum molestiae quod quia', 'laborum-molestiae-quod-quia', 'Aspernatur doloremque deserunt cumque possimus aut quos. Aspernatur ipsum eligendi aut qui.', 'Non ea deserunt iusto adipisci ipsum sed harum. Quidem voluptatibus praesentium veniam quia est. Pariatur repudiandae blanditiis nostrum atque. Placeat est impedit magni quo. Quia delectus expedita nulla non magnam. Sapiente accusamus ipsa et eveniet voluptatem amet sunt. Inventore quia delectus autem neque in earum et. Odit qui ea natus voluptas et. Voluptatem quae rerum impedit occaecati sit voluptas similique. Nam qui ex maiores eos praesentium occaecati.', '90.00', NULL, 'DIGI217', 'instock', 0, 121, 'digital_19.jpg', NULL, 5, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(20, 'recusandae a praesentium consequuntur', 'recusandae-a-praesentium-consequuntur', 'Id quis aliquid nobis vel. Quia consequatur ut dolor ullam nihil qui adipisci. Ut quibusdam ipsum culpa harum excepturi. Aperiam dolor numquam impedit alias aspernatur quae.', 'Fugiat vero facere unde nobis qui. Veritatis ullam quidem voluptatum et placeat. Cumque repellendus et quidem sunt. Ratione nam magni est consequatur quo. In in quas ut. Atque sed modi odit aperiam atque. Voluptates inventore dicta et rerum fuga animi qui. Explicabo rerum ut ea possimus. Aut rerum nemo beatae voluptatibus non et excepturi. Sapiente ad tempore exercitationem pariatur provident ut eum. Praesentium quam ullam id. Labore sequi nihil et ratione iusto voluptas.', '191.00', NULL, 'DIGI110', 'instock', 0, 476, 'digital_20.jpg', NULL, 5, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(21, 'quod omnis voluptas sint', 'quod-omnis-voluptas-sint', 'Autem rerum temporibus aut fugiat quae ipsam et. Nobis doloremque eaque sunt placeat est. Repudiandae nam dolor odio sit quis non ducimus. Non voluptatem et quam atque mollitia non sapiente.', 'Enim quibusdam et vel aut. Sapiente excepturi repellat quo autem eum aut. Ex autem animi quia praesentium. Facilis enim dicta eligendi autem ipsam totam. Beatae voluptas nisi numquam laboriosam qui beatae. Et mollitia aperiam aut totam. Et et natus consequatur mollitia nesciunt natus sed. Porro culpa eveniet omnis animi dolor. At eaque ut qui. Sit non non enim dolores. Soluta sit voluptatibus maxime qui expedita eligendi delectus libero. In id ipsa facere quibusdam amet.', '286.00', NULL, 'DIGI308', 'instock', 0, 466, 'digital_13.jpg', NULL, 2, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(22, 'et et placeat harum', 'et-et-placeat-harum', 'Tenetur quasi dolorem maiores vel voluptatem dolore ex. Aut error maiores quam laudantium ipsa. Quia aut praesentium consequuntur nulla earum in eos.', 'Architecto aut natus et. Aliquid facere quidem laudantium aut sunt reiciendis. Exercitationem laborum dolorem qui est quis ea. Maiores omnis possimus hic voluptatibus quia repellat ratione. Architecto amet quam sed tempore. Culpa rerum at nesciunt qui ut voluptatibus. Rem delectus necessitatibus quos voluptatem quam autem. Voluptatum nulla distinctio nulla autem explicabo. Et molestiae autem sint.', '306.00', NULL, 'DIGI356', 'instock', 0, 424, 'digital_12.jpg', NULL, 2, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(23, 'magnam voluptatem repudiandae quis', 'magnam-voluptatem-repudiandae-quis', 'Consequatur sunt voluptatum explicabo nisi sed similique odit voluptatem. Et et quia optio animi. Nobis voluptatibus veniam est sint aut.', 'Molestiae necessitatibus ducimus nemo. Voluptatum sit quia dolore aperiam distinctio facilis. Non consequuntur ea nostrum saepe. Porro molestiae et quo molestiae consequatur non. Sed harum saepe perspiciatis optio excepturi quia accusamus. A dolores eveniet quisquam. Minima officia consequatur aliquam quis quia.', '82.00', NULL, 'DIGI414', 'instock', 0, 410, 'digital_3.jpg', NULL, 4, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(24, 'esse qui voluptatum officia', 'esse-qui-voluptatum-officia', 'Occaecati animi occaecati et. Ut maxime facilis ad vero. Iusto amet incidunt ratione natus eum.', 'Nam magnam et molestiae eos laboriosam consectetur natus. Ducimus aut facere voluptatem aut et eligendi. Quo eaque est quia culpa vel enim. Veniam sunt voluptatem et exercitationem. Quisquam aut quo aliquam voluptatem. Tenetur eos aut libero saepe eaque. Et quo vel est et atque facere id aliquam. Recusandae nesciunt labore et sint et et.', '495.00', NULL, 'DIGI102', 'instock', 0, 271, 'digital_4.jpg', NULL, 2, '2021-02-15 00:00:43', '2021-02-15 00:00:43'),
(25, 'eligendi rerum sequi a', 'eligendi-rerum-sequi-a', 'Accusantium velit aspernatur sit voluptates. Occaecati tenetur in est perferendis nisi. Voluptas quidem sed omnis voluptatem. Accusamus distinctio sapiente delectus dolorem culpa.', 'Rerum aliquam quo tenetur sit illum recusandae sit. Dolores quisquam recusandae est ex sit ducimus. Veritatis quis aut quia sapiente quisquam quo. Accusantium necessitatibus esse illo reprehenderit illum temporibus distinctio. Quia sint vitae voluptates nam eos. Assumenda consequatur dolor nostrum repellendus nobis. Sit non et est. Quo delectus quo maxime non.', '128.00', NULL, 'DIGI169', 'instock', 0, 352, 'digital_7.jpg', NULL, 1, '2021-02-15 00:00:44', '2021-02-15 00:00:44'),
(26, 'praesentium sed at nulla', 'praesentium-sed-at-nulla', 'Vel sed mollitia omnis esse quae non. Cum libero est magnam sint occaecati est. Fugit alias sed qui officiis.', 'Voluptates perspiciatis voluptatibus dolor veritatis molestiae. Voluptate deleniti minus magni eius quas commodi excepturi vitae. Qui aliquam alias modi nobis. Commodi et autem veritatis sit totam ratione porro. Beatae dolores qui quae et veniam minima vel. Impedit quo et labore est ex qui harum tenetur. Necessitatibus possimus ullam sint harum autem. Repudiandae et facilis molestias et quia error nobis similique. Et qui dolores placeat tempore esse.', '392.00', NULL, 'DIGI497', 'instock', 0, 369, 'digital_1.jpg', NULL, 3, '2021-02-15 00:00:44', '2021-02-15 00:00:44'),
(27, 'praesentium nostrum quia aliquid', 'praesentium-nostrum-quia-aliquid', 'Soluta minus possimus numquam aut consequuntur. Voluptate molestias id dicta ut. Eum in dolor tempore. Dolorem suscipit qui rem sit.', 'Non tempore enim architecto ducimus vitae. Tempore quia quaerat nam ipsam voluptatibus rerum autem. Ex sint sit libero et et et expedita temporibus. Ut voluptas est aut inventore corrupti. Molestiae quo veniam et dolorem unde. Eveniet sint sunt eligendi. Unde vel dolore officia tempora quia aliquid. Natus et maiores maxime ut sit et. Ea est quo ut maxime quasi. Quis neque distinctio itaque hic aut. In est et expedita distinctio distinctio tempora. Dolores ut ut rerum voluptatum qui.', '121.00', NULL, 'DIGI177', 'instock', 0, 150, 'digital_10.jpg', NULL, 2, '2021-02-15 00:00:44', '2021-02-15 00:00:44'),
(28, 'voluptatibus quo et molestiae', 'voluptatibus-quo-et-molestiae', 'Qui aliquid fugit reiciendis aut autem sunt. Qui voluptatibus non vel soluta incidunt. Tempore ab reprehenderit vel nisi qui cumque tenetur. Voluptatibus dolores aut et nam.', 'Saepe fugit vero voluptatibus omnis quis cumque veniam. Sed temporibus quaerat animi atque. Quo autem et officiis architecto magni. Necessitatibus sit non veniam. Molestias molestiae eos doloribus dolores id nulla. Ut ipsum eveniet sed recusandae repudiandae rerum. Voluptatem ut unde ratione eos consectetur. Iste odio molestiae et placeat.', '60.00', NULL, 'DIGI153', 'instock', 0, 483, 'digital_16.jpg', NULL, 3, '2021-02-15 00:00:44', '2021-02-15 00:00:44'),
(30, 'Men T-Shirt', 'men-t-shirt', 'INFLATION Men\'s Dress Shirts Slim', 'INFLATION Men Clothing - The Way to Be An Attractive Men! INFLATION brand is known since 1932, our company creates the high-quality concept, which is ...', '100.00', NULL, 'Shirt1234', 'instock', 0, 80, '1614522145.jpg', NULL, 11, '2021-02-28 08:22:25', '2021-02-28 08:22:25'),
(31, 'T_shirt', 't-shirt', '<p>Men\'s ruuning <strong>night grey </strong>tshirt</p>', '<p><span style=\"color: #555555; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Technical shirt with round neck. A striking design is created through sublimation. Features reflective elements on the front and back to improve visibility in low light situations.</span></p>\n<div><span style=\"color: #555555; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><strong>Sleeve:</strong> Short Sleeve</span></div>\n<div><span style=\"color: #555555; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><strong>Color:</strong> Grey</span></div>', '250.00', '230.00', 'SHIRT12345', 'instock', 0, 50, '1615705139.jpg', NULL, 11, '2021-03-14 00:58:59', '2021-03-14 00:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2021-04-12 05:24:16', 1, NULL, '2021-04-04 01:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FLAHzCblKuDp8SukFd7NrQnOUhFxETNItWpEtIss', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoia2ZsWWQ4SlJvTm5iTU1jZWc0dldYUXJkTzAxSXZ3c1hjNzA5ZzA3RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90aGFuay15b3UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6ImNhcnQiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czo1OiJ1dHlwZSI7czozOiJVU1IiO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRmU5QVZyVHNBblN3SmRXZTNIMGRBdUdYMTNvTmRZZ3h4bHJDOEJHaUxROU5Gckd0RTdjbXUiO30=', 1617983754);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 1, 'First1', 'Last', '1644396049', 'first1@last.com', '2/5/c', '2/4/d', 'Mohammadpur', 'Bangladesh', 'Dhaka', '1207', '2021-04-09 09:46:22', '2021-04-09 09:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'cod', 'pending', '2021-04-09 09:46:22', '2021-04-09 09:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$XNsE3iaLnesISq6cMAllnuWFSaNibKcIh52wDeiLJJtw1mF8nXWuC', NULL, NULL, '8TrvAXENKdUgsWuoI286t1blSSED5jwX8jWf9baxoBDIBOzsoLWKE1Mj2Frr', NULL, NULL, 'ADM', '2021-02-12 09:15:03', '2021-02-12 09:15:03'),
(2, 'User', 'user@user.com', NULL, '$2y$10$Fe9AVrTsAnSwJdWe3H0dAuGX13oNdYgxxlrC8BGiLQ9NFrGtE7cmu', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-02-12 09:15:40', '2021-02-12 09:15:40'),
(3, 'User2', 'user2@user.com', NULL, '$2y$10$OozbObZpB4gJ575am1yXYOWd1yKiafK4Zoq/O5sY2daq4cv7e2zZe', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-02-14 09:58:25', '2021-02-14 09:58:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
