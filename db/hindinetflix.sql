-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 03, 2022 at 10:17 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hindinetflix`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_07_20_231613_create_users_table', 1),
(2, '2022_07_21_003636_create_products_table', 1),
(3, '2022_07_21_015741_create_cart_table', 1),
(4, '2022_07_21_031549_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 'pending', 'cash', 'pending', 'paris st germain', NULL, NULL),
(2, 7, 1, 'pending', 'cash', 'pending', 'paris', NULL, NULL),
(4, 1, 1, 'pending', 'cash', 'pending', 'paris st germain', NULL, NULL),
(5, 3, 1, 'pending', 'cash', 'pending', 'paris st germain', NULL, NULL),
(6, 6, 1, 'pending', 'cash', 'pending', 'toulose', NULL, NULL),
(7, 10, 1, 'pending', 'cash', 'pending', 'toulose', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Oppo mobile', '300', 'mobile', 'A smartphone with 8gb ram and much more feature', 'https://thumbs.dreamstime.com/b/inde-assam-le-janvier-logo-d-oppo-sur-l-image-actions-%C3%A9cran-de-t%C3%A9l%C3%A9phone-207820101.jpg', NULL, NULL),
(2, 'Panasonic Tv', '400', 'tv', 'A smart tv with much more feature', 'https://i.gadgets360cdn.com/products/televisions/large/1548154685_832_panasonic_32-inch-lcd-full-hd-tv-th-l32u20.jpg', NULL, NULL),
(3, 'Soni Tv', '500', 'tv', 'A tv with much more feature', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', NULL, NULL),
(4, 'LG fridge', '200', 'fridge', 'A fridge with much more feature', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFx-2-wTOcfr5at01ojZWduXEm5cZ-sRYPJA&usqp=CAU', NULL, NULL),
(5, 'Balenciaga Speed 2.0 Black', '12', 'Balenciaga Speed 2.0 Black\r\n9.850,00 DH', 'Baskets Black Speed 2.0 de Balenciaga (VIP) avec logo imprimé sur le côté, orteil rond, cheville de style chaussette, longueur de la cheville et semelle en caoutchouc.', 'https://sneakers212.com/images/thumbs/000/0000826_balenciaga-speed-20-black_625.jpeg', NULL, NULL),
(6, 'Vaashi (2022 film)', '2', 'Vaashi (2022 film)', 'Vaashi is a 2022 Indian Malayalam-language courtroom drama film[2] written and directed by Vishnu G Raghav and produced by G Suresh Kumar and co-produced by Menaka Suresh and Revathy Suresh', 'https://upload.wikimedia.org/wikipedia/en/6/6c/Release_poster_of_Vaashi_%282022_film%29.jpeg', NULL, NULL),
(7, 'Nike Air Force One', '32', 'Chaussure de mode', 'Initialement créées dans les années 1980, elles furent une petite révolution technologique en elles-mêmes. ', 'https://leblogdemonsieur.com/wp-content/uploads/2020/06/histoire-nike-air-force-one-sketch.jpg?x37591', NULL, NULL),
(8, 'Buzz l’Éclair', '23', 'Angus MacLane  ', 'Disney et Pixar présentent “Buzz l’Éclair,” un film original. ', 'https://lumiere-a.akamaihd.net/v1/images/image_7338a114.jpeg?region=0,0,540,810&width=480', NULL, NULL),
(9, 'Réfrigérateur', '34', 'réfrigérateur/congélateur rétro à double porte KS 9957', 'apparence attrayante dans un design rétro élégant', 'https://www.cdiscount.com/pdt2/3/b/c/1/700x700/samrs50n3503bc/rw/samsung-rs50n3503bc-refrigerateur-americain-501-l.jpg', NULL, NULL),
(10, 'LEWATT', '45', 'LEWATT', 'Encore une grandeur capable de vous orienter dans le choix de vos luminaires LED', 'https://www.silamp.fr/Files/124801/Img/07/lampe-LED.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'lova', 'lova@gmail.com', '$2y$10$wzwxz6Rt3zJyUSWu7shAyuquHBNEjvQ2E/StlFW1qieqWS7n0q6za', NULL, NULL),
(2, 'clients1', 'client1@gmail.com', '$2y$10$hHTcsp8HKNy2prXlWIj0pu6d.T0Ziunu8nFrua1tkSQFx0QKQ.epm', '2022-07-28 14:49:19', '2022-07-28 14:49:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
