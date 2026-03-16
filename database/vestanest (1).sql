-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2026 at 01:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vestanest`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'user', 'User created', 'App\\Models\\User', 1, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Super\",\"last_name\":\"Admin\",\"email\":\"superadmin@vestanest.com\",\"phone\":\"+233244123456\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-18T23:47:27.000000Z\"}}', NULL, '2025-09-18 23:47:27', '2025-09-18 23:47:27'),
(2, 'user', 'User created', 'App\\Models\\User', 2, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Admin\",\"last_name\":\"User\",\"email\":\"admin@vestanest.com\",\"phone\":\"+233244123457\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-18T23:47:27.000000Z\"}}', NULL, '2025-09-18 23:47:27', '2025-09-18 23:47:27'),
(3, 'user', 'User created', 'App\\Models\\User', 3, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"John\",\"last_name\":\"Doe\",\"email\":\"agent@vestanest.com\",\"phone\":\"+233244123458\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-18T23:47:27.000000Z\"}}', NULL, '2025-09-18 23:47:27', '2025-09-18 23:47:27'),
(4, 'user', 'User created', 'App\\Models\\User', 4, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Jane\",\"last_name\":\"Smith\",\"email\":\"user@vestanest.com\",\"phone\":\"+233244123459\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-18T23:47:28.000000Z\"}}', NULL, '2025-09-18 23:47:28', '2025-09-18 23:47:28'),
(5, 'user', 'User created', 'App\\Models\\User', 5, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Gordon\",\"last_name\":\"Metz\",\"email\":\"agent1@vestanest.com\",\"phone\":\"+233244123461\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-11T06:39:19.000000Z\"}}', NULL, '2025-09-18 23:47:28', '2025-09-18 23:47:28'),
(6, 'user', 'User created', 'App\\Models\\User', 6, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Jena\",\"last_name\":\"Koss\",\"email\":\"agent2@vestanest.com\",\"phone\":\"+233244123462\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-17T15:21:16.000000Z\"}}', NULL, '2025-09-18 23:47:28', '2025-09-18 23:47:28'),
(7, 'user', 'User created', 'App\\Models\\User', 7, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Haley\",\"last_name\":\"King\",\"email\":\"agent3@vestanest.com\",\"phone\":\"+233244123463\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-12T22:55:30.000000Z\"}}', NULL, '2025-09-18 23:47:29', '2025-09-18 23:47:29'),
(8, 'user', 'User created', 'App\\Models\\User', 8, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Amara\",\"last_name\":\"Bahringer\",\"email\":\"agent4@vestanest.com\",\"phone\":\"+233244123464\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-01T00:12:52.000000Z\"}}', NULL, '2025-09-18 23:47:29', '2025-09-18 23:47:29'),
(9, 'user', 'User created', 'App\\Models\\User', 9, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Taryn\",\"last_name\":\"Wisoky\",\"email\":\"agent5@vestanest.com\",\"phone\":\"+233244123465\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-08-26T22:29:57.000000Z\"}}', NULL, '2025-09-18 23:47:29', '2025-09-18 23:47:29'),
(10, 'user', 'User created', 'App\\Models\\User', 10, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Lukas\",\"last_name\":\"Kuvalis\",\"email\":\"user1@vestanest.com\",\"phone\":\"+233244123471\",\"is_active\":true,\"is_verified\":false,\"avatar_url\":null,\"last_login_at\":\"2025-09-18T02:55:43.000000Z\"}}', NULL, '2025-09-18 23:47:30', '2025-09-18 23:47:30'),
(11, 'user', 'User created', 'App\\Models\\User', 11, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Jordon\",\"last_name\":\"Corwin\",\"email\":\"user2@vestanest.com\",\"phone\":\"+233244123472\",\"is_active\":true,\"is_verified\":false,\"avatar_url\":null,\"last_login_at\":\"2025-09-12T22:38:46.000000Z\"}}', NULL, '2025-09-18 23:47:30', '2025-09-18 23:47:30'),
(12, 'user', 'User created', 'App\\Models\\User', 12, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Tavares\",\"last_name\":\"Runte\",\"email\":\"user3@vestanest.com\",\"phone\":\"+233244123473\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-16T15:18:34.000000Z\"}}', NULL, '2025-09-18 23:47:30', '2025-09-18 23:47:30'),
(13, 'user', 'User created', 'App\\Models\\User', 13, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Mable\",\"last_name\":\"Hagenes\",\"email\":\"user4@vestanest.com\",\"phone\":\"+233244123474\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-16T00:42:06.000000Z\"}}', NULL, '2025-09-18 23:47:30', '2025-09-18 23:47:30'),
(14, 'user', 'User created', 'App\\Models\\User', 14, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Ruby\",\"last_name\":\"Emard\",\"email\":\"user5@vestanest.com\",\"phone\":\"+233244123475\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-18T05:18:56.000000Z\"}}', NULL, '2025-09-18 23:47:31', '2025-09-18 23:47:31'),
(15, 'user', 'User created', 'App\\Models\\User', 15, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Hope\",\"last_name\":\"Kshlerin\",\"email\":\"user6@vestanest.com\",\"phone\":\"+233244123476\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-16T16:32:46.000000Z\"}}', NULL, '2025-09-18 23:47:31', '2025-09-18 23:47:31'),
(16, 'user', 'User created', 'App\\Models\\User', 16, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Ross\",\"last_name\":\"Cassin\",\"email\":\"user7@vestanest.com\",\"phone\":\"+233244123477\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-12T12:07:54.000000Z\"}}', NULL, '2025-09-18 23:47:32', '2025-09-18 23:47:32'),
(17, 'user', 'User created', 'App\\Models\\User', 17, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Marty\",\"last_name\":\"VonRueden\",\"email\":\"user8@vestanest.com\",\"phone\":\"+233244123478\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-13T14:27:56.000000Z\"}}', NULL, '2025-09-18 23:47:32', '2025-09-18 23:47:32'),
(18, 'user', 'User created', 'App\\Models\\User', 18, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Olen\",\"last_name\":\"Moen\",\"email\":\"user9@vestanest.com\",\"phone\":\"+233244123479\",\"is_active\":true,\"is_verified\":false,\"avatar_url\":null,\"last_login_at\":\"2025-09-17T22:48:24.000000Z\"}}', NULL, '2025-09-18 23:47:32', '2025-09-18 23:47:32'),
(19, 'user', 'User created', 'App\\Models\\User', 19, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Miracle\",\"last_name\":\"Balistreri\",\"email\":\"user10@vestanest.com\",\"phone\":\"+233244123480\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-17T09:59:03.000000Z\"}}', NULL, '2025-09-18 23:47:32', '2025-09-18 23:47:32'),
(20, 'user', 'User created', 'App\\Models\\User', 20, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Burdette\",\"last_name\":\"Schneider\",\"email\":\"admin1@vestanest.com\",\"phone\":\"+233244123481\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-18T21:39:44.000000Z\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(21, 'user', 'User created', 'App\\Models\\User', 21, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Shanny\",\"last_name\":\"Zboncak\",\"email\":\"admin2@vestanest.com\",\"phone\":\"+233244123482\",\"is_active\":true,\"is_verified\":true,\"avatar_url\":null,\"last_login_at\":\"2025-09-17T13:14:32.000000Z\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(22, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 1, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Air Conditioning\",\"description\":\"Central air conditioning system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(23, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 2, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Heating\",\"description\":\"Central heating system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(24, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 3, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Parking\",\"description\":\"Dedicated parking space\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(25, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 4, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Balcony\",\"description\":\"Private balcony with outdoor space\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(26, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 5, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Garden\",\"description\":\"Private garden area\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(27, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 6, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Terrace\",\"description\":\"Outdoor terrace space\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(28, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 7, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Storage\",\"description\":\"Additional storage space\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(29, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 8, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Elevator\",\"description\":\"Building elevator access\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(30, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 9, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Pet Friendly\",\"description\":\"Pet-friendly property\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(31, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 10, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Furnished\",\"description\":\"Fully furnished property\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(32, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 11, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Swimming Pool\",\"description\":\"Private or shared swimming pool\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(33, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 12, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Gym\\/Fitness Center\",\"description\":\"On-site fitness facilities\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(34, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 13, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Spa\",\"description\":\"Spa and wellness facilities\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(35, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 14, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Concierge\",\"description\":\"24\\/7 concierge service\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(36, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 15, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Rooftop Access\",\"description\":\"Access to rooftop area\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(37, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 16, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Wine Cellar\",\"description\":\"Private wine storage\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(38, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 17, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Home Theater\",\"description\":\"Private home theater room\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(39, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 18, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Library\",\"description\":\"Private library space\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(40, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 19, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Wine Bar\",\"description\":\"Private wine bar area\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(41, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 20, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Butler Service\",\"description\":\"Personal butler service\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(42, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 21, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Security System\",\"description\":\"Advanced security system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(43, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 22, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"CCTV\",\"description\":\"24\\/7 CCTV surveillance\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(44, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 23, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Gated Community\",\"description\":\"Gated community access\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(45, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 24, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Security Guard\",\"description\":\"24\\/7 security personnel\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(46, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 25, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Intercom\",\"description\":\"Video intercom system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(47, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 26, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Safe\",\"description\":\"Built-in safe for valuables\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(48, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 27, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Alarm System\",\"description\":\"Burglar alarm system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(49, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 28, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Secure Parking\",\"description\":\"Secure underground parking\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(50, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 29, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"BBQ Area\",\"description\":\"Outdoor BBQ and dining area\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(51, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 30, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Playground\",\"description\":\"Children\'s playground\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(52, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 31, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Tennis Court\",\"description\":\"Private tennis court\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(53, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 32, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Basketball Court\",\"description\":\"Basketball court access\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(54, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 33, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Walking Trails\",\"description\":\"Nature walking trails\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(55, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 34, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Beach Access\",\"description\":\"Direct beach access\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(56, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 35, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Marina\",\"description\":\"Private marina access\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(57, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 36, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Golf Course\",\"description\":\"Golf course access\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(58, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 37, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Hiking Trails\",\"description\":\"Mountain hiking trails\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(59, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 38, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Boat Dock\",\"description\":\"Private boat dock\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(60, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 39, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"High-Speed Internet\",\"description\":\"Fiber optic internet connection\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(61, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 40, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Smart Home\",\"description\":\"Smart home automation system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(62, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 41, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Solar Panels\",\"description\":\"Solar power system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(63, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 42, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Generator\",\"description\":\"Backup power generator\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(64, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 43, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Water Heater\",\"description\":\"Instant water heating system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(65, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 44, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Dishwasher\",\"description\":\"Built-in dishwasher\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(66, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 45, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Washing Machine\",\"description\":\"In-unit washing machine\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(67, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 46, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Dryer\",\"description\":\"In-unit clothes dryer\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(68, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 47, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Central Vacuum\",\"description\":\"Central vacuum system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(69, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 48, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Fireplace\",\"description\":\"Gas or wood fireplace\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(70, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 49, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Modern Kitchen\",\"description\":\"Fully equipped modern kitchen\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(71, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 50, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Granite Countertops\",\"description\":\"Granite kitchen countertops\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(72, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 51, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Stainless Steel Appliances\",\"description\":\"High-end stainless steel appliances\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(73, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 52, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Island Kitchen\",\"description\":\"Kitchen with center island\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(74, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 53, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Walk-in Pantry\",\"description\":\"Large walk-in pantry\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(75, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 54, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Wine Fridge\",\"description\":\"Built-in wine refrigerator\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(76, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 55, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Coffee Machine\",\"description\":\"Built-in coffee machine\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(77, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 56, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Double Oven\",\"description\":\"Double wall oven setup\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(78, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 57, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Master Bathroom\",\"description\":\"Luxurious master bathroom\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(79, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 58, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Jacuzzi\",\"description\":\"Built-in jacuzzi tub\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(80, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 59, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Steam Shower\",\"description\":\"Steam shower system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(81, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 60, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Double Vanity\",\"description\":\"Double sink vanity\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(82, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 61, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Heated Floors\",\"description\":\"Heated bathroom floors\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(83, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 62, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Bidet\",\"description\":\"Bidet toilet system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(84, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 63, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Rain Shower\",\"description\":\"Rainfall shower head\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(85, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 64, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Marble Bathroom\",\"description\":\"Marble bathroom finishes\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(86, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 65, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Home Office\",\"description\":\"Dedicated home office space\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(87, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 66, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Conference Room\",\"description\":\"Private conference room\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(88, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 67, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Business Center\",\"description\":\"Shared business center\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(89, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 68, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"High-Speed WiFi\",\"description\":\"Commercial-grade WiFi\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(90, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 69, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Meeting Rooms\",\"description\":\"Private meeting rooms\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(91, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 70, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Coworking Space\",\"description\":\"Shared coworking area\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(92, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 71, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Printing Services\",\"description\":\"On-site printing services\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(93, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 72, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Mail Services\",\"description\":\"Package and mail handling\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(94, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 73, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Game Room\",\"description\":\"Private game room\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(95, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 74, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Pool Table\",\"description\":\"Built-in pool table\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(96, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 75, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Ping Pong Table\",\"description\":\"Table tennis setup\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(97, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 76, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Arcade Games\",\"description\":\"Classic arcade games\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(98, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 77, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Karaoke System\",\"description\":\"Built-in karaoke system\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(99, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 78, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Music Studio\",\"description\":\"Private music recording studio\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(100, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 79, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Art Studio\",\"description\":\"Dedicated art workspace\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(101, 'property_amenity', 'Property Amenity created', 'App\\Models\\PropertyAmenity', 80, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Dance Studio\",\"description\":\"Private dance practice space\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(102, 'property', 'Property created', 'App\\Models\\Property', 1, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Luxury Penthouse in Accra\",\"price\":\"2500000.00\",\"price_type\":\"sale\",\"property_type\":\"apartment\",\"status\":\"available\",\"is_featured\":true,\"bedrooms\":4,\"bathrooms\":3,\"area_sqm\":\"250.00\",\"area_sqft\":\"2690.00\",\"year_built\":2020,\"floors\":1,\"parking_spaces\":2,\"location\":\"Airport Residential Area, Accra\",\"city\":\"Accra\",\"region\":\"Greater Accra\",\"owner_id\":7,\"agent_id\":9}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(103, 'property', 'Property created', 'App\\Models\\Property', 2, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Modern Villa in East Legon\",\"price\":\"1800000.00\",\"price_type\":\"sale\",\"property_type\":\"villa\",\"status\":\"available\",\"is_featured\":true,\"bedrooms\":5,\"bathrooms\":4,\"area_sqm\":\"400.00\",\"area_sqft\":\"4305.00\",\"year_built\":2019,\"floors\":2,\"parking_spaces\":3,\"location\":\"East Legon, Accra\",\"city\":\"Accra\",\"region\":\"Greater Accra\",\"owner_id\":8,\"agent_id\":3}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(104, 'property', 'Property created', 'App\\Models\\Property', 3, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Beachfront House in Tema\",\"price\":\"3200000.00\",\"price_type\":\"sale\",\"property_type\":\"house\",\"status\":\"available\",\"is_featured\":true,\"bedrooms\":6,\"bathrooms\":5,\"area_sqm\":\"500.00\",\"area_sqft\":\"5382.00\",\"year_built\":2021,\"floors\":2,\"parking_spaces\":4,\"location\":\"Tema New Town, Tema\",\"city\":\"Tema\",\"region\":\"Greater Accra\",\"owner_id\":3,\"agent_id\":8}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(105, 'property', 'Property created', 'App\\Models\\Property', 4, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Cozy Apartment in Osu\",\"price\":\"2500.00\",\"price_type\":\"rent\",\"property_type\":\"apartment\",\"status\":\"available\",\"is_featured\":false,\"bedrooms\":2,\"bathrooms\":2,\"area_sqm\":\"85.00\",\"area_sqft\":\"915.00\",\"year_built\":2018,\"floors\":1,\"parking_spaces\":1,\"location\":\"Osu, Accra\",\"city\":\"Accra\",\"region\":\"Greater Accra\",\"owner_id\":7,\"agent_id\":8}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(106, 'property', 'Property created', 'App\\Models\\Property', 5, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Commercial Office Space in Labadi\",\"price\":\"15000.00\",\"price_type\":\"rent\",\"property_type\":\"office\",\"status\":\"available\",\"is_featured\":false,\"bedrooms\":0,\"bathrooms\":3,\"area_sqm\":\"300.00\",\"area_sqft\":\"3229.00\",\"year_built\":2020,\"floors\":1,\"parking_spaces\":8,\"location\":\"Labadi, Accra\",\"city\":\"Accra\",\"region\":\"Greater Accra\",\"owner_id\":3,\"agent_id\":6}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(107, 'property', 'Property created', 'App\\Models\\Property', 6, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Sunt earum ratione recusandae enim eligendi.\",\"price\":\"970795.91\",\"price_type\":\"rent\",\"property_type\":\"villa\",\"status\":\"off_market\",\"is_featured\":false,\"bedrooms\":7,\"bathrooms\":1,\"area_sqm\":\"239.47\",\"area_sqft\":\"6387.58\",\"year_built\":2005,\"floors\":3,\"parking_spaces\":3,\"location\":\"6644 Paucek Turnpike\",\"city\":\"Takoradi\",\"region\":\"Greater Accra\",\"owner_id\":7,\"agent_id\":3}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(108, 'property', 'Property created', 'App\\Models\\Property', 7, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Voluptatem est sed.\",\"price\":\"2653270.90\",\"price_type\":\"rent\",\"property_type\":\"commercial\",\"status\":\"sold\",\"is_featured\":false,\"bedrooms\":5,\"bathrooms\":3,\"area_sqm\":\"599.80\",\"area_sqft\":\"5704.69\",\"year_built\":2007,\"floors\":2,\"parking_spaces\":1,\"location\":\"944 Purdy Parkway Suite 389\",\"city\":\"Tamale\",\"region\":\"Northern\",\"owner_id\":9,\"agent_id\":6}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(109, 'property', 'Property created', 'App\\Models\\Property', 8, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Enim eligendi aspernatur nostrum ullam distinctio.\",\"price\":\"2383527.62\",\"price_type\":\"rent\",\"property_type\":\"house\",\"status\":\"available\",\"is_featured\":false,\"bedrooms\":7,\"bathrooms\":1,\"area_sqm\":\"518.52\",\"area_sqft\":\"6724.33\",\"year_built\":1991,\"floors\":2,\"parking_spaces\":5,\"location\":\"9805 Schiller Groves\",\"city\":\"Tamale\",\"region\":\"Northern\",\"owner_id\":9,\"agent_id\":8}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(110, 'property', 'Property created', 'App\\Models\\Property', 9, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Nihil rerum quia ab.\",\"price\":\"2660753.49\",\"price_type\":\"sale\",\"property_type\":\"townhouse\",\"status\":\"available\",\"is_featured\":false,\"bedrooms\":5,\"bathrooms\":4,\"area_sqm\":\"588.57\",\"area_sqft\":\"4843.13\",\"year_built\":1991,\"floors\":3,\"parking_spaces\":5,\"location\":\"529 Terence Burg\",\"city\":\"Cape Coast\",\"region\":\"Western\",\"owner_id\":7,\"agent_id\":9}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(111, 'property', 'Property created', 'App\\Models\\Property', 10, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Occaecati libero aspernatur voluptatem voluptatem.\",\"price\":\"1254940.38\",\"price_type\":\"sale\",\"property_type\":\"commercial\",\"status\":\"off_market\",\"is_featured\":true,\"bedrooms\":0,\"bathrooms\":5,\"area_sqm\":\"101.21\",\"area_sqft\":\"4128.06\",\"year_built\":2010,\"floors\":4,\"parking_spaces\":4,\"location\":\"3596 Mireille Junctions Suite 600\",\"city\":\"Accra\",\"region\":\"Central\",\"owner_id\":7,\"agent_id\":8}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(112, 'property', 'Property created', 'App\\Models\\Property', 11, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Tenetur est facere vitae.\",\"price\":\"1302220.20\",\"price_type\":\"rent\",\"property_type\":\"land\",\"status\":\"pending\",\"is_featured\":false,\"bedrooms\":8,\"bathrooms\":5,\"area_sqm\":\"184.47\",\"area_sqft\":\"2569.01\",\"year_built\":2023,\"floors\":3,\"parking_spaces\":4,\"location\":\"83665 Verla Corner\",\"city\":\"Cape Coast\",\"region\":\"Western\",\"owner_id\":6,\"agent_id\":7}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(113, 'property', 'Property created', 'App\\Models\\Property', 12, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Accusamus nam qui.\",\"price\":\"589555.90\",\"price_type\":\"rent\",\"property_type\":\"villa\",\"status\":\"off_market\",\"is_featured\":false,\"bedrooms\":4,\"bathrooms\":1,\"area_sqm\":\"379.00\",\"area_sqft\":\"8410.81\",\"year_built\":1995,\"floors\":4,\"parking_spaces\":6,\"location\":\"1198 Lucas Glen\",\"city\":\"Tamale\",\"region\":\"Northern\",\"owner_id\":3,\"agent_id\":7}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(114, 'property', 'Property created', 'App\\Models\\Property', 13, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Eos ea velit.\",\"price\":\"740124.04\",\"price_type\":\"rent\",\"property_type\":\"commercial\",\"status\":\"pending\",\"is_featured\":false,\"bedrooms\":4,\"bathrooms\":2,\"area_sqm\":\"488.41\",\"area_sqft\":\"2799.36\",\"year_built\":1992,\"floors\":5,\"parking_spaces\":4,\"location\":\"466 Autumn Circles Apt. 277\",\"city\":\"Kumasi\",\"region\":\"Central\",\"owner_id\":7,\"agent_id\":9}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(115, 'property', 'Property created', 'App\\Models\\Property', 14, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Quidem quia sit autem.\",\"price\":\"3973476.51\",\"price_type\":\"sale\",\"property_type\":\"commercial\",\"status\":\"sold\",\"is_featured\":false,\"bedrooms\":4,\"bathrooms\":4,\"area_sqm\":\"48.68\",\"area_sqft\":\"5636.32\",\"year_built\":2003,\"floors\":4,\"parking_spaces\":1,\"location\":\"503 Grady Crescent\",\"city\":\"Accra\",\"region\":\"Northern\",\"owner_id\":5,\"agent_id\":8}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(116, 'property', 'Property created', 'App\\Models\\Property', 15, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Non ut officia.\",\"price\":\"1934783.55\",\"price_type\":\"sale\",\"property_type\":\"house\",\"status\":\"available\",\"is_featured\":true,\"bedrooms\":0,\"bathrooms\":5,\"area_sqm\":\"233.28\",\"area_sqft\":\"5999.46\",\"year_built\":2015,\"floors\":2,\"parking_spaces\":2,\"location\":\"624 Judson Station\",\"city\":\"Tamale\",\"region\":\"Western\",\"owner_id\":3,\"agent_id\":8}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(117, 'property', 'Property created', 'App\\Models\\Property', 16, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Rerum error accusantium modi.\",\"price\":\"515955.11\",\"price_type\":\"rent\",\"property_type\":\"villa\",\"status\":\"sold\",\"is_featured\":false,\"bedrooms\":7,\"bathrooms\":3,\"area_sqm\":\"223.50\",\"area_sqft\":\"7611.98\",\"year_built\":2000,\"floors\":4,\"parking_spaces\":3,\"location\":\"731 Felicia Expressway Suite 872\",\"city\":\"Cape Coast\",\"region\":\"Ashanti\",\"owner_id\":6,\"agent_id\":6}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(118, 'property', 'Property created', 'App\\Models\\Property', 17, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Voluptas ipsam dolorum incidunt error.\",\"price\":\"1120229.28\",\"price_type\":\"rent\",\"property_type\":\"villa\",\"status\":\"rented\",\"is_featured\":true,\"bedrooms\":3,\"bathrooms\":3,\"area_sqm\":\"627.64\",\"area_sqft\":\"2788.70\",\"year_built\":2023,\"floors\":1,\"parking_spaces\":3,\"location\":\"489 Flavio Valley Apt. 993\",\"city\":\"Kumasi\",\"region\":\"Northern\",\"owner_id\":8,\"agent_id\":5}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(119, 'property', 'Property created', 'App\\Models\\Property', 18, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Nihil sed et optio.\",\"price\":\"3166291.71\",\"price_type\":\"rent\",\"property_type\":\"apartment\",\"status\":\"rented\",\"is_featured\":false,\"bedrooms\":8,\"bathrooms\":4,\"area_sqm\":\"861.26\",\"area_sqft\":\"5417.36\",\"year_built\":2023,\"floors\":2,\"parking_spaces\":1,\"location\":\"682 Eveline Locks Apt. 806\",\"city\":\"Cape Coast\",\"region\":\"Greater Accra\",\"owner_id\":3,\"agent_id\":3}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(120, 'property', 'Property created', 'App\\Models\\Property', 19, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Commodi dolorum perferendis illo sit.\",\"price\":\"1560620.77\",\"price_type\":\"sale\",\"property_type\":\"commercial\",\"status\":\"pending\",\"is_featured\":false,\"bedrooms\":6,\"bathrooms\":6,\"area_sqm\":\"551.63\",\"area_sqft\":\"7894.73\",\"year_built\":2011,\"floors\":1,\"parking_spaces\":0,\"location\":\"17547 Anna Roads Suite 523\",\"city\":\"Kumasi\",\"region\":\"Northern\",\"owner_id\":6,\"agent_id\":9}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(121, 'property', 'Property created', 'App\\Models\\Property', 20, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Quaerat et et distinctio delectus.\",\"price\":\"4837974.63\",\"price_type\":\"rent\",\"property_type\":\"office\",\"status\":\"sold\",\"is_featured\":false,\"bedrooms\":6,\"bathrooms\":4,\"area_sqm\":\"474.60\",\"area_sqft\":\"5252.75\",\"year_built\":1998,\"floors\":2,\"parking_spaces\":6,\"location\":\"82073 Kaylee Summit\",\"city\":\"Kumasi\",\"region\":\"Western\",\"owner_id\":8,\"agent_id\":5}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(122, 'property', 'Property created', 'App\\Models\\Property', 21, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Quos ipsam sequi iste.\",\"price\":\"90735.08\",\"price_type\":\"sale\",\"property_type\":\"apartment\",\"status\":\"off_market\",\"is_featured\":true,\"bedrooms\":4,\"bathrooms\":4,\"area_sqm\":\"490.21\",\"area_sqft\":\"6060.24\",\"year_built\":2006,\"floors\":2,\"parking_spaces\":3,\"location\":\"374 Shanie Garden\",\"city\":\"Accra\",\"region\":\"Greater Accra\",\"owner_id\":8,\"agent_id\":5}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(123, 'property', 'Property created', 'App\\Models\\Property', 22, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Est consequatur consectetur unde.\",\"price\":\"4143891.38\",\"price_type\":\"sale\",\"property_type\":\"land\",\"status\":\"pending\",\"is_featured\":false,\"bedrooms\":1,\"bathrooms\":6,\"area_sqm\":\"222.30\",\"area_sqft\":\"8847.71\",\"year_built\":1999,\"floors\":3,\"parking_spaces\":0,\"location\":\"74025 Zola Fords\",\"city\":\"Cape Coast\",\"region\":\"Greater Accra\",\"owner_id\":5,\"agent_id\":6}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(124, 'property', 'Property created', 'App\\Models\\Property', 23, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Modi et culpa.\",\"price\":\"3323922.65\",\"price_type\":\"sale\",\"property_type\":\"house\",\"status\":\"pending\",\"is_featured\":false,\"bedrooms\":2,\"bathrooms\":3,\"area_sqm\":\"194.37\",\"area_sqft\":\"5371.75\",\"year_built\":2019,\"floors\":4,\"parking_spaces\":6,\"location\":\"2554 Haleigh Spring\",\"city\":\"Kumasi\",\"region\":\"Ashanti\",\"owner_id\":6,\"agent_id\":6}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(125, 'property', 'Property created', 'App\\Models\\Property', 24, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Voluptatum possimus veritatis.\",\"price\":\"4260056.51\",\"price_type\":\"rent\",\"property_type\":\"office\",\"status\":\"pending\",\"is_featured\":false,\"bedrooms\":5,\"bathrooms\":3,\"area_sqm\":\"577.80\",\"area_sqft\":\"9372.30\",\"year_built\":1992,\"floors\":2,\"parking_spaces\":3,\"location\":\"924 Ryan Divide\",\"city\":\"Accra\",\"region\":\"Western\",\"owner_id\":9,\"agent_id\":9}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(126, 'property', 'Property created', 'App\\Models\\Property', 25, 'created', NULL, NULL, '{\"attributes\":{\"title\":\"Fugiat reiciendis qui.\",\"price\":\"1126492.70\",\"price_type\":\"rent\",\"property_type\":\"townhouse\",\"status\":\"rented\",\"is_featured\":true,\"bedrooms\":7,\"bathrooms\":6,\"area_sqm\":\"141.30\",\"area_sqft\":\"6490.59\",\"year_built\":2011,\"floors\":3,\"parking_spaces\":6,\"location\":\"4431 Senger Ford Apt. 823\",\"city\":\"Accra\",\"region\":\"Ashanti\",\"owner_id\":9,\"agent_id\":5}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(127, 'default', 'created', 'App\\Models\\ContactMessage', 1, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Kwame Asante\",\"email\":\"kwame.asante@email.com\",\"phone\":\"+233244123456\",\"subject\":\"Property Investment Inquiry\",\"message\":\"I am interested in investing in properties in Accra. Could you please provide me with information about your investment opportunities and expected returns?\",\"message_type\":\"general\",\"status\":\"new\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(128, 'default', 'created', 'App\\Models\\ContactMessage', 2, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Ama Serwaa\",\"email\":\"ama.serwaa@email.com\",\"phone\":\"+233244123457\",\"subject\":\"Technical Support Request\",\"message\":\"I am having trouble uploading property images on your website. The upload keeps failing and I receive an error message. Can you help me resolve this issue?\",\"message_type\":\"support\",\"status\":\"read\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(129, 'default', 'created', 'App\\Models\\ContactMessage', 3, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"David Osei\",\"email\":\"david.osei@company.com\",\"phone\":\"+233244123458\",\"subject\":\"Partnership Proposal\",\"message\":\"We are a real estate development company looking to partner with VestaNest. We have several projects in Kumasi and would like to discuss potential collaboration opportunities.\",\"message_type\":\"partnership\",\"status\":\"replied\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(130, 'default', 'created', 'App\\Models\\ContactMessage', 4, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Grace Mensah\",\"email\":\"grace.mensah@email.com\",\"phone\":\"+233244123459\",\"subject\":\"Website Feedback\",\"message\":\"I love using your platform! The property search functionality is excellent. However, I would suggest adding a map view option to make it easier to see property locations.\",\"message_type\":\"feedback\",\"status\":\"closed\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(131, 'default', 'created', 'App\\Models\\ContactMessage', 5, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Michael Boateng\",\"email\":\"michael.boateng@email.com\",\"phone\":\"+233244123460\",\"subject\":\"Property Listing Question\",\"message\":\"I am a property owner and would like to list my property on your platform. What are the requirements and fees involved?\",\"message_type\":\"general\",\"status\":\"new\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(132, 'default', 'created', 'App\\Models\\ContactMessage', 6, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Lon Ortiz\",\"email\":\"anika.abshire@example.net\",\"phone\":\"+233244904397\",\"subject\":\"Impedit hic.\",\"message\":\"Delectus quia et molestias sit nisi. Et ipsam occaecati vel veniam veritatis. Inventore ratione perspiciatis est dolores.\\n\\nSuscipit est consectetur magnam ab nobis sapiente eveniet. Sunt excepturi beatae facere ullam velit. Nesciunt tempore quia dolorem rem possimus dolores ex.\",\"message_type\":\"general\",\"status\":\"read\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(133, 'default', 'created', 'App\\Models\\ContactMessage', 7, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Prof. Jerald Funk I\",\"email\":\"istiedemann@example.com\",\"phone\":\"+233244920124\",\"subject\":\"Sunt vero et.\",\"message\":\"Recusandae eveniet et labore ratione facilis laborum accusantium. Odio consequuntur dolore voluptatem dolor eligendi. Eligendi dolor et doloremque quaerat quas. Nesciunt est ut sunt molestiae. Tenetur assumenda voluptatem soluta enim sapiente recusandae excepturi voluptatibus.\\n\\nEsse harum animi et quasi laborum. Quam animi asperiores et nostrum adipisci est et. Doloribus natus eos et velit.\",\"message_type\":\"partnership\",\"status\":\"read\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(134, 'default', 'created', 'App\\Models\\ContactMessage', 8, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Dr. Lonny Pfannerstill\",\"email\":\"betty52@example.org\",\"phone\":\"+233244150355\",\"subject\":\"Molestias hic sunt.\",\"message\":\"Qui perferendis non aliquam odit libero. Aut velit ut quo tempora. Temporibus dolores error eligendi enim.\\n\\nUnde quaerat rerum voluptates id et iste. Vitae sunt rerum aut non accusantium rerum dolores. Illum velit omnis aspernatur maiores aut ex.\",\"message_type\":\"general\",\"status\":\"new\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(135, 'default', 'created', 'App\\Models\\ContactMessage', 9, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Prof. Pierce Bednar\",\"email\":\"nschumm@example.org\",\"phone\":\"+233244454837\",\"subject\":\"Quo est sapiente quisquam.\",\"message\":\"Consequatur quisquam aut commodi nobis porro corporis quisquam. Rem iure repellat quia tempore soluta deleniti nobis dolor. Dicta nobis iste eius esse quis labore.\\n\\nImpedit porro porro sit laborum perferendis. Voluptatem non qui id reiciendis et. Consequuntur eos recusandae quae harum sed.\",\"message_type\":\"feedback\",\"status\":\"read\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(136, 'default', 'created', 'App\\Models\\ContactMessage', 10, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Kelvin Schroeder II\",\"email\":\"lisa40@example.org\",\"phone\":\"+233244934366\",\"subject\":\"Expedita praesentium.\",\"message\":\"Officiis veniam saepe sapiente et cumque. Voluptas quo eaque ad consectetur. Ut reiciendis excepturi ex libero impedit iste. Qui ut tenetur quidem.\\n\\nAccusantium quibusdam deleniti aut provident qui. Vero quia cumque commodi laborum in. Ab consequatur qui odio recusandae voluptatum est.\",\"message_type\":\"general\",\"status\":\"new\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(137, 'default', 'created', 'App\\Models\\ContactMessage', 11, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Eryn Willms II\",\"email\":\"jaylin.langworth@example.net\",\"phone\":\"+233244294148\",\"subject\":\"Et voluptatem aperiam.\",\"message\":\"Libero non et pariatur deleniti sed. Neque est qui pariatur. Id praesentium quia totam consequatur vitae.\\n\\nQui sequi odio quasi cumque perferendis quasi. Repellat inventore consequatur aut qui ab. Quisquam autem et tempora sed. Est cumque nesciunt quisquam magni.\",\"message_type\":\"feedback\",\"status\":\"replied\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(138, 'default', 'created', 'App\\Models\\ContactMessage', 12, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Bret Cole\",\"email\":\"murazik.aida@example.net\",\"phone\":\"+233244654841\",\"subject\":\"Nemo illum exercitationem vero.\",\"message\":\"Placeat sint incidunt assumenda et fugit totam cum. Ullam nostrum labore distinctio ut aliquam non. Ab ipsa iure officiis sequi ut. Architecto alias quasi voluptate autem voluptatem odit.\\n\\nUt aut doloremque ex excepturi ex est quidem. Autem expedita facere qui hic optio et. Nemo quia neque a. Eius dolorem sit id eum et ut.\",\"message_type\":\"partnership\",\"status\":\"new\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(139, 'default', 'created', 'App\\Models\\ContactMessage', 13, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Dedric Bernier\",\"email\":\"aframi@example.com\",\"phone\":\"+233244635426\",\"subject\":\"Ut voluptatum voluptatem culpa asperiores.\",\"message\":\"Sequi sed ex quis laboriosam consequatur. Illo voluptatem laudantium quia optio blanditiis animi quas. Ab aut voluptas consequatur ea sed aut velit.\\n\\nEveniet et deleniti nobis enim quia ipsam. Molestias harum sunt vitae sit eos. Exercitationem sapiente et et dignissimos laboriosam molestiae.\",\"message_type\":\"feedback\",\"status\":\"read\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(140, 'default', 'created', 'App\\Models\\ContactMessage', 14, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Katelin Douglas\",\"email\":\"wdooley@example.org\",\"phone\":\"+233244855607\",\"subject\":\"Ut sequi totam placeat ut.\",\"message\":\"Veritatis nemo voluptatem dolorem ut eum qui. Sint magnam dignissimos sit fugit voluptate molestiae et. Voluptatum in id et distinctio nulla. Est iure quidem necessitatibus porro cumque.\\n\\nQuidem ipsum est ducimus laudantium enim commodi aut et. Similique consequuntur accusantium illo quis veniam. Culpa quo aut debitis voluptates. Sunt unde accusantium non dolor enim.\",\"message_type\":\"support\",\"status\":\"read\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(141, 'default', 'created', 'App\\Models\\ContactMessage', 15, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Dr. Yasmin Harris MD\",\"email\":\"rudy32@example.net\",\"phone\":\"+233244085500\",\"subject\":\"Voluptatum est consequuntur.\",\"message\":\"Nostrum et voluptatem facilis. Consectetur blanditiis placeat occaecati quasi amet ab eligendi. Voluptatem nostrum voluptatem adipisci vero quos sed asperiores. Ut dolores veniam deserunt quas.\\n\\nAut placeat qui sit laudantium debitis. Possimus tenetur explicabo enim ex dicta.\",\"message_type\":\"support\",\"status\":\"read\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(142, 'default', 'created', 'App\\Models\\ContactMessage', 16, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Prof. Tomasa Kessler\",\"email\":\"elouise73@example.com\",\"phone\":\"+233244963489\",\"subject\":\"Pariatur expedita ex iure.\",\"message\":\"Error accusamus sed et aspernatur eum ratione. Veniam est ex explicabo quis neque. Officia assumenda laboriosam qui inventore reiciendis et asperiores.\\n\\nEnim est eos sit perspiciatis sapiente. Ut consectetur et fugit. Ipsam odit odio qui eligendi. Perspiciatis voluptas id sit beatae dicta consequatur accusamus et. Vero id rerum ea animi.\",\"message_type\":\"general\",\"status\":\"read\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(143, 'default', 'created', 'App\\Models\\ContactMessage', 17, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Clint Hills\",\"email\":\"victoria74@example.com\",\"phone\":\"+233244818401\",\"subject\":\"Aut necessitatibus harum.\",\"message\":\"Accusantium distinctio quia nesciunt officiis esse quia excepturi. Est minima qui et. Fugiat qui ipsam in et consequatur praesentium ut est. Ducimus odio nisi officiis est.\\n\\nSuscipit enim perferendis modi corporis. Illo sunt assumenda beatae in. Quibusdam aliquam quia quibusdam alias voluptatibus. Perferendis vel aut omnis nesciunt.\",\"message_type\":\"support\",\"status\":\"read\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(144, 'default', 'created', 'App\\Models\\ContactMessage', 18, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Alexandrea O\'Hara\",\"email\":\"vmarquardt@example.com\",\"phone\":\"+233244511459\",\"subject\":\"Necessitatibus nulla magnam necessitatibus.\",\"message\":\"Rerum veritatis nihil officiis. Animi asperiores inventore nihil molestias sed. Nesciunt cupiditate sit quia nihil officiis. Et aspernatur minima voluptatem distinctio adipisci perspiciatis.\\n\\nQui velit fugiat officia possimus. Ea et aut eligendi. Unde id excepturi ut et nihil nesciunt ad. Veritatis quae possimus voluptas qui odit.\",\"message_type\":\"partnership\",\"status\":\"replied\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(145, 'default', 'created', 'App\\Models\\ContactMessage', 19, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Miguel Schaden\",\"email\":\"greyson75@example.com\",\"phone\":\"+233244634748\",\"subject\":\"Totam soluta recusandae id.\",\"message\":\"Harum ipsa nostrum ratione nam aliquam dicta iusto. Harum ut aliquam praesentium praesentium commodi. Repudiandae sunt asperiores ea velit eligendi ut.\\n\\nCumque ea non temporibus in. Id similique ut aut consequuntur.\",\"message_type\":\"feedback\",\"status\":\"closed\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(146, 'default', 'created', 'App\\Models\\ContactMessage', 20, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Mercedes Gerhold\",\"email\":\"jwilkinson@example.com\",\"phone\":\"+233244270805\",\"subject\":\"Aut eos.\",\"message\":\"Perspiciatis sit optio ullam est id sit. Hic dignissimos quas corporis et laborum quis officia. Aut velit alias ea est totam. Illum accusamus velit soluta molestias saepe itaque.\\n\\nEligendi velit voluptas tempora repudiandae et laudantium ratione. Tempore laudantium optio odit incidunt temporibus iure nam. Unde dolor laudantium optio culpa. Impedit est ut ratione maxime.\",\"message_type\":\"support\",\"status\":\"replied\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(147, 'default', 'created', 'App\\Models\\Inquiry', 1, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":4,\"name\":\"Sarah Johnson\",\"email\":\"sarah.johnson@email.com\",\"phone\":\"+233244123456\",\"message\":\"I am very interested in viewing this property. I would like to schedule a viewing for this weekend if possible. Please let me know the available time slots.\",\"inquiry_type\":\"viewing\",\"status\":\"new\",\"preferred_date\":\"2025-09-21T00:00:00.000000Z\",\"preferred_time\":\"10:00:00\",\"agent_notes\":\"Client seems very interested. Follow up within 24 hours.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(148, 'default', 'created', 'App\\Models\\Inquiry', 2, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":4,\"name\":\"Emmanuel Kofi\",\"email\":\"emmanuel.kofi@email.com\",\"phone\":\"+233244123457\",\"message\":\"Could you please provide more information about the property taxes, HOA fees, and any additional costs associated with this property?\",\"inquiry_type\":\"information\",\"status\":\"contacted\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":\"Information requested sent via email. Waiting for response.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(149, 'default', 'created', 'App\\Models\\Inquiry', 3, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":13,\"name\":\"Adwoa Mensah\",\"email\":\"adwoa.mensah@email.com\",\"phone\":\"+233244123458\",\"message\":\"I would like to make an offer on this property. My offer is $2,200,000. I am pre-approved for financing and can close within 30 days.\",\"inquiry_type\":\"offer\",\"status\":\"scheduled\",\"preferred_date\":\"2025-09-19T00:00:00.000000Z\",\"preferred_time\":\"14:00:00\",\"agent_notes\":\"Serious buyer with pre-approval. Meeting scheduled to discuss offer details.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(150, 'default', 'created', 'App\\Models\\Inquiry', 4, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":11,\"name\":\"Kwaku Boateng\",\"email\":\"kwaku.boateng@email.com\",\"phone\":\"+233244123459\",\"message\":\"I am looking for properties in this area for investment purposes. Do you have any other similar properties available?\",\"inquiry_type\":\"general\",\"status\":\"completed\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":\"Provided list of similar investment properties. Client is reviewing options.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(151, 'default', 'created', 'App\\Models\\Inquiry', 5, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":10,\"name\":\"Akosua Asante\",\"email\":\"akosua.asante@email.com\",\"phone\":\"+233244123460\",\"message\":\"I was interested in this property but have decided to look elsewhere. Thank you for your time.\",\"inquiry_type\":\"general\",\"status\":\"cancelled\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":\"Client decided not to proceed. No further action needed.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(152, 'default', 'created', 'App\\Models\\Inquiry', 6, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":null,\"name\":\"Wava Goodwin\",\"email\":\"hettinger.amos@example.net\",\"phone\":\"+233244989457\",\"message\":\"Voluptatem suscipit libero aut mollitia nemo sit. Sint qui nisi eligendi nihil. Laboriosam unde harum necessitatibus dolorem praesentium est.\\n\\nA nulla accusamus ad eveniet iste ut quia. Dolorem a quis libero reprehenderit blanditiis ipsam.\",\"inquiry_type\":\"general\",\"status\":\"cancelled\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(153, 'default', 'created', 'App\\Models\\Inquiry', 7, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":12,\"name\":\"Shawna Grant\",\"email\":\"giovani.krajcik@example.com\",\"phone\":\"+233244706722\",\"message\":\"Velit quaerat ab soluta ducimus ut quia. Omnis repellat iusto sit non optio reprehenderit. Et ut consequatur quis. Assumenda nesciunt quis facere itaque.\\n\\nUllam qui atque voluptatem illo eius nulla. Quod similique voluptatibus excepturi. Laborum sapiente molestiae autem minima dolor. Dolorem odio ipsam cum nam eligendi excepturi sunt.\",\"inquiry_type\":\"offer\",\"status\":\"new\",\"preferred_date\":\"2025-09-19T00:00:00.000000Z\",\"preferred_time\":null,\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(154, 'default', 'created', 'App\\Models\\Inquiry', 8, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"name\":\"Newell McCullough\",\"email\":\"pmclaughlin@example.com\",\"phone\":\"+233244524668\",\"message\":\"Quidem aspernatur doloremque eum omnis. Labore aut laborum assumenda adipisci ipsum accusantium. Neque eius rerum cupiditate et ut dolorem.\\n\\nQui iusto est est dolor in rerum. Enim exercitationem dolores cum sint aliquid et omnis quis. Mollitia quis deserunt aut magni asperiores ducimus.\",\"inquiry_type\":\"offer\",\"status\":\"cancelled\",\"preferred_date\":\"2025-10-14T00:00:00.000000Z\",\"preferred_time\":\"20:47:38\",\"agent_notes\":\"Quo commodi sunt ipsa sapiente voluptates qui.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(155, 'default', 'created', 'App\\Models\\Inquiry', 9, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":null,\"name\":\"Helene Breitenberg\",\"email\":\"ila27@example.org\",\"phone\":\"+233244210199\",\"message\":\"Eos in quidem doloribus omnis nam modi. Voluptatum et aliquam qui eaque cupiditate magni nemo. Debitis nobis atque omnis est. Perferendis voluptas enim totam quia. Velit eum dolorum magnam qui aliquid aliquam nihil voluptate.\\n\\nRerum ut in veniam quis maxime. Sit sit error veniam voluptatem voluptatem deleniti sequi rem. Hic quia eum et distinctio sed autem. Aliquam non ea quia recusandae.\",\"inquiry_type\":\"general\",\"status\":\"new\",\"preferred_date\":\"2025-09-23T00:00:00.000000Z\",\"preferred_time\":\"21:43:32\",\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(156, 'default', 'created', 'App\\Models\\Inquiry', 10, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":10,\"name\":\"Darrin Barton\",\"email\":\"qmuller@example.com\",\"phone\":\"+233244299543\",\"message\":\"Consequatur nobis recusandae ut consequatur. Optio rerum rerum eligendi ad eum eos quisquam. Tempore ab sunt aspernatur est repellendus libero praesentium. Id non illo impedit.\\n\\nVoluptatem veniam excepturi magnam qui rerum. Vitae repellat amet hic blanditiis dolores ut similique. Quis minima iure ex ut voluptatem dicta.\",\"inquiry_type\":\"general\",\"status\":\"scheduled\",\"preferred_date\":\"2025-10-16T00:00:00.000000Z\",\"preferred_time\":\"06:24:32\",\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(157, 'default', 'created', 'App\\Models\\Inquiry', 11, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":null,\"name\":\"Branson Reynolds\",\"email\":\"macy92@example.net\",\"phone\":\"+233244056305\",\"message\":\"Sed mollitia dolores nihil corporis accusamus eos. Voluptas voluptatibus maiores sed nihil quo et libero. Distinctio est officia vel. Voluptas accusamus necessitatibus corrupti rerum ullam repellendus.\\n\\nQuam cum rerum sapiente enim expedita. Minima similique laborum rerum nostrum earum omnis. Aut nemo velit dolores neque. Eveniet qui sapiente sit accusamus aliquam reprehenderit qui assumenda.\",\"inquiry_type\":\"general\",\"status\":\"cancelled\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(158, 'default', 'created', 'App\\Models\\Inquiry', 12, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"name\":\"Mr. Kale Hand DVM\",\"email\":\"bstehr@example.com\",\"phone\":\"+233244069396\",\"message\":\"Ut asperiores ut est sed. Voluptatem voluptas assumenda minus voluptas velit alias consequatur. Dicta aperiam sed nesciunt nam maiores eius atque.\\n\\nPlaceat odit necessitatibus modi vel. Qui architecto sit omnis suscipit odit est. Culpa ipsum impedit quidem sit. Sunt neque blanditiis cumque molestiae.\",\"inquiry_type\":\"viewing\",\"status\":\"completed\",\"preferred_date\":\"2025-09-23T00:00:00.000000Z\",\"preferred_time\":null,\"agent_notes\":\"Dolores possimus quam aut veritatis.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(159, 'default', 'created', 'App\\Models\\Inquiry', 13, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":17,\"name\":\"Sandrine McGlynn PhD\",\"email\":\"drath@example.net\",\"phone\":\"+233244165072\",\"message\":\"Atque sunt est nihil in. Consequuntur enim et dolore magni. Ut explicabo itaque voluptates quo atque. Dignissimos harum aliquid explicabo dolore rem sunt consequatur eligendi.\\n\\nConsequatur eligendi et magnam. Est sequi minima nihil quo et similique voluptatem. Porro id nemo voluptatum dolore cumque ea. Ab iure non hic corporis.\",\"inquiry_type\":\"general\",\"status\":\"scheduled\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":\"Rem recusandae ut dolorum sint inventore corrupti.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(160, 'default', 'created', 'App\\Models\\Inquiry', 14, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":null,\"name\":\"Braeden Raynor\",\"email\":\"devonte.schulist@example.com\",\"phone\":\"+233244592233\",\"message\":\"Suscipit ut omnis maiores error. Est soluta nesciunt minus beatae magni vel. Quis et dolor ullam distinctio.\\n\\nLaudantium quaerat esse aut et. Corrupti non soluta optio aut. Enim molestiae tempore at atque. Quaerat nihil aut hic neque voluptas est distinctio.\",\"inquiry_type\":\"viewing\",\"status\":\"cancelled\",\"preferred_date\":\"2025-10-01T00:00:00.000000Z\",\"preferred_time\":null,\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(161, 'default', 'created', 'App\\Models\\Inquiry', 15, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":4,\"name\":\"Elsie Brekke MD\",\"email\":\"wgorczany@example.org\",\"phone\":\"+233244231473\",\"message\":\"In rerum qui vero reiciendis est omnis consectetur. Sunt voluptas illo exercitationem animi dicta commodi. Eaque incidunt id est nisi omnis. Et ipsam enim pariatur expedita.\\n\\nOmnis pariatur velit nihil et ea aut. Officia ea architecto velit dolor. Ducimus dolore facilis laborum nihil sunt consequatur.\",\"inquiry_type\":\"offer\",\"status\":\"completed\",\"preferred_date\":null,\"preferred_time\":\"05:43:09\",\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(162, 'default', 'created', 'App\\Models\\Inquiry', 16, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":13,\"name\":\"Axel Funk\",\"email\":\"annie62@example.com\",\"phone\":\"+233244133959\",\"message\":\"Occaecati et enim amet in rerum voluptas voluptatem. Eum iusto molestiae velit voluptatibus. Autem esse delectus voluptatem. Doloremque alias aut aut error.\\n\\nVoluptatum dolore tenetur quia doloribus sapiente ullam. Ratione similique sint qui corporis natus perferendis atque ipsum. Deleniti et officia alias nihil quam quo optio. Corrupti qui sint distinctio perferendis atque omnis.\",\"inquiry_type\":\"general\",\"status\":\"scheduled\",\"preferred_date\":\"2025-10-05T00:00:00.000000Z\",\"preferred_time\":null,\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(163, 'default', 'created', 'App\\Models\\Inquiry', 17, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":4,\"name\":\"Gina Kunde DVM\",\"email\":\"mazie66@example.org\",\"phone\":\"+233244433590\",\"message\":\"Porro autem aut repudiandae qui qui velit. Nam labore est voluptatem doloribus sed occaecati eaque. Qui eos omnis corporis accusantium nobis aliquam.\\n\\nHarum quia est quisquam est occaecati consequuntur et. Asperiores voluptatum aliquam et velit magnam velit eius. Illo et voluptatibus ratione est est officiis cum.\",\"inquiry_type\":\"offer\",\"status\":\"contacted\",\"preferred_date\":\"2025-09-28T00:00:00.000000Z\",\"preferred_time\":\"14:30:36\",\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(164, 'default', 'created', 'App\\Models\\Inquiry', 18, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":12,\"name\":\"Donald Feest\",\"email\":\"marlee26@example.com\",\"phone\":\"+233244548262\",\"message\":\"Eum magnam nostrum ipsam expedita eveniet. Sint amet sunt exercitationem modi velit. Eum dolore perspiciatis accusantium quo illum.\\n\\nNon reiciendis dolor amet ipsam. Quam et facilis corrupti accusamus sed in. Aut quaerat eos quia eos voluptas libero.\",\"inquiry_type\":\"general\",\"status\":\"completed\",\"preferred_date\":\"2025-10-08T00:00:00.000000Z\",\"preferred_time\":\"12:46:08\",\"agent_notes\":\"Et inventore necessitatibus laudantium.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(165, 'default', 'created', 'App\\Models\\Inquiry', 19, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":19,\"name\":\"Prof. Karolann Mertz\",\"email\":\"einar.toy@example.net\",\"phone\":\"+233244661437\",\"message\":\"Non nulla velit quam itaque voluptatum distinctio ut. Est perferendis quos inventore non. Eum mollitia beatae culpa.\\n\\nEt rerum iusto facilis qui dignissimos. Consequatur sint quia incidunt amet adipisci atque sint. Enim quaerat corporis incidunt soluta ut eligendi. Facere et aut omnis officia.\",\"inquiry_type\":\"general\",\"status\":\"contacted\",\"preferred_date\":\"2025-09-27T00:00:00.000000Z\",\"preferred_time\":\"04:26:52\",\"agent_notes\":\"Quia qui cumque velit itaque.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(166, 'default', 'created', 'App\\Models\\Inquiry', 20, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":17,\"name\":\"Annabel Zulauf I\",\"email\":\"tstamm@example.org\",\"phone\":\"+233244908933\",\"message\":\"Quaerat qui sit aut facilis inventore sed. Et doloribus dignissimos voluptatibus rem similique nesciunt facere. Veritatis culpa dolores magnam ea et sint fugit.\\n\\nBlanditiis et cupiditate est nostrum voluptatibus. Eos nesciunt molestias incidunt facilis libero in omnis. Reiciendis at quasi quasi fugit id soluta. Non ducimus ratione voluptatem aut quidem corrupti est.\",\"inquiry_type\":\"offer\",\"status\":\"new\",\"preferred_date\":null,\"preferred_time\":\"03:43:43\",\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(167, 'default', 'created', 'App\\Models\\Inquiry', 21, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":11,\"name\":\"Hollis Champlin\",\"email\":\"xdicki@example.org\",\"phone\":\"+233244695134\",\"message\":\"Quasi distinctio nisi et dolorem eligendi et sapiente est. Non enim veniam harum natus.\\n\\nHic magnam sint ratione sunt sed deserunt adipisci. Qui sed voluptates porro nesciunt.\",\"inquiry_type\":\"viewing\",\"status\":\"new\",\"preferred_date\":\"2025-10-05T00:00:00.000000Z\",\"preferred_time\":\"18:55:22\",\"agent_notes\":\"Inventore fugit eum qui corporis eius voluptatibus distinctio.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(168, 'default', 'created', 'App\\Models\\Inquiry', 22, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":19,\"name\":\"Brody Sanford\",\"email\":\"cristian.green@example.com\",\"phone\":\"+233244064065\",\"message\":\"Aut delectus sint et enim consequatur soluta blanditiis. Animi eum ut in dolorem sint. In omnis esse delectus aspernatur eos aut. Nihil iusto sed ad eum accusamus.\\n\\nAut assumenda voluptatibus quia repudiandae. Incidunt voluptate minus voluptas est sunt.\",\"inquiry_type\":\"information\",\"status\":\"new\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":\"Quas reprehenderit dolor accusantium.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(169, 'default', 'created', 'App\\Models\\Inquiry', 23, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":null,\"name\":\"Addie Schroeder\",\"email\":\"ubins@example.org\",\"phone\":\"+233244849762\",\"message\":\"Dolor et et dolores sit et. Nulla fuga adipisci nihil ab magni vero occaecati.\\n\\nExercitationem dolores consequatur vel. Animi quos possimus quam nihil eum magni molestiae nihil. Enim omnis et harum culpa et non magni. Doloremque est ut porro ipsum.\",\"inquiry_type\":\"viewing\",\"status\":\"completed\",\"preferred_date\":\"2025-10-09T00:00:00.000000Z\",\"preferred_time\":null,\"agent_notes\":\"Voluptas fugit corrupti ex voluptatum.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(170, 'default', 'created', 'App\\Models\\Inquiry', 24, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"name\":\"Christian Orn PhD\",\"email\":\"athena01@example.com\",\"phone\":\"+233244146702\",\"message\":\"Dolores aut ab hic sed. Nihil velit voluptatem odit ut ut. Possimus ratione quaerat ut optio. Quia rem eos veniam sint dolore vitae et.\\n\\nEt dolorem nulla enim deserunt et quidem enim consequatur. Aliquid fugit non natus et. Quia atque voluptatibus ipsa et molestiae. Corporis consectetur illum omnis molestiae.\",\"inquiry_type\":\"information\",\"status\":\"contacted\",\"preferred_date\":\"2025-09-19T00:00:00.000000Z\",\"preferred_time\":\"12:47:38\",\"agent_notes\":\"Voluptas quo quia neque repudiandae.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(171, 'default', 'created', 'App\\Models\\Inquiry', 25, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":10,\"name\":\"Vladimir Stehr Sr.\",\"email\":\"penelope43@example.net\",\"phone\":\"+233244517496\",\"message\":\"Itaque ipsum dolor cumque. Fuga aut harum dicta dolore. Est officia delectus vero enim et minus sint. Ut id occaecati distinctio doloribus et. Nostrum consequatur et tempora facilis molestias animi.\\n\\nRepellendus quod voluptas quidem in accusamus. Dolorem repellat harum provident et quasi. Illum eveniet omnis dolorem omnis qui sunt non.\",\"inquiry_type\":\"offer\",\"status\":\"completed\",\"preferred_date\":null,\"preferred_time\":\"19:26:57\",\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(172, 'default', 'created', 'App\\Models\\Inquiry', 26, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":18,\"user_id\":null,\"name\":\"Prof. Wilton Schumm\",\"email\":\"maya60@example.org\",\"phone\":\"+233244282605\",\"message\":\"Ipsa corrupti sapiente ut consequatur amet. Excepturi eos sit est possimus et vero est et. Maiores cupiditate iusto autem consequatur amet aut.\\n\\nEt ad accusantium labore culpa. Omnis sit dolore officia occaecati. Sit animi aut quis sed aliquam ipsam. Nihil nihil eum molestiae dolores. Commodi aut dicta sint saepe dicta voluptas soluta.\",\"inquiry_type\":\"viewing\",\"status\":\"contacted\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(173, 'default', 'created', 'App\\Models\\Inquiry', 27, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":16,\"user_id\":18,\"name\":\"Odell Wunsch\",\"email\":\"daisy.stehr@example.net\",\"phone\":\"+233244752915\",\"message\":\"Eveniet non eum assumenda eos fugit. Nisi molestiae necessitatibus amet alias. Aut fugiat quae officia. Non deleniti maxime id eos.\\n\\nMollitia voluptatibus itaque adipisci sed voluptatibus. Aut ducimus hic veritatis consequatur rerum. Molestiae et nihil eos velit sunt rerum.\",\"inquiry_type\":\"offer\",\"status\":\"new\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(174, 'default', 'created', 'App\\Models\\Inquiry', 28, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":18,\"name\":\"Arthur Walsh\",\"email\":\"ubauch@example.org\",\"phone\":\"+233244603561\",\"message\":\"Sunt ut similique quis incidunt. Velit numquam natus quis consequatur. Tempore non eos molestiae doloremque reiciendis odit laudantium. Dolor amet ut dolorum tempore aliquid dolores repellat.\\n\\nQuis non velit aut ipsum. Nulla est non ullam et illo dolor omnis incidunt.\",\"inquiry_type\":\"general\",\"status\":\"scheduled\",\"preferred_date\":null,\"preferred_time\":\"09:22:58\",\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(175, 'default', 'created', 'App\\Models\\Inquiry', 29, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":19,\"name\":\"Vinnie Kemmer\",\"email\":\"jeanette52@example.org\",\"phone\":\"+233244245462\",\"message\":\"Facere aut illo eligendi officia. Quae ea animi doloremque asperiores est repudiandae. Accusantium dolorem ad quia omnis amet.\\n\\nA rerum ut fugit maxime qui et eaque eum. Sequi sit vero eum rem.\",\"inquiry_type\":\"offer\",\"status\":\"contacted\",\"preferred_date\":\"2025-09-29T00:00:00.000000Z\",\"preferred_time\":\"09:45:12\",\"agent_notes\":null}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(176, 'default', 'created', 'App\\Models\\Inquiry', 30, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":18,\"name\":\"Nedra Kirlin\",\"email\":\"porter35@example.org\",\"phone\":\"+233244020370\",\"message\":\"Ipsa nihil illo molestiae esse minima. Omnis voluptas atque aut repudiandae corporis quibusdam sed. Nam ex quis et vitae. Temporibus culpa quis deserunt in. Error quam non dolorum.\\n\\nQuis explicabo autem non temporibus occaecati. Quisquam aliquam quisquam facilis ea unde. Natus quas cupiditate aut et modi id exercitationem doloremque.\",\"inquiry_type\":\"information\",\"status\":\"new\",\"preferred_date\":\"2025-10-05T00:00:00.000000Z\",\"preferred_time\":\"08:21:39\",\"agent_notes\":\"Dolorem voluptatem laudantium sint.\"}}', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(177, 'default', 'created', 'App\\Models\\Review', 1, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":18,\"rating\":5,\"title\":\"Excellent Property!\",\"comment\":\"This property exceeded all my expectations. The location is perfect, the amenities are top-notch, and the agent was very professional throughout the entire process. Highly recommended!\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(178, 'default', 'created', 'App\\Models\\Review', 2, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":18,\"rating\":4,\"title\":\"Great Value for Money\",\"comment\":\"Good property with nice features. The neighborhood is quiet and safe. The only minor issue was the parking space, but overall it\'s a great place to live.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(179, 'default', 'created', 'App\\Models\\Review', 3, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":4,\"rating\":3,\"title\":\"Average Property\",\"comment\":\"The property is okay but could use some improvements. The maintenance response time could be better. Location is convenient though.\",\"is_verified\":false,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(180, 'default', 'created', 'App\\Models\\Review', 4, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":22,\"user_id\":18,\"rating\":2,\"title\":\"Needs Improvement\",\"comment\":\"The property has potential but needs significant upgrades. The kitchen appliances are outdated and the bathroom needs renovation.\",\"is_verified\":false,\"is_approved\":false}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(181, 'default', 'created', 'App\\Models\\Review', 5, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":16,\"user_id\":19,\"rating\":5,\"title\":\"Perfect for Families\",\"comment\":\"Amazing property with great family-friendly features. The kids love the playground and the community is very welcoming. The agent was fantastic!\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(182, 'default', 'created', 'App\\Models\\Review', 6, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":22,\"user_id\":11,\"rating\":1,\"title\":\"Beautiful property\",\"comment\":\"Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(183, 'default', 'created', 'App\\Models\\Review', 7, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":19,\"rating\":2,\"title\":\"Excellent amenities\",\"comment\":\"Perfect for families with children. The community is friendly and the facilities are great.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(184, 'default', 'created', 'App\\Models\\Review', 8, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"user_id\":16,\"rating\":4,\"title\":\"Great investment\",\"comment\":\"Lovely property with beautiful views. The neighborhood is safe and the people are friendly.\",\"is_verified\":false,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(185, 'default', 'created', 'App\\Models\\Review', 9, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":17,\"rating\":3,\"title\":\"Perfect for families\",\"comment\":\"Professional service from start to finish. The property is exactly as described.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(186, 'default', 'created', 'App\\Models\\Review', 10, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":4,\"rating\":2,\"title\":\"Beautiful property\",\"comment\":\"Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(187, 'default', 'created', 'App\\Models\\Review', 11, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":15,\"rating\":4,\"title\":\"Great investment\",\"comment\":\"Great investment opportunity. The property is well-built and the area is developing rapidly.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(188, 'default', 'created', 'App\\Models\\Review', 12, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":12,\"rating\":4,\"title\":\"Lovely neighborhood\",\"comment\":\"Professional service from start to finish. The property is exactly as described.\",\"is_verified\":false,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(189, 'default', 'created', 'App\\Models\\Review', 13, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":18,\"rating\":1,\"title\":\"Great investment\",\"comment\":\"The property exceeded my expectations. The quality is outstanding and the service was excellent.\",\"is_verified\":false,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(190, 'default', 'created', 'App\\Models\\Review', 14, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":13,\"rating\":1,\"title\":\"Great investment\",\"comment\":\"Great value for money. The property is well-maintained and the neighborhood is quiet.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(191, 'default', 'created', 'App\\Models\\Review', 15, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":19,\"rating\":3,\"title\":\"Convenient location\",\"comment\":\"Comfortable living space with all necessary amenities. The property is well-designed.\",\"is_verified\":false,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(192, 'default', 'created', 'App\\Models\\Review', 16, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":12,\"rating\":3,\"title\":\"Good value\",\"comment\":\"Perfect for families with children. The community is friendly and the facilities are great.\",\"is_verified\":false,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(193, 'default', 'created', 'App\\Models\\Review', 17, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":12,\"rating\":2,\"title\":\"Modern and clean\",\"comment\":\"Modern property with all the amenities you need. The location is convenient for work and shopping.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(194, 'default', 'created', 'App\\Models\\Review', 18, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":13,\"rating\":2,\"title\":\"Great investment\",\"comment\":\"Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.\",\"is_verified\":true,\"is_approved\":false}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(195, 'default', 'created', 'App\\Models\\Review', 19, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":14,\"rating\":2,\"title\":\"Perfect for families\",\"comment\":\"Outstanding property with amazing features. The quality is exceptional and the location is perfect.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(196, 'default', 'created', 'App\\Models\\Review', 20, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"user_id\":11,\"rating\":3,\"title\":\"Convenient location\",\"comment\":\"Well-maintained property in excellent condition. The management is responsive and helpful.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(197, 'default', 'created', 'App\\Models\\Review', 21, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":16,\"user_id\":16,\"rating\":5,\"title\":\"Highly recommended\",\"comment\":\"Perfect for families with children. The community is friendly and the facilities are great.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(198, 'default', 'created', 'App\\Models\\Review', 22, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":15,\"rating\":2,\"title\":\"Convenient location\",\"comment\":\"Great value for money. The property is well-maintained and the neighborhood is quiet.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(199, 'default', 'created', 'App\\Models\\Review', 23, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":13,\"rating\":5,\"title\":\"Lovely neighborhood\",\"comment\":\"Comfortable living space with all necessary amenities. The property is well-designed.\",\"is_verified\":false,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(200, 'default', 'created', 'App\\Models\\Review', 24, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"user_id\":14,\"rating\":1,\"title\":\"Outstanding features\",\"comment\":\"This property is absolutely fantastic! The location is perfect and the amenities are top-notch.\",\"is_verified\":true,\"is_approved\":false}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(201, 'default', 'created', 'App\\Models\\Review', 25, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":19,\"rating\":1,\"title\":\"Outstanding features\",\"comment\":\"Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.\",\"is_verified\":false,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(202, 'default', 'created', 'App\\Models\\Review', 26, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":18,\"rating\":2,\"title\":\"Well maintained\",\"comment\":\"This property is absolutely fantastic! The location is perfect and the amenities are top-notch.\",\"is_verified\":false,\"is_approved\":false}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(203, 'default', 'created', 'App\\Models\\Review', 27, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":10,\"rating\":2,\"title\":\"Outstanding features\",\"comment\":\"This property is absolutely fantastic! The location is perfect and the amenities are top-notch.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(204, 'default', 'created', 'App\\Models\\Review', 28, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":12,\"rating\":1,\"title\":\"Highly recommended\",\"comment\":\"The property exceeded my expectations. The quality is outstanding and the service was excellent.\",\"is_verified\":true,\"is_approved\":false}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(205, 'default', 'created', 'App\\Models\\Review', 29, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":4,\"rating\":2,\"title\":\"Good value\",\"comment\":\"Great value for money. The property is well-maintained and the neighborhood is quiet.\",\"is_verified\":false,\"is_approved\":false}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(206, 'default', 'created', 'App\\Models\\Review', 30, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":17,\"rating\":2,\"title\":\"Great location!\",\"comment\":\"Professional service from start to finish. The property is exactly as described.\",\"is_verified\":false,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(207, 'default', 'created', 'App\\Models\\Review', 31, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":18,\"rating\":1,\"title\":\"Beautiful property\",\"comment\":\"Perfect for families with children. The community is friendly and the facilities are great.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(208, 'default', 'created', 'App\\Models\\Review', 32, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":14,\"rating\":1,\"title\":\"Good value\",\"comment\":\"Great investment opportunity. The property is well-built and the area is developing rapidly.\",\"is_verified\":false,\"is_approved\":false}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(209, 'default', 'created', 'App\\Models\\Review', 33, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":10,\"rating\":1,\"title\":\"Great investment\",\"comment\":\"Lovely property with beautiful views. The neighborhood is safe and the people are friendly.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(210, 'default', 'created', 'App\\Models\\Review', 34, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":15,\"rating\":1,\"title\":\"Outstanding features\",\"comment\":\"Modern property with all the amenities you need. The location is convenient for work and shopping.\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(211, 'default', 'created', 'App\\Models\\Review', 35, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":17,\"rating\":5,\"title\":\"Professional service\",\"comment\":\"Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.\",\"is_verified\":false,\"is_approved\":false}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(212, 'default', 'created', 'App\\Models\\NewsletterSubscription', 1, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"john.doe@email.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"apartment\\\",\\\"house\\\"],\\\"price_range\\\":[\\\"100000\\\",\\\"500000\\\"],\\\"locations\\\":[\\\"Accra\\\",\\\"Kumasi\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-08-19T23:47:34.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(213, 'default', 'created', 'App\\Models\\NewsletterSubscription', 2, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"sarah.johnson@email.com\",\"first_name\":\"Sarah\",\"last_name\":\"Johnson\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"villa\\\",\\\"house\\\"],\\\"price_range\\\":[\\\"500000\\\",\\\"2000000\\\"],\\\"locations\\\":[\\\"Accra\\\"],\\\"frequency\\\":\\\"daily\\\"}\",\"subscribed_at\":\"2025-09-03T23:47:34.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(214, 'default', 'created', 'App\\Models\\NewsletterSubscription', 3, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"michael.smith@email.com\",\"first_name\":\"Michael\",\"last_name\":\"Smith\",\"is_active\":false,\"preferences\":\"{\\\"property_types\\\":[\\\"apartment\\\"],\\\"price_range\\\":[\\\"50000\\\",\\\"200000\\\"],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Tamale\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-07-20T23:47:34.000000Z\",\"unsubscribed_at\":\"2025-09-08T23:47:34.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(215, 'default', 'created', 'App\\Models\\NewsletterSubscription', 4, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"grace.mensah@email.com\",\"first_name\":\"Grace\",\"last_name\":\"Mensah\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"commercial\\\",\\\"office\\\"],\\\"price_range\\\":[\\\"10000\\\",\\\"50000\\\"],\\\"locations\\\":[\\\"Accra\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-08-04T23:47:34.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(216, 'default', 'created', 'App\\Models\\NewsletterSubscription', 5, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"kwame.asante@email.com\",\"first_name\":\"Kwame\",\"last_name\":\"Asante\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"land\\\"],\\\"price_range\\\":[\\\"50000\\\",\\\"500000\\\"],\\\"locations\\\":[\\\"Greater Accra\\\",\\\"Ashanti\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-08-29T23:47:34.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(217, 'default', 'created', 'App\\Models\\NewsletterSubscription', 6, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"twisozk@example.com\",\"first_name\":\"Shea\",\"last_name\":\"Boehm\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"commercial\\\",\\\"office\\\",\\\"townhouse\\\"],\\\"price_range\\\":[46619,450950],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Tamale\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-07-17T21:39:12.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(218, 'default', 'created', 'App\\Models\\NewsletterSubscription', 7, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"ashley44@example.com\",\"first_name\":\"Brenda\",\"last_name\":\"Abshire\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"commercial\\\",\\\"land\\\",\\\"office\\\"],\\\"price_range\\\":[39191,1028466],\\\"locations\\\":[\\\"Takoradi\\\",\\\"Tema\\\",\\\"Kumasi\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-09-05T08:56:57.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(219, 'default', 'created', 'App\\Models\\NewsletterSubscription', 8, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"odurgan@example.com\",\"first_name\":\"Kade\",\"last_name\":\"Wiegand\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"house\\\"],\\\"price_range\\\":[28028,1275675],\\\"locations\\\":[\\\"Accra\\\",\\\"Cape Coast\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-07-30T19:09:30.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(220, 'default', 'created', 'App\\Models\\NewsletterSubscription', 9, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"estevan01@example.net\",\"first_name\":\"Jalen\",\"last_name\":\"Carroll\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"townhouse\\\",\\\"commercial\\\",\\\"apartment\\\"],\\\"price_range\\\":[87027,1261463],\\\"locations\\\":[\\\"Tamale\\\",\\\"Accra\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-08-23T19:36:26.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(221, 'default', 'created', 'App\\Models\\NewsletterSubscription', 10, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"leone.weissnat@example.com\",\"first_name\":\"Alexis\",\"last_name\":\"Hegmann\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"land\\\"],\\\"price_range\\\":[30422,1013064],\\\"locations\\\":[\\\"Accra\\\"],\\\"frequency\\\":\\\"daily\\\"}\",\"subscribed_at\":\"2025-07-18T09:01:23.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(222, 'default', 'created', 'App\\Models\\NewsletterSubscription', 11, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"rowe.ronny@example.net\",\"first_name\":\"Sherwood\",\"last_name\":\"Kilback\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"townhouse\\\",\\\"house\\\"],\\\"price_range\\\":[96448,1677497],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Takoradi\\\",\\\"Tamale\\\"],\\\"frequency\\\":\\\"daily\\\"}\",\"subscribed_at\":\"2025-08-25T16:20:01.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(223, 'default', 'created', 'App\\Models\\NewsletterSubscription', 12, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"klein.london@example.com\",\"first_name\":\"Alexandra\",\"last_name\":\"Veum\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"apartment\\\",\\\"office\\\"],\\\"price_range\\\":[12659,991982],\\\"locations\\\":[\\\"Tema\\\",\\\"Tamale\\\",\\\"Takoradi\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-07-20T00:10:44.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(224, 'default', 'created', 'App\\Models\\NewsletterSubscription', 13, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"miller.name@example.org\",\"first_name\":\"Hayley\",\"last_name\":\"Conroy\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"townhouse\\\",\\\"land\\\"],\\\"price_range\\\":[17892,1056649],\\\"locations\\\":[\\\"Tema\\\",\\\"Cape Coast\\\"],\\\"frequency\\\":\\\"daily\\\"}\",\"subscribed_at\":\"2025-09-12T22:52:28.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(225, 'default', 'created', 'App\\Models\\NewsletterSubscription', 14, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"edietrich@example.org\",\"first_name\":\"Corrine\",\"last_name\":\"Koepp\",\"is_active\":false,\"preferences\":\"{\\\"property_types\\\":[\\\"land\\\",\\\"commercial\\\",\\\"office\\\"],\\\"price_range\\\":[57170,1517906],\\\"locations\\\":[\\\"Tamale\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-07-08T19:28:29.000000Z\",\"unsubscribed_at\":\"2025-09-05T18:19:57.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(226, 'default', 'created', 'App\\Models\\NewsletterSubscription', 15, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"lewis.mitchell@example.net\",\"first_name\":\"Golden\",\"last_name\":\"Kutch\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"commercial\\\"],\\\"price_range\\\":[27573,409085],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Cape Coast\\\",\\\"Accra\\\"],\\\"frequency\\\":\\\"daily\\\"}\",\"subscribed_at\":\"2025-08-26T01:34:14.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(227, 'default', 'created', 'App\\Models\\NewsletterSubscription', 16, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"kaelyn45@example.com\",\"first_name\":\"Angeline\",\"last_name\":\"Lubowitz\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"house\\\"],\\\"price_range\\\":[62923,1590203],\\\"locations\\\":[\\\"Tamale\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-08-19T14:12:48.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(228, 'default', 'created', 'App\\Models\\NewsletterSubscription', 17, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"kristoffer.bednar@example.com\",\"first_name\":\"Raegan\",\"last_name\":\"Considine\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"commercial\\\"],\\\"price_range\\\":[67461,468447],\\\"locations\\\":[\\\"Takoradi\\\",\\\"Cape Coast\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-09-18T15:44:39.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(229, 'default', 'created', 'App\\Models\\NewsletterSubscription', 18, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"flossie01@example.net\",\"first_name\":\"Sammie\",\"last_name\":\"Kuhic\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"land\\\",\\\"office\\\",\\\"apartment\\\"],\\\"price_range\\\":[63534,1874601],\\\"locations\\\":[\\\"Kumasi\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-07-01T23:50:22.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(230, 'default', 'created', 'App\\Models\\NewsletterSubscription', 19, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"dooley.viola@example.org\",\"first_name\":\"Arvilla\",\"last_name\":\"Nitzsche\",\"is_active\":false,\"preferences\":\"{\\\"property_types\\\":[\\\"office\\\"],\\\"price_range\\\":[34360,1242060],\\\"locations\\\":[\\\"Cape Coast\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-08-13T06:37:40.000000Z\",\"unsubscribed_at\":\"2025-09-12T18:57:43.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(231, 'default', 'created', 'App\\Models\\NewsletterSubscription', 20, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"green.mellie@example.com\",\"first_name\":\"Kayden\",\"last_name\":\"Ankunding\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"house\\\",\\\"office\\\",\\\"land\\\"],\\\"price_range\\\":[73995,1657828],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Tamale\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"daily\\\"}\",\"subscribed_at\":\"2025-08-23T18:45:54.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(232, 'default', 'created', 'App\\Models\\NewsletterSubscription', 21, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"simone35@example.net\",\"first_name\":\"Eliezer\",\"last_name\":\"Koepp\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"apartment\\\"],\\\"price_range\\\":[79606,1656221],\\\"locations\\\":[\\\"Tamale\\\"],\\\"frequency\\\":\\\"daily\\\"}\",\"subscribed_at\":\"2025-07-28T14:36:32.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(233, 'default', 'created', 'App\\Models\\NewsletterSubscription', 22, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"gregoria27@example.net\",\"first_name\":\"Melany\",\"last_name\":\"Strosin\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"house\\\"],\\\"price_range\\\":[87655,1224794],\\\"locations\\\":[\\\"Cape Coast\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-08-24T08:45:47.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(234, 'default', 'created', 'App\\Models\\NewsletterSubscription', 23, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"sallie.haag@example.com\",\"first_name\":\"Leone\",\"last_name\":\"Hauck\",\"is_active\":false,\"preferences\":\"{\\\"property_types\\\":[\\\"house\\\",\\\"commercial\\\",\\\"apartment\\\"],\\\"price_range\\\":[68908,1613462],\\\"locations\\\":[\\\"Cape Coast\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"daily\\\"}\",\"subscribed_at\":\"2025-09-12T11:26:05.000000Z\",\"unsubscribed_at\":\"2025-09-11T18:55:29.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(235, 'default', 'created', 'App\\Models\\NewsletterSubscription', 24, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"gudrun62@example.com\",\"first_name\":\"Orie\",\"last_name\":\"Schinner\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"villa\\\"],\\\"price_range\\\":[67353,1711698],\\\"locations\\\":[\\\"Cape Coast\\\",\\\"Tema\\\",\\\"Accra\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-07-24T15:41:08.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(236, 'default', 'created', 'App\\Models\\NewsletterSubscription', 25, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"qwunsch@example.com\",\"first_name\":\"Tyrese\",\"last_name\":\"Abshire\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"townhouse\\\",\\\"house\\\"],\\\"price_range\\\":[77815,1256707],\\\"locations\\\":[\\\"Tema\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-06-29T13:38:09.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(237, 'default', 'created', 'App\\Models\\NewsletterSubscription', 26, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"kaia01@example.net\",\"first_name\":\"Amara\",\"last_name\":\"Koelpin\",\"is_active\":false,\"preferences\":\"{\\\"property_types\\\":[\\\"apartment\\\",\\\"land\\\"],\\\"price_range\\\":[39081,628564],\\\"locations\\\":[\\\"Takoradi\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-07-02T23:49:24.000000Z\",\"unsubscribed_at\":\"2025-09-09T03:14:35.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(238, 'default', 'created', 'App\\Models\\NewsletterSubscription', 27, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"welch.margarett@example.org\",\"first_name\":\"Gwen\",\"last_name\":\"Blick\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"land\\\"],\\\"price_range\\\":[23275,744364],\\\"locations\\\":[\\\"Takoradi\\\",\\\"Cape Coast\\\",\\\"Accra\\\"],\\\"frequency\\\":\\\"weekly\\\"}\",\"subscribed_at\":\"2025-08-03T20:14:22.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(239, 'default', 'created', 'App\\Models\\NewsletterSubscription', 28, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"koepp.consuelo@example.net\",\"first_name\":\"Gretchen\",\"last_name\":\"Lynch\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"office\\\",\\\"apartment\\\"],\\\"price_range\\\":[87236,471725],\\\"locations\\\":[\\\"Kumasi\\\"],\\\"frequency\\\":\\\"daily\\\"}\",\"subscribed_at\":\"2025-08-29T21:07:30.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(240, 'default', 'created', 'App\\Models\\NewsletterSubscription', 29, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"cbartoletti@example.com\",\"first_name\":\"Aleen\",\"last_name\":\"Mertz\",\"is_active\":true,\"preferences\":\"{\\\"property_types\\\":[\\\"land\\\",\\\"apartment\\\",\\\"villa\\\"],\\\"price_range\\\":[96405,1399480],\\\"locations\\\":[\\\"Accra\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-08-07T11:15:14.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(241, 'default', 'created', 'App\\Models\\NewsletterSubscription', 30, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"maryjane05@example.com\",\"first_name\":\"Austin\",\"last_name\":\"Rutherford\",\"is_active\":false,\"preferences\":\"{\\\"property_types\\\":[\\\"commercial\\\",\\\"villa\\\",\\\"apartment\\\"],\\\"price_range\\\":[51471,392995],\\\"locations\\\":[\\\"Accra\\\",\\\"Kumasi\\\"],\\\"frequency\\\":\\\"monthly\\\"}\",\"subscribed_at\":\"2025-08-20T14:46:05.000000Z\",\"unsubscribed_at\":\"2025-08-24T16:45:52.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(242, 'default', 'created', 'App\\Models\\PropertyView', 1, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"user_id\":null,\"ip_address\":\"245.82.190.252\",\"user_agent\":\"Opera\\/9.28 (Windows NT 5.0; nl-NL) Presto\\/2.12.204 Version\\/12.00\",\"viewed_at\":\"2025-08-23T22:07:30.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(243, 'default', 'created', 'App\\Models\\PropertyView', 2, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"user_id\":12,\"ip_address\":\"176.141.49.216\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_8_0 rv:6.0; nl-NL) AppleWebKit\\/534.1.2 (KHTML, like Gecko) Version\\/5.0 Safari\\/534.1.2\",\"viewed_at\":\"2025-08-30T04:22:38.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(244, 'default', 'created', 'App\\Models\\PropertyView', 3, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":12,\"ip_address\":\"132.103.95.13\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 9.0; Windows 95; Trident\\/5.1)\",\"viewed_at\":\"2025-09-11T18:21:35.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(245, 'default', 'created', 'App\\Models\\PropertyView', 4, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":4,\"ip_address\":\"147.160.180.229\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows 95; Trident\\/3.0)\",\"viewed_at\":\"2025-09-09T22:00:39.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(246, 'default', 'created', 'App\\Models\\PropertyView', 5, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":19,\"ip_address\":\"182.254.98.38\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_5_6 rv:6.0) Gecko\\/20220218 Firefox\\/35.0\",\"viewed_at\":\"2025-09-18T13:49:57.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(247, 'default', 'created', 'App\\Models\\PropertyView', 6, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":null,\"ip_address\":\"47.62.55.40\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:6.0) Gecko\\/20100217 Firefox\\/36.0\",\"viewed_at\":\"2025-09-07T05:21:50.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(248, 'default', 'created', 'App\\Models\\PropertyView', 7, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":13,\"ip_address\":\"9.248.245.7\",\"user_agent\":\"Opera\\/9.20 (Windows NT 4.0; nl-NL) Presto\\/2.8.201 Version\\/11.00\",\"viewed_at\":\"2025-08-26T04:00:40.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(249, 'default', 'created', 'App\\Models\\PropertyView', 8, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":null,\"ip_address\":\"173.193.205.248\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows NT 4.0; Trident\\/4.0)\",\"viewed_at\":\"2025-09-04T16:32:20.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(250, 'default', 'created', 'App\\Models\\PropertyView', 9, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":18,\"user_id\":null,\"ip_address\":\"60.245.153.212\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:6.0) Gecko\\/20171014 Firefox\\/37.0\",\"viewed_at\":\"2025-09-12T20:44:21.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(251, 'default', 'created', 'App\\Models\\PropertyView', 10, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":17,\"ip_address\":\"56.122.220.225\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 5.0) AppleWebKit\\/535.34.4 (KHTML, like Gecko) Version\\/5.1 Safari\\/535.34.4\",\"viewed_at\":\"2025-08-29T11:15:20.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(252, 'default', 'created', 'App\\Models\\PropertyView', 11, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":22,\"user_id\":16,\"ip_address\":\"225.234.104.106\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_9) AppleWebKit\\/537.1 (KHTML, like Gecko) Chrome\\/88.0.4157.89 Safari\\/537.1 Edg\\/88.01111.58\",\"viewed_at\":\"2025-09-13T15:43:37.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(253, 'default', 'created', 'App\\Models\\PropertyView', 12, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":4,\"ip_address\":\"150.3.153.133\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 10.0; Windows NT 6.0; Trident\\/4.0)\",\"viewed_at\":\"2025-08-25T11:03:11.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(254, 'default', 'created', 'App\\Models\\PropertyView', 13, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":null,\"ip_address\":\"159.93.207.248\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit\\/532.26.7 (KHTML, like Gecko) Version\\/4.0 Safari\\/532.26.7\",\"viewed_at\":\"2025-08-23T15:04:17.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(255, 'default', 'created', 'App\\Models\\PropertyView', 14, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":14,\"ip_address\":\"58.214.8.69\",\"user_agent\":\"Opera\\/9.12 (X11; Linux i686; sl-SI) Presto\\/2.12.189 Version\\/12.00\",\"viewed_at\":\"2025-09-04T16:17:09.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(256, 'default', 'created', 'App\\Models\\PropertyView', 15, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":16,\"ip_address\":\"187.163.54.64\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/532.2 (KHTML, like Gecko) Chrome\\/87.0.4386.69 Safari\\/532.2 EdgA\\/87.01097.15\",\"viewed_at\":\"2025-08-21T22:18:14.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(257, 'default', 'created', 'App\\Models\\PropertyView', 16, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":13,\"ip_address\":\"149.166.129.192\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.01) AppleWebKit\\/534.1 (KHTML, like Gecko) Chrome\\/84.0.4653.66 Safari\\/534.1 Edg\\/84.01122.95\",\"viewed_at\":\"2025-09-16T08:01:54.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(258, 'default', 'created', 'App\\Models\\PropertyView', 17, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"126.216.74.254\",\"user_agent\":\"Opera\\/9.45 (X11; Linux i686; en-US) Presto\\/2.8.300 Version\\/12.00\",\"viewed_at\":\"2025-09-08T17:06:36.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(259, 'default', 'created', 'App\\Models\\PropertyView', 18, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":4,\"ip_address\":\"4.193.109.23\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5341 (KHTML, like Gecko) Chrome\\/36.0.843.0 Mobile Safari\\/5341\",\"viewed_at\":\"2025-09-09T16:55:42.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(260, 'default', 'created', 'App\\Models\\PropertyView', 19, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":null,\"ip_address\":\"151.9.244.52\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.2 (KHTML, like Gecko) Chrome\\/91.0.4558.28 Safari\\/537.2 EdgA\\/91.01091.64\",\"viewed_at\":\"2025-09-01T14:43:36.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(261, 'default', 'created', 'App\\Models\\PropertyView', 20, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"user_id\":17,\"ip_address\":\"58.124.145.250\",\"user_agent\":\"Opera\\/9.48 (Windows 98; Win 9x 4.90; sl-SI) Presto\\/2.12.235 Version\\/11.00\",\"viewed_at\":\"2025-09-18T23:39:26.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(262, 'default', 'created', 'App\\Models\\PropertyView', 21, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":18,\"user_id\":null,\"ip_address\":\"137.204.133.212\",\"user_agent\":\"Opera\\/8.97 (Windows NT 5.2; sl-SI) Presto\\/2.10.210 Version\\/12.00\",\"viewed_at\":\"2025-09-14T21:32:19.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(263, 'default', 'created', 'App\\Models\\PropertyView', 22, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":16,\"ip_address\":\"20.228.200.108\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/534.0 (KHTML, like Gecko) Chrome\\/99.0.4348.86 Safari\\/534.0 EdgA\\/99.01128.26\",\"viewed_at\":\"2025-09-18T09:30:56.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(264, 'default', 'created', 'App\\Models\\PropertyView', 23, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":null,\"ip_address\":\"45.120.85.110\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.0) AppleWebKit\\/5310 (KHTML, like Gecko) Chrome\\/37.0.877.0 Mobile Safari\\/5310\",\"viewed_at\":\"2025-09-09T20:34:03.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(265, 'default', 'created', 'App\\Models\\PropertyView', 24, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":10,\"ip_address\":\"21.53.85.216\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows 98) AppleWebKit\\/531.29.1 (KHTML, like Gecko) Version\\/5.0 Safari\\/531.29.1\",\"viewed_at\":\"2025-08-25T01:54:39.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(266, 'default', 'created', 'App\\Models\\PropertyView', 25, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":17,\"ip_address\":\"5.178.112.138\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_0 rv:2.0) Gecko\\/20160302 Firefox\\/35.0\",\"viewed_at\":\"2025-08-29T23:18:36.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(267, 'default', 'created', 'App\\Models\\PropertyView', 26, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":13,\"ip_address\":\"40.63.244.206\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_7_7 rv:2.0; sl-SI) AppleWebKit\\/532.3.4 (KHTML, like Gecko) Version\\/4.1 Safari\\/532.3.4\",\"viewed_at\":\"2025-09-01T05:23:58.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(268, 'default', 'created', 'App\\Models\\PropertyView', 27, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":null,\"ip_address\":\"208.154.15.131\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.2) AppleWebKit\\/5352 (KHTML, like Gecko) Chrome\\/37.0.855.0 Mobile Safari\\/5352\",\"viewed_at\":\"2025-09-07T07:51:02.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(269, 'default', 'created', 'App\\Models\\PropertyView', 28, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"82.100.42.48\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_6_2 rv:6.0; en-US) AppleWebKit\\/535.33.3 (KHTML, like Gecko) Version\\/5.0.3 Safari\\/535.33.3\",\"viewed_at\":\"2025-09-14T13:07:56.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(270, 'default', 'created', 'App\\Models\\PropertyView', 29, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"user_id\":null,\"ip_address\":\"169.65.185.237\",\"user_agent\":\"Opera\\/9.70 (Windows NT 6.2; sl-SI) Presto\\/2.8.313 Version\\/10.00\",\"viewed_at\":\"2025-08-24T01:15:17.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(271, 'default', 'created', 'App\\Models\\PropertyView', 30, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":18,\"ip_address\":\"250.246.112.45\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; en-US) AppleWebKit\\/533.31.1 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B117 Safari\\/6533.31.1\",\"viewed_at\":\"2025-09-10T18:12:48.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(272, 'default', 'created', 'App\\Models\\PropertyView', 31, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":19,\"ip_address\":\"65.148.202.117\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.2) AppleWebKit\\/532.1 (KHTML, like Gecko) Chrome\\/91.0.4537.40 Safari\\/532.1 Edg\\/91.01021.45\",\"viewed_at\":\"2025-08-22T18:28:48.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(273, 'default', 'created', 'App\\Models\\PropertyView', 32, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":14,\"ip_address\":\"131.222.111.157\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 15_2 like Mac OS X) AppleWebKit\\/537.1 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/91.01016.27 Mobile\\/15E148 Safari\\/537.1\",\"viewed_at\":\"2025-09-14T20:37:12.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(274, 'default', 'created', 'App\\Models\\PropertyView', 33, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":null,\"ip_address\":\"150.107.13.72\",\"user_agent\":\"Opera\\/8.39 (Windows NT 5.1; nl-NL) Presto\\/2.10.331 Version\\/11.00\",\"viewed_at\":\"2025-09-14T12:01:46.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(275, 'default', 'created', 'App\\Models\\PropertyView', 34, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":15,\"ip_address\":\"196.52.228.204\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5352 (KHTML, like Gecko) Chrome\\/39.0.866.0 Mobile Safari\\/5352\",\"viewed_at\":\"2025-09-08T18:25:44.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(276, 'default', 'created', 'App\\Models\\PropertyView', 35, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":14,\"ip_address\":\"181.6.205.146\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:7.0) Gecko\\/20131227 Firefox\\/36.0\",\"viewed_at\":\"2025-09-01T22:11:37.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(277, 'default', 'created', 'App\\Models\\PropertyView', 36, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":null,\"ip_address\":\"82.169.113.32\",\"user_agent\":\"Opera\\/9.91 (Windows NT 6.2; nl-NL) Presto\\/2.9.267 Version\\/11.00\",\"viewed_at\":\"2025-08-30T22:42:22.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(278, 'default', 'created', 'App\\Models\\PropertyView', 37, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":4,\"ip_address\":\"91.229.135.183\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_8_3 rv:5.0; sl-SI) AppleWebKit\\/534.37.2 (KHTML, like Gecko) Version\\/5.1 Safari\\/534.37.2\",\"viewed_at\":\"2025-08-29T18:47:26.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(279, 'default', 'created', 'App\\Models\\PropertyView', 38, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":13,\"ip_address\":\"227.145.167.142\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; sl-SI; rv:1.9.0.20) Gecko\\/20110321 Firefox\\/36.0\",\"viewed_at\":\"2025-09-05T22:46:31.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(280, 'default', 'created', 'App\\Models\\PropertyView', 39, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":10,\"ip_address\":\"172.123.115.53\",\"user_agent\":\"Opera\\/8.61 (Windows NT 4.0; nl-NL) Presto\\/2.9.232 Version\\/11.00\",\"viewed_at\":\"2025-09-02T21:20:00.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(281, 'default', 'created', 'App\\Models\\PropertyView', 40, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":10,\"ip_address\":\"255.206.111.32\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_6_5 rv:6.0; en-US) AppleWebKit\\/533.10.5 (KHTML, like Gecko) Version\\/4.1 Safari\\/533.10.5\",\"viewed_at\":\"2025-08-24T17:46:08.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(282, 'default', 'created', 'App\\Models\\PropertyView', 41, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"245.252.208.135\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:7.0) Gecko\\/20160808 Firefox\\/35.0\",\"viewed_at\":\"2025-09-01T20:40:48.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(283, 'default', 'created', 'App\\Models\\PropertyView', 42, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":19,\"ip_address\":\"111.133.1.107\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_7_2 rv:3.0; sl-SI) AppleWebKit\\/532.43.6 (KHTML, like Gecko) Version\\/4.0.1 Safari\\/532.43.6\",\"viewed_at\":\"2025-09-09T20:57:10.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(284, 'default', 'created', 'App\\Models\\PropertyView', 43, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":17,\"ip_address\":\"166.137.246.168\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_6) AppleWebKit\\/5361 (KHTML, like Gecko) Chrome\\/37.0.838.0 Mobile Safari\\/5361\",\"viewed_at\":\"2025-08-26T14:13:49.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(285, 'default', 'created', 'App\\Models\\PropertyView', 44, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":null,\"ip_address\":\"142.50.163.27\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows NT 6.1; Trident\\/5.0)\",\"viewed_at\":\"2025-09-13T12:33:26.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(286, 'default', 'created', 'App\\Models\\PropertyView', 45, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":11,\"ip_address\":\"181.250.183.14\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 13_2 like Mac OS X) AppleWebKit\\/534.2 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/84.01100.16 Mobile\\/15E148 Safari\\/534.2\",\"viewed_at\":\"2025-09-18T18:40:46.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(287, 'default', 'created', 'App\\Models\\PropertyView', 46, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":4,\"ip_address\":\"61.177.73.204\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5342 (KHTML, like Gecko) Chrome\\/39.0.870.0 Mobile Safari\\/5342\",\"viewed_at\":\"2025-08-20T19:31:21.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(288, 'default', 'created', 'App\\Models\\PropertyView', 47, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":19,\"ip_address\":\"11.83.228.159\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_7 rv:4.0; nl-NL) AppleWebKit\\/531.38.1 (KHTML, like Gecko) Version\\/5.1 Safari\\/531.38.1\",\"viewed_at\":\"2025-09-07T01:00:20.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(289, 'default', 'created', 'App\\Models\\PropertyView', 48, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":16,\"ip_address\":\"244.127.231.163\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98; nl-NL; rv:1.9.2.20) Gecko\\/20211218 Firefox\\/37.0\",\"viewed_at\":\"2025-09-03T07:02:19.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(290, 'default', 'created', 'App\\Models\\PropertyView', 49, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":10,\"ip_address\":\"92.123.75.107\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5331 (KHTML, like Gecko) Chrome\\/39.0.859.0 Mobile Safari\\/5331\",\"viewed_at\":\"2025-09-06T07:31:28.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(291, 'default', 'created', 'App\\Models\\PropertyView', 50, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":4,\"ip_address\":\"252.90.186.216\",\"user_agent\":\"Opera\\/9.14 (X11; Linux i686; sl-SI) Presto\\/2.12.337 Version\\/12.00\",\"viewed_at\":\"2025-09-07T03:39:01.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(292, 'default', 'created', 'App\\Models\\PropertyView', 51, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":18,\"user_id\":15,\"ip_address\":\"53.238.243.192\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_3) AppleWebKit\\/5352 (KHTML, like Gecko) Chrome\\/37.0.837.0 Mobile Safari\\/5352\",\"viewed_at\":\"2025-08-27T21:26:50.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(293, 'default', 'created', 'App\\Models\\PropertyView', 52, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":16,\"user_id\":null,\"ip_address\":\"184.248.191.122\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.01; sl-SI; rv:1.9.1.20) Gecko\\/20220618 Firefox\\/37.0\",\"viewed_at\":\"2025-09-16T15:44:16.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(294, 'default', 'created', 'App\\Models\\PropertyView', 53, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":15,\"ip_address\":\"159.209.109.156\",\"user_agent\":\"Mozilla\\/5.0 (Windows CE; en-US; rv:1.9.0.20) Gecko\\/20130606 Firefox\\/37.0\",\"viewed_at\":\"2025-09-05T21:48:59.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(295, 'default', 'created', 'App\\Models\\PropertyView', 54, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":15,\"ip_address\":\"248.237.208.180\",\"user_agent\":\"Mozilla\\/5.0 (Windows 95; en-US; rv:1.9.1.20) Gecko\\/20230302 Firefox\\/36.0\",\"viewed_at\":\"2025-09-05T21:10:30.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(296, 'default', 'created', 'App\\Models\\PropertyView', 55, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":4,\"ip_address\":\"136.204.61.150\",\"user_agent\":\"Opera\\/9.27 (Windows NT 5.01; sl-SI) Presto\\/2.11.179 Version\\/10.00\",\"viewed_at\":\"2025-09-03T07:03:20.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(297, 'default', 'created', 'App\\Models\\PropertyView', 56, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":15,\"ip_address\":\"87.214.107.151\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:7.0) Gecko\\/20200410 Firefox\\/37.0\",\"viewed_at\":\"2025-08-24T09:40:47.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(298, 'default', 'created', 'App\\Models\\PropertyView', 57, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"user_id\":null,\"ip_address\":\"66.223.252.157\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident\\/5.1)\",\"viewed_at\":\"2025-09-07T06:21:57.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(299, 'default', 'created', 'App\\Models\\PropertyView', 58, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":22,\"user_id\":null,\"ip_address\":\"146.26.162.198\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:7.0) Gecko\\/20160323 Firefox\\/36.0\",\"viewed_at\":\"2025-09-06T02:13:28.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(300, 'default', 'created', 'App\\Models\\PropertyView', 59, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":4,\"ip_address\":\"145.28.115.202\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_7_2 rv:6.0) Gecko\\/20250622 Firefox\\/35.0\",\"viewed_at\":\"2025-09-02T11:22:47.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(301, 'default', 'created', 'App\\Models\\PropertyView', 60, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"119.126.143.139\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_7_7 rv:5.0) Gecko\\/20140608 Firefox\\/36.0\",\"viewed_at\":\"2025-09-09T10:35:18.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(302, 'default', 'created', 'App\\Models\\PropertyView', 61, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"user_id\":19,\"ip_address\":\"62.158.136.216\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:6.0) Gecko\\/20231201 Firefox\\/37.0\",\"viewed_at\":\"2025-08-20T00:46:33.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(303, 'default', 'created', 'App\\Models\\PropertyView', 62, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":4,\"ip_address\":\"30.234.196.163\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_6_9 rv:5.0; en-US) AppleWebKit\\/534.21.1 (KHTML, like Gecko) Version\\/4.1 Safari\\/534.21.1\",\"viewed_at\":\"2025-09-05T10:48:26.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(304, 'default', 'created', 'App\\Models\\PropertyView', 63, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":null,\"ip_address\":\"225.25.180.69\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_7_9 rv:6.0) Gecko\\/20120504 Firefox\\/37.0\",\"viewed_at\":\"2025-09-17T07:21:35.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(305, 'default', 'created', 'App\\Models\\PropertyView', 64, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":11,\"ip_address\":\"24.176.87.210\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows 98; Trident\\/3.0)\",\"viewed_at\":\"2025-08-29T01:01:42.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(306, 'default', 'created', 'App\\Models\\PropertyView', 65, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":18,\"ip_address\":\"113.165.63.253\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; sl-SI; rv:1.9.0.20) Gecko\\/20200526 Firefox\\/35.0\",\"viewed_at\":\"2025-09-17T20:42:44.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(307, 'default', 'created', 'App\\Models\\PropertyView', 66, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":16,\"ip_address\":\"254.207.146.116\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_7) AppleWebKit\\/535.0 (KHTML, like Gecko) Chrome\\/95.0.4229.45 Safari\\/535.0 Edg\\/95.01106.13\",\"viewed_at\":\"2025-09-13T21:17:05.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(308, 'default', 'created', 'App\\Models\\PropertyView', 67, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":14,\"ip_address\":\"140.163.217.155\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_8_3 rv:3.0; nl-NL) AppleWebKit\\/532.44.5 (KHTML, like Gecko) Version\\/4.0.3 Safari\\/532.44.5\",\"viewed_at\":\"2025-08-26T18:41:53.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(309, 'default', 'created', 'App\\Models\\PropertyView', 68, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":null,\"ip_address\":\"131.143.183.7\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_5_7 rv:3.0) Gecko\\/20230611 Firefox\\/36.0\",\"viewed_at\":\"2025-08-30T18:17:23.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(310, 'default', 'created', 'App\\Models\\PropertyView', 69, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":14,\"ip_address\":\"136.76.107.145\",\"user_agent\":\"Opera\\/8.92 (X11; Linux x86_64; en-US) Presto\\/2.9.247 Version\\/11.00\",\"viewed_at\":\"2025-09-16T05:03:49.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(311, 'default', 'created', 'App\\Models\\PropertyView', 70, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":null,\"ip_address\":\"90.0.197.15\",\"user_agent\":\"Opera\\/8.53 (X11; Linux x86_64; sl-SI) Presto\\/2.12.327 Version\\/11.00\",\"viewed_at\":\"2025-09-07T09:55:47.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(312, 'default', 'created', 'App\\Models\\PropertyView', 71, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":18,\"user_id\":null,\"ip_address\":\"173.2.212.1\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows 98; Win 9x 4.90; Trident\\/4.0)\",\"viewed_at\":\"2025-09-15T13:38:30.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(313, 'default', 'created', 'App\\Models\\PropertyView', 72, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":15,\"ip_address\":\"7.195.6.124\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_6_0 rv:5.0) Gecko\\/20110807 Firefox\\/37.0\",\"viewed_at\":\"2025-09-04T15:46:45.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(314, 'default', 'created', 'App\\Models\\PropertyView', 73, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"155.188.93.85\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 8_2_2 like Mac OS X; nl-NL) AppleWebKit\\/535.3.4 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B119 Safari\\/6535.3.4\",\"viewed_at\":\"2025-08-24T22:39:50.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(315, 'default', 'created', 'App\\Models\\PropertyView', 74, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"user_id\":null,\"ip_address\":\"62.118.180.84\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 5.1) AppleWebKit\\/531.34.4 (KHTML, like Gecko) Version\\/4.0 Safari\\/531.34.4\",\"viewed_at\":\"2025-09-01T01:52:14.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(316, 'default', 'created', 'App\\Models\\PropertyView', 75, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":10,\"ip_address\":\"233.160.150.20\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 10.0; Windows NT 5.2; Trident\\/4.1)\",\"viewed_at\":\"2025-09-12T18:26:27.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(317, 'default', 'created', 'App\\Models\\PropertyView', 76, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":14,\"ip_address\":\"95.27.42.199\",\"user_agent\":\"Opera\\/8.25 (X11; Linux x86_64; en-US) Presto\\/2.11.185 Version\\/11.00\",\"viewed_at\":\"2025-09-01T08:28:07.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(318, 'default', 'created', 'App\\Models\\PropertyView', 77, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":11,\"ip_address\":\"132.190.105.114\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 8.0; Windows NT 6.2; Trident\\/4.0)\",\"viewed_at\":\"2025-08-29T21:34:42.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(319, 'default', 'created', 'App\\Models\\PropertyView', 78, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":18,\"ip_address\":\"161.168.20.239\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_8_4 rv:2.0; en-US) AppleWebKit\\/535.48.1 (KHTML, like Gecko) Version\\/5.0.4 Safari\\/535.48.1\",\"viewed_at\":\"2025-08-29T04:39:01.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(320, 'default', 'created', 'App\\Models\\PropertyView', 79, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"76.209.182.112\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_6_0) AppleWebKit\\/5321 (KHTML, like Gecko) Chrome\\/36.0.839.0 Mobile Safari\\/5321\",\"viewed_at\":\"2025-09-09T15:42:41.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(321, 'default', 'created', 'App\\Models\\PropertyView', 80, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":15,\"ip_address\":\"229.124.0.124\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/537.0 (KHTML, like Gecko) Chrome\\/88.0.4191.27 Safari\\/537.0 EdgA\\/88.01060.61\",\"viewed_at\":\"2025-09-03T12:35:54.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(322, 'default', 'created', 'App\\Models\\PropertyView', 81, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":14,\"ip_address\":\"121.239.40.84\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_0 rv:3.0) Gecko\\/20110309 Firefox\\/35.0\",\"viewed_at\":\"2025-08-23T11:42:59.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(323, 'default', 'created', 'App\\Models\\PropertyView', 82, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":16,\"ip_address\":\"191.57.34.20\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 6.1) AppleWebKit\\/532.34.1 (KHTML, like Gecko) Version\\/5.1 Safari\\/532.34.1\",\"viewed_at\":\"2025-09-14T17:59:05.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(324, 'default', 'created', 'App\\Models\\PropertyView', 83, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":16,\"ip_address\":\"228.86.210.95\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 4.0; sl-SI; rv:1.9.0.20) Gecko\\/20160725 Firefox\\/35.0\",\"viewed_at\":\"2025-09-01T20:21:13.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(325, 'default', 'created', 'App\\Models\\PropertyView', 84, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":15,\"ip_address\":\"17.161.132.39\",\"user_agent\":\"Opera\\/9.55 (Windows NT 6.0; nl-NL) Presto\\/2.12.241 Version\\/12.00\",\"viewed_at\":\"2025-08-29T10:48:47.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(326, 'default', 'created', 'App\\Models\\PropertyView', 85, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"user_id\":null,\"ip_address\":\"215.87.36.188\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; sl-SI) AppleWebKit\\/534.27.1 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B113 Safari\\/6534.27.1\",\"viewed_at\":\"2025-09-02T02:10:28.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(327, 'default', 'created', 'App\\Models\\PropertyView', 86, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":17,\"ip_address\":\"172.201.218.207\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0; en-US; rv:1.9.0.20) Gecko\\/20190407 Firefox\\/36.0\",\"viewed_at\":\"2025-08-23T15:30:39.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(328, 'default', 'created', 'App\\Models\\PropertyView', 87, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":10,\"ip_address\":\"67.123.107.164\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 5.2) AppleWebKit\\/535.28.7 (KHTML, like Gecko) Version\\/4.1 Safari\\/535.28.7\",\"viewed_at\":\"2025-08-27T09:01:31.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(329, 'default', 'created', 'App\\Models\\PropertyView', 88, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":null,\"ip_address\":\"211.79.49.169\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows CE; Trident\\/3.1)\",\"viewed_at\":\"2025-09-16T06:30:19.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(330, 'default', 'created', 'App\\Models\\PropertyView', 89, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":15,\"ip_address\":\"153.30.143.9\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit\\/533.1 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/85.01062.8 Mobile\\/15E148 Safari\\/533.1\",\"viewed_at\":\"2025-08-24T21:56:11.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(331, 'default', 'created', 'App\\Models\\PropertyView', 90, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"user_id\":11,\"ip_address\":\"22.201.27.199\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:7.0) Gecko\\/20231223 Firefox\\/35.0\",\"viewed_at\":\"2025-08-30T08:57:10.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(332, 'default', 'created', 'App\\Models\\PropertyView', 91, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":18,\"ip_address\":\"128.44.15.191\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_8_4 rv:6.0; sl-SI) AppleWebKit\\/534.50.5 (KHTML, like Gecko) Version\\/4.0.1 Safari\\/534.50.5\",\"viewed_at\":\"2025-08-23T23:31:44.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(333, 'default', 'created', 'App\\Models\\PropertyView', 92, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":14,\"ip_address\":\"23.168.170.94\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit\\/533.25.7 (KHTML, like Gecko) Version\\/5.1 Safari\\/533.25.7\",\"viewed_at\":\"2025-08-31T11:43:38.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(334, 'default', 'created', 'App\\Models\\PropertyView', 93, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":null,\"ip_address\":\"80.208.199.43\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident\\/5.1)\",\"viewed_at\":\"2025-09-01T23:04:45.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(335, 'default', 'created', 'App\\Models\\PropertyView', 94, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":null,\"ip_address\":\"149.124.168.226\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 15_2 like Mac OS X) AppleWebKit\\/533.0 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/92.01036.31 Mobile\\/15E148 Safari\\/533.0\",\"viewed_at\":\"2025-08-20T10:29:08.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(336, 'default', 'created', 'App\\Models\\PropertyView', 95, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":11,\"ip_address\":\"26.100.148.48\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.0) AppleWebKit\\/5320 (KHTML, like Gecko) Chrome\\/38.0.898.0 Mobile Safari\\/5320\",\"viewed_at\":\"2025-09-11T02:05:29.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(337, 'default', 'created', 'App\\Models\\PropertyView', 96, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":19,\"ip_address\":\"137.104.252.74\",\"user_agent\":\"Opera\\/8.26 (Windows NT 5.01; en-US) Presto\\/2.10.211 Version\\/10.00\",\"viewed_at\":\"2025-08-30T03:24:51.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(338, 'default', 'created', 'App\\Models\\PropertyView', 97, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":18,\"user_id\":13,\"ip_address\":\"225.174.254.49\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98; sl-SI; rv:1.9.2.20) Gecko\\/20201128 Firefox\\/36.0\",\"viewed_at\":\"2025-09-02T08:57:20.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(339, 'default', 'created', 'App\\Models\\PropertyView', 98, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":12,\"ip_address\":\"253.128.26.171\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_8 rv:5.0) Gecko\\/20130107 Firefox\\/35.0\",\"viewed_at\":\"2025-08-25T15:58:12.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(340, 'default', 'created', 'App\\Models\\PropertyView', 99, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":17,\"ip_address\":\"149.103.140.13\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 10.0; Windows 95; Trident\\/5.1)\",\"viewed_at\":\"2025-09-02T07:45:50.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(341, 'default', 'created', 'App\\Models\\PropertyView', 100, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":18,\"ip_address\":\"27.104.22.117\",\"user_agent\":\"Mozilla\\/5.0 (Windows CE) AppleWebKit\\/534.1 (KHTML, like Gecko) Chrome\\/88.0.4218.46 Safari\\/534.1 Edg\\/88.01088.35\",\"viewed_at\":\"2025-08-31T08:00:50.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(342, 'default', 'created', 'App\\Models\\PropertyView', 101, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":15,\"ip_address\":\"81.250.67.185\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_8 rv:4.0; nl-NL) AppleWebKit\\/534.28.7 (KHTML, like Gecko) Version\\/5.0 Safari\\/534.28.7\",\"viewed_at\":\"2025-09-11T20:27:41.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(343, 'default', 'created', 'App\\Models\\PropertyView', 102, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"28.202.198.35\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:7.0) Gecko\\/20220804 Firefox\\/36.0\",\"viewed_at\":\"2025-08-21T10:51:26.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(344, 'default', 'created', 'App\\Models\\PropertyView', 103, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":22,\"user_id\":4,\"ip_address\":\"73.94.15.225\",\"user_agent\":\"Opera\\/9.24 (Windows CE; nl-NL) Presto\\/2.10.315 Version\\/10.00\",\"viewed_at\":\"2025-09-02T05:40:34.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(345, 'default', 'created', 'App\\Models\\PropertyView', 104, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":17,\"ip_address\":\"199.98.195.115\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows NT 5.01; Trident\\/4.1)\",\"viewed_at\":\"2025-08-24T15:46:26.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(346, 'default', 'created', 'App\\Models\\PropertyView', 105, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":15,\"ip_address\":\"129.165.221.201\",\"user_agent\":\"Opera\\/9.24 (Windows NT 5.0; sl-SI) Presto\\/2.11.175 Version\\/10.00\",\"viewed_at\":\"2025-09-11T13:19:32.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(347, 'default', 'created', 'App\\Models\\PropertyView', 106, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":11,\"ip_address\":\"46.134.114.114\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5342 (KHTML, like Gecko) Chrome\\/37.0.824.0 Mobile Safari\\/5342\",\"viewed_at\":\"2025-09-12T14:34:48.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(348, 'default', 'created', 'App\\Models\\PropertyView', 107, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":17,\"ip_address\":\"177.132.218.179\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 6.1) AppleWebKit\\/532.9.4 (KHTML, like Gecko) Version\\/4.0.5 Safari\\/532.9.4\",\"viewed_at\":\"2025-09-04T02:32:17.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(349, 'default', 'created', 'App\\Models\\PropertyView', 108, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":10,\"ip_address\":\"10.24.72.101\",\"user_agent\":\"Opera\\/9.87 (Windows NT 6.1; nl-NL) Presto\\/2.8.226 Version\\/12.00\",\"viewed_at\":\"2025-08-27T16:40:20.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(350, 'default', 'created', 'App\\Models\\PropertyView', 109, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":11,\"ip_address\":\"148.241.65.204\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 7.0; Windows 98; Win 9x 4.90; Trident\\/5.0)\",\"viewed_at\":\"2025-09-06T23:12:40.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(351, 'default', 'created', 'App\\Models\\PropertyView', 110, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":19,\"ip_address\":\"15.85.37.43\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows CE) AppleWebKit\\/535.33.4 (KHTML, like Gecko) Version\\/5.1 Safari\\/535.33.4\",\"viewed_at\":\"2025-09-04T16:48:00.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(352, 'default', 'created', 'App\\Models\\PropertyView', 111, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":null,\"ip_address\":\"182.146.210.197\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 8.0; Windows NT 6.2; Trident\\/5.1)\",\"viewed_at\":\"2025-09-17T17:07:26.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(353, 'default', 'created', 'App\\Models\\PropertyView', 112, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"188.187.74.137\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit\\/533.0 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/87.01034.45 Mobile\\/15E148 Safari\\/533.0\",\"viewed_at\":\"2025-08-30T18:32:02.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(354, 'default', 'created', 'App\\Models\\PropertyView', 113, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":12,\"ip_address\":\"12.64.217.242\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident\\/5.0)\",\"viewed_at\":\"2025-09-08T02:43:53.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(355, 'default', 'created', 'App\\Models\\PropertyView', 114, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":11,\"ip_address\":\"228.178.94.197\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 7.0; Windows NT 5.0; Trident\\/3.1)\",\"viewed_at\":\"2025-09-18T01:28:06.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(356, 'default', 'created', 'App\\Models\\PropertyView', 115, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":22,\"user_id\":16,\"ip_address\":\"137.112.151.12\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5330 (KHTML, like Gecko) Chrome\\/40.0.825.0 Mobile Safari\\/5330\",\"viewed_at\":\"2025-09-10T04:43:24.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(357, 'default', 'created', 'App\\Models\\PropertyView', 116, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":4,\"ip_address\":\"89.121.37.67\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_9 rv:5.0) Gecko\\/20250701 Firefox\\/37.0\",\"viewed_at\":\"2025-08-29T15:01:48.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(358, 'default', 'created', 'App\\Models\\PropertyView', 117, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":17,\"ip_address\":\"66.3.244.122\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:6.0) Gecko\\/20160302 Firefox\\/36.0\",\"viewed_at\":\"2025-09-17T09:15:24.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(359, 'default', 'created', 'App\\Models\\PropertyView', 118, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":15,\"ip_address\":\"245.247.56.109\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_5_9) AppleWebKit\\/5322 (KHTML, like Gecko) Chrome\\/37.0.815.0 Mobile Safari\\/5322\",\"viewed_at\":\"2025-08-24T18:06:40.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(360, 'default', 'created', 'App\\Models\\PropertyView', 119, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":14,\"ip_address\":\"18.104.229.85\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/534.1 (KHTML, like Gecko) Chrome\\/99.0.4713.32 Safari\\/534.1 EdgA\\/99.01040.17\",\"viewed_at\":\"2025-08-30T02:55:31.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(361, 'default', 'created', 'App\\Models\\PropertyView', 120, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":16,\"ip_address\":\"163.186.140.105\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5361 (KHTML, like Gecko) Chrome\\/39.0.836.0 Mobile Safari\\/5361\",\"viewed_at\":\"2025-08-30T13:42:50.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(362, 'default', 'created', 'App\\Models\\PropertyView', 121, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":14,\"ip_address\":\"179.197.88.181\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 4.0) AppleWebKit\\/5342 (KHTML, like Gecko) Chrome\\/36.0.889.0 Mobile Safari\\/5342\",\"viewed_at\":\"2025-08-31T18:26:43.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(363, 'default', 'created', 'App\\Models\\PropertyView', 122, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":19,\"ip_address\":\"198.137.71.2\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0) AppleWebKit\\/534.0 (KHTML, like Gecko) Chrome\\/83.0.4413.44 Safari\\/534.0 Edg\\/83.01142.71\",\"viewed_at\":\"2025-09-16T08:55:29.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(364, 'default', 'created', 'App\\Models\\PropertyView', 123, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":22,\"user_id\":14,\"ip_address\":\"21.157.250.156\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_6_9 rv:2.0) Gecko\\/20151210 Firefox\\/36.0\",\"viewed_at\":\"2025-08-22T22:52:48.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(365, 'default', 'created', 'App\\Models\\PropertyView', 124, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":4,\"ip_address\":\"123.17.148.106\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5342 (KHTML, like Gecko) Chrome\\/37.0.880.0 Mobile Safari\\/5342\",\"viewed_at\":\"2025-09-07T11:15:40.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(366, 'default', 'created', 'App\\Models\\PropertyView', 125, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":null,\"ip_address\":\"139.57.162.93\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_6_2) AppleWebKit\\/5331 (KHTML, like Gecko) Chrome\\/38.0.869.0 Mobile Safari\\/5331\",\"viewed_at\":\"2025-08-29T08:49:21.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(367, 'default', 'created', 'App\\Models\\PropertyView', 126, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":14,\"ip_address\":\"173.232.172.195\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/533.0 (KHTML, like Gecko) Chrome\\/92.0.4715.56 Safari\\/533.0 EdgA\\/92.01054.63\",\"viewed_at\":\"2025-09-16T14:34:27.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(368, 'default', 'created', 'App\\Models\\PropertyView', 127, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":13,\"ip_address\":\"96.196.80.119\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.2) AppleWebKit\\/5342 (KHTML, like Gecko) Chrome\\/38.0.886.0 Mobile Safari\\/5342\",\"viewed_at\":\"2025-09-03T00:04:18.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(369, 'default', 'created', 'App\\Models\\PropertyView', 128, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":4,\"ip_address\":\"246.1.62.99\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident\\/3.1)\",\"viewed_at\":\"2025-08-28T19:04:41.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(370, 'default', 'created', 'App\\Models\\PropertyView', 129, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"84.133.161.53\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 6.1) AppleWebKit\\/534.6.5 (KHTML, like Gecko) Version\\/5.1 Safari\\/534.6.5\",\"viewed_at\":\"2025-09-04T03:19:48.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(371, 'default', 'created', 'App\\Models\\PropertyView', 130, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"user_id\":null,\"ip_address\":\"175.191.181.9\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_8) AppleWebKit\\/536.0 (KHTML, like Gecko) Chrome\\/93.0.4511.48 Safari\\/536.0 Edg\\/93.01094.27\",\"viewed_at\":\"2025-09-03T10:09:21.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(372, 'default', 'created', 'App\\Models\\PropertyView', 131, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":16,\"ip_address\":\"25.242.244.63\",\"user_agent\":\"Opera\\/9.77 (Windows 95; sl-SI) Presto\\/2.8.247 Version\\/12.00\",\"viewed_at\":\"2025-09-12T05:04:44.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(373, 'default', 'created', 'App\\Models\\PropertyView', 132, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"62.163.112.192\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident\\/4.1)\",\"viewed_at\":\"2025-08-25T05:09:13.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(374, 'default', 'created', 'App\\Models\\PropertyView', 133, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":19,\"ip_address\":\"1.62.164.160\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_3 rv:5.0) Gecko\\/20180218 Firefox\\/36.0\",\"viewed_at\":\"2025-08-27T21:10:52.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(375, 'default', 'created', 'App\\Models\\PropertyView', 134, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":16,\"ip_address\":\"69.33.218.76\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit\\/532.0 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/86.01027.53 Mobile\\/15E148 Safari\\/532.0\",\"viewed_at\":\"2025-08-27T21:21:57.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(376, 'default', 'created', 'App\\Models\\PropertyView', 135, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":null,\"ip_address\":\"144.157.29.174\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.0; nl-NL; rv:1.9.0.20) Gecko\\/20130426 Firefox\\/36.0\",\"viewed_at\":\"2025-08-20T07:05:05.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(377, 'default', 'created', 'App\\Models\\PropertyView', 136, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":19,\"ip_address\":\"5.159.118.91\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_6_3) AppleWebKit\\/5340 (KHTML, like Gecko) Chrome\\/39.0.888.0 Mobile Safari\\/5340\",\"viewed_at\":\"2025-09-15T07:23:34.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(378, 'default', 'created', 'App\\Models\\PropertyView', 137, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":10,\"ip_address\":\"60.90.142.114\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_2 rv:3.0; nl-NL) AppleWebKit\\/533.37.2 (KHTML, like Gecko) Version\\/4.0.3 Safari\\/533.37.2\",\"viewed_at\":\"2025-09-06T23:45:05.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(379, 'default', 'created', 'App\\Models\\PropertyView', 138, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":14,\"ip_address\":\"111.241.141.240\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98) AppleWebKit\\/5352 (KHTML, like Gecko) Chrome\\/40.0.827.0 Mobile Safari\\/5352\",\"viewed_at\":\"2025-09-08T23:38:10.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(380, 'default', 'created', 'App\\Models\\PropertyView', 139, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":13,\"ip_address\":\"54.90.199.251\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_8_0 rv:6.0) Gecko\\/20161211 Firefox\\/35.0\",\"viewed_at\":\"2025-08-20T01:02:40.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(381, 'default', 'created', 'App\\Models\\PropertyView', 140, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":null,\"ip_address\":\"180.34.38.99\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.0; sl-SI; rv:1.9.0.20) Gecko\\/20131017 Firefox\\/35.0\",\"viewed_at\":\"2025-08-29T09:14:54.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(382, 'default', 'created', 'App\\Models\\PropertyView', 141, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"user_id\":10,\"ip_address\":\"118.228.255.179\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:6.0) Gecko\\/20120326 Firefox\\/36.0\",\"viewed_at\":\"2025-09-05T08:41:28.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(383, 'default', 'created', 'App\\Models\\PropertyView', 142, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":19,\"ip_address\":\"106.181.246.180\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit\\/535.1 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/98.01140.44 Mobile\\/15E148 Safari\\/535.1\",\"viewed_at\":\"2025-09-05T03:45:48.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(384, 'default', 'created', 'App\\Models\\PropertyView', 143, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":18,\"ip_address\":\"214.157.181.243\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5330 (KHTML, like Gecko) Chrome\\/40.0.832.0 Mobile Safari\\/5330\",\"viewed_at\":\"2025-09-01T22:06:51.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(385, 'default', 'created', 'App\\Models\\PropertyView', 144, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":14,\"ip_address\":\"169.161.138.32\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; sl-SI) AppleWebKit\\/531.49.2 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B117 Safari\\/6531.49.2\",\"viewed_at\":\"2025-09-17T12:39:27.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(386, 'default', 'created', 'App\\Models\\PropertyView', 145, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":18,\"ip_address\":\"163.206.161.56\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X; sl-SI) AppleWebKit\\/535.43.1 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B114 Safari\\/6535.43.1\",\"viewed_at\":\"2025-08-20T18:11:49.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(387, 'default', 'created', 'App\\Models\\PropertyView', 146, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":null,\"ip_address\":\"184.50.102.159\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_5 rv:4.0) Gecko\\/20110426 Firefox\\/37.0\",\"viewed_at\":\"2025-09-16T00:39:08.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(388, 'default', 'created', 'App\\Models\\PropertyView', 147, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":15,\"ip_address\":\"117.65.46.218\",\"user_agent\":\"Opera\\/9.88 (Windows NT 6.1; en-US) Presto\\/2.10.273 Version\\/10.00\",\"viewed_at\":\"2025-09-05T23:26:47.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(389, 'default', 'created', 'App\\Models\\PropertyView', 148, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":18,\"ip_address\":\"86.109.100.59\",\"user_agent\":\"Opera\\/8.84 (Windows NT 4.0; nl-NL) Presto\\/2.9.199 Version\\/10.00\",\"viewed_at\":\"2025-09-05T16:31:26.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(390, 'default', 'created', 'App\\Models\\PropertyView', 149, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":10,\"ip_address\":\"207.177.163.187\",\"user_agent\":\"Mozilla\\/5.0 (Windows CE) AppleWebKit\\/531.2 (KHTML, like Gecko) Chrome\\/83.0.4101.94 Safari\\/531.2 Edg\\/83.01089.49\",\"viewed_at\":\"2025-09-07T03:21:17.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(391, 'default', 'created', 'App\\Models\\PropertyView', 150, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"user_id\":12,\"ip_address\":\"189.84.189.227\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; en-US) AppleWebKit\\/533.16.2 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B111 Safari\\/6533.16.2\",\"viewed_at\":\"2025-08-26T21:32:31.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(392, 'default', 'created', 'App\\Models\\PropertyView', 151, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":18,\"ip_address\":\"39.176.79.184\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 6.0; Windows NT 4.0; Trident\\/3.1)\",\"viewed_at\":\"2025-08-21T04:50:29.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(393, 'default', 'created', 'App\\Models\\PropertyView', 152, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":null,\"ip_address\":\"38.197.155.34\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X; sl-SI) AppleWebKit\\/532.32.7 (KHTML, like Gecko) Version\\/4.0.5 Mobile\\/8B113 Safari\\/6532.32.7\",\"viewed_at\":\"2025-09-14T02:58:03.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(394, 'default', 'created', 'App\\Models\\PropertyView', 153, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":null,\"ip_address\":\"166.106.211.237\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 13_1 like Mac OS X) AppleWebKit\\/537.0 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/99.01077.36 Mobile\\/15E148 Safari\\/537.0\",\"viewed_at\":\"2025-09-14T13:34:18.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(395, 'default', 'created', 'App\\Models\\PropertyView', 154, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"user_id\":10,\"ip_address\":\"205.167.183.197\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98; Win 9x 4.90) AppleWebKit\\/535.1 (KHTML, like Gecko) Chrome\\/96.0.4130.80 Safari\\/535.1 Edg\\/96.01053.56\",\"viewed_at\":\"2025-08-20T10:26:11.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(396, 'default', 'created', 'App\\Models\\PropertyView', 155, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"91.192.66.124\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_5_9 rv:2.0) Gecko\\/20170802 Firefox\\/35.0\",\"viewed_at\":\"2025-08-24T03:49:23.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(397, 'default', 'created', 'App\\Models\\PropertyView', 156, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":18,\"user_id\":4,\"ip_address\":\"115.181.47.157\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:7.0) Gecko\\/20111017 Firefox\\/37.0\",\"viewed_at\":\"2025-08-21T15:13:28.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(398, 'default', 'created', 'App\\Models\\PropertyView', 157, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":11,\"ip_address\":\"17.38.213.33\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 6.0; Windows NT 4.0; Trident\\/3.0)\",\"viewed_at\":\"2025-09-05T22:43:06.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(399, 'default', 'created', 'App\\Models\\PropertyView', 158, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":15,\"ip_address\":\"33.178.72.30\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_6 rv:6.0) Gecko\\/20240701 Firefox\\/35.0\",\"viewed_at\":\"2025-09-16T23:17:18.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(400, 'default', 'created', 'App\\Models\\PropertyView', 159, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":17,\"ip_address\":\"59.21.158.172\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 7_2_1 like Mac OS X; en-US) AppleWebKit\\/534.3.5 (KHTML, like Gecko) Version\\/4.0.5 Mobile\\/8B118 Safari\\/6534.3.5\",\"viewed_at\":\"2025-08-23T17:35:41.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(401, 'default', 'created', 'App\\Models\\PropertyView', 160, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":17,\"ip_address\":\"224.186.196.155\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.0) AppleWebKit\\/5332 (KHTML, like Gecko) Chrome\\/38.0.864.0 Mobile Safari\\/5332\",\"viewed_at\":\"2025-08-20T12:05:26.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(402, 'default', 'created', 'App\\Models\\PropertyView', 161, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":14,\"ip_address\":\"73.168.241.184\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows NT 6.0; Trident\\/3.1)\",\"viewed_at\":\"2025-09-11T11:18:32.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(403, 'default', 'created', 'App\\Models\\PropertyView', 162, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"user_id\":null,\"ip_address\":\"189.112.107.56\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows NT 6.0; Trident\\/5.1)\",\"viewed_at\":\"2025-09-16T23:06:21.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(404, 'default', 'created', 'App\\Models\\PropertyView', 163, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"247.184.150.96\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X; nl-NL) AppleWebKit\\/535.19.7 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B119 Safari\\/6535.19.7\",\"viewed_at\":\"2025-09-02T17:27:42.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(405, 'default', 'created', 'App\\Models\\PropertyView', 164, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":19,\"ip_address\":\"180.56.124.20\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:7.0) Gecko\\/20170123 Firefox\\/37.0\",\"viewed_at\":\"2025-09-15T20:55:32.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(406, 'default', 'created', 'App\\Models\\PropertyView', 165, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":16,\"ip_address\":\"73.86.185.79\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.0) AppleWebKit\\/5332 (KHTML, like Gecko) Chrome\\/37.0.891.0 Mobile Safari\\/5332\",\"viewed_at\":\"2025-08-23T15:15:30.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(407, 'default', 'created', 'App\\Models\\PropertyView', 166, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":null,\"ip_address\":\"94.217.154.22\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 6.0; Windows NT 5.1; Trident\\/3.1)\",\"viewed_at\":\"2025-09-14T19:03:59.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(408, 'default', 'created', 'App\\Models\\PropertyView', 167, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"user_id\":13,\"ip_address\":\"105.218.50.138\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows NT 5.2; Trident\\/3.1)\",\"viewed_at\":\"2025-08-31T16:56:46.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(409, 'default', 'created', 'App\\Models\\PropertyView', 168, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":19,\"ip_address\":\"27.185.135.224\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98) AppleWebKit\\/537.2 (KHTML, like Gecko) Chrome\\/89.0.4344.73 Safari\\/537.2 Edg\\/89.01064.49\",\"viewed_at\":\"2025-09-04T16:35:38.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(410, 'default', 'created', 'App\\Models\\PropertyView', 169, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":22,\"user_id\":16,\"ip_address\":\"136.128.54.87\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 10.0; Windows 95; Trident\\/5.0)\",\"viewed_at\":\"2025-08-27T13:53:37.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(411, 'default', 'created', 'App\\Models\\PropertyView', 170, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":12,\"ip_address\":\"90.27.130.53\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:6.0) Gecko\\/20130822 Firefox\\/35.0\",\"viewed_at\":\"2025-08-28T19:14:25.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(412, 'default', 'created', 'App\\Models\\PropertyView', 171, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":4,\"ip_address\":\"134.123.83.84\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 6.0; Windows 95; Trident\\/3.1)\",\"viewed_at\":\"2025-09-11T04:09:30.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(413, 'default', 'created', 'App\\Models\\PropertyView', 172, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":4,\"ip_address\":\"63.67.245.58\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows NT 6.1; Trident\\/4.0)\",\"viewed_at\":\"2025-09-07T02:46:52.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(414, 'default', 'created', 'App\\Models\\PropertyView', 173, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":null,\"ip_address\":\"1.123.103.40\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_6_7) AppleWebKit\\/5330 (KHTML, like Gecko) Chrome\\/37.0.870.0 Mobile Safari\\/5330\",\"viewed_at\":\"2025-08-29T19:39:33.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(415, 'default', 'created', 'App\\Models\\PropertyView', 174, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"200.114.187.248\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident\\/4.0)\",\"viewed_at\":\"2025-09-02T19:42:50.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(416, 'default', 'created', 'App\\Models\\PropertyView', 175, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":19,\"ip_address\":\"94.125.13.231\",\"user_agent\":\"Opera\\/9.77 (Windows NT 4.0; sl-SI) Presto\\/2.11.217 Version\\/11.00\",\"viewed_at\":\"2025-09-11T17:10:31.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(417, 'default', 'created', 'App\\Models\\PropertyView', 176, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":16,\"ip_address\":\"152.63.31.113\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_1) AppleWebKit\\/537.2 (KHTML, like Gecko) Chrome\\/85.0.4409.46 Safari\\/537.2 Edg\\/85.01012.95\",\"viewed_at\":\"2025-09-13T07:42:11.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(418, 'default', 'created', 'App\\Models\\PropertyView', 177, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":16,\"ip_address\":\"14.213.236.212\",\"user_agent\":\"Opera\\/9.82 (X11; Linux i686; nl-NL) Presto\\/2.8.179 Version\\/10.00\",\"viewed_at\":\"2025-09-02T23:09:35.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(419, 'default', 'created', 'App\\Models\\PropertyView', 178, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":13,\"ip_address\":\"163.187.64.204\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98; en-US; rv:1.9.0.20) Gecko\\/20121203 Firefox\\/37.0\",\"viewed_at\":\"2025-08-31T13:21:22.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(420, 'default', 'created', 'App\\Models\\PropertyView', 179, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":16,\"user_id\":13,\"ip_address\":\"71.171.252.17\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:5.0) Gecko\\/20221014 Firefox\\/36.0\",\"viewed_at\":\"2025-08-21T06:51:41.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(421, 'default', 'created', 'App\\Models\\PropertyView', 180, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"user_id\":11,\"ip_address\":\"255.233.207.239\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 13_0 like Mac OS X) AppleWebKit\\/534.1 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/80.01027.30 Mobile\\/15E148 Safari\\/534.1\",\"viewed_at\":\"2025-08-27T15:05:38.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(422, 'default', 'created', 'App\\Models\\PropertyView', 181, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":13,\"ip_address\":\"193.85.187.14\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5352 (KHTML, like Gecko) Chrome\\/37.0.889.0 Mobile Safari\\/5352\",\"viewed_at\":\"2025-08-27T00:48:54.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(423, 'default', 'created', 'App\\Models\\PropertyView', 182, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":10,\"ip_address\":\"24.139.213.199\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.0; nl-NL; rv:1.9.1.20) Gecko\\/20210625 Firefox\\/36.0\",\"viewed_at\":\"2025-08-22T07:41:57.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(424, 'default', 'created', 'App\\Models\\PropertyView', 183, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"user_id\":4,\"ip_address\":\"110.213.25.120\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_6_9 rv:2.0; sl-SI) AppleWebKit\\/532.14.3 (KHTML, like Gecko) Version\\/5.0 Safari\\/532.14.3\",\"viewed_at\":\"2025-08-25T20:21:31.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(425, 'default', 'created', 'App\\Models\\PropertyView', 184, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"ip_address\":\"166.171.191.12\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:7.0) Gecko\\/20161105 Firefox\\/37.0\",\"viewed_at\":\"2025-09-05T13:28:21.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(426, 'default', 'created', 'App\\Models\\PropertyView', 185, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"user_id\":10,\"ip_address\":\"122.12.130.252\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 10.0; Windows NT 5.0; Trident\\/4.1)\",\"viewed_at\":\"2025-08-20T11:18:27.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(427, 'default', 'created', 'App\\Models\\PropertyView', 186, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"user_id\":null,\"ip_address\":\"205.8.208.95\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_6_3) AppleWebKit\\/537.1 (KHTML, like Gecko) Chrome\\/93.0.4757.16 Safari\\/537.1 Edg\\/93.01073.6\",\"viewed_at\":\"2025-08-25T05:05:13.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(428, 'default', 'created', 'App\\Models\\PropertyView', 187, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":10,\"ip_address\":\"204.251.147.109\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5341 (KHTML, like Gecko) Chrome\\/38.0.835.0 Mobile Safari\\/5341\",\"viewed_at\":\"2025-08-25T02:03:07.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(429, 'default', 'created', 'App\\Models\\PropertyView', 188, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":13,\"ip_address\":\"100.136.51.219\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 8_2_2 like Mac OS X; sl-SI) AppleWebKit\\/534.24.5 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B116 Safari\\/6534.24.5\",\"viewed_at\":\"2025-08-25T12:40:18.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(430, 'default', 'created', 'App\\Models\\PropertyView', 189, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":14,\"ip_address\":\"183.194.16.226\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:5.0) Gecko\\/20230628 Firefox\\/37.0\",\"viewed_at\":\"2025-09-03T10:15:37.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(431, 'default', 'created', 'App\\Models\\PropertyView', 190, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":null,\"ip_address\":\"136.176.206.220\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/536.0 (KHTML, like Gecko) Chrome\\/81.0.4090.42 Safari\\/536.0 EdgA\\/81.01041.44\",\"viewed_at\":\"2025-08-20T00:28:30.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(432, 'default', 'created', 'App\\Models\\PropertyView', 191, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"user_id\":11,\"ip_address\":\"230.19.160.16\",\"user_agent\":\"Opera\\/9.47 (X11; Linux i686; en-US) Presto\\/2.8.183 Version\\/10.00\",\"viewed_at\":\"2025-08-23T18:51:21.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(433, 'default', 'created', 'App\\Models\\PropertyView', 192, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":11,\"ip_address\":\"8.11.207.234\",\"user_agent\":\"Opera\\/8.60 (X11; Linux i686; sl-SI) Presto\\/2.8.310 Version\\/12.00\",\"viewed_at\":\"2025-08-21T15:55:40.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(434, 'default', 'created', 'App\\Models\\PropertyView', 193, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":null,\"ip_address\":\"18.212.10.4\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 13_1 like Mac OS X) AppleWebKit\\/537.1 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/82.01047.85 Mobile\\/15E148 Safari\\/537.1\",\"viewed_at\":\"2025-08-25T16:48:05.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(435, 'default', 'created', 'App\\Models\\PropertyView', 194, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"user_id\":11,\"ip_address\":\"140.65.209.135\",\"user_agent\":\"Opera\\/8.67 (Windows NT 5.2; en-US) Presto\\/2.9.176 Version\\/12.00\",\"viewed_at\":\"2025-08-31T22:58:44.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(436, 'default', 'created', 'App\\Models\\PropertyView', 195, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"95.96.102.67\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 8_2_1 like Mac OS X; en-US) AppleWebKit\\/535.30.5 (KHTML, like Gecko) Version\\/4.0.5 Mobile\\/8B115 Safari\\/6535.30.5\",\"viewed_at\":\"2025-09-15T02:01:22.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(437, 'default', 'created', 'App\\Models\\PropertyView', 196, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"user_id\":null,\"ip_address\":\"36.64.235.110\",\"user_agent\":\"Mozilla\\/5.0 (Windows CE; en-US; rv:1.9.2.20) Gecko\\/20130228 Firefox\\/37.0\",\"viewed_at\":\"2025-09-12T19:20:50.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(438, 'default', 'created', 'App\\Models\\PropertyView', 197, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"78.226.102.34\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0; nl-NL; rv:1.9.2.20) Gecko\\/20231107 Firefox\\/35.0\",\"viewed_at\":\"2025-09-08T15:14:36.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(439, 'default', 'created', 'App\\Models\\PropertyView', 198, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":16,\"ip_address\":\"92.133.38.235\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_1 rv:3.0; sl-SI) AppleWebKit\\/534.21.3 (KHTML, like Gecko) Version\\/5.0.5 Safari\\/534.21.3\",\"viewed_at\":\"2025-09-07T02:09:30.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(440, 'default', 'created', 'App\\Models\\PropertyView', 199, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"user_id\":18,\"ip_address\":\"12.238.89.9\",\"user_agent\":\"Opera\\/8.16 (X11; Linux i686; nl-NL) Presto\\/2.12.278 Version\\/10.00\",\"viewed_at\":\"2025-09-15T18:09:28.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(441, 'default', 'created', 'App\\Models\\PropertyView', 200, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":10,\"ip_address\":\"243.78.137.211\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 5.1) AppleWebKit\\/535.31.1 (KHTML, like Gecko) Version\\/5.0 Safari\\/535.31.1\",\"viewed_at\":\"2025-09-13T08:49:00.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(442, 'default', 'created', 'App\\Models\\PropertyView', 201, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":13,\"ip_address\":\"209.247.210.78\",\"user_agent\":\"Opera\\/8.89 (X11; Linux i686; sl-SI) Presto\\/2.9.199 Version\\/11.00\",\"viewed_at\":\"2025-09-02T20:17:08.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(443, 'default', 'created', 'App\\Models\\PropertyView', 202, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":17,\"ip_address\":\"84.61.215.142\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 7.0; Windows NT 6.2; Trident\\/5.1)\",\"viewed_at\":\"2025-09-15T00:05:20.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(444, 'default', 'created', 'App\\Models\\PropertyView', 203, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"245.166.69.251\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0) AppleWebKit\\/532.0 (KHTML, like Gecko) Chrome\\/97.0.4297.34 Safari\\/532.0 Edg\\/97.01128.63\",\"viewed_at\":\"2025-09-18T02:12:08.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(445, 'default', 'created', 'App\\Models\\PropertyView', 204, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"213.254.243.251\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_5_1) AppleWebKit\\/5321 (KHTML, like Gecko) Chrome\\/38.0.894.0 Mobile Safari\\/5321\",\"viewed_at\":\"2025-08-23T16:39:07.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(446, 'default', 'created', 'App\\Models\\PropertyView', 205, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":15,\"ip_address\":\"190.112.143.198\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5350 (KHTML, like Gecko) Chrome\\/40.0.890.0 Mobile Safari\\/5350\",\"viewed_at\":\"2025-09-14T05:07:54.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(447, 'default', 'created', 'App\\Models\\PropertyView', 206, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"143.201.161.39\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident\\/4.1)\",\"viewed_at\":\"2025-08-21T01:51:34.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(448, 'default', 'created', 'App\\Models\\PropertyView', 207, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":19,\"ip_address\":\"156.129.192.15\",\"user_agent\":\"Mozilla\\/5.0 (Windows 95) AppleWebKit\\/531.2 (KHTML, like Gecko) Chrome\\/81.0.4094.10 Safari\\/531.2 Edg\\/81.01143.88\",\"viewed_at\":\"2025-08-26T23:27:08.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(449, 'default', 'created', 'App\\Models\\PropertyView', 208, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":13,\"ip_address\":\"205.107.249.212\",\"user_agent\":\"Opera\\/8.73 (X11; Linux x86_64; en-US) Presto\\/2.8.209 Version\\/12.00\",\"viewed_at\":\"2025-08-26T22:51:23.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(450, 'default', 'created', 'App\\Models\\PropertyView', 209, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":15,\"ip_address\":\"69.127.1.57\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5332 (KHTML, like Gecko) Chrome\\/36.0.873.0 Mobile Safari\\/5332\",\"viewed_at\":\"2025-08-20T14:06:19.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(451, 'default', 'created', 'App\\Models\\PropertyView', 210, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":19,\"ip_address\":\"151.143.77.172\",\"user_agent\":\"Opera\\/8.17 (Windows 95; en-US) Presto\\/2.9.172 Version\\/12.00\",\"viewed_at\":\"2025-09-14T04:54:08.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(452, 'default', 'created', 'App\\Models\\PropertyView', 211, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":17,\"ip_address\":\"213.250.53.92\",\"user_agent\":\"Opera\\/8.89 (X11; Linux x86_64; nl-NL) Presto\\/2.12.218 Version\\/11.00\",\"viewed_at\":\"2025-09-13T05:38:05.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(453, 'default', 'created', 'App\\Models\\PropertyView', 212, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":11,\"ip_address\":\"170.144.63.233\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0; sl-SI; rv:1.9.1.20) Gecko\\/20220602 Firefox\\/36.0\",\"viewed_at\":\"2025-08-20T06:42:43.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(454, 'default', 'created', 'App\\Models\\PropertyView', 213, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"81.54.139.224\",\"user_agent\":\"Mozilla\\/5.0 (Windows 95; en-US; rv:1.9.1.20) Gecko\\/20140530 Firefox\\/36.0\",\"viewed_at\":\"2025-09-07T11:16:28.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(455, 'default', 'created', 'App\\Models\\PropertyView', 214, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":10,\"ip_address\":\"201.140.56.153\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 5.2) AppleWebKit\\/535.36.5 (KHTML, like Gecko) Version\\/5.0 Safari\\/535.36.5\",\"viewed_at\":\"2025-08-28T00:41:20.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(456, 'default', 'created', 'App\\Models\\PropertyView', 215, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"128.14.117.226\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 4.0; en-US; rv:1.9.2.20) Gecko\\/20150114 Firefox\\/37.0\",\"viewed_at\":\"2025-08-25T22:57:11.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(457, 'default', 'created', 'App\\Models\\PropertyView', 216, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":11,\"ip_address\":\"195.131.182.231\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 9.0; Windows CE; Trident\\/3.0)\",\"viewed_at\":\"2025-08-31T09:35:13.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(458, 'default', 'created', 'App\\Models\\PropertyView', 217, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"178.107.109.64\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident\\/3.1)\",\"viewed_at\":\"2025-09-10T00:35:14.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(459, 'default', 'created', 'App\\Models\\PropertyView', 218, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":4,\"ip_address\":\"227.1.7.252\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/531.0 (KHTML, like Gecko) Chrome\\/81.0.4444.92 Safari\\/531.0 EdgA\\/81.01135.93\",\"viewed_at\":\"2025-08-27T17:20:58.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(460, 'default', 'created', 'App\\Models\\PropertyView', 219, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":10,\"ip_address\":\"41.53.28.105\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5332 (KHTML, like Gecko) Chrome\\/40.0.806.0 Mobile Safari\\/5332\",\"viewed_at\":\"2025-08-25T04:25:15.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(461, 'default', 'created', 'App\\Models\\PropertyView', 220, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":12,\"ip_address\":\"86.111.99.196\",\"user_agent\":\"Opera\\/8.85 (Windows NT 6.2; en-US) Presto\\/2.11.260 Version\\/10.00\",\"viewed_at\":\"2025-09-18T04:17:40.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(462, 'default', 'created', 'App\\Models\\PropertyView', 221, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"6.217.252.29\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_8_1) AppleWebKit\\/5341 (KHTML, like Gecko) Chrome\\/37.0.844.0 Mobile Safari\\/5341\",\"viewed_at\":\"2025-09-08T05:03:59.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(463, 'default', 'created', 'App\\Models\\PropertyView', 222, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"128.120.73.22\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_7_0) AppleWebKit\\/5360 (KHTML, like Gecko) Chrome\\/37.0.885.0 Mobile Safari\\/5360\",\"viewed_at\":\"2025-09-01T18:27:46.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(464, 'default', 'created', 'App\\Models\\PropertyView', 223, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"62.133.195.4\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98) AppleWebKit\\/5350 (KHTML, like Gecko) Chrome\\/39.0.848.0 Mobile Safari\\/5350\",\"viewed_at\":\"2025-09-08T22:09:02.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(465, 'default', 'created', 'App\\Models\\PropertyView', 224, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":4,\"ip_address\":\"176.169.104.54\",\"user_agent\":\"Opera\\/8.82 (Windows NT 4.0; sl-SI) Presto\\/2.10.302 Version\\/11.00\",\"viewed_at\":\"2025-08-23T14:34:24.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(466, 'default', 'created', 'App\\Models\\PropertyView', 225, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"142.142.71.153\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.01) AppleWebKit\\/537.1 (KHTML, like Gecko) Chrome\\/97.0.4367.63 Safari\\/537.1 Edg\\/97.01116.0\",\"viewed_at\":\"2025-09-18T16:32:08.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(467, 'default', 'created', 'App\\Models\\PropertyView', 226, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"250.150.34.134\",\"user_agent\":\"Opera\\/8.83 (Windows NT 6.0; nl-NL) Presto\\/2.10.218 Version\\/12.00\",\"viewed_at\":\"2025-09-14T06:48:35.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(468, 'default', 'created', 'App\\Models\\PropertyView', 227, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"105.113.82.110\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_5_1 rv:2.0) Gecko\\/20171027 Firefox\\/35.0\",\"viewed_at\":\"2025-08-21T06:12:25.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(469, 'default', 'created', 'App\\Models\\PropertyView', 228, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":14,\"ip_address\":\"208.54.180.58\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1) AppleWebKit\\/533.2 (KHTML, like Gecko) Chrome\\/96.0.4043.99 Safari\\/533.2 Edg\\/96.01028.37\",\"viewed_at\":\"2025-09-02T20:25:31.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(470, 'default', 'created', 'App\\Models\\PropertyView', 229, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"239.173.185.128\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 6.2) AppleWebKit\\/531.50.5 (KHTML, like Gecko) Version\\/4.0.1 Safari\\/531.50.5\",\"viewed_at\":\"2025-08-23T00:40:59.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(471, 'default', 'created', 'App\\Models\\PropertyView', 230, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"177.68.85.196\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0) AppleWebKit\\/5362 (KHTML, like Gecko) Chrome\\/40.0.889.0 Mobile Safari\\/5362\",\"viewed_at\":\"2025-09-05T11:26:25.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(472, 'default', 'created', 'App\\Models\\PropertyView', 231, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"209.241.205.129\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident\\/3.0)\",\"viewed_at\":\"2025-08-21T19:53:39.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(473, 'default', 'created', 'App\\Models\\PropertyView', 232, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":18,\"ip_address\":\"158.10.119.75\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/532.2 (KHTML, like Gecko) Chrome\\/92.0.4345.16 Safari\\/532.2 EdgA\\/92.01013.35\",\"viewed_at\":\"2025-08-21T16:46:12.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(474, 'default', 'created', 'App\\Models\\PropertyView', 233, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":4,\"ip_address\":\"12.189.35.103\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows 98; Win 9x 4.90; Trident\\/4.0)\",\"viewed_at\":\"2025-09-11T05:42:13.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(475, 'default', 'created', 'App\\Models\\PropertyView', 234, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":4,\"ip_address\":\"92.203.227.212\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:7.0) Gecko\\/20221212 Firefox\\/36.0\",\"viewed_at\":\"2025-08-26T03:11:04.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(476, 'default', 'created', 'App\\Models\\PropertyView', 235, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"124.66.135.84\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0) AppleWebKit\\/5351 (KHTML, like Gecko) Chrome\\/36.0.800.0 Mobile Safari\\/5351\",\"viewed_at\":\"2025-08-31T23:23:34.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(477, 'default', 'created', 'App\\Models\\PropertyView', 236, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"239.219.158.177\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit\\/534.1 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/97.01095.10 Mobile\\/15E148 Safari\\/534.1\",\"viewed_at\":\"2025-09-16T06:06:19.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(478, 'default', 'created', 'App\\Models\\PropertyView', 237, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"114.254.209.28\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit\\/536.1 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/84.01054.3 Mobile\\/15E148 Safari\\/536.1\",\"viewed_at\":\"2025-08-25T15:28:18.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(479, 'default', 'created', 'App\\Models\\PropertyView', 238, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"19.244.201.5\",\"user_agent\":\"Opera\\/9.44 (X11; Linux x86_64; sl-SI) Presto\\/2.8.349 Version\\/10.00\",\"viewed_at\":\"2025-09-11T05:53:35.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(480, 'default', 'created', 'App\\Models\\PropertyView', 239, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":15,\"ip_address\":\"19.87.89.56\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:5.0) Gecko\\/20100506 Firefox\\/37.0\",\"viewed_at\":\"2025-08-27T23:22:18.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(481, 'default', 'created', 'App\\Models\\PropertyView', 240, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"149.7.69.83\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.0) AppleWebKit\\/534.0 (KHTML, like Gecko) Chrome\\/83.0.4641.16 Safari\\/534.0 Edg\\/83.01088.11\",\"viewed_at\":\"2025-08-21T13:17:00.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(482, 'default', 'created', 'App\\Models\\PropertyView', 241, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"9.0.5.46\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 6.2) AppleWebKit\\/534.43.1 (KHTML, like Gecko) Version\\/5.0.3 Safari\\/534.43.1\",\"viewed_at\":\"2025-09-05T12:21:29.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(483, 'default', 'created', 'App\\Models\\PropertyView', 242, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":12,\"ip_address\":\"115.121.12.64\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5341 (KHTML, like Gecko) Chrome\\/37.0.857.0 Mobile Safari\\/5341\",\"viewed_at\":\"2025-09-01T13:44:02.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(484, 'default', 'created', 'App\\Models\\PropertyView', 243, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"32.153.167.44\",\"user_agent\":\"Opera\\/9.90 (Windows NT 6.0; en-US) Presto\\/2.12.163 Version\\/10.00\",\"viewed_at\":\"2025-09-15T08:49:06.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(485, 'default', 'created', 'App\\Models\\PropertyView', 244, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":16,\"ip_address\":\"128.216.73.72\",\"user_agent\":\"Opera\\/8.35 (X11; Linux x86_64; sl-SI) Presto\\/2.12.196 Version\\/12.00\",\"viewed_at\":\"2025-08-27T07:58:04.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(486, 'default', 'created', 'App\\Models\\PropertyView', 245, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":15,\"ip_address\":\"87.203.179.135\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/535.2 (KHTML, like Gecko) Chrome\\/96.0.4088.43 Safari\\/535.2 EdgA\\/96.01005.64\",\"viewed_at\":\"2025-09-18T00:02:48.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(487, 'default', 'created', 'App\\Models\\PropertyView', 246, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"234.109.56.157\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 7_2_2 like Mac OS X; sl-SI) AppleWebKit\\/532.8.3 (KHTML, like Gecko) Version\\/4.0.5 Mobile\\/8B114 Safari\\/6532.8.3\",\"viewed_at\":\"2025-09-17T06:08:49.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(488, 'default', 'created', 'App\\Models\\PropertyView', 247, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":14,\"ip_address\":\"43.92.132.208\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_1) AppleWebKit\\/531.2 (KHTML, like Gecko) Chrome\\/95.0.4429.53 Safari\\/531.2 Edg\\/95.01078.20\",\"viewed_at\":\"2025-09-15T13:54:37.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(489, 'default', 'created', 'App\\Models\\PropertyView', 248, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":15,\"ip_address\":\"62.80.226.65\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 6.1) AppleWebKit\\/535.47.4 (KHTML, like Gecko) Version\\/4.0.4 Safari\\/535.47.4\",\"viewed_at\":\"2025-08-30T21:48:41.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(490, 'default', 'created', 'App\\Models\\PropertyView', 249, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":17,\"ip_address\":\"232.62.6.146\",\"user_agent\":\"Opera\\/9.20 (Windows 98; Win 9x 4.90; nl-NL) Presto\\/2.10.341 Version\\/10.00\",\"viewed_at\":\"2025-09-07T06:55:06.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(491, 'default', 'created', 'App\\Models\\PropertyView', 250, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"48.105.188.30\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 6.2) AppleWebKit\\/534.20.4 (KHTML, like Gecko) Version\\/5.0.4 Safari\\/534.20.4\",\"viewed_at\":\"2025-08-29T12:07:35.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(492, 'default', 'created', 'App\\Models\\PropertyView', 251, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":17,\"ip_address\":\"127.95.83.75\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98) AppleWebKit\\/536.0 (KHTML, like Gecko) Chrome\\/97.0.4700.93 Safari\\/536.0 Edg\\/97.01036.79\",\"viewed_at\":\"2025-08-29T04:30:17.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(493, 'default', 'created', 'App\\Models\\PropertyView', 252, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":14,\"ip_address\":\"245.149.144.151\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_5_5 rv:4.0) Gecko\\/20210919 Firefox\\/37.0\",\"viewed_at\":\"2025-08-20T19:42:22.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(494, 'default', 'created', 'App\\Models\\PropertyView', 253, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":19,\"ip_address\":\"184.10.87.188\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5330 (KHTML, like Gecko) Chrome\\/38.0.897.0 Mobile Safari\\/5330\",\"viewed_at\":\"2025-09-09T23:37:42.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(495, 'default', 'created', 'App\\Models\\PropertyView', 254, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":18,\"ip_address\":\"177.69.17.244\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 9.0; Windows 95; Trident\\/5.1)\",\"viewed_at\":\"2025-08-30T18:57:00.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(496, 'default', 'created', 'App\\Models\\PropertyView', 255, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":18,\"ip_address\":\"108.197.109.233\",\"user_agent\":\"Mozilla\\/5.0 (Windows 95) AppleWebKit\\/537.2 (KHTML, like Gecko) Chrome\\/87.0.4555.97 Safari\\/537.2 Edg\\/87.01136.31\",\"viewed_at\":\"2025-08-20T08:25:39.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(497, 'default', 'created', 'App\\Models\\PropertyView', 256, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":11,\"ip_address\":\"108.194.74.58\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 8.0; Windows NT 5.01; Trident\\/4.0)\",\"viewed_at\":\"2025-09-01T22:23:53.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(498, 'default', 'created', 'App\\Models\\PropertyView', 257, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"161.65.247.70\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_5_2 rv:3.0; en-US) AppleWebKit\\/535.16.6 (KHTML, like Gecko) Version\\/5.0 Safari\\/535.16.6\",\"viewed_at\":\"2025-08-21T04:46:16.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(499, 'default', 'created', 'App\\Models\\PropertyView', 258, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":16,\"ip_address\":\"50.153.221.193\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:5.0) Gecko\\/20211214 Firefox\\/37.0\",\"viewed_at\":\"2025-08-21T14:25:42.000000Z\"}}', NULL, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(500, 'default', 'created', 'App\\Models\\PropertyView', 259, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":4,\"ip_address\":\"73.43.70.131\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.01) AppleWebKit\\/5351 (KHTML, like Gecko) Chrome\\/40.0.807.0 Mobile Safari\\/5351\",\"viewed_at\":\"2025-08-26T21:37:28.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(501, 'default', 'created', 'App\\Models\\PropertyView', 260, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":10,\"ip_address\":\"164.40.194.147\",\"user_agent\":\"Opera\\/9.99 (Windows CE; sl-SI) Presto\\/2.9.175 Version\\/10.00\",\"viewed_at\":\"2025-09-01T05:49:10.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(502, 'default', 'created', 'App\\Models\\PropertyView', 261, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":13,\"ip_address\":\"234.36.234.89\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/534.2 (KHTML, like Gecko) Chrome\\/96.0.4484.92 Safari\\/534.2 EdgA\\/96.01122.91\",\"viewed_at\":\"2025-08-27T21:10:14.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(503, 'default', 'created', 'App\\Models\\PropertyView', 262, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":15,\"ip_address\":\"52.119.4.252\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.2) AppleWebKit\\/536.0 (KHTML, like Gecko) Chrome\\/89.0.4175.14 Safari\\/536.0 Edg\\/89.01041.95\",\"viewed_at\":\"2025-08-30T17:24:26.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(504, 'default', 'created', 'App\\Models\\PropertyView', 263, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"148.113.63.47\",\"user_agent\":\"Mozilla\\/5.0 (Windows 95) AppleWebKit\\/5331 (KHTML, like Gecko) Chrome\\/36.0.850.0 Mobile Safari\\/5331\",\"viewed_at\":\"2025-08-27T07:23:30.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(505, 'default', 'created', 'App\\Models\\PropertyView', 264, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"20.11.138.125\",\"user_agent\":\"Opera\\/9.79 (X11; Linux i686; nl-NL) Presto\\/2.11.233 Version\\/12.00\",\"viewed_at\":\"2025-08-28T07:19:57.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(506, 'default', 'created', 'App\\Models\\PropertyView', 265, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"5.126.86.194\",\"user_agent\":\"Opera\\/8.53 (Windows 95; en-US) Presto\\/2.9.244 Version\\/12.00\",\"viewed_at\":\"2025-09-13T09:43:48.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(507, 'default', 'created', 'App\\Models\\PropertyView', 266, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"194.171.211.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_6_2) AppleWebKit\\/5312 (KHTML, like Gecko) Chrome\\/37.0.836.0 Mobile Safari\\/5312\",\"viewed_at\":\"2025-08-29T01:05:26.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(508, 'default', 'created', 'App\\Models\\PropertyView', 267, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":4,\"ip_address\":\"136.134.31.70\",\"user_agent\":\"Opera\\/9.68 (Windows NT 5.2; en-US) Presto\\/2.12.194 Version\\/12.00\",\"viewed_at\":\"2025-08-29T23:51:42.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(509, 'default', 'created', 'App\\Models\\PropertyView', 268, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"116.10.152.76\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0) AppleWebKit\\/536.1 (KHTML, like Gecko) Chrome\\/84.0.4378.53 Safari\\/536.1 Edg\\/84.01069.40\",\"viewed_at\":\"2025-09-09T22:21:24.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(510, 'default', 'created', 'App\\Models\\PropertyView', 269, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":12,\"ip_address\":\"115.244.187.34\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows NT 5.1; Trident\\/5.1)\",\"viewed_at\":\"2025-09-08T13:51:11.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(511, 'default', 'created', 'App\\Models\\PropertyView', 270, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"39.97.242.9\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 8.0; Windows 98; Win 9x 4.90; Trident\\/3.0)\",\"viewed_at\":\"2025-09-14T00:27:34.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(512, 'default', 'created', 'App\\Models\\PropertyView', 271, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":19,\"ip_address\":\"71.213.141.206\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit\\/5361 (KHTML, like Gecko) Chrome\\/38.0.824.0 Mobile Safari\\/5361\",\"viewed_at\":\"2025-08-23T03:40:20.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(513, 'default', 'created', 'App\\Models\\PropertyView', 272, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"60.77.37.126\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 15_2 like Mac OS X) AppleWebKit\\/537.0 (KHTML, like Gecko) Version\\/15.0 EdgiOS\\/81.01142.43 Mobile\\/15E148 Safari\\/537.0\",\"viewed_at\":\"2025-08-28T09:34:34.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(514, 'default', 'created', 'App\\Models\\PropertyView', 273, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"15.163.231.202\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_6_5) AppleWebKit\\/5340 (KHTML, like Gecko) Chrome\\/36.0.842.0 Mobile Safari\\/5340\",\"viewed_at\":\"2025-08-26T06:22:03.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(515, 'default', 'created', 'App\\Models\\PropertyView', 274, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":12,\"ip_address\":\"12.118.26.137\",\"user_agent\":\"Opera\\/9.44 (X11; Linux x86_64; en-US) Presto\\/2.11.251 Version\\/11.00\",\"viewed_at\":\"2025-09-08T03:13:32.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(516, 'default', 'created', 'App\\Models\\PropertyView', 275, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":15,\"ip_address\":\"100.89.1.206\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows NT 5.01; Trident\\/4.1)\",\"viewed_at\":\"2025-08-23T04:21:53.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(517, 'default', 'created', 'App\\Models\\PropertyView', 276, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":4,\"ip_address\":\"44.54.144.83\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_7_5 rv:2.0; en-US) AppleWebKit\\/535.21.4 (KHTML, like Gecko) Version\\/4.0.4 Safari\\/535.21.4\",\"viewed_at\":\"2025-09-11T12:33:48.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(518, 'default', 'created', 'App\\Models\\PropertyView', 277, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":16,\"ip_address\":\"75.41.64.0\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 11.0; Windows NT 4.0; Trident\\/4.1)\",\"viewed_at\":\"2025-08-23T18:38:45.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(519, 'default', 'created', 'App\\Models\\PropertyView', 278, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":13,\"ip_address\":\"147.25.202.70\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/531.2 (KHTML, like Gecko) Chrome\\/95.0.4777.20 Safari\\/531.2 EdgA\\/95.01021.82\",\"viewed_at\":\"2025-08-22T07:58:40.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(520, 'default', 'created', 'App\\Models\\PropertyView', 279, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":19,\"ip_address\":\"8.6.143.55\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 7.0; Windows 95; Trident\\/5.0)\",\"viewed_at\":\"2025-08-24T13:16:52.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(521, 'default', 'created', 'App\\Models\\PropertyView', 280, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"96.156.88.25\",\"user_agent\":\"Opera\\/9.55 (X11; Linux x86_64; nl-NL) Presto\\/2.11.210 Version\\/11.00\",\"viewed_at\":\"2025-08-29T22:47:14.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(522, 'default', 'created', 'App\\Models\\PropertyView', 281, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":19,\"ip_address\":\"34.135.170.126\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_5_6 rv:2.0) Gecko\\/20240229 Firefox\\/35.0\",\"viewed_at\":\"2025-09-12T11:33:57.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(523, 'default', 'created', 'App\\Models\\PropertyView', 282, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":4,\"ip_address\":\"142.95.168.192\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 4.0) AppleWebKit\\/5311 (KHTML, like Gecko) Chrome\\/38.0.896.0 Mobile Safari\\/5311\",\"viewed_at\":\"2025-09-02T04:03:41.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(524, 'default', 'created', 'App\\Models\\PropertyView', 283, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"165.30.204.74\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5311 (KHTML, like Gecko) Chrome\\/36.0.844.0 Mobile Safari\\/5311\",\"viewed_at\":\"2025-08-25T10:59:27.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(525, 'default', 'created', 'App\\Models\\PropertyView', 284, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"184.64.57.191\",\"user_agent\":\"Opera\\/9.37 (Windows NT 6.0; en-US) Presto\\/2.12.336 Version\\/11.00\",\"viewed_at\":\"2025-08-23T17:44:42.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(526, 'default', 'created', 'App\\Models\\PropertyView', 285, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"135.83.188.248\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_3) AppleWebKit\\/5342 (KHTML, like Gecko) Chrome\\/36.0.852.0 Mobile Safari\\/5342\",\"viewed_at\":\"2025-08-27T00:46:25.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(527, 'default', 'created', 'App\\Models\\PropertyView', 286, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":12,\"ip_address\":\"246.68.33.254\",\"user_agent\":\"Opera\\/9.72 (X11; Linux x86_64; en-US) Presto\\/2.12.195 Version\\/12.00\",\"viewed_at\":\"2025-08-20T00:37:08.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(528, 'default', 'created', 'App\\Models\\PropertyView', 287, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":18,\"ip_address\":\"118.64.66.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.2) AppleWebKit\\/5350 (KHTML, like Gecko) Chrome\\/37.0.808.0 Mobile Safari\\/5350\",\"viewed_at\":\"2025-09-16T10:44:17.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(529, 'default', 'created', 'App\\Models\\PropertyView', 288, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"229.142.129.13\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:5.0) Gecko\\/20170403 Firefox\\/37.0\",\"viewed_at\":\"2025-09-07T08:55:51.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(530, 'default', 'created', 'App\\Models\\PropertyView', 289, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"203.90.199.188\",\"user_agent\":\"Opera\\/8.53 (Windows NT 4.0; sl-SI) Presto\\/2.9.292 Version\\/11.00\",\"viewed_at\":\"2025-09-16T12:01:47.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(531, 'default', 'created', 'App\\Models\\PropertyView', 290, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"87.211.202.51\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_7 rv:4.0; sl-SI) AppleWebKit\\/534.31.2 (KHTML, like Gecko) Version\\/5.0.1 Safari\\/534.31.2\",\"viewed_at\":\"2025-09-07T14:14:27.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(532, 'default', 'created', 'App\\Models\\PropertyView', 291, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":11,\"ip_address\":\"165.11.38.227\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:5.0) Gecko\\/20151128 Firefox\\/35.0\",\"viewed_at\":\"2025-08-23T03:07:03.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(533, 'default', 'created', 'App\\Models\\PropertyView', 292, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":12,\"ip_address\":\"107.10.12.241\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_6_8 rv:3.0) Gecko\\/20240111 Firefox\\/35.0\",\"viewed_at\":\"2025-09-14T02:29:30.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(534, 'default', 'created', 'App\\Models\\PropertyView', 293, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":17,\"ip_address\":\"68.26.25.153\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0) AppleWebKit\\/533.1 (KHTML, like Gecko) Chrome\\/87.0.4331.83 Safari\\/533.1 Edg\\/87.01003.11\",\"viewed_at\":\"2025-09-16T11:43:21.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(535, 'default', 'created', 'App\\Models\\PropertyView', 294, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":14,\"ip_address\":\"107.37.223.110\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit\\/5340 (KHTML, like Gecko) Chrome\\/36.0.891.0 Mobile Safari\\/5340\",\"viewed_at\":\"2025-08-22T14:24:03.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(536, 'default', 'created', 'App\\Models\\PropertyView', 295, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":19,\"ip_address\":\"114.243.125.220\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident\\/3.0)\",\"viewed_at\":\"2025-08-20T22:00:46.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(537, 'default', 'created', 'App\\Models\\PropertyView', 296, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"147.162.160.205\",\"user_agent\":\"Opera\\/9.92 (Windows 98; nl-NL) Presto\\/2.12.283 Version\\/12.00\",\"viewed_at\":\"2025-08-25T05:46:18.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(538, 'default', 'created', 'App\\Models\\PropertyView', 297, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":11,\"ip_address\":\"98.193.139.75\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.0) AppleWebKit\\/5310 (KHTML, like Gecko) Chrome\\/40.0.889.0 Mobile Safari\\/5310\",\"viewed_at\":\"2025-08-29T19:52:58.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(539, 'default', 'created', 'App\\Models\\PropertyView', 298, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"250.224.106.133\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_6_7 rv:6.0) Gecko\\/20210523 Firefox\\/37.0\",\"viewed_at\":\"2025-09-09T07:50:48.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(540, 'default', 'created', 'App\\Models\\PropertyView', 299, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":11,\"ip_address\":\"128.32.121.78\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/533.1 (KHTML, like Gecko) Chrome\\/98.0.4088.79 Safari\\/533.1 EdgA\\/98.01085.10\",\"viewed_at\":\"2025-09-14T19:22:37.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(541, 'default', 'created', 'App\\Models\\PropertyView', 300, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"146.29.156.67\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 9.0; Windows 98; Trident\\/3.0)\",\"viewed_at\":\"2025-09-06T13:17:27.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(542, 'default', 'created', 'App\\Models\\PropertyView', 301, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":4,\"ip_address\":\"93.185.26.248\",\"user_agent\":\"Opera\\/8.49 (Windows CE; en-US) Presto\\/2.8.300 Version\\/11.00\",\"viewed_at\":\"2025-09-11T07:41:05.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(543, 'default', 'created', 'App\\Models\\PropertyView', 302, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"249.8.119.162\",\"user_agent\":\"Opera\\/9.28 (Windows NT 6.2; en-US) Presto\\/2.12.279 Version\\/12.00\",\"viewed_at\":\"2025-09-12T19:47:32.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(544, 'default', 'created', 'App\\Models\\PropertyView', 303, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"112.223.118.0\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5320 (KHTML, like Gecko) Chrome\\/36.0.861.0 Mobile Safari\\/5320\",\"viewed_at\":\"2025-08-28T05:20:13.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(545, 'default', 'created', 'App\\Models\\PropertyView', 304, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":15,\"ip_address\":\"250.60.4.229\",\"user_agent\":\"Opera\\/8.97 (X11; Linux i686; nl-NL) Presto\\/2.10.225 Version\\/11.00\",\"viewed_at\":\"2025-09-08T11:20:51.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(546, 'default', 'created', 'App\\Models\\PropertyView', 305, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"200.200.17.87\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.1; sl-SI; rv:1.9.0.20) Gecko\\/20240619 Firefox\\/35.0\",\"viewed_at\":\"2025-09-03T00:30:10.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(547, 'default', 'created', 'App\\Models\\PropertyView', 306, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":12,\"ip_address\":\"175.126.254.139\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 8_2_2 like Mac OS X; sl-SI) AppleWebKit\\/535.4.4 (KHTML, like Gecko) Version\\/4.0.5 Mobile\\/8B113 Safari\\/6535.4.4\",\"viewed_at\":\"2025-09-18T12:07:18.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(548, 'default', 'created', 'App\\Models\\PropertyView', 307, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":16,\"ip_address\":\"40.145.80.254\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_1) AppleWebKit\\/531.0 (KHTML, like Gecko) Chrome\\/82.0.4578.81 Safari\\/531.0 Edg\\/82.01139.65\",\"viewed_at\":\"2025-08-25T22:14:15.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(549, 'default', 'created', 'App\\Models\\PropertyView', 308, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":10,\"ip_address\":\"15.141.246.83\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_4 rv:4.0; en-US) AppleWebKit\\/534.2.5 (KHTML, like Gecko) Version\\/4.1 Safari\\/534.2.5\",\"viewed_at\":\"2025-08-30T19:07:06.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(550, 'default', 'created', 'App\\Models\\PropertyView', 309, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"204.83.140.193\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.2) AppleWebKit\\/533.2 (KHTML, like Gecko) Chrome\\/79.0.4416.92 Safari\\/533.2 Edg\\/79.01058.24\",\"viewed_at\":\"2025-09-18T14:12:26.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(551, 'default', 'created', 'App\\Models\\PropertyView', 310, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":11,\"ip_address\":\"245.93.189.4\",\"user_agent\":\"Mozilla\\/5.0 (Windows 95; nl-NL; rv:1.9.1.20) Gecko\\/20151025 Firefox\\/37.0\",\"viewed_at\":\"2025-08-22T13:17:40.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(552, 'default', 'created', 'App\\Models\\PropertyView', 311, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":16,\"ip_address\":\"15.150.68.134\",\"user_agent\":\"Opera\\/8.21 (X11; Linux x86_64; nl-NL) Presto\\/2.9.205 Version\\/11.00\",\"viewed_at\":\"2025-09-01T15:12:11.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(553, 'default', 'created', 'App\\Models\\PropertyView', 312, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":18,\"ip_address\":\"10.194.71.38\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:7.0) Gecko\\/20190519 Firefox\\/36.0\",\"viewed_at\":\"2025-09-15T22:07:02.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(554, 'default', 'created', 'App\\Models\\PropertyView', 313, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":10,\"ip_address\":\"197.110.156.120\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_6) AppleWebKit\\/537.1 (KHTML, like Gecko) Chrome\\/93.0.4162.87 Safari\\/537.1 Edg\\/93.01025.93\",\"viewed_at\":\"2025-08-24T10:17:33.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(555, 'default', 'created', 'App\\Models\\PropertyView', 314, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"28.100.32.3\",\"user_agent\":\"Opera\\/8.54 (X11; Linux x86_64; sl-SI) Presto\\/2.11.199 Version\\/11.00\",\"viewed_at\":\"2025-09-06T10:11:03.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(556, 'default', 'created', 'App\\Models\\PropertyView', 315, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"118.201.30.114\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_8_7) AppleWebKit\\/532.0 (KHTML, like Gecko) Chrome\\/85.0.4152.21 Safari\\/532.0 Edg\\/85.01126.44\",\"viewed_at\":\"2025-08-23T22:25:26.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(557, 'default', 'created', 'App\\Models\\PropertyView', 316, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":18,\"ip_address\":\"114.96.227.212\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98; Win 9x 4.90) AppleWebKit\\/5310 (KHTML, like Gecko) Chrome\\/36.0.868.0 Mobile Safari\\/5310\",\"viewed_at\":\"2025-09-17T11:18:49.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(558, 'default', 'created', 'App\\Models\\PropertyView', 317, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":19,\"ip_address\":\"19.216.81.13\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 8_1_2 like Mac OS X; sl-SI) AppleWebKit\\/535.31.2 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B116 Safari\\/6535.31.2\",\"viewed_at\":\"2025-09-14T19:38:02.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(559, 'default', 'created', 'App\\Models\\PropertyView', 318, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":13,\"ip_address\":\"55.98.195.145\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 6.0; Windows NT 5.0; Trident\\/4.1)\",\"viewed_at\":\"2025-08-25T13:02:04.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(560, 'default', 'created', 'App\\Models\\PropertyView', 319, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"user_id\":null,\"ip_address\":\"193.154.231.54\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit\\/5341 (KHTML, like Gecko) Chrome\\/38.0.858.0 Mobile Safari\\/5341\",\"viewed_at\":\"2025-08-28T10:49:45.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(561, 'default', 'created', 'App\\Models\\PropertyView', 320, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":14,\"ip_address\":\"37.201.6.102\",\"user_agent\":\"Opera\\/9.98 (Windows NT 5.2; sl-SI) Presto\\/2.9.203 Version\\/11.00\",\"viewed_at\":\"2025-08-26T09:20:35.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(562, 'default', 'created', 'App\\Models\\PropertyView', 321, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"118.173.137.165\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_5 rv:6.0) Gecko\\/20130810 Firefox\\/37.0\",\"viewed_at\":\"2025-09-15T20:23:11.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(563, 'default', 'created', 'App\\Models\\PropertyView', 322, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":12,\"ip_address\":\"193.145.90.24\",\"user_agent\":\"Opera\\/9.36 (X11; Linux x86_64; en-US) Presto\\/2.10.338 Version\\/11.00\",\"viewed_at\":\"2025-08-23T10:18:14.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(564, 'default', 'created', 'App\\Models\\PropertyView', 323, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":17,\"ip_address\":\"93.112.141.206\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_1) AppleWebKit\\/5361 (KHTML, like Gecko) Chrome\\/40.0.837.0 Mobile Safari\\/5361\",\"viewed_at\":\"2025-09-09T07:54:45.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(565, 'default', 'created', 'App\\Models\\PropertyView', 324, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":13,\"ip_address\":\"248.147.171.116\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_0 rv:2.0) Gecko\\/20130126 Firefox\\/36.0\",\"viewed_at\":\"2025-09-04T04:48:39.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(566, 'default', 'created', 'App\\Models\\PropertyView', 325, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":4,\"ip_address\":\"129.221.52.124\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; en-US) AppleWebKit\\/533.33.1 (KHTML, like Gecko) Version\\/4.0.5 Mobile\\/8B116 Safari\\/6533.33.1\",\"viewed_at\":\"2025-09-03T19:23:47.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(567, 'default', 'created', 'App\\Models\\PropertyView', 326, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"242.83.241.168\",\"user_agent\":\"Opera\\/9.54 (Windows 98; nl-NL) Presto\\/2.10.283 Version\\/11.00\",\"viewed_at\":\"2025-08-28T02:07:25.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(568, 'default', 'created', 'App\\Models\\PropertyView', 327, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":11,\"ip_address\":\"160.245.212.157\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident\\/4.1)\",\"viewed_at\":\"2025-09-07T21:45:18.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(569, 'default', 'created', 'App\\Models\\PropertyView', 328, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":13,\"ip_address\":\"187.218.42.103\",\"user_agent\":\"Mozilla\\/5.0 (Windows CE; en-US; rv:1.9.1.20) Gecko\\/20170428 Firefox\\/36.0\",\"viewed_at\":\"2025-09-11T08:08:29.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(570, 'default', 'created', 'App\\Models\\PropertyView', 329, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":14,\"ip_address\":\"47.183.64.67\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5341 (KHTML, like Gecko) Chrome\\/38.0.855.0 Mobile Safari\\/5341\",\"viewed_at\":\"2025-08-30T09:16:15.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(571, 'default', 'created', 'App\\Models\\PropertyView', 330, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"250.148.24.156\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows NT 5.2; Trident\\/4.0)\",\"viewed_at\":\"2025-08-21T10:48:06.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(572, 'default', 'created', 'App\\Models\\PropertyView', 331, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"231.59.49.100\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident\\/3.1)\",\"viewed_at\":\"2025-09-11T20:39:12.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(573, 'default', 'created', 'App\\Models\\PropertyView', 332, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":12,\"ip_address\":\"140.16.63.233\",\"user_agent\":\"Opera\\/9.54 (Windows 98; sl-SI) Presto\\/2.12.279 Version\\/10.00\",\"viewed_at\":\"2025-09-10T17:05:28.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(574, 'default', 'created', 'App\\Models\\PropertyView', 333, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"214.152.124.132\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 9.0; Windows NT 5.1; Trident\\/4.1)\",\"viewed_at\":\"2025-09-10T23:00:52.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(575, 'default', 'created', 'App\\Models\\PropertyView', 334, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":18,\"ip_address\":\"155.8.254.107\",\"user_agent\":\"Opera\\/9.90 (X11; Linux x86_64; en-US) Presto\\/2.10.239 Version\\/11.00\",\"viewed_at\":\"2025-08-28T14:14:02.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(576, 'default', 'created', 'App\\Models\\PropertyView', 335, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":14,\"ip_address\":\"33.13.76.15\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:6.0) Gecko\\/20100727 Firefox\\/37.0\",\"viewed_at\":\"2025-09-12T22:32:23.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(577, 'default', 'created', 'App\\Models\\PropertyView', 336, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":12,\"ip_address\":\"184.142.65.116\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1; nl-NL; rv:1.9.1.20) Gecko\\/20160519 Firefox\\/37.0\",\"viewed_at\":\"2025-08-28T02:33:24.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(578, 'default', 'created', 'App\\Models\\PropertyView', 337, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"251.106.14.7\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:5.0) Gecko\\/20120313 Firefox\\/36.0\",\"viewed_at\":\"2025-09-03T09:15:51.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(579, 'default', 'created', 'App\\Models\\PropertyView', 338, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"241.243.172.0\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0) AppleWebKit\\/5352 (KHTML, like Gecko) Chrome\\/36.0.825.0 Mobile Safari\\/5352\",\"viewed_at\":\"2025-08-23T05:59:21.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(580, 'default', 'created', 'App\\Models\\PropertyView', 339, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":18,\"ip_address\":\"139.221.32.136\",\"user_agent\":\"Opera\\/8.45 (Windows NT 6.1; nl-NL) Presto\\/2.8.197 Version\\/12.00\",\"viewed_at\":\"2025-08-25T23:50:29.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(581, 'default', 'created', 'App\\Models\\PropertyView', 340, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"57.20.26.190\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_7_8 rv:3.0) Gecko\\/20190922 Firefox\\/35.0\",\"viewed_at\":\"2025-09-05T15:13:42.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(582, 'default', 'created', 'App\\Models\\PropertyView', 341, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"138.149.16.202\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5362 (KHTML, like Gecko) Chrome\\/38.0.815.0 Mobile Safari\\/5362\",\"viewed_at\":\"2025-08-30T23:36:08.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(583, 'default', 'created', 'App\\Models\\PropertyView', 342, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":12,\"ip_address\":\"14.101.234.45\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 4.0) AppleWebKit\\/5332 (KHTML, like Gecko) Chrome\\/36.0.814.0 Mobile Safari\\/5332\",\"viewed_at\":\"2025-09-07T21:48:51.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(584, 'default', 'created', 'App\\Models\\PropertyView', 343, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"242.140.50.225\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_5_2) AppleWebKit\\/533.1 (KHTML, like Gecko) Chrome\\/95.0.4610.44 Safari\\/533.1 Edg\\/95.01086.45\",\"viewed_at\":\"2025-09-18T00:57:00.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(585, 'default', 'created', 'App\\Models\\PropertyView', 344, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":18,\"ip_address\":\"198.211.91.188\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_3) AppleWebKit\\/5332 (KHTML, like Gecko) Chrome\\/38.0.836.0 Mobile Safari\\/5332\",\"viewed_at\":\"2025-09-08T23:33:59.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(586, 'default', 'created', 'App\\Models\\PropertyView', 345, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"68.215.23.199\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5352 (KHTML, like Gecko) Chrome\\/36.0.844.0 Mobile Safari\\/5352\",\"viewed_at\":\"2025-08-28T16:08:56.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(587, 'default', 'created', 'App\\Models\\PropertyView', 346, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":4,\"ip_address\":\"188.161.35.45\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5340 (KHTML, like Gecko) Chrome\\/39.0.885.0 Mobile Safari\\/5340\",\"viewed_at\":\"2025-08-20T07:14:23.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(588, 'default', 'created', 'App\\Models\\PropertyView', 347, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"168.167.154.139\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_2) AppleWebKit\\/533.1 (KHTML, like Gecko) Chrome\\/97.0.4348.85 Safari\\/533.1 Edg\\/97.01010.2\",\"viewed_at\":\"2025-08-26T04:14:38.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(589, 'default', 'created', 'App\\Models\\PropertyView', 348, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"255.187.224.77\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.2) AppleWebKit\\/534.0 (KHTML, like Gecko) Chrome\\/96.0.4338.70 Safari\\/534.0 Edg\\/96.01021.67\",\"viewed_at\":\"2025-08-28T14:30:49.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(590, 'default', 'created', 'App\\Models\\PropertyView', 349, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":4,\"ip_address\":\"242.143.17.67\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 7_0_1 like Mac OS X; en-US) AppleWebKit\\/533.39.7 (KHTML, like Gecko) Version\\/4.0.5 Mobile\\/8B116 Safari\\/6533.39.7\",\"viewed_at\":\"2025-08-29T06:47:35.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(591, 'default', 'created', 'App\\Models\\PropertyView', 350, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":11,\"ip_address\":\"75.14.158.196\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_8_3) AppleWebKit\\/5312 (KHTML, like Gecko) Chrome\\/38.0.867.0 Mobile Safari\\/5312\",\"viewed_at\":\"2025-08-22T07:26:22.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(592, 'default', 'created', 'App\\Models\\PropertyView', 351, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"49.38.176.57\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.0) AppleWebKit\\/536.1 (KHTML, like Gecko) Chrome\\/84.0.4094.97 Safari\\/536.1 Edg\\/84.01128.67\",\"viewed_at\":\"2025-08-21T05:15:27.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(593, 'default', 'created', 'App\\Models\\PropertyView', 352, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"134.36.36.205\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit\\/535.48.2 (KHTML, like Gecko) Version\\/5.0 Safari\\/535.48.2\",\"viewed_at\":\"2025-09-05T16:04:02.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(594, 'default', 'created', 'App\\Models\\PropertyView', 353, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":15,\"ip_address\":\"134.46.2.162\",\"user_agent\":\"Opera\\/9.37 (X11; Linux i686; nl-NL) Presto\\/2.8.163 Version\\/11.00\",\"viewed_at\":\"2025-09-06T03:12:02.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(595, 'default', 'created', 'App\\Models\\PropertyView', 354, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"47.54.5.54\",\"user_agent\":\"Opera\\/9.49 (Windows NT 6.0; sl-SI) Presto\\/2.9.328 Version\\/10.00\",\"viewed_at\":\"2025-09-08T05:31:15.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(596, 'default', 'created', 'App\\Models\\PropertyView', 355, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"161.27.147.159\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_5_8) AppleWebKit\\/535.1 (KHTML, like Gecko) Chrome\\/80.0.4168.54 Safari\\/535.1 Edg\\/80.01015.39\",\"viewed_at\":\"2025-08-26T08:26:37.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(597, 'default', 'created', 'App\\Models\\PropertyView', 356, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"36.255.231.156\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:5.0) Gecko\\/20160613 Firefox\\/37.0\",\"viewed_at\":\"2025-08-30T11:58:39.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(598, 'default', 'created', 'App\\Models\\PropertyView', 357, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":4,\"ip_address\":\"200.67.216.231\",\"user_agent\":\"Opera\\/9.80 (X11; Linux i686; nl-NL) Presto\\/2.8.307 Version\\/11.00\",\"viewed_at\":\"2025-09-09T13:25:56.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(599, 'default', 'created', 'App\\Models\\PropertyView', 358, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"155.157.238.217\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_5_4 rv:5.0; en-US) AppleWebKit\\/535.2.2 (KHTML, like Gecko) Version\\/5.0.4 Safari\\/535.2.2\",\"viewed_at\":\"2025-09-13T18:55:17.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(600, 'default', 'created', 'App\\Models\\PropertyView', 359, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":4,\"ip_address\":\"179.96.186.51\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.1; nl-NL; rv:1.9.0.20) Gecko\\/20231220 Firefox\\/35.0\",\"viewed_at\":\"2025-08-26T14:31:15.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(601, 'default', 'created', 'App\\Models\\PropertyView', 360, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"48.130.48.92\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_7_9 rv:5.0) Gecko\\/20121104 Firefox\\/37.0\",\"viewed_at\":\"2025-08-23T20:03:15.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(602, 'default', 'created', 'App\\Models\\PropertyView', 361, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":18,\"ip_address\":\"70.130.99.211\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_7_3 rv:4.0; sl-SI) AppleWebKit\\/533.1.4 (KHTML, like Gecko) Version\\/4.0 Safari\\/533.1.4\",\"viewed_at\":\"2025-08-24T23:58:09.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(603, 'default', 'created', 'App\\Models\\PropertyView', 362, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"191.213.26.81\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_6_8 rv:5.0; nl-NL) AppleWebKit\\/534.41.5 (KHTML, like Gecko) Version\\/5.0 Safari\\/534.41.5\",\"viewed_at\":\"2025-09-14T14:57:41.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(604, 'default', 'created', 'App\\Models\\PropertyView', 363, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":18,\"ip_address\":\"255.176.176.229\",\"user_agent\":\"Opera\\/8.28 (X11; Linux x86_64; nl-NL) Presto\\/2.12.276 Version\\/11.00\",\"viewed_at\":\"2025-09-06T19:56:48.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(605, 'default', 'created', 'App\\Models\\PropertyView', 364, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":4,\"ip_address\":\"121.197.103.215\",\"user_agent\":\"Opera\\/9.29 (Windows NT 4.0; en-US) Presto\\/2.10.220 Version\\/10.00\",\"viewed_at\":\"2025-09-15T15:59:54.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(606, 'default', 'created', 'App\\Models\\PropertyView', 365, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":15,\"ip_address\":\"44.94.125.145\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.2; sl-SI; rv:1.9.2.20) Gecko\\/20180319 Firefox\\/36.0\",\"viewed_at\":\"2025-08-22T13:19:07.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(607, 'default', 'created', 'App\\Models\\PropertyView', 366, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":null,\"ip_address\":\"210.176.13.218\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 4.0; sl-SI; rv:1.9.2.20) Gecko\\/20170418 Firefox\\/36.0\",\"viewed_at\":\"2025-08-27T12:33:10.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(608, 'default', 'created', 'App\\Models\\PropertyView', 367, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":14,\"ip_address\":\"85.99.202.41\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident\\/3.0)\",\"viewed_at\":\"2025-09-06T23:24:44.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(609, 'default', 'created', 'App\\Models\\PropertyView', 368, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"user_id\":15,\"ip_address\":\"116.107.142.4\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_7_6) AppleWebKit\\/536.2 (KHTML, like Gecko) Chrome\\/83.0.4428.79 Safari\\/536.2 Edg\\/83.01133.34\",\"viewed_at\":\"2025-08-24T01:02:31.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(610, 'default', 'created', 'App\\Models\\PropertyView', 369, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"245.237.84.252\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows NT 6.1; Trident\\/5.1)\",\"viewed_at\":\"2025-08-21T16:53:43.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(611, 'default', 'created', 'App\\Models\\PropertyView', 370, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":15,\"ip_address\":\"182.160.88.46\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 5.01) AppleWebKit\\/532.46.2 (KHTML, like Gecko) Version\\/4.0 Safari\\/532.46.2\",\"viewed_at\":\"2025-08-25T07:05:37.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(612, 'default', 'created', 'App\\Models\\PropertyView', 371, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":11,\"ip_address\":\"30.49.254.145\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 8_2_1 like Mac OS X; sl-SI) AppleWebKit\\/532.35.3 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B116 Safari\\/6532.35.3\",\"viewed_at\":\"2025-09-18T14:39:30.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(613, 'default', 'created', 'App\\Models\\PropertyView', 372, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":10,\"ip_address\":\"116.167.222.144\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5310 (KHTML, like Gecko) Chrome\\/37.0.897.0 Mobile Safari\\/5310\",\"viewed_at\":\"2025-08-26T20:52:38.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(614, 'default', 'created', 'App\\Models\\PropertyView', 373, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"232.27.81.57\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.2) AppleWebKit\\/5341 (KHTML, like Gecko) Chrome\\/36.0.826.0 Mobile Safari\\/5341\",\"viewed_at\":\"2025-09-17T16:19:33.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(615, 'default', 'created', 'App\\Models\\PropertyView', 374, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":16,\"ip_address\":\"116.56.182.172\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_8_1 rv:5.0) Gecko\\/20160519 Firefox\\/35.0\",\"viewed_at\":\"2025-08-26T01:20:02.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(616, 'default', 'created', 'App\\Models\\PropertyView', 375, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"219.127.166.166\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5322 (KHTML, like Gecko) Chrome\\/38.0.877.0 Mobile Safari\\/5322\",\"viewed_at\":\"2025-09-06T19:16:24.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(617, 'default', 'created', 'App\\Models\\PropertyView', 376, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"133.45.220.196\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_5_9) AppleWebKit\\/5360 (KHTML, like Gecko) Chrome\\/40.0.828.0 Mobile Safari\\/5360\",\"viewed_at\":\"2025-09-03T08:47:38.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(618, 'default', 'created', 'App\\Models\\PropertyView', 377, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"206.230.208.102\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_5_9 rv:6.0; en-US) AppleWebKit\\/532.49.1 (KHTML, like Gecko) Version\\/5.0 Safari\\/532.49.1\",\"viewed_at\":\"2025-09-05T10:48:29.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(619, 'default', 'created', 'App\\Models\\PropertyView', 378, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":16,\"ip_address\":\"255.135.57.189\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_8_9) AppleWebKit\\/533.1 (KHTML, like Gecko) Chrome\\/98.0.4777.89 Safari\\/533.1 Edg\\/98.01037.76\",\"viewed_at\":\"2025-08-20T12:43:42.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(620, 'default', 'created', 'App\\Models\\PropertyView', 379, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"221.116.63.40\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.1) AppleWebKit\\/5342 (KHTML, like Gecko) Chrome\\/39.0.874.0 Mobile Safari\\/5342\",\"viewed_at\":\"2025-09-08T14:45:14.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(621, 'default', 'created', 'App\\Models\\PropertyView', 380, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"208.189.251.11\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.01; en-US; rv:1.9.1.20) Gecko\\/20240420 Firefox\\/37.0\",\"viewed_at\":\"2025-08-26T02:22:00.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(622, 'default', 'created', 'App\\Models\\PropertyView', 381, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":15,\"ip_address\":\"21.255.115.91\",\"user_agent\":\"Opera\\/8.74 (X11; Linux x86_64; en-US) Presto\\/2.12.222 Version\\/10.00\",\"viewed_at\":\"2025-09-18T22:01:59.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(623, 'default', 'created', 'App\\Models\\PropertyView', 382, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"230.150.68.32\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 5.0; Windows 95; Trident\\/5.1)\",\"viewed_at\":\"2025-08-29T14:14:08.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(624, 'default', 'created', 'App\\Models\\PropertyView', 383, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":11,\"ip_address\":\"173.223.0.61\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:5.0) Gecko\\/20180205 Firefox\\/37.0\",\"viewed_at\":\"2025-09-06T10:42:18.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(625, 'default', 'created', 'App\\Models\\PropertyView', 384, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":15,\"ip_address\":\"246.34.35.58\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5321 (KHTML, like Gecko) Chrome\\/39.0.859.0 Mobile Safari\\/5321\",\"viewed_at\":\"2025-09-13T23:05:33.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(626, 'default', 'created', 'App\\Models\\PropertyView', 385, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":14,\"ip_address\":\"27.125.156.199\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686) AppleWebKit\\/5341 (KHTML, like Gecko) Chrome\\/38.0.889.0 Mobile Safari\\/5341\",\"viewed_at\":\"2025-09-13T05:50:23.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(627, 'default', 'created', 'App\\Models\\PropertyView', 386, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":11,\"ip_address\":\"225.39.203.64\",\"user_agent\":\"Mozilla\\/5.0 (compatible; MSIE 8.0; Windows CE; Trident\\/5.0)\",\"viewed_at\":\"2025-08-31T17:47:19.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(628, 'default', 'created', 'App\\Models\\PropertyView', 387, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":4,\"ip_address\":\"167.186.17.58\",\"user_agent\":\"Opera\\/9.66 (X11; Linux i686; en-US) Presto\\/2.8.347 Version\\/11.00\",\"viewed_at\":\"2025-09-05T22:36:13.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(629, 'default', 'created', 'App\\Models\\PropertyView', 388, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"190.61.8.69\",\"user_agent\":\"Opera\\/9.73 (X11; Linux x86_64; en-US) Presto\\/2.9.243 Version\\/11.00\",\"viewed_at\":\"2025-08-31T19:38:30.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(630, 'default', 'created', 'App\\Models\\PropertyView', 389, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"46.219.109.65\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:7.0) Gecko\\/20240310 Firefox\\/35.0\",\"viewed_at\":\"2025-08-21T07:19:44.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(631, 'default', 'created', 'App\\Models\\PropertyView', 390, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"214.242.191.240\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.1) AppleWebKit\\/5360 (KHTML, like Gecko) Chrome\\/40.0.894.0 Mobile Safari\\/5360\",\"viewed_at\":\"2025-09-09T12:18:46.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(632, 'default', 'created', 'App\\Models\\PropertyView', 391, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":12,\"ip_address\":\"1.9.162.75\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux i686; rv:7.0) Gecko\\/20141017 Firefox\\/37.0\",\"viewed_at\":\"2025-09-10T18:22:14.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(633, 'default', 'created', 'App\\Models\\PropertyView', 392, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":16,\"ip_address\":\"138.52.77.232\",\"user_agent\":\"Mozilla\\/5.0 (Windows 95) AppleWebKit\\/5320 (KHTML, like Gecko) Chrome\\/39.0.889.0 Mobile Safari\\/5320\",\"viewed_at\":\"2025-09-13T20:45:49.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(634, 'default', 'created', 'App\\Models\\PropertyView', 393, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":19,\"ip_address\":\"128.193.210.8\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows NT 5.0) AppleWebKit\\/534.1.1 (KHTML, like Gecko) Version\\/5.0.5 Safari\\/534.1.1\",\"viewed_at\":\"2025-08-22T14:33:45.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(635, 'default', 'created', 'App\\Models\\PropertyView', 394, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":13,\"ip_address\":\"232.16.124.32\",\"user_agent\":\"Opera\\/9.33 (X11; Linux i686; sl-SI) Presto\\/2.12.229 Version\\/12.00\",\"viewed_at\":\"2025-08-27T03:44:37.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(636, 'default', 'created', 'App\\Models\\PropertyView', 395, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":13,\"ip_address\":\"176.94.158.211\",\"user_agent\":\"Opera\\/9.95 (X11; Linux x86_64; en-US) Presto\\/2.9.301 Version\\/10.00\",\"viewed_at\":\"2025-09-09T10:25:11.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(637, 'default', 'created', 'App\\Models\\PropertyView', 396, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"169.34.129.100\",\"user_agent\":\"Mozilla\\/5.0 (Windows 98) AppleWebKit\\/5331 (KHTML, like Gecko) Chrome\\/37.0.857.0 Mobile Safari\\/5331\",\"viewed_at\":\"2025-09-03T09:28:25.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(638, 'default', 'created', 'App\\Models\\PropertyView', 397, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":4,\"ip_address\":\"157.112.94.127\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; PPC Mac OS X 10_6_0) AppleWebKit\\/532.2 (KHTML, like Gecko) Chrome\\/81.0.4728.95 Safari\\/532.2 Edg\\/81.01047.19\",\"viewed_at\":\"2025-09-16T17:14:56.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(639, 'default', 'created', 'App\\Models\\PropertyView', 398, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"180.87.197.197\",\"user_agent\":\"Mozilla\\/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X; sl-SI) AppleWebKit\\/532.7.5 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B113 Safari\\/6532.7.5\",\"viewed_at\":\"2025-09-08T01:03:12.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(640, 'default', 'created', 'App\\Models\\PropertyView', 399, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"222.221.159.43\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_5_9 rv:6.0; nl-NL) AppleWebKit\\/531.19.3 (KHTML, like Gecko) Version\\/5.1 Safari\\/531.19.3\",\"viewed_at\":\"2025-09-07T06:40:25.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(641, 'default', 'created', 'App\\Models\\PropertyView', 400, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":15,\"ip_address\":\"39.178.223.175\",\"user_agent\":\"Opera\\/8.38 (Windows NT 6.2; sl-SI) Presto\\/2.12.322 Version\\/12.00\",\"viewed_at\":\"2025-08-20T23:30:08.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(642, 'default', 'created', 'App\\Models\\PropertyView', 401, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"175.89.69.231\",\"user_agent\":\"Opera\\/9.59 (X11; Linux x86_64; nl-NL) Presto\\/2.9.238 Version\\/12.00\",\"viewed_at\":\"2025-09-01T03:09:44.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(643, 'default', 'created', 'App\\Models\\PropertyView', 402, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":4,\"ip_address\":\"120.67.254.59\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/534.1 (KHTML, like Gecko) Chrome\\/88.0.4743.27 Safari\\/534.1 EdgA\\/88.01005.62\",\"viewed_at\":\"2025-09-18T06:26:48.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(644, 'default', 'created', 'App\\Models\\PropertyView', 403, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":12,\"ip_address\":\"82.36.83.141\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5321 (KHTML, like Gecko) Chrome\\/38.0.830.0 Mobile Safari\\/5321\",\"viewed_at\":\"2025-09-02T23:21:30.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(645, 'default', 'created', 'App\\Models\\PropertyView', 404, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":11,\"ip_address\":\"105.61.44.96\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 6.2) AppleWebKit\\/5331 (KHTML, like Gecko) Chrome\\/38.0.834.0 Mobile Safari\\/5331\",\"viewed_at\":\"2025-09-14T15:47:08.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(646, 'default', 'created', 'App\\Models\\PropertyView', 405, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":15,\"ip_address\":\"79.146.143.99\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/5341 (KHTML, like Gecko) Chrome\\/38.0.822.0 Mobile Safari\\/5341\",\"viewed_at\":\"2025-09-07T12:38:55.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(647, 'default', 'created', 'App\\Models\\PropertyView', 406, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"185.75.191.84\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64; rv:5.0) Gecko\\/20210519 Firefox\\/35.0\",\"viewed_at\":\"2025-09-16T11:43:43.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(648, 'default', 'created', 'App\\Models\\PropertyView', 407, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"161.10.83.188\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_7_5) AppleWebKit\\/5332 (KHTML, like Gecko) Chrome\\/40.0.826.0 Mobile Safari\\/5332\",\"viewed_at\":\"2025-09-02T17:52:36.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(649, 'default', 'created', 'App\\Models\\PropertyView', 408, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":15,\"ip_address\":\"163.87.193.230\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; U; Intel Mac OS X 10_8_1 rv:2.0; sl-SI) AppleWebKit\\/535.16.2 (KHTML, like Gecko) Version\\/5.0 Safari\\/535.16.2\",\"viewed_at\":\"2025-09-04T11:13:53.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(650, 'default', 'created', 'App\\Models\\PropertyView', 409, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"18.254.231.101\",\"user_agent\":\"Mozilla\\/5.0 (iPad; CPU OS 7_1_2 like Mac OS X; en-US) AppleWebKit\\/535.4.7 (KHTML, like Gecko) Version\\/3.0.5 Mobile\\/8B112 Safari\\/6535.4.7\",\"viewed_at\":\"2025-08-22T21:06:01.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(651, 'default', 'created', 'App\\Models\\PropertyView', 410, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":17,\"ip_address\":\"111.227.25.238\",\"user_agent\":\"Opera\\/8.97 (Windows NT 5.1; en-US) Presto\\/2.11.191 Version\\/10.00\",\"viewed_at\":\"2025-08-31T18:30:01.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(652, 'default', 'created', 'App\\Models\\PropertyView', 411, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"150.42.152.102\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; PPC Mac OS X 10_6_3) AppleWebKit\\/534.0 (KHTML, like Gecko) Chrome\\/82.0.4276.39 Safari\\/534.0 Edg\\/82.01022.26\",\"viewed_at\":\"2025-09-06T05:33:20.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(653, 'default', 'created', 'App\\Models\\PropertyView', 412, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":null,\"ip_address\":\"114.51.201.234\",\"user_agent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/532.1 (KHTML, like Gecko) Chrome\\/81.0.4389.15 Safari\\/532.1 EdgA\\/81.01028.19\",\"viewed_at\":\"2025-09-13T09:56:56.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(654, 'default', 'created', 'App\\Models\\PropertyView', 413, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":15,\"ip_address\":\"159.42.172.91\",\"user_agent\":\"Mozilla\\/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit\\/533.6.1 (KHTML, like Gecko) Version\\/4.0.2 Safari\\/533.6.1\",\"viewed_at\":\"2025-09-08T11:38:14.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(655, 'default', 'created', 'App\\Models\\PropertyView', 414, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":10,\"ip_address\":\"65.143.157.201\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.2; nl-NL; rv:1.9.2.20) Gecko\\/20170513 Firefox\\/37.0\",\"viewed_at\":\"2025-09-07T04:09:52.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(656, 'default', 'created', 'App\\Models\\PropertyView', 415, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":5,\"user_id\":16,\"ip_address\":\"65.101.34.245\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 5.2) AppleWebKit\\/533.2 (KHTML, like Gecko) Chrome\\/82.0.4307.88 Safari\\/533.2 Edg\\/82.01040.7\",\"viewed_at\":\"2025-09-11T11:56:06.000000Z\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(657, 'default', 'created', 'App\\Models\\ScheduleViewing', 1, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"full_name\":\"Sarah Johnson\",\"email\":\"sarah.johnson@email.com\",\"phone_number\":\"+233244123456\",\"preferred_date\":\"2025-09-21T00:00:00.000000Z\",\"preferred_time\":\"10:00 AM\",\"notes\":\"I am very interested in this property and would like to schedule a viewing. I am available on weekends.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(658, 'default', 'created', 'App\\Models\\ScheduleViewing', 2, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"full_name\":\"Emmanuel Kofi\",\"email\":\"emmanuel.kofi@email.com\",\"phone_number\":\"+233244123457\",\"preferred_date\":\"2025-09-23T00:00:00.000000Z\",\"preferred_time\":\"2:00 PM\",\"notes\":\"Looking for investment property. Would like to see the property during business hours.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(659, 'default', 'created', 'App\\Models\\ScheduleViewing', 3, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":4,\"full_name\":\"Adwoa Mensah\",\"email\":\"adwoa.mensah@email.com\",\"phone_number\":\"+233244123458\",\"preferred_date\":\"2025-09-25T00:00:00.000000Z\",\"preferred_time\":\"11:00 AM\",\"notes\":\"First-time buyer. Would appreciate a detailed walkthrough of the property.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(660, 'default', 'created', 'App\\Models\\ScheduleViewing', 4, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"full_name\":\"Kwaku Boateng\",\"email\":\"kwaku.boateng@email.com\",\"phone_number\":\"+233244123459\",\"preferred_date\":\"2025-09-20T00:00:00.000000Z\",\"preferred_time\":\"3:00 PM\",\"notes\":\"Relocating from abroad. Need to see the property as soon as possible.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(661, 'default', 'created', 'App\\Models\\ScheduleViewing', 5, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":18,\"full_name\":\"Akosua Asante\",\"email\":\"akosua.asante@email.com\",\"phone_number\":\"+233244123460\",\"preferred_date\":\"2025-09-22T00:00:00.000000Z\",\"preferred_time\":\"9:00 AM\",\"notes\":\"Looking for a family home. Would like to bring my children for the viewing.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(662, 'default', 'created', 'App\\Models\\ScheduleViewing', 6, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"full_name\":\"Prof. Vinnie Reinger I\",\"email\":\"nikki15@example.org\",\"phone_number\":\"+233244693493\",\"preferred_date\":\"2025-09-20T00:00:00.000000Z\",\"preferred_time\":\"2:00 PM\",\"notes\":null}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(663, 'default', 'created', 'App\\Models\\ScheduleViewing', 7, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"full_name\":\"Mrs. Dannie Schuppe\",\"email\":\"grimes.nasir@example.net\",\"phone_number\":\"+233244185632\",\"preferred_date\":\"2025-09-27T00:00:00.000000Z\",\"preferred_time\":\"10:00 AM\",\"notes\":\"Reiciendis porro saepe autem molestiae.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(664, 'default', 'created', 'App\\Models\\ScheduleViewing', 8, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"full_name\":\"Cristobal Sipes\",\"email\":\"rocky58@example.org\",\"phone_number\":\"+233244161640\",\"preferred_date\":\"2025-09-22T00:00:00.000000Z\",\"preferred_time\":\"10:00 AM\",\"notes\":\"Facere cumque vitae qui.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(665, 'default', 'created', 'App\\Models\\ScheduleViewing', 9, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"full_name\":\"Dr. Christy Blanda\",\"email\":\"name66@example.com\",\"phone_number\":\"+233244679355\",\"preferred_date\":\"2025-09-24T00:00:00.000000Z\",\"preferred_time\":\"2:00 PM\",\"notes\":null}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(666, 'default', 'created', 'App\\Models\\ScheduleViewing', 10, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"full_name\":\"Kathlyn Steuber DDS\",\"email\":\"ppredovic@example.org\",\"phone_number\":\"+233244879052\",\"preferred_date\":\"2025-09-25T00:00:00.000000Z\",\"preferred_time\":\"2:00 PM\",\"notes\":null}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(667, 'default', 'created', 'App\\Models\\ScheduleViewing', 11, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":19,\"full_name\":\"Nikita Pacocha\",\"email\":\"agislason@example.com\",\"phone_number\":\"+233244608966\",\"preferred_date\":\"2025-09-26T00:00:00.000000Z\",\"preferred_time\":\"11:00 AM\",\"notes\":null}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(668, 'default', 'created', 'App\\Models\\ScheduleViewing', 12, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"full_name\":\"Manley Bechtelar\",\"email\":\"garry.rempel@example.org\",\"phone_number\":\"+233244472921\",\"preferred_date\":\"2025-09-26T00:00:00.000000Z\",\"preferred_time\":\"11:00 AM\",\"notes\":null}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(669, 'default', 'created', 'App\\Models\\ScheduleViewing', 13, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"full_name\":\"Dr. Makenna Cronin MD\",\"email\":\"zgibson@example.org\",\"phone_number\":\"+233244245985\",\"preferred_date\":\"2025-09-21T00:00:00.000000Z\",\"preferred_time\":\"11:00 AM\",\"notes\":null}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(670, 'default', 'created', 'App\\Models\\ScheduleViewing', 14, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"full_name\":\"Weldon Raynor\",\"email\":\"vesta42@example.com\",\"phone_number\":\"+233244874381\",\"preferred_date\":\"2025-09-25T00:00:00.000000Z\",\"preferred_time\":\"9:00 AM\",\"notes\":null}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(671, 'default', 'created', 'App\\Models\\ScheduleViewing', 15, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"full_name\":\"Augustus Johnston\",\"email\":\"kyra09@example.net\",\"phone_number\":\"+233244633609\",\"preferred_date\":\"2025-09-30T00:00:00.000000Z\",\"preferred_time\":\"2:00 PM\",\"notes\":\"Et sit natus officia omnis.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(672, 'default', 'created', 'App\\Models\\ScheduleViewing', 16, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"full_name\":\"Mr. Harold Barton\",\"email\":\"otho22@example.com\",\"phone_number\":\"+233244321371\",\"preferred_date\":\"2025-09-26T00:00:00.000000Z\",\"preferred_time\":\"11:00 AM\",\"notes\":\"Consequatur delectus aspernatur dicta dignissimos animi aliquid eaque aut.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(673, 'default', 'created', 'App\\Models\\ScheduleViewing', 17, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"full_name\":\"Mr. Napoleon Hessel III\",\"email\":\"dickinson.ernestina@example.net\",\"phone_number\":\"+233244335257\",\"preferred_date\":\"2025-09-23T00:00:00.000000Z\",\"preferred_time\":\"2:00 PM\",\"notes\":\"Exercitationem repudiandae perferendis eum qui omnis autem eaque.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(674, 'default', 'created', 'App\\Models\\ScheduleViewing', 18, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"full_name\":\"Prof. Sharon Blanda\",\"email\":\"jenifer.haley@example.org\",\"phone_number\":\"+233244067776\",\"preferred_date\":\"2025-09-28T00:00:00.000000Z\",\"preferred_time\":\"2:00 PM\",\"notes\":\"Quos unde quasi quaerat aut fugiat qui aut.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(675, 'default', 'created', 'App\\Models\\ScheduleViewing', 19, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":16,\"full_name\":\"Kenya Brown\",\"email\":\"reta23@example.com\",\"phone_number\":\"+233244245256\",\"preferred_date\":\"2025-09-30T00:00:00.000000Z\",\"preferred_time\":\"2:00 PM\",\"notes\":\"Accusantium earum aut alias non commodi cupiditate qui.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(676, 'default', 'created', 'App\\Models\\ScheduleViewing', 20, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":16,\"full_name\":\"Ms. Lupe Barrows V\",\"email\":\"jana94@example.com\",\"phone_number\":\"+233244374859\",\"preferred_date\":\"2025-09-24T00:00:00.000000Z\",\"preferred_time\":\"10:00 AM\",\"notes\":\"Aperiam accusantium consequatur voluptas qui vel qui.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(677, 'default', 'created', 'App\\Models\\ScheduleViewing', 21, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"full_name\":\"Mr. Woodrow King\",\"email\":\"mhamill@example.net\",\"phone_number\":\"+233244117856\",\"preferred_date\":\"2025-10-02T00:00:00.000000Z\",\"preferred_time\":\"10:00 AM\",\"notes\":\"Exercitationem corrupti omnis rerum accusantium nulla cupiditate quos.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(678, 'default', 'created', 'App\\Models\\ScheduleViewing', 22, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"full_name\":\"Dr. Kaia Oberbrunner V\",\"email\":\"camilla.haag@example.net\",\"phone_number\":\"+233244569381\",\"preferred_date\":\"2025-09-27T00:00:00.000000Z\",\"preferred_time\":\"9:00 AM\",\"notes\":\"Occaecati dolorem culpa enim eos architecto natus incidunt.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(679, 'default', 'created', 'App\\Models\\ScheduleViewing', 23, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"full_name\":\"Ruthie Kozey\",\"email\":\"ofelia51@example.org\",\"phone_number\":\"+233244048913\",\"preferred_date\":\"2025-09-29T00:00:00.000000Z\",\"preferred_time\":\"11:00 AM\",\"notes\":null}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(680, 'default', 'created', 'App\\Models\\ScheduleViewing', 24, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"full_name\":\"Rosalia Raynor\",\"email\":\"trever.kassulke@example.com\",\"phone_number\":\"+233244777903\",\"preferred_date\":\"2025-09-27T00:00:00.000000Z\",\"preferred_time\":\"9:00 AM\",\"notes\":\"Quasi fugit est ducimus architecto repudiandae ipsa architecto.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(681, 'default', 'created', 'App\\Models\\ScheduleViewing', 25, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"full_name\":\"Kale Parker\",\"email\":\"brenner@example.net\",\"phone_number\":\"+233244977733\",\"preferred_date\":\"2025-09-22T00:00:00.000000Z\",\"preferred_time\":\"11:00 AM\",\"notes\":\"Et nemo nam qui unde enim aut.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(682, 'default', 'created', 'App\\Models\\ContactAgent', 1, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"full_name\":\"Michael Osei\",\"email\":\"michael.osei@email.com\",\"phone_number\":\"+233244123456\",\"message\":\"I am very interested in this property and would like to discuss the details with an agent. Could you please contact me to schedule a meeting?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(683, 'default', 'created', 'App\\Models\\ContactAgent', 2, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"full_name\":\"Grace Adjei\",\"email\":\"grace.adjei@email.com\",\"phone_number\":\"+233244123457\",\"message\":\"I am looking for investment properties in this area. Could an agent provide me with more information about the market trends and potential returns?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(684, 'default', 'created', 'App\\Models\\ContactAgent', 3, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"full_name\":\"David Asante\",\"email\":\"david.asante@email.com\",\"phone_number\":\"+233244123458\",\"message\":\"I would like to make an offer on this property. Could an agent help me with the negotiation process and paperwork?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(685, 'default', 'created', 'App\\Models\\ContactAgent', 4, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"full_name\":\"Ama Serwaa\",\"email\":\"ama.serwaa@email.com\",\"phone_number\":\"+233244123459\",\"message\":\"I am a first-time buyer and need guidance on the purchasing process. Could an agent explain the steps and requirements?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(686, 'default', 'created', 'App\\Models\\ContactAgent', 5, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"full_name\":\"Kwame Boateng\",\"email\":\"kwame.boateng@email.com\",\"phone_number\":\"+233244123460\",\"message\":\"I am relocating from abroad and need assistance with property selection. Could an agent help me find suitable properties in my budget range?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(687, 'default', 'created', 'App\\Models\\ContactAgent', 6, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":10,\"full_name\":\"Drew Fay Sr.\",\"email\":\"choeger@example.com\",\"phone_number\":\"+233244816110\",\"message\":\"I am interested in financing options for this property. Could an agent help?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(688, 'default', 'created', 'App\\Models\\ContactAgent', 7, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"full_name\":\"Horace Dickens\",\"email\":\"pete.willms@example.com\",\"phone_number\":\"+233244117611\",\"message\":\"I am interested in financing options for this property. Could an agent help?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(689, 'default', 'created', 'App\\Models\\ContactAgent', 8, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"full_name\":\"Rowan Schulist\",\"email\":\"karlee.walsh@example.com\",\"phone_number\":\"+233244320856\",\"message\":\"Could an agent provide me with comparable properties in the area?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(690, 'default', 'created', 'App\\Models\\ContactAgent', 9, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":9,\"full_name\":\"Jabari Flatley\",\"email\":\"beatty.constance@example.com\",\"phone_number\":\"+233244786011\",\"message\":\"I would like to make an offer on this property. Could an agent help me with the process?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(691, 'default', 'created', 'App\\Models\\ContactAgent', 10, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"full_name\":\"Ms. Dorothea Reynolds PhD\",\"email\":\"murazik.nels@example.com\",\"phone_number\":\"+233244978161\",\"message\":\"I would like to make an offer on this property. Could an agent help me with the process?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(692, 'default', 'created', 'App\\Models\\ContactAgent', 11, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":16,\"full_name\":\"Filiberto Zboncak\",\"email\":\"lula.spinka@example.net\",\"phone_number\":\"+233244796351\",\"message\":\"Could an agent provide me with comparable properties in the area?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(693, 'default', 'created', 'App\\Models\\ContactAgent', 12, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"full_name\":\"Stephania Cassin IV\",\"email\":\"jconnelly@example.org\",\"phone_number\":\"+233244198449\",\"message\":\"Could an agent provide me with a market analysis for this property?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(694, 'default', 'created', 'App\\Models\\ContactAgent', 13, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"full_name\":\"Dr. Jamar Howe III\",\"email\":\"aniya.cremin@example.org\",\"phone_number\":\"+233244636352\",\"message\":\"I am interested in financing options for this property. Could an agent help?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(695, 'default', 'created', 'App\\Models\\ContactAgent', 14, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":17,\"full_name\":\"Mrs. Tiara Sipes MD\",\"email\":\"wkilback@example.org\",\"phone_number\":\"+233244364760\",\"message\":\"I would like to make an offer on this property. Could an agent help me with the process?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(696, 'default', 'created', 'App\\Models\\ContactAgent', 15, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":6,\"full_name\":\"Brianne McGlynn I\",\"email\":\"icole@example.net\",\"phone_number\":\"+233244269015\",\"message\":\"I am interested in this property and would like to discuss the details with an agent.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(697, 'default', 'created', 'App\\Models\\ContactAgent', 16, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"full_name\":\"Trycia Stracke\",\"email\":\"dashawn.lesch@example.com\",\"phone_number\":\"+233244644164\",\"message\":\"I am interested in this property and would like to discuss the details with an agent.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(698, 'default', 'created', 'App\\Models\\ContactAgent', 17, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"full_name\":\"Prof. Gunner Kuhn\",\"email\":\"jennyfer.bosco@example.com\",\"phone_number\":\"+233244357547\",\"message\":\"Could an agent provide me with comparable properties in the area?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(699, 'default', 'created', 'App\\Models\\ContactAgent', 18, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"full_name\":\"Mr. Ben Volkman Jr.\",\"email\":\"jkuhlman@example.org\",\"phone_number\":\"+233244519210\",\"message\":\"I am relocating and need assistance with property selection in this area.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(700, 'default', 'created', 'App\\Models\\ContactAgent', 19, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"full_name\":\"Ramon Witting\",\"email\":\"pauline.kulas@example.net\",\"phone_number\":\"+233244552783\",\"message\":\"I would like to schedule a private viewing of this property.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(701, 'default', 'created', 'App\\Models\\ContactAgent', 20, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":3,\"full_name\":\"Mrs. Liliane Johnson DDS\",\"email\":\"buddy17@example.org\",\"phone_number\":\"+233244228850\",\"message\":\"I am relocating and need assistance with property selection in this area.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(702, 'default', 'created', 'App\\Models\\ContactAgent', 21, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":7,\"full_name\":\"Blanche Stamm PhD\",\"email\":\"morar.marlon@example.net\",\"phone_number\":\"+233244336707\",\"message\":\"Could an agent provide me with comparable properties in the area?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(703, 'default', 'created', 'App\\Models\\ContactAgent', 22, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":14,\"full_name\":\"Mr. Juston Johnson\",\"email\":\"romaguera.jose@example.com\",\"phone_number\":\"+233244297210\",\"message\":\"I am relocating and need assistance with property selection in this area.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(704, 'default', 'created', 'App\\Models\\ContactAgent', 23, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":13,\"full_name\":\"Martine Fahey DDS\",\"email\":\"dare.frances@example.org\",\"phone_number\":\"+233244703255\",\"message\":\"I am interested in this property and would like to discuss the details with an agent.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(705, 'default', 'created', 'App\\Models\\ContactAgent', 24, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":11,\"full_name\":\"Mrs. Kylee Glover IV\",\"email\":\"katrina91@example.net\",\"phone_number\":\"+233244903389\",\"message\":\"I am interested in financing options for this property. Could an agent help?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(706, 'default', 'created', 'App\\Models\\ContactAgent', 25, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":8,\"full_name\":\"America Huel\",\"email\":\"zechariah82@example.net\",\"phone_number\":\"+233244766200\",\"message\":\"I am relocating and need assistance with property selection in this area.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(707, 'default', 'created', 'App\\Models\\ContactAgent', 26, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"full_name\":\"Aaliyah Schmitt I\",\"email\":\"wdurgan@example.net\",\"phone_number\":\"+233244359988\",\"message\":\"Could an agent provide me with comparable properties in the area?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(708, 'default', 'created', 'App\\Models\\ContactAgent', 27, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":12,\"full_name\":\"Rachael Grant II\",\"email\":\"lwest@example.com\",\"phone_number\":\"+233244790767\",\"message\":\"Could an agent provide me with a market analysis for this property?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(709, 'default', 'created', 'App\\Models\\ContactAgent', 28, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"full_name\":\"Skyla Kihn\",\"email\":\"zboncak.janice@example.org\",\"phone_number\":\"+233244241648\",\"message\":\"I am interested in financing options for this property. Could an agent help?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(710, 'default', 'created', 'App\\Models\\ContactAgent', 29, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":20,\"full_name\":\"Prof. Emelia Mohr DDS\",\"email\":\"baumbach.bobbie@example.org\",\"phone_number\":\"+233244013740\",\"message\":\"I am relocating and need assistance with property selection in this area.\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(711, 'default', 'created', 'App\\Models\\ContactAgent', 30, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"full_name\":\"Jarred Strosin PhD\",\"email\":\"augustus10@example.org\",\"phone_number\":\"+233244596034\",\"message\":\"Could you please provide more information about this property and schedule a viewing?\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(712, 'default', 'created', 'App\\Models\\PropertyComparison', 1, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":11,\"name\":\"Luxury Properties in Accra\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(713, 'default', 'created', 'App\\Models\\PropertyComparison', 2, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":14,\"name\":\"Investment Opportunities\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(714, 'default', 'created', 'App\\Models\\PropertyComparison', 3, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":12,\"name\":\"Family Homes Under $500k\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(715, 'default', 'created', 'App\\Models\\PropertyComparison', 4, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":16,\"name\":\"Beachfront Properties\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(716, 'default', 'created', 'App\\Models\\PropertyComparison', 5, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":14,\"name\":\"Modern Apartments\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(717, 'default', 'created', 'App\\Models\\PropertyComparison', 6, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":10,\"name\":\"Villas with Pool - voluptas\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(718, 'default', 'created', 'App\\Models\\PropertyComparison', 7, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":14,\"name\":\"Budget-Friendly Options - fuga\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(719, 'default', 'created', 'App\\Models\\PropertyComparison', 8, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":19,\"name\":\"Commercial Properties - quasi\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(720, 'default', 'created', 'App\\Models\\PropertyComparison', 9, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":11,\"name\":\"Properties in East Legon - eos\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(721, 'default', 'created', 'App\\Models\\PropertyComparison', 10, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":12,\"name\":\"High-End Properties - impedit\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(722, 'default', 'created', 'App\\Models\\PropertyComparison', 11, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":14,\"name\":\"Budget-Friendly Options - maxime\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(723, 'default', 'created', 'App\\Models\\PropertyComparison', 12, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":18,\"name\":\"Investment Properties - eius\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(724, 'default', 'created', 'App\\Models\\PropertyComparison', 13, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":16,\"name\":\"New Construction - magnam\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(725, 'default', 'created', 'App\\Models\\PropertyComparison', 14, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":10,\"name\":\"Commercial Properties - eius\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(726, 'default', 'created', 'App\\Models\\PropertyComparison', 15, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":4,\"name\":\"Investment Properties - sed\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(727, 'default', 'created', 'App\\Models\\PropertyComparison', 16, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":4,\"name\":\"Budget-Friendly Options - consequatur\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(728, 'default', 'created', 'App\\Models\\PropertyComparison', 17, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":18,\"name\":\"Budget-Friendly Options - ut\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(729, 'default', 'created', 'App\\Models\\PropertyComparison', 18, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":14,\"name\":\"Properties with Garden - velit\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(730, 'default', 'created', 'App\\Models\\PropertyComparison', 19, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":12,\"name\":\"Commercial Properties - accusantium\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(731, 'default', 'created', 'App\\Models\\PropertyComparison', 20, 'created', NULL, NULL, '{\"attributes\":{\"user_id\":10,\"name\":\"Properties Near Airport - adipisci\"}}', NULL, '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(732, 'user', 'User created', 'App\\Models\\User', 22, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"John\",\"last_name\":\"Doe\",\"email\":\"john@example.com\",\"phone\":\"+1234567890\",\"is_active\":true,\"is_verified\":false,\"avatar_url\":null,\"last_login_at\":null}}', NULL, '2025-09-19 00:43:34', '2025-09-19 00:43:34'),
(733, 'user', 'User updated', 'App\\Models\\User', 22, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T00:43:54.000000Z\"},\"old\":{\"last_login_at\":null}}', NULL, '2025-09-19 00:43:54', '2025-09-19 00:43:54'),
(734, 'user', 'User updated', 'App\\Models\\User', 22, 'updated', NULL, NULL, '{\"attributes\":{\"is_verified\":true},\"old\":{\"is_verified\":false}}', NULL, '2025-09-19 00:44:26', '2025-09-19 00:44:26');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(735, 'default', 'created', 'App\\Models\\PropertyView', 416, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Test Browser\",\"viewed_at\":\"2025-09-19T01:16:11.000000Z\"}}', NULL, '2025-09-19 01:16:11', '2025-09-19 01:16:11'),
(736, 'default', 'created', 'App\\Models\\NewsletterSubscription', 31, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"test@example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"is_active\":true,\"preferences\":{\"frequency\":\"weekly\",\"property_types\":[\"apartment\",\"house\"]},\"subscribed_at\":\"2025-09-19T07:36:37.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-19 07:36:37', '2025-09-19 07:36:37'),
(737, 'user', 'User updated', 'App\\Models\\User', 3, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T07:37:17.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-18T23:47:27.000000Z\"}}', NULL, '2025-09-19 07:37:18', '2025-09-19 07:37:18'),
(738, 'default', 'updated', 'App\\Models\\NewsletterSubscription', 31, 'updated', NULL, NULL, '{\"attributes\":{\"preferences\":{\"frequency\":\"monthly\",\"locations\":[\"Accra\"],\"price_range\":[500000,2000000]}},\"old\":{\"preferences\":{\"frequency\":\"weekly\",\"property_types\":[\"apartment\",\"house\"]}}}', NULL, '2025-09-19 07:37:49', '2025-09-19 07:37:49'),
(739, 'default', 'updated', 'App\\Models\\NewsletterSubscription', 31, 'updated', NULL, NULL, '{\"attributes\":{\"is_active\":false,\"unsubscribed_at\":\"2025-09-19T07:38:07.000000Z\"},\"old\":{\"is_active\":true,\"unsubscribed_at\":null}}', NULL, '2025-09-19 07:38:07', '2025-09-19 07:38:07'),
(740, 'default', 'created', 'App\\Models\\PropertyComparison', 21, 'created', 'App\\Models\\User', 3, '{\"attributes\":{\"user_id\":3,\"name\":\"My First Comparison\"}}', NULL, '2025-09-19 07:38:28', '2025-09-19 07:38:28'),
(741, 'default', 'updated', 'App\\Models\\PropertyComparison', 21, 'updated', 'App\\Models\\User', 3, '{\"attributes\":{\"name\":\"My Updated Comparison\"},\"old\":{\"name\":\"My First Comparison\"}}', NULL, '2025-09-19 07:40:58', '2025-09-19 07:40:58'),
(742, 'default', 'deleted', 'App\\Models\\PropertyComparison', 21, 'deleted', 'App\\Models\\User', 3, '{\"old\":{\"user_id\":3,\"name\":\"My Updated Comparison\"}}', NULL, '2025-09-19 07:42:08', '2025-09-19 07:42:08'),
(743, 'default', 'created', 'App\\Models\\ContactMessage', 21, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Visitor\",\"email\":\"visitor@example.com\",\"phone\":null,\"subject\":\"Hello\",\"message\":\"Just saying hi\",\"message_type\":\"general\",\"status\":\"new\"}}', NULL, '2025-09-19 07:58:33', '2025-09-19 07:58:33'),
(744, 'default', 'created', 'App\\Models\\Inquiry', 31, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"name\":\"Kofi\",\"email\":\"kofi@example.com\",\"phone\":null,\"message\":\"Can I get more info?\",\"inquiry_type\":\"information\",\"status\":\"new\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":null}}', NULL, '2025-09-19 07:58:49', '2025-09-19 07:58:49'),
(745, 'default', 'created', 'App\\Models\\Review', 36, 'created', 'App\\Models\\User', 3, '{\"attributes\":{\"property_id\":1,\"user_id\":3,\"rating\":5,\"title\":\"Great\",\"comment\":\"Loved it!\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-19 07:59:07', '2025-09-19 07:59:07'),
(746, 'default', 'created', 'App\\Models\\ScheduleViewing', 26, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"full_name\":\"Ama Boateng\",\"email\":\"ama@example.com\",\"phone_number\":\"+23320000000\",\"preferred_date\":\"2025-09-21T00:00:00.000000Z\",\"preferred_time\":\"10:00\",\"notes\":\"Weekend preferred\"}}', NULL, '2025-09-19 07:59:30', '2025-09-19 07:59:30'),
(747, 'default', 'created', 'App\\Models\\ContactAgent', 31, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"full_name\":\"Yaw Mensah\",\"email\":\"yaw@example.com\",\"phone_number\":\"+233244111111\",\"message\":\"I want to speak to the agent.\"}}', NULL, '2025-09-19 07:59:40', '2025-09-19 07:59:40'),
(748, 'user', 'User updated', 'App\\Models\\User', 3, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T08:31:56.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-19T07:37:17.000000Z\"}}', NULL, '2025-09-19 08:31:56', '2025-09-19 08:31:56'),
(749, 'user', 'User updated', 'App\\Models\\User', 3, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T08:33:29.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-19T08:31:56.000000Z\"}}', NULL, '2025-09-19 08:33:29', '2025-09-19 08:33:29'),
(750, 'default', 'created', 'App\\Models\\NewsletterSubscription', 32, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"abytrone@gmail.com\",\"first_name\":null,\"last_name\":null,\"is_active\":true,\"preferences\":{\"frequency\":\"weekly\",\"property_types\":[\"apartment\",\"house\",\"villa\"]},\"subscribed_at\":\"2025-09-19T11:23:40.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-19 11:23:40', '2025-09-19 11:23:40'),
(751, 'default', 'created', 'App\\Models\\NewsletterSubscription', 33, 'created', NULL, NULL, '{\"attributes\":{\"email\":\"abdulbasit.yahaya51@gmail.com\",\"first_name\":null,\"last_name\":null,\"is_active\":true,\"preferences\":{\"frequency\":\"weekly\",\"property_types\":[\"apartment\",\"house\",\"villa\"]},\"subscribed_at\":\"2025-09-19T11:40:52.000000Z\",\"unsubscribed_at\":null}}', NULL, '2025-09-19 11:40:52', '2025-09-19 11:40:52'),
(752, 'default', 'updated', 'App\\Models\\NewsletterSubscription', 32, 'updated', 'App\\Models\\User', 2, '{\"attributes\":{\"is_active\":false,\"unsubscribed_at\":\"2025-09-19T11:42:49.000000Z\"},\"old\":{\"is_active\":true,\"unsubscribed_at\":null}}', NULL, '2025-09-19 11:42:49', '2025-09-19 11:42:49'),
(753, 'default', 'updated', 'App\\Models\\NewsletterSubscription', 33, 'updated', 'App\\Models\\User', 2, '{\"attributes\":{\"is_active\":false,\"unsubscribed_at\":\"2025-09-19T11:42:50.000000Z\"},\"old\":{\"is_active\":true,\"unsubscribed_at\":null}}', NULL, '2025-09-19 11:42:50', '2025-09-19 11:42:50'),
(754, 'default', 'updated', 'App\\Models\\NewsletterSubscription', 32, 'updated', NULL, NULL, '{\"attributes\":{\"is_active\":true,\"unsubscribed_at\":null},\"old\":{\"is_active\":false,\"unsubscribed_at\":\"2025-09-19T11:42:49.000000Z\"}}', NULL, '2025-09-19 11:46:40', '2025-09-19 11:46:40'),
(755, 'default', 'updated', 'App\\Models\\NewsletterSubscription', 32, 'updated', 'App\\Models\\User', 2, '{\"attributes\":{\"is_active\":false,\"unsubscribed_at\":\"2025-09-19T11:57:59.000000Z\"},\"old\":{\"is_active\":true,\"unsubscribed_at\":null}}', NULL, '2025-09-19 11:57:59', '2025-09-19 11:57:59'),
(756, 'default', 'updated', 'App\\Models\\NewsletterSubscription', 32, 'updated', NULL, NULL, '{\"attributes\":{\"is_active\":true,\"unsubscribed_at\":null},\"old\":{\"is_active\":false,\"unsubscribed_at\":\"2025-09-19T11:57:59.000000Z\"}}', NULL, '2025-09-19 11:58:18', '2025-09-19 11:58:18'),
(757, 'default', 'created', 'App\\Models\\ContactMessage', 22, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Test User\",\"email\":\"test@example.com\",\"phone\":null,\"subject\":\"Test Subject\",\"message\":\"Test message\",\"message_type\":\"general\",\"status\":\"new\"}}', NULL, '2025-09-19 13:09:34', '2025-09-19 13:09:34'),
(758, 'default', 'created', 'App\\Models\\ScheduleViewing', 27, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"full_name\":\"Test User\",\"email\":\"test@example.com\",\"phone_number\":\"+233123456789\",\"preferred_date\":\"2024-01-15T00:00:00.000000Z\",\"preferred_time\":\"10:00 AM\",\"notes\":\"Test viewing\"}}', NULL, '2025-09-19 13:09:58', '2025-09-19 13:09:58'),
(759, 'default', 'created', 'App\\Models\\ContactAgent', 32, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"full_name\":\"Test User\",\"email\":\"test@example.com\",\"phone_number\":\"+233123456789\",\"message\":\"Test message to agent\"}}', NULL, '2025-09-19 13:13:36', '2025-09-19 13:13:36'),
(760, 'default', 'created', 'App\\Models\\PropertyView', 417, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Test Browser\",\"viewed_at\":\"2025-09-19T15:31:32.000000Z\"}}', NULL, '2025-09-19 15:31:32', '2025-09-19 15:31:32'),
(761, 'user', 'User updated', 'App\\Models\\User', 2, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T15:41:16.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-18T23:47:27.000000Z\"}}', NULL, '2025-09-19 15:41:16', '2025-09-19 15:41:16'),
(762, 'default', 'created', 'App\\Models\\PropertyComparison', 22, 'created', 'App\\Models\\User', 2, '{\"attributes\":{\"user_id\":2,\"name\":\"My First Comparison\"}}', NULL, '2025-09-19 15:41:55', '2025-09-19 15:41:55'),
(763, 'default', 'created', 'App\\Models\\PropertyView', 418, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-19T15:50:52.000000Z\"}}', NULL, '2025-09-19 15:50:52', '2025-09-19 15:50:52'),
(764, 'default', 'created', 'App\\Models\\PropertyView', 419, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-19T15:52:06.000000Z\"}}', NULL, '2025-09-19 15:52:06', '2025-09-19 15:52:06'),
(765, 'default', 'created', 'App\\Models\\PropertyView', 420, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":15,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-19T15:52:53.000000Z\"}}', NULL, '2025-09-19 15:52:53', '2025-09-19 15:52:53'),
(766, 'user', 'User created', 'App\\Models\\User', 23, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Test\",\"last_name\":\"User\",\"email\":\"test@example.com\",\"phone\":\"+233123456789\",\"is_active\":true,\"is_verified\":false,\"avatar_url\":null,\"last_login_at\":null}}', NULL, '2025-09-19 17:33:09', '2025-09-19 17:33:09'),
(767, 'user', 'User updated', 'App\\Models\\User', 23, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T17:33:26.000000Z\"},\"old\":{\"last_login_at\":null}}', NULL, '2025-09-19 17:33:26', '2025-09-19 17:33:26'),
(768, 'user', 'User created', 'App\\Models\\User', 24, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Abdul Basit\",\"last_name\":\"Yahaya\",\"email\":\"abytrone@gmail.com\",\"phone\":\"0559133666\",\"is_active\":true,\"is_verified\":false,\"avatar_url\":null,\"last_login_at\":null}}', NULL, '2025-09-19 17:38:18', '2025-09-19 17:38:18'),
(769, 'user', 'User created', 'App\\Models\\User', 25, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Test\",\"last_name\":\"User\",\"email\":\"testuser@example.com\",\"phone\":null,\"is_active\":true,\"is_verified\":false,\"avatar_url\":null,\"last_login_at\":null}}', NULL, '2025-09-19 19:46:53', '2025-09-19 19:46:53'),
(770, 'user', 'User deleted', 'App\\Models\\User', 25, 'deleted', NULL, NULL, '{\"old\":{\"first_name\":\"Test\",\"last_name\":\"User\",\"email\":\"testuser@example.com\",\"phone\":null,\"is_active\":true,\"is_verified\":false,\"avatar_url\":null,\"last_login_at\":null}}', NULL, '2025-09-19 19:46:53', '2025-09-19 19:46:53'),
(771, 'user', 'User created', 'App\\Models\\User', 26, 'created', NULL, NULL, '{\"attributes\":{\"first_name\":\"Abdul Basit\",\"last_name\":\"Yayaha\",\"email\":\"abdulbasit.yahaya51@gmail.com\",\"phone\":\"0559133666\",\"is_active\":true,\"is_verified\":false,\"avatar_url\":null,\"last_login_at\":null}}', NULL, '2025-09-19 23:13:59', '2025-09-19 23:13:59'),
(772, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"is_verified\":true},\"old\":{\"is_verified\":false}}', NULL, '2025-09-19 23:14:32', '2025-09-19 23:14:32'),
(773, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T23:15:57.000000Z\"},\"old\":{\"last_login_at\":null}}', NULL, '2025-09-19 23:15:57', '2025-09-19 23:15:57'),
(774, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T23:40:09.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-19T23:15:57.000000Z\"}}', NULL, '2025-09-19 23:40:09', '2025-09-19 23:40:09'),
(775, 'default', 'created', 'App\\Models\\PropertyComparison', 23, 'created', 'App\\Models\\User', 26, '{\"attributes\":{\"user_id\":26,\"name\":\"3 Bedrooms Comparison\"}}', NULL, '2025-09-19 23:41:08', '2025-09-19 23:41:08'),
(776, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T23:45:32.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-19T23:40:09.000000Z\"}}', NULL, '2025-09-19 23:45:32', '2025-09-19 23:45:32'),
(777, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T23:52:00.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-19T23:45:32.000000Z\"}}', NULL, '2025-09-19 23:52:00', '2025-09-19 23:52:00'),
(778, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-19T23:55:36.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-19T23:52:00.000000Z\"}}', NULL, '2025-09-19 23:55:36', '2025-09-19 23:55:36'),
(779, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-20T00:13:43.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-19T23:55:36.000000Z\"}}', NULL, '2025-09-20 00:13:43', '2025-09-20 00:13:43'),
(780, 'default', 'created', 'App\\Models\\PropertyComparison', 24, 'created', 'App\\Models\\User', 26, '{\"attributes\":{\"user_id\":26,\"name\":\"Test Comparison - 2025-09-20T00:13:44.028Z\"}}', NULL, '2025-09-20 00:13:44', '2025-09-20 00:13:44'),
(781, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-20T00:24:46.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-20T00:13:43.000000Z\"}}', NULL, '2025-09-20 00:24:46', '2025-09-20 00:24:46'),
(782, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-20T00:26:51.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-20T00:24:46.000000Z\"}}', NULL, '2025-09-20 00:26:51', '2025-09-20 00:26:51'),
(783, 'default', 'created', 'App\\Models\\ContactMessage', 23, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Alhassan Hanan\",\"email\":\"hanan@gmail.com\",\"phone\":null,\"subject\":\"viewing-request\",\"message\":\"This is the content of my message.\",\"message_type\":\"general\",\"status\":\"new\"}}', NULL, '2025-09-22 00:41:05', '2025-09-22 00:41:05'),
(784, 'default', 'created', 'App\\Models\\PropertyView', 421, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":2,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-22T00:51:28.000000Z\"}}', NULL, '2025-09-22 00:51:28', '2025-09-22 00:51:28'),
(785, 'default', 'created', 'App\\Models\\PropertyView', 422, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":25,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-22T00:53:04.000000Z\"}}', NULL, '2025-09-22 00:53:04', '2025-09-22 00:53:04'),
(786, 'default', 'created', 'App\\Models\\Review', 37, 'created', 'App\\Models\\User', 26, '{\"attributes\":{\"property_id\":25,\"user_id\":26,\"rating\":3,\"title\":null,\"comment\":\"Perfect for families with children\",\"is_verified\":true,\"is_approved\":true}}', NULL, '2025-09-22 00:53:42', '2025-09-22 00:53:42'),
(787, 'default', 'created', 'App\\Models\\PropertyView', 423, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-22T00:54:09.000000Z\"}}', NULL, '2025-09-22 00:54:09', '2025-09-22 00:54:09'),
(788, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2025-09-22T00:59:22.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-20T00:26:51.000000Z\"}}', NULL, '2025-09-22 00:59:22', '2025-09-22 00:59:22'),
(789, 'default', 'created', 'App\\Models\\PropertyView', 424, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":21,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-22T00:59:48.000000Z\"}}', NULL, '2025-09-22 00:59:48', '2025-09-22 00:59:48'),
(790, 'default', 'created', 'App\\Models\\PropertyView', 425, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-22T01:13:48.000000Z\"}}', NULL, '2025-09-22 01:13:48', '2025-09-22 01:13:48'),
(791, 'default', 'created', 'App\\Models\\PropertyView', 426, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":18,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-22T01:14:28.000000Z\"}}', NULL, '2025-09-22 01:14:28', '2025-09-22 01:14:28'),
(792, 'default', 'created', 'App\\Models\\PropertyView', 427, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-22T09:33:03.000000Z\"}}', NULL, '2025-09-22 09:33:03', '2025-09-22 09:33:03'),
(793, 'default', 'created', 'App\\Models\\ContactAgent', 33, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"full_name\":\"Abdul Basit Yayaha\",\"email\":\"abdulbasit.yahaya51@gmail.com\",\"phone_number\":\"0559133666\",\"message\":\"This is my message to the agent\"}}', NULL, '2025-09-22 14:33:07', '2025-09-22 14:33:07'),
(794, 'default', 'created', 'App\\Models\\Inquiry', 32, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"name\":\"Abdul Basit Yayaha\",\"email\":\"abdulbasit.yahaya51@gmail.com\",\"phone\":null,\"message\":\"This is my message to the agent\",\"inquiry_type\":\"information\",\"status\":\"new\",\"preferred_date\":null,\"preferred_time\":null,\"agent_notes\":null}}', NULL, '2025-09-22 14:33:13', '2025-09-22 14:33:13'),
(795, 'default', 'created', 'App\\Models\\PropertyView', 428, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-22T14:52:36.000000Z\"}}', NULL, '2025-09-22 14:52:36', '2025-09-22 14:52:36'),
(796, 'default', 'created', 'App\\Models\\ScheduleViewing', 28, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"full_name\":\"Abdul Basit Yayaha\",\"email\":\"abdulbasit.yahaya51@gmail.com\",\"phone_number\":\"0559133666\",\"preferred_date\":\"2025-09-23T00:00:00.000000Z\",\"preferred_time\":\"01:00 PM\",\"notes\":\"2p is fine as well\"}}', NULL, '2025-09-22 14:53:52', '2025-09-22 14:53:52'),
(797, 'default', 'created', 'App\\Models\\ContactMessage', 24, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Abdul Basit Yayaha\",\"email\":\"abdulbasit.yahaya51@gmail.com\",\"phone\":null,\"subject\":\"Voluptatum possimus veritatis.\",\"message\":\"I want us to talk\",\"message_type\":\"general\",\"status\":\"new\"}}', NULL, '2025-09-22 14:54:39', '2025-09-22 14:54:39'),
(798, 'default', 'created', 'App\\Models\\PropertyView', 429, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/140.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2025-09-23T18:11:54.000000Z\"}}', NULL, '2025-09-23 18:11:54', '2025-09-23 18:11:54'),
(799, 'user', 'User updated', 'App\\Models\\User', 23, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2026-01-08T21:05:15.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-19T17:33:26.000000Z\"}}', NULL, '2026-01-08 21:05:16', '2026-01-08 21:05:16'),
(800, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2026-01-09T18:04:15.000000Z\"},\"old\":{\"last_login_at\":\"2025-09-22T00:59:22.000000Z\"}}', NULL, '2026-01-09 18:04:15', '2026-01-09 18:04:15'),
(801, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2026-01-09T22:55:31.000000Z\"},\"old\":{\"last_login_at\":\"2026-01-09T18:04:15.000000Z\"}}', NULL, '2026-01-09 22:55:31', '2026-01-09 22:55:31'),
(802, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2026-01-09T22:56:15.000000Z\"},\"old\":{\"last_login_at\":\"2026-01-09T22:55:31.000000Z\"}}', NULL, '2026-01-09 22:56:15', '2026-01-09 22:56:15'),
(803, 'default', 'created', 'App\\Models\\PropertyView', 430, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":23,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2026-01-10T09:39:19.000000Z\"}}', NULL, '2026-01-10 09:39:19', '2026-01-10 09:39:19'),
(804, 'default', 'created', 'App\\Models\\PropertyView', 431, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2026-01-10T10:47:32.000000Z\"}}', NULL, '2026-01-10 10:47:32', '2026-01-10 10:47:32'),
(805, 'default', 'created', 'App\\Models\\PropertyView', 432, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2026-01-10T13:21:19.000000Z\"}}', NULL, '2026-01-10 13:21:19', '2026-01-10 13:21:19'),
(806, 'default', 'created', 'App\\Models\\PropertyView', 433, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":24,\"user_id\":null,\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\",\"viewed_at\":\"2026-01-10T19:31:07.000000Z\"}}', NULL, '2026-01-10 19:31:07', '2026-01-10 19:31:07'),
(807, 'default', 'created', 'App\\Models\\ContactMessage', 25, 'created', NULL, NULL, '{\"attributes\":{\"name\":\"Test\",\"email\":\"test@example.com\",\"phone\":null,\"subject\":\"Test\",\"message\":\"Test\",\"message_type\":\"general\",\"status\":\"new\"}}', NULL, '2026-01-11 15:22:33', '2026-01-11 15:22:33'),
(808, 'default', 'created', 'App\\Models\\ScheduleViewing', 29, 'created', NULL, NULL, '{\"attributes\":{\"property_id\":1,\"full_name\":\"Test\",\"email\":\"test@example.com\",\"phone_number\":\"1234567890\",\"preferred_date\":\"2025-12-25T00:00:00.000000Z\",\"preferred_time\":\"14:00\",\"notes\":null}}', NULL, '2026-01-11 15:23:04', '2026-01-11 15:23:04'),
(809, 'user', 'User updated', 'App\\Models\\User', 26, 'updated', NULL, NULL, '{\"attributes\":{\"last_login_at\":\"2026-01-11T15:44:28.000000Z\"},\"old\":{\"last_login_at\":\"2026-01-09T22:56:15.000000Z\"}}', NULL, '2026-01-11 15:44:28', '2026-01-11 15:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log_causer`
--

CREATE TABLE `activity_log_causer` (
  `activity_log_id` bigint(20) UNSIGNED NOT NULL,
  `causer_id` bigint(20) UNSIGNED NOT NULL,
  `causer_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_log_subject`
--

CREATE TABLE `activity_log_subject` (
  `activity_log_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `subject_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1758281111),
('laravel-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1758281111;', 1758281111),
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:154:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:17:\"force_delete_role\";s:1:\"c\";s:3:\"web\";}i:7;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:21:\"force_delete_any_role\";s:1:\"c\";s:3:\"web\";}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:12:\"restore_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:16:\"restore_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:22:\"view_any_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:18:\"view_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:17:\"view_any_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:13:\"view_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:15:\"create_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:15:\"update_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"delete_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:19:\"delete_any_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:21:\"force_delete_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:25:\"force_delete_any_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:16:\"restore_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:20:\"restore_any_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:26:\"view_any_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:22:\"view_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:24:\"create_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:24:\"update_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:24:\"delete_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:28:\"delete_any_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:30:\"force_delete_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:34:\"force_delete_any_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:25:\"restore_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:29:\"restore_any_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:23:\"view_any_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:19:\"view_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:29:\"view_any_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:25:\"view_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:25:\"view_any_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:21:\"view_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:23:\"create_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:23:\"update_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:23:\"delete_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:27:\"delete_any_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:29:\"force_delete_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:33:\"force_delete_any_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:24:\"restore_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:28:\"restore_any_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:16:\"view_any_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:12:\"view_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:14:\"create_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:14:\"update_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:14:\"delete_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:18:\"delete_any_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:20:\"force_delete_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:24:\"force_delete_any_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:15:\"restore_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:19:\"restore_any_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:15:\"view_any_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:11:\"view_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:13:\"create_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:13:\"update_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:13:\"delete_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:17:\"delete_any_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:19:\"force_delete_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:23:\"force_delete_any_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:14:\"restore_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:18:\"restore_any_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:26:\"view_any_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:22:\"view_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:23:\"view_any_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:19:\"view_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:33:\"view_any_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:29:\"view_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:31:\"create_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:31:\"update_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:31:\"delete_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:35:\"delete_any_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:37:\"force_delete_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:41:\"force_delete_any_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:32:\"restore_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:36:\"restore_any_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:20:\"create_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:20:\"update_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:21:\"restore_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:25:\"restore_any_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:23:\"replicate_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:21:\"reorder_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:20:\"delete_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:24:\"delete_any_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:26:\"force_delete_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:30:\"force_delete_any_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:21:\"create_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:21:\"update_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:22:\"restore_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:26:\"restore_any_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:24:\"replicate_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:22:\"reorder_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:21:\"delete_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:25:\"delete_any_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:27:\"force_delete_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:31:\"force_delete_any_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:26:\"replicate_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:24:\"reorder_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:17:\"replicate_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:15:\"reorder_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:34:\"replicate_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:32:\"reorder_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:18:\"replicate_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:16:\"reorder_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:27:\"replicate_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:25:\"reorder_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:120;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:27:\"create_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:121;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:27:\"update_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:122;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:28:\"restore_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:123;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:32:\"restore_any_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:124;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:30:\"replicate_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:125;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:28:\"reorder_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:126;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:27:\"delete_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:31:\"delete_any_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:33:\"force_delete_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:129;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:37:\"force_delete_any_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:21:\"create_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:131;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:21:\"update_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:22:\"restore_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:26:\"restore_any_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:24:\"replicate_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:22:\"reorder_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:21:\"delete_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:25:\"delete_any_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:27:\"force_delete_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:31:\"force_delete_any_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:16:\"replicate_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:14:\"reorder_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:24:\"create_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:24:\"update_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:25:\"restore_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:29:\"restore_any_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:27:\"replicate_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:25:\"reorder_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:24:\"delete_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:28:\"delete_any_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:30:\"force_delete_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:151;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:34:\"force_delete_any_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:152;a:4:{s:1:\"a\";i:153;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:153;a:4:{s:1:\"a\";i:154;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:5:\"agent\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:4:\"user\";s:1:\"c\";s:3:\"web\";}}}', 1758325715),
('vestanet-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1768129758),
('vestanet-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1768129758;', 1768129758),
('vestanet-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:154:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:17:\"force_delete_role\";s:1:\"c\";s:3:\"web\";}i:7;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:21:\"force_delete_any_role\";s:1:\"c\";s:3:\"web\";}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:12:\"restore_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:16:\"restore_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:22:\"view_any_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:18:\"view_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:17:\"view_any_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:13:\"view_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:15:\"create_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:15:\"update_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"delete_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:19:\"delete_any_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:21:\"force_delete_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:25:\"force_delete_any_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:16:\"restore_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:20:\"restore_any_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:26:\"view_any_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:22:\"view_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:24:\"create_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:24:\"update_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:24:\"delete_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:28:\"delete_any_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:30:\"force_delete_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:34:\"force_delete_any_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:25:\"restore_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:29:\"restore_any_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:23:\"view_any_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:19:\"view_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:29:\"view_any_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:25:\"view_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:25:\"view_any_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:21:\"view_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:23:\"create_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:23:\"update_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:23:\"delete_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:27:\"delete_any_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:29:\"force_delete_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:33:\"force_delete_any_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:24:\"restore_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:28:\"restore_any_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:16:\"view_any_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:12:\"view_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:14:\"create_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:14:\"update_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:14:\"delete_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:18:\"delete_any_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:20:\"force_delete_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:24:\"force_delete_any_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:15:\"restore_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:19:\"restore_any_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:15:\"view_any_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:11:\"view_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:13:\"create_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:13:\"update_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:13:\"delete_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:17:\"delete_any_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:19:\"force_delete_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:23:\"force_delete_any_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:14:\"restore_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:18:\"restore_any_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:26:\"view_any_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:22:\"view_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:23:\"view_any_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:19:\"view_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:33:\"view_any_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:29:\"view_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:31:\"create_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:4;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:31:\"update_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:31:\"delete_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:35:\"delete_any_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:37:\"force_delete_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:41:\"force_delete_any_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:32:\"restore_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:36:\"restore_any_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:20:\"create_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:20:\"update_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:21:\"restore_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:25:\"restore_any_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:23:\"replicate_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:21:\"reorder_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:20:\"delete_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:24:\"delete_any_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:26:\"force_delete_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:30:\"force_delete_any_activity::log\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:21:\"create_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:21:\"update_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:22:\"restore_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:26:\"restore_any_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:24:\"replicate_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:22:\"reorder_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:21:\"delete_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:25:\"delete_any_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:27:\"force_delete_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:31:\"force_delete_any_contact::agent\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:26:\"replicate_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:24:\"reorder_contact::message\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:17:\"replicate_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:15:\"reorder_inquiry\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:34:\"replicate_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:32:\"reorder_newsletter::subscription\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:18:\"replicate_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:16:\"reorder_property\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:27:\"replicate_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:25:\"reorder_property::amenity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:120;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:27:\"create_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:121;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:27:\"update_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:122;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:28:\"restore_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:123;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:32:\"restore_any_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:124;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:30:\"replicate_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:125;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:28:\"reorder_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:126;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:27:\"delete_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:31:\"delete_any_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:33:\"force_delete_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:129;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:37:\"force_delete_any_property::comparison\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:21:\"create_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:131;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:21:\"update_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:22:\"restore_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:26:\"restore_any_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:24:\"replicate_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:22:\"reorder_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:21:\"delete_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:25:\"delete_any_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:27:\"force_delete_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:31:\"force_delete_any_property::view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:16:\"replicate_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:14:\"reorder_review\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:24:\"create_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:24:\"update_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:25:\"restore_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:29:\"restore_any_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:27:\"replicate_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:25:\"reorder_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:24:\"delete_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:28:\"delete_any_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:30:\"force_delete_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:151;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:34:\"force_delete_any_schedule::viewing\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:152;a:4:{s:1:\"a\";i:153;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:153;a:4:{s:1:\"a\";i:154;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:5:\"agent\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:4:\"user\";s:1:\"c\";s:3:\"web\";}}}', 1768162529);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_agents`
--

CREATE TABLE `contact_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_agents`
--

INSERT INTO `contact_agents` (`id`, `property_id`, `full_name`, `email`, `phone_number`, `message`, `created_at`, `updated_at`) VALUES
(1, 21, 'Michael Osei', 'michael.osei@email.com', '+233244123456', 'I am very interested in this property and would like to discuss the details with an agent. Could you please contact me to schedule a meeting?', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(2, 2, 'Grace Adjei', 'grace.adjei@email.com', '+233244123457', 'I am looking for investment properties in this area. Could an agent provide me with more information about the market trends and potential returns?', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(3, 25, 'David Asante', 'david.asante@email.com', '+233244123458', 'I would like to make an offer on this property. Could an agent help me with the negotiation process and paperwork?', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(4, 14, 'Ama Serwaa', 'ama.serwaa@email.com', '+233244123459', 'I am a first-time buyer and need guidance on the purchasing process. Could an agent explain the steps and requirements?', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(5, 14, 'Kwame Boateng', 'kwame.boateng@email.com', '+233244123460', 'I am relocating from abroad and need assistance with property selection. Could an agent help me find suitable properties in my budget range?', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(6, 10, 'Drew Fay Sr.', 'choeger@example.com', '+233244816110', 'I am interested in financing options for this property. Could an agent help?', '2025-08-26 13:10:59', '2025-09-03 08:27:31'),
(7, 2, 'Horace Dickens', 'pete.willms@example.com', '+233244117611', 'I am interested in financing options for this property. Could an agent help?', '2025-09-08 17:26:33', '2025-09-17 04:51:19'),
(8, 24, 'Rowan Schulist', 'karlee.walsh@example.com', '+233244320856', 'Could an agent provide me with comparable properties in the area?', '2025-08-24 04:31:08', '2025-08-23 17:14:15'),
(9, 9, 'Jabari Flatley', 'beatty.constance@example.com', '+233244786011', 'I would like to make an offer on this property. Could an agent help me with the process?', '2025-08-28 22:00:02', '2025-08-29 09:31:00'),
(10, 25, 'Ms. Dorothea Reynolds PhD', 'murazik.nels@example.com', '+233244978161', 'I would like to make an offer on this property. Could an agent help me with the process?', '2025-09-14 03:38:49', '2025-08-20 22:55:45'),
(11, 16, 'Filiberto Zboncak', 'lula.spinka@example.net', '+233244796351', 'Could an agent provide me with comparable properties in the area?', '2025-09-09 11:29:34', '2025-08-31 18:09:24'),
(12, 2, 'Stephania Cassin IV', 'jconnelly@example.org', '+233244198449', 'Could an agent provide me with a market analysis for this property?', '2025-08-31 00:37:30', '2025-09-05 03:43:52'),
(13, 12, 'Dr. Jamar Howe III', 'aniya.cremin@example.org', '+233244636352', 'I am interested in financing options for this property. Could an agent help?', '2025-09-12 17:36:35', '2025-08-31 07:35:43'),
(14, 17, 'Mrs. Tiara Sipes MD', 'wkilback@example.org', '+233244364760', 'I would like to make an offer on this property. Could an agent help me with the process?', '2025-09-14 01:08:08', '2025-09-09 14:31:49'),
(15, 6, 'Brianne McGlynn I', 'icole@example.net', '+233244269015', 'I am interested in this property and would like to discuss the details with an agent.', '2025-09-14 16:46:32', '2025-09-10 20:50:43'),
(16, 11, 'Trycia Stracke', 'dashawn.lesch@example.com', '+233244644164', 'I am interested in this property and would like to discuss the details with an agent.', '2025-09-18 07:46:41', '2025-08-24 12:57:50'),
(17, 12, 'Prof. Gunner Kuhn', 'jennyfer.bosco@example.com', '+233244357547', 'Could an agent provide me with comparable properties in the area?', '2025-09-06 12:40:01', '2025-09-04 06:34:01'),
(18, 15, 'Mr. Ben Volkman Jr.', 'jkuhlman@example.org', '+233244519210', 'I am relocating and need assistance with property selection in this area.', '2025-09-03 11:04:42', '2025-09-12 03:06:02'),
(19, 24, 'Ramon Witting', 'pauline.kulas@example.net', '+233244552783', 'I would like to schedule a private viewing of this property.', '2025-08-25 13:31:22', '2025-08-30 21:03:15'),
(20, 3, 'Mrs. Liliane Johnson DDS', 'buddy17@example.org', '+233244228850', 'I am relocating and need assistance with property selection in this area.', '2025-09-11 18:13:29', '2025-09-09 00:25:09'),
(21, 7, 'Blanche Stamm PhD', 'morar.marlon@example.net', '+233244336707', 'Could an agent provide me with comparable properties in the area?', '2025-09-12 05:14:56', '2025-08-28 07:37:17'),
(22, 14, 'Mr. Juston Johnson', 'romaguera.jose@example.com', '+233244297210', 'I am relocating and need assistance with property selection in this area.', '2025-08-26 06:16:30', '2025-08-24 02:45:16'),
(23, 13, 'Martine Fahey DDS', 'dare.frances@example.org', '+233244703255', 'I am interested in this property and would like to discuss the details with an agent.', '2025-08-30 07:49:59', '2025-09-14 23:32:47'),
(24, 11, 'Mrs. Kylee Glover IV', 'katrina91@example.net', '+233244903389', 'I am interested in financing options for this property. Could an agent help?', '2025-09-15 12:11:56', '2025-08-25 15:20:46'),
(25, 8, 'America Huel', 'zechariah82@example.net', '+233244766200', 'I am relocating and need assistance with property selection in this area.', '2025-09-01 22:48:28', '2025-09-08 10:33:06'),
(26, 15, 'Aaliyah Schmitt I', 'wdurgan@example.net', '+233244359988', 'Could an agent provide me with comparable properties in the area?', '2025-09-02 11:49:53', '2025-09-06 09:27:10'),
(27, 12, 'Rachael Grant II', 'lwest@example.com', '+233244790767', 'Could an agent provide me with a market analysis for this property?', '2025-09-14 08:45:30', '2025-09-09 11:25:18'),
(28, 2, 'Skyla Kihn', 'zboncak.janice@example.org', '+233244241648', 'I am interested in financing options for this property. Could an agent help?', '2025-09-01 02:44:48', '2025-08-21 16:31:13'),
(29, 20, 'Prof. Emelia Mohr DDS', 'baumbach.bobbie@example.org', '+233244013740', 'I am relocating and need assistance with property selection in this area.', '2025-09-09 08:18:12', '2025-08-22 16:15:11'),
(30, 15, 'Jarred Strosin PhD', 'augustus10@example.org', '+233244596034', 'Could you please provide more information about this property and schedule a viewing?', '2025-09-04 07:59:49', '2025-08-26 07:01:53'),
(31, 1, 'Yaw Mensah', 'yaw@example.com', '+233244111111', 'I want to speak to the agent.', '2025-09-19 07:59:40', '2025-09-19 07:59:40'),
(32, 1, 'Test User', 'test@example.com', '+233123456789', 'Test message to agent', '2025-09-19 13:13:36', '2025-09-19 13:13:36'),
(33, 24, 'Abdul Basit Yayaha', 'abdulbasit.yahaya51@gmail.com', '0559133666', 'This is my message to the agent', '2025-09-22 14:33:07', '2025-09-22 14:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `message_type` enum('general','support','partnership','feedback') NOT NULL DEFAULT 'general',
  `status` enum('new','read','replied','closed') NOT NULL DEFAULT 'new',
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `message_type`, `status`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 'Kwame Asante', 'kwame.asante@email.com', '+233244123456', 'Property Investment Inquiry', 'I am interested in investing in properties in Accra. Could you please provide me with information about your investment opportunities and expected returns?', 'general', 'new', '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(2, 'Ama Serwaa', 'ama.serwaa@email.com', '+233244123457', 'Technical Support Request', 'I am having trouble uploading property images on your website. The upload keeps failing and I receive an error message. Can you help me resolve this issue?', 'support', 'read', '192.168.1.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(3, 'David Osei', 'david.osei@company.com', '+233244123458', 'Partnership Proposal', 'We are a real estate development company looking to partner with VestaNest. We have several projects in Kumasi and would like to discuss potential collaboration opportunities.', 'partnership', 'replied', '192.168.1.102', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(4, 'Grace Mensah', 'grace.mensah@email.com', '+233244123459', 'Website Feedback', 'I love using your platform! The property search functionality is excellent. However, I would suggest adding a map view option to make it easier to see property locations.', 'feedback', 'closed', '192.168.1.103', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(5, 'Michael Boateng', 'michael.boateng@email.com', '+233244123460', 'Property Listing Question', 'I am a property owner and would like to list my property on your platform. What are the requirements and fees involved?', 'general', 'new', '192.168.1.104', 'Mozilla/5.0 (Android 11; Mobile; rv:68.0) Gecko/68.0 Firefox/88.0', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(6, 'Lon Ortiz', 'anika.abshire@example.net', '+233244904397', 'Impedit hic.', 'Delectus quia et molestias sit nisi. Et ipsam occaecati vel veniam veritatis. Inventore ratione perspiciatis est dolores.\n\nSuscipit est consectetur magnam ab nobis sapiente eveniet. Sunt excepturi beatae facere ullam velit. Nesciunt tempore quia dolorem rem possimus dolores ex.', 'general', 'read', '217.27.28.146', 'Opera/8.21 (Windows NT 4.0; en-US) Presto/2.10.219 Version/10.00', '2025-08-28 09:44:36', '2025-09-02 15:31:22'),
(7, 'Prof. Jerald Funk I', 'istiedemann@example.com', '+233244920124', 'Sunt vero et.', 'Recusandae eveniet et labore ratione facilis laborum accusantium. Odio consequuntur dolore voluptatem dolor eligendi. Eligendi dolor et doloremque quaerat quas. Nesciunt est ut sunt molestiae. Tenetur assumenda voluptatem soluta enim sapiente recusandae excepturi voluptatibus.\n\nEsse harum animi et quasi laborum. Quam animi asperiores et nostrum adipisci est et. Doloribus natus eos et velit.', 'partnership', 'read', '6.193.88.244', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_8) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/88.0.4423.71 Safari/534.1 Edg/88.01048.38', '2025-09-11 10:37:24', '2025-09-11 21:39:14'),
(8, 'Dr. Lonny Pfannerstill', 'betty52@example.org', '+233244150355', 'Molestias hic sunt.', 'Qui perferendis non aliquam odit libero. Aut velit ut quo tempora. Temporibus dolores error eligendi enim.\n\nUnde quaerat rerum voluptates id et iste. Vitae sunt rerum aut non accusantium rerum dolores. Illum velit omnis aspernatur maiores aut ex.', 'general', 'new', '95.175.93.150', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20181118 Firefox/37.0', '2025-09-08 14:00:41', '2025-09-17 13:39:29'),
(9, 'Prof. Pierce Bednar', 'nschumm@example.org', '+233244454837', 'Quo est sapiente quisquam.', 'Consequatur quisquam aut commodi nobis porro corporis quisquam. Rem iure repellat quia tempore soluta deleniti nobis dolor. Dicta nobis iste eius esse quis labore.\n\nImpedit porro porro sit laborum perferendis. Voluptatem non qui id reiciendis et. Consequuntur eos recusandae quae harum sed.', 'feedback', 'read', '53.209.83.238', 'Mozilla/5.0 (Windows 98) AppleWebKit/536.1 (KHTML, like Gecko) Chrome/93.0.4703.69 Safari/536.1 Edg/93.01048.7', '2025-09-05 18:32:55', '2025-09-15 10:23:30'),
(10, 'Kelvin Schroeder II', 'lisa40@example.org', '+233244934366', 'Expedita praesentium.', 'Officiis veniam saepe sapiente et cumque. Voluptas quo eaque ad consectetur. Ut reiciendis excepturi ex libero impedit iste. Qui ut tenetur quidem.\n\nAccusantium quibusdam deleniti aut provident qui. Vero quia cumque commodi laborum in. Ab consequatur qui odio recusandae voluptatum est.', 'general', 'new', '248.88.40.245', 'Mozilla/5.0 (iPad; CPU OS 7_2_2 like Mac OS X; en-US) AppleWebKit/532.24.7 (KHTML, like Gecko) Version/4.0.5 Mobile/8B116 Safari/6532.24.7', '2025-08-22 23:28:45', '2025-09-03 01:46:16'),
(11, 'Eryn Willms II', 'jaylin.langworth@example.net', '+233244294148', 'Et voluptatem aperiam.', 'Libero non et pariatur deleniti sed. Neque est qui pariatur. Id praesentium quia totam consequatur vitae.\n\nQui sequi odio quasi cumque perferendis quasi. Repellat inventore consequatur aut qui ab. Quisquam autem et tempora sed. Est cumque nesciunt quisquam magni.', 'feedback', 'replied', '135.149.247.221', 'Mozilla/5.0 (Windows NT 5.01; en-US; rv:1.9.0.20) Gecko/20170511 Firefox/35.0', '2025-09-05 23:25:52', '2025-08-28 18:09:30'),
(12, 'Bret Cole', 'murazik.aida@example.net', '+233244654841', 'Nemo illum exercitationem vero.', 'Placeat sint incidunt assumenda et fugit totam cum. Ullam nostrum labore distinctio ut aliquam non. Ab ipsa iure officiis sequi ut. Architecto alias quasi voluptate autem voluptatem odit.\n\nUt aut doloremque ex excepturi ex est quidem. Autem expedita facere qui hic optio et. Nemo quia neque a. Eius dolorem sit id eum et ut.', 'partnership', 'new', '1.5.61.110', 'Opera/8.25 (Windows NT 6.1; nl-NL) Presto/2.8.330 Version/12.00', '2025-09-02 05:14:29', '2025-09-02 15:21:54'),
(13, 'Dedric Bernier', 'aframi@example.com', '+233244635426', 'Ut voluptatum voluptatem culpa asperiores.', 'Sequi sed ex quis laboriosam consequatur. Illo voluptatem laudantium quia optio blanditiis animi quas. Ab aut voluptas consequatur ea sed aut velit.\n\nEveniet et deleniti nobis enim quia ipsam. Molestias harum sunt vitae sit eos. Exercitationem sapiente et et dignissimos laboriosam molestiae.', 'feedback', 'read', '91.133.197.149', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0)', '2025-09-06 12:36:17', '2025-09-18 19:12:50'),
(14, 'Katelin Douglas', 'wdooley@example.org', '+233244855607', 'Ut sequi totam placeat ut.', 'Veritatis nemo voluptatem dolorem ut eum qui. Sint magnam dignissimos sit fugit voluptate molestiae et. Voluptatum in id et distinctio nulla. Est iure quidem necessitatibus porro cumque.\n\nQuidem ipsum est ducimus laudantium enim commodi aut et. Similique consequuntur accusantium illo quis veniam. Culpa quo aut debitis voluptates. Sunt unde accusantium non dolor enim.', 'support', 'read', '137.90.62.4', 'Opera/8.69 (X11; Linux i686; nl-NL) Presto/2.8.303 Version/12.00', '2025-09-05 23:01:30', '2025-08-31 04:37:41'),
(15, 'Dr. Yasmin Harris MD', 'rudy32@example.net', '+233244085500', 'Voluptatum est consequuntur.', 'Nostrum et voluptatem facilis. Consectetur blanditiis placeat occaecati quasi amet ab eligendi. Voluptatem nostrum voluptatem adipisci vero quos sed asperiores. Ut dolores veniam deserunt quas.\n\nAut placeat qui sit laudantium debitis. Possimus tenetur explicabo enim ex dicta.', 'support', 'read', '228.71.125.98', 'Opera/8.31 (Windows NT 5.01; en-US) Presto/2.9.197 Version/11.00', '2025-09-14 20:57:30', '2025-08-22 10:47:32'),
(16, 'Prof. Tomasa Kessler', 'elouise73@example.com', '+233244963489', 'Pariatur expedita ex iure.', 'Error accusamus sed et aspernatur eum ratione. Veniam est ex explicabo quis neque. Officia assumenda laboriosam qui inventore reiciendis et asperiores.\n\nEnim est eos sit perspiciatis sapiente. Ut consectetur et fugit. Ipsam odit odio qui eligendi. Perspiciatis voluptas id sit beatae dicta consequatur accusamus et. Vero id rerum ea animi.', 'general', 'read', '64.121.41.143', 'Mozilla/5.0 (Windows NT 6.0; sl-SI; rv:1.9.1.20) Gecko/20250131 Firefox/36.0', '2025-09-05 21:49:58', '2025-09-08 12:44:47'),
(17, 'Clint Hills', 'victoria74@example.com', '+233244818401', 'Aut necessitatibus harum.', 'Accusantium distinctio quia nesciunt officiis esse quia excepturi. Est minima qui et. Fugiat qui ipsam in et consequatur praesentium ut est. Ducimus odio nisi officiis est.\n\nSuscipit enim perferendis modi corporis. Illo sunt assumenda beatae in. Quibusdam aliquam quia quibusdam alias voluptatibus. Perferendis vel aut omnis nesciunt.', 'support', 'read', '33.85.10.151', 'Mozilla/5.0 (Windows; U; Windows CE) AppleWebKit/534.13.7 (KHTML, like Gecko) Version/4.1 Safari/534.13.7', '2025-08-31 15:26:11', '2025-08-26 04:05:28'),
(18, 'Alexandrea O\'Hara', 'vmarquardt@example.com', '+233244511459', 'Necessitatibus nulla magnam necessitatibus.', 'Rerum veritatis nihil officiis. Animi asperiores inventore nihil molestias sed. Nesciunt cupiditate sit quia nihil officiis. Et aspernatur minima voluptatem distinctio adipisci perspiciatis.\n\nQui velit fugiat officia possimus. Ea et aut eligendi. Unde id excepturi ut et nihil nesciunt ad. Veritatis quae possimus voluptas qui odit.', 'partnership', 'replied', '112.254.175.30', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/4.0)', '2025-08-28 22:13:58', '2025-09-09 05:42:46'),
(19, 'Miguel Schaden', 'greyson75@example.com', '+233244634748', 'Totam soluta recusandae id.', 'Harum ipsa nostrum ratione nam aliquam dicta iusto. Harum ut aliquam praesentium praesentium commodi. Repudiandae sunt asperiores ea velit eligendi ut.\n\nCumque ea non temporibus in. Id similique ut aut consequuntur.', 'feedback', 'closed', '38.109.55.249', 'Opera/9.59 (Windows NT 4.0; nl-NL) Presto/2.12.345 Version/11.00', '2025-08-20 07:31:19', '2025-08-28 23:31:48'),
(20, 'Mercedes Gerhold', 'jwilkinson@example.com', '+233244270805', 'Aut eos.', 'Perspiciatis sit optio ullam est id sit. Hic dignissimos quas corporis et laborum quis officia. Aut velit alias ea est totam. Illum accusamus velit soluta molestias saepe itaque.\n\nEligendi velit voluptas tempora repudiandae et laudantium ratione. Tempore laudantium optio odit incidunt temporibus iure nam. Unde dolor laudantium optio culpa. Impedit est ut ratione maxime.', 'support', 'replied', '249.25.243.122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3 rv:2.0; sl-SI) AppleWebKit/533.4.3 (KHTML, like Gecko) Version/5.0.1 Safari/533.4.3', '2025-08-26 15:44:36', '2025-09-01 07:29:28'),
(21, 'Visitor', 'visitor@example.com', NULL, 'Hello', 'Just saying hi', 'general', 'new', '127.0.0.1', 'curl/8.7.1', '2025-09-19 07:58:33', '2025-09-19 07:58:33'),
(22, 'Test User', 'test@example.com', NULL, 'Test Subject', 'Test message', 'general', 'new', '127.0.0.1', 'curl/8.7.1', '2025-09-19 13:09:34', '2025-09-19 13:09:34'),
(23, 'Alhassan Hanan', 'hanan@gmail.com', NULL, 'viewing-request', 'This is the content of my message.', 'general', 'new', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 00:41:05', '2025-09-22 00:41:05'),
(24, 'Abdul Basit Yayaha', 'abdulbasit.yahaya51@gmail.com', NULL, 'Voluptatum possimus veritatis.', 'I want us to talk', 'general', 'new', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 14:54:39', '2025-09-22 14:54:39'),
(25, 'Test', 'test@example.com', NULL, 'Test', 'Test', 'general', 'new', '127.0.0.1', 'curl/8.7.1', '2026-01-11 15:22:33', '2026-01-11 15:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `email_verification_tokens`
--

CREATE TABLE `email_verification_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `inquiry_type` enum('viewing','information','offer','general') NOT NULL,
  `status` enum('new','contacted','scheduled','completed','cancelled') NOT NULL DEFAULT 'new',
  `preferred_date` date DEFAULT NULL,
  `preferred_time` time DEFAULT NULL,
  `agent_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `property_id`, `user_id`, `name`, `email`, `phone`, `message`, `inquiry_type`, `status`, `preferred_date`, `preferred_time`, `agent_notes`, `created_at`, `updated_at`) VALUES
(1, 25, 4, 'Sarah Johnson', 'sarah.johnson@email.com', '+233244123456', 'I am very interested in viewing this property. I would like to schedule a viewing for this weekend if possible. Please let me know the available time slots.', 'viewing', 'new', '2025-09-21', '10:00:00', 'Client seems very interested. Follow up within 24 hours.', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(2, 9, 4, 'Emmanuel Kofi', 'emmanuel.kofi@email.com', '+233244123457', 'Could you please provide more information about the property taxes, HOA fees, and any additional costs associated with this property?', 'information', 'contacted', NULL, NULL, 'Information requested sent via email. Waiting for response.', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(3, 24, 13, 'Adwoa Mensah', 'adwoa.mensah@email.com', '+233244123458', 'I would like to make an offer on this property. My offer is $2,200,000. I am pre-approved for financing and can close within 30 days.', 'offer', 'scheduled', '2025-09-19', '14:00:00', 'Serious buyer with pre-approval. Meeting scheduled to discuss offer details.', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(4, 17, 11, 'Kwaku Boateng', 'kwaku.boateng@email.com', '+233244123459', 'I am looking for properties in this area for investment purposes. Do you have any other similar properties available?', 'general', 'completed', NULL, NULL, 'Provided list of similar investment properties. Client is reviewing options.', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(5, 17, 10, 'Akosua Asante', 'akosua.asante@email.com', '+233244123460', 'I was interested in this property but have decided to look elsewhere. Thank you for your time.', 'general', 'cancelled', NULL, NULL, 'Client decided not to proceed. No further action needed.', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(6, 17, NULL, 'Wava Goodwin', 'hettinger.amos@example.net', '+233244989457', 'Voluptatem suscipit libero aut mollitia nemo sit. Sint qui nisi eligendi nihil. Laboriosam unde harum necessitatibus dolorem praesentium est.\n\nA nulla accusamus ad eveniet iste ut quia. Dolorem a quis libero reprehenderit blanditiis ipsam.', 'general', 'cancelled', NULL, NULL, NULL, '2025-09-12 11:58:30', '2025-08-31 06:35:22'),
(7, 10, 12, 'Shawna Grant', 'giovani.krajcik@example.com', '+233244706722', 'Velit quaerat ab soluta ducimus ut quia. Omnis repellat iusto sit non optio reprehenderit. Et ut consequatur quis. Assumenda nesciunt quis facere itaque.\n\nUllam qui atque voluptatem illo eius nulla. Quod similique voluptatibus excepturi. Laborum sapiente molestiae autem minima dolor. Dolorem odio ipsam cum nam eligendi excepturi sunt.', 'offer', 'new', '2025-09-19', NULL, NULL, '2025-08-29 05:53:41', '2025-09-16 04:03:46'),
(8, 3, NULL, 'Newell McCullough', 'pmclaughlin@example.com', '+233244524668', 'Quidem aspernatur doloremque eum omnis. Labore aut laborum assumenda adipisci ipsum accusantium. Neque eius rerum cupiditate et ut dolorem.\n\nQui iusto est est dolor in rerum. Enim exercitationem dolores cum sint aliquid et omnis quis. Mollitia quis deserunt aut magni asperiores ducimus.', 'offer', 'cancelled', '2025-10-14', '20:47:38', 'Quo commodi sunt ipsa sapiente voluptates qui.', '2025-08-20 10:29:33', '2025-09-18 11:19:56'),
(9, 13, NULL, 'Helene Breitenberg', 'ila27@example.org', '+233244210199', 'Eos in quidem doloribus omnis nam modi. Voluptatum et aliquam qui eaque cupiditate magni nemo. Debitis nobis atque omnis est. Perferendis voluptas enim totam quia. Velit eum dolorum magnam qui aliquid aliquam nihil voluptate.\n\nRerum ut in veniam quis maxime. Sit sit error veniam voluptatem voluptatem deleniti sequi rem. Hic quia eum et distinctio sed autem. Aliquam non ea quia recusandae.', 'general', 'new', '2025-09-23', '21:43:32', NULL, '2025-09-06 06:37:42', '2025-08-25 23:07:15'),
(10, 7, 10, 'Darrin Barton', 'qmuller@example.com', '+233244299543', 'Consequatur nobis recusandae ut consequatur. Optio rerum rerum eligendi ad eum eos quisquam. Tempore ab sunt aspernatur est repellendus libero praesentium. Id non illo impedit.\n\nVoluptatem veniam excepturi magnam qui rerum. Vitae repellat amet hic blanditiis dolores ut similique. Quis minima iure ex ut voluptatem dicta.', 'general', 'scheduled', '2025-10-16', '06:24:32', NULL, '2025-08-25 10:42:48', '2025-09-04 21:41:17'),
(11, 6, NULL, 'Branson Reynolds', 'macy92@example.net', '+233244056305', 'Sed mollitia dolores nihil corporis accusamus eos. Voluptas voluptatibus maiores sed nihil quo et libero. Distinctio est officia vel. Voluptas accusamus necessitatibus corrupti rerum ullam repellendus.\n\nQuam cum rerum sapiente enim expedita. Minima similique laborum rerum nostrum earum omnis. Aut nemo velit dolores neque. Eveniet qui sapiente sit accusamus aliquam reprehenderit qui assumenda.', 'general', 'cancelled', NULL, NULL, NULL, '2025-09-03 23:40:57', '2025-08-22 23:10:12'),
(12, 3, NULL, 'Mr. Kale Hand DVM', 'bstehr@example.com', '+233244069396', 'Ut asperiores ut est sed. Voluptatem voluptas assumenda minus voluptas velit alias consequatur. Dicta aperiam sed nesciunt nam maiores eius atque.\n\nPlaceat odit necessitatibus modi vel. Qui architecto sit omnis suscipit odit est. Culpa ipsum impedit quidem sit. Sunt neque blanditiis cumque molestiae.', 'viewing', 'completed', '2025-09-23', NULL, 'Dolores possimus quam aut veritatis.', '2025-08-27 15:47:08', '2025-09-11 04:11:52'),
(13, 10, 17, 'Sandrine McGlynn PhD', 'drath@example.net', '+233244165072', 'Atque sunt est nihil in. Consequuntur enim et dolore magni. Ut explicabo itaque voluptates quo atque. Dignissimos harum aliquid explicabo dolore rem sunt consequatur eligendi.\n\nConsequatur eligendi et magnam. Est sequi minima nihil quo et similique voluptatem. Porro id nemo voluptatum dolore cumque ea. Ab iure non hic corporis.', 'general', 'scheduled', NULL, NULL, 'Rem recusandae ut dolorum sint inventore corrupti.', '2025-08-31 15:11:57', '2025-09-13 11:43:22'),
(14, 20, NULL, 'Braeden Raynor', 'devonte.schulist@example.com', '+233244592233', 'Suscipit ut omnis maiores error. Est soluta nesciunt minus beatae magni vel. Quis et dolor ullam distinctio.\n\nLaudantium quaerat esse aut et. Corrupti non soluta optio aut. Enim molestiae tempore at atque. Quaerat nihil aut hic neque voluptas est distinctio.', 'viewing', 'cancelled', '2025-10-01', NULL, NULL, '2025-09-11 02:48:24', '2025-09-17 09:28:00'),
(15, 20, 4, 'Elsie Brekke MD', 'wgorczany@example.org', '+233244231473', 'In rerum qui vero reiciendis est omnis consectetur. Sunt voluptas illo exercitationem animi dicta commodi. Eaque incidunt id est nisi omnis. Et ipsam enim pariatur expedita.\n\nOmnis pariatur velit nihil et ea aut. Officia ea architecto velit dolor. Ducimus dolore facilis laborum nihil sunt consequatur.', 'offer', 'completed', NULL, '05:43:09', NULL, '2025-08-24 01:50:37', '2025-09-09 07:16:15'),
(16, 10, 13, 'Axel Funk', 'annie62@example.com', '+233244133959', 'Occaecati et enim amet in rerum voluptas voluptatem. Eum iusto molestiae velit voluptatibus. Autem esse delectus voluptatem. Doloremque alias aut aut error.\n\nVoluptatum dolore tenetur quia doloribus sapiente ullam. Ratione similique sint qui corporis natus perferendis atque ipsum. Deleniti et officia alias nihil quam quo optio. Corrupti qui sint distinctio perferendis atque omnis.', 'general', 'scheduled', '2025-10-05', NULL, NULL, '2025-08-24 22:23:08', '2025-08-26 07:14:49'),
(17, 25, 4, 'Gina Kunde DVM', 'mazie66@example.org', '+233244433590', 'Porro autem aut repudiandae qui qui velit. Nam labore est voluptatem doloribus sed occaecati eaque. Qui eos omnis corporis accusantium nobis aliquam.\n\nHarum quia est quisquam est occaecati consequuntur et. Asperiores voluptatum aliquam et velit magnam velit eius. Illo et voluptatibus ratione est est officiis cum.', 'offer', 'contacted', '2025-09-28', '14:30:36', NULL, '2025-09-07 10:37:03', '2025-08-21 19:29:26'),
(18, 15, 12, 'Donald Feest', 'marlee26@example.com', '+233244548262', 'Eum magnam nostrum ipsam expedita eveniet. Sint amet sunt exercitationem modi velit. Eum dolore perspiciatis accusantium quo illum.\n\nNon reiciendis dolor amet ipsam. Quam et facilis corrupti accusamus sed in. Aut quaerat eos quia eos voluptas libero.', 'general', 'completed', '2025-10-08', '12:46:08', 'Et inventore necessitatibus laudantium.', '2025-09-01 18:39:22', '2025-09-13 01:03:31'),
(19, 8, 19, 'Prof. Karolann Mertz', 'einar.toy@example.net', '+233244661437', 'Non nulla velit quam itaque voluptatum distinctio ut. Est perferendis quos inventore non. Eum mollitia beatae culpa.\n\nEt rerum iusto facilis qui dignissimos. Consequatur sint quia incidunt amet adipisci atque sint. Enim quaerat corporis incidunt soluta ut eligendi. Facere et aut omnis officia.', 'general', 'contacted', '2025-09-27', '04:26:52', 'Quia qui cumque velit itaque.', '2025-08-24 00:43:09', '2025-08-26 04:41:23'),
(20, 17, 17, 'Annabel Zulauf I', 'tstamm@example.org', '+233244908933', 'Quaerat qui sit aut facilis inventore sed. Et doloribus dignissimos voluptatibus rem similique nesciunt facere. Veritatis culpa dolores magnam ea et sint fugit.\n\nBlanditiis et cupiditate est nostrum voluptatibus. Eos nesciunt molestias incidunt facilis libero in omnis. Reiciendis at quasi quasi fugit id soluta. Non ducimus ratione voluptatem aut quidem corrupti est.', 'offer', 'new', NULL, '03:43:43', NULL, '2025-09-14 09:50:22', '2025-08-22 03:52:02'),
(21, 1, 11, 'Hollis Champlin', 'xdicki@example.org', '+233244695134', 'Quasi distinctio nisi et dolorem eligendi et sapiente est. Non enim veniam harum natus.\n\nHic magnam sint ratione sunt sed deserunt adipisci. Qui sed voluptates porro nesciunt.', 'viewing', 'new', '2025-10-05', '18:55:22', 'Inventore fugit eum qui corporis eius voluptatibus distinctio.', '2025-09-16 08:51:08', '2025-09-01 20:33:17'),
(22, 12, 19, 'Brody Sanford', 'cristian.green@example.com', '+233244064065', 'Aut delectus sint et enim consequatur soluta blanditiis. Animi eum ut in dolorem sint. In omnis esse delectus aspernatur eos aut. Nihil iusto sed ad eum accusamus.\n\nAut assumenda voluptatibus quia repudiandae. Incidunt voluptate minus voluptas est sunt.', 'information', 'new', NULL, NULL, 'Quas reprehenderit dolor accusantium.', '2025-08-25 21:53:51', '2025-09-10 07:55:29'),
(23, 14, NULL, 'Addie Schroeder', 'ubins@example.org', '+233244849762', 'Dolor et et dolores sit et. Nulla fuga adipisci nihil ab magni vero occaecati.\n\nExercitationem dolores consequatur vel. Animi quos possimus quam nihil eum magni molestiae nihil. Enim omnis et harum culpa et non magni. Doloremque est ut porro ipsum.', 'viewing', 'completed', '2025-10-09', NULL, 'Voluptas fugit corrupti ex voluptatum.', '2025-08-28 04:06:40', '2025-09-17 16:49:49'),
(24, 2, NULL, 'Christian Orn PhD', 'athena01@example.com', '+233244146702', 'Dolores aut ab hic sed. Nihil velit voluptatem odit ut ut. Possimus ratione quaerat ut optio. Quia rem eos veniam sint dolore vitae et.\n\nEt dolorem nulla enim deserunt et quidem enim consequatur. Aliquid fugit non natus et. Quia atque voluptatibus ipsa et molestiae. Corporis consectetur illum omnis molestiae.', 'information', 'contacted', '2025-09-19', '12:47:38', 'Voluptas quo quia neque repudiandae.', '2025-09-05 12:54:18', '2025-09-17 13:00:33'),
(25, 12, 10, 'Vladimir Stehr Sr.', 'penelope43@example.net', '+233244517496', 'Itaque ipsum dolor cumque. Fuga aut harum dicta dolore. Est officia delectus vero enim et minus sint. Ut id occaecati distinctio doloribus et. Nostrum consequatur et tempora facilis molestias animi.\n\nRepellendus quod voluptas quidem in accusamus. Dolorem repellat harum provident et quasi. Illum eveniet omnis dolorem omnis qui sunt non.', 'offer', 'completed', NULL, '19:26:57', NULL, '2025-09-02 11:40:47', '2025-09-12 02:29:36'),
(26, 18, NULL, 'Prof. Wilton Schumm', 'maya60@example.org', '+233244282605', 'Ipsa corrupti sapiente ut consequatur amet. Excepturi eos sit est possimus et vero est et. Maiores cupiditate iusto autem consequatur amet aut.\n\nEt ad accusantium labore culpa. Omnis sit dolore officia occaecati. Sit animi aut quis sed aliquam ipsam. Nihil nihil eum molestiae dolores. Commodi aut dicta sint saepe dicta voluptas soluta.', 'viewing', 'contacted', NULL, NULL, NULL, '2025-08-21 11:34:39', '2025-09-17 15:19:48'),
(27, 16, 18, 'Odell Wunsch', 'daisy.stehr@example.net', '+233244752915', 'Eveniet non eum assumenda eos fugit. Nisi molestiae necessitatibus amet alias. Aut fugiat quae officia. Non deleniti maxime id eos.\n\nMollitia voluptatibus itaque adipisci sed voluptatibus. Aut ducimus hic veritatis consequatur rerum. Molestiae et nihil eos velit sunt rerum.', 'offer', 'new', NULL, NULL, NULL, '2025-09-18 21:51:13', '2025-08-23 10:06:27'),
(28, 5, 18, 'Arthur Walsh', 'ubauch@example.org', '+233244603561', 'Sunt ut similique quis incidunt. Velit numquam natus quis consequatur. Tempore non eos molestiae doloremque reiciendis odit laudantium. Dolor amet ut dolorum tempore aliquid dolores repellat.\n\nQuis non velit aut ipsum. Nulla est non ullam et illo dolor omnis incidunt.', 'general', 'scheduled', NULL, '09:22:58', NULL, '2025-08-26 00:36:39', '2025-08-20 21:34:48'),
(29, 24, 19, 'Vinnie Kemmer', 'jeanette52@example.org', '+233244245462', 'Facere aut illo eligendi officia. Quae ea animi doloremque asperiores est repudiandae. Accusantium dolorem ad quia omnis amet.\n\nA rerum ut fugit maxime qui et eaque eum. Sequi sit vero eum rem.', 'offer', 'contacted', '2025-09-29', '09:45:12', NULL, '2025-09-09 13:48:05', '2025-08-27 03:46:32'),
(30, 25, 18, 'Nedra Kirlin', 'porter35@example.org', '+233244020370', 'Ipsa nihil illo molestiae esse minima. Omnis voluptas atque aut repudiandae corporis quibusdam sed. Nam ex quis et vitae. Temporibus culpa quis deserunt in. Error quam non dolorum.\n\nQuis explicabo autem non temporibus occaecati. Quisquam aliquam quisquam facilis ea unde. Natus quas cupiditate aut et modi id exercitationem doloremque.', 'information', 'new', '2025-10-05', '08:21:39', 'Dolorem voluptatem laudantium sint.', '2025-08-30 13:13:50', '2025-09-01 06:52:17'),
(31, 1, NULL, 'Kofi', 'kofi@example.com', NULL, 'Can I get more info?', 'information', 'new', NULL, NULL, NULL, '2025-09-19 07:58:49', '2025-09-19 07:58:49'),
(32, 24, NULL, 'Abdul Basit Yayaha', 'abdulbasit.yahaya51@gmail.com', NULL, 'This is my message to the agent', 'information', 'new', NULL, NULL, NULL, '2025-09-22 14:33:13', '2025-09-22 14:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '0001_01_01_000003_create_properties_table', 1),
(5, '0001_01_01_000005_create_property_amenities_table', 1),
(6, '0001_01_01_000006_create_favorites_table', 1),
(7, '0001_01_01_000007_create_property_views_table', 1),
(8, '0001_01_01_000008_create_inquiries_table', 1),
(9, '0001_01_01_000009_create_reviews_table', 1),
(10, '0001_01_01_000010_create_newsletter_subscriptions_table', 1),
(11, '0001_01_01_000011_create_contact_messages_table', 1),
(12, '0001_01_01_000013_create_personal_access_tokens_table', 1),
(13, '0001_01_01_000016_create_email_verification_tokens_table', 1),
(14, '0001_01_01_000017_create_activity_log_table', 1),
(15, '0001_01_01_000018_create_settings_table', 1),
(16, '0001_01_01_000019_create_notifications_table', 1),
(17, '0001_01_01_000021_create_property_comparisons_table', 1),
(18, '2025_07_15_223646_create_permission_tables', 1),
(19, '2025_09_18_210800_create_schedule_viewings_table', 1),
(20, '2025_09_18_210832_create_contact_agents_table', 1),
(21, '2025_09_19_003849_create_otps_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(4, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 26);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriptions`
--

CREATE TABLE `newsletter_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `preferences` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`preferences`)),
  `subscribed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `unsubscribed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter_subscriptions`
--

INSERT INTO `newsletter_subscriptions` (`id`, `email`, `first_name`, `last_name`, `is_active`, `preferences`, `subscribed_at`, `unsubscribed_at`) VALUES
(1, 'john.doe@email.com', 'John', 'Doe', 1, '\"{\\\"property_types\\\":[\\\"apartment\\\",\\\"house\\\"],\\\"price_range\\\":[\\\"100000\\\",\\\"500000\\\"],\\\"locations\\\":[\\\"Accra\\\",\\\"Kumasi\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-08-19 23:47:34', NULL),
(2, 'sarah.johnson@email.com', 'Sarah', 'Johnson', 1, '\"{\\\"property_types\\\":[\\\"villa\\\",\\\"house\\\"],\\\"price_range\\\":[\\\"500000\\\",\\\"2000000\\\"],\\\"locations\\\":[\\\"Accra\\\"],\\\"frequency\\\":\\\"daily\\\"}\"', '2025-09-03 23:47:34', NULL),
(3, 'michael.smith@email.com', 'Michael', 'Smith', 0, '\"{\\\"property_types\\\":[\\\"apartment\\\"],\\\"price_range\\\":[\\\"50000\\\",\\\"200000\\\"],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Tamale\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-07-20 23:47:34', '2025-09-08 23:47:34'),
(4, 'grace.mensah@email.com', 'Grace', 'Mensah', 1, '\"{\\\"property_types\\\":[\\\"commercial\\\",\\\"office\\\"],\\\"price_range\\\":[\\\"10000\\\",\\\"50000\\\"],\\\"locations\\\":[\\\"Accra\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-08-04 23:47:34', NULL),
(5, 'kwame.asante@email.com', 'Kwame', 'Asante', 1, '\"{\\\"property_types\\\":[\\\"land\\\"],\\\"price_range\\\":[\\\"50000\\\",\\\"500000\\\"],\\\"locations\\\":[\\\"Greater Accra\\\",\\\"Ashanti\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-08-29 23:47:34', NULL),
(6, 'twisozk@example.com', 'Shea', 'Boehm', 1, '\"{\\\"property_types\\\":[\\\"commercial\\\",\\\"office\\\",\\\"townhouse\\\"],\\\"price_range\\\":[46619,450950],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Tamale\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-07-17 21:39:12', NULL),
(7, 'ashley44@example.com', 'Brenda', 'Abshire', 1, '\"{\\\"property_types\\\":[\\\"commercial\\\",\\\"land\\\",\\\"office\\\"],\\\"price_range\\\":[39191,1028466],\\\"locations\\\":[\\\"Takoradi\\\",\\\"Tema\\\",\\\"Kumasi\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-09-05 08:56:57', NULL),
(8, 'odurgan@example.com', 'Kade', 'Wiegand', 1, '\"{\\\"property_types\\\":[\\\"house\\\"],\\\"price_range\\\":[28028,1275675],\\\"locations\\\":[\\\"Accra\\\",\\\"Cape Coast\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-07-30 19:09:30', NULL),
(9, 'estevan01@example.net', 'Jalen', 'Carroll', 1, '\"{\\\"property_types\\\":[\\\"townhouse\\\",\\\"commercial\\\",\\\"apartment\\\"],\\\"price_range\\\":[87027,1261463],\\\"locations\\\":[\\\"Tamale\\\",\\\"Accra\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-08-23 19:36:26', NULL),
(10, 'leone.weissnat@example.com', 'Alexis', 'Hegmann', 1, '\"{\\\"property_types\\\":[\\\"land\\\"],\\\"price_range\\\":[30422,1013064],\\\"locations\\\":[\\\"Accra\\\"],\\\"frequency\\\":\\\"daily\\\"}\"', '2025-07-18 09:01:23', NULL),
(11, 'rowe.ronny@example.net', 'Sherwood', 'Kilback', 1, '\"{\\\"property_types\\\":[\\\"townhouse\\\",\\\"house\\\"],\\\"price_range\\\":[96448,1677497],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Takoradi\\\",\\\"Tamale\\\"],\\\"frequency\\\":\\\"daily\\\"}\"', '2025-08-25 16:20:01', NULL),
(12, 'klein.london@example.com', 'Alexandra', 'Veum', 1, '\"{\\\"property_types\\\":[\\\"apartment\\\",\\\"office\\\"],\\\"price_range\\\":[12659,991982],\\\"locations\\\":[\\\"Tema\\\",\\\"Tamale\\\",\\\"Takoradi\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-07-20 00:10:44', NULL),
(13, 'miller.name@example.org', 'Hayley', 'Conroy', 1, '\"{\\\"property_types\\\":[\\\"townhouse\\\",\\\"land\\\"],\\\"price_range\\\":[17892,1056649],\\\"locations\\\":[\\\"Tema\\\",\\\"Cape Coast\\\"],\\\"frequency\\\":\\\"daily\\\"}\"', '2025-09-12 22:52:28', NULL),
(14, 'edietrich@example.org', 'Corrine', 'Koepp', 0, '\"{\\\"property_types\\\":[\\\"land\\\",\\\"commercial\\\",\\\"office\\\"],\\\"price_range\\\":[57170,1517906],\\\"locations\\\":[\\\"Tamale\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-07-08 19:28:29', '2025-09-05 18:19:57'),
(15, 'lewis.mitchell@example.net', 'Golden', 'Kutch', 1, '\"{\\\"property_types\\\":[\\\"commercial\\\"],\\\"price_range\\\":[27573,409085],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Cape Coast\\\",\\\"Accra\\\"],\\\"frequency\\\":\\\"daily\\\"}\"', '2025-08-26 01:34:14', NULL),
(16, 'kaelyn45@example.com', 'Angeline', 'Lubowitz', 1, '\"{\\\"property_types\\\":[\\\"house\\\"],\\\"price_range\\\":[62923,1590203],\\\"locations\\\":[\\\"Tamale\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-08-19 14:12:48', NULL),
(17, 'kristoffer.bednar@example.com', 'Raegan', 'Considine', 1, '\"{\\\"property_types\\\":[\\\"commercial\\\"],\\\"price_range\\\":[67461,468447],\\\"locations\\\":[\\\"Takoradi\\\",\\\"Cape Coast\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-09-18 15:44:39', NULL),
(18, 'flossie01@example.net', 'Sammie', 'Kuhic', 1, '\"{\\\"property_types\\\":[\\\"land\\\",\\\"office\\\",\\\"apartment\\\"],\\\"price_range\\\":[63534,1874601],\\\"locations\\\":[\\\"Kumasi\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-07-01 23:50:22', NULL),
(19, 'dooley.viola@example.org', 'Arvilla', 'Nitzsche', 0, '\"{\\\"property_types\\\":[\\\"office\\\"],\\\"price_range\\\":[34360,1242060],\\\"locations\\\":[\\\"Cape Coast\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-08-13 06:37:40', '2025-09-12 18:57:43'),
(20, 'green.mellie@example.com', 'Kayden', 'Ankunding', 1, '\"{\\\"property_types\\\":[\\\"house\\\",\\\"office\\\",\\\"land\\\"],\\\"price_range\\\":[73995,1657828],\\\"locations\\\":[\\\"Kumasi\\\",\\\"Tamale\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"daily\\\"}\"', '2025-08-23 18:45:54', NULL),
(21, 'simone35@example.net', 'Eliezer', 'Koepp', 1, '\"{\\\"property_types\\\":[\\\"apartment\\\"],\\\"price_range\\\":[79606,1656221],\\\"locations\\\":[\\\"Tamale\\\"],\\\"frequency\\\":\\\"daily\\\"}\"', '2025-07-28 14:36:32', NULL),
(22, 'gregoria27@example.net', 'Melany', 'Strosin', 1, '\"{\\\"property_types\\\":[\\\"house\\\"],\\\"price_range\\\":[87655,1224794],\\\"locations\\\":[\\\"Cape Coast\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-08-24 08:45:47', NULL),
(23, 'sallie.haag@example.com', 'Leone', 'Hauck', 0, '\"{\\\"property_types\\\":[\\\"house\\\",\\\"commercial\\\",\\\"apartment\\\"],\\\"price_range\\\":[68908,1613462],\\\"locations\\\":[\\\"Cape Coast\\\",\\\"Tema\\\"],\\\"frequency\\\":\\\"daily\\\"}\"', '2025-09-12 11:26:05', '2025-09-11 18:55:29'),
(24, 'gudrun62@example.com', 'Orie', 'Schinner', 1, '\"{\\\"property_types\\\":[\\\"villa\\\"],\\\"price_range\\\":[67353,1711698],\\\"locations\\\":[\\\"Cape Coast\\\",\\\"Tema\\\",\\\"Accra\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-07-24 15:41:08', NULL),
(25, 'qwunsch@example.com', 'Tyrese', 'Abshire', 1, '\"{\\\"property_types\\\":[\\\"townhouse\\\",\\\"house\\\"],\\\"price_range\\\":[77815,1256707],\\\"locations\\\":[\\\"Tema\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-06-29 13:38:09', NULL),
(26, 'kaia01@example.net', 'Amara', 'Koelpin', 0, '\"{\\\"property_types\\\":[\\\"apartment\\\",\\\"land\\\"],\\\"price_range\\\":[39081,628564],\\\"locations\\\":[\\\"Takoradi\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-07-02 23:49:24', '2025-09-09 03:14:35'),
(27, 'welch.margarett@example.org', 'Gwen', 'Blick', 1, '\"{\\\"property_types\\\":[\\\"land\\\"],\\\"price_range\\\":[23275,744364],\\\"locations\\\":[\\\"Takoradi\\\",\\\"Cape Coast\\\",\\\"Accra\\\"],\\\"frequency\\\":\\\"weekly\\\"}\"', '2025-08-03 20:14:22', NULL),
(28, 'koepp.consuelo@example.net', 'Gretchen', 'Lynch', 1, '\"{\\\"property_types\\\":[\\\"office\\\",\\\"apartment\\\"],\\\"price_range\\\":[87236,471725],\\\"locations\\\":[\\\"Kumasi\\\"],\\\"frequency\\\":\\\"daily\\\"}\"', '2025-08-29 21:07:30', NULL),
(29, 'cbartoletti@example.com', 'Aleen', 'Mertz', 1, '\"{\\\"property_types\\\":[\\\"land\\\",\\\"apartment\\\",\\\"villa\\\"],\\\"price_range\\\":[96405,1399480],\\\"locations\\\":[\\\"Accra\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-08-07 11:15:14', NULL),
(30, 'maryjane05@example.com', 'Austin', 'Rutherford', 0, '\"{\\\"property_types\\\":[\\\"commercial\\\",\\\"villa\\\",\\\"apartment\\\"],\\\"price_range\\\":[51471,392995],\\\"locations\\\":[\\\"Accra\\\",\\\"Kumasi\\\"],\\\"frequency\\\":\\\"monthly\\\"}\"', '2025-08-20 14:46:05', '2025-08-24 16:45:52'),
(31, 'test@example.com', 'John', 'Doe', 0, '{\"frequency\":\"monthly\",\"locations\":[\"Accra\"],\"price_range\":[500000,2000000]}', '2025-09-19 07:36:37', '2025-09-19 07:38:07'),
(32, 'abytrone@gmail.com', NULL, NULL, 1, '{\"frequency\":\"weekly\",\"property_types\":[\"apartment\",\"house\",\"villa\"]}', '2025-09-19 11:23:40', NULL),
(33, 'abdulbasit.yahaya51@gmail.com', NULL, NULL, 0, '{\"frequency\":\"weekly\",\"property_types\":[\"apartment\",\"house\",\"villa\"]}', '2025-09-19 11:40:52', '2025-09-19 11:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` char(36) NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `type` enum('email_verification','password_reset') NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT 0,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `email`, `otp_code`, `type`, `is_used`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'john@example.com', '903028', 'email_verification', 1, '2025-09-19 00:44:26', '2025-09-19 00:43:34', '2025-09-19 00:44:26'),
(2, 'test@example.com', '247714', 'email_verification', 1, '2025-09-19 17:53:35', '2025-09-19 17:33:09', '2025-09-19 17:53:35'),
(3, 'abytrone@gmail.com', '983804', 'email_verification', 0, '2025-09-19 17:48:18', '2025-09-19 17:38:18', '2025-09-19 17:38:18'),
(4, 'test@example.com', '383191', 'email_verification', 0, '2025-09-19 18:03:35', '2025-09-19 17:53:35', '2025-09-19 17:53:35'),
(5, 'abdulbasit.yahaya51@gmail.com', '704851', 'email_verification', 1, '2025-09-19 23:14:32', '2025-09-19 23:13:59', '2025-09-19 23:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_any_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(2, 'view_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(3, 'create_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(4, 'update_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(5, 'delete_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(6, 'delete_any_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(7, 'force_delete_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(8, 'force_delete_any_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(9, 'restore_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(10, 'restore_any_role', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(11, 'view_any_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(12, 'view_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(13, 'create_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(14, 'update_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(15, 'delete_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(16, 'delete_any_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(17, 'force_delete_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(18, 'force_delete_any_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(19, 'restore_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(20, 'restore_any_user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(21, 'view_any_activity::log', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(22, 'view_activity::log', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(23, 'view_any_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(24, 'view_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(25, 'create_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(26, 'update_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(27, 'delete_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(28, 'delete_any_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(29, 'force_delete_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(30, 'force_delete_any_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(31, 'restore_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(32, 'restore_any_property', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(33, 'view_any_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(34, 'view_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(35, 'create_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(36, 'update_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(37, 'delete_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(38, 'delete_any_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(39, 'force_delete_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(40, 'force_delete_any_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(41, 'restore_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(42, 'restore_any_property::amenity', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(43, 'view_any_property::view', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(44, 'view_property::view', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(45, 'view_any_property::comparison', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(46, 'view_property::comparison', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(47, 'view_any_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(48, 'view_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(49, 'create_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(50, 'update_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(51, 'delete_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(52, 'delete_any_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(53, 'force_delete_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(54, 'force_delete_any_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(55, 'restore_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(56, 'restore_any_contact::message', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(57, 'view_any_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(58, 'view_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(59, 'create_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(60, 'update_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(61, 'delete_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(62, 'delete_any_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(63, 'force_delete_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(64, 'force_delete_any_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(65, 'restore_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(66, 'restore_any_inquiry', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(67, 'view_any_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(68, 'view_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(69, 'create_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(70, 'update_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(71, 'delete_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(72, 'delete_any_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(73, 'force_delete_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(74, 'force_delete_any_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(75, 'restore_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(76, 'restore_any_review', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(77, 'view_any_schedule::viewing', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(78, 'view_schedule::viewing', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(79, 'view_any_contact::agent', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(80, 'view_contact::agent', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(81, 'view_any_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(82, 'view_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(83, 'create_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(84, 'update_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(85, 'delete_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(86, 'delete_any_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(87, 'force_delete_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(88, 'force_delete_any_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(89, 'restore_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(90, 'restore_any_newsletter::subscription', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(91, 'create_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(92, 'update_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(93, 'restore_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(94, 'restore_any_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(95, 'replicate_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(96, 'reorder_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(97, 'delete_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(98, 'delete_any_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(99, 'force_delete_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(100, 'force_delete_any_activity::log', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(101, 'create_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(102, 'update_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(103, 'restore_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(104, 'restore_any_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(105, 'replicate_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(106, 'reorder_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(107, 'delete_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(108, 'delete_any_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(109, 'force_delete_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(110, 'force_delete_any_contact::agent', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(111, 'replicate_contact::message', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(112, 'reorder_contact::message', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(113, 'replicate_inquiry', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(114, 'reorder_inquiry', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(115, 'replicate_newsletter::subscription', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(116, 'reorder_newsletter::subscription', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(117, 'replicate_property', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(118, 'reorder_property', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(119, 'replicate_property::amenity', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(120, 'reorder_property::amenity', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(121, 'create_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(122, 'update_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(123, 'restore_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(124, 'restore_any_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(125, 'replicate_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(126, 'reorder_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(127, 'delete_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(128, 'delete_any_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(129, 'force_delete_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(130, 'force_delete_any_property::comparison', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(131, 'create_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(132, 'update_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(133, 'restore_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(134, 'restore_any_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(135, 'replicate_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(136, 'reorder_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(137, 'delete_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(138, 'delete_any_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(139, 'force_delete_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(140, 'force_delete_any_property::view', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(141, 'replicate_review', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(142, 'reorder_review', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(143, 'create_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(144, 'update_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(145, 'restore_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(146, 'restore_any_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(147, 'replicate_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(148, 'reorder_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(149, 'delete_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(150, 'delete_any_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(151, 'force_delete_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(152, 'force_delete_any_schedule::viewing', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(153, 'replicate_user', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35'),
(154, 'reorder_user', 'web', '2025-09-18 23:48:35', '2025-09-18 23:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 22, 'auth_token', '5267ead86e5f2f53410a192003a8dbeecd49db73d881dac74749d0e7ac11c437', '[\"*\"]', '2025-09-19 00:44:02', NULL, '2025-09-19 00:43:54', '2025-09-19 00:44:02'),
(2, 'App\\Models\\User', 3, 'auth_token', 'b40616718aecf25c35b00dff72b37a1cc57ac226282d9aa3bf559f45161f59a4', '[\"*\"]', '2025-09-19 07:59:07', NULL, '2025-09-19 07:37:18', '2025-09-19 07:59:07'),
(3, 'App\\Models\\User', 3, 'auth_token', '19f5b093d86a2b5fe39e3a56432acc081f001f74f04af70f3f79717a741934ff', '[\"*\"]', NULL, NULL, '2025-09-19 08:31:56', '2025-09-19 08:31:56'),
(4, 'App\\Models\\User', 3, 'auth_token', 'ec2362ef42ee32e2dc26175e5d06f8cb6e1abc1ae9492e063e0f705465f8e12c', '[\"*\"]', '2025-09-19 08:33:30', NULL, '2025-09-19 08:33:29', '2025-09-19 08:33:30'),
(5, 'App\\Models\\User', 2, 'auth_token', '05aeea8864172030b6014b9901529e69e33214072325b19bc2839bec6a52060f', '[\"*\"]', '2025-09-19 15:47:55', NULL, '2025-09-19 15:41:16', '2025-09-19 15:47:55'),
(6, 'App\\Models\\User', 23, 'auth_token', 'f147cc80fe07301c91c8b8e4e7e9e619be5e0a6a9b46ea619081f2a6e522fac6', '[\"*\"]', NULL, NULL, '2025-09-19 17:33:26', '2025-09-19 17:33:26'),
(7, 'App\\Models\\User', 26, 'auth_token', '8465e7760a3b62b1fc099485784de38aa03662f19a66c7d7c663a119b1084887', '[\"*\"]', '2025-09-19 23:38:21', NULL, '2025-09-19 23:15:57', '2025-09-19 23:38:21'),
(8, 'App\\Models\\User', 26, 'auth_token', 'd394dfe15a9221ab1f713b7e0f203163028b592fb2b7457e572ec145896d43dd', '[\"*\"]', '2025-09-19 23:45:09', NULL, '2025-09-19 23:40:09', '2025-09-19 23:45:09'),
(10, 'App\\Models\\User', 26, 'auth_token', '075bca9755c7c0f51b87e76eff9abb44edd23aad33d175ca69fb502020d0d104', '[\"*\"]', '2025-09-19 23:52:52', NULL, '2025-09-19 23:52:00', '2025-09-19 23:52:52'),
(11, 'App\\Models\\User', 26, 'auth_token', '1b08013e87bc23923aeabda7e4a8837f9cfddfa5ddc2543ce8cc5444e53747c0', '[\"*\"]', '2025-09-19 23:55:36', NULL, '2025-09-19 23:55:36', '2025-09-19 23:55:36'),
(13, 'App\\Models\\User', 26, 'auth_token', 'a2d7b224006cd5510e7b1eb77c2fb5c68fe971fcf7c9e2a2b729da172b48b674', '[\"*\"]', '2025-09-20 00:24:46', NULL, '2025-09-20 00:24:46', '2025-09-20 00:24:46'),
(14, 'App\\Models\\User', 26, 'auth_token', 'b1bb6aff67b263647e0acad0c59923cbf18624059634ad00e29b995544749b0c', '[\"*\"]', '2025-09-20 00:26:51', NULL, '2025-09-20 00:26:51', '2025-09-20 00:26:51'),
(15, 'App\\Models\\User', 26, 'auth_token', 'd1dd822fd1af47bc47c7b3d52315cbc22f2a9c1a9800b8eb2c14fa1532b9108d', '[\"*\"]', '2025-09-22 14:53:27', NULL, '2025-09-22 00:59:22', '2025-09-22 14:53:27'),
(17, 'App\\Models\\User', 26, 'auth_token', '8f010fbdba97f4bf8ce398ec29916212cde6e8baf23467db2b0c8bca9c57d33a', '[\"*\"]', NULL, NULL, '2026-01-09 18:04:15', '2026-01-09 18:04:15'),
(18, 'App\\Models\\User', 26, 'auth_token', '0f90ce6118264abd305a2cf6149819249ef825faec7d3d55214c610d1e227c8e', '[\"*\"]', '2026-01-10 20:46:44', NULL, '2026-01-09 22:55:31', '2026-01-10 20:46:44'),
(19, 'App\\Models\\User', 26, 'auth_token', 'a607345bc55c239fd25ee40c0de7557ca456334d3f3293b3b64fbe5c0b09da6c', '[\"*\"]', '2026-01-10 21:05:15', NULL, '2026-01-09 22:56:15', '2026-01-10 21:05:15'),
(20, 'App\\Models\\User', 26, 'auth_token', '34563bf70bd3725cc8213a27dba549b6d35cc2b27381a8f64a7a4dd42a3dc024', '[\"*\"]', '2026-01-11 21:29:45', NULL, '2026-01-11 15:44:28', '2026-01-11 21:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `detailed_description` longtext DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` enum('sale','rent') NOT NULL,
  `property_type` enum('apartment','house','villa','townhouse','office','land','commercial') NOT NULL,
  `bedrooms` int(11) NOT NULL DEFAULT 0,
  `bathrooms` int(11) NOT NULL DEFAULT 0,
  `area_sqm` decimal(8,2) DEFAULT NULL,
  `area_sqft` decimal(8,2) DEFAULT NULL,
  `year_built` int(11) DEFAULT NULL,
  `floors` int(11) NOT NULL DEFAULT 1,
  `parking_spaces` int(11) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('available','sold','rented','pending','off_market') NOT NULL DEFAULT 'available',
  `views_count` int(11) NOT NULL DEFAULT 0,
  `favorites_count` int(11) NOT NULL DEFAULT 0,
  `rating` decimal(3,2) NOT NULL DEFAULT 0.00,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `title`, `description`, `image`, `images`, `detailed_description`, `location`, `city`, `region`, `latitude`, `longitude`, `price`, `price_type`, `property_type`, `bedrooms`, `bathrooms`, `area_sqm`, `area_sqft`, `year_built`, `floors`, `parking_spaces`, `is_featured`, `status`, `views_count`, `favorites_count`, `rating`, `owner_id`, `agent_id`, `created_at`, `updated_at`) VALUES
(1, 'Luxury Penthouse in Accra', 'Stunning penthouse with panoramic city views', 'properties/luxury-penthouse-accra.jpg', '\"[\\\"properties\\\\\\/luxury-penthouse-accra-1.jpg\\\",\\\"properties\\\\\\/luxury-penthouse-accra-2.jpg\\\",\\\"properties\\\\\\/luxury-penthouse-accra-3.jpg\\\",\\\"properties\\\\\\/luxury-penthouse-accra-4.jpg\\\"]\"', 'This magnificent penthouse offers breathtaking panoramic views of Accra city. Features include floor-to-ceiling windows, premium finishes, and a private rooftop terrace. Perfect for those seeking luxury living in the heart of the city.', 'Airport Residential Area, Accra', 'Accra', 'Greater Accra', 5.60370000, -0.18700000, 2500000.00, 'sale', 'apartment', 4, 3, 250.00, 2690.00, 2020, 1, 2, 1, 'available', 152, 25, 4.80, 7, 9, '2025-09-18 23:47:33', '2025-09-19 15:31:32'),
(2, 'Modern Villa in East Legon', 'Contemporary villa with smart home features', 'properties/modern-villa-east-legon.jpg', '\"[\\\"properties\\\\\\/modern-villa-east-legon-1.jpg\\\",\\\"properties\\\\\\/modern-villa-east-legon-2.jpg\\\",\\\"properties\\\\\\/modern-villa-east-legon-3.jpg\\\"]\"', 'This modern villa combines contemporary design with smart home technology. Features include automated lighting, security systems, and energy-efficient appliances. The open-plan living area flows seamlessly to the outdoor entertainment space.', 'East Legon, Accra', 'Accra', 'Greater Accra', 5.65000000, -0.15000000, 1800000.00, 'sale', 'villa', 5, 4, 400.00, 4305.00, 2019, 2, 3, 1, 'available', 201, 35, 4.90, 8, 3, '2025-09-18 23:47:33', '2025-09-22 00:51:28'),
(3, 'Beachfront House in Tema', 'Oceanfront property with private beach access', 'properties/beachfront-house-tema.jpg', '\"[\\\"properties\\\\\\/beachfront-house-tema-1.jpg\\\",\\\"properties\\\\\\/beachfront-house-tema-2.jpg\\\",\\\"properties\\\\\\/beachfront-house-tema-3.jpg\\\",\\\"properties\\\\\\/beachfront-house-tema-4.jpg\\\",\\\"properties\\\\\\/beachfront-house-tema-5.jpg\\\"]\"', 'Wake up to the sound of waves in this stunning beachfront property. Features include direct beach access, panoramic ocean views, and a spacious deck perfect for entertaining. The property includes a private dock for boats.', 'Tema New Town, Tema', 'Tema', 'Greater Accra', 5.61670000, -0.01670000, 3200000.00, 'sale', 'house', 6, 5, 500.00, 5382.00, 2021, 2, 4, 1, 'available', 300, 50, 4.70, 3, 8, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(4, 'Cozy Apartment in Osu', 'Furnished apartment in vibrant Osu district', 'properties/cozy-apartment-osu.jpg', '\"[\\\"properties\\\\\\/cozy-apartment-osu-1.jpg\\\",\\\"properties\\\\\\/cozy-apartment-osu-2.jpg\\\"]\"', 'Perfect for young professionals, this fully furnished apartment is located in the heart of Osu. Walking distance to restaurants, bars, and shopping centers. Features modern amenities and 24/7 security.', 'Osu, Accra', 'Accra', 'Greater Accra', 5.55000000, -0.20000000, 2500.00, 'rent', 'apartment', 2, 2, 85.00, 915.00, 2018, 1, 1, 0, 'available', 75, 12, 4.30, 7, 8, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(5, 'Commercial Office Space in Labadi', 'Modern office space with conference facilities', 'properties/commercial-office-labadi.jpg', '\"[\\\"properties\\\\\\/commercial-office-labadi-1.jpg\\\",\\\"properties\\\\\\/commercial-office-labadi-2.jpg\\\",\\\"properties\\\\\\/commercial-office-labadi-3.jpg\\\"]\"', 'Ideal for businesses looking for premium office space. Features include modern conference rooms, high-speed internet, and 24/7 security. Located in the business district with easy access to major roads.', 'Labadi, Accra', 'Accra', 'Greater Accra', 5.55000000, -0.15000000, 15000.00, 'rent', 'office', 0, 3, 300.00, 3229.00, 2020, 1, 8, 0, 'available', 45, 8, 4.50, 3, 6, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(6, 'Sunt earum ratione recusandae enim eligendi.', 'Enim impedit velit corporis eum. Numquam quod accusantium quia similique dolor est et. Dolor et quidem esse magni voluptatem harum labore.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Inventore officiis velit vel voluptas sit non. Nostrum corporis velit iste eum quia nobis. Molestiae et et expedita voluptatum ratione voluptas dolore.\n\nAutem libero quod velit voluptate beatae. Sit consectetur et vel enim aperiam animi. Tempora quis aperiam ab vel quia.\n\nAutem necessitatibus tempora voluptatem explicabo voluptas nam. Vero occaecati sunt voluptate rerum esse. Cupiditate nihil quaerat optio voluptatem voluptatem unde. Aut sint quidem consequatur.', '6644 Paucek Turnpike', 'Takoradi', 'Greater Accra', 8.77814000, 0.14555900, 970795.91, 'rent', 'villa', 7, 1, 239.47, 6387.58, 2005, 3, 3, 0, 'off_market', 18, 55, 4.50, 7, 3, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(7, 'Voluptatem est sed.', 'A ullam nihil et dolorem et explicabo ut. Dolor iste aut repudiandae suscipit reprehenderit.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Mollitia omnis consequatur corrupti tempore consequatur doloribus. Nisi omnis magni soluta sit. Dolores est omnis velit et officia numquam. Numquam et voluptatem amet dicta omnis impedit dolores dolores.\n\nModi est occaecati nam porro. Nesciunt illum blanditiis reiciendis vel ut.\n\nDolor quia adipisci dolor atque dignissimos in. Nobis ut nobis nulla fugit. Temporibus dolores fuga omnis eos optio labore. Laboriosam quis ut et ad recusandae.', '944 Purdy Parkway Suite 389', 'Tamale', 'Northern', 10.73855900, -1.88473800, 2653270.90, 'rent', 'commercial', 5, 3, 599.80, 5704.69, 2007, 2, 1, 0, 'sold', 220, 49, 4.60, 9, 6, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(8, 'Enim eligendi aspernatur nostrum ullam distinctio.', 'Minus quia porro officia occaecati aspernatur. Optio odit officia beatae sint. Rerum architecto omnis fugit commodi dolores.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Ut odio et repellendus quia dolor sit. Autem eligendi quam debitis autem quae quam tempora. Ducimus id qui sed.\n\nAutem eius iste in temporibus similique incidunt quisquam. Recusandae aut in expedita perspiciatis autem consequuntur consectetur. Nisi quod odio dicta enim et adipisci quibusdam.\n\nIste dolores ab necessitatibus corporis qui. Quia optio possimus fuga repudiandae. Animi laboriosam est omnis quo. Voluptatum impedit velit ea et ratione aut distinctio.', '9805 Schiller Groves', 'Tamale', 'Northern', 6.39775600, -2.11020700, 2383527.62, 'rent', 'house', 7, 1, 518.52, 6724.33, 1991, 2, 5, 0, 'available', 453, 69, 3.80, 9, 8, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(9, 'Nihil rerum quia ab.', 'Omnis cum molestias eos asperiores sit. Aut id blanditiis ducimus ut aliquid animi itaque. Et non labore sint quia corporis explicabo.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'In sapiente nulla quibusdam ut aut. Quaerat eligendi doloribus facere et magnam nihil qui. Fuga labore eos voluptatum debitis dolorem doloremque.\n\nOmnis quo modi laudantium dolorem quia fuga. Eum dolor quibusdam deleniti laudantium ea quibusdam sapiente ea. Aspernatur officiis unde est id doloribus consequatur excepturi.\n\nOmnis nisi reprehenderit hic ullam eius qui. Molestias optio reprehenderit voluptatibus id illum velit veritatis non. Id quam tenetur aut eaque. Odio consequuntur laudantium accusantium deleniti.', '529 Terence Burg', 'Cape Coast', 'Western', 5.42531300, -2.52502700, 2660753.49, 'sale', 'townhouse', 5, 4, 588.57, 4843.13, 1991, 3, 5, 0, 'available', 22, 55, 3.30, 7, 9, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(10, 'Occaecati libero aspernatur voluptatem voluptatem.', 'Eum id a aut. Quibusdam voluptatem totam quia dolor. Aut voluptas non tempora.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Sunt eius ut ut sint earum excepturi. Dolores ducimus autem dolores illum et dolor. Quos enim et quia ad et sit.\n\nDolore neque qui magni aliquam non ipsa sapiente. Placeat perferendis cupiditate et voluptatum sunt fuga quis repellendus. Quasi qui accusantium provident ut dolorem consequatur.\n\nSapiente dolor eum reprehenderit rerum reprehenderit laboriosam delectus. Consequatur voluptatem nihil tempora. Error doloribus qui vitae maiores sit. Quidem autem sed doloribus architecto deserunt.', '3596 Mireille Junctions Suite 600', 'Accra', 'Central', 9.62315700, -1.46822700, 1254940.38, 'sale', 'commercial', 0, 5, 101.21, 4128.06, 2010, 4, 4, 1, 'off_market', 21, 53, 3.10, 7, 8, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(11, 'Tenetur est facere vitae.', 'Id necessitatibus ea voluptatem consequatur hic laudantium et. Delectus et aut error autem numquam neque consequatur porro. Beatae aut rerum optio expedita aut saepe.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Hic voluptas quia dolorem esse. Dolorem eligendi facilis sunt. Rerum nihil est quis aut reprehenderit totam.\n\nNostrum aut ipsam quia aut voluptatum labore nihil. Corrupti minima fuga aut et quia sequi ducimus. Libero rerum ea ut error occaecati doloribus quo. Non fugit eos sunt error veritatis mollitia quaerat.\n\nCum vero consequatur pariatur fugit. Doloremque veritatis soluta accusamus quos ut sunt quis. Eaque facilis voluptatem quis numquam vel enim.', '83665 Verla Corner', 'Cape Coast', 'Western', 9.75625500, -2.88100800, 1302220.20, 'rent', 'land', 8, 5, 184.47, 2569.01, 2023, 3, 4, 0, 'pending', 280, 39, 3.50, 6, 7, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(12, 'Accusamus nam qui.', 'Placeat delectus repellendus maxime natus velit voluptates. Quam maiores natus alias ut nobis sit.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Quaerat quia consectetur et voluptatem. Voluptates dignissimos sit voluptatem tenetur praesentium eum quibusdam quis.\n\nLabore explicabo voluptas libero quos. Blanditiis sint cumque illum vitae. Assumenda accusantium in consequatur dolores. Dolores voluptatum deleniti ducimus rerum. Magni similique qui ut voluptatum.\n\nQuod reiciendis doloremque aut et similique rerum dolorum. Distinctio placeat quis illum. Omnis nisi libero eius nemo quisquam vel. Dolor dicta eius aut ducimus repudiandae.', '1198 Lucas Glen', 'Tamale', 'Northern', 9.72539100, -1.93941700, 589555.90, 'rent', 'villa', 4, 1, 379.00, 8410.81, 1995, 4, 6, 0, 'off_market', 110, 67, 4.20, 3, 7, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(13, 'Eos ea velit.', 'Dolor voluptatem aut odit qui. Sunt ullam ut sunt. Qui nam et velit odio.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Eum sed eveniet qui inventore nisi autem. Doloribus eum quo non vero neque non maiores. Qui voluptatem nisi iusto est ut veniam quod. Ad ullam ut quis et natus earum incidunt.\n\nNon unde aut vero dolorum. Voluptatem est doloribus voluptate id. Voluptates maiores maxime adipisci harum id sed distinctio. Et aperiam quis sed numquam sit.\n\nVoluptas omnis sit quibusdam nostrum. Ut quia ipsam officia eius amet id quo. Qui consequuntur qui natus reiciendis hic ab. Amet rerum enim quam commodi atque.', '466 Autumn Circles Apt. 277', 'Kumasi', 'Central', 5.06833600, -1.41302600, 740124.04, 'rent', 'commercial', 4, 2, 488.41, 2799.36, 1992, 5, 4, 0, 'pending', 203, 22, 5.00, 7, 9, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(14, 'Quidem quia sit autem.', 'Eos fugiat quo suscipit placeat et officia. Ut dolorem sunt sint maxime iure distinctio non.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Sunt qui qui consequatur reiciendis velit iste. Vel veniam omnis at soluta. Quasi rerum saepe ea id dolores sapiente dolorem.\n\nImpedit aut corporis id eveniet quasi reprehenderit deleniti. Minima autem sit nemo. Animi nulla fugit pariatur dolor nostrum.\n\nOptio minima quasi nihil atque nisi. Quam quos quis voluptatem consequuntur voluptate laborum neque. Omnis et quae corporis magni nemo.', '503 Grady Crescent', 'Accra', 'Northern', 6.23127300, 0.50015600, 3973476.51, 'sale', 'commercial', 4, 4, 48.68, 5636.32, 2003, 4, 1, 0, 'sold', 163, 23, 4.10, 5, 8, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(15, 'Non ut officia.', 'Nulla a consequuntur cum quis vero. Doloremque at veritatis est quia eum. Et aut cupiditate corrupti repellendus quo iusto consectetur.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Accusantium ipsum omnis dolorem et quia dolorem. Tempore et dolorum beatae minima et. Iure culpa dignissimos ratione fuga. Laborum error placeat facilis suscipit.\n\nMollitia consequuntur harum cumque exercitationem distinctio aliquam. Sit fugit magnam minus maxime. Esse voluptatem accusantium aut atque.\n\nTotam modi ut autem aut corrupti sit. Assumenda ut non id ut distinctio non natus. Modi qui harum autem nam optio saepe. Debitis id eum autem eos eum a.', '624 Judson Station', 'Tamale', 'Western', 9.64760200, -2.59455500, 1934783.55, 'sale', 'house', 0, 5, 233.28, 5999.46, 2015, 2, 2, 1, 'available', 293, 7, 3.40, 3, 8, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(16, 'Rerum error accusantium modi.', 'Fuga velit cupiditate magnam eum. Consequatur quia facilis illo necessitatibus rerum.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Saepe qui distinctio expedita corrupti provident illum. Corporis nam temporibus architecto incidunt magnam blanditiis qui.\n\nQuia dolorem expedita sit et. Sequi exercitationem voluptatem odit. Omnis aut similique error dolor eos mollitia.\n\nCorporis rerum ut nobis. Rem et esse autem illum.', '731 Felicia Expressway Suite 872', 'Cape Coast', 'Ashanti', 6.20506000, 0.93797100, 515955.11, 'rent', 'villa', 7, 3, 223.50, 7611.98, 2000, 4, 3, 0, 'sold', 484, 90, 4.70, 6, 6, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(17, 'Voluptas ipsam dolorum incidunt error.', 'Vel et quas quia iusto laboriosam. Perferendis eius officia modi nesciunt.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Vitae nesciunt nisi impedit hic voluptatem molestiae soluta. Facilis omnis reprehenderit harum explicabo dolores. Suscipit doloremque a perferendis quidem tempore voluptas. Odit dicta ut modi quis error nisi. Ea consectetur qui reprehenderit sunt.\n\nVoluptates vel fugiat exercitationem corporis quia corporis veniam. Sed ipsa minus nulla vel. Assumenda voluptate maxime quia expedita iusto. Pariatur omnis maxime accusantium aperiam asperiores.\n\nEst libero delectus quod ea non quo quia. Reiciendis rerum voluptate et repudiandae. Et enim molestias quia voluptatum omnis. Optio velit ut quas error id optio vero. Provident molestiae sunt itaque qui nihil.', '489 Flavio Valley Apt. 993', 'Kumasi', 'Northern', 8.99689000, -1.40166800, 1120229.28, 'rent', 'villa', 3, 3, 627.64, 2788.70, 2023, 1, 3, 1, 'rented', 0, 9, 4.90, 8, 5, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(18, 'Nihil sed et optio.', 'Eveniet consequatur praesentium quibusdam quasi dolorem. Iure qui voluptatum et.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Quisquam maiores consequatur laboriosam voluptatum et. Voluptas reiciendis laborum unde placeat aut. Qui magni earum sed et qui quasi dolores. Similique reprehenderit exercitationem ducimus tenetur eligendi odit.\n\nVeniam iure autem temporibus nisi officia est ab est. Laudantium omnis et occaecati et asperiores assumenda ut. Maiores natus consequuntur sed placeat. Eos expedita sit eos dolore.\n\nConsectetur sequi eveniet eos aut est. Excepturi omnis quasi quibusdam corrupti in voluptatem veniam. In vel incidunt accusantium non cum eligendi fugiat.', '682 Eveline Locks Apt. 806', 'Cape Coast', 'Greater Accra', 7.91349900, -0.34050500, 3166291.71, 'rent', 'apartment', 8, 4, 861.26, 5417.36, 2023, 2, 1, 0, 'rented', 309, 24, 4.90, 3, 3, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(19, 'Commodi dolorum perferendis illo sit.', 'Quidem eveniet sequi mollitia velit id. Commodi sunt harum quos.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Inventore est nam soluta cumque. Impedit repellat fuga labore consectetur et earum tempore. Fuga quidem ut dolorem ipsam expedita.\n\nExercitationem a mollitia ipsum molestias necessitatibus sed. Architecto aliquid quam a. Animi asperiores illum nihil ipsa nihil laboriosam. Voluptatem voluptatem sed beatae maxime et porro alias.\n\nVoluptas rerum est aut illum cupiditate ullam enim distinctio. Beatae consectetur et non. Sunt sequi rem ab quidem ea quia. Autem distinctio ullam in eius qui. Ut sapiente autem harum omnis.', '17547 Anna Roads Suite 523', 'Kumasi', 'Northern', 7.79098500, -1.08957000, 1560620.77, 'sale', 'commercial', 6, 6, 551.63, 7894.73, 2011, 1, 0, 0, 'pending', 145, 70, 3.40, 6, 9, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(20, 'Quaerat et et distinctio delectus.', 'Vel suscipit vitae eos vel ipsum voluptas nobis. Totam illum et possimus sed et. Eius cupiditate possimus beatae necessitatibus culpa et qui.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Velit consequatur quaerat assumenda vel. Et quidem vitae nobis veritatis ut consequatur unde explicabo. Accusamus possimus voluptas ullam laborum. Ab harum delectus omnis laborum.\n\nA eum voluptas similique repellendus repellendus. Pariatur odio tempore excepturi aut. Unde doloribus excepturi nobis sunt non quo.\n\nAut autem tenetur dolorum harum facere ducimus voluptatem. Officiis dolorum illo distinctio officia dolores est dolor.', '82073 Kaylee Summit', 'Kumasi', 'Western', 10.27615300, 0.53145200, 4837974.63, 'rent', 'office', 6, 4, 474.60, 5252.75, 1998, 2, 6, 0, 'sold', 228, 34, 4.20, 8, 5, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(21, 'Quos ipsam sequi iste.', 'Id in animi ducimus dolorem et eum necessitatibus ut. Qui sint repellendus qui et cupiditate.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Incidunt sunt dolorem rerum consequatur est sapiente in. Atque dolorem fugit nesciunt ut. Saepe rerum perferendis voluptas et sit laborum molestiae ducimus.\n\nNumquam nisi ut corrupti voluptatum sit. Ipsa similique ut nobis hic laboriosam odio aut autem. Maiores id quas quod nihil laboriosam saepe.\n\nQui necessitatibus ullam vel placeat. Occaecati facere excepturi voluptates blanditiis atque. Totam consequatur quod ipsum ad. Odio sed cum molestiae magni.', '374 Shanie Garden', 'Accra', 'Greater Accra', 9.69374200, -2.94353800, 90735.08, 'sale', 'apartment', 4, 4, 490.21, 6060.24, 2006, 2, 3, 1, 'off_market', 272, 7, 4.50, 8, 5, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(22, 'Est consequatur consectetur unde.', 'Fugiat eos officiis ut et facere excepturi. Tempora nostrum eum iste maxime perferendis deserunt. Et quod nulla sint qui harum.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Eaque alias dolor rerum laborum ut in. Aliquam cupiditate corporis ipsum enim eius. Neque temporibus consequuntur eius eaque officiis esse. Sed aut ratione in et eos consectetur incidunt nostrum. Modi qui excepturi molestiae nobis necessitatibus ex error.\n\nEsse sunt non exercitationem dignissimos est quos officia. Eius qui molestiae similique eligendi aut est fuga. Debitis consequuntur quibusdam corporis accusantium quo. Architecto fugit nulla et vel.\n\nUllam et consequatur voluptatum et sequi sed est quisquam. Cumque unde saepe non repellendus quo necessitatibus cumque. Eveniet dolorum dolore qui quo corporis provident magni.', '74025 Zola Fords', 'Cape Coast', 'Greater Accra', 10.85586600, 0.56236200, 4143891.38, 'sale', 'land', 1, 6, 222.30, 8847.71, 1999, 3, 0, 0, 'pending', 391, 95, 4.40, 5, 6, '2025-09-18 23:47:33', '2026-01-09 23:18:31'),
(23, 'Modi et culpa.', 'Aut autem qui officiis consequatur. Sit velit minima ut a aperiam in.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Id officia deserunt delectus quia minus explicabo velit. Officiis earum voluptatem totam nam necessitatibus. Sunt eum aliquid asperiores quia animi cum. Delectus velit quo ut beatae non eveniet deserunt. Et ipsa qui voluptas.\n\nCorrupti dolores voluptatum ab quia ab magnam. Consequatur sapiente animi qui sunt consequatur quo sint. Officiis quia voluptatem doloremque reprehenderit error quos. Asperiores aperiam fuga nulla dolores cum.\n\nOdit architecto enim adipisci quos consectetur sapiente. Deserunt voluptate autem qui vel. Corrupti velit inventore animi consectetur nulla omnis doloremque. Ullam et neque et voluptas itaque est non.', '2554 Haleigh Spring', 'Kumasi', 'Ashanti', 8.51636800, -0.23428600, 3323922.65, 'sale', 'house', 2, 3, 194.37, 5371.75, 2019, 4, 6, 0, 'pending', 132, 91, 4.80, 6, 6, '2025-09-18 23:47:33', '2026-01-10 09:39:19'),
(24, 'Voluptatum possimus veritatis.', 'Quae expedita vero dolorum aspernatur. Aut fugit mollitia illo quo enim quas voluptatum. Optio ex et earum.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Temporibus laudantium sunt sit ipsa cum. Eaque dolores voluptates est accusantium quisquam quo. Quae voluptates pariatur rem rem laborum ab ducimus. Tempora quibusdam enim delectus est. Repellendus aut distinctio accusamus qui ut repudiandae earum.\n\nNatus nam ratione alias deserunt blanditiis ut et. Ut aut voluptatem consectetur qui fugiat aut. Suscipit ut natus perspiciatis deleniti. Eius voluptas aut et quo quisquam repellat.\n\nEst doloremque debitis porro itaque fugiat molestias veritatis. Maiores necessitatibus quasi sit ut error facilis ea. Consectetur at facere eum dolor vitae similique et.', '924 Ryan Divide', 'Accra', 'Western', 4.10626900, -1.43093600, 4260056.51, 'rent', 'office', 5, 3, 577.80, 9372.30, 1992, 2, 3, 0, 'pending', 325, 84, 4.60, 9, 9, '2025-09-18 23:47:33', '2026-01-10 19:31:07'),
(25, 'Fugiat reiciendis qui.', 'Velit dolore ex iure deleniti qui. Consequatur eos omnis in aut sunt asperiores qui sed. Sunt sed autem omnis architecto.', 'properties/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg', '[\"properties\\/01K5F9HX8R6C4GWMQB5CPJXQEY.jpeg\"]', 'Consequuntur voluptatum non ipsa et. Voluptas reiciendis ad minus impedit voluptatibus. Voluptatem rerum sapiente et ducimus labore. Similique voluptatem doloremque non eos ut.\n\nAccusamus et ea ipsam enim quasi. Qui adipisci amet exercitationem quas voluptas ut. Debitis et maiores quibusdam. Ab distinctio a et aut rerum. Odio et magni dicta ex ea.\n\nAsperiores autem eius eaque velit velit. Quae quia dolore quo dolores sed deleniti. Temporibus numquam illum aperiam. Reiciendis quis quasi veniam qui incidunt cumque laudantium. Ullam maxime et aliquam est.', '4431 Senger Ford Apt. 823', 'Accra', 'Ashanti', 10.16510700, -0.56594200, 1126492.70, 'rent', 'townhouse', 7, 6, 141.30, 6490.59, 2011, 3, 6, 1, 'rented', 325, 14, 4.10, 9, 5, '2025-09-18 23:47:33', '2026-01-09 23:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `property_amenities`
--

CREATE TABLE `property_amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_amenities`
--

INSERT INTO `property_amenities` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Air Conditioning', 'Central air conditioning system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(2, 'Heating', 'Central heating system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(3, 'Parking', 'Dedicated parking space', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(4, 'Balcony', 'Private balcony with outdoor space', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(5, 'Garden', 'Private garden area', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(6, 'Terrace', 'Outdoor terrace space', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(7, 'Storage', 'Additional storage space', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(8, 'Elevator', 'Building elevator access', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(9, 'Pet Friendly', 'Pet-friendly property', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(10, 'Furnished', 'Fully furnished property', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(11, 'Swimming Pool', 'Private or shared swimming pool', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(12, 'Gym/Fitness Center', 'On-site fitness facilities', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(13, 'Spa', 'Spa and wellness facilities', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(14, 'Concierge', '24/7 concierge service', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(15, 'Rooftop Access', 'Access to rooftop area', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(16, 'Wine Cellar', 'Private wine storage', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(17, 'Home Theater', 'Private home theater room', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(18, 'Library', 'Private library space', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(19, 'Wine Bar', 'Private wine bar area', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(20, 'Butler Service', 'Personal butler service', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(21, 'Security System', 'Advanced security system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(22, 'CCTV', '24/7 CCTV surveillance', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(23, 'Gated Community', 'Gated community access', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(24, 'Security Guard', '24/7 security personnel', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(25, 'Intercom', 'Video intercom system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(26, 'Safe', 'Built-in safe for valuables', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(27, 'Alarm System', 'Burglar alarm system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(28, 'Secure Parking', 'Secure underground parking', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(29, 'BBQ Area', 'Outdoor BBQ and dining area', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(30, 'Playground', 'Children\'s playground', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(31, 'Tennis Court', 'Private tennis court', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(32, 'Basketball Court', 'Basketball court access', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(33, 'Walking Trails', 'Nature walking trails', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(34, 'Beach Access', 'Direct beach access', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(35, 'Marina', 'Private marina access', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(36, 'Golf Course', 'Golf course access', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(37, 'Hiking Trails', 'Mountain hiking trails', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(38, 'Boat Dock', 'Private boat dock', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(39, 'High-Speed Internet', 'Fiber optic internet connection', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(40, 'Smart Home', 'Smart home automation system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(41, 'Solar Panels', 'Solar power system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(42, 'Generator', 'Backup power generator', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(43, 'Water Heater', 'Instant water heating system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(44, 'Dishwasher', 'Built-in dishwasher', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(45, 'Washing Machine', 'In-unit washing machine', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(46, 'Dryer', 'In-unit clothes dryer', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(47, 'Central Vacuum', 'Central vacuum system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(48, 'Fireplace', 'Gas or wood fireplace', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(49, 'Modern Kitchen', 'Fully equipped modern kitchen', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(50, 'Granite Countertops', 'Granite kitchen countertops', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(51, 'Stainless Steel Appliances', 'High-end stainless steel appliances', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(52, 'Island Kitchen', 'Kitchen with center island', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(53, 'Walk-in Pantry', 'Large walk-in pantry', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(54, 'Wine Fridge', 'Built-in wine refrigerator', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(55, 'Coffee Machine', 'Built-in coffee machine', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(56, 'Double Oven', 'Double wall oven setup', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(57, 'Master Bathroom', 'Luxurious master bathroom', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(58, 'Jacuzzi', 'Built-in jacuzzi tub', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(59, 'Steam Shower', 'Steam shower system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(60, 'Double Vanity', 'Double sink vanity', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(61, 'Heated Floors', 'Heated bathroom floors', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(62, 'Bidet', 'Bidet toilet system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(63, 'Rain Shower', 'Rainfall shower head', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(64, 'Marble Bathroom', 'Marble bathroom finishes', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(65, 'Home Office', 'Dedicated home office space', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(66, 'Conference Room', 'Private conference room', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(67, 'Business Center', 'Shared business center', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(68, 'High-Speed WiFi', 'Commercial-grade WiFi', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(69, 'Meeting Rooms', 'Private meeting rooms', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(70, 'Coworking Space', 'Shared coworking area', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(71, 'Printing Services', 'On-site printing services', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(72, 'Mail Services', 'Package and mail handling', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(73, 'Game Room', 'Private game room', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(74, 'Pool Table', 'Built-in pool table', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(75, 'Ping Pong Table', 'Table tennis setup', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(76, 'Arcade Games', 'Classic arcade games', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(77, 'Karaoke System', 'Built-in karaoke system', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(78, 'Music Studio', 'Private music recording studio', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(79, 'Art Studio', 'Dedicated art workspace', '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(80, 'Dance Studio', 'Private dance practice space', '2025-09-18 23:47:33', '2025-09-18 23:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `property_comparisons`
--

CREATE TABLE `property_comparisons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_comparisons`
--

INSERT INTO `property_comparisons` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 11, 'Luxury Properties in Accra', '2025-09-13 23:47:35', '2025-09-18 23:47:35'),
(2, 14, 'Investment Opportunities', '2025-09-15 23:47:35', '2025-09-18 23:47:35'),
(3, 12, 'Family Homes Under $500k', '2025-09-11 23:47:35', '2025-09-18 23:47:35'),
(4, 16, 'Beachfront Properties', '2025-09-16 23:47:35', '2025-09-18 23:47:35'),
(5, 14, 'Modern Apartments', '2025-09-17 23:47:35', '2025-09-18 23:47:35'),
(6, 10, 'Villas with Pool - voluptas', '2025-08-31 08:31:47', '2025-09-18 23:47:35'),
(7, 14, 'Budget-Friendly Options - fuga', '2025-09-07 03:11:29', '2025-09-18 23:47:35'),
(8, 19, 'Commercial Properties - quasi', '2025-09-15 05:44:51', '2025-09-18 23:47:35'),
(9, 11, 'Properties in East Legon - eos', '2025-09-06 11:57:12', '2025-09-18 23:47:35'),
(10, 12, 'High-End Properties - impedit', '2025-08-25 18:02:19', '2025-09-18 23:47:35'),
(11, 14, 'Budget-Friendly Options - maxime', '2025-09-13 05:14:16', '2025-09-18 23:47:35'),
(12, 18, 'Investment Properties - eius', '2025-09-10 15:25:46', '2025-09-18 23:47:35'),
(13, 16, 'New Construction - magnam', '2025-08-26 04:28:16', '2025-09-18 23:47:35'),
(14, 10, 'Commercial Properties - eius', '2025-09-10 04:01:49', '2025-09-18 23:47:35'),
(15, 4, 'Investment Properties - sed', '2025-08-26 22:31:33', '2025-09-18 23:47:35'),
(16, 4, 'Budget-Friendly Options - consequatur', '2025-09-07 00:45:27', '2025-09-18 23:47:35'),
(17, 18, 'Budget-Friendly Options - ut', '2025-09-05 00:33:55', '2025-09-18 23:47:35'),
(18, 14, 'Properties with Garden - velit', '2025-08-21 18:27:27', '2025-09-18 23:47:35'),
(19, 12, 'Commercial Properties - accusantium', '2025-09-13 12:08:03', '2025-09-18 23:47:35'),
(20, 10, 'Properties Near Airport - adipisci', '2025-09-05 22:09:53', '2025-09-18 23:47:35'),
(22, 2, 'My First Comparison', '2025-09-19 15:41:55', '2025-09-19 15:41:55'),
(23, 26, '3 Bedrooms Comparison', '2025-09-19 23:41:08', '2025-09-19 23:41:08'),
(24, 26, 'Test Comparison - 2025-09-20T00:13:44.028Z', '2025-09-20 00:13:44', '2025-09-20 00:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `property_comparison_items`
--

CREATE TABLE `property_comparison_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comparison_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_comparison_items`
--

INSERT INTO `property_comparison_items` (`id`, `comparison_id`, `property_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 0, NULL, NULL),
(2, 1, 15, 0, NULL, NULL),
(3, 1, 16, 0, NULL, NULL),
(4, 1, 19, 0, NULL, NULL),
(5, 2, 8, 0, NULL, NULL),
(6, 2, 21, 0, NULL, NULL),
(7, 2, 22, 0, NULL, NULL),
(8, 2, 25, 0, NULL, NULL),
(9, 3, 19, 0, NULL, NULL),
(10, 3, 22, 0, NULL, NULL),
(11, 3, 24, 0, NULL, NULL),
(12, 4, 3, 0, NULL, NULL),
(13, 4, 4, 0, NULL, NULL),
(14, 4, 14, 0, NULL, NULL),
(15, 5, 9, 0, NULL, NULL),
(16, 5, 18, 0, NULL, NULL),
(17, 5, 21, 0, NULL, NULL),
(18, 6, 8, 0, NULL, NULL),
(19, 6, 16, 0, NULL, NULL),
(20, 7, 12, 0, NULL, NULL),
(21, 7, 23, 0, NULL, NULL),
(22, 7, 25, 0, NULL, NULL),
(23, 8, 4, 0, NULL, NULL),
(24, 8, 10, 0, NULL, NULL),
(25, 8, 23, 0, NULL, NULL),
(26, 9, 5, 0, NULL, NULL),
(27, 9, 6, 0, NULL, NULL),
(28, 9, 8, 0, NULL, NULL),
(29, 9, 9, 0, NULL, NULL),
(30, 10, 3, 0, NULL, NULL),
(31, 10, 16, 0, NULL, NULL),
(32, 11, 1, 0, NULL, NULL),
(33, 11, 19, 0, NULL, NULL),
(34, 12, 6, 0, NULL, NULL),
(35, 12, 11, 0, NULL, NULL),
(36, 12, 20, 0, NULL, NULL),
(37, 12, 22, 0, NULL, NULL),
(38, 13, 5, 0, NULL, NULL),
(39, 13, 15, 0, NULL, NULL),
(40, 13, 18, 0, NULL, NULL),
(41, 14, 9, 0, NULL, NULL),
(42, 14, 17, 0, NULL, NULL),
(43, 14, 21, 0, NULL, NULL),
(44, 14, 25, 0, NULL, NULL),
(45, 15, 2, 0, NULL, NULL),
(46, 15, 7, 0, NULL, NULL),
(47, 15, 21, 0, NULL, NULL),
(48, 16, 4, 0, NULL, NULL),
(49, 16, 14, 0, NULL, NULL),
(50, 16, 17, 0, NULL, NULL),
(51, 16, 19, 0, NULL, NULL),
(52, 17, 8, 0, NULL, NULL),
(53, 17, 9, 0, NULL, NULL),
(54, 17, 13, 0, NULL, NULL),
(55, 17, 15, 0, NULL, NULL),
(56, 17, 18, 0, NULL, NULL),
(57, 18, 5, 0, NULL, NULL),
(58, 18, 22, 0, NULL, NULL),
(59, 18, 24, 0, NULL, NULL),
(60, 19, 12, 0, NULL, NULL),
(61, 19, 25, 0, NULL, NULL),
(62, 20, 8, 0, NULL, NULL),
(63, 20, 10, 0, NULL, NULL),
(64, 20, 18, 0, NULL, NULL),
(65, 20, 24, 0, NULL, NULL),
(70, 22, 1, 1, NULL, NULL),
(71, 22, 2, 2, NULL, NULL),
(72, 22, 3, 3, NULL, NULL),
(88, 23, 23, 5, NULL, NULL),
(91, 23, 24, 2, NULL, NULL),
(92, 23, 25, 3, NULL, NULL),
(93, 24, 19, 1, NULL, NULL),
(94, 24, 24, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_property_amenity`
--

CREATE TABLE `property_property_amenity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `property_amenity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_property_amenity`
--

INSERT INTO `property_property_amenity` (`id`, `property_id`, `property_amenity_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL),
(2, 1, 22, NULL, NULL),
(3, 1, 24, NULL, NULL),
(4, 1, 29, NULL, NULL),
(5, 1, 31, NULL, NULL),
(6, 1, 39, NULL, NULL),
(7, 1, 42, NULL, NULL),
(8, 1, 49, NULL, NULL),
(9, 1, 50, NULL, NULL),
(10, 1, 53, NULL, NULL),
(11, 1, 58, NULL, NULL),
(12, 1, 59, NULL, NULL),
(13, 1, 64, NULL, NULL),
(14, 1, 73, NULL, NULL),
(15, 1, 75, NULL, NULL),
(16, 2, 1, NULL, NULL),
(17, 2, 4, NULL, NULL),
(18, 2, 7, NULL, NULL),
(19, 2, 12, NULL, NULL),
(20, 2, 14, NULL, NULL),
(21, 2, 19, NULL, NULL),
(22, 2, 29, NULL, NULL),
(23, 2, 38, NULL, NULL),
(24, 2, 62, NULL, NULL),
(25, 2, 74, NULL, NULL),
(26, 2, 76, NULL, NULL),
(27, 2, 78, NULL, NULL),
(28, 3, 9, NULL, NULL),
(29, 3, 18, NULL, NULL),
(30, 3, 29, NULL, NULL),
(31, 3, 30, NULL, NULL),
(32, 3, 47, NULL, NULL),
(33, 4, 8, NULL, NULL),
(34, 4, 27, NULL, NULL),
(35, 4, 28, NULL, NULL),
(36, 4, 30, NULL, NULL),
(37, 4, 31, NULL, NULL),
(38, 4, 37, NULL, NULL),
(39, 4, 40, NULL, NULL),
(40, 4, 56, NULL, NULL),
(41, 4, 59, NULL, NULL),
(42, 4, 61, NULL, NULL),
(43, 4, 63, NULL, NULL),
(44, 4, 79, NULL, NULL),
(45, 5, 5, NULL, NULL),
(46, 5, 6, NULL, NULL),
(47, 5, 10, NULL, NULL),
(48, 5, 33, NULL, NULL),
(49, 5, 55, NULL, NULL),
(50, 5, 56, NULL, NULL),
(51, 5, 69, NULL, NULL),
(52, 5, 76, NULL, NULL),
(53, 6, 18, NULL, NULL),
(54, 6, 22, NULL, NULL),
(55, 6, 38, NULL, NULL),
(56, 6, 48, NULL, NULL),
(57, 6, 65, NULL, NULL),
(58, 7, 2, NULL, NULL),
(59, 7, 3, NULL, NULL),
(60, 7, 43, NULL, NULL),
(61, 7, 51, NULL, NULL),
(62, 7, 56, NULL, NULL),
(63, 7, 57, NULL, NULL),
(64, 7, 64, NULL, NULL),
(65, 7, 65, NULL, NULL),
(66, 8, 8, NULL, NULL),
(67, 8, 10, NULL, NULL),
(68, 8, 17, NULL, NULL),
(69, 8, 24, NULL, NULL),
(70, 8, 27, NULL, NULL),
(71, 8, 35, NULL, NULL),
(72, 8, 36, NULL, NULL),
(73, 8, 46, NULL, NULL),
(74, 8, 50, NULL, NULL),
(75, 8, 62, NULL, NULL),
(76, 9, 1, NULL, NULL),
(77, 9, 18, NULL, NULL),
(78, 9, 24, NULL, NULL),
(79, 9, 57, NULL, NULL),
(80, 9, 58, NULL, NULL),
(81, 9, 60, NULL, NULL),
(82, 9, 66, NULL, NULL),
(83, 9, 69, NULL, NULL),
(84, 9, 72, NULL, NULL),
(85, 10, 6, NULL, NULL),
(86, 10, 29, NULL, NULL),
(87, 10, 32, NULL, NULL),
(88, 10, 36, NULL, NULL),
(89, 10, 66, NULL, NULL),
(90, 10, 68, NULL, NULL),
(91, 10, 76, NULL, NULL),
(92, 10, 77, NULL, NULL),
(93, 11, 4, NULL, NULL),
(94, 11, 14, NULL, NULL),
(95, 11, 20, NULL, NULL),
(96, 11, 24, NULL, NULL),
(97, 11, 29, NULL, NULL),
(98, 11, 31, NULL, NULL),
(99, 11, 59, NULL, NULL),
(100, 11, 60, NULL, NULL),
(101, 12, 4, NULL, NULL),
(102, 12, 15, NULL, NULL),
(103, 12, 20, NULL, NULL),
(104, 12, 21, NULL, NULL),
(105, 12, 45, NULL, NULL),
(106, 12, 78, NULL, NULL),
(107, 13, 4, NULL, NULL),
(108, 13, 20, NULL, NULL),
(109, 13, 24, NULL, NULL),
(110, 13, 25, NULL, NULL),
(111, 13, 30, NULL, NULL),
(112, 13, 37, NULL, NULL),
(113, 13, 45, NULL, NULL),
(114, 13, 48, NULL, NULL),
(115, 13, 53, NULL, NULL),
(116, 13, 73, NULL, NULL),
(117, 14, 59, NULL, NULL),
(118, 14, 67, NULL, NULL),
(119, 14, 71, NULL, NULL),
(120, 14, 76, NULL, NULL),
(121, 15, 1, NULL, NULL),
(122, 15, 7, NULL, NULL),
(123, 15, 28, NULL, NULL),
(124, 15, 37, NULL, NULL),
(125, 15, 56, NULL, NULL),
(126, 15, 65, NULL, NULL),
(127, 16, 8, NULL, NULL),
(128, 16, 29, NULL, NULL),
(129, 16, 31, NULL, NULL),
(130, 16, 34, NULL, NULL),
(131, 16, 48, NULL, NULL),
(132, 16, 57, NULL, NULL),
(133, 16, 60, NULL, NULL),
(134, 16, 73, NULL, NULL),
(135, 17, 5, NULL, NULL),
(136, 17, 6, NULL, NULL),
(137, 17, 8, NULL, NULL),
(138, 17, 27, NULL, NULL),
(139, 17, 36, NULL, NULL),
(140, 17, 78, NULL, NULL),
(141, 18, 8, NULL, NULL),
(142, 18, 37, NULL, NULL),
(143, 18, 39, NULL, NULL),
(144, 18, 44, NULL, NULL),
(145, 18, 47, NULL, NULL),
(146, 18, 48, NULL, NULL),
(147, 18, 72, NULL, NULL),
(148, 19, 4, NULL, NULL),
(149, 19, 7, NULL, NULL),
(150, 19, 8, NULL, NULL),
(151, 19, 20, NULL, NULL),
(152, 19, 21, NULL, NULL),
(153, 19, 22, NULL, NULL),
(154, 19, 25, NULL, NULL),
(155, 19, 67, NULL, NULL),
(156, 19, 72, NULL, NULL),
(157, 19, 78, NULL, NULL),
(158, 20, 9, NULL, NULL),
(159, 20, 19, NULL, NULL),
(160, 20, 32, NULL, NULL),
(161, 20, 33, NULL, NULL),
(162, 20, 52, NULL, NULL),
(163, 20, 56, NULL, NULL),
(164, 20, 71, NULL, NULL),
(165, 21, 1, NULL, NULL),
(166, 21, 13, NULL, NULL),
(167, 21, 28, NULL, NULL),
(168, 22, 1, NULL, NULL),
(169, 22, 21, NULL, NULL),
(170, 22, 31, NULL, NULL),
(171, 22, 32, NULL, NULL),
(172, 22, 34, NULL, NULL),
(173, 22, 39, NULL, NULL),
(174, 22, 46, NULL, NULL),
(175, 22, 53, NULL, NULL),
(176, 22, 54, NULL, NULL),
(177, 23, 18, NULL, NULL),
(178, 23, 20, NULL, NULL),
(179, 23, 32, NULL, NULL),
(180, 23, 40, NULL, NULL),
(181, 23, 61, NULL, NULL),
(182, 24, 4, NULL, NULL),
(183, 24, 27, NULL, NULL),
(184, 24, 36, NULL, NULL),
(185, 24, 38, NULL, NULL),
(186, 24, 43, NULL, NULL),
(187, 24, 64, NULL, NULL),
(188, 25, 6, NULL, NULL),
(189, 25, 10, NULL, NULL),
(190, 25, 17, NULL, NULL),
(191, 25, 43, NULL, NULL),
(192, 25, 75, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_views`
--

CREATE TABLE `property_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_views`
--

INSERT INTO `property_views` (`id`, `property_id`, `user_id`, `ip_address`, `user_agent`, `viewed_at`) VALUES
(1, 19, NULL, '245.82.190.252', 'Opera/9.28 (Windows NT 5.0; nl-NL) Presto/2.12.204 Version/12.00', '2025-08-23 22:07:30'),
(2, 19, 12, '176.141.49.216', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_0 rv:6.0; nl-NL) AppleWebKit/534.1.2 (KHTML, like Gecko) Version/5.0 Safari/534.1.2', '2025-08-30 04:22:38'),
(3, 24, 12, '132.103.95.13', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows 95; Trident/5.1)', '2025-09-11 18:21:35'),
(4, 25, 4, '147.160.180.229', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows 95; Trident/3.0)', '2025-09-09 22:00:39'),
(5, 4, 19, '182.254.98.38', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_6 rv:6.0) Gecko/20220218 Firefox/35.0', '2025-09-18 13:49:57'),
(6, 15, NULL, '47.62.55.40', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20100217 Firefox/36.0', '2025-09-07 05:21:50'),
(7, 21, 13, '9.248.245.7', 'Opera/9.20 (Windows NT 4.0; nl-NL) Presto/2.8.201 Version/11.00', '2025-08-26 04:00:40'),
(8, 25, NULL, '173.193.205.248', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 4.0; Trident/4.0)', '2025-09-04 16:32:20'),
(9, 18, NULL, '60.245.153.212', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20171014 Firefox/37.0', '2025-09-12 20:44:21'),
(10, 25, 17, '56.122.220.225', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/535.34.4 (KHTML, like Gecko) Version/5.1 Safari/535.34.4', '2025-08-29 11:15:20'),
(11, 22, 16, '225.234.104.106', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_9) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/88.0.4157.89 Safari/537.1 Edg/88.01111.58', '2025-09-13 15:43:37'),
(12, 13, 4, '150.3.153.133', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.0; Trident/4.0)', '2025-08-25 11:03:11'),
(13, 14, NULL, '159.93.207.248', 'Mozilla/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit/532.26.7 (KHTML, like Gecko) Version/4.0 Safari/532.26.7', '2025-08-23 15:04:17'),
(14, 12, 14, '58.214.8.69', 'Opera/9.12 (X11; Linux i686; sl-SI) Presto/2.12.189 Version/12.00', '2025-09-04 16:17:09'),
(15, 6, 16, '187.163.54.64', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/87.0.4386.69 Safari/532.2 EdgA/87.01097.15', '2025-08-21 22:18:14'),
(16, 17, 13, '149.166.129.192', 'Mozilla/5.0 (Windows NT 5.01) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/84.0.4653.66 Safari/534.1 Edg/84.01122.95', '2025-09-16 08:01:54'),
(17, 4, NULL, '126.216.74.254', 'Opera/9.45 (X11; Linux i686; en-US) Presto/2.8.300 Version/12.00', '2025-09-08 17:06:36'),
(18, 25, 4, '4.193.109.23', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5341 (KHTML, like Gecko) Chrome/36.0.843.0 Mobile Safari/5341', '2025-09-09 16:55:42'),
(19, 9, NULL, '151.9.244.52', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/91.0.4558.28 Safari/537.2 EdgA/91.01091.64', '2025-09-01 14:43:36'),
(20, 23, 17, '58.124.145.250', 'Opera/9.48 (Windows 98; Win 9x 4.90; sl-SI) Presto/2.12.235 Version/11.00', '2025-09-18 23:39:26'),
(21, 18, NULL, '137.204.133.212', 'Opera/8.97 (Windows NT 5.2; sl-SI) Presto/2.10.210 Version/12.00', '2025-09-14 21:32:19'),
(22, 15, 16, '20.228.200.108', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/534.0 (KHTML, like Gecko) Chrome/99.0.4348.86 Safari/534.0 EdgA/99.01128.26', '2025-09-18 09:30:56'),
(23, 13, NULL, '45.120.85.110', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5310 (KHTML, like Gecko) Chrome/37.0.877.0 Mobile Safari/5310', '2025-09-09 20:34:03'),
(24, 6, 10, '21.53.85.216', 'Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/531.29.1 (KHTML, like Gecko) Version/5.0 Safari/531.29.1', '2025-08-25 01:54:39'),
(25, 14, 17, '5.178.112.138', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_0 rv:2.0) Gecko/20160302 Firefox/35.0', '2025-08-29 23:18:36'),
(26, 1, 13, '40.63.244.206', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_7 rv:2.0; sl-SI) AppleWebKit/532.3.4 (KHTML, like Gecko) Version/4.1 Safari/532.3.4', '2025-09-01 05:23:58'),
(27, 14, NULL, '208.154.15.131', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5352 (KHTML, like Gecko) Chrome/37.0.855.0 Mobile Safari/5352', '2025-09-07 07:51:02'),
(28, 5, NULL, '82.100.42.48', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2 rv:6.0; en-US) AppleWebKit/535.33.3 (KHTML, like Gecko) Version/5.0.3 Safari/535.33.3', '2025-09-14 13:07:56'),
(29, 23, NULL, '169.65.185.237', 'Opera/9.70 (Windows NT 6.2; sl-SI) Presto/2.8.313 Version/10.00', '2025-08-24 01:15:17'),
(30, 13, 18, '250.246.112.45', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_1 like Mac OS X; en-US) AppleWebKit/533.31.1 (KHTML, like Gecko) Version/3.0.5 Mobile/8B117 Safari/6533.31.1', '2025-09-10 18:12:48'),
(31, 6, 19, '65.148.202.117', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/91.0.4537.40 Safari/532.1 Edg/91.01021.45', '2025-08-22 18:28:48'),
(32, 11, 14, '131.222.111.157', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_2 like Mac OS X) AppleWebKit/537.1 (KHTML, like Gecko) Version/15.0 EdgiOS/91.01016.27 Mobile/15E148 Safari/537.1', '2025-09-14 20:37:12'),
(33, 11, NULL, '150.107.13.72', 'Opera/8.39 (Windows NT 5.1; nl-NL) Presto/2.10.331 Version/11.00', '2025-09-14 12:01:46'),
(34, 14, 15, '196.52.228.204', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5352 (KHTML, like Gecko) Chrome/39.0.866.0 Mobile Safari/5352', '2025-09-08 18:25:44'),
(35, 25, 14, '181.6.205.146', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20131227 Firefox/36.0', '2025-09-01 22:11:37'),
(36, 21, NULL, '82.169.113.32', 'Opera/9.91 (Windows NT 6.2; nl-NL) Presto/2.9.267 Version/11.00', '2025-08-30 22:42:22'),
(37, 11, 4, '91.229.135.183', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_3 rv:5.0; sl-SI) AppleWebKit/534.37.2 (KHTML, like Gecko) Version/5.1 Safari/534.37.2', '2025-08-29 18:47:26'),
(38, 20, 13, '227.145.167.142', 'Mozilla/5.0 (Windows NT 6.1; sl-SI; rv:1.9.0.20) Gecko/20110321 Firefox/36.0', '2025-09-05 22:46:31'),
(39, 12, 10, '172.123.115.53', 'Opera/8.61 (Windows NT 4.0; nl-NL) Presto/2.9.232 Version/11.00', '2025-09-02 21:20:00'),
(40, 1, 10, '255.206.111.32', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5 rv:6.0; en-US) AppleWebKit/533.10.5 (KHTML, like Gecko) Version/4.1 Safari/533.10.5', '2025-08-24 17:46:08'),
(41, 3, NULL, '245.252.208.135', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20160808 Firefox/35.0', '2025-09-01 20:40:48'),
(42, 13, 19, '111.133.1.107', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_2 rv:3.0; sl-SI) AppleWebKit/532.43.6 (KHTML, like Gecko) Version/4.0.1 Safari/532.43.6', '2025-09-09 20:57:10'),
(43, 8, 17, '166.137.246.168', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_6) AppleWebKit/5361 (KHTML, like Gecko) Chrome/37.0.838.0 Mobile Safari/5361', '2025-08-26 14:13:49'),
(44, 8, NULL, '142.50.163.27', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 6.1; Trident/5.0)', '2025-09-13 12:33:26'),
(45, 2, 11, '181.250.183.14', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2 like Mac OS X) AppleWebKit/534.2 (KHTML, like Gecko) Version/15.0 EdgiOS/84.01100.16 Mobile/15E148 Safari/534.2', '2025-09-18 18:40:46'),
(46, 3, 4, '61.177.73.204', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5342 (KHTML, like Gecko) Chrome/39.0.870.0 Mobile Safari/5342', '2025-08-20 19:31:21'),
(47, 6, 19, '11.83.228.159', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_7 rv:4.0; nl-NL) AppleWebKit/531.38.1 (KHTML, like Gecko) Version/5.1 Safari/531.38.1', '2025-09-07 01:00:20'),
(48, 1, 16, '244.127.231.163', 'Mozilla/5.0 (Windows 98; nl-NL; rv:1.9.2.20) Gecko/20211218 Firefox/37.0', '2025-09-03 07:02:19'),
(49, 21, 10, '92.123.75.107', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/39.0.859.0 Mobile Safari/5331', '2025-09-06 07:31:28'),
(50, 7, 4, '252.90.186.216', 'Opera/9.14 (X11; Linux i686; sl-SI) Presto/2.12.337 Version/12.00', '2025-09-07 03:39:01'),
(51, 18, 15, '53.238.243.192', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_3) AppleWebKit/5352 (KHTML, like Gecko) Chrome/37.0.837.0 Mobile Safari/5352', '2025-08-27 21:26:50'),
(52, 16, NULL, '184.248.191.122', 'Mozilla/5.0 (Windows NT 5.01; sl-SI; rv:1.9.1.20) Gecko/20220618 Firefox/37.0', '2025-09-16 15:44:16'),
(53, 4, 15, '159.209.109.156', 'Mozilla/5.0 (Windows CE; en-US; rv:1.9.0.20) Gecko/20130606 Firefox/37.0', '2025-09-05 21:48:59'),
(54, 9, 15, '248.237.208.180', 'Mozilla/5.0 (Windows 95; en-US; rv:1.9.1.20) Gecko/20230302 Firefox/36.0', '2025-09-05 21:10:30'),
(55, 14, 4, '136.204.61.150', 'Opera/9.27 (Windows NT 5.01; sl-SI) Presto/2.11.179 Version/10.00', '2025-09-03 07:03:20'),
(56, 17, 15, '87.214.107.151', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20200410 Firefox/37.0', '2025-08-24 09:40:47'),
(57, 19, NULL, '66.223.252.157', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident/5.1)', '2025-09-07 06:21:57'),
(58, 22, NULL, '146.26.162.198', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20160323 Firefox/36.0', '2025-09-06 02:13:28'),
(59, 12, 4, '145.28.115.202', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_2 rv:6.0) Gecko/20250622 Firefox/35.0', '2025-09-02 11:22:47'),
(60, 3, NULL, '119.126.143.139', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_7 rv:5.0) Gecko/20140608 Firefox/36.0', '2025-09-09 10:35:18'),
(61, 19, 19, '62.158.136.216', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20231201 Firefox/37.0', '2025-08-20 00:46:33'),
(62, 8, 4, '30.234.196.163', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_9 rv:5.0; en-US) AppleWebKit/534.21.1 (KHTML, like Gecko) Version/4.1 Safari/534.21.1', '2025-09-05 10:48:26'),
(63, 20, NULL, '225.25.180.69', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_9 rv:6.0) Gecko/20120504 Firefox/37.0', '2025-09-17 07:21:35'),
(64, 13, 11, '24.176.87.210', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 98; Trident/3.0)', '2025-08-29 01:01:42'),
(65, 24, 18, '113.165.63.253', 'Mozilla/5.0 (Windows NT 6.1; sl-SI; rv:1.9.0.20) Gecko/20200526 Firefox/35.0', '2025-09-17 20:42:44'),
(66, 10, 16, '254.207.146.116', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_7) AppleWebKit/535.0 (KHTML, like Gecko) Chrome/95.0.4229.45 Safari/535.0 Edg/95.01106.13', '2025-09-13 21:17:05'),
(67, 10, 14, '140.163.217.155', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_3 rv:3.0; nl-NL) AppleWebKit/532.44.5 (KHTML, like Gecko) Version/4.0.3 Safari/532.44.5', '2025-08-26 18:41:53'),
(68, 6, NULL, '131.143.183.7', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_7 rv:3.0) Gecko/20230611 Firefox/36.0', '2025-08-30 18:17:23'),
(69, 13, 14, '136.76.107.145', 'Opera/8.92 (X11; Linux x86_64; en-US) Presto/2.9.247 Version/11.00', '2025-09-16 05:03:49'),
(70, 25, NULL, '90.0.197.15', 'Opera/8.53 (X11; Linux x86_64; sl-SI) Presto/2.12.327 Version/11.00', '2025-09-07 09:55:47'),
(71, 18, NULL, '173.2.212.1', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 98; Win 9x 4.90; Trident/4.0)', '2025-09-15 13:38:30'),
(72, 6, 15, '7.195.6.124', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0 rv:5.0) Gecko/20110807 Firefox/37.0', '2025-09-04 15:46:45'),
(73, 1, NULL, '155.188.93.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2_2 like Mac OS X; nl-NL) AppleWebKit/535.3.4 (KHTML, like Gecko) Version/3.0.5 Mobile/8B119 Safari/6535.3.4', '2025-08-24 22:39:50'),
(74, 19, NULL, '62.118.180.84', 'Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/531.34.4 (KHTML, like Gecko) Version/4.0 Safari/531.34.4', '2025-09-01 01:52:14'),
(75, 8, 10, '233.160.150.20', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.2; Trident/4.1)', '2025-09-12 18:26:27'),
(76, 9, 14, '95.27.42.199', 'Opera/8.25 (X11; Linux x86_64; en-US) Presto/2.11.185 Version/11.00', '2025-09-01 08:28:07'),
(77, 25, 11, '132.190.105.114', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.2; Trident/4.0)', '2025-08-29 21:34:42'),
(78, 21, 18, '161.168.20.239', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_4 rv:2.0; en-US) AppleWebKit/535.48.1 (KHTML, like Gecko) Version/5.0.4 Safari/535.48.1', '2025-08-29 04:39:01'),
(79, 3, NULL, '76.209.182.112', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_0) AppleWebKit/5321 (KHTML, like Gecko) Chrome/36.0.839.0 Mobile Safari/5321', '2025-09-09 15:42:41'),
(80, 14, 15, '229.124.0.124', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.0 (KHTML, like Gecko) Chrome/88.0.4191.27 Safari/537.0 EdgA/88.01060.61', '2025-09-03 12:35:54'),
(81, 1, 14, '121.239.40.84', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_0 rv:3.0) Gecko/20110309 Firefox/35.0', '2025-08-23 11:42:59'),
(82, 15, 16, '191.57.34.20', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/532.34.1 (KHTML, like Gecko) Version/5.1 Safari/532.34.1', '2025-09-14 17:59:05'),
(83, 5, 16, '228.86.210.95', 'Mozilla/5.0 (Windows NT 4.0; sl-SI; rv:1.9.0.20) Gecko/20160725 Firefox/35.0', '2025-09-01 20:21:13'),
(84, 21, 15, '17.161.132.39', 'Opera/9.55 (Windows NT 6.0; nl-NL) Presto/2.12.241 Version/12.00', '2025-08-29 10:48:47'),
(85, 19, NULL, '215.87.36.188', 'Mozilla/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; sl-SI) AppleWebKit/534.27.1 (KHTML, like Gecko) Version/3.0.5 Mobile/8B113 Safari/6534.27.1', '2025-09-02 02:10:28'),
(86, 14, 17, '172.201.218.207', 'Mozilla/5.0 (Windows NT 6.0; en-US; rv:1.9.0.20) Gecko/20190407 Firefox/36.0', '2025-08-23 15:30:39'),
(87, 9, 10, '67.123.107.164', 'Mozilla/5.0 (Windows; U; Windows NT 5.2) AppleWebKit/535.28.7 (KHTML, like Gecko) Version/4.1 Safari/535.28.7', '2025-08-27 09:01:31'),
(88, 9, NULL, '211.79.49.169', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows CE; Trident/3.1)', '2025-09-16 06:30:19'),
(89, 15, 15, '153.30.143.9', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/533.1 (KHTML, like Gecko) Version/15.0 EdgiOS/85.01062.8 Mobile/15E148 Safari/533.1', '2025-08-24 21:56:11'),
(90, 9, 11, '22.201.27.199', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20231223 Firefox/35.0', '2025-08-30 08:57:10'),
(91, 10, 18, '128.44.15.191', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_4 rv:6.0; sl-SI) AppleWebKit/534.50.5 (KHTML, like Gecko) Version/4.0.1 Safari/534.50.5', '2025-08-23 23:31:44'),
(92, 1, 14, '23.168.170.94', 'Mozilla/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit/533.25.7 (KHTML, like Gecko) Version/5.1 Safari/533.25.7', '2025-08-31 11:43:38'),
(93, 20, NULL, '80.208.199.43', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.1)', '2025-09-01 23:04:45'),
(94, 7, NULL, '149.124.168.226', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_2 like Mac OS X) AppleWebKit/533.0 (KHTML, like Gecko) Version/15.0 EdgiOS/92.01036.31 Mobile/15E148 Safari/533.0', '2025-08-20 10:29:08'),
(95, 25, 11, '26.100.148.48', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5320 (KHTML, like Gecko) Chrome/38.0.898.0 Mobile Safari/5320', '2025-09-11 02:05:29'),
(96, 21, 19, '137.104.252.74', 'Opera/8.26 (Windows NT 5.01; en-US) Presto/2.10.211 Version/10.00', '2025-08-30 03:24:51'),
(97, 18, 13, '225.174.254.49', 'Mozilla/5.0 (Windows 98; sl-SI; rv:1.9.2.20) Gecko/20201128 Firefox/36.0', '2025-09-02 08:57:20'),
(98, 25, 12, '253.128.26.171', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_8 rv:5.0) Gecko/20130107 Firefox/35.0', '2025-08-25 15:58:12'),
(99, 7, 17, '149.103.140.13', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 95; Trident/5.1)', '2025-09-02 07:45:50'),
(100, 4, 18, '27.104.22.117', 'Mozilla/5.0 (Windows CE) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/88.0.4218.46 Safari/534.1 Edg/88.01088.35', '2025-08-31 08:00:50'),
(101, 4, 15, '81.250.67.185', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_8 rv:4.0; nl-NL) AppleWebKit/534.28.7 (KHTML, like Gecko) Version/5.0 Safari/534.28.7', '2025-09-11 20:27:41'),
(102, 1, NULL, '28.202.198.35', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20220804 Firefox/36.0', '2025-08-21 10:51:26'),
(103, 22, 4, '73.94.15.225', 'Opera/9.24 (Windows CE; nl-NL) Presto/2.10.315 Version/10.00', '2025-09-02 05:40:34'),
(104, 15, 17, '199.98.195.115', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.01; Trident/4.1)', '2025-08-24 15:46:26'),
(105, 17, 15, '129.165.221.201', 'Opera/9.24 (Windows NT 5.0; sl-SI) Presto/2.11.175 Version/10.00', '2025-09-11 13:19:32'),
(106, 15, 11, '46.134.114.114', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5342 (KHTML, like Gecko) Chrome/37.0.824.0 Mobile Safari/5342', '2025-09-12 14:34:48'),
(107, 6, 17, '177.132.218.179', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/532.9.4 (KHTML, like Gecko) Version/4.0.5 Safari/532.9.4', '2025-09-04 02:32:17'),
(108, 1, 10, '10.24.72.101', 'Opera/9.87 (Windows NT 6.1; nl-NL) Presto/2.8.226 Version/12.00', '2025-08-27 16:40:20'),
(109, 10, 11, '148.241.65.204', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows 98; Win 9x 4.90; Trident/5.0)', '2025-09-06 23:12:40'),
(110, 10, 19, '15.85.37.43', 'Mozilla/5.0 (Windows; U; Windows CE) AppleWebKit/535.33.4 (KHTML, like Gecko) Version/5.1 Safari/535.33.4', '2025-09-04 16:48:00'),
(111, 25, NULL, '182.146.210.197', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.2; Trident/5.1)', '2025-09-17 17:07:26'),
(112, 5, NULL, '188.187.74.137', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/533.0 (KHTML, like Gecko) Version/15.0 EdgiOS/87.01034.45 Mobile/15E148 Safari/533.0', '2025-08-30 18:32:02'),
(113, 11, 12, '12.64.217.242', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/5.0)', '2025-09-08 02:43:53'),
(114, 7, 11, '228.178.94.197', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.0; Trident/3.1)', '2025-09-18 01:28:06'),
(115, 22, 16, '137.112.151.12', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5330 (KHTML, like Gecko) Chrome/40.0.825.0 Mobile Safari/5330', '2025-09-10 04:43:24'),
(116, 6, 4, '89.121.37.67', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_9 rv:5.0) Gecko/20250701 Firefox/37.0', '2025-08-29 15:01:48'),
(117, 5, 17, '66.3.244.122', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20160302 Firefox/36.0', '2025-09-17 09:15:24'),
(118, 8, 15, '245.247.56.109', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_9) AppleWebKit/5322 (KHTML, like Gecko) Chrome/37.0.815.0 Mobile Safari/5322', '2025-08-24 18:06:40'),
(119, 11, 14, '18.104.229.85', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/99.0.4713.32 Safari/534.1 EdgA/99.01040.17', '2025-08-30 02:55:31'),
(120, 2, 16, '163.186.140.105', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5361 (KHTML, like Gecko) Chrome/39.0.836.0 Mobile Safari/5361', '2025-08-30 13:42:50'),
(121, 12, 14, '179.197.88.181', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5342 (KHTML, like Gecko) Chrome/36.0.889.0 Mobile Safari/5342', '2025-08-31 18:26:43'),
(122, 24, 19, '198.137.71.2', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/534.0 (KHTML, like Gecko) Chrome/83.0.4413.44 Safari/534.0 Edg/83.01142.71', '2025-09-16 08:55:29'),
(123, 22, 14, '21.157.250.156', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_9 rv:2.0) Gecko/20151210 Firefox/36.0', '2025-08-22 22:52:48'),
(124, 4, 4, '123.17.148.106', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5342 (KHTML, like Gecko) Chrome/37.0.880.0 Mobile Safari/5342', '2025-09-07 11:15:40'),
(125, 12, NULL, '139.57.162.93', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2) AppleWebKit/5331 (KHTML, like Gecko) Chrome/38.0.869.0 Mobile Safari/5331', '2025-08-29 08:49:21'),
(126, 13, 14, '173.232.172.195', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/533.0 (KHTML, like Gecko) Chrome/92.0.4715.56 Safari/533.0 EdgA/92.01054.63', '2025-09-16 14:34:27'),
(127, 7, 13, '96.196.80.119', 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/5342 (KHTML, like Gecko) Chrome/38.0.886.0 Mobile Safari/5342', '2025-09-03 00:04:18'),
(128, 25, 4, '246.1.62.99', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.0; Trident/3.1)', '2025-08-28 19:04:41'),
(129, 2, NULL, '84.133.161.53', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/534.6.5 (KHTML, like Gecko) Version/5.1 Safari/534.6.5', '2025-09-04 03:19:48'),
(130, 23, NULL, '175.191.181.9', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_8) AppleWebKit/536.0 (KHTML, like Gecko) Chrome/93.0.4511.48 Safari/536.0 Edg/93.01094.27', '2025-09-03 10:09:21'),
(131, 8, 16, '25.242.244.63', 'Opera/9.77 (Windows 95; sl-SI) Presto/2.8.247 Version/12.00', '2025-09-12 05:04:44'),
(132, 3, NULL, '62.163.112.192', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/4.1)', '2025-08-25 05:09:13'),
(133, 6, 19, '1.62.164.160', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_3 rv:5.0) Gecko/20180218 Firefox/36.0', '2025-08-27 21:10:52'),
(134, 24, 16, '69.33.218.76', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/532.0 (KHTML, like Gecko) Version/15.0 EdgiOS/86.01027.53 Mobile/15E148 Safari/532.0', '2025-08-27 21:21:57'),
(135, 11, NULL, '144.157.29.174', 'Mozilla/5.0 (Windows NT 5.0; nl-NL; rv:1.9.0.20) Gecko/20130426 Firefox/36.0', '2025-08-20 07:05:05'),
(136, 3, 19, '5.159.118.91', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_3) AppleWebKit/5340 (KHTML, like Gecko) Chrome/39.0.888.0 Mobile Safari/5340', '2025-09-15 07:23:34'),
(137, 14, 10, '60.90.142.114', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_2 rv:3.0; nl-NL) AppleWebKit/533.37.2 (KHTML, like Gecko) Version/4.0.3 Safari/533.37.2', '2025-09-06 23:45:05'),
(138, 6, 14, '111.241.141.240', 'Mozilla/5.0 (Windows 98) AppleWebKit/5352 (KHTML, like Gecko) Chrome/40.0.827.0 Mobile Safari/5352', '2025-09-08 23:38:10'),
(139, 8, 13, '54.90.199.251', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_0 rv:6.0) Gecko/20161211 Firefox/35.0', '2025-08-20 01:02:40'),
(140, 12, NULL, '180.34.38.99', 'Mozilla/5.0 (Windows NT 5.0; sl-SI; rv:1.9.0.20) Gecko/20131017 Firefox/35.0', '2025-08-29 09:14:54'),
(141, 19, 10, '118.228.255.179', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20120326 Firefox/36.0', '2025-09-05 08:41:28'),
(142, 14, 19, '106.181.246.180', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/535.1 (KHTML, like Gecko) Version/15.0 EdgiOS/98.01140.44 Mobile/15E148 Safari/535.1', '2025-09-05 03:45:48'),
(143, 17, 18, '214.157.181.243', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5330 (KHTML, like Gecko) Chrome/40.0.832.0 Mobile Safari/5330', '2025-09-01 22:06:51'),
(144, 1, 14, '169.161.138.32', 'Mozilla/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; sl-SI) AppleWebKit/531.49.2 (KHTML, like Gecko) Version/3.0.5 Mobile/8B117 Safari/6531.49.2', '2025-09-17 12:39:27'),
(145, 21, 18, '163.206.161.56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X; sl-SI) AppleWebKit/535.43.1 (KHTML, like Gecko) Version/3.0.5 Mobile/8B114 Safari/6535.43.1', '2025-08-20 18:11:49'),
(146, 11, NULL, '184.50.102.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5 rv:4.0) Gecko/20110426 Firefox/37.0', '2025-09-16 00:39:08'),
(147, 14, 15, '117.65.46.218', 'Opera/9.88 (Windows NT 6.1; en-US) Presto/2.10.273 Version/10.00', '2025-09-05 23:26:47'),
(148, 7, 18, '86.109.100.59', 'Opera/8.84 (Windows NT 4.0; nl-NL) Presto/2.9.199 Version/10.00', '2025-09-05 16:31:26'),
(149, 15, 10, '207.177.163.187', 'Mozilla/5.0 (Windows CE) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/83.0.4101.94 Safari/531.2 Edg/83.01089.49', '2025-09-07 03:21:17'),
(150, 23, 12, '189.84.189.227', 'Mozilla/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; en-US) AppleWebKit/533.16.2 (KHTML, like Gecko) Version/3.0.5 Mobile/8B111 Safari/6533.16.2', '2025-08-26 21:32:31'),
(151, 15, 18, '39.176.79.184', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 4.0; Trident/3.1)', '2025-08-21 04:50:29'),
(152, 13, NULL, '38.197.155.34', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X; sl-SI) AppleWebKit/532.32.7 (KHTML, like Gecko) Version/4.0.5 Mobile/8B113 Safari/6532.32.7', '2025-09-14 02:58:03'),
(153, 20, NULL, '166.106.211.237', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_1 like Mac OS X) AppleWebKit/537.0 (KHTML, like Gecko) Version/15.0 EdgiOS/99.01077.36 Mobile/15E148 Safari/537.0', '2025-09-14 13:34:18'),
(154, 6, 10, '205.167.183.197', 'Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/96.0.4130.80 Safari/535.1 Edg/96.01053.56', '2025-08-20 10:26:11'),
(155, 2, NULL, '91.192.66.124', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_9 rv:2.0) Gecko/20170802 Firefox/35.0', '2025-08-24 03:49:23'),
(156, 18, 4, '115.181.47.157', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20111017 Firefox/37.0', '2025-08-21 15:13:28'),
(157, 3, 11, '17.38.213.33', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 4.0; Trident/3.0)', '2025-09-05 22:43:06'),
(158, 20, 15, '33.178.72.30', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_6 rv:6.0) Gecko/20240701 Firefox/35.0', '2025-09-16 23:17:18'),
(159, 1, 17, '59.21.158.172', 'Mozilla/5.0 (iPad; CPU OS 7_2_1 like Mac OS X; en-US) AppleWebKit/534.3.5 (KHTML, like Gecko) Version/4.0.5 Mobile/8B118 Safari/6534.3.5', '2025-08-23 17:35:41'),
(160, 20, 17, '224.186.196.155', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5332 (KHTML, like Gecko) Chrome/38.0.864.0 Mobile Safari/5332', '2025-08-20 12:05:26'),
(161, 5, 14, '73.168.241.184', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.0; Trident/3.1)', '2025-09-11 11:18:32'),
(162, 7, NULL, '189.112.107.56', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.0; Trident/5.1)', '2025-09-16 23:06:21'),
(163, 1, NULL, '247.184.150.96', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X; nl-NL) AppleWebKit/535.19.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B119 Safari/6535.19.7', '2025-09-02 17:27:42'),
(164, 25, 19, '180.56.124.20', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20170123 Firefox/37.0', '2025-09-15 20:55:32'),
(165, 21, 16, '73.86.185.79', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5332 (KHTML, like Gecko) Chrome/37.0.891.0 Mobile Safari/5332', '2025-08-23 15:15:30'),
(166, 20, NULL, '94.217.154.22', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.1; Trident/3.1)', '2025-09-14 19:03:59'),
(167, 8, 13, '105.218.50.138', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.2; Trident/3.1)', '2025-08-31 16:56:46'),
(168, 20, 19, '27.185.135.224', 'Mozilla/5.0 (Windows 98) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/89.0.4344.73 Safari/537.2 Edg/89.01064.49', '2025-09-04 16:35:38'),
(169, 22, 16, '136.128.54.87', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 95; Trident/5.0)', '2025-08-27 13:53:37'),
(170, 1, 12, '90.27.130.53', 'Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20130822 Firefox/35.0', '2025-08-28 19:14:25'),
(171, 14, 4, '134.123.83.84', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows 95; Trident/3.1)', '2025-09-11 04:09:30'),
(172, 4, 4, '63.67.245.58', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.1; Trident/4.0)', '2025-09-07 02:46:52'),
(173, 14, NULL, '1.123.103.40', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_7) AppleWebKit/5330 (KHTML, like Gecko) Chrome/37.0.870.0 Mobile Safari/5330', '2025-08-29 19:39:33'),
(174, 5, NULL, '200.114.187.248', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.0; Trident/4.0)', '2025-09-02 19:42:50'),
(175, 2, 19, '94.125.13.231', 'Opera/9.77 (Windows NT 4.0; sl-SI) Presto/2.11.217 Version/11.00', '2025-09-11 17:10:31'),
(176, 21, 16, '152.63.31.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_1) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/85.0.4409.46 Safari/537.2 Edg/85.01012.95', '2025-09-13 07:42:11'),
(177, 15, 16, '14.213.236.212', 'Opera/9.82 (X11; Linux i686; nl-NL) Presto/2.8.179 Version/10.00', '2025-09-02 23:09:35'),
(178, 4, 13, '163.187.64.204', 'Mozilla/5.0 (Windows 98; en-US; rv:1.9.0.20) Gecko/20121203 Firefox/37.0', '2025-08-31 13:21:22'),
(179, 16, 13, '71.171.252.17', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20221014 Firefox/36.0', '2025-08-21 06:51:41'),
(180, 19, 11, '255.233.207.239', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_0 like Mac OS X) AppleWebKit/534.1 (KHTML, like Gecko) Version/15.0 EdgiOS/80.01027.30 Mobile/15E148 Safari/534.1', '2025-08-27 15:05:38'),
(181, 3, 13, '193.85.187.14', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5352 (KHTML, like Gecko) Chrome/37.0.889.0 Mobile Safari/5352', '2025-08-27 00:48:54'),
(182, 10, 10, '24.139.213.199', 'Mozilla/5.0 (Windows NT 5.0; nl-NL; rv:1.9.1.20) Gecko/20210625 Firefox/36.0', '2025-08-22 07:41:57'),
(183, 11, 4, '110.213.25.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_9 rv:2.0; sl-SI) AppleWebKit/532.14.3 (KHTML, like Gecko) Version/5.0 Safari/532.14.3', '2025-08-25 20:21:31'),
(184, 24, NULL, '166.171.191.12', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20161105 Firefox/37.0', '2025-09-05 13:28:21'),
(185, 20, 10, '122.12.130.252', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 5.0; Trident/4.1)', '2025-08-20 11:18:27'),
(186, 17, NULL, '205.8.208.95', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_3) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/93.0.4757.16 Safari/537.1 Edg/93.01073.6', '2025-08-25 05:05:13'),
(187, 4, 10, '204.251.147.109', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5341 (KHTML, like Gecko) Chrome/38.0.835.0 Mobile Safari/5341', '2025-08-25 02:03:07'),
(188, 3, 13, '100.136.51.219', 'Mozilla/5.0 (iPad; CPU OS 8_2_2 like Mac OS X; sl-SI) AppleWebKit/534.24.5 (KHTML, like Gecko) Version/3.0.5 Mobile/8B116 Safari/6534.24.5', '2025-08-25 12:40:18'),
(189, 13, 14, '183.194.16.226', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20230628 Firefox/37.0', '2025-09-03 10:15:37'),
(190, 21, NULL, '136.176.206.220', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/536.0 (KHTML, like Gecko) Chrome/81.0.4090.42 Safari/536.0 EdgA/81.01041.44', '2025-08-20 00:28:30'),
(191, 14, 11, '230.19.160.16', 'Opera/9.47 (X11; Linux i686; en-US) Presto/2.8.183 Version/10.00', '2025-08-23 18:51:21'),
(192, 3, 11, '8.11.207.234', 'Opera/8.60 (X11; Linux i686; sl-SI) Presto/2.8.310 Version/12.00', '2025-08-21 15:55:40'),
(193, 25, NULL, '18.212.10.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_1 like Mac OS X) AppleWebKit/537.1 (KHTML, like Gecko) Version/15.0 EdgiOS/82.01047.85 Mobile/15E148 Safari/537.1', '2025-08-25 16:48:05'),
(194, 13, 11, '140.65.209.135', 'Opera/8.67 (Windows NT 5.2; en-US) Presto/2.9.176 Version/12.00', '2025-08-31 22:58:44'),
(195, 3, NULL, '95.96.102.67', 'Mozilla/5.0 (iPad; CPU OS 8_2_1 like Mac OS X; en-US) AppleWebKit/535.30.5 (KHTML, like Gecko) Version/4.0.5 Mobile/8B115 Safari/6535.30.5', '2025-09-15 02:01:22'),
(196, 12, NULL, '36.64.235.110', 'Mozilla/5.0 (Windows CE; en-US; rv:1.9.2.20) Gecko/20130228 Firefox/37.0', '2025-09-12 19:20:50'),
(197, 2, NULL, '78.226.102.34', 'Mozilla/5.0 (Windows NT 6.0; nl-NL; rv:1.9.2.20) Gecko/20231107 Firefox/35.0', '2025-09-08 15:14:36'),
(198, 4, 16, '92.133.38.235', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_1 rv:3.0; sl-SI) AppleWebKit/534.21.3 (KHTML, like Gecko) Version/5.0.5 Safari/534.21.3', '2025-09-07 02:09:30'),
(199, 10, 18, '12.238.89.9', 'Opera/8.16 (X11; Linux i686; nl-NL) Presto/2.12.278 Version/10.00', '2025-09-15 18:09:28'),
(200, 21, 10, '243.78.137.211', 'Mozilla/5.0 (Windows; U; Windows NT 5.1) AppleWebKit/535.31.1 (KHTML, like Gecko) Version/5.0 Safari/535.31.1', '2025-09-13 08:49:00'),
(201, 1, 13, '209.247.210.78', 'Opera/8.89 (X11; Linux i686; sl-SI) Presto/2.9.199 Version/11.00', '2025-09-02 20:17:08'),
(202, 1, 17, '84.61.215.142', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.2; Trident/5.1)', '2025-09-15 00:05:20'),
(203, 1, NULL, '245.166.69.251', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/97.0.4297.34 Safari/532.0 Edg/97.01128.63', '2025-09-18 02:12:08'),
(204, 1, NULL, '213.254.243.251', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_1) AppleWebKit/5321 (KHTML, like Gecko) Chrome/38.0.894.0 Mobile Safari/5321', '2025-08-23 16:39:07'),
(205, 1, 15, '190.112.143.198', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5350 (KHTML, like Gecko) Chrome/40.0.890.0 Mobile Safari/5350', '2025-09-14 05:07:54'),
(206, 1, NULL, '143.201.161.39', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 6.1; Trident/4.1)', '2025-08-21 01:51:34'),
(207, 1, 19, '156.129.192.15', 'Mozilla/5.0 (Windows 95) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/81.0.4094.10 Safari/531.2 Edg/81.01143.88', '2025-08-26 23:27:08'),
(208, 1, 13, '205.107.249.212', 'Opera/8.73 (X11; Linux x86_64; en-US) Presto/2.8.209 Version/12.00', '2025-08-26 22:51:23'),
(209, 1, 15, '69.127.1.57', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5332 (KHTML, like Gecko) Chrome/36.0.873.0 Mobile Safari/5332', '2025-08-20 14:06:19'),
(210, 1, 19, '151.143.77.172', 'Opera/8.17 (Windows 95; en-US) Presto/2.9.172 Version/12.00', '2025-09-14 04:54:08'),
(211, 1, 17, '213.250.53.92', 'Opera/8.89 (X11; Linux x86_64; nl-NL) Presto/2.12.218 Version/11.00', '2025-09-13 05:38:05'),
(212, 1, 11, '170.144.63.233', 'Mozilla/5.0 (Windows NT 6.0; sl-SI; rv:1.9.1.20) Gecko/20220602 Firefox/36.0', '2025-08-20 06:42:43'),
(213, 1, NULL, '81.54.139.224', 'Mozilla/5.0 (Windows 95; en-US; rv:1.9.1.20) Gecko/20140530 Firefox/36.0', '2025-09-07 11:16:28'),
(214, 1, 10, '201.140.56.153', 'Mozilla/5.0 (Windows; U; Windows NT 5.2) AppleWebKit/535.36.5 (KHTML, like Gecko) Version/5.0 Safari/535.36.5', '2025-08-28 00:41:20'),
(215, 1, NULL, '128.14.117.226', 'Mozilla/5.0 (Windows NT 4.0; en-US; rv:1.9.2.20) Gecko/20150114 Firefox/37.0', '2025-08-25 22:57:11'),
(216, 1, 11, '195.131.182.231', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows CE; Trident/3.0)', '2025-08-31 09:35:13'),
(217, 1, NULL, '178.107.109.64', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/3.1)', '2025-09-10 00:35:14'),
(218, 1, 4, '227.1.7.252', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/531.0 (KHTML, like Gecko) Chrome/81.0.4444.92 Safari/531.0 EdgA/81.01135.93', '2025-08-27 17:20:58'),
(219, 1, 10, '41.53.28.105', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5332 (KHTML, like Gecko) Chrome/40.0.806.0 Mobile Safari/5332', '2025-08-25 04:25:15'),
(220, 1, 12, '86.111.99.196', 'Opera/8.85 (Windows NT 6.2; en-US) Presto/2.11.260 Version/10.00', '2025-09-18 04:17:40'),
(221, 1, NULL, '6.217.252.29', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_1) AppleWebKit/5341 (KHTML, like Gecko) Chrome/37.0.844.0 Mobile Safari/5341', '2025-09-08 05:03:59'),
(222, 1, NULL, '128.120.73.22', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_0) AppleWebKit/5360 (KHTML, like Gecko) Chrome/37.0.885.0 Mobile Safari/5360', '2025-09-01 18:27:46'),
(223, 1, NULL, '62.133.195.4', 'Mozilla/5.0 (Windows 98) AppleWebKit/5350 (KHTML, like Gecko) Chrome/39.0.848.0 Mobile Safari/5350', '2025-09-08 22:09:02'),
(224, 1, 4, '176.169.104.54', 'Opera/8.82 (Windows NT 4.0; sl-SI) Presto/2.10.302 Version/11.00', '2025-08-23 14:34:24'),
(225, 1, NULL, '142.142.71.153', 'Mozilla/5.0 (Windows NT 5.01) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/97.0.4367.63 Safari/537.1 Edg/97.01116.0', '2025-09-18 16:32:08'),
(226, 1, NULL, '250.150.34.134', 'Opera/8.83 (Windows NT 6.0; nl-NL) Presto/2.10.218 Version/12.00', '2025-09-14 06:48:35'),
(227, 1, NULL, '105.113.82.110', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_1 rv:2.0) Gecko/20171027 Firefox/35.0', '2025-08-21 06:12:25'),
(228, 1, 14, '208.54.180.58', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/96.0.4043.99 Safari/533.2 Edg/96.01028.37', '2025-09-02 20:25:31'),
(229, 1, NULL, '239.173.185.128', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/531.50.5 (KHTML, like Gecko) Version/4.0.1 Safari/531.50.5', '2025-08-23 00:40:59'),
(230, 1, NULL, '177.68.85.196', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5362 (KHTML, like Gecko) Chrome/40.0.889.0 Mobile Safari/5362', '2025-09-05 11:26:25'),
(231, 1, NULL, '209.241.205.129', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/3.0)', '2025-08-21 19:53:39'),
(232, 1, 18, '158.10.119.75', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/92.0.4345.16 Safari/532.2 EdgA/92.01013.35', '2025-08-21 16:46:12'),
(233, 1, 4, '12.189.35.103', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 98; Win 9x 4.90; Trident/4.0)', '2025-09-11 05:42:13'),
(234, 1, 4, '92.203.227.212', 'Mozilla/5.0 (X11; Linux x86_64; rv:7.0) Gecko/20221212 Firefox/36.0', '2025-08-26 03:11:04'),
(235, 1, NULL, '124.66.135.84', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5351 (KHTML, like Gecko) Chrome/36.0.800.0 Mobile Safari/5351', '2025-08-31 23:23:34'),
(236, 1, NULL, '239.219.158.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/534.1 (KHTML, like Gecko) Version/15.0 EdgiOS/97.01095.10 Mobile/15E148 Safari/534.1', '2025-09-16 06:06:19'),
(237, 2, NULL, '114.254.209.28', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/536.1 (KHTML, like Gecko) Version/15.0 EdgiOS/84.01054.3 Mobile/15E148 Safari/536.1', '2025-08-25 15:28:18'),
(238, 2, NULL, '19.244.201.5', 'Opera/9.44 (X11; Linux x86_64; sl-SI) Presto/2.8.349 Version/10.00', '2025-09-11 05:53:35'),
(239, 2, 15, '19.87.89.56', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20100506 Firefox/37.0', '2025-08-27 23:22:18'),
(240, 2, NULL, '149.7.69.83', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/534.0 (KHTML, like Gecko) Chrome/83.0.4641.16 Safari/534.0 Edg/83.01088.11', '2025-08-21 13:17:00'),
(241, 2, NULL, '9.0.5.46', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/534.43.1 (KHTML, like Gecko) Version/5.0.3 Safari/534.43.1', '2025-09-05 12:21:29'),
(242, 2, 12, '115.121.12.64', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5341 (KHTML, like Gecko) Chrome/37.0.857.0 Mobile Safari/5341', '2025-09-01 13:44:02'),
(243, 2, NULL, '32.153.167.44', 'Opera/9.90 (Windows NT 6.0; en-US) Presto/2.12.163 Version/10.00', '2025-09-15 08:49:06'),
(244, 2, 16, '128.216.73.72', 'Opera/8.35 (X11; Linux x86_64; sl-SI) Presto/2.12.196 Version/12.00', '2025-08-27 07:58:04'),
(245, 2, 15, '87.203.179.135', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/96.0.4088.43 Safari/535.2 EdgA/96.01005.64', '2025-09-18 00:02:48'),
(246, 2, NULL, '234.109.56.157', 'Mozilla/5.0 (iPad; CPU OS 7_2_2 like Mac OS X; sl-SI) AppleWebKit/532.8.3 (KHTML, like Gecko) Version/4.0.5 Mobile/8B114 Safari/6532.8.3', '2025-09-17 06:08:49'),
(247, 2, 14, '43.92.132.208', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_1) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/95.0.4429.53 Safari/531.2 Edg/95.01078.20', '2025-09-15 13:54:37'),
(248, 2, 15, '62.80.226.65', 'Mozilla/5.0 (Windows; U; Windows NT 6.1) AppleWebKit/535.47.4 (KHTML, like Gecko) Version/4.0.4 Safari/535.47.4', '2025-08-30 21:48:41'),
(249, 2, 17, '232.62.6.146', 'Opera/9.20 (Windows 98; Win 9x 4.90; nl-NL) Presto/2.10.341 Version/10.00', '2025-09-07 06:55:06'),
(250, 2, NULL, '48.105.188.30', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/534.20.4 (KHTML, like Gecko) Version/5.0.4 Safari/534.20.4', '2025-08-29 12:07:35'),
(251, 2, 17, '127.95.83.75', 'Mozilla/5.0 (Windows 98) AppleWebKit/536.0 (KHTML, like Gecko) Chrome/97.0.4700.93 Safari/536.0 Edg/97.01036.79', '2025-08-29 04:30:17'),
(252, 2, 14, '245.149.144.151', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_5 rv:4.0) Gecko/20210919 Firefox/37.0', '2025-08-20 19:42:22'),
(253, 2, 19, '184.10.87.188', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5330 (KHTML, like Gecko) Chrome/38.0.897.0 Mobile Safari/5330', '2025-09-09 23:37:42'),
(254, 2, 18, '177.69.17.244', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows 95; Trident/5.1)', '2025-08-30 18:57:00'),
(255, 2, 18, '108.197.109.233', 'Mozilla/5.0 (Windows 95) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/87.0.4555.97 Safari/537.2 Edg/87.01136.31', '2025-08-20 08:25:39'),
(256, 2, 11, '108.194.74.58', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.01; Trident/4.0)', '2025-09-01 22:23:53'),
(257, 2, NULL, '161.65.247.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_2 rv:3.0; en-US) AppleWebKit/535.16.6 (KHTML, like Gecko) Version/5.0 Safari/535.16.6', '2025-08-21 04:46:16'),
(258, 2, 16, '50.153.221.193', 'Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20211214 Firefox/37.0', '2025-08-21 14:25:42'),
(259, 2, 4, '73.43.70.131', 'Mozilla/5.0 (Windows NT 5.01) AppleWebKit/5351 (KHTML, like Gecko) Chrome/40.0.807.0 Mobile Safari/5351', '2025-08-26 21:37:28'),
(260, 2, 10, '164.40.194.147', 'Opera/9.99 (Windows CE; sl-SI) Presto/2.9.175 Version/10.00', '2025-09-01 05:49:10'),
(261, 2, 13, '234.36.234.89', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/534.2 (KHTML, like Gecko) Chrome/96.0.4484.92 Safari/534.2 EdgA/96.01122.91', '2025-08-27 21:10:14'),
(262, 2, 15, '52.119.4.252', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.0 (KHTML, like Gecko) Chrome/89.0.4175.14 Safari/536.0 Edg/89.01041.95', '2025-08-30 17:24:26'),
(263, 2, NULL, '148.113.63.47', 'Mozilla/5.0 (Windows 95) AppleWebKit/5331 (KHTML, like Gecko) Chrome/36.0.850.0 Mobile Safari/5331', '2025-08-27 07:23:30'),
(264, 2, NULL, '20.11.138.125', 'Opera/9.79 (X11; Linux i686; nl-NL) Presto/2.11.233 Version/12.00', '2025-08-28 07:19:57'),
(265, 2, NULL, '5.126.86.194', 'Opera/8.53 (Windows 95; en-US) Presto/2.9.244 Version/12.00', '2025-09-13 09:43:48'),
(266, 2, NULL, '194.171.211.1', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_2) AppleWebKit/5312 (KHTML, like Gecko) Chrome/37.0.836.0 Mobile Safari/5312', '2025-08-29 01:05:26'),
(267, 2, 4, '136.134.31.70', 'Opera/9.68 (Windows NT 5.2; en-US) Presto/2.12.194 Version/12.00', '2025-08-29 23:51:42'),
(268, 2, NULL, '116.10.152.76', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/536.1 (KHTML, like Gecko) Chrome/84.0.4378.53 Safari/536.1 Edg/84.01069.40', '2025-09-09 22:21:24'),
(269, 2, 12, '115.244.187.34', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.1; Trident/5.1)', '2025-09-08 13:51:11'),
(270, 3, NULL, '39.97.242.9', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 98; Win 9x 4.90; Trident/3.0)', '2025-09-14 00:27:34'),
(271, 3, 19, '71.213.141.206', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/5361 (KHTML, like Gecko) Chrome/38.0.824.0 Mobile Safari/5361', '2025-08-23 03:40:20'),
(272, 3, NULL, '60.77.37.126', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_2 like Mac OS X) AppleWebKit/537.0 (KHTML, like Gecko) Version/15.0 EdgiOS/81.01142.43 Mobile/15E148 Safari/537.0', '2025-08-28 09:34:34'),
(273, 3, NULL, '15.163.231.202', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_5) AppleWebKit/5340 (KHTML, like Gecko) Chrome/36.0.842.0 Mobile Safari/5340', '2025-08-26 06:22:03'),
(274, 3, 12, '12.118.26.137', 'Opera/9.44 (X11; Linux x86_64; en-US) Presto/2.11.251 Version/11.00', '2025-09-08 03:13:32'),
(275, 3, 15, '100.89.1.206', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.01; Trident/4.1)', '2025-08-23 04:21:53'),
(276, 3, 4, '44.54.144.83', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_5 rv:2.0; en-US) AppleWebKit/535.21.4 (KHTML, like Gecko) Version/4.0.4 Safari/535.21.4', '2025-09-11 12:33:48'),
(277, 3, 16, '75.41.64.0', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 4.0; Trident/4.1)', '2025-08-23 18:38:45'),
(278, 3, 13, '147.25.202.70', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/95.0.4777.20 Safari/531.2 EdgA/95.01021.82', '2025-08-22 07:58:40'),
(279, 3, 19, '8.6.143.55', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows 95; Trident/5.0)', '2025-08-24 13:16:52'),
(280, 3, NULL, '96.156.88.25', 'Opera/9.55 (X11; Linux x86_64; nl-NL) Presto/2.11.210 Version/11.00', '2025-08-29 22:47:14'),
(281, 3, 19, '34.135.170.126', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_6 rv:2.0) Gecko/20240229 Firefox/35.0', '2025-09-12 11:33:57'),
(282, 3, 4, '142.95.168.192', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5311 (KHTML, like Gecko) Chrome/38.0.896.0 Mobile Safari/5311', '2025-09-02 04:03:41'),
(283, 3, NULL, '165.30.204.74', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5311 (KHTML, like Gecko) Chrome/36.0.844.0 Mobile Safari/5311', '2025-08-25 10:59:27'),
(284, 3, NULL, '184.64.57.191', 'Opera/9.37 (Windows NT 6.0; en-US) Presto/2.12.336 Version/11.00', '2025-08-23 17:44:42'),
(285, 3, NULL, '135.83.188.248', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_3) AppleWebKit/5342 (KHTML, like Gecko) Chrome/36.0.852.0 Mobile Safari/5342', '2025-08-27 00:46:25'),
(286, 3, 12, '246.68.33.254', 'Opera/9.72 (X11; Linux x86_64; en-US) Presto/2.12.195 Version/12.00', '2025-08-20 00:37:08'),
(287, 3, 18, '118.64.66.1', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5350 (KHTML, like Gecko) Chrome/37.0.808.0 Mobile Safari/5350', '2025-09-16 10:44:17'),
(288, 3, NULL, '229.142.129.13', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20170403 Firefox/37.0', '2025-09-07 08:55:51'),
(289, 3, NULL, '203.90.199.188', 'Opera/8.53 (Windows NT 4.0; sl-SI) Presto/2.9.292 Version/11.00', '2025-09-16 12:01:47'),
(290, 3, NULL, '87.211.202.51', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_7 rv:4.0; sl-SI) AppleWebKit/534.31.2 (KHTML, like Gecko) Version/5.0.1 Safari/534.31.2', '2025-09-07 14:14:27'),
(291, 3, 11, '165.11.38.227', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20151128 Firefox/35.0', '2025-08-23 03:07:03'),
(292, 3, 12, '107.10.12.241', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_8 rv:3.0) Gecko/20240111 Firefox/35.0', '2025-09-14 02:29:30'),
(293, 3, 17, '68.26.25.153', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/87.0.4331.83 Safari/533.1 Edg/87.01003.11', '2025-09-16 11:43:21'),
(294, 3, 14, '107.37.223.110', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/5340 (KHTML, like Gecko) Chrome/36.0.891.0 Mobile Safari/5340', '2025-08-22 14:24:03'),
(295, 3, 19, '114.243.125.220', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/3.0)', '2025-08-20 22:00:46'),
(296, 3, NULL, '147.162.160.205', 'Opera/9.92 (Windows 98; nl-NL) Presto/2.12.283 Version/12.00', '2025-08-25 05:46:18'),
(297, 3, 11, '98.193.139.75', 'Mozilla/5.0 (Windows NT 5.0) AppleWebKit/5310 (KHTML, like Gecko) Chrome/40.0.889.0 Mobile Safari/5310', '2025-08-29 19:52:58'),
(298, 3, NULL, '250.224.106.133', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7 rv:6.0) Gecko/20210523 Firefox/37.0', '2025-09-09 07:50:48'),
(299, 3, 11, '128.32.121.78', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/98.0.4088.79 Safari/533.1 EdgA/98.01085.10', '2025-09-14 19:22:37'),
(300, 3, NULL, '146.29.156.67', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows 98; Trident/3.0)', '2025-09-06 13:17:27'),
(301, 3, 4, '93.185.26.248', 'Opera/8.49 (Windows CE; en-US) Presto/2.8.300 Version/11.00', '2025-09-11 07:41:05'),
(302, 3, NULL, '249.8.119.162', 'Opera/9.28 (Windows NT 6.2; en-US) Presto/2.12.279 Version/12.00', '2025-09-12 19:47:32'),
(303, 3, NULL, '112.223.118.0', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5320 (KHTML, like Gecko) Chrome/36.0.861.0 Mobile Safari/5320', '2025-08-28 05:20:13'),
(304, 3, 15, '250.60.4.229', 'Opera/8.97 (X11; Linux i686; nl-NL) Presto/2.10.225 Version/11.00', '2025-09-08 11:20:51'),
(305, 3, NULL, '200.200.17.87', 'Mozilla/5.0 (Windows NT 5.1; sl-SI; rv:1.9.0.20) Gecko/20240619 Firefox/35.0', '2025-09-03 00:30:10'),
(306, 3, 12, '175.126.254.139', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2_2 like Mac OS X; sl-SI) AppleWebKit/535.4.4 (KHTML, like Gecko) Version/4.0.5 Mobile/8B113 Safari/6535.4.4', '2025-09-18 12:07:18'),
(307, 3, 16, '40.145.80.254', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_1) AppleWebKit/531.0 (KHTML, like Gecko) Chrome/82.0.4578.81 Safari/531.0 Edg/82.01139.65', '2025-08-25 22:14:15'),
(308, 3, 10, '15.141.246.83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4 rv:4.0; en-US) AppleWebKit/534.2.5 (KHTML, like Gecko) Version/4.1 Safari/534.2.5', '2025-08-30 19:07:06'),
(309, 3, NULL, '204.83.140.193', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/79.0.4416.92 Safari/533.2 Edg/79.01058.24', '2025-09-18 14:12:26'),
(310, 3, 11, '245.93.189.4', 'Mozilla/5.0 (Windows 95; nl-NL; rv:1.9.1.20) Gecko/20151025 Firefox/37.0', '2025-08-22 13:17:40'),
(311, 3, 16, '15.150.68.134', 'Opera/8.21 (X11; Linux x86_64; nl-NL) Presto/2.9.205 Version/11.00', '2025-09-01 15:12:11'),
(312, 3, 18, '10.194.71.38', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20190519 Firefox/36.0', '2025-09-15 22:07:02'),
(313, 3, 10, '197.110.156.120', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_6) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/93.0.4162.87 Safari/537.1 Edg/93.01025.93', '2025-08-24 10:17:33'),
(314, 3, NULL, '28.100.32.3', 'Opera/8.54 (X11; Linux x86_64; sl-SI) Presto/2.11.199 Version/11.00', '2025-09-06 10:11:03'),
(315, 3, NULL, '118.201.30.114', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_7) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/85.0.4152.21 Safari/532.0 Edg/85.01126.44', '2025-08-23 22:25:26'),
(316, 3, 18, '114.96.227.212', 'Mozilla/5.0 (Windows 98; Win 9x 4.90) AppleWebKit/5310 (KHTML, like Gecko) Chrome/36.0.868.0 Mobile Safari/5310', '2025-09-17 11:18:49'),
(317, 3, 19, '19.216.81.13', 'Mozilla/5.0 (iPad; CPU OS 8_1_2 like Mac OS X; sl-SI) AppleWebKit/535.31.2 (KHTML, like Gecko) Version/3.0.5 Mobile/8B116 Safari/6535.31.2', '2025-09-14 19:38:02'),
(318, 3, 13, '55.98.195.145', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.0; Trident/4.1)', '2025-08-25 13:02:04'),
(319, 3, NULL, '193.154.231.54', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/5341 (KHTML, like Gecko) Chrome/38.0.858.0 Mobile Safari/5341', '2025-08-28 10:49:45'),
(320, 4, 14, '37.201.6.102', 'Opera/9.98 (Windows NT 5.2; sl-SI) Presto/2.9.203 Version/11.00', '2025-08-26 09:20:35'),
(321, 4, NULL, '118.173.137.165', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5 rv:6.0) Gecko/20130810 Firefox/37.0', '2025-09-15 20:23:11'),
(322, 4, 12, '193.145.90.24', 'Opera/9.36 (X11; Linux x86_64; en-US) Presto/2.10.338 Version/11.00', '2025-08-23 10:18:14'),
(323, 4, 17, '93.112.141.206', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_1) AppleWebKit/5361 (KHTML, like Gecko) Chrome/40.0.837.0 Mobile Safari/5361', '2025-09-09 07:54:45'),
(324, 4, 13, '248.147.171.116', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0 rv:2.0) Gecko/20130126 Firefox/36.0', '2025-09-04 04:48:39'),
(325, 4, 4, '129.221.52.124', 'Mozilla/5.0 (iPad; CPU OS 8_0_1 like Mac OS X; en-US) AppleWebKit/533.33.1 (KHTML, like Gecko) Version/4.0.5 Mobile/8B116 Safari/6533.33.1', '2025-09-03 19:23:47'),
(326, 4, NULL, '242.83.241.168', 'Opera/9.54 (Windows 98; nl-NL) Presto/2.10.283 Version/11.00', '2025-08-28 02:07:25'),
(327, 4, 11, '160.245.212.157', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/4.1)', '2025-09-07 21:45:18'),
(328, 4, 13, '187.218.42.103', 'Mozilla/5.0 (Windows CE; en-US; rv:1.9.1.20) Gecko/20170428 Firefox/36.0', '2025-09-11 08:08:29'),
(329, 4, 14, '47.183.64.67', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5341 (KHTML, like Gecko) Chrome/38.0.855.0 Mobile Safari/5341', '2025-08-30 09:16:15'),
(330, 4, NULL, '250.148.24.156', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.2; Trident/4.0)', '2025-08-21 10:48:06'),
(331, 4, NULL, '231.59.49.100', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/3.1)', '2025-09-11 20:39:12'),
(332, 4, 12, '140.16.63.233', 'Opera/9.54 (Windows 98; sl-SI) Presto/2.12.279 Version/10.00', '2025-09-10 17:05:28'),
(333, 4, NULL, '214.152.124.132', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 5.1; Trident/4.1)', '2025-09-10 23:00:52');
INSERT INTO `property_views` (`id`, `property_id`, `user_id`, `ip_address`, `user_agent`, `viewed_at`) VALUES
(334, 4, 18, '155.8.254.107', 'Opera/9.90 (X11; Linux x86_64; en-US) Presto/2.10.239 Version/11.00', '2025-08-28 14:14:02'),
(335, 4, 14, '33.13.76.15', 'Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20100727 Firefox/37.0', '2025-09-12 22:32:23'),
(336, 4, 12, '184.142.65.116', 'Mozilla/5.0 (Windows NT 6.1; nl-NL; rv:1.9.1.20) Gecko/20160519 Firefox/37.0', '2025-08-28 02:33:24'),
(337, 4, NULL, '251.106.14.7', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20120313 Firefox/36.0', '2025-09-03 09:15:51'),
(338, 4, NULL, '241.243.172.0', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/5352 (KHTML, like Gecko) Chrome/36.0.825.0 Mobile Safari/5352', '2025-08-23 05:59:21'),
(339, 4, 18, '139.221.32.136', 'Opera/8.45 (Windows NT 6.1; nl-NL) Presto/2.8.197 Version/12.00', '2025-08-25 23:50:29'),
(340, 4, NULL, '57.20.26.190', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_8 rv:3.0) Gecko/20190922 Firefox/35.0', '2025-09-05 15:13:42'),
(341, 4, NULL, '138.149.16.202', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5362 (KHTML, like Gecko) Chrome/38.0.815.0 Mobile Safari/5362', '2025-08-30 23:36:08'),
(342, 4, 12, '14.101.234.45', 'Mozilla/5.0 (Windows NT 4.0) AppleWebKit/5332 (KHTML, like Gecko) Chrome/36.0.814.0 Mobile Safari/5332', '2025-09-07 21:48:51'),
(343, 4, NULL, '242.140.50.225', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_2) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/95.0.4610.44 Safari/533.1 Edg/95.01086.45', '2025-09-18 00:57:00'),
(344, 4, 18, '198.211.91.188', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_3) AppleWebKit/5332 (KHTML, like Gecko) Chrome/38.0.836.0 Mobile Safari/5332', '2025-09-08 23:33:59'),
(345, 4, NULL, '68.215.23.199', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5352 (KHTML, like Gecko) Chrome/36.0.844.0 Mobile Safari/5352', '2025-08-28 16:08:56'),
(346, 4, 4, '188.161.35.45', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5340 (KHTML, like Gecko) Chrome/39.0.885.0 Mobile Safari/5340', '2025-08-20 07:14:23'),
(347, 4, NULL, '168.167.154.139', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_2) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/97.0.4348.85 Safari/533.1 Edg/97.01010.2', '2025-08-26 04:14:38'),
(348, 4, NULL, '255.187.224.77', 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/534.0 (KHTML, like Gecko) Chrome/96.0.4338.70 Safari/534.0 Edg/96.01021.67', '2025-08-28 14:30:49'),
(349, 4, 4, '242.143.17.67', 'Mozilla/5.0 (iPad; CPU OS 7_0_1 like Mac OS X; en-US) AppleWebKit/533.39.7 (KHTML, like Gecko) Version/4.0.5 Mobile/8B116 Safari/6533.39.7', '2025-08-29 06:47:35'),
(350, 4, 11, '75.14.158.196', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_3) AppleWebKit/5312 (KHTML, like Gecko) Chrome/38.0.867.0 Mobile Safari/5312', '2025-08-22 07:26:22'),
(351, 4, NULL, '49.38.176.57', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/536.1 (KHTML, like Gecko) Chrome/84.0.4094.97 Safari/536.1 Edg/84.01128.67', '2025-08-21 05:15:27'),
(352, 4, NULL, '134.36.36.205', 'Mozilla/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit/535.48.2 (KHTML, like Gecko) Version/5.0 Safari/535.48.2', '2025-09-05 16:04:02'),
(353, 4, 15, '134.46.2.162', 'Opera/9.37 (X11; Linux i686; nl-NL) Presto/2.8.163 Version/11.00', '2025-09-06 03:12:02'),
(354, 4, NULL, '47.54.5.54', 'Opera/9.49 (Windows NT 6.0; sl-SI) Presto/2.9.328 Version/10.00', '2025-09-08 05:31:15'),
(355, 4, NULL, '161.27.147.159', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_8) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/80.0.4168.54 Safari/535.1 Edg/80.01015.39', '2025-08-26 08:26:37'),
(356, 4, NULL, '36.255.231.156', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20160613 Firefox/37.0', '2025-08-30 11:58:39'),
(357, 4, 4, '200.67.216.231', 'Opera/9.80 (X11; Linux i686; nl-NL) Presto/2.8.307 Version/11.00', '2025-09-09 13:25:56'),
(358, 4, NULL, '155.157.238.217', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_4 rv:5.0; en-US) AppleWebKit/535.2.2 (KHTML, like Gecko) Version/5.0.4 Safari/535.2.2', '2025-09-13 18:55:17'),
(359, 4, 4, '179.96.186.51', 'Mozilla/5.0 (Windows NT 5.1; nl-NL; rv:1.9.0.20) Gecko/20231220 Firefox/35.0', '2025-08-26 14:31:15'),
(360, 4, NULL, '48.130.48.92', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_9 rv:5.0) Gecko/20121104 Firefox/37.0', '2025-08-23 20:03:15'),
(361, 4, 18, '70.130.99.211', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_3 rv:4.0; sl-SI) AppleWebKit/533.1.4 (KHTML, like Gecko) Version/4.0 Safari/533.1.4', '2025-08-24 23:58:09'),
(362, 4, NULL, '191.213.26.81', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_8 rv:5.0; nl-NL) AppleWebKit/534.41.5 (KHTML, like Gecko) Version/5.0 Safari/534.41.5', '2025-09-14 14:57:41'),
(363, 4, 18, '255.176.176.229', 'Opera/8.28 (X11; Linux x86_64; nl-NL) Presto/2.12.276 Version/11.00', '2025-09-06 19:56:48'),
(364, 4, 4, '121.197.103.215', 'Opera/9.29 (Windows NT 4.0; en-US) Presto/2.10.220 Version/10.00', '2025-09-15 15:59:54'),
(365, 4, 15, '44.94.125.145', 'Mozilla/5.0 (Windows NT 6.2; sl-SI; rv:1.9.2.20) Gecko/20180319 Firefox/36.0', '2025-08-22 13:19:07'),
(366, 4, NULL, '210.176.13.218', 'Mozilla/5.0 (Windows NT 4.0; sl-SI; rv:1.9.2.20) Gecko/20170418 Firefox/36.0', '2025-08-27 12:33:10'),
(367, 4, 14, '85.99.202.41', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/3.0)', '2025-09-06 23:24:44'),
(368, 4, 15, '116.107.142.4', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_6) AppleWebKit/536.2 (KHTML, like Gecko) Chrome/83.0.4428.79 Safari/536.2 Edg/83.01133.34', '2025-08-24 01:02:31'),
(369, 5, NULL, '245.237.84.252', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 6.1; Trident/5.1)', '2025-08-21 16:53:43'),
(370, 5, 15, '182.160.88.46', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/532.46.2 (KHTML, like Gecko) Version/4.0 Safari/532.46.2', '2025-08-25 07:05:37'),
(371, 5, 11, '30.49.254.145', 'Mozilla/5.0 (iPad; CPU OS 8_2_1 like Mac OS X; sl-SI) AppleWebKit/532.35.3 (KHTML, like Gecko) Version/3.0.5 Mobile/8B116 Safari/6532.35.3', '2025-09-18 14:39:30'),
(372, 5, 10, '116.167.222.144', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5310 (KHTML, like Gecko) Chrome/37.0.897.0 Mobile Safari/5310', '2025-08-26 20:52:38'),
(373, 5, NULL, '232.27.81.57', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5341 (KHTML, like Gecko) Chrome/36.0.826.0 Mobile Safari/5341', '2025-09-17 16:19:33'),
(374, 5, 16, '116.56.182.172', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_1 rv:5.0) Gecko/20160519 Firefox/35.0', '2025-08-26 01:20:02'),
(375, 5, NULL, '219.127.166.166', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5322 (KHTML, like Gecko) Chrome/38.0.877.0 Mobile Safari/5322', '2025-09-06 19:16:24'),
(376, 5, NULL, '133.45.220.196', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_9) AppleWebKit/5360 (KHTML, like Gecko) Chrome/40.0.828.0 Mobile Safari/5360', '2025-09-03 08:47:38'),
(377, 5, NULL, '206.230.208.102', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_9 rv:6.0; en-US) AppleWebKit/532.49.1 (KHTML, like Gecko) Version/5.0 Safari/532.49.1', '2025-09-05 10:48:29'),
(378, 5, 16, '255.135.57.189', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_9) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/98.0.4777.89 Safari/533.1 Edg/98.01037.76', '2025-08-20 12:43:42'),
(379, 5, NULL, '221.116.63.40', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5342 (KHTML, like Gecko) Chrome/39.0.874.0 Mobile Safari/5342', '2025-09-08 14:45:14'),
(380, 5, NULL, '208.189.251.11', 'Mozilla/5.0 (Windows NT 5.01; en-US; rv:1.9.1.20) Gecko/20240420 Firefox/37.0', '2025-08-26 02:22:00'),
(381, 5, 15, '21.255.115.91', 'Opera/8.74 (X11; Linux x86_64; en-US) Presto/2.12.222 Version/10.00', '2025-09-18 22:01:59'),
(382, 5, NULL, '230.150.68.32', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 95; Trident/5.1)', '2025-08-29 14:14:08'),
(383, 5, 11, '173.223.0.61', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20180205 Firefox/37.0', '2025-09-06 10:42:18'),
(384, 5, 15, '246.34.35.58', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5321 (KHTML, like Gecko) Chrome/39.0.859.0 Mobile Safari/5321', '2025-09-13 23:05:33'),
(385, 5, 14, '27.125.156.199', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5341 (KHTML, like Gecko) Chrome/38.0.889.0 Mobile Safari/5341', '2025-09-13 05:50:23'),
(386, 5, 11, '225.39.203.64', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows CE; Trident/5.0)', '2025-08-31 17:47:19'),
(387, 5, 4, '167.186.17.58', 'Opera/9.66 (X11; Linux i686; en-US) Presto/2.8.347 Version/11.00', '2025-09-05 22:36:13'),
(388, 5, NULL, '190.61.8.69', 'Opera/9.73 (X11; Linux x86_64; en-US) Presto/2.9.243 Version/11.00', '2025-08-31 19:38:30'),
(389, 5, NULL, '46.219.109.65', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20240310 Firefox/35.0', '2025-08-21 07:19:44'),
(390, 5, NULL, '214.242.191.240', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5360 (KHTML, like Gecko) Chrome/40.0.894.0 Mobile Safari/5360', '2025-09-09 12:18:46'),
(391, 5, 12, '1.9.162.75', 'Mozilla/5.0 (X11; Linux i686; rv:7.0) Gecko/20141017 Firefox/37.0', '2025-09-10 18:22:14'),
(392, 5, 16, '138.52.77.232', 'Mozilla/5.0 (Windows 95) AppleWebKit/5320 (KHTML, like Gecko) Chrome/39.0.889.0 Mobile Safari/5320', '2025-09-13 20:45:49'),
(393, 5, 19, '128.193.210.8', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/534.1.1 (KHTML, like Gecko) Version/5.0.5 Safari/534.1.1', '2025-08-22 14:33:45'),
(394, 5, 13, '232.16.124.32', 'Opera/9.33 (X11; Linux i686; sl-SI) Presto/2.12.229 Version/12.00', '2025-08-27 03:44:37'),
(395, 5, 13, '176.94.158.211', 'Opera/9.95 (X11; Linux x86_64; en-US) Presto/2.9.301 Version/10.00', '2025-09-09 10:25:11'),
(396, 5, NULL, '169.34.129.100', 'Mozilla/5.0 (Windows 98) AppleWebKit/5331 (KHTML, like Gecko) Chrome/37.0.857.0 Mobile Safari/5331', '2025-09-03 09:28:25'),
(397, 5, 4, '157.112.94.127', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_0) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/81.0.4728.95 Safari/532.2 Edg/81.01047.19', '2025-09-16 17:14:56'),
(398, 5, NULL, '180.87.197.197', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X; sl-SI) AppleWebKit/532.7.5 (KHTML, like Gecko) Version/3.0.5 Mobile/8B113 Safari/6532.7.5', '2025-09-08 01:03:12'),
(399, 5, NULL, '222.221.159.43', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_9 rv:6.0; nl-NL) AppleWebKit/531.19.3 (KHTML, like Gecko) Version/5.1 Safari/531.19.3', '2025-09-07 06:40:25'),
(400, 5, 15, '39.178.223.175', 'Opera/8.38 (Windows NT 6.2; sl-SI) Presto/2.12.322 Version/12.00', '2025-08-20 23:30:08'),
(401, 5, NULL, '175.89.69.231', 'Opera/9.59 (X11; Linux x86_64; nl-NL) Presto/2.9.238 Version/12.00', '2025-09-01 03:09:44'),
(402, 5, 4, '120.67.254.59', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/88.0.4743.27 Safari/534.1 EdgA/88.01005.62', '2025-09-18 06:26:48'),
(403, 5, 12, '82.36.83.141', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5321 (KHTML, like Gecko) Chrome/38.0.830.0 Mobile Safari/5321', '2025-09-02 23:21:30'),
(404, 5, 11, '105.61.44.96', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/5331 (KHTML, like Gecko) Chrome/38.0.834.0 Mobile Safari/5331', '2025-09-14 15:47:08'),
(405, 5, 15, '79.146.143.99', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5341 (KHTML, like Gecko) Chrome/38.0.822.0 Mobile Safari/5341', '2025-09-07 12:38:55'),
(406, 5, NULL, '185.75.191.84', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20210519 Firefox/35.0', '2025-09-16 11:43:43'),
(407, 5, NULL, '161.10.83.188', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_5) AppleWebKit/5332 (KHTML, like Gecko) Chrome/40.0.826.0 Mobile Safari/5332', '2025-09-02 17:52:36'),
(408, 5, 15, '163.87.193.230', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_1 rv:2.0; sl-SI) AppleWebKit/535.16.2 (KHTML, like Gecko) Version/5.0 Safari/535.16.2', '2025-09-04 11:13:53'),
(409, 5, NULL, '18.254.231.101', 'Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X; en-US) AppleWebKit/535.4.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B112 Safari/6535.4.7', '2025-08-22 21:06:01'),
(410, 5, 17, '111.227.25.238', 'Opera/8.97 (Windows NT 5.1; en-US) Presto/2.11.191 Version/10.00', '2025-08-31 18:30:01'),
(411, 5, NULL, '150.42.152.102', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_3) AppleWebKit/534.0 (KHTML, like Gecko) Chrome/82.0.4276.39 Safari/534.0 Edg/82.01022.26', '2025-09-06 05:33:20'),
(412, 5, NULL, '114.51.201.234', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/81.0.4389.15 Safari/532.1 EdgA/81.01028.19', '2025-09-13 09:56:56'),
(413, 5, 15, '159.42.172.91', 'Mozilla/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit/533.6.1 (KHTML, like Gecko) Version/4.0.2 Safari/533.6.1', '2025-09-08 11:38:14'),
(414, 5, 10, '65.143.157.201', 'Mozilla/5.0 (Windows NT 5.2; nl-NL; rv:1.9.2.20) Gecko/20170513 Firefox/37.0', '2025-09-07 04:09:52'),
(415, 5, 16, '65.101.34.245', 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/533.2 (KHTML, like Gecko) Chrome/82.0.4307.88 Safari/533.2 Edg/82.01040.7', '2025-09-11 11:56:06'),
(416, 1, NULL, '127.0.0.1', 'Test Browser', '2025-09-19 01:16:11'),
(417, 1, NULL, '127.0.0.1', 'Test Browser', '2025-09-19 15:31:32'),
(418, 23, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-19 15:50:52'),
(419, 24, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-19 15:52:06'),
(420, 15, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-19 15:52:53'),
(421, 2, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 00:51:28'),
(422, 25, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 00:53:04'),
(423, 23, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 00:54:09'),
(424, 21, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 00:59:48'),
(425, 24, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 01:13:48'),
(426, 18, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 01:14:28'),
(427, 24, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 09:33:03'),
(428, 24, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-22 14:52:36'),
(429, 24, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-23 18:11:54'),
(430, 23, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 09:39:19'),
(431, 24, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 10:47:32'),
(432, 24, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 13:21:19'),
(433, 24, NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-10 19:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `property_id`, `user_id`, `rating`, `title`, `comment`, `is_verified`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 5, 18, 5, 'Excellent Property!', 'This property exceeded all my expectations. The location is perfect, the amenities are top-notch, and the agent was very professional throughout the entire process. Highly recommended!', 1, 1, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(2, 10, 18, 4, 'Great Value for Money', 'Good property with nice features. The neighborhood is quiet and safe. The only minor issue was the parking space, but overall it\'s a great place to live.', 1, 1, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(3, 2, 4, 3, 'Average Property', 'The property is okay but could use some improvements. The maintenance response time could be better. Location is convenient though.', 0, 1, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(4, 22, 18, 2, 'Needs Improvement', 'The property has potential but needs significant upgrades. The kitchen appliances are outdated and the bathroom needs renovation.', 0, 0, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(5, 16, 19, 5, 'Perfect for Families', 'Amazing property with great family-friendly features. The kids love the playground and the community is very welcoming. The agent was fantastic!', 1, 1, '2025-09-18 23:47:34', '2025-09-18 23:47:34'),
(6, 22, 11, 1, 'Beautiful property', 'Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.', 1, 1, '2025-09-01 13:03:19', '2025-09-09 22:43:42'),
(7, 25, 19, 2, 'Excellent amenities', 'Perfect for families with children. The community is friendly and the facilities are great.', 1, 1, '2025-07-15 23:35:12', '2025-07-24 16:54:59'),
(8, 23, 16, 4, 'Great investment', 'Lovely property with beautiful views. The neighborhood is safe and the people are friendly.', 0, 1, '2025-09-02 00:02:48', '2025-09-11 22:32:55'),
(9, 5, 17, 3, 'Perfect for families', 'Professional service from start to finish. The property is exactly as described.', 1, 1, '2025-07-01 03:50:30', '2025-07-07 12:44:58'),
(10, 10, 4, 2, 'Beautiful property', 'Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.', 1, 1, '2025-08-27 05:31:56', '2025-07-20 20:35:32'),
(11, 9, 15, 4, 'Great investment', 'Great investment opportunity. The property is well-built and the area is developing rapidly.', 1, 1, '2025-06-29 21:50:28', '2025-08-07 08:49:20'),
(12, 11, 12, 4, 'Lovely neighborhood', 'Professional service from start to finish. The property is exactly as described.', 0, 1, '2025-07-13 04:43:12', '2025-07-17 09:04:31'),
(13, 9, 18, 1, 'Great investment', 'The property exceeded my expectations. The quality is outstanding and the service was excellent.', 0, 1, '2025-06-29 16:14:53', '2025-08-18 14:23:31'),
(14, 21, 13, 1, 'Great investment', 'Great value for money. The property is well-maintained and the neighborhood is quiet.', 1, 1, '2025-08-20 02:47:51', '2025-07-24 02:58:55'),
(15, 12, 19, 3, 'Convenient location', 'Comfortable living space with all necessary amenities. The property is well-designed.', 0, 1, '2025-09-07 02:03:36', '2025-08-03 17:51:39'),
(16, 8, 12, 3, 'Good value', 'Perfect for families with children. The community is friendly and the facilities are great.', 0, 1, '2025-06-28 18:13:11', '2025-07-05 00:00:59'),
(17, 7, 12, 2, 'Modern and clean', 'Modern property with all the amenities you need. The location is convenient for work and shopping.', 1, 1, '2025-08-06 23:50:13', '2025-08-07 13:12:50'),
(18, 3, 13, 2, 'Great investment', 'Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.', 1, 0, '2025-07-27 20:37:00', '2025-08-15 09:04:09'),
(19, 7, 14, 2, 'Perfect for families', 'Outstanding property with amazing features. The quality is exceptional and the location is perfect.', 1, 1, '2025-09-13 22:04:49', '2025-07-24 17:50:30'),
(20, 23, 11, 3, 'Convenient location', 'Well-maintained property in excellent condition. The management is responsive and helpful.', 1, 1, '2025-08-13 11:01:01', '2025-08-08 16:16:10'),
(21, 16, 16, 5, 'Highly recommended', 'Perfect for families with children. The community is friendly and the facilities are great.', 1, 1, '2025-07-30 22:26:08', '2025-07-10 20:03:36'),
(22, 6, 15, 2, 'Convenient location', 'Great value for money. The property is well-maintained and the neighborhood is quiet.', 1, 1, '2025-07-10 07:08:49', '2025-07-29 06:59:52'),
(23, 17, 13, 5, 'Lovely neighborhood', 'Comfortable living space with all necessary amenities. The property is well-designed.', 0, 1, '2025-08-21 11:14:09', '2025-08-23 14:18:34'),
(24, 19, 14, 1, 'Outstanding features', 'This property is absolutely fantastic! The location is perfect and the amenities are top-notch.', 1, 0, '2025-07-11 04:10:53', '2025-08-09 20:50:54'),
(25, 17, 19, 1, 'Outstanding features', 'Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.', 0, 1, '2025-08-11 23:35:41', '2025-09-18 07:48:53'),
(26, 21, 18, 2, 'Well maintained', 'This property is absolutely fantastic! The location is perfect and the amenities are top-notch.', 0, 0, '2025-07-12 18:44:42', '2025-07-13 12:29:05'),
(27, 24, 10, 2, 'Outstanding features', 'This property is absolutely fantastic! The location is perfect and the amenities are top-notch.', 1, 1, '2025-07-18 06:41:37', '2025-07-21 20:44:24'),
(28, 20, 12, 1, 'Highly recommended', 'The property exceeded my expectations. The quality is outstanding and the service was excellent.', 1, 0, '2025-06-23 03:56:23', '2025-09-09 23:07:26'),
(29, 9, 4, 2, 'Good value', 'Great value for money. The property is well-maintained and the neighborhood is quiet.', 0, 0, '2025-08-16 09:53:27', '2025-08-28 18:47:03'),
(30, 13, 17, 2, 'Great location!', 'Professional service from start to finish. The property is exactly as described.', 0, 1, '2025-08-23 02:13:13', '2025-08-03 13:44:41'),
(31, 11, 18, 1, 'Beautiful property', 'Perfect for families with children. The community is friendly and the facilities are great.', 1, 1, '2025-09-08 14:26:23', '2025-08-13 04:21:44'),
(32, 11, 14, 1, 'Good value', 'Great investment opportunity. The property is well-built and the area is developing rapidly.', 0, 0, '2025-09-12 17:04:46', '2025-07-31 04:52:41'),
(33, 21, 10, 1, 'Great investment', 'Lovely property with beautiful views. The neighborhood is safe and the people are friendly.', 1, 1, '2025-09-07 15:56:44', '2025-07-07 23:36:59'),
(34, 5, 15, 1, 'Outstanding features', 'Modern property with all the amenities you need. The location is convenient for work and shopping.', 1, 1, '2025-08-24 09:00:51', '2025-08-14 12:27:53'),
(35, 25, 17, 5, 'Professional service', 'Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.', 0, 0, '2025-06-30 07:56:47', '2025-08-02 06:27:09'),
(36, 1, 3, 5, 'Great', 'Loved it!', 1, 1, '2025-09-19 07:59:07', '2025-09-19 07:59:07'),
(37, 25, 26, 3, NULL, 'Perfect for families with children', 1, 1, '2025-09-22 00:53:42', '2025-09-22 00:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `guard_name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(2, 'admin', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(3, 'agent', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26'),
(4, 'user', 'web', '2025-09-18 23:47:26', '2025-09-18 23:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(9, 2),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(18, 1),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 2),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(44, 1),
(44, 2),
(44, 3),
(44, 4),
(45, 1),
(45, 2),
(45, 3),
(45, 4),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(54, 1),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(57, 3),
(57, 4),
(58, 1),
(58, 2),
(58, 3),
(58, 4),
(59, 1),
(59, 2),
(59, 4),
(60, 1),
(60, 2),
(60, 3),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(64, 1),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(67, 3),
(67, 4),
(68, 1),
(68, 2),
(68, 3),
(68, 4),
(69, 1),
(69, 2),
(69, 4),
(70, 1),
(70, 2),
(70, 3),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(74, 1),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(77, 3),
(77, 4),
(78, 1),
(78, 2),
(78, 3),
(78, 4),
(79, 1),
(79, 2),
(79, 3),
(79, 4),
(80, 1),
(80, 2),
(80, 3),
(80, 4),
(81, 1),
(81, 2),
(81, 3),
(81, 4),
(82, 1),
(82, 2),
(82, 3),
(82, 4),
(83, 1),
(83, 2),
(83, 4),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(88, 1),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_viewings`
--

CREATE TABLE `schedule_viewings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `preferred_date` date NOT NULL,
  `preferred_time` varchar(191) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schedule_viewings`
--

INSERT INTO `schedule_viewings` (`id`, `property_id`, `full_name`, `email`, `phone_number`, `preferred_date`, `preferred_time`, `notes`, `created_at`, `updated_at`) VALUES
(1, 25, 'Sarah Johnson', 'sarah.johnson@email.com', '+233244123456', '2025-09-21', '10:00 AM', 'I am very interested in this property and would like to schedule a viewing. I am available on weekends.', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(2, 8, 'Emmanuel Kofi', 'emmanuel.kofi@email.com', '+233244123457', '2025-09-23', '2:00 PM', 'Looking for investment property. Would like to see the property during business hours.', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(3, 4, 'Adwoa Mensah', 'adwoa.mensah@email.com', '+233244123458', '2025-09-25', '11:00 AM', 'First-time buyer. Would appreciate a detailed walkthrough of the property.', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(4, 19, 'Kwaku Boateng', 'kwaku.boateng@email.com', '+233244123459', '2025-09-20', '3:00 PM', 'Relocating from abroad. Need to see the property as soon as possible.', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(5, 18, 'Akosua Asante', 'akosua.asante@email.com', '+233244123460', '2025-09-22', '9:00 AM', 'Looking for a family home. Would like to bring my children for the viewing.', '2025-09-18 23:47:35', '2025-09-18 23:47:35'),
(6, 21, 'Prof. Vinnie Reinger I', 'nikki15@example.org', '+233244693493', '2025-09-20', '2:00 PM', NULL, '2025-09-05 20:55:11', '2025-08-30 20:20:05'),
(7, 14, 'Mrs. Dannie Schuppe', 'grimes.nasir@example.net', '+233244185632', '2025-09-27', '10:00 AM', 'Reiciendis porro saepe autem molestiae.', '2025-08-30 14:16:22', '2025-09-13 05:42:32'),
(8, 10, 'Cristobal Sipes', 'rocky58@example.org', '+233244161640', '2025-09-22', '10:00 AM', 'Facere cumque vitae qui.', '2025-09-11 18:17:00', '2025-09-16 02:37:36'),
(9, 24, 'Dr. Christy Blanda', 'name66@example.com', '+233244679355', '2025-09-24', '2:00 PM', NULL, '2025-09-04 04:09:02', '2025-09-13 04:04:14'),
(10, 20, 'Kathlyn Steuber DDS', 'ppredovic@example.org', '+233244879052', '2025-09-25', '2:00 PM', NULL, '2025-09-13 20:09:11', '2025-08-20 06:52:49'),
(11, 19, 'Nikita Pacocha', 'agislason@example.com', '+233244608966', '2025-09-26', '11:00 AM', NULL, '2025-09-11 13:44:23', '2025-09-18 11:00:59'),
(12, 17, 'Manley Bechtelar', 'garry.rempel@example.org', '+233244472921', '2025-09-26', '11:00 AM', NULL, '2025-09-03 08:39:44', '2025-09-05 09:41:13'),
(13, 23, 'Dr. Makenna Cronin MD', 'zgibson@example.org', '+233244245985', '2025-09-21', '11:00 AM', NULL, '2025-08-22 01:29:54', '2025-08-29 08:23:12'),
(14, 12, 'Weldon Raynor', 'vesta42@example.com', '+233244874381', '2025-09-25', '9:00 AM', NULL, '2025-08-30 23:08:43', '2025-08-20 14:40:12'),
(15, 6, 'Augustus Johnston', 'kyra09@example.net', '+233244633609', '2025-09-30', '2:00 PM', 'Et sit natus officia omnis.', '2025-09-18 06:17:16', '2025-08-21 21:09:55'),
(16, 7, 'Mr. Harold Barton', 'otho22@example.com', '+233244321371', '2025-09-26', '11:00 AM', 'Consequatur delectus aspernatur dicta dignissimos animi aliquid eaque aut.', '2025-09-03 12:09:04', '2025-09-17 17:03:27'),
(17, 13, 'Mr. Napoleon Hessel III', 'dickinson.ernestina@example.net', '+233244335257', '2025-09-23', '2:00 PM', 'Exercitationem repudiandae perferendis eum qui omnis autem eaque.', '2025-09-13 13:09:42', '2025-09-14 17:29:45'),
(18, 23, 'Prof. Sharon Blanda', 'jenifer.haley@example.org', '+233244067776', '2025-09-28', '2:00 PM', 'Quos unde quasi quaerat aut fugiat qui aut.', '2025-09-01 00:13:07', '2025-09-04 11:01:07'),
(19, 16, 'Kenya Brown', 'reta23@example.com', '+233244245256', '2025-09-30', '2:00 PM', 'Accusantium earum aut alias non commodi cupiditate qui.', '2025-09-16 00:23:42', '2025-09-16 21:07:46'),
(20, 16, 'Ms. Lupe Barrows V', 'jana94@example.com', '+233244374859', '2025-09-24', '10:00 AM', 'Aperiam accusantium consequatur voluptas qui vel qui.', '2025-09-03 15:42:57', '2025-09-14 23:07:08'),
(21, 13, 'Mr. Woodrow King', 'mhamill@example.net', '+233244117856', '2025-10-02', '10:00 AM', 'Exercitationem corrupti omnis rerum accusantium nulla cupiditate quos.', '2025-09-02 11:20:39', '2025-09-15 16:49:13'),
(22, 6, 'Dr. Kaia Oberbrunner V', 'camilla.haag@example.net', '+233244569381', '2025-09-27', '9:00 AM', 'Occaecati dolorem culpa enim eos architecto natus incidunt.', '2025-09-07 16:30:44', '2025-09-09 10:08:40'),
(23, 9, 'Ruthie Kozey', 'ofelia51@example.org', '+233244048913', '2025-09-29', '11:00 AM', NULL, '2025-08-31 08:21:39', '2025-09-02 18:35:01'),
(24, 8, 'Rosalia Raynor', 'trever.kassulke@example.com', '+233244777903', '2025-09-27', '9:00 AM', 'Quasi fugit est ducimus architecto repudiandae ipsa architecto.', '2025-08-26 00:23:17', '2025-09-12 11:41:32'),
(25, 21, 'Kale Parker', 'brenner@example.net', '+233244977733', '2025-09-22', '11:00 AM', 'Et nemo nam qui unde enim aut.', '2025-09-05 12:25:12', '2025-08-30 23:49:42'),
(26, 1, 'Ama Boateng', 'ama@example.com', '+23320000000', '2025-09-21', '10:00', 'Weekend preferred', '2025-09-19 07:59:30', '2025-09-19 07:59:30'),
(27, 1, 'Test User', 'test@example.com', '+233123456789', '2024-01-15', '10:00 AM', 'Test viewing', '2025-09-19 13:09:58', '2025-09-19 13:09:58'),
(28, 24, 'Abdul Basit Yayaha', 'abdulbasit.yahaya51@gmail.com', '0559133666', '2025-09-23', '01:00 PM', '2p is fine as well', '2025-09-22 14:53:52', '2025-09-22 14:53:52'),
(29, 1, 'Test', 'test@example.com', '1234567890', '2025-12-25', '14:00', NULL, '2026-01-11 15:23:04', '2026-01-11 15:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1K4wJXYfF98krWUoZJq6gKP6wHHBfQ9p2dcHNlqR', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYUZybDJCZkhseHF3ZG9hOUttVDlRTFZwa3lPc3hSV2c3dTNXUjJvaCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkS3hMU0VqenhpZUk4bDdEanNVN25qdXpkTkxjYXdMWWx0UnFWbDcxWFBFekZtSnpXMHQ0RU8iO30=', 1768177668),
('1kLDVtmmTQEoitz6Ykkp2sPyQh61FoTuIRV7NZsp', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMlJtVlFUWnN2c2paS3hRdG9xUTBzSFFJUmExWk4xWFlyZjh6ampOcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768206932),
('88SxPTNsTQEFvnWE8r2f23LQzX9GCXY437Cq7duF', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMzVKUUdsQldvQlA0Y3h6V1NHOGdwTFM0TUhObnJXejVqWGpwbWtvUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1768220511);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'string',
  `group` varchar(191) NOT NULL DEFAULT 'general',
  `description` text DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar_url` varchar(500) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `phone`, `avatar_url`, `is_verified`, `is_active`, `email_verified_at`, `phone_verified_at`, `last_login_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin@vestanest.com', '$2y$12$KxLSEjzxieI8l7DjsU7njuzdNLcawLYltRqVl71XPEzFmJzW0t4EO', 'Super', 'Admin', '+233244123456', NULL, 1, 1, '2025-09-18 23:47:27', '2025-09-18 23:47:27', '2025-09-18 23:47:27', NULL, '2025-09-18 23:47:27', '2025-09-18 23:47:27'),
(2, 'admin@vestanest.com', '$2y$12$nvF/i9tMabYa15nDl.DAy.pvXfqmR977qKxIDQj3Yx8xFbxkABdCm', 'Admin', 'User', '+233244123457', NULL, 1, 1, '2025-09-18 23:47:27', '2025-09-18 23:47:27', '2025-09-19 15:41:16', NULL, '2025-09-18 23:47:27', '2025-09-19 15:41:16'),
(3, 'agent@vestanest.com', '$2y$12$NHnAZPnq76rkDv/r9rVW.OnTjeOV5hu8danGB2u02hrHt1TEa9HB2', 'John', 'Doe', '+233244123458', NULL, 1, 1, '2025-09-18 23:47:27', '2025-09-18 23:47:27', '2025-09-19 08:33:29', NULL, '2025-09-18 23:47:27', '2025-09-19 08:33:29'),
(4, 'user@vestanest.com', '$2y$12$2CutdcWc0rWNMViXZrfeU.nuy3cbFoISBlkl1I.Q4G1kYj7xIJd0a', 'Jane', 'Smith', '+233244123459', NULL, 1, 1, '2025-09-18 23:47:28', '2025-09-18 23:47:28', '2025-09-18 23:47:28', NULL, '2025-09-18 23:47:28', '2025-09-18 23:47:28'),
(5, 'agent1@vestanest.com', '$2y$12$qQkQ1H1nH37pbaxM5Th2r.WRQFTFmbXil/YtCvDQGTdwbZJlDxyo2', 'Gordon', 'Metz', '+233244123461', NULL, 1, 1, '2025-09-18 23:47:28', '2025-09-18 23:47:28', '2025-09-11 06:39:19', NULL, '2025-09-18 23:47:28', '2025-09-18 23:47:28'),
(6, 'agent2@vestanest.com', '$2y$12$pRdqctp/rg5NTRTLfb0ewe.Rmb4LIn3lueeFTr6wgBmvcXj/0sIee', 'Jena', 'Koss', '+233244123462', NULL, 1, 1, '2025-09-18 23:47:28', '2025-09-18 23:47:28', '2025-09-17 15:21:16', NULL, '2025-09-18 23:47:28', '2025-09-18 23:47:28'),
(7, 'agent3@vestanest.com', '$2y$12$Jjj3gOG2ItdFxwuOcWWTDubxeA.s70Ch8DfCzkjfRtCvUWaoS0cCi', 'Haley', 'King', '+233244123463', NULL, 1, 1, '2025-09-18 23:47:29', '2025-09-18 23:47:29', '2025-09-12 22:55:30', NULL, '2025-09-18 23:47:29', '2025-09-18 23:47:29'),
(8, 'agent4@vestanest.com', '$2y$12$KW/0NXWdPEZNXobVC.KLHealrxTjfW6s76hKDmoiry5xjIiyPwZJK', 'Amara', 'Bahringer', '+233244123464', NULL, 1, 1, '2025-09-18 23:47:29', '2025-09-18 23:47:29', '2025-09-01 00:12:52', NULL, '2025-09-18 23:47:29', '2025-09-18 23:47:29'),
(9, 'agent5@vestanest.com', '$2y$12$8Erk.zdfPQKIHQG5gxpzPuHZQ82YNPF9RypVQrkQp9P9bKWmCHLFW', 'Taryn', 'Wisoky', '+233244123465', NULL, 1, 1, '2025-09-18 23:47:29', '2025-09-18 23:47:29', '2025-08-26 22:29:57', NULL, '2025-09-18 23:47:29', '2025-09-18 23:47:29'),
(10, 'user1@vestanest.com', '$2y$12$Y6P7vHIflcIwa44wUaUuAuC7lM5HbNGMtSQH1veEvOjw/lu7v2E4e', 'Lukas', 'Kuvalis', '+233244123471', NULL, 0, 1, '2025-09-18 23:47:30', '2025-09-18 23:47:30', '2025-09-18 02:55:43', NULL, '2025-09-18 23:47:30', '2025-09-18 23:47:30'),
(11, 'user2@vestanest.com', '$2y$12$hZ/VKy9puat84.BqY3fZd.PP6YwXbEsa6P75OALDzW0tJbfK7Mqg.', 'Jordon', 'Corwin', '+233244123472', NULL, 0, 1, '2025-09-18 23:47:30', '2025-09-18 23:47:30', '2025-09-12 22:38:46', NULL, '2025-09-18 23:47:30', '2025-09-18 23:47:30'),
(12, 'user3@vestanest.com', '$2y$12$7HnY7IRsWbE7FeSnnwj4XeIoR3D77huuC3I7SdWFXe8TLN4gYO0AO', 'Tavares', 'Runte', '+233244123473', NULL, 1, 1, '2025-09-18 23:47:30', '2025-09-18 23:47:30', '2025-09-16 15:18:34', NULL, '2025-09-18 23:47:30', '2025-09-18 23:47:30'),
(13, 'user4@vestanest.com', '$2y$12$6yt3DT6PE8rCTChUgkTA/.LzA.euHKIRwAX6OZBWvqdDIqDiR//Nu', 'Mable', 'Hagenes', '+233244123474', NULL, 1, 1, '2025-09-18 23:47:30', '2025-09-18 23:47:30', '2025-09-16 00:42:06', NULL, '2025-09-18 23:47:30', '2025-09-18 23:47:30'),
(14, 'user5@vestanest.com', '$2y$12$v9Wgxo/niBnAX7vCajkA6OjYKyRHCwjcmwNnDFnoeiPzzmgzpgE42', 'Ruby', 'Emard', '+233244123475', NULL, 1, 1, '2025-09-18 23:47:31', NULL, '2025-09-18 05:18:56', NULL, '2025-09-18 23:47:31', '2025-09-18 23:47:31'),
(15, 'user6@vestanest.com', '$2y$12$c44eNc5brS58W7gNW8UnseUr0OS87h3Efxp38.Dk36o.xi60.Zdc2', 'Hope', 'Kshlerin', '+233244123476', NULL, 1, 1, '2025-09-18 23:47:31', NULL, '2025-09-16 16:32:46', NULL, '2025-09-18 23:47:31', '2025-09-18 23:47:31'),
(16, 'user7@vestanest.com', '$2y$12$OG8c04OSiDJtB8TRMtR4geojkKC4q7inuVy0c.rTOXRjj9EitBR1u', 'Ross', 'Cassin', '+233244123477', NULL, 1, 1, NULL, '2025-09-18 23:47:32', '2025-09-12 12:07:54', NULL, '2025-09-18 23:47:32', '2025-09-18 23:47:32'),
(17, 'user8@vestanest.com', '$2y$12$Wtsllnfi5J419s2.ioPbv.3/Av.sv7LiaL/MXEGMxMssVDI8Hvtpm', 'Marty', 'VonRueden', '+233244123478', NULL, 1, 1, '2025-09-18 23:47:32', '2025-09-18 23:47:32', '2025-09-13 14:27:56', NULL, '2025-09-18 23:47:32', '2025-09-18 23:47:32'),
(18, 'user9@vestanest.com', '$2y$12$TbszLc.f1ZuHPZn49IfnsuRuJuwUew06nz3avyPOl1oW12CQiau3K', 'Olen', 'Moen', '+233244123479', NULL, 0, 1, '2025-09-18 23:47:32', '2025-09-18 23:47:32', '2025-09-17 22:48:24', NULL, '2025-09-18 23:47:32', '2025-09-18 23:47:32'),
(19, 'user10@vestanest.com', '$2y$12$ntHwqwk7ARpjFV0gPiguteJGbeN.zxp5xAhuz7FPBKOqBbWm3/sGS', 'Miracle', 'Balistreri', '+233244123480', NULL, 1, 1, '2025-09-18 23:47:32', NULL, '2025-09-17 09:59:03', NULL, '2025-09-18 23:47:32', '2025-09-18 23:47:32'),
(20, 'admin1@vestanest.com', '$2y$12$t8.CFwgIEFnn4SvgiiyqmerVCYYh.5QuEt4.NIy4rnxotDLEhCp2C', 'Burdette', 'Schneider', '+233244123481', NULL, 1, 1, '2025-09-18 23:47:33', '2025-09-18 23:47:33', '2025-09-18 21:39:44', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(21, 'admin2@vestanest.com', '$2y$12$zICSYo0kn9f5moeeRfkQo.nmeOSrM.e3X8qwckP1jiBF0eALozfXe', 'Shanny', 'Zboncak', '+233244123482', NULL, 1, 1, '2025-09-18 23:47:33', '2025-09-18 23:47:33', '2025-09-17 13:14:32', NULL, '2025-09-18 23:47:33', '2025-09-18 23:47:33'),
(22, 'john@example.com', '$2y$12$Su8OR3Mq/Z1ffTJA5jSGfeZAcEHj0Oikgzgk3xvbbugwXL94wQjsK', 'John', 'Doe', '+1234567890', NULL, 1, 1, '2025-09-19 00:44:26', NULL, '2025-09-19 00:43:54', NULL, '2025-09-19 00:43:34', '2025-09-19 00:44:26'),
(23, 'test@example.com', '$2y$12$.iK0V4pQ0JXnoKYsifbleOEsLHQnjq7ZJEtuiSw1n4O32gPaqG0c.', 'Test', 'User', '+233123456789', NULL, 0, 1, NULL, NULL, '2026-01-08 21:05:15', NULL, '2025-09-19 17:33:09', '2026-01-08 21:05:15'),
(24, 'abytrone@gmail.com', '$2y$12$TWwqjA3H3aWfjeCs7OwZm..Kxdc0z6rqGfI7SsFyPw4vChPixXs/y', 'Abdul Basit', 'Yahaya', '0559133666', NULL, 0, 1, NULL, NULL, NULL, NULL, '2025-09-19 17:38:18', '2025-09-19 17:38:18'),
(26, 'abdulbasit.yahaya51@gmail.com', '$2y$12$Qya996Ey2IFDtRkwYD7uKOvYFP7.Oq9GQMlFqu6yQCys7aI7VYk0O', 'Abdul Basit', 'Yayaha', '0559133666', NULL, 1, 1, '2025-09-19 23:14:32', NULL, '2026-01-11 15:44:28', NULL, '2025-09-19 23:13:59', '2026-01-11 15:44:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `activity_log_causer`
--
ALTER TABLE `activity_log_causer`
  ADD PRIMARY KEY (`activity_log_id`,`causer_id`,`causer_type`);

--
-- Indexes for table `activity_log_subject`
--
ALTER TABLE `activity_log_subject`
  ADD PRIMARY KEY (`activity_log_id`,`subject_id`,`subject_type`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contact_agents`
--
ALTER TABLE `contact_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_messages_email_index` (`email`),
  ADD KEY `contact_messages_status_index` (`status`),
  ADD KEY `contact_messages_created_at_index` (`created_at`);

--
-- Indexes for table `email_verification_tokens`
--
ALTER TABLE `email_verification_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_verification_tokens_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_property` (`user_id`,`property_id`),
  ADD KEY `favorites_user_id_index` (`user_id`),
  ADD KEY `favorites_property_id_index` (`property_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inquiries_property_id_index` (`property_id`),
  ADD KEY `inquiries_user_id_index` (`user_id`),
  ADD KEY `inquiries_status_index` (`status`),
  ADD KEY `inquiries_created_at_index` (`created_at`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletter_subscriptions_email_unique` (`email`),
  ADD KEY `newsletter_subscriptions_email_index` (`email`),
  ADD KEY `newsletter_subscriptions_is_active_index` (`is_active`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_email_type_index` (`email`,`type`),
  ADD KEY `otps_expires_at_index` (`expires_at`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_owner_id_foreign` (`owner_id`),
  ADD KEY `properties_agent_id_foreign` (`agent_id`),
  ADD KEY `properties_location_index` (`location`),
  ADD KEY `properties_city_index` (`city`),
  ADD KEY `properties_price_index` (`price`),
  ADD KEY `properties_property_type_index` (`property_type`),
  ADD KEY `properties_status_index` (`status`),
  ADD KEY `properties_is_featured_index` (`is_featured`),
  ADD KEY `properties_created_at_index` (`created_at`),
  ADD KEY `idx_coordinates` (`latitude`,`longitude`);

--
-- Indexes for table `property_amenities`
--
ALTER TABLE `property_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_comparisons`
--
ALTER TABLE `property_comparisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_comparisons_user_id_index` (`user_id`);

--
-- Indexes for table `property_comparison_items`
--
ALTER TABLE `property_comparison_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_comparison_property` (`comparison_id`,`property_id`),
  ADD KEY `property_comparison_items_comparison_id_index` (`comparison_id`),
  ADD KEY `property_comparison_items_property_id_index` (`property_id`),
  ADD KEY `property_comparison_items_order_index` (`order`);

--
-- Indexes for table `property_property_amenity`
--
ALTER TABLE `property_property_amenity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `property_property_amenity_property_id_property_amenity_id_unique` (`property_id`,`property_amenity_id`);

--
-- Indexes for table `property_views`
--
ALTER TABLE `property_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_views_property_id_index` (`property_id`),
  ADD KEY `property_views_user_id_index` (`user_id`),
  ADD KEY `property_views_viewed_at_index` (`viewed_at`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_property_review` (`user_id`,`property_id`),
  ADD KEY `reviews_property_id_index` (`property_id`),
  ADD KEY `reviews_user_id_index` (`user_id`),
  ADD KEY `reviews_rating_index` (`rating`),
  ADD KEY `reviews_created_at_index` (`created_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedule_viewings`
--
ALTER TABLE `schedule_viewings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`),
  ADD KEY `settings_key_index` (`key`),
  ADD KEY `settings_group_index` (`group`),
  ADD KEY `settings_is_public_index` (`is_public`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_email_index` (`email`),
  ADD KEY `users_created_at_index` (`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=810;

--
-- AUTO_INCREMENT for table `contact_agents`
--
ALTER TABLE `contact_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `email_verification_tokens`
--
ALTER TABLE `email_verification_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `property_amenities`
--
ALTER TABLE `property_amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `property_comparisons`
--
ALTER TABLE `property_comparisons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `property_comparison_items`
--
ALTER TABLE `property_comparison_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `property_property_amenity`
--
ALTER TABLE `property_property_amenity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `property_views`
--
ALTER TABLE `property_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule_viewings`
--
ALTER TABLE `schedule_viewings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD CONSTRAINT `inquiries_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inquiries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `properties_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `property_comparisons`
--
ALTER TABLE `property_comparisons`
  ADD CONSTRAINT `property_comparisons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `property_comparison_items`
--
ALTER TABLE `property_comparison_items`
  ADD CONSTRAINT `property_comparison_items_comparison_id_foreign` FOREIGN KEY (`comparison_id`) REFERENCES `property_comparisons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `property_comparison_items_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `property_views`
--
ALTER TABLE `property_views`
  ADD CONSTRAINT `property_views_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `property_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
