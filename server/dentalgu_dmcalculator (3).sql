-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2025 at 05:55 PM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentalgu_dmcalculator`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtional_service`
--

CREATE TABLE `addtional_service` (
  `id` int(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `editing_type_id` int(255) DEFAULT NULL,
  `editing_type_name` varchar(255) NOT NULL,
  `editing_type_amount` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `include_content_posting` varchar(255) NOT NULL,
  `include_thumbnail_creation` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `employee` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addtional_service`
--

INSERT INTO `addtional_service` (`id`, `txn_id`, `client_id`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `plan_name`, `employee`, `created_at`) VALUES
(209, '1758276342388', 147, 'Video Shoot', 'Camera Shoot', NULL, '15 min - 1 Hr', '2000', '1', '0', '0', '2000', '', 'Abhinav Pandey', '2025-09-19 15:38:54'),
(212, '1758276342388', 147, 'SEO', 'Backlink Creation', NULL, '3 Website', '229', '1', '0', '0', '229', '', 'Abhinav Pandey', '2025-09-19 15:42:11'),
(215, '1758276342388', 147, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '1', '300', '0', '800', '', 'Abhinav Pandey', '2025-09-20 10:34:45'),
(246, '1759570474612', 168, 'Video Shoot', 'Camera Shoot', 15, '15 min - 1 Hr', '2000', '1', '0', '0', '2000', '', 'Abhinav Pandey', '2025-10-14 11:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `ads_campaign_details`
--

CREATE TABLE `ads_campaign_details` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `unique_id` varchar(50) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `percent` varchar(100) DEFAULT NULL,
  `charge` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `employee` varchar(250) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads_campaign_details`
--

INSERT INTO `ads_campaign_details` (`id`, `txn_id`, `client_id`, `unique_id`, `category`, `amount`, `percent`, `charge`, `total`, `employee`, `created_at`) VALUES
(45, '1754292579013', 18, '1754292886707-34pdiqsz0', 'Google Ad', '5000', '45', '2250', '7250', 'Dev BD', '2025-08-04 13:04:46'),
(46, '1754292579013', 18, '1754292886707-6lqzcho2c', 'Meta Ad', '4000', '35', '1400', '5400', 'Dev BD', '2025-08-04 13:04:46'),
(47, '1754387285004', 20, '1754387876072-vbku43gpo', 'Meta Ad', '30000', '25', '7500', '37500', 'Abhinav Pandey', '2025-08-05 15:27:57'),
(48, '1754388268452', 20, '1754388456499-g814t70qo', 'Meta Ad', '30000', '25', '7500', '37500', 'Abhinav Pandey', '2025-08-05 15:37:37'),
(49, '1754396496221', 25, '1754397368302-1j2ku0lij', 'Meta Ad', '30000', '25', '7500', '37500', 'Mohammad Mazhar', '2025-08-05 18:06:09'),
(64, '1754549817552', 17, '1754549866480-hez2vrryb', 'Google Ad', '4000', '45', '1800', '5800', 'Abhinav Pandey', '2025-08-07 12:27:47'),
(65, '1754549817552', 17, '1754549866480-aav680wrx', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-08-07 12:27:47'),
(74, '1754903216531', 29, '1754904175130-778odf30s', 'Google Ad', '2000', '45', '900', '2900', 'Abhinav Pandey', '2025-08-11 14:52:54'),
(75, '1754903216531', 29, '1754904175130-5q8szc8qf', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-08-11 14:52:54'),
(84, '1755759791622', 43, '1755760254030-lmorxmwfm', 'Meta Ad', '3000', '35', '1050', '4050', 'Vishakha Agrahari', '2025-08-21 12:40:55'),
(85, '1755760569918', 43, '1755760694346-2tj91u4ag', 'Meta Ad', '3000', '35', '1050', '4050', 'Vishakha Agrahari', '2025-08-21 12:48:15'),
(87, '1755783401477', 49, '1755783539613-98gmy1ny6', 'Google Ad', '7000', '45', '3150', '10150', 'Abhinav Pandey', '2025-08-21 19:09:00'),
(88, '1755783401477', 49, '1755783539613-yx44evmvy', 'Meta Ad', '5000', '35', '1750', '6750', 'Abhinav Pandey', '2025-08-21 19:09:00'),
(89, '1755950321064', 58, '1755950773127-ct06huhnh', 'Meta Ad', '20000', '30', '6000', '26000', 'Mohammad Mazhar', '2025-08-23 17:36:13'),
(95, '1756133066514', 58, '1756193226247-hg8gdvcq2', 'Meta Ad', '10000', '35', '3500', '13500', 'Abhinav Pandey', '2025-08-26 12:57:07'),
(96, '1756295188438', 88, '1756384091210-d5b29kf6u', 'Google Ad', '4000', '45', '1800', '5800', 'Abhinav Pandey', '2025-08-28 17:58:10'),
(97, '1756295188438', 88, '1756384091210-adp5jwbgy', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-08-28 17:58:10'),
(99, '1756453722443', 91, '1756453744684-wj33f1ude', 'Meta Ad', '5000', '35', '1750', '6750', 'Abhinav Pandey', '2025-08-29 13:19:04'),
(100, '1756468817547', 90, '1756468845715-1ix67bfm2', 'Meta Ad', '5000', '35', '1750', '6750', 'Abhinav Pandey', '2025-08-29 17:30:46'),
(101, '1756453722443', 91, '1756469347603-30wquea1l', 'Google Ad', '2000', '45', '900', '2900', 'Abhinav Pandey', '2025-08-29 17:39:07'),
(106, '1756876487415', 100, '1756882588422-sxk82r44w', 'Meta Ad', '42000', '25', '10500', '52500', 'Lavina Kukreja', '2025-09-03 12:26:27'),
(128, '1756988739433', 117, '1756988739433-1lpq1vtyx', 'Google Ad', '5000', '45', '2250', '7250', 'Dev BD', '2025-09-04 17:55:38'),
(129, '1756988811736', 118, '1756988811737-dcgvrk6a6', 'Google Ad', '5000', '45', '2250', '7250', 'Dev BD', '2025-09-04 17:56:50'),
(131, '1756989051000', 119, '1756989110265-k77n456l0', 'Google Ad', '5000', '45', '2250', '7250', 'Abhinav Pandey', '2025-09-04 18:01:50'),
(138, '1757322828934', 121, '1757322882262-61bdiridz', 'Meta Ad', '36000', '25', '9000', '45000', 'Lavina Kukreja', '2025-09-08 14:44:39'),
(140, '1757323904778', 122, '1757323920626-u5xs4y45d', 'Google Ad', '5000', '45', '2250', '7250', 'Abhinav Pandey', '2025-09-08 15:01:59'),
(141, '1757323904778', 122, '1757323920626-ff8iin58p', 'Google Ad', '2000', '45', '900', '2900', 'Abhinav Pandey', '2025-09-08 15:01:59'),
(146, '1757507809888', 131, '1757508060599-5vywj0llv', 'Meta Ad', '2000', '35', '700', '2700', 'Vishakha Agrahari', '2025-09-10 18:11:03'),
(149, '1757593897206', 115, '1757593907598-1luumyfmv', 'Meta Ad', '5000', '35', '1750', '6750', 'Abhinav Pandey', '2025-09-11 18:01:48'),
(152, '1757594959688', 115, '1757595468907-r6pzuxy6d', 'Google Ad', '5000', '45', '2250', '7250', 'Abhinav Pandey', '2025-09-11 18:27:49'),
(155, '1757773895017', 134, '1757773966130-w2pwyw2ai', 'Meta Ad', '1000', '35', '350', '1350', 'Abhinav Pandey', '2025-09-13 20:02:47'),
(159, '1758016723408', 140, '1758017220238-kce03t1gl', 'Google Ad', '1000', '45', '450', '1450', 'Abhinav Pandey', '2025-09-16 15:37:01'),
(160, '1758016723408', 140, '1758017220238-null405gz', 'Meta Ad', '2000', '35', '700', '2700', 'Abhinav Pandey', '2025-09-16 15:37:01'),
(162, '1758015195080', 102, '1758025855245-h6igrgee4', 'Meta Ad', '12000', '30', '3600', '15600', 'Abhinav Pandey', '2025-09-16 18:00:54'),
(163, '1758015195080', 102, '1758025877277-zyx9qzqwl', 'Google Ad', '15000', '40', '6000', '21000', 'Abhinav Pandey', '2025-09-16 18:01:16'),
(168, '1758111182522', 138, '1758111750298-8t9v4ox3i', 'Meta Ad', '4237', '35', '1482.95', '5719.95', 'Abhinav Pandey', '2025-09-17 17:52:31'),
(169, '1758123158995', 142, '1758123803266-nbkhkump0', 'Meta Ad', '4238', '35', '1483.3', '5721.3', 'Abhinav Pandey', '2025-09-17 21:13:24'),
(170, '1757943281186', 137, '1758172828523-xjc60frp2', 'Google Ad', '5000', '45', '2250', '7250', 'Abhinav Pandey', '2025-09-18 10:50:30'),
(171, '1758173221111', 141, '1758173238176-ou14sxvn3', 'Google Ad', '3000', '45', '1350', '4350', 'Abhinav Pandey', '2025-09-18 10:57:19'),
(176, '1758191578036', 148, '1758193214104-hdaw28ufp', 'Google Ad', '10000', '45', '4500', '14500', 'Deepanshu Shukla', '2025-09-18 16:30:21'),
(177, '1758191578036', 148, '1758193214104-fkuef1kde', 'Meta Ad', '20000', '30', '6000', '26000', 'Deepanshu Shukla', '2025-09-18 16:30:21'),
(182, '1758288729216', 150, '1758462632069-4otja9qyv', 'Meta Ad', '20000', '30', '6000', '26000', 'Abhinav Pandey', '2025-09-21 19:20:32'),
(183, '1758526915072', 132, '1758526951952-11ws30008', 'Meta Ad', '5000', '35', '1750', '6750', 'Abhinav Pandey', '2025-09-22 13:12:33'),
(184, '1758526466908', 149, '1758625186962-ta1p6675p', 'Google Ad', '2000', '45', '900', '2900', 'Abhinav Pandey', '2025-09-23 16:29:46'),
(185, '1758526466908', 149, '1758625186962-bw7hoth65', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-09-23 16:29:46'),
(188, '1758776574367', 155, '1758776945422-937x8ch3c', 'Meta Ad', '10000', '35', '3500', '13500', 'Vishakha Agrahari', '2025-09-25 10:39:07'),
(189, '1758776574367', 155, '1758777057030-knwvxszv5', 'Meta Ad', '10000', '35', '3500', '13500', 'Vishakha Agrahari', '2025-09-25 10:40:58'),
(190, '1758776574367', 155, '1758777895712-ux8uulbix', 'Meta Ad', '10000', '35', '3500', '13500', 'Vishakha Agrahari', '2025-09-25 10:54:57'),
(209, '1758692498775', 154, '1758796104027-l2n4x9sbg', 'Google Ad', '1000', '45', '450', '1450', 'Abhinav Pandey', '2025-09-25 15:58:24'),
(210, '1758692498775', 154, '1758796104027-dh6vs3sil', 'Meta Ad', '2000', '35', '700', '2700', 'Abhinav Pandey', '2025-09-25 15:58:24'),
(214, '1758796398957', 154, '1758796431586-2hx9g58iv', 'Google Ad', '1000', '45', '450', '1450', 'Abhinav Pandey', '2025-09-25 16:03:51'),
(215, '1758796398957', 154, '1758796431587-7ys98l5ca', 'Meta Ad', '2000', '35', '700', '2700', 'Abhinav Pandey', '2025-09-25 16:03:51'),
(217, '1758796172840', 158, '1758796752279-fl4bifr7h', 'Meta Ad', '16470', '30', '4941', '21411', 'Abhinav Pandey', '2025-09-25 16:09:12'),
(221, '1758804907336', 102, '1758804912555-cvowzb0so', 'Meta Ad', '7000', '35', '2450', '9450', 'Abhinav Pandey', '2025-09-25 18:25:11'),
(223, '1758874979220', 155, '1758876838755-99tr0m3z1', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-09-26 14:23:58'),
(227, '1758899504082', 161, '1758899506713-1e4frvnmh', 'Meta Ad', '10000', '35', '3500', '13500', 'Abhinav Pandey', '2025-09-26 20:41:48'),
(228, '1758899518290', 161, '1758899536516-uz0z6qos7', 'Meta Ad', '10000', '35', '3500', '13500', 'Abhinav Pandey', '2025-09-26 20:42:17'),
(229, '1758900126891', 161, '1758900239865-uh1b3au08', 'Meta Ad', '5000', '35', '1750', '6750', 'Abhinav Pandey', '2025-09-26 20:54:01'),
(255, '1759477676259', 166, '1759485623547-qpsyiv2js', 'Meta Ad', '1307', '35', '457.45', '1764.45', 'Abhinav Pandey', '2025-10-03 15:30:23'),
(274, '1759742629229', 171, '1759743850140-e1bp78frh', 'Meta Ad', '14800', '30', '4440', '19240', 'Abhinav Pandey', '2025-10-06 15:14:10'),
(276, '1758182285382', 143, '1759754510841-zymylhurf', 'Meta Ad', '4500', '35', '1575', '6075', 'Lavina Kukreja', '2025-10-06 18:11:50'),
(287, '1759830679237', 171, '1759830878107-q3m81f2tg', 'Meta Ad', '5900', '35', '2065', '7965', 'Abhinav Pandey', '2025-10-07 15:24:37'),
(289, '1759826420473', 170, '1759928918382-gupls34t3', 'Meta Ad', '50000', '25', '12500', '62500', 'Abhinav Pandey', '2025-10-08 18:38:39'),
(290, '1759837469691', 173, '1760433773302-64yqyb54a', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-10-14 14:52:53'),
(299, '1760695661673', 177, '1760695705382-16mn8bs3j', 'Google Ad', '1000', '45', '450', '1450', 'Abhinav Pandey', '2025-10-17 15:38:25'),
(300, '1760695661673', 177, '1760695705382-bzlq16u7v', 'Meta Ad', '1000', '35', '350', '1350', 'Abhinav Pandey', '2025-10-17 15:38:25'),
(301, '1760705060926', 181, '1760705875328-xgjlqfx05', 'Meta Ad', '2000', '35', '700', '2700', 'Lavina Kukreja', '2025-10-17 18:27:53'),
(319, '1761224847040', 142, '1761229042914-43sqbu7jn', 'Meta Ad', '1634', '35', '571.9', '2205.9', 'Abhinav Pandey', '2025-10-23 19:47:23'),
(320, '1761393392842', 182, '1761393442777-e2tsmdudz', 'Meta Ad', '10000', '35', '3500', '13500', 'Abhinav Pandey', '2025-10-25 17:27:21'),
(321, '1761393527777', 182, '1761393565406-jhkvboajq', 'Meta Ad', '7000', '35', '2450', '9450', 'Abhinav Pandey', '2025-10-25 17:29:23'),
(325, '1761396112237', 183, '1761396124661-99a8bjj36', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-10-25 18:12:05'),
(326, '1761396155302', 183, '1761396166349-085qhuve9', 'Meta Ad', '5000', '35', '1750', '6750', 'Abhinav Pandey', '2025-10-25 18:12:47'),
(327, '1761396211822', 183, '1761396224374-mprchta7p', 'Meta Ad', '8000', '35', '2800', '10800', 'Abhinav Pandey', '2025-10-25 18:13:45'),
(328, '1761551690055', 142, '1761552041195-b9ih85kpx', 'Meta Ad', '1634', '35', '571.9', '2205.9', 'Abhinav Pandey', '2025-10-27 13:30:42'),
(332, '1761643201847', 184, '1761644034590-5nptcxcfc', 'Meta Ad', '8000', '35', '2800', '10800', 'Abhinav Pandey', '2025-10-28 15:03:56'),
(333, '1761643479078', 184, '1761644158062-80qhqej5a', 'Meta Ad', '8000', '35', '2800', '10800', 'Abhinav Pandey', '2025-10-28 15:05:59'),
(336, '1761735657154', 182, '1761735668822-tnig8vdrm', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-10-29 16:31:08'),
(342, '1761735948586', 182, '1761735954987-wleaqypfm', 'Meta Ad', '15000', '30', '4500', '19500', 'Abhinav Pandey', '2025-10-29 16:35:54'),
(343, '1761735686251', 182, '1761737711096-2yuj9ij4e', 'Meta Ad', '15000', '30', '4500', '19500', 'Abhinav Pandey', '2025-10-29 17:05:11'),
(345, '1759329129281', 165, '1762158548388-ha5l5yvsm', 'Meta Ad', '3390', '35', '1186.5', '4576.5', 'Abhinav Pandey', '2025-11-03 13:59:09'),
(346, '1762158633255', 165, '1762158698099-2dlr6f7b5', 'Meta Ad', '4000', '35', '1400', '5400', 'Abhinav Pandey', '2025-11-03 14:01:39'),
(347, '1762168621656', 181, '1762168667808-5ngmm0vdf', 'Meta Ad', '1400', '35', '490', '1890', 'Abhinav Pandey', '2025-11-03 16:47:49'),
(348, '1762169270249', 134, '1762169461328-g088050ny', 'Meta Ad', '1000', '35', '350', '1350', 'Abhinav Pandey', '2025-11-03 17:01:02'),
(355, '1759238599973', 163, '1762171517879-iuy2vsz34', 'Meta Ad', '5297', '35', '1853.95', '7150.95', 'Abhinav Pandey', '2025-11-03 17:35:19'),
(357, '1762257206910', 126, '1762257338999-sxvwwlsnw', 'Meta Ad', '6000', '35', '2100', '8100', 'Mohammad Mazhar', '2025-11-04 17:25:35'),
(361, '1758545828900', 152, '1762349500654-tsv2ojihf', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-11-05 19:01:41'),
(362, '1758545828900', 152, '1762350338918-odb15u3z5', 'Meta Ad', '5000', '35', '1750', '6750', 'Abhinav Pandey', '2025-11-05 19:15:39'),
(363, '1758545828900', 152, '1762350354486-gluo9ex1w', 'Meta Ad', '4000', '35', '1400', '5400', 'Abhinav Pandey', '2025-11-05 19:15:55'),
(364, '1758545828900', 152, '1762350465417-qt6sq1qy6', 'Meta Ad', '10000', '35', '3500', '13500', 'Abhinav Pandey', '2025-11-05 19:17:46'),
(365, '1762350626487', 188, '1762350910586-i6zs42tp5', 'Meta Ad', '10000', '35', '3500', '13500', 'Abhinav Pandey', '2025-11-05 19:25:12'),
(367, '1762353569570', 188, '1762353685497-izjg4a3jm', 'Meta Ad', '6000', '35', '2100', '8100', 'Abhinav Pandey', '2025-11-05 20:11:26'),
(372, '1762582587812', 190, '1762582739309-i5wnnkt1a', 'Meta Ad', '9000', '35', '3150', '12150', 'Lavina Kukreja', '2025-11-08 11:48:59'),
(373, '1762582849963', 190, '1762583387700-t33v283nf', 'Meta Ad', '6000', '35', '2100', '8100', 'Abhinav Pandey', '2025-11-08 11:59:48'),
(375, '1762588119191', 190, '1762588471131-pt8f4ckqi', 'Meta Ad', '10000', '35', '3500', '13500', 'Abhinav Pandey', '2025-11-08 13:24:31'),
(378, '1762588592858', 189, '1762589101576-prqztescp', 'Meta Ad', '10500', '30', '3150', '13650', 'Lavina Kukreja', '2025-11-08 13:35:01'),
(380, '1762512432083', 189, '1762770849349-i0l0wdmek', 'Meta Ad', '3500', '35', '1225', '4725', 'Lavina Kukreja', '2025-11-10 16:04:08'),
(381, '1762777042282', 192, '1762780238744-wld44qdmm', 'Meta Ad', '6000', '35', '2100', '8100', 'Lavina Kukreja', '2025-11-10 18:40:38'),
(382, '1762786961986', 193, '1762786991420-av16v70za', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-11-10 20:33:10'),
(383, '1762788151917', 193, '1762788157653-j5m2znjoq', 'Meta Ad', '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-11-10 20:52:35'),
(384, '1762868710612', 194, '1762868854561-p3l0f8g90', 'Meta Ad', '12000', '30', '3600', '15600', 'Abhinav Pandey', '2025-11-11 19:17:33'),
(385, '1762948872613', 192, '1762948885350-9ylpptibv', 'Meta Ad', '12000', '30', '3600', '15600', 'Lavina Kukreja', '2025-11-12 17:31:25'),
(388, '1763129724156', 181, '1763199237526-fpti4rr9b', 'Meta Ad', '5000', '35', '1750', '6750', 'Lavina Kukreja', '2025-11-15 15:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `ads_campaign_details_invoice`
--

CREATE TABLE `ads_campaign_details_invoice` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `unique_id` varchar(50) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `percent` varchar(100) DEFAULT NULL,
  `charge` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `employee` varchar(250) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads_campaign_details_invoice`
--

INSERT INTO `ads_campaign_details_invoice` (`id`, `txn_id`, `client_id`, `unique_id`, `category`, `amount`, `percent`, `charge`, `total`, `employee`, `created_at`) VALUES
(138, '1757652499781', 55, '1757856336251-gxhi5cgzu', 'Google Ad', '4000', '45', '1800', '5800', 'Abhinav Pandey', '2025-09-14 18:55:36'),
(140, '1757857389940', 55, '1757925500690-ehx7y0ksb', 'Meta Ad', '4000', '35', '1400', '5400', 'Abhinav Pandey', '2025-09-15 14:08:20'),
(158, '1758111182522', 138, '1758111814850-62cg4m0jg', 'Meta Ad', '4237', '35', '1482.95', '5719.95', 'Abhinav Pandey', '2025-09-17 17:53:35'),
(170, '1758182285382', 143, '1758182768821-m4kgggpfs', 'Meta Ad', '6000', '35', '2100', '8100', 'Lavina Kukreja', '2025-09-18 13:36:06'),
(176, '1758123158995', 142, '1758193223701-pvphi5q0d', 'Meta Ad', '4238', '35', '1483.3', '5721.3', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(185, '1758526915072', 132, '1758527973697-5puhldm1i', 'Meta Ad', '5000', '35', '1750', '6750', 'Abhinav Pandey', '2025-09-22 13:29:35'),
(186, '1757773895017', 134, '1758971060769-htovzwhrt', 'Meta Ad', '1000', '35', '350', '1350', 'Lavina Kukreja', '2025-09-27 16:34:20'),
(207, '1760625379835', 138, '1758111814850-62cg4m0jg', 'Meta Ad', '4237', '35', '1482.95', '5719.95', 'Abhinav Pandey', '2025-10-16 20:06:19'),
(230, '1761551690055', 142, '1761567744207-cgggzzg8j', 'Meta Ad', '1634', '35', '571.9', '2205.9', 'Abhinav Pandey', '2025-10-27 17:52:25'),
(231, '1759830679237', 171, '1761640215738-0735w7uno', 'Meta Ad', '5900', '35', '2065', '7965', 'Abhinav Pandey', '2025-10-28 14:00:17'),
(237, '1759329129281', 165, '1762158548388-ha5l5yvsm', 'Meta Ad', '3390', '35', '1186.5', '4576.5', 'Abhinav Pandey', '2025-11-03 13:59:09'),
(239, '1762158633255', 165, '1762158698099-2dlr6f7b5', 'Meta Ad', '4000', '35', '1400', '5400', 'Abhinav Pandey', '2025-11-03 14:01:39'),
(247, '1759238599973', 163, '1762171517879-iuy2vsz34', 'Meta Ad', '5297', '35', '1853.95', '7150.95', 'Abhinav Pandey', '2025-11-03 17:35:19'),
(248, '1762171620469', 163, '1762171517879-iuy2vsz34', 'Meta Ad', '5297', '35', '1853.95', '7150.95', 'Abhinav Pandey', '2025-11-03 17:37:00'),
(250, '1762168621656', 181, '1762244668472-xqq7hug00', 'Meta Ad', '1400', '35', '490', '1890', 'Abhinav Pandey', '2025-11-04 13:54:29'),
(254, '1762257206910', 126, '1762263019273-b9qsz16gz', 'Meta Ad', '6000', '35', '2100', '8100', 'Abhinav Pandey', '2025-11-04 19:00:21'),
(256, '1762512432083', 189, '1762771097065-951a51xka', 'Meta Ad', '3500', '35', '1225', '4725', 'Lavina Kukreja', '2025-11-10 16:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `amount_remaining`
--

CREATE TABLE `amount_remaining` (
  `id` int(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `service_name` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `employee` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amount_remaining`
--

INSERT INTO `amount_remaining` (`id`, `txn_id`, `client_id`, `service_name`, `price`, `employee`, `created_at`) VALUES
(4, '1758276342388', 147, 'tetstdt', '4000', 'Abhinav Pandey', '2025-09-20 10:57:25'),
(5, '1758276342388', 147, 'oiko', '9000', 'Abhinav Pandey', '2025-09-20 11:03:14'),
(17, '1759576984354', 169, 'Petrol & Package Pickup', '400', 'Abhinav Pandey', '2025-10-04 16:58:17'),
(18, '1759732450076', 168, 'Camer Shoot', '2000', 'Abhinav Pandey', '2025-10-06 12:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `assign_quotation`
--

CREATE TABLE `assign_quotation` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `txn_id` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assignment_mode` enum('single','team') NOT NULL DEFAULT 'single',
  `team_id` int(11) DEFAULT NULL,
  `assign_group_id` varchar(64) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `version` varchar(100) DEFAULT '1',
  `updated_at` varchar(100) DEFAULT NULL,
  `reminder_start_sent` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_mid_sent` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_day_before_sent` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_quotation`
--

INSERT INTO `assign_quotation` (`id`, `client_id`, `txn_id`, `user_id`, `assignment_mode`, `team_id`, `assign_group_id`, `deadline`, `created_at`, `version`, `updated_at`, `reminder_start_sent`, `reminder_mid_sent`, `reminder_day_before_sent`) VALUES
(1, 88, '1756288111722', 4, 'single', NULL, NULL, '2025-09-04', '2025-08-29 12:04:13', '2', '2025-09-02 04:27:21', 1, 0, 1),
(8, 94, '1756717206619', 2, 'team', NULL, '1756717386681', '2025-09-05', '2025-09-01 14:33:06', '1', '2025-09-03 07:54:39', 1, 1, 1),
(9, 94, '1756717206619', 3, 'team', NULL, '1756717386681', '2025-09-05', '2025-09-01 14:33:06', '1', '2025-09-03 07:54:39', 1, 1, 1),
(10, 94, '1756717206619', 5, 'team', NULL, '1756717386681', '2025-09-05', '2025-09-01 14:33:06', '1', '2025-09-03 07:54:39', 1, 1, 1),
(11, 94, '1756717206619', 6, 'team', NULL, '1756717386681', '2025-09-05', '2025-09-01 14:33:06', '1', '2025-09-03 07:54:39', 1, 1, 1),
(12, 89, '1756450934843', 2, 'team', NULL, '1756741928371', '2025-09-06', '2025-09-01 21:22:08', '1', '2025-09-04 00:37:07', 1, 1, 1),
(13, 89, '1756450934843', 3, 'team', NULL, '1756741928371', '2025-09-06', '2025-09-01 21:22:08', '1', '2025-09-04 00:37:07', 1, 1, 1),
(14, 89, '1756450934843', 4, 'team', NULL, '1756741928371', '2025-09-06', '2025-09-01 21:22:08', '1', '2025-09-04 00:37:07', 1, 1, 1),
(15, 89, '1756450934843', 5, 'team', NULL, '1756741928371', '2025-09-06', '2025-09-01 21:22:08', '1', '2025-09-04 00:37:07', 1, 1, 1),
(16, 76, '1756199302911', 6, 'single', NULL, NULL, '2025-09-06', '2025-09-02 11:30:35', '10', '2025-09-04 00:37:07', 1, 1, 1),
(17, 97, '1756795595691', 2, 'team', NULL, '1756795772529', '2025-09-06', '2025-09-02 12:19:32', '1', '2025-09-04 00:37:07', 1, 1, 1),
(18, 97, '1756795595691', 3, 'team', NULL, '1756795772529', '2025-09-06', '2025-09-02 12:19:32', '1', '2025-09-04 00:37:07', 1, 1, 1),
(19, 97, '1756795595691', 4, 'team', NULL, '1756795772529', '2025-09-06', '2025-09-02 12:19:32', '1', '2025-09-04 00:37:07', 1, 1, 1),
(20, 97, '1756795595691', 5, 'team', NULL, '1756795772529', '2025-09-06', '2025-09-02 12:19:32', '1', '2025-09-04 00:37:07', 1, 1, 1),
(21, 97, '1756878008229', 5, 'single', NULL, NULL, '2025-09-06', '2025-09-03 12:53:19', '1', '2025-09-04 00:37:07', 1, 1, 1),
(22, 97, '1756877059829', 5, 'single', NULL, NULL, '2025-09-06', '2025-09-03 13:08:02', '1', '2025-09-04 00:37:07', 1, 1, 1),
(46, 133, '1757937238394', 3, 'single', NULL, NULL, '2025-09-19', '2025-09-15 17:25:06', '1', '2025-09-17 08:14:23', 1, 1, 1),
(48, 148, '1758194850193', 5, 'single', NULL, NULL, '2025-09-26', '2025-09-18 17:48:08', '1', '2025-09-24 10:01:29', 1, 1, 1),
(49, 148, '1758197898944', 5, 'single', NULL, NULL, '2025-09-25', '2025-09-18 17:49:06', '1', '2025-09-23 09:50:27', 1, 1, 1),
(51, 149, '1758521324859', 5, 'single', NULL, NULL, '2025-09-25', '2025-09-22 18:20:43', '1', '2025-09-23 09:50:27', 1, 1, 1),
(52, 149, '1758374436963', 12, 'single', NULL, NULL, '2025-09-25', '2025-09-22 18:22:03', '1', '2025-09-23 09:50:27', 1, 1, 1),
(53, 149, '1758611941655', 5, 'single', NULL, NULL, '2025-09-26', '2025-09-23 14:57:22', '1', '2025-09-24 10:01:29', 1, 1, 1),
(55, 154, '1758625556091', 2, 'team', 7, '1758628245673', '2025-09-24', '2025-09-23 17:20:45', '1', NULL, 1, 0, 0),
(56, 154, '1758625556091', 3, 'team', 7, '1758628245673', '2025-09-24', '2025-09-23 17:20:45', '1', NULL, 1, 0, 0),
(57, 154, '1758625556091', 5, 'team', 7, '1758628245673', '2025-09-24', '2025-09-23 17:20:45', '1', NULL, 1, 0, 0),
(58, 154, '1758625556091', 12, 'team', 7, '1758628245673', '2025-09-24', '2025-09-23 17:20:45', '1', NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `calculator_transactions`
--

CREATE TABLE `calculator_transactions` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `editing_type_id` int(255) DEFAULT NULL,
  `editing_type_name` varchar(255) DEFAULT NULL,
  `editing_type_amount` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `include_content_posting` varchar(50) DEFAULT NULL,
  `include_thumbnail_creation` varchar(50) DEFAULT NULL,
  `total_amount` varchar(100) DEFAULT NULL,
  `employee` varchar(250) DEFAULT NULL,
  `plan_name` varchar(255) NOT NULL DEFAULT 'Customise	',
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calculator_transactions`
--

INSERT INTO `calculator_transactions` (`id`, `txn_id`, `client_id`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `employee`, `plan_name`, `created_at`) VALUES
(148, '1754292353534', 18, 'Video Shoot', 'Camera Shoot', NULL, '15 min - 1 Hr', '2000', '1', '200', '0', '2200', 'Dev BD', 'Customise	', '2025-08-04 12:56:04'),
(149, '1754292579013', 18, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '1000', '1', '0', '0', '1000', 'Dev BD', 'Customise	', '2025-08-04 12:59:48'),
(152, '1754385579736', 18, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '0', '250', '3250', 'Abhinav Pandey', 'Customise	', '2025-08-05 14:50:32'),
(154, '1754386148492', 18, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '2', '0', '250', '2500', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:08:29'),
(155, '1754387285004', 20, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:18:30'),
(156, '1754387285004', 20, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:18:59'),
(157, '1754387285004', 20, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:21:09'),
(161, '1754387285004', 20, 'Graphics Design', 'Festival Post', NULL, 'Complimenatary', '0', '2', '0', '0', '0', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:25:44'),
(162, '1754388268452', 20, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:34:57'),
(163, '1754388268452', 20, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:35:15'),
(165, '1754388268452', 20, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:36:01'),
(166, '1754388268452', 20, 'Graphics Design', 'Festival Post', NULL, 'Complimenatary', '0', '2', '0', '0', '0', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:36:33'),
(167, '1754388268452', 20, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:36:50'),
(168, '1754388268452', 20, 'GMB', 'LOCAL SEO', NULL, '1 Keyword', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Customise	', '2025-08-05 15:37:20'),
(170, '1754396208875', 25, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '2', '0', '250', '3500', 'Abhinav Pandey', 'Customise	', '2025-08-05 17:49:32'),
(171, '1754396496221', 25, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Mohammad Mazhar', 'Customise	', '2025-08-05 17:52:43'),
(172, '1754396496221', 25, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Mohammad Mazhar', 'Customise	', '2025-08-05 17:53:05'),
(173, '1754396496221', 25, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Mohammad Mazhar', 'Customise	', '2025-08-05 17:53:34'),
(174, '1754396496221', 25, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '3', '300', '250', '10650', 'Mohammad Mazhar', 'Customise	', '2025-08-05 18:02:42'),
(175, '1754396496221', 25, 'Graphics Design', 'Festival Post', NULL, 'Complimenatary', '0', '2', '0', '0', '0', 'Mohammad Mazhar', 'Customise	', '2025-08-05 18:04:17'),
(176, '1754396496221', 25, 'Video Services', 'Reels', NULL, 'Complementary', '0', '1', '0', '0', '0', 'Mohammad Mazhar', 'Customise	', '2025-08-05 18:05:09'),
(187, '1754486344915', 20, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-08-06 18:49:15'),
(188, '1754486344915', 20, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Customise	', '2025-08-06 18:49:34'),
(192, '1754549817552', 17, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '1', '300', '250', '1050', 'Abhinav Pandey', 'Customise	', '2025-08-07 12:27:11'),
(193, '1754549817552', 17, 'GMB', 'LOCAL SEO', NULL, '1 Keyword', '1200', '1', '0', '0', '1200', 'Abhinav Pandey', 'Customise	', '2025-08-07 12:27:17'),
(194, '1754549817552', 17, 'Graphics Design', 'Thumbnail', NULL, 'Thumbnail Creation', '250', '1', '0', '0', '250', 'Abhinav Pandey', 'Customise	', '2025-08-07 12:27:24'),
(195, '1754549817552', 17, 'Website Maintenance', 'Website Maintenance', NULL, 'Maintenance', '1500', '1', '0', '0', '1500', 'Abhinav Pandey', 'Customise	', '2025-08-07 12:27:36'),
(196, '1754549817552', 17, 'Create Facebook page', 'Create Facebook page', NULL, 'Create Facebook Page', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise	', '2025-08-07 12:27:59'),
(197, '1754549817552', 17, 'Podcast Video creation', 'Standard Video creation (Shoot, Editing and Four shorts)', NULL, 'Standard Video creation (Shoot, Editing and shorts)', '10000', '1', '0', '0', '10000', 'Abhinav Pandey', 'Customise	', '2025-08-07 12:28:23'),
(210, '1754652299463', 28, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '4', '300', '250', '8200', 'Mohammad Mazhar', 'Customise	', '2025-08-08 17:00:14'),
(211, '1754652299463', 28, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Mohammad Mazhar', 'Customise	', '2025-08-08 17:00:54'),
(212, '1754652299463', 28, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '2', '300', '250', '3100', 'Mohammad Mazhar', 'Customise	', '2025-08-08 17:00:35'),
(213, '1754652299463', 28, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '5', '0', '0', '5000', 'Mohammad Mazhar', 'Customise	', '2025-08-08 17:01:46'),
(214, '1754652299463', 28, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '10', '0', '0', '12000', 'Mohammad Mazhar', 'Customise	', '2025-08-08 17:02:01'),
(223, '1754895583733', 28, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Customise	', '2025-08-11 12:46:52'),
(224, '1754895583733', 28, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Customise	', '2025-08-11 12:47:01'),
(225, '1754895583733', 28, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Customise	', '2025-08-11 12:43:24'),
(227, '1754895583733', 28, 'Graphics Design', 'Festival Post', NULL, 'Complimenatary', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Customise	', '2025-08-11 12:45:46'),
(228, '1754903216531', 29, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '2', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-08-11 14:50:15'),
(229, '1754903216531', 29, 'Video Shoot', 'Camera Shoot', NULL, '15 min - 1 Hr', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-08-11 14:50:29'),
(230, '1754903216531', 29, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '2', '0', '0', '1000', 'Abhinav Pandey', 'Customise	', '2025-08-11 14:51:09'),
(231, '1754903216531', 29, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '10', '0', '0', '12000', 'Abhinav Pandey', 'Customise	', '2025-08-11 14:52:07'),
(232, '1754903216531', 29, 'GMB', 'LOCAL SEO', NULL, '1 Keyword', '1200', '1', '0', '0', '1200', 'Abhinav Pandey', 'Customise	', '2025-08-11 14:56:14'),
(244, '1754909027293', 29, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '1', '0', '250', '1750', 'Abhinav Pandey', 'Customise	', '2025-08-11 16:14:02'),
(245, '1754909027293', 29, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Customise	', '2025-08-11 16:15:08'),
(246, '1754909027293', 29, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '1', '0', '250', '1450', 'Abhinav Pandey', 'Customise	', '2025-08-11 16:15:52'),
(247, '1754909027293', 29, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Customise	', '2025-08-11 16:26:55'),
(248, '1754909027293', 29, 'Create Facebook page', 'Create Facebook page', NULL, 'Create Facebook Page', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise	', '2025-08-11 16:29:58'),
(252, '1755262050154', 33, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Mohammad Mazhar', 'Customise	', '2025-08-15 18:17:51'),
(253, '1755262689730', 34, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Vishakha Agrahari', 'Customise	', '2025-08-15 18:28:47'),
(254, '1755262689730', 34, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '5', '300', '250', '10250', 'Vishakha Agrahari', 'Customise	', '2025-08-15 18:30:09'),
(255, '1755262689730', 34, 'Graphics Design', 'Festival Post', NULL, 'Complimenatary', '0', '2', '0', '0', '0', 'Vishakha Agrahari', 'Customise	', '2025-08-15 18:30:43'),
(256, '1755338462861', 33, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Mohammad Mazhar', 'Customise	', '2025-08-16 15:31:28'),
(257, '1755514657601', 35, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '6', '300', '0', '4800', 'Mohammad Mazhar', 'Customise	', '2025-08-18 16:43:49'),
(258, '1755514657601', 35, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Mohammad Mazhar', 'Customise	', '2025-08-18 16:44:17'),
(259, '1755584143692', 38, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Vishakha Agrahari', 'Customise	', '2025-08-19 11:57:15'),
(260, '1755584143692', 38, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '11', '300', '0', '8800', 'Vishakha Agrahari', 'Customise	', '2025-08-19 11:57:51'),
(262, '1755585385507', 39, 'Video Services', 'Reels', NULL, 'Advanced Editing', '4000', '5', '300', '250', '22750', 'Vishakha Agrahari', 'Customise	', '2025-08-19 12:07:13'),
(263, '1755585385507', 39, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '3', '300', '250', '10650', 'Vishakha Agrahari', 'Customise	', '2025-08-19 12:07:47'),
(264, '1755585385507', 39, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Vishakha Agrahari', 'Customise	', '2025-08-19 12:08:21'),
(265, '1755591938311', 40, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '10', '0', '0', '10000', 'Mohammad Mazhar', 'Customise	', '2025-08-19 13:56:17'),
(266, '1755604615071', 41, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '10', '300', '0', '8000', 'Mohammad Mazhar', 'Customise	', '2025-08-19 17:30:30'),
(267, '1755604615071', 41, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Mohammad Mazhar', 'Customise	', '2025-08-19 17:31:12'),
(268, '1755604615071', 41, 'Website Maintenance', 'Website Maintenance', NULL, 'Maintenance', '1500', '1', '300', '250', '2050', 'Mohammad Mazhar', 'Customise	', '2025-08-19 17:32:27'),
(269, '1755608490848', 42, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '13', '300', '0', '10400', 'Mohammad Mazhar', 'Customise	', '2025-08-19 18:31:43'),
(270, '1755608490848', 42, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '7', '300', '250', '21350', 'Mohammad Mazhar', 'Customise	', '2025-08-19 18:33:46'),
(271, '1755608490848', 42, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '3', '300', '250', '10650', 'Mohammad Mazhar', 'Customise	', '2025-08-19 18:34:04'),
(272, '1755759791622', 43, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '4', '300', '250', '8200', 'Vishakha Agrahari', 'Customise	', '2025-08-21 12:33:51'),
(273, '1755759791622', 43, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Vishakha Agrahari', 'Customise	', '2025-08-21 12:35:01'),
(274, '1755759791622', 43, 'GMB', 'LOCAL SEO', NULL, '1 Keyword', '1200', '1', '0', '0', '1200', 'Vishakha Agrahari', 'Customise	', '2025-08-21 12:35:48'),
(275, '1755760569918', 43, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '3', '300', '250', '6150', 'Vishakha Agrahari', 'Customise	', '2025-08-21 12:46:33'),
(276, '1755760569918', 43, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Vishakha Agrahari', 'Customise	', '2025-08-21 12:46:57'),
(277, '1755760569918', 43, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Vishakha Agrahari', 'Customise	', '2025-08-21 12:47:44'),
(282, '1755779640567', 44, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Mohammad Mazhar', 'Basic', '2025-08-21 18:04:01'),
(283, '1755779640567', 44, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Mohammad Mazhar', 'Basic', '2025-08-21 18:04:01'),
(284, '1755779640567', 44, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Mohammad Mazhar', 'Basic', '2025-08-21 18:04:01'),
(285, '1755781208894', 44, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-08-21 18:30:17'),
(286, '1755781208894', 44, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-08-21 18:30:17'),
(287, '1755781208894', 44, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-08-21 18:30:17'),
(294, '1755782572821', 47, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Dev BD', 'Standard', '2025-08-21 18:52:52'),
(295, '1755782572821', 47, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Dev BD', 'Standard', '2025-08-21 18:52:52'),
(296, '1755782572821', 47, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Dev BD', 'Standard', '2025-08-21 18:52:52'),
(300, '1755783401477', 49, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Mohammad Mazhar', 'Basic', '2025-08-21 19:06:42'),
(301, '1755783401477', 49, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Mohammad Mazhar', 'Basic', '2025-08-21 19:06:42'),
(302, '1755783401477', 49, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Mohammad Mazhar', 'Basic', '2025-08-21 19:06:42'),
(303, '1755783548990', 50, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Dev BD', 'Standard', '2025-08-21 19:09:08'),
(304, '1755783548990', 50, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Dev BD', 'Standard', '2025-08-21 19:09:08'),
(305, '1755783548990', 50, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Dev BD', 'Standard', '2025-08-21 19:09:08'),
(306, '1755852160331', 51, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Vishakha Agrahari', 'Basic', '2025-08-22 14:12:58'),
(307, '1755852160331', 51, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Vishakha Agrahari', 'Basic', '2025-08-22 14:12:58'),
(308, '1755852160331', 51, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Vishakha Agrahari', 'Basic', '2025-08-22 14:12:58'),
(309, '1755852254416', 51, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Vishakha Agrahari', 'Basic', '2025-08-22 14:14:26'),
(310, '1755852254416', 51, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Vishakha Agrahari', 'Basic', '2025-08-22 14:14:26'),
(311, '1755852254416', 51, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Vishakha Agrahari', 'Basic', '2025-08-22 14:14:26'),
(312, '1755852541935', 51, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Vishakha Agrahari', 'Customise	', '2025-08-22 14:19:42'),
(325, '1755856865767', 49, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '5', '300', '250', '7750', 'Mohammad Mazhar', 'Customise	', '2025-08-22 15:32:26'),
(329, '1755856865767', 49, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Mohammad Mazhar', 'Basic', '2025-08-22 15:33:09'),
(330, '1755857314774', 54, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-08-22 15:38:38'),
(331, '1755857314774', 54, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-08-22 15:38:38'),
(332, '1755857314774', 54, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-08-22 15:38:38'),
(333, '1755857314774', 54, 'Video Shoot', 'Camera Shoot', NULL, '15 min - 1 Hr', '2000', '5', '0', '0', '10000', 'Abhinav Pandey', 'Customise	', '2025-08-22 15:39:01'),
(347, '1755857689671', 55, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Customise	', '2025-08-22 15:53:00'),
(348, '1755857689671', 55, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '3', '300', '250', '4650', 'Abhinav Pandey', 'Customise	', '2025-08-22 15:53:12'),
(355, '1755867013173', 56, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-08-22 18:20:51'),
(356, '1755867013173', 56, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-08-22 18:20:51'),
(357, '1755867013173', 56, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-08-22 18:20:51'),
(358, '1755869762578', 57, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Lavina Kukreja', 'Standard', '2025-08-22 19:06:01'),
(359, '1755869762578', 57, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Lavina Kukreja', 'Standard', '2025-08-22 19:06:01'),
(360, '1755869762578', 57, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Lavina Kukreja', 'Standard', '2025-08-22 19:06:01'),
(361, '1755869874315', 49, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Mohammad Mazhar', 'Basic', '2025-08-22 19:08:04'),
(362, '1755869874315', 49, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Mohammad Mazhar', 'Basic', '2025-08-22 19:08:04'),
(363, '1755869874315', 49, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Mohammad Mazhar', 'Basic', '2025-08-22 19:08:04'),
(367, '1755950321064', 58, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '6', '300', '0', '4800', 'Mohammad Mazhar', 'Customise	', '2025-08-23 17:29:01'),
(368, '1755950321064', 58, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Mohammad Mazhar', 'Customise	', '2025-08-23 17:35:21'),
(369, '1755950321064', 58, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Mohammad Mazhar', 'Customise	', '2025-08-23 17:35:57'),
(370, '1755950321064', 58, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Mohammad Mazhar', 'Customise	', '2025-08-23 17:42:27'),
(377, '1755952853668', 58, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '5', '300', '250', '7750', 'Abhinav Pandey', 'Customise	', '2025-08-23 18:11:39'),
(378, '1755952853668', 58, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Customise	', '2025-08-23 18:11:49'),
(379, '1755953897800', 59, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Dev BD', 'Basic', '2025-08-23 18:28:18'),
(380, '1755953897800', 59, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Dev BD', 'Basic', '2025-08-23 18:28:18'),
(381, '1755953897800', 59, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Dev BD', 'Basic', '2025-08-23 18:28:18'),
(382, '1755955044623', 58, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-08-23 18:51:40'),
(383, '1755955044623', 58, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-08-23 18:51:40'),
(384, '1755955044623', 58, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-08-23 18:51:40'),
(391, '1756107685551', 27, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Dev BD', 'Basic', '2025-08-25 13:15:16'),
(392, '1756107685551', 27, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Dev BD', 'Basic', '2025-08-25 13:15:16'),
(393, '1756107685551', 27, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Dev BD', 'Basic', '2025-08-25 13:15:16'),
(400, '1754906816252', 27, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Dev BD', 'Basic', '2025-08-25 19:25:49'),
(401, '1754906816252', 27, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Dev BD', 'Basic', '2025-08-25 19:25:49'),
(402, '1754906816252', 27, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Dev BD', 'Basic', '2025-08-25 19:25:49'),
(418, '1756133066514', 58, 'Video Services', 'Reels', NULL, 'Video with Standard Editing', '2000', '2', '300', '250', '5100', 'Abhinav Pandey', 'Customise	', '2025-08-26 12:56:26'),
(419, '1756133066514', 58, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-08-26 12:56:35'),
(420, '1756133066514', 58, 'Video Shoot', 'Model Shoot', NULL, 'Model Shoot With Mobile', '2500', '1', '0', '0', '2500', 'Abhinav Pandey', 'Customise	', '2025-08-26 12:56:51'),
(423, '1756197727805', 61, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:12:07'),
(424, '1756197727805', 61, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:12:07'),
(425, '1756198371750', 62, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:22:54'),
(426, '1756198371750', 62, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:22:54'),
(427, '1756198438368', 63, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:23:58'),
(428, '1756198438368', 63, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:23:58'),
(429, '1756198453931', 64, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:24:13'),
(430, '1756198453931', 64, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:24:13'),
(431, '1756198592750', 65, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:26:32'),
(432, '1756198592750', 65, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:26:32'),
(433, '1756198605635', 66, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:26:45'),
(434, '1756198605635', 66, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:26:45'),
(435, '1756198617238', 67, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:26:56'),
(436, '1756198617238', 67, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:26:56'),
(437, '1756198623389', 68, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:27:03'),
(438, '1756198623389', 68, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:27:03'),
(439, '1756198709547', 69, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:28:29'),
(440, '1756198709547', 69, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:28:29'),
(441, '1756198741285', 70, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:29:00'),
(442, '1756198741285', 70, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:29:00'),
(443, '1756198924033', 73, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:32:03'),
(444, '1756198924033', 73, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:32:03'),
(445, '1756198932423', 74, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:32:12'),
(446, '1756198932423', 74, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:32:12'),
(447, '1756199250157', 75, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:37:29'),
(448, '1756199250157', 75, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 14:37:29'),
(449, '1756199302911', 76, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '0', '0', '4500', 'Vishakha Agrahari', 'Customise	', '2025-08-26 14:39:23'),
(450, '1756200811194', 77, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:03:30'),
(451, '1756200811194', 77, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:03:30'),
(452, '1756200858737', 78, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:04:18'),
(453, '1756200858737', 78, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:04:18'),
(454, '1756200923370', 79, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:05:23'),
(455, '1756200923370', 79, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:05:23'),
(456, '1756200924665', 80, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:05:24'),
(457, '1756200924665', 80, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:05:24'),
(458, '1756200968137', 81, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:06:07'),
(459, '1756200968137', 81, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:06:07'),
(460, '1756201079072', 82, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:07:58'),
(461, '1756201079072', 82, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:07:58'),
(462, '1756201122496', 83, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:08:42'),
(463, '1756201122496', 83, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:08:42'),
(464, '1756201131425', 84, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:08:51'),
(465, '1756201131425', 84, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:08:51'),
(466, '1756201153927', 85, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:09:13'),
(467, '1756201153927', 85, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic Plan', '2025-08-26 15:09:13'),
(470, '1756202783263', 86, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic', '2025-08-26 15:36:26'),
(471, '1756202783263', 86, 'Video Services', 'Shorts', NULL, 'Video Editing', '750', '4', '0', '250', '5200', 'Abhinav Pandey', 'Podcast Basic', '2025-08-26 19:28:29'),
(475, '1756202783263', 86, 'Complimentary ', 'Thumbnail', NULL, 'YouTube Video Thumbnail', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Customise	', '2025-08-26 19:08:33'),
(483, '1756204300321', 86, 'Video Shoot', 'Podcast Video Shoot', NULL, '20 Mins - 40 Mins', '4000', '1', '0', '0', '4000', 'Abhinav Pandey', 'Podcast Standard', '2025-08-26 19:25:54'),
(484, '1756204300321', 86, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Standard', '2025-08-26 19:25:54'),
(485, '1756204300321', 86, 'Video Services', 'Shorts', NULL, 'Video Editing', '500', '6', '0', '0', '4800', 'Abhinav Pandey', 'Podcast Standard', '2025-08-26 19:57:27'),
(486, '1756204300321', 86, 'Complimentary ', 'Thumbnail', NULL, 'YouTube Video Thumbnail', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Customise	', '2025-08-26 19:26:34'),
(487, '1756204300321', 86, 'Complimentary ', 'Thumbnail', NULL, 'Reel Video Thumbnail', '0', '6', '0', '0', '0', 'Abhinav Pandey', 'Customise	', '2025-08-26 19:26:45'),
(488, '1756204300321', 86, 'Complimentary ', 'Graphic Creation', NULL, 'Invitation Post', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Customise	', '2025-08-26 19:26:57'),
(493, '1756276835336', 86, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '1', '0', '250', '1550', 'Abhinav Pandey', 'Customise	', '2025-08-27 12:12:10'),
(494, '1756282021490', 87, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Vishakha Agrahari', 'Basic', '2025-08-27 13:37:21'),
(495, '1756282021490', 87, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Vishakha Agrahari', 'Basic', '2025-08-27 13:37:21'),
(496, '1756282021490', 87, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Vishakha Agrahari', 'Basic', '2025-08-27 13:37:21'),
(497, '1756282021490', 87, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Vishakha Agrahari', 'Standard', '2025-08-27 13:39:24'),
(498, '1756282021490', 87, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Vishakha Agrahari', 'Standard', '2025-08-27 13:39:24'),
(499, '1756282021490', 87, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Vishakha Agrahari', 'Standard', '2025-08-27 13:39:24'),
(500, '1756282195085', 87, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Vishakha Agrahari', 'Standard', '2025-08-27 13:39:58'),
(501, '1756282195085', 87, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Vishakha Agrahari', 'Standard', '2025-08-27 13:39:58'),
(502, '1756282195085', 87, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Vishakha Agrahari', 'Standard', '2025-08-27 13:39:58'),
(503, '1756282195085', 87, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:15'),
(504, '1756282195085', 87, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:15'),
(505, '1756282195085', 87, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:15'),
(506, '1756282195085', 87, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:15'),
(507, '1756282195085', 87, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:15'),
(508, '1756282195085', 87, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:15'),
(509, '1756282405338', 87, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:40'),
(510, '1756282405338', 87, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:40'),
(511, '1756282405338', 87, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:40'),
(512, '1756282405338', 87, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:40'),
(513, '1756282405338', 87, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:40'),
(514, '1756282405338', 87, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Vishakha Agrahari', 'Premium', '2025-08-27 13:43:40'),
(521, '1756288111722', 88, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-08-27 15:26:04'),
(522, '1756288111722', 88, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-08-27 15:26:04'),
(523, '1756288111722', 88, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-08-27 15:26:04'),
(525, '1756288111722', 88, 'Complimentary ', 'SMO', NULL, 'Content Post', '350', '1', '0', '0', '350', 'Abhinav Pandey', 'Customise	', '2025-08-27 17:08:32'),
(526, '1756295188438', 88, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '250', '2050', 'Abhinav Pandey', 'Customise	', '2025-08-27 17:16:40'),
(527, '1756295188438', 88, 'Video Shoot', 'Camera Shoot', NULL, '15 min - 1 Hr', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-08-27 17:17:04'),
(540, '1756295188438', 88, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Customise	', '2025-08-28 17:27:42'),
(541, '1756295188438', 88, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-08-28 17:27:51'),
(548, '1756450112613', 90, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Vishakha Agrahari', 'Basic', '2025-08-29 12:26:53'),
(549, '1756450112613', 90, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Vishakha Agrahari', 'Basic', '2025-08-29 12:26:53'),
(550, '1756450112613', 90, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Vishakha Agrahari', 'Basic', '2025-08-29 12:26:53'),
(551, '1756450112613', 90, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Basic', '2025-08-29 12:26:53'),
(552, '1756450765040', 90, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:29:28'),
(553, '1756450765040', 90, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:29:28'),
(554, '1756450765040', 90, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:29:28'),
(555, '1756450765040', 90, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '2', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:29:28'),
(556, '1756450765040', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Facebook', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:29:28'),
(557, '1756450765040', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Instagram', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:29:28'),
(558, '1756450765040', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Ad Account', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:29:28'),
(559, '1756450765040', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Business Suit', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:29:28'),
(560, '1756450856307', 90, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Vishakha Agrahari', 'Basic', '2025-08-29 12:31:07'),
(561, '1756450856307', 90, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Vishakha Agrahari', 'Basic', '2025-08-29 12:31:07'),
(562, '1756450856307', 90, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Vishakha Agrahari', 'Basic', '2025-08-29 12:31:07'),
(563, '1756450856307', 90, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Basic', '2025-08-29 12:31:07'),
(564, '1756450965387', 90, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(565, '1756450965387', 90, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(566, '1756450965387', 90, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(567, '1756450965387', 90, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(568, '1756450965387', 90, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(569, '1756450965387', 90, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(570, '1756450965387', 90, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '2', '0', '0', '0', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(571, '1756450965387', 90, 'Complimentary ', 'Video Service', NULL, 'Information Reel', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(572, '1756450965387', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Facebook', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(573, '1756450965387', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Instagram', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(574, '1756450965387', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Ad Account', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(575, '1756450965387', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Business Suit', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Premium', '2025-08-29 12:32:46'),
(576, '1756450983612', 90, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:33:06'),
(577, '1756450983612', 90, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:33:06'),
(578, '1756450983612', 90, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:33:06'),
(579, '1756450983612', 90, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '2', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:33:06'),
(580, '1756450983612', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Facebook', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:33:06'),
(581, '1756450983612', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Instagram', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:33:06'),
(582, '1756450983612', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Ad Account', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:33:06'),
(583, '1756450983612', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Business Suit', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Standard', '2025-08-29 12:33:06'),
(584, '1756451072215', 90, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(585, '1756451072215', 90, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(586, '1756451072215', 90, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(587, '1756451072215', 90, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(588, '1756451072215', 90, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(589, '1756451072215', 90, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(590, '1756451072215', 90, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '2', '0', '0', '0', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(591, '1756451072215', 90, 'Complimentary ', 'Video Service', NULL, 'Information Reel', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(592, '1756451072215', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Facebook', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(593, '1756451072215', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Instagram', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(594, '1756451072215', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Ad Account', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(595, '1756451072215', 90, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Business Suit', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Premium', '2025-08-29 12:34:35'),
(596, '1756450934843', 89, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Dev BD', 'Basic', '2025-08-29 12:46:36'),
(597, '1756450934843', 89, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Dev BD', 'Basic', '2025-08-29 12:40:53'),
(598, '1756450934843', 89, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Dev BD', 'Basic', '2025-08-29 12:40:53'),
(599, '1756450934843', 89, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Dev BD', 'Basic', '2025-08-29 12:40:53'),
(603, '1756453722443', 91, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '250', '2050', 'Abhinav Pandey', 'Customise	', '2025-08-29 13:46:52'),
(604, '1756453722443', 91, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Customise	', '2025-08-29 13:47:00'),
(605, '1756453722443', 91, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Customise	', '2025-08-29 13:47:14'),
(616, '1756468817547', 90, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Tiny', '2025-08-29 17:30:38'),
(617, '1756468817547', 90, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Tiny', '2025-08-29 17:30:38'),
(622, '1756534127122', 90, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '5', '0', '0', '5000', 'Vishakha Agrahari', 'Customise	', '2025-08-30 11:41:57'),
(629, '1756534127122', 90, 'GMB', 'LOCAL SEO', NULL, 'GMB Setup', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-08-30 11:45:28'),
(634, '1756540105614', 93, 'Graphics Design', 'Static Graphics', NULL, 'Changes Post', '200', '5', '300', '0', '2500', 'Vishakha Agrahari', 'Customise	', '2025-08-30 13:36:09'),
(635, '1756540105614', 93, 'Video Services', 'Reels', NULL, 'Video with Standard Editing', '2000', '2', '300', '250', '5100', 'Vishakha Agrahari', 'Customise	', '2025-08-30 13:21:55'),
(636, '1756540105614', 93, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '3', '300', '0', '2400', 'Vishakha Agrahari', 'Customise	', '2025-08-30 13:36:39'),
(637, '1756540105614', 93, 'Graphics Design', 'Festival Post', NULL, 'Festive Changes Post', '200', '2', '300', '0', '1000', 'Vishakha Agrahari', 'Customise	', '2025-08-30 13:33:34'),
(638, '1756717206619', 94, 'Video Services', 'Reels', NULL, 'Advanced Editing', '4000', '4', '0', '0', '16000', 'Abhinav Pandey', 'Test', '2025-09-01 14:30:06'),
(639, '1756717206619', 94, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '2', '0', '0', '600', 'Abhinav Pandey', 'Test', '2025-09-01 14:30:06'),
(640, '1756717206619', 94, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Test', '2025-09-01 14:30:06');
INSERT INTO `calculator_transactions` (`id`, `txn_id`, `client_id`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `employee`, `plan_name`, `created_at`) VALUES
(641, '1756717206619', 94, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Test', '2025-09-01 14:30:06'),
(642, '1756719639949', 95, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Lavina Kukreja', 'Basic', '2025-09-01 15:10:39'),
(643, '1756719639949', 95, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Lavina Kukreja', 'Basic', '2025-09-01 15:10:39'),
(644, '1756719639949', 95, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Lavina Kukreja', 'Basic', '2025-09-01 15:10:39'),
(645, '1756719639949', 95, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Lavina Kukreja', 'Basic', '2025-09-01 15:10:39'),
(646, '1756726918753', 96, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Lavina Kukreja', 'Customise	', '2025-09-01 17:13:00'),
(647, '1756726918753', 96, 'Video Services', 'Shorts', NULL, 'Video Editing', '750', '6', '0', '250', '6000', 'Lavina Kukreja', 'Customise	', '2025-09-01 17:19:10'),
(648, '1756726918753', 96, 'Create InstaGram Profile', 'Create InstaGram Profile', NULL, 'Create InstaGram Profile', '1000', '1', '0', '0', '1000', 'Lavina Kukreja', 'Customise	', '2025-09-01 17:14:41'),
(649, '1756726918753', 96, 'Create Facebook page', 'Create Facebook page', NULL, 'Create Facebook Page', '1000', '1', '0', '0', '1000', 'Lavina Kukreja', 'Customise	', '2025-09-01 17:14:52'),
(650, '1756726918753', 96, 'Complimentary ', 'Thumbnail', NULL, 'YouTube Video Thumbnail', '0', '1', '0', '0', '0', 'Lavina Kukreja', 'Customise	', '2025-09-01 17:22:38'),
(651, '1756726918753', 96, 'Complimentary ', 'Social Media Page Setup', NULL, 'Facebook', '0', '1', '0', '0', '0', 'Lavina Kukreja', 'Customise	', '2025-09-01 17:23:01'),
(719, '1756873760212', 32, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-03 09:59:22'),
(720, '1756873760212', 32, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-03 09:59:22'),
(721, '1756873760212', 32, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-03 09:59:22'),
(722, '1756873760212', 32, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Basic', '2025-09-03 09:59:22'),
(725, '1756875868619', 99, 'Video Services', 'Reels', NULL, 'Video with Standard Editing', '2000', '2', '300', '250', '5100', 'Vishakha Agrahari', 'Customise	', '2025-09-03 10:37:50'),
(730, '1756875868619', 99, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Vishakha Agrahari', 'Customise	', '2025-09-03 10:40:18'),
(731, '1756875868619', 99, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 10:40:38'),
(732, '1756875868619', 99, 'Video Shoot', 'Model Shoot', NULL, 'Model Shoot With Mobile', '2500', '1', '0', '0', '2500', 'Vishakha Agrahari', 'Customise	', '2025-09-03 10:41:09'),
(733, '1756875868619', 99, 'Create InstaGram Profile', 'Create InstaGram Profile', NULL, 'Create InstaGram Profile', '1000', '1', '0', '0', '1000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 10:41:59'),
(734, '1756875868619', 99, 'Create Facebook page', 'Create Facebook page', NULL, 'Create Facebook Page', '1000', '1', '0', '0', '1000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 10:42:16'),
(735, '1756875868619', 99, 'GMB', 'LOCAL SEO', NULL, 'GMB Setup', '2000', '1', '0', '0', '2000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 10:42:41'),
(737, '1756875868619', 99, 'GMB', 'LOCAL SEO', NULL, '1 Keyword', '1200', '5', '0', '0', '6000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 10:47:42'),
(739, '1756877059829', 97, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-09-03 10:54:24'),
(740, '1756877059829', 97, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-09-03 10:54:24'),
(741, '1756877059829', 97, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-09-03 10:54:24'),
(742, '1756877059829', 97, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '2', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-03 10:54:24'),
(743, '1756877059829', 97, 'Complimentary ', 'Social Media Page Setup', NULL, 'Facebook', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-03 10:54:24'),
(744, '1756877059829', 97, 'Complimentary ', 'Social Media Page Setup', NULL, 'Instagram', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-03 10:54:24'),
(745, '1756877059829', 97, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Ad Account', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-03 10:54:24'),
(746, '1756877059829', 97, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Business Suit', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-03 10:54:24'),
(753, '1756876487415', 100, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '2', '300', '0', '1600', 'Lavina Kukreja', 'Customise	', '2025-09-03 11:15:25'),
(754, '1756876487415', 100, 'Graphics Design', 'Festival Post', NULL, 'Festive Changes Post', '200', '1', '300', '0', '500', 'Lavina Kukreja', 'Customise	', '2025-09-03 11:15:57'),
(756, '1756876487415', 100, 'GMB', 'LOCAL SEO', NULL, 'GMB Setup', '2000', '1', '0', '0', '2000', 'Lavina Kukreja', 'Customise	', '2025-09-03 11:17:52'),
(757, '1756876487415', 100, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '5', '0', '0', '5000', 'Lavina Kukreja', 'Customise	', '2025-09-03 11:18:12'),
(758, '1756876487415', 100, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Lavina Kukreja', 'Customise	', '2025-09-03 11:19:34'),
(759, '1756876487415', 100, 'Complimentary ', 'Video Service', NULL, 'Information Reel', '0', '1', '0', '0', '0', 'Lavina Kukreja', 'Customise	', '2025-09-03 11:22:41'),
(777, '1756876487415', 100, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '2', '0', '0', '0', 'Lavina Kukreja', 'Customise	', '2025-09-03 12:28:02'),
(786, '1756890846663', 102, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '5', '300', '0', '9000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 15:10:30'),
(787, '1756890846663', 102, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '15', '300', '0', '12000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 15:10:53'),
(788, '1756890846663', 102, 'GMB', 'LOCAL SEO', NULL, 'GMB Setup', '2000', '1', '0', '0', '2000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 15:13:13'),
(789, '1756890846663', 102, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '10', '0', '0', '10000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 14:46:12'),
(790, '1756890846663', 102, 'Social Media Optimization', 'Organic page optimization', NULL, 'Description, hashtag, caption, message responses and group sharing', '300', '1', '0', '0', '300', 'Vishakha Agrahari', 'Customise	', '2025-09-03 14:46:52'),
(794, '1756890846663', 102, 'Create Facebook page', 'Create Facebook page', NULL, 'Create Facebook Page', '1000', '1', '0', '0', '1000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 15:11:13'),
(795, '1756890846663', 102, 'Create InstaGram Profile', 'Create InstaGram Profile', NULL, 'Create InstaGram Profile', '1000', '1', '0', '0', '1000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 15:11:40'),
(854, '1756876487415', 100, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '4', '0', '250', '7000', 'Lavina Kukreja', 'Customise	', '2025-09-03 15:41:43'),
(866, '1756894758575', 102, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Vishakha Agrahari', 'Basic', '2025-09-03 15:49:23'),
(867, '1756894758575', 102, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Vishakha Agrahari', 'Basic', '2025-09-03 15:49:23'),
(868, '1756894758575', 102, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Vishakha Agrahari', 'Basic', '2025-09-03 15:49:23'),
(869, '1756894758575', 102, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Basic', '2025-09-03 15:49:23'),
(870, '1756894967342', 102, 'Video Shoot', 'Podcast Video Shoot', NULL, '20 Mins - 40 Mins', '4000', '1', '0', '0', '4000', 'Vishakha Agrahari', 'Podcast Standard', '2025-09-03 15:52:51'),
(871, '1756894967342', 102, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Vishakha Agrahari', 'Podcast Standard', '2025-09-03 15:52:51'),
(872, '1756894967342', 102, 'Video Services', 'Shorts', NULL, 'Basic Editing', '500', '6', '300', '250', '6300', 'Vishakha Agrahari', 'Podcast Standard', '2025-09-03 15:52:51'),
(873, '1756894981887', 102, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '10', '0', '0', '10000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 15:53:29'),
(874, '1756894981887', 102, 'GMB', 'LOCAL SEO', NULL, 'GMB Setup', '2000', '1', '0', '0', '2000', 'Vishakha Agrahari', 'Customise	', '2025-09-03 15:53:46'),
(875, '1756895129441', 97, 'Video Services', 'Reels', NULL, 'Advanced Editing', '4000', '4', '0', '0', '16000', 'Deepanshu Shukla', 'Test', '2025-09-03 15:55:39'),
(876, '1756895129441', 97, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '2', '0', '0', '600', 'Deepanshu Shukla', 'Test', '2025-09-03 15:55:39'),
(877, '1756895129441', 97, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Deepanshu Shukla', 'Test', '2025-09-03 15:55:39'),
(878, '1756895129441', 97, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '1', '0', '0', '1000', 'Deepanshu Shukla', 'Test', '2025-09-03 15:55:39'),
(882, '1756726918753', 96, 'Video Shoot', 'Podcast Video Shoot', NULL, '20 Mins - 40 Mins', '4000', '1', '0', '0', '4000', 'Lavina Kukreja', 'Customise	', '2025-09-03 15:58:04'),
(883, '1756894758575', 102, 'Complimentary ', 'Social Media Page Setup', NULL, 'Facebook', '0', '1', '0', '0', '0', 'Vishakha Agrahari', 'Customise	', '2025-09-03 15:59:56'),
(896, '1756903575775', 108, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Dev BD', 'Basic', '2025-09-03 18:16:15'),
(897, '1756903575775', 108, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Dev BD', 'Basic', '2025-09-03 18:16:15'),
(898, '1756903575775', 108, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Dev BD', 'Basic', '2025-09-03 18:16:15'),
(899, '1756903575775', 108, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Dev BD', 'Basic', '2025-09-03 18:16:15'),
(932, '1756987584530', 113, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-04 17:36:27'),
(933, '1756987584530', 113, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-04 17:36:27'),
(934, '1756987584530', 113, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-04 17:36:27'),
(935, '1756987584530', 113, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Basic', '2025-09-04 17:36:27'),
(950, '1756988739433', 117, 'Video Services', 'Reels', NULL, 'Advanced Editing', '4000', '4', '0', '0', '16000', 'Dev BD', 'Test', '2025-09-04 17:55:38'),
(951, '1756988739433', 117, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '2', '0', '0', '600', 'Dev BD', 'Test', '2025-09-04 17:55:38'),
(952, '1756988739433', 117, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Dev BD', 'Test', '2025-09-04 17:55:38'),
(953, '1756988739433', 117, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '1', '0', '0', '1000', 'Dev BD', 'Test', '2025-09-04 17:55:38'),
(954, '1756988811736', 118, 'Video Services', 'Reels', NULL, 'Advanced Editing', '4000', '4', '0', '0', '16000', 'Dev BD', 'Test', '2025-09-04 17:56:50'),
(955, '1756988811736', 118, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '2', '0', '0', '600', 'Dev BD', 'Test', '2025-09-04 17:56:50'),
(956, '1756988811736', 118, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Dev BD', 'Test', '2025-09-04 17:56:50'),
(957, '1756988811736', 118, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '1', '0', '0', '1000', 'Dev BD', 'Test', '2025-09-04 17:56:50'),
(962, '1756989051000', 119, 'Video Services', 'Reels', NULL, 'Advanced Editing', '4000', '4', '0', '0', '16000', 'Abhinav Pandey', 'Test', '2025-09-04 18:01:50'),
(963, '1756989051000', 119, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '2', '0', '0', '600', 'Abhinav Pandey', 'Test', '2025-09-04 18:01:50'),
(964, '1756989051000', 119, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Test', '2025-09-04 18:01:50'),
(965, '1756989051000', 119, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Test', '2025-09-04 18:01:50'),
(1010, '1757311846947', 120, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '8', '0', '0', '8000', 'Lavina Kukreja', 'Customise	', '2025-09-08 11:45:18'),
(1011, '1757311846947', 120, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '2', '0', '250', '3500', 'Lavina Kukreja', 'Customise	', '2025-09-08 11:44:43'),
(1012, '1757322828934', 121, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '10', '300', '0', '8000', 'Lavina Kukreja', 'Basic', '2025-09-08 14:45:36'),
(1013, '1757322828934', 121, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Lavina Kukreja', 'Basic', '2025-09-08 14:43:46'),
(1014, '1757322828934', 121, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Lavina Kukreja', 'Basic', '2025-09-08 14:48:05'),
(1015, '1757322828934', 121, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '3', '0', '0', '0', 'Lavina Kukreja', 'Basic', '2025-09-08 14:46:27'),
(1016, '1757323904778', 122, 'Video Services', 'Reels', NULL, 'Advanced Editing', '4000', '4', '0', '0', '16000', 'Abhinav Pandey', 'Test', '2025-09-08 15:01:59'),
(1017, '1757323904778', 122, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '2', '0', '0', '600', 'Abhinav Pandey', 'Test', '2025-09-08 15:01:59'),
(1018, '1757323904778', 122, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Test', '2025-09-08 15:01:59'),
(1019, '1757323904778', 122, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Test', '2025-09-08 15:01:59'),
(1034, '1757395853771', 116, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-09 11:01:03'),
(1039, '1757397847773', 127, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-09 11:34:07'),
(1040, '1757397847773', 127, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-09 11:34:07'),
(1043, '1757400489430', 121, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '1', '300', '250', '1550', 'Mohammad Mazhar', 'Customise	', '2025-09-09 12:18:58'),
(1044, '1757401482038', 121, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '1', '300', '250', '2050', 'Abhinav Pandey', 'Customise	', '2025-09-09 12:35:04'),
(1049, '1757403034860', 126, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-09 13:00:36'),
(1050, '1757403034860', 126, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-09 13:00:36'),
(1051, '1757403034860', 126, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-09 13:00:36'),
(1056, '1757410826487', 118, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-09 15:10:29'),
(1057, '1757410826487', 118, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-09 15:10:29'),
(1058, '1757410826487', 118, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-09 15:10:29'),
(1064, '1757488635113', 116, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Dev BD', 'Basic', '2025-09-10 12:50:48'),
(1065, '1757488635113', 116, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Dev BD', 'Basic', '2025-09-10 12:50:48'),
(1066, '1757488635113', 116, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Dev BD', 'Basic', '2025-09-10 12:50:48'),
(1067, '1757489571410', 116, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-10 13:03:15'),
(1068, '1757489571410', 116, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-10 13:03:15'),
(1069, '1757489571410', 116, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-10 13:03:15'),
(1072, '1757497208328', 116, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-10 15:10:10'),
(1073, '1757497208328', 116, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-10 15:10:10'),
(1074, '1757497208328', 116, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-10 15:10:10'),
(1075, '1757498222391', 116, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '1', '300', '250', '1550', 'Abhinav Pandey', 'Customise	', '2025-09-10 15:28:27'),
(1078, '1757498222391', 116, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Customise	', '2025-09-10 15:43:12'),
(1079, '1757502888304', 116, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-09-10 16:45:20'),
(1080, '1757502888304', 116, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-09-10 16:45:20'),
(1081, '1757502888304', 116, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-09-10 16:45:20'),
(1082, '1757502888304', 116, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '2', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-10 16:45:20'),
(1083, '1757502888304', 116, 'Complimentary ', 'Social Media Page Setup', NULL, 'Facebook', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-10 16:45:20'),
(1084, '1757502888304', 116, 'Complimentary ', 'Social Media Page Setup', NULL, 'Instagram', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-10 16:45:20'),
(1085, '1757502888304', 116, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Ad Account', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-10 16:45:20'),
(1086, '1757502888304', 116, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Business Suit', '0', '1', '0', '0', '0', 'Abhinav Pandey', 'Standard', '2025-09-10 16:45:20'),
(1087, '1757503239424', 130, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '7', '300', '0', '5600', 'Vishakha Agrahari', 'Basic', '2025-09-10 16:55:29'),
(1088, '1757503239424', 130, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Vishakha Agrahari', 'Basic', '2025-09-10 16:55:06'),
(1090, '1757503239424', 130, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '2', '300', '250', '3100', 'Vishakha Agrahari', 'Customise	', '2025-09-10 16:54:49'),
(1107, '1757507809888', 131, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '0', '1800', 'Vishakha Agrahari', 'Customise	', '2025-09-10 18:07:46'),
(1108, '1757507809888', 131, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Vishakha Agrahari', 'Customise	', '2025-09-10 18:08:04'),
(1113, '1757568431487', 113, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-11 10:57:18'),
(1114, '1757568431487', 113, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-11 10:57:18'),
(1115, '1757569484856', 121, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Dev BD', 'Standard', '2025-09-11 11:15:59'),
(1116, '1757569484856', 121, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Dev BD', 'Standard', '2025-09-11 11:15:59'),
(1117, '1757569484856', 121, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Dev BD', 'Standard', '2025-09-11 11:15:59'),
(1118, '1757569484856', 121, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '2', '0', '0', '0', 'Dev BD', 'Standard', '2025-09-11 11:15:59'),
(1119, '1757569484856', 121, 'Complimentary ', 'Social Media Page Setup', NULL, 'Facebook', '0', '1', '0', '0', '0', 'Dev BD', 'Standard', '2025-09-11 11:15:59'),
(1120, '1757569484856', 121, 'Complimentary ', 'Social Media Page Setup', NULL, 'Instagram', '0', '1', '0', '0', '0', 'Dev BD', 'Standard', '2025-09-11 11:15:59'),
(1121, '1757569484856', 121, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Ad Account', '0', '1', '0', '0', '0', 'Dev BD', 'Standard', '2025-09-11 11:15:59'),
(1122, '1757569484856', 121, 'Complimentary ', 'Social Media Page Setup', NULL, 'Meta Business Suit', '0', '1', '0', '0', '0', 'Dev BD', 'Standard', '2025-09-11 11:15:59'),
(1156, '1757596352995', 115, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-09-11 18:43:17'),
(1157, '1757596352995', 115, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium', '2025-09-11 18:43:17'),
(1158, '1757596352995', 115, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Premium', '2025-09-11 18:43:17'),
(1159, '1757596352995', 115, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium', '2025-09-11 18:43:17'),
(1160, '1757596352995', 115, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium', '2025-09-11 18:43:17'),
(1161, '1757596352995', 115, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium', '2025-09-11 18:43:17'),
(1204, '1757773895017', 134, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-13 20:01:38'),
(1205, '1757773895017', 134, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-13 20:01:38'),
(1206, '1757773895017', 134, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-13 20:01:38'),
(1207, '1757773895017', 134, 'Social Media Creation', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise	', '2025-09-13 20:27:43'),
(1208, '1757773895017', 134, 'Social Media Creation', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise	', '2025-09-13 20:28:01'),
(1209, '1757773895017', 134, 'Social Media Creation', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise	', '2025-09-13 20:28:22'),
(1210, '1757773895017', 134, 'Social Media Creation', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', 'Customise	', '2025-09-13 20:28:44'),
(1211, '1757773895017', 134, 'Social Media Creation', 'Google Account Setup', NULL, 'YouTube Channel Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', 'Customise	', '2025-09-13 20:28:55'),
(1215, '1757833202500', 113, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-09-14 12:30:08'),
(1216, '1757833202500', 113, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium', '2025-09-14 12:30:08'),
(1217, '1757833202500', 113, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Premium', '2025-09-14 12:30:08'),
(1218, '1757833202500', 113, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium', '2025-09-14 12:30:08'),
(1219, '1757833202500', 113, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium', '2025-09-14 12:30:08'),
(1220, '1757833202500', 113, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium', '2025-09-14 12:30:08'),
(1221, '1757934876897', 136, 'SEO', 'Backlink Creation', NULL, '3 Website', '229', '300', '0', '0', '68700', 'Abhinav Pandey', 'Standard SEO', '2025-09-15 16:50:23'),
(1222, '1757935846415', 136, 'SEO', 'Backlink Creation', NULL, '3 Website', '229', '200', '0', '0', '45800', 'Abhinav Pandey', 'Standard SEO', '2025-09-15 17:01:11'),
(1223, '1757937238394', 133, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-15 17:24:01'),
(1224, '1757937238394', 133, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-15 17:24:01'),
(1225, '1757937238394', 133, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-15 17:24:01'),
(1226, '1757937345024', 135, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '10', '300', '0', '8000', 'Abhinav Pandey', 'Customise	', '2025-09-15 17:27:48'),
(1227, '1757937345024', 135, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '5', '300', '0', '6500', 'Abhinav Pandey', 'Customise	', '2025-09-15 17:50:47'),
(1228, '1757943281186', 137, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-15 19:04:43'),
(1229, '1757943281186', 137, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-15 19:04:43'),
(1230, '1757943281186', 137, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-15 19:04:43'),
(1234, '1757947793267', 139, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '4', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-09-15 20:21:32'),
(1235, '1757947793267', 139, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '12', '0', '0', '12000', 'Abhinav Pandey', 'Customise	', '2025-09-15 20:20:31'),
(1236, '1757947793267', 139, 'Social Media Optimization', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Abhinav Pandey', 'Customise	', '2025-09-15 20:20:44'),
(1242, '1758015195080', 102, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Customise	', '2025-09-16 15:03:56'),
(1244, '1758015195080', 102, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Customise	', '2025-09-16 15:04:38'),
(1245, '1758015195080', 102, 'Lead Conversion Service', 'Lead Conversion ', NULL, 'Calling Charges', '100', '70', '0', '0', '7000', 'Abhinav Pandey', 'Customise	', '2025-09-16 15:10:13'),
(1246, '1758015195080', 102, 'Lead Conversion Service', 'Lead Conversion ', NULL, 'Lead Visit & Convert Charges', '2000', '10', '0', '0', '20000', 'Abhinav Pandey', 'Customise	', '2025-09-16 15:10:26'),
(1247, '1758016723408', 140, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '2', '300', '250', '6100', 'Abhinav Pandey', 'Customise	', '2025-09-16 15:29:08'),
(1248, '1758016723408', 140, 'Video Shoot', 'Camera Shoot', NULL, '15 min - 1 Hr', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-09-16 15:29:18'),
(1249, '1758016723408', 140, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Customise	', '2025-09-16 15:29:38'),
(1250, '1758016723408', 140, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '1', '300', '0', '800', 'Abhinav Pandey', 'Customise	', '2025-09-16 15:29:49'),
(1255, '1758015195080', 102, 'Video Shoot', 'Model Shoot', NULL, 'Model Shoot With Mobile', '3500', '1', '0', '0', '3500', 'Abhinav Pandey', 'Customise	', '2025-09-16 18:04:35'),
(1270, '1758111182522', 138, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '8', '0', '0', '4000', 'Abhinav Pandey', 'Customise	', '2025-09-17 17:47:10'),
(1271, '1758111182522', 138, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '4', '0', '0', '4000', 'Abhinav Pandey', 'Customise	', '2025-09-17 17:47:21'),
(1272, '1758111182522', 138, 'Social Media Optimization', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '10', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-09-17 17:47:41'),
(1281, '1758123158995', 142, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Customise	', '2025-09-17 21:03:47'),
(1282, '1758123158995', 142, 'Video Shoot', 'Model Shoot', NULL, 'Model Based Shoot with Mobile', '1000', '2', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-09-17 21:13:05'),
(1283, '1758123158995', 142, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '0', '7200', 'Abhinav Pandey', 'Customise	', '2025-09-18 12:05:24'),
(1284, '1758123158995', 142, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '400', '5', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-09-17 21:41:35'),
(1285, '1758173221111', 141, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-18 10:57:11'),
(1286, '1758173221111', 141, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-18 10:57:11'),
(1287, '1758173221111', 141, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-18 10:57:11'),
(1294, '1758178594520', 144, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'deepanshu', 'Basic', '2025-09-18 12:26:38'),
(1295, '1758178594520', 144, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'deepanshu', 'Basic', '2025-09-18 12:26:38'),
(1296, '1758178594520', 144, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'deepanshu', 'Basic', '2025-09-18 12:26:38'),
(1297, '1758182237953', 146, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-09-18 13:27:20'),
(1298, '1758182237953', 146, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium', '2025-09-18 13:27:20'),
(1299, '1758182237953', 146, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Premium', '2025-09-18 13:27:20'),
(1300, '1758182237953', 146, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium', '2025-09-18 13:27:20'),
(1301, '1758182237953', 146, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium', '2025-09-18 13:27:20'),
(1302, '1758182237953', 146, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium', '2025-09-18 13:27:20'),
(1303, '1758178226961', 143, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Lavina Kukreja', 'Basic', '2025-09-18 13:27:41'),
(1304, '1758178226961', 143, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Lavina Kukreja', 'Basic', '2025-09-18 13:27:41'),
(1305, '1758178226961', 143, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Lavina Kukreja', 'Basic', '2025-09-18 13:27:41'),
(1307, '1758182285382', 143, 'GMB', 'LOCAL SEO', NULL, 'GMB Update', '1000', '1', '0', '0', '1000', 'Lavina Kukreja', 'Customise	', '2025-09-18 13:29:35'),
(1308, '1758182285382', 143, 'GMB', 'LOCAL SEO', NULL, '1 Keyword', '1200', '5', '0', '0', '6000', 'Lavina Kukreja', 'Customise	', '2025-10-06 18:08:51'),
(1309, '1758182285382', 143, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '2', '300', '250', '4100', 'Lavina Kukreja', 'Customise	', '2025-09-18 13:31:38'),
(1310, '1758182285382', 143, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '4', '300', '250', '6200', 'Lavina Kukreja', 'Customise	', '2025-09-18 13:32:40'),
(1311, '1758182285382', 143, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '6', '300', '0', '4800', 'Lavina Kukreja', 'Customise	', '2025-10-06 18:10:17'),
(1312, '1758182285382', 143, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Lavina Kukreja', 'Customise	', '2025-09-18 13:38:01'),
(1319, '1758191578036', 148, 'Video Services', 'Premium Video', NULL, 'Advance Editing with VFX/Drone shoot/Effects', '7000', '2', '300', '250', '15100', 'Deepanshu Shukla', 'Customise	', '2025-09-18 16:04:12'),
(1320, '1758191578036', 148, 'Video Services', 'Shorts', NULL, 'Advanced Editing', '3000', '2', '300', '250', '7100', 'Deepanshu Shukla', 'Customise	', '2025-09-18 16:04:43'),
(1321, '1758191578036', 148, 'Graphics Design', 'Thumbnail', NULL, 'Thumbnail Creation', '250', '1', '300', '0', '550', 'Deepanshu Shukla', 'Customise	', '2025-09-18 16:27:22'),
(1322, '1758191578036', 148, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '1', '300', '0', '800', 'Abhinav Pandey', 'Customise	', '2025-09-18 16:48:49'),
(1323, '1758194850193', 148, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', 'Customise	', '2025-09-18 16:57:57'),
(1324, '1758194850193', 148, 'Video Shoot', 'Camera Shoot', NULL, '15 min - 1 Hr', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-09-18 16:58:09'),
(1325, '1758194850193', 148, 'Video Services', 'Premium Video', NULL, 'Advance Editing with VFX/Drone shoot/Effects', '7000', '1', '300', '0', '7300', 'Abhinav Pandey', 'Customise	', '2025-09-18 17:00:04'),
(1329, '1758196206713', 148, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-18 17:20:20'),
(1330, '1758196206713', 148, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-18 17:20:20'),
(1331, '1758197898944', 148, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '3', '0', '0', '2550', 'Abhinav Pandey', 'Test', '2025-09-18 17:54:32'),
(1332, '1758197898944', 148, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-18 17:48:31'),
(1336, '1758288729216', 150, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '10', '300', '0', '8000', 'Abhinav Pandey', 'Basic', '2025-09-21 19:13:52'),
(1337, '1758288729216', 150, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Basic', '2025-09-21 19:14:02'),
(1338, '1758288729216', 150, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Basic', '2025-09-21 19:14:11'),
(1339, '1758288729216', 150, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '2', '0', '0', '4000', 'Abhinav Pandey', 'Customise	', '2025-09-21 19:14:22'),
(1340, '1758347425386', 114, 'Video Shoot', 'Camera Shoot', NULL, '15 min - 1 Hr', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise	', '2025-09-20 11:20:37'),
(1341, '1758347425386', 114, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '2', '0', '0', '2400', 'Abhinav Pandey', 'Customise	', '2025-09-20 18:40:36'),
(1342, '1758347425386', 114, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-09-20 18:40:15'),
(1345, '1758374436963', 149, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '10', '300', '250', '15500', 'Abhinav Pandey', 'Customise', '2025-09-20 18:50:47'),
(1346, '1758374436963', 149, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Customise', '2025-09-20 18:51:14'),
(1347, '1758374436963', 149, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '14', '300', '250', '21700', 'Abhinav Pandey', 'Customise', '2025-09-20 18:51:40'),
(1348, '1758521324859', 149, 'Video Services', 'Reels', NULL, 'Advanced Editing', '4000', '2', '300', '250', '9100', 'Abhinav Pandey', 'Customise', '2025-09-22 11:39:33'),
(1349, '1758521324859', 149, 'Graphics Design', 'Static Graphics', NULL, 'Carousel', '700', '1', '300', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-09-22 11:39:53'),
(1350, '1758521324859', 149, 'SEO', 'Google My Business (GMB)', NULL, '1 Keyword', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-09-22 11:41:24'),
(1351, '1758526466908', 149, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-22 13:04:30'),
(1352, '1758526466908', 149, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-22 13:04:30'),
(1354, '1758526466908', 149, 'SEO', 'Google My Business (GMB)', NULL, '1 Keyword', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-09-22 13:11:32'),
(1356, '1758526915072', 132, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '0', '1800', 'Abhinav Pandey', 'Customise', '2025-09-22 13:15:08'),
(1357, '1758526915072', 132, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Customise', '2025-09-22 13:17:27'),
(1358, '1758526466908', 149, 'Video Services', 'Shorts', NULL, 'Advanced Editing', '3000', '1', '300', '250', '3550', 'Abhinav Pandey', 'Customise', '2025-09-22 13:17:32'),
(1359, '1758528039784', 149, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-22 13:30:44'),
(1360, '1758528039784', 149, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-22 13:30:44'),
(1361, '1758528039784', 149, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-22 13:30:44'),
(1367, '1758374436963', 149, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Customise', '2025-09-22 17:55:08'),
(1368, '1758543865896', 26, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-09-22 17:55:08'),
(1369, '1758543865896', 26, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '3', '300', '250', '4650', 'Abhinav Pandey', 'Customise', '2025-09-22 17:55:20'),
(1371, '1758543865896', 26, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Customise', '2025-09-22 17:56:15'),
(1372, '1758374436963', 149, 'Website Maintenance', 'Website Maintenance', NULL, 'Maintenance', '1500', '1', '0', '0', '1500', 'Abhinav Pandey', 'Customise', '2025-09-22 17:56:53'),
(1373, '1758543865896', 26, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '3', '300', '250', '9150', 'Abhinav Pandey', 'Customise', '2025-09-22 17:57:26'),
(1377, '1758611941655', 149, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-23 12:49:20'),
(1378, '1758611941655', 149, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-23 12:49:20'),
(1379, '1758611941655', 149, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-23 12:49:20'),
(1380, '1758611941655', 149, 'Graphics Design', 'Static Graphics', NULL, 'Carousel', '700', '1', '300', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-09-23 12:51:23'),
(1381, '1758611941655', 149, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-09-23 12:54:43'),
(1382, '1758611941655', 149, 'SEO', 'Backlink Creation', NULL, '1 Website', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Customise', '2025-09-23 13:01:47'),
(1383, '1758617939012', 153, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-09-23 14:28:59'),
(1384, '1758617939012', 153, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '5', '300', '250', '10250', 'Abhinav Pandey', 'Standard', '2025-09-23 15:24:02'),
(1386, '1758617964774', 153, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-09-23 14:29:27'),
(1387, '1758617964774', 153, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '8', '300', '250', '16400', 'Abhinav Pandey', 'Premium', '2025-09-23 15:22:28'),
(1389, '1758617964774', 153, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium', '2025-09-23 14:29:27'),
(1390, '1758617964774', 153, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium', '2025-09-23 14:29:27'),
(1391, '1758617964774', 153, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium', '2025-09-23 14:29:27'),
(1393, '1758625556091', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-23 16:35:55'),
(1394, '1758625556091', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-23 16:35:55'),
(1395, '1758625658291', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Mohammad Mazhar', 'Basic', '2025-09-23 16:37:43'),
(1396, '1758625658291', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Mohammad Mazhar', 'Basic', '2025-09-23 16:37:43'),
(1397, '1758625658291', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Mohammad Mazhar', 'Basic', '2025-09-23 16:37:43'),
(1398, '1758625556091', 154, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-09-23 16:38:45'),
(1399, '1758625556091', 154, 'SEO', 'Backlink Creation', NULL, '1 Website', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Customise', '2025-09-23 16:39:11'),
(1400, '1758625778033', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-09-24 11:03:15'),
(1401, '1758625778033', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Mohammad Mazhar', 'Premium', '2025-09-23 16:40:43'),
(1402, '1758625778033', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Mohammad Mazhar', 'Premium', '2025-09-23 16:40:43'),
(1403, '1758625778033', 155, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Mohammad Mazhar', 'Premium', '2025-09-23 16:40:43'),
(1404, '1758625778033', 155, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Mohammad Mazhar', 'Premium', '2025-09-23 16:40:43'),
(1405, '1758625778033', 155, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Mohammad Mazhar', 'Premium', '2025-09-23 16:40:43'),
(1406, '1758625778033', 155, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Mohammad Mazhar', 'Customise', '2025-09-23 16:41:27'),
(1407, '1758625778033', 155, 'GMB', 'LOCAL SEO', NULL, '1 Keyword', '1200', '5', '0', '0', '6000', 'Mohammad Mazhar', 'Customise', '2025-09-23 16:42:01'),
(1408, '1758625556091', 154, 'Graphics Design', 'Static Graphics', NULL, 'Carousel', '700', '1', '300', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-09-23 16:42:11'),
(1411, '1758627783979', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Mohammad Mazhar', 'Basic', '2025-09-23 17:13:21'),
(1412, '1758627783979', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Mohammad Mazhar', 'Basic', '2025-09-23 17:13:21'),
(1413, '1758627783979', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Mohammad Mazhar', 'Basic', '2025-09-23 17:13:21'),
(1416, '1758627783979', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Mohammad Mazhar', 'Basic', '2025-09-23 17:14:23'),
(1417, '1758627783979', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Mohammad Mazhar', 'Basic', '2025-09-23 17:14:23'),
(1418, '1758627783979', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Mohammad Mazhar', 'Basic', '2025-09-23 17:14:23'),
(1419, '1758627783979', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Mohammad Mazhar', 'Standard', '2025-09-23 17:32:09'),
(1420, '1758627783979', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Mohammad Mazhar', 'Standard', '2025-09-23 17:32:09'),
(1421, '1758627783979', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Mohammad Mazhar', 'Standard', '2025-09-23 17:32:09'),
(1422, '1758627783979', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Mohammad Mazhar', 'Standard', '2025-09-23 17:34:24'),
(1423, '1758627783979', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Mohammad Mazhar', 'Standard', '2025-09-23 17:34:24'),
(1424, '1758627783979', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Mohammad Mazhar', 'Standard', '2025-09-23 17:34:24'),
(1425, '1758627783979', 155, 'SEO', 'Backlink Creation', NULL, '3 Website', '229', '300', '0', '0', '68700', 'Mohammad Mazhar', 'Standard SEO', '2025-09-23 17:35:22');
INSERT INTO `calculator_transactions` (`id`, `txn_id`, `client_id`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `employee`, `plan_name`, `created_at`) VALUES
(1426, '1758625778033', 155, 'Video Services', 'Premium Video', NULL, 'Advance Editing with VFX/Drone shoot/Effects', '7000', '1', '300', '250', '7550', 'Abhinav Pandey', 'Customise', '2025-09-24 11:05:43'),
(1427, '1758692498775', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-24 11:11:51'),
(1428, '1758692498775', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-24 11:11:51'),
(1429, '1758692498775', 154, 'Graphics Design', 'Static Graphics', NULL, 'Changes Post', '200', '1', '300', '0', '500', 'Abhinav Pandey', 'Customise', '2025-09-24 11:13:07'),
(1485, '1758700993840', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-24 13:33:18'),
(1486, '1758700993840', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-24 13:33:18'),
(1550, '1758727032599', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-24 20:47:16'),
(1551, '1758727032599', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-24 20:47:16'),
(1552, '1758727032599', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-24 20:47:16'),
(1553, '1758727032599', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-09-24 20:47:17'),
(1554, '1758727032599', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-09-24 20:47:17'),
(1555, '1758727032599', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-09-24 20:47:17'),
(1556, '1758727032599', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-09-24 20:47:19'),
(1557, '1758727032599', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium', '2025-09-24 20:47:19'),
(1558, '1758727032599', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Premium', '2025-09-24 20:47:19'),
(1559, '1758727032599', 155, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium', '2025-09-24 20:47:19'),
(1560, '1758727032599', 155, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium', '2025-09-24 20:47:19'),
(1561, '1758727032599', 155, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium', '2025-09-24 20:47:19'),
(1565, '1758776574367', 155, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Vishakha Agrahari', 'Podcast Basic', '2025-09-25 10:33:14'),
(1566, '1758776574367', 155, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Vishakha Agrahari', 'Podcast Basic', '2025-09-25 10:33:14'),
(1567, '1758776574367', 155, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Vishakha Agrahari', 'Podcast Basic', '2025-09-25 10:33:27'),
(1568, '1758776574367', 155, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Vishakha Agrahari', 'Podcast Basic', '2025-09-25 10:33:27'),
(1569, '1758776574367', 155, 'Video Shoot', 'Podcast Video Shoot', NULL, '20 Mins - 40 Mins', '4000', '1', '0', '0', '4000', 'Vishakha Agrahari', 'Podcast Standard', '2025-09-25 10:35:05'),
(1570, '1758776574367', 155, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Vishakha Agrahari', 'Podcast Standard', '2025-09-25 10:35:05'),
(1571, '1758776574367', 155, 'Video Services', 'Shorts', NULL, 'Basic Editing', '500', '6', '300', '250', '6300', 'Vishakha Agrahari', 'Podcast Standard', '2025-09-25 10:35:05'),
(1572, '1758776574367', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Vishakha Agrahari', 'Test', '2025-09-25 10:35:39'),
(1573, '1758776574367', 155, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Vishakha Agrahari', 'Test', '2025-09-25 10:35:39'),
(1574, '1758776574367', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Vishakha Agrahari', 'Tiny', '2025-09-25 10:39:07'),
(1575, '1758776574367', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Vishakha Agrahari', 'Tiny', '2025-09-25 10:40:58'),
(1576, '1758776574367', 155, 'SEO', 'Backlink Creation', NULL, '3 Website', '229', '300', '0', '0', '68700', 'Vishakha Agrahari', 'Standard SEO', '2025-09-25 10:41:47'),
(1577, '1758776574367', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Vishakha Agrahari', 'Tiny', '2025-09-25 10:54:57'),
(1578, '1758776574367', 155, 'SEO', 'Backlink Creation', NULL, '3 Website', '229', '300', '0', '0', '68700', 'Vishakha Agrahari', 'Standard SEO', '2025-09-25 10:55:27'),
(1579, '1758776574367', 155, 'SEO', 'Backlink Creation', NULL, '3 Website', '229', '300', '0', '0', '68700', 'Vishakha Agrahari', 'Standard SEO', '2025-09-25 11:30:32'),
(1580, '1758776574367', 155, 'SEO', 'Backlink Creation', NULL, '3 Website', '229', '300', '0', '0', '68700', 'Vishakha Agrahari', 'Standard SEO', '2025-09-25 11:30:46'),
(1583, '1758787020554', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-25 13:27:05'),
(1584, '1758787020554', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-25 13:27:05'),
(1585, '1758625556091', 154, 'Social Media Optimization', 'Organic page optimization', NULL, 'Description, hashtag, caption, message responses and group sharing', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Customise', '2025-09-25 13:54:53'),
(1586, '1758625556091', 154, 'Podcast Video creation', 'Standard Video creation (Shoot, Editing and Four shorts)', NULL, 'Standard Video creation (Shoot, Editing and shorts)', '10000', '1', '0', '0', '10000', 'Abhinav Pandey', 'Customise', '2025-09-25 13:57:08'),
(1587, '1758625556091', 154, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '1', '0', '0', '1200', 'Abhinav Pandey', 'Customise', '2025-09-25 13:57:58'),
(1610, '1758796172840', 158, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '1', '300', '250', '1550', 'Abhinav Pandey', 'Customise', '2025-09-25 15:59:42'),
(1611, '1758796172840', 158, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Customise', '2025-09-25 15:59:50'),
(1612, '1758796172840', 158, 'Video Shoot', 'Mobile Shoot', NULL, '30 min - 90 min', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-09-25 15:59:56'),
(1613, '1758796172840', 158, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-09-25 16:00:05'),
(1614, '1758796172840', 158, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-09-25 16:00:17'),
(1616, '1758796398957', 154, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-25 16:03:21'),
(1617, '1758796398957', 154, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-25 16:03:21'),
(1618, '1758796398957', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-25 16:03:21'),
(1623, '1758804907336', 102, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Basic DM ', '2025-09-25 18:25:11'),
(1624, '1758807224551', 155, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Customise', '2025-09-25 19:05:16'),
(1625, '1758807224551', 155, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', 'Customise', '2025-09-25 19:20:16'),
(1626, '1758807224551', 155, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '2', '300', '250', '3100', 'Abhinav Pandey', 'Customise', '2025-09-25 19:25:07'),
(1649, '1758874979220', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Abhinav Pandey', 'Basic DM Plan', '2025-09-26 14:23:58'),
(1650, '1758874979220', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Basic DM Plan', '2025-09-26 14:23:58'),
(1651, '1758898034373', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '250', '2050', 'Abhinav Pandey', 'Customise', '2025-09-26 20:17:26'),
(1652, '1758898269960', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-26 20:21:14'),
(1653, '1758898269960', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-26 20:21:14'),
(1654, '1758898269960', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-26 20:21:14'),
(1655, '1758898288612', 155, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-26 20:21:31'),
(1656, '1758898288612', 155, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-26 20:21:31'),
(1657, '1758898288612', 155, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-26 20:21:31'),
(1670, '1758898637748', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-26 20:27:22'),
(1671, '1758898637748', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-26 20:27:22'),
(1672, '1758898637748', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-26 20:27:22'),
(1673, '1758898637748', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-26 20:27:37'),
(1674, '1758898637748', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-26 20:27:37'),
(1675, '1758898637748', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-26 20:27:37'),
(1676, '1758898637748', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-26 20:27:42'),
(1677, '1758898637748', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-26 20:27:42'),
(1678, '1758898637748', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-26 20:27:42'),
(1709, '1758898637748', 161, 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Podcast Basic', '2025-09-26 20:41:31'),
(1710, '1758898637748', 161, 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', 'Abhinav Pandey', 'Podcast Basic', '2025-09-26 20:41:31'),
(1711, '1758899504082', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Tiny', '2025-09-26 20:41:47'),
(1712, '1758899518290', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-26 20:42:06'),
(1713, '1758899518290', 161, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-26 20:42:06'),
(1714, '1758899518290', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-26 20:42:12'),
(1715, '1758899518290', 161, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-26 20:42:12'),
(1716, '1758899518290', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Tiny', '2025-09-26 20:42:17'),
(1717, '1758899577875', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-26 20:43:09'),
(1718, '1758899577875', 161, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-26 20:43:09'),
(1719, '1758899577875', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-09-26 20:43:16'),
(1720, '1758899577875', 161, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-09-26 20:43:16'),
(1721, '1758899577875', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-09-26 20:43:20'),
(1722, '1758899577875', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-09-26 20:43:20'),
(1723, '1758899577875', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-09-26 20:43:20'),
(1724, '1758900126891', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-09-26 20:53:46'),
(1725, '1758900126891', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-09-26 20:53:46'),
(1726, '1758900126891', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-09-26 20:53:46'),
(1727, '1758970268204', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-09-27 16:21:18'),
(1728, '1758970268204', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-09-27 16:21:18'),
(1729, '1758970268204', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-09-27 16:21:18'),
(1745, '1759238599973', 163, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '24', '0', '0', '12000', 'Abhinav Pandey', 'Customise', '2025-09-30 18:56:54'),
(1747, '1759238599973', 163, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '15', '0', '0', '15000', 'Abhinav Pandey', 'Customise', '2025-09-30 18:59:09'),
(1754, '1759301619585', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-10-01 12:23:41'),
(1755, '1759301619585', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-10-01 12:23:41'),
(1756, '1759301619585', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-10-01 12:23:41'),
(1757, '1759301845519', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-10-01 12:33:46'),
(1758, '1759301845519', 161, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '8', '300', '250', '12400', 'Abhinav Pandey', 'Customise', '2025-10-01 12:28:32'),
(1760, '1759309683267', 164, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-10-01 14:38:23'),
(1761, '1759309683267', 164, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '8', '300', '250', '12400', 'Abhinav Pandey', 'Customise', '2025-10-01 14:38:41'),
(1762, '1759301845519', 161, 'Video Services', 'Reels', 1, 'Basic Editing', '1000', '1', '300', '250', '1550', 'Abhinav Pandey', 'Customise', '2025-10-01 15:14:00'),
(1763, '1759314583613', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-01 15:59:57'),
(1764, '1759314583613', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-01 15:59:57'),
(1765, '1759314583613', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-01 16:02:24'),
(1766, '1759314583613', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-01 16:02:24'),
(1768, '1759314918053', 154, 'Video Services', 'Reels', 4, 'Advanced Editing', '4000', '1', '300', '250', '4550', 'Abhinav Pandey', 'Customise', '2025-10-01 16:05:34'),
(1769, '1759314918053', 154, 'Video Shoot', 'Camera Shoot', 15, '15 min - 1 Hr', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-01 16:05:48'),
(1770, '1759314918053', 154, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '1', '300', '0', '800', 'Abhinav Pandey', 'Customise', '2025-10-01 16:06:01'),
(1771, '1759314918053', 154, 'SEO', 'Intended for Lead Generation', 23, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-10-01 16:06:17'),
(1773, '1759315321218', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-01 16:12:07'),
(1774, '1759315321218', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-01 16:12:07'),
(1777, '1759317223790', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-01 16:43:46'),
(1778, '1759317223790', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-01 16:43:46'),
(1779, '1759317223790', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-01 16:43:46'),
(1780, '1759317223790', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-01 16:43:50'),
(1781, '1759317223790', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-01 16:43:50'),
(1782, '1759317223790', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-01 16:43:50'),
(1783, '1759317223790', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-01 16:46:27'),
(1784, '1759317223790', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-01 16:46:27'),
(1785, '1759317223790', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-01 16:46:27'),
(1786, '1759317441263', 32, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '4', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-10-01 16:47:39'),
(1787, '1759317556690', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-01 16:49:23'),
(1788, '1759317556690', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-01 16:49:23'),
(1789, '1759317556690', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-01 16:49:23'),
(1790, '1759317441263', 32, 'Social Media Marketing', 'Meta ADS', 110, 'Facebook & Instagram', '9000', '1', '0', '0', '9000', 'Abhinav Pandey', 'Customise', '2025-10-01 16:49:35'),
(1794, '1759317556690', 161, 'SEO', 'Backlink Creation', 93, '1 Website', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Customise', '2025-10-01 17:14:04'),
(1795, '1759316470881', 154, 'Video Services', 'Reels', 1, 'Basic Editing', '1000', '1', '300', '250', '1550', 'Abhinav Pandey', 'Customise', '2025-10-01 17:17:40'),
(1799, '1759319472927', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-01 17:21:15'),
(1800, '1759319472927', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-01 17:21:15'),
(1821, '1759325284316', 166, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-10-01 18:58:07'),
(1822, '1759325284316', 166, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-10-01 18:58:07'),
(1823, '1759325284316', 166, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-10-01 18:58:07'),
(1824, '1759325302604', 166, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-01 18:58:25'),
(1825, '1759325302604', 166, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-01 18:58:25'),
(1826, '1759325302604', 166, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-01 18:58:25'),
(1827, '1759325302604', 166, 'GMB', 'LOCAL SEO', 69, 'GMB Setup', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-01 19:11:00'),
(1828, '1759325302604', 166, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-01 19:12:03'),
(1829, '1759325284316', 166, 'GMB', 'LOCAL SEO', 69, 'GMB Setup', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-01 19:12:33'),
(1830, '1759325284316', 166, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-01 19:12:51'),
(1831, '1759329129281', 165, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-10-01 20:02:36'),
(1832, '1759329129281', 165, 'Graphics Design', 'Static Graphics', 13, 'Carousel', '700', '3', '300', '0', '3000', 'Abhinav Pandey', 'Customise', '2025-10-01 20:02:47'),
(1833, '1759329129281', 165, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '6', '300', '0', '10800', 'Abhinav Pandey', 'Customise', '2025-10-01 20:03:00'),
(1834, '1759329129281', 165, 'Video Services', 'Testimonial Video', 114, 'Basic Editing', '1000', '3', '300', '0', '3900', 'Abhinav Pandey', 'Customise', '2025-10-01 20:03:15'),
(1835, '1759329129281', 165, 'Video Services', 'Interview Video', 113, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Customise', '2025-10-01 20:03:29'),
(1836, '1759329129281', 165, 'Video Services', 'Youtube Podcast Video', 117, 'Standard Editing', '4000', '1', '0', '0', '4000', 'Abhinav Pandey', 'Customise', '2025-10-01 20:03:47'),
(1837, '1759329129281', 165, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-01 20:03:59'),
(1838, '1759472327491', 161, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '1', '300', '250', '2050', 'Abhinav Pandey', 'Customise', '2025-10-03 11:48:59'),
(1839, '1759472327491', 161, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '1', '300', '0', '800', 'Abhinav Pandey', 'Customise', '2025-10-03 11:49:05'),
(1849, '1759475367222', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-03 12:44:35'),
(1850, '1759475367222', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-03 12:44:35'),
(1851, '1759475367222', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-03 12:44:35'),
(1855, '1759475686521', 161, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-10-03 12:49:04'),
(1856, '1759475686521', 161, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-10-03 12:49:04'),
(1857, '1759475686521', 161, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-10-03 12:49:04'),
(1860, '1759477676259', 166, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Jayant Hazari', 'Customise', '2025-10-03 13:18:45'),
(1861, '1759477676259', 166, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '2', '300', '0', '3600', 'Jayant Hazari', 'Customise', '2025-10-03 13:22:49'),
(1865, '1759483173961', 167, 'Video Services', 'Premium Video', 5, 'Basic Editing', '1500', '10', '0', '0', '15000', 'Lavina Kukreja', 'Customise', '2025-10-06 11:31:11'),
(1866, '1759477676259', 166, 'GMB', 'GMB Profile Handle', 120, 'GMB Update & Review Handling', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-03 15:23:19'),
(1867, '1759558354057', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 11:42:40'),
(1868, '1759558354057', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 11:42:40'),
(1869, '1759558354057', 154, 'Video Shoot', 'Mobile Shoot', 43, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Customise', '2025-10-04 11:43:12'),
(1870, '1759560771577', 154, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-04 12:22:54'),
(1871, '1759560771577', 154, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-04 12:22:54'),
(1872, '1759560771577', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-04 12:22:54'),
(1873, '1759562564266', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 12:52:47'),
(1874, '1759562564266', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 12:52:47'),
(1875, '1759562564266', 154, 'Graphics Design', 'Static Graphics', 115, 'Carousel Post', '1000', '2', '300', '0', '2600', 'Abhinav Pandey', 'Customise', '2025-10-04 12:53:25'),
(1876, '1759565473560', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 13:41:19'),
(1877, '1759565473560', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 13:41:19'),
(1878, '1759566090025', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 13:51:33'),
(1879, '1759566090025', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 13:51:33'),
(1895, '1759570156443', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:19'),
(1896, '1759570156443', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:19'),
(1897, '1759570157464', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:20'),
(1898, '1759570157464', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:20'),
(1899, '1759570157723', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:21'),
(1900, '1759570157723', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:21'),
(1901, '1759570158061', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:21'),
(1902, '1759570158061', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:21'),
(1903, '1759570158374', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:21'),
(1904, '1759570158374', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:21'),
(1905, '1759570158448', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:21'),
(1906, '1759570158448', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:21'),
(1907, '1759570158323', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1908, '1759570158323', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1910, '1759570157843', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1911, '1759570157843', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1912, '1759570159311', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1913, '1759570159311', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1914, '1759570159230', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1915, '1759570159230', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1916, '1759570159168', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1917, '1759570159168', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:22'),
(1918, '1759570159593', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1919, '1759570159593', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1920, '1759570159619', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1921, '1759570159619', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1922, '1759570158809', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1923, '1759570158809', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1924, '1759570159766', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1925, '1759570159766', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1926, '1759570158844', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1927, '1759570158844', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1928, '1759570158992', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1929, '1759570158992', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1930, '1759570159590', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1931, '1759570159590', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1932, '1759570159901', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1933, '1759570159901', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1934, '1759570159765', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1935, '1759570159765', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1936, '1759570159666', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1937, '1759570159666', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1938, '1759570159858', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1939, '1759570159858', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1940, '1759570158991', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1941, '1759570158991', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1942, '1759570159309', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1943, '1759570159309', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1944, '1759570159344', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1945, '1759570159344', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-04 14:59:23'),
(1947, '1759570474612', 168, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-04 15:04:58'),
(1948, '1759570474612', 168, 'Video Services', 'Reels', 124, 'Standard Editing', '1200', '6', '0', '250', '8700', 'Abhinav Pandey', 'Customise', '2025-10-04 15:05:13'),
(1949, '1759570474612', 168, 'Video Services', 'Testimonial Video', 121, 'Basic Editing', '600', '2', '0', '250', '1700', 'Abhinav Pandey', 'Customise', '2025-10-04 15:05:26'),
(1950, '1759570474612', 168, 'Video Services', 'Shorts', 10, 'Advanced Editing', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-04 15:05:40'),
(1951, '1759570474612', 168, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-04 15:05:59'),
(1952, '1759570474612', 168, 'Social Media Optimization', 'Social Media Posting', 96, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Abhinav Pandey', 'Customise', '2025-10-04 15:08:52'),
(1953, '1759576984354', 169, 'Graphics Design', 'Static Graphics', 116, 'Post Design', '300', '22', '0', '0', '6600', 'Abhinav Pandey', 'Customise', '2025-10-04 16:53:30'),
(1955, '1759576984354', 169, 'Video Services', 'Reels', 4, 'Advanced Editing', '2000', '2', '0', '0', '4000', 'Abhinav Pandey', 'Customise', '2025-10-04 16:54:06'),
(1957, '1759576984354', 169, 'Video Shoot', 'Camera Shoot', 126, 'Professional Studio Shoot', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-04 16:55:29'),
(1964, '1759742629229', 171, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-06 14:53:51'),
(1965, '1759742629229', 171, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-06 14:53:51'),
(1966, '1759742629229', 171, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-06 14:53:51'),
(1976, '1759742629229', 171, 'Social Media Creation', 'Meta Account Setup', 84, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-06 15:23:03'),
(1977, '1759742629229', 171, 'Social Media Creation', 'Meta Account Setup', 85, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-06 15:23:14'),
(1978, '1759742629229', 171, 'Social Media Creation', 'Meta Account Setup', 86, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-06 15:23:26'),
(1979, '1759742629229', 171, 'Social Media Creation', 'Meta Account Setup', 87, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', 'Customise', '2025-10-06 15:23:37'),
(1984, '1759766835193', 172, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Abhinav Pandey', 'Customise', '2025-10-06 21:51:45'),
(1985, '1759766835193', 172, 'Video Services', 'Reels', 124, 'Standard Editing', '1200', '4', '300', '250', '7000', 'Abhinav Pandey', 'Customise', '2025-10-06 21:41:13'),
(1988, '1759766835193', 172, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-06 22:05:33'),
(1990, '1759766835193', 172, 'Social Media Marketing', 'Meta ADS', 127, 'Facebook & Instagram Ads', '8350', '1', '0', '0', '8350', 'Abhinav Pandey', 'Customise', '2025-10-06 21:45:11'),
(1991, '1759766835193', 172, 'SEO', 'Intended for Lead Generation', 129, 'Per Keyword', '1500', '11', '0', '0', '16500', 'Abhinav Pandey', 'Customise', '2025-10-06 22:05:24'),
(1992, '1759766835193', 172, 'Video Services', 'Shorts', 9, 'Standard Editing', '1500', '1', '0', '0', '1500', 'Abhinav Pandey', 'Customise', '2025-10-06 21:54:16'),
(1993, '1759766835193', 172, 'Video Services', 'Testimonial Video', 132, 'Basic Editing', '500', '2', '300', '250', '2100', 'Abhinav Pandey', 'Customise', '2025-10-06 22:05:09'),
(1997, '1759826420473', 170, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-07 14:10:29'),
(1998, '1759826420473', 170, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-07 14:10:29'),
(1999, '1759826420473', 170, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-07 14:10:29'),
(2000, '1759830679237', 171, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-07 15:21:21'),
(2001, '1759830679237', 171, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-07 15:21:21'),
(2002, '1759830679237', 171, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-07 15:21:21'),
(2003, '1759830679237', 171, 'Social Media Creation', 'Meta Account Setup', 84, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-07 15:21:59'),
(2004, '1759830679237', 171, 'Social Media Creation', 'Meta Account Setup', 85, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-07 15:22:11'),
(2005, '1759830679237', 171, 'Social Media Creation', 'Meta Account Setup', 86, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-07 15:22:22'),
(2015, '1759905740641', 174, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '10', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-08 12:15:02'),
(2016, '1759905740641', 174, 'Video Services', 'Reels', 1, 'Basic Editing', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-08 12:19:18'),
(2017, '1759905740641', 174, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-08 12:19:33'),
(2018, '1760177697723', 175, 'Video Services', 'Reels', 1, 'Basic Editing', '1000', '4', '300', '250', '6200', 'Lavina Kukreja', 'Customise', '2025-10-11 15:45:30'),
(2019, '1760177697723', 175, 'Video Services', 'Premium Video', 5, 'Basic Editing', '1500', '1', '300', '250', '2050', 'Lavina Kukreja', 'Customise', '2025-10-11 15:54:43'),
(2020, '1760177697723', 175, 'GMB', 'LOCAL SEO', 102, 'GMB Update', '1000', '1', '0', '0', '1000', 'Lavina Kukreja', 'Customise', '2025-10-11 15:47:04'),
(2021, '1760177697723', 175, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-11-06 11:35:28'),
(2022, '1760177697723', 175, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Lavina Kukreja', 'Customise', '2025-10-11 15:48:17'),
(2023, '1760177697723', 175, 'Graphics Design', 'Festival Post', 71, 'Festive Changes Post', '200', '2', '300', '0', '1000', 'Lavina Kukreja', 'Customise', '2025-10-11 15:49:39'),
(2024, '1760181425853', 176, 'Video Services', 'Reels', 1, 'Basic Editing', '1000', '4', '300', '0', '5200', 'Lavina Kukreja', 'Customise', '2025-10-11 16:51:28'),
(2025, '1760181425853', 176, 'Graphics Design', 'Static Graphics', 72, 'Post Design', '400', '2', '300', '0', '1400', 'Lavina Kukreja', 'Customise', '2025-10-11 16:56:52'),
(2026, '1760181425853', 176, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '2', '0', '0', '2000', 'Lavina Kukreja', 'Customise', '2025-10-11 16:53:01'),
(2027, '1760181425853', 176, 'Graphics Design', 'Festival Post', 71, 'Festive Changes Post', '200', '2', '300', '0', '1000', 'Lavina Kukreja', 'Customise', '2025-10-11 16:57:16'),
(2028, '1760181425853', 176, 'Video Shoot', 'Mobile Shoot', 43, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Lavina Kukreja', 'Customise', '2025-10-11 16:58:22'),
(2030, '1759570474612', 168, 'Social Media Marketing', 'Meta ADS', 135, 'Facebook & Instagram Ads Service Charge', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-10-14 11:47:49'),
(2032, '1759837469691', 173, 'Video Services', 'Reels', 124, 'Standard Editing', '1200', '2', '300', '0', '3000', 'Abhinav Pandey', 'Customise', '2025-10-14 15:57:50'),
(2033, '1760438977387', 170, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '10', '300', '0', '8000', 'Abhinav Pandey', 'Customise', '2025-10-14 16:20:01'),
(2034, '1760438977387', 170, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '5', '300', '250', '10250', 'Abhinav Pandey', 'Customise', '2025-10-14 16:20:09'),
(2035, '1759837469691', 173, 'Social Media Creation', 'Meta Account Setup', 84, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-14 16:56:58'),
(2036, '1759837469691', 173, 'Social Media Creation', 'Meta Account Setup', 85, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-14 16:57:11'),
(2037, '1759837469691', 173, 'Social Media Creation', 'Meta Account Setup', 86, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-14 16:57:20'),
(2038, '1759837469691', 173, 'Social Media Creation', 'Meta Account Setup', 87, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-14 16:58:47'),
(2039, '1759830679237', 171, 'Social Media Creation', 'Meta Account Setup', 87, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', 'Customise', '2025-10-14 17:27:13'),
(2041, '1759238599973', 163, 'SEO', 'Intended for Lead Generation', 136, '1 Keyword On-Page & Off-Page Optimization', '1200', '15', '0', '0', '18000', 'Abhinav Pandey', 'Customise', '2025-10-15 20:53:00'),
(2042, '1759238599973', 163, 'Video Services', 'Reels', 1, 'Basic Editing', '1000', '15', '0', '250', '18750', 'Abhinav Pandey', 'Customise', '2025-10-15 20:55:18'),
(2045, '1760605522234', 170, 'Video Services', 'Reels', 4, 'Advanced Editing', '2000', '5', '0', '0', '10000', 'Abhinav Pandey', 'Customise', '2025-10-16 14:37:30'),
(2046, '1760694703806', 154, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Test', '2025-10-17 15:21:53'),
(2047, '1760694703806', 154, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Abhinav Pandey', 'Test', '2025-10-17 15:21:53'),
(2048, '1760695661673', 177, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-10-17 15:37:45'),
(2049, '1760695661673', 177, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-10-17 15:37:45'),
(2050, '1760695661673', 177, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-10-17 15:37:45'),
(2051, '1760698694697', 177, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-10-17 16:28:19'),
(2052, '1760698694697', 177, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium', '2025-10-17 16:28:19'),
(2053, '1760698694697', 177, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Premium', '2025-10-17 16:28:19'),
(2054, '1760698694697', 177, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium', '2025-10-17 16:28:19'),
(2055, '1760698694697', 177, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium', '2025-10-17 16:28:19');
INSERT INTO `calculator_transactions` (`id`, `txn_id`, `client_id`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `employee`, `plan_name`, `created_at`) VALUES
(2056, '1760698694697', 177, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium', '2025-10-17 16:28:19'),
(2057, '1760700233504', 177, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-10-17 16:53:55'),
(2058, '1760700233504', 177, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-10-17 16:53:55'),
(2059, '1760700233504', 177, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-10-17 16:53:55'),
(2060, '1760701195331', 178, 'Video Services', 'Reels', 4, 'Advanced Editing', '2000', '5', '300', '250', '12750', 'Abhinav Pandey', 'Customise', '2025-10-17 17:10:15'),
(2061, '1760701195331', 178, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Abhinav Pandey', 'Customise', '2025-10-17 17:12:43'),
(2062, '1760700233504', 177, 'SEO', 'Intended for Lead Generation', 23, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-10-17 17:11:02'),
(2063, '1760702305547', 178, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-17 17:28:29'),
(2064, '1760702305547', 178, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-17 17:28:29'),
(2065, '1760702305547', 178, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-17 17:28:29'),
(2069, '1760704338009', 177, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-10-17 18:02:19'),
(2070, '1760704338009', 177, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-10-17 18:02:19'),
(2071, '1760704338009', 177, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-10-17 18:02:19'),
(2073, '1760705060926', 181, 'Video Services', 'Premium Video', 5, 'Basic Editing', '1500', '1', '300', '250', '2050', 'Lavina Kukreja', 'Customise', '2025-10-17 18:23:11'),
(2074, '1760705060926', 181, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Lavina Kukreja', 'Customise', '2025-10-17 18:23:47'),
(2075, '1760705060926', 181, 'Video Shoot', 'Mobile Shoot', 43, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Lavina Kukreja', 'Customise', '2025-10-17 18:30:23'),
(2076, '1760705060926', 181, 'Graphics Design', 'Static Graphics', 72, 'Post Design', '400', '4', '300', '0', '2800', 'Lavina Kukreja', 'Customise', '2025-10-17 18:25:48'),
(2078, '1761041628173', 182, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-10-21 15:43:51'),
(2079, '1761041628173', 182, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-10-21 15:43:51'),
(2080, '1761041628173', 182, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-10-21 15:43:51'),
(2081, '1761048201959', 182, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-10-21 17:33:24'),
(2082, '1761048201959', 182, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-10-21 17:33:24'),
(2083, '1761048201959', 182, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-10-21 17:33:24'),
(2085, '1758796172840', 158, 'Graphics Design', 'Static Graphics', 137, 'Festival Post', '450', '1', '0', '0', '450', 'Abhinav Pandey', 'Customise', '2025-10-22 18:11:48'),
(2086, '1761136936467', 158, 'Graphics Design', 'Static Graphics', 137, 'Festival Post', '450', '1', '0', '0', '450', 'Abhinav Pandey', 'Customise', '2025-10-22 18:12:30'),
(2087, '1761136936467', 158, 'Video Services', 'Reels', 1, 'Basic Editing', '1000', '1', '300', '250', '1550', 'Abhinav Pandey', 'Customise', '2025-10-22 18:13:15'),
(2088, '1761136936467', 158, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Customise', '2025-10-22 18:13:24'),
(2089, '1761136936467', 158, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-22 18:13:40'),
(2091, '1761136936467', 158, 'Video Shoot', 'Drone Shoot', 31, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-22 18:14:22'),
(2092, '1761136936467', 158, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-10-22 18:47:15'),
(2093, '1761224847040', 142, 'Graphics Design', 'Static Graphics', 72, 'Post Design', '400', '1', '300', '0', '700', 'Abhinav Pandey', 'Customise', '2025-10-27 13:33:21'),
(2095, '1761224847040', 142, 'Video Shoot', 'Model Shoot', 104, 'Model Based Shoot with Mobile', '1000', '2', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-23 19:44:06'),
(2096, '1761224847040', 142, 'Video Shoot', 'Mobile Shoot', 43, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Customise', '2025-10-23 19:07:13'),
(2098, '1761224847040', 142, 'Video Shoot', 'Model Shoot', 138, 'Model Shoot with Camera', '2000', '2', '0', '0', '4000', 'Abhinav Pandey', 'Customise', '2025-10-23 19:45:14'),
(2099, '1761224847040', 142, 'Convenience Charges', ' On-site coordination & supervision', 140, ' On-site coordination & supervision per visit charge', '1000', '2', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-24 13:43:26'),
(2100, '1761224847040', 142, 'Video Services', 'Reels', 4, 'Advanced Editing', '2000', '2', '300', '0', '4600', 'Abhinav Pandey', 'Customise', '2025-10-24 13:42:52'),
(2101, '1761224847040', 142, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '3', '300', '0', '5400', 'Abhinav Pandey', 'Customise', '2025-10-24 13:43:08'),
(2102, '1761393392842', 182, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Tiny', '2025-10-25 17:27:21'),
(2103, '1761393527777', 182, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Customise', '2025-10-25 17:29:11'),
(2122, '1761396112237', 183, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-25 18:11:54'),
(2123, '1761396112237', 183, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-25 18:11:54'),
(2124, '1761396112237', 183, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-25 18:11:54'),
(2125, '1761396112237', 183, 'SEO', 'Intended for Lead Generation', 129, 'Keyword', '1500', '5', '0', '0', '7500', 'Abhinav Pandey', 'Customise', '2025-10-25 18:12:23'),
(2126, '1761396112237', 183, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-25 18:12:30'),
(2127, '1761396155302', 183, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard', '2025-10-25 18:12:38'),
(2128, '1761396155302', 183, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard', '2025-10-25 18:12:38'),
(2129, '1761396155302', 183, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard', '2025-10-25 18:12:38'),
(2130, '1761396155302', 183, 'SEO', 'Intended for Lead Generation', 129, 'Keyword', '1500', '5', '0', '0', '7500', 'Abhinav Pandey', 'Customise', '2025-10-25 18:12:59'),
(2131, '1761396155302', 183, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-25 18:13:09'),
(2132, '1761396211822', 183, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-10-25 18:13:34'),
(2133, '1761396211822', 183, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium', '2025-10-25 18:13:34'),
(2134, '1761396211822', 183, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium', '2025-10-25 18:13:34'),
(2135, '1761396211822', 183, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium', '2025-10-25 18:13:34'),
(2136, '1761396211822', 183, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium', '2025-10-25 18:13:34'),
(2137, '1761396211822', 183, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Premium', '2025-10-25 18:13:34'),
(2138, '1761396211822', 183, 'SEO', 'Intended for Lead Generation', 129, 'Keyword', '1500', '5', '0', '0', '7500', 'Abhinav Pandey', 'Customise', '2025-10-25 18:14:04'),
(2139, '1761396211822', 183, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-10-25 18:14:13'),
(2142, '1761398089356', 183, 'Software Tool Subscription', 'School Management Software', 144, '	 School Management Software Lifetime (10 Years)  (Student Management, Fees Management, Exam  Manage', '40000', '1', '0', '0', '40000', 'Abhinav Pandey', 'Customise', '2025-10-25 20:23:53'),
(2148, '1761551690055', 142, 'Video Shoot', 'Mobile Shoot', 43, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Customise', '2025-10-27 13:31:40'),
(2149, '1761551690055', 142, 'Video Shoot', 'Model Shoot', 104, 'Model Charges', '1000', '2', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-27 13:31:49'),
(2151, '1761551690055', 142, 'Graphics Design', 'Static Graphics', 72, 'Post Design', '400', '2', '300', '0', '1400', 'Abhinav Pandey', 'Customise', '2025-10-27 13:54:01'),
(2152, '1761551690055', 142, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Customise', '2025-10-27 13:54:09'),
(2153, '1760705060926', 181, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Lavina Kukreja', 'Customise', '2025-10-27 15:02:57'),
(2154, '1761643201847', 184, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic', '2025-10-28 14:50:05'),
(2155, '1761643201847', 184, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic', '2025-10-28 14:50:05'),
(2156, '1761643201847', 184, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-28 14:50:05'),
(2157, '1761643479078', 184, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Abhinav Pandey', 'Basic', '2025-10-28 14:56:13'),
(2158, '1761643479078', 184, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Basic', '2025-10-28 15:01:28'),
(2159, '1761643479078', 184, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic', '2025-10-28 14:54:42'),
(2160, '1761643479078', 184, 'Video Shoot', 'Drone Shoot', 31, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', 'Customise', '2025-10-28 14:54:58'),
(2161, '1761644633885', 26, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Abhinav Pandey', 'Customise', '2025-10-28 15:14:11'),
(2162, '1761644633885', 26, 'Video Services', 'Reels', 1, 'Basic Editing', '1000', '1', '300', '250', '1550', 'Abhinav Pandey', 'Customise', '2025-10-28 15:14:53'),
(2166, '1761735657154', 182, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Tiny DM', '2025-10-29 16:31:08'),
(2167, '1761735657154', 182, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Tiny DM', '2025-10-29 16:31:08'),
(2174, '1761735948586', 182, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '2', '300', '0', '1600', 'Abhinav Pandey', 'Premium DM', '2025-10-29 16:35:54'),
(2175, '1761735948586', 182, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Premium DM', '2025-10-29 16:35:54'),
(2176, '1761736808124', 182, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic SMO', '2025-10-29 16:50:11'),
(2177, '1761736808124', 182, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic SMO', '2025-10-29 16:50:11'),
(2178, '1761736808124', 182, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic SMO', '2025-10-29 16:50:11'),
(2179, '1761735675740', 182, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard SMO', '2025-10-29 16:50:43'),
(2180, '1761735675740', 182, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard SMO', '2025-10-29 16:50:43'),
(2181, '1761735675740', 182, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard SMO', '2025-10-29 16:50:43'),
(2188, '1761735686251', 182, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium', '2025-10-29 17:05:10'),
(2189, '1761735686251', 182, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium', '2025-10-29 17:05:10'),
(2190, '1761735686251', 182, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '300', '250', '3550', 'Abhinav Pandey', 'Premium', '2025-10-29 17:05:10'),
(2191, '1761735686251', 182, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '300', '0', '600', 'Abhinav Pandey', 'Premium', '2025-10-29 17:05:10'),
(2192, '1761735686251', 182, 'Social Media Optimization', 'Social Media Posting', NULL, 'Youtube Video Posting', '150', '6', '0', '0', '900', 'Abhinav Pandey', 'Premium', '2025-10-29 17:05:10'),
(2194, '1761753813151', 136, 'SEO', 'Backlink Creation', 149, 'Backlink Creation for 1 Website', '229', '100', '0', '0', '22900', 'Abhinav Pandey', 'Customise', '2025-10-29 21:37:25'),
(2195, '1761838405341', 185, 'Software Tool Subscription', 'CRM Software', 147, 'Customer Relationship Management (CRM) per month', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-10-30 21:03:56'),
(2196, '1761993901498', 182, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium SMO', '2025-11-01 16:15:06'),
(2197, '1761993901498', 182, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium SMO', '2025-11-01 16:15:06'),
(2198, '1761993901498', 182, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium SMO', '2025-11-01 16:15:06'),
(2199, '1761993901498', 182, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium SMO', '2025-11-01 16:15:06'),
(2200, '1761993901498', 182, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium SMO', '2025-11-01 16:15:06'),
(2201, '1761993901498', 182, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Premium SMO', '2025-11-01 16:15:06'),
(2202, '1762168621656', 181, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-11-03 16:47:17'),
(2203, '1762168621656', 181, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '1', '300', '250', '2050', 'Abhinav Pandey', 'Customise', '2025-11-03 16:47:25'),
(2204, '1762169270249', 134, 'Video Shoot', 'Mobile Shoot', 43, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Customise', '2025-11-03 16:59:43'),
(2205, '1762169270249', 134, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Customise', '2025-11-03 17:00:02'),
(2206, '1762169270249', 134, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Customise', '2025-11-03 17:00:14'),
(2207, '1762169270249', 134, 'Video Services', 'Youtube Video', 150, 'Basic Editing', '2000', '2', '300', '250', '5100', 'Abhinav Pandey', 'Customise', '2025-11-03 17:00:33'),
(2208, '1762169270249', 134, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '4', '0', '0', '600', 'Abhinav Pandey', 'Customise', '2025-11-03 17:06:29'),
(2212, '1762239459456', 134, 'Video Shoot', 'Mobile Shoot', 43, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Customise', '2025-11-04 12:27:54'),
(2213, '1762239459456', 134, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Abhinav Pandey', 'Customise', '2025-11-04 13:09:22'),
(2214, '1762239459456', 134, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Customise', '2025-11-04 13:09:37'),
(2215, '1762239459456', 134, 'Video Services', 'Youtube Video', 150, 'Basic Editing', '2000', '1', '300', '250', '2550', 'Abhinav Pandey', 'Customise', '2025-11-04 13:09:30'),
(2216, '1762239459456', 134, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '4', '0', '0', '600', 'Abhinav Pandey', 'Customise', '2025-11-04 12:31:06'),
(2217, '1762257206910', 126, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Mohammad Mazhar', 'Basic SMO', '2025-11-04 17:23:29'),
(2218, '1762257206910', 126, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Mohammad Mazhar', 'Basic SMO', '2025-11-04 17:23:29'),
(2219, '1762257206910', 126, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Mohammad Mazhar', 'Basic SMO', '2025-11-04 17:23:29'),
(2220, '1762257206910', 126, 'Video Shoot', 'Drone Shoot', 151, 'Drone Shoot', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Customise', '2025-11-04 19:20:23'),
(2221, '1762257206910', 126, 'Video Shoot', 'Model Shoot', 152, 'Model Charges', '4000', '1', '0', '0', '4000', 'Abhinav Pandey', 'Customise', '2025-11-04 19:20:37'),
(2222, '1762268053237', 186, 'Graphics Design', 'Static Graphics', 153, 'Header & Footer', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-11-04 20:24:40'),
(2223, '1762323639525', 168, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic SMO', '2025-11-05 11:50:43'),
(2224, '1762323639525', 168, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic SMO', '2025-11-05 11:50:43'),
(2225, '1762323639525', 168, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic SMO', '2025-11-05 11:50:43'),
(2226, '1762323652979', 168, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Standard SMO', '2025-11-05 11:50:57'),
(2227, '1762323652979', 168, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Standard SMO', '2025-11-05 11:50:57'),
(2228, '1762323652979', 168, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Abhinav Pandey', 'Standard SMO', '2025-11-05 11:50:57'),
(2229, '1762323667122', 168, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', 'Abhinav Pandey', 'Premium SMO', '2025-11-05 11:51:10'),
(2230, '1762323667122', 168, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Premium SMO', '2025-11-05 11:51:10'),
(2231, '1762323667122', 168, 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Premium SMO', '2025-11-05 11:51:10'),
(2232, '1762323667122', 168, 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', 'Abhinav Pandey', 'Premium SMO', '2025-11-05 11:51:10'),
(2233, '1762323667122', 168, 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', 'Premium SMO', '2025-11-05 11:51:10'),
(2234, '1762323667122', 168, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '4', '0', '0', '3400', 'Abhinav Pandey', 'Premium SMO', '2025-11-05 11:51:10'),
(2235, '1762337671589', 187, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Lavina Kukreja', 'Basic', '2025-11-05 15:44:46'),
(2236, '1762337671589', 187, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Lavina Kukreja', 'Basic', '2025-11-05 15:44:46'),
(2239, '1758545828900', 152, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '250', '1500', 'Abhinav Pandey', 'Tiny DM', '2025-11-12 17:33:54'),
(2243, '1762350626487', 188, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', 'Customise', '2025-11-05 19:30:28'),
(2244, '1762350626487', 188, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '2', '300', '0', '1600', 'Abhinav Pandey', 'Customise', '2025-11-05 19:31:13'),
(2245, '1762353569570', 188, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '2', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-11-05 20:09:53'),
(2246, '1762353569570', 188, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '2', '0', '0', '3000', 'Abhinav Pandey', 'Customise', '2025-11-05 20:10:09'),
(2250, '1762407038010', 175, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Abhinav Pandey', 'Basic SMO', '2025-11-06 11:00:43'),
(2251, '1762407038010', 175, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Abhinav Pandey', 'Basic SMO', '2025-11-06 11:00:43'),
(2252, '1762407038010', 175, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Basic SMO', '2025-11-06 11:00:43'),
(2253, '1762505402689', 126, 'Software Development', 'CRM', 154, 'CRM software', '60000', '1', '0', '0', '60000', 'Mahesh Kuldeep', 'Customise', '2025-11-07 14:20:33'),
(2255, '1762505402689', 126, 'Software Development', 'Maintenance', 155, 'CRM Maintenance Monthly', '1000', '12', '0', '0', '12000', 'Mahesh Kuldeep', 'Customise', '2025-11-07 14:39:23'),
(2257, '1762512432083', 189, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '2', '300', '0', '3600', 'Abhinav Pandey', 'Customise', '2025-11-07 16:18:46'),
(2258, '1762512432083', 189, 'Video Shoot', 'Mobile Shoot', 43, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', 'Customise', '2025-11-07 16:19:27'),
(2259, '1762582587812', 190, 'Video Services', 'Premium Video', 5, 'Basic Editing', '1500', '4', '300', '250', '8200', 'Lavina Kukreja', 'Customise', '2025-11-08 11:46:53'),
(2260, '1762582587812', 190, 'Video Shoot', 'Mobile Shoot', 43, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Lavina Kukreja', 'Customise', '2025-11-08 11:47:04'),
(2261, '1762582587812', 190, 'Graphics Design', 'Static Graphics', 72, 'Post Design', '400', '6', '300', '0', '4200', 'Lavina Kukreja', 'Customise', '2025-11-08 11:47:35'),
(2262, '1762582587812', 190, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Lavina Kukreja', 'Customise', '2025-11-08 11:47:52'),
(2263, '1762582587812', 190, 'GMB', 'LOCAL SEO', 102, 'GMB Update', '1000', '1', '0', '0', '1000', 'Lavina Kukreja', 'Customise', '2025-11-08 11:48:35'),
(2264, '1762582849963', 190, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-11-08 11:52:25'),
(2265, '1762582849963', 190, 'Graphics Design', 'Static Graphics', 115, 'Carousel Post', '1000', '2', '300', '0', '2600', 'Abhinav Pandey', 'Customise', '2025-11-08 11:52:49'),
(2266, '1762582849963', 190, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Customise', '2025-11-08 11:56:29'),
(2268, '1762582849963', 190, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '6', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-08 11:57:22'),
(2271, '1762582849963', 190, 'Video Services', 'Testimonial Video', 114, 'Basic Editing', '1000', '3', '300', '250', '4650', 'Abhinav Pandey', 'Customise', '2025-11-08 11:58:42'),
(2272, '1762582849963', 190, 'SEO', 'Intended for Lead Generation', 158, 'Website SEO Keyword On-Page & Off-Page Optimization', '1500', '5', '0', '0', '7500', 'Abhinav Pandey', 'Customise', '2025-11-08 11:59:05'),
(2273, '1762582849963', 190, 'GMB', 'LOCAL SEO', 157, 'Local SEO Keyword & Negative Comment Handling', '1500', '5', '0', '0', '7500', 'Abhinav Pandey', 'Customise', '2025-11-08 11:59:23'),
(2274, '1762588119191', 190, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Abhinav Pandey', 'Customise', '2025-11-08 13:20:20'),
(2275, '1762588119191', 190, 'Graphics Design', 'Static Graphics', 115, 'Carousel Post', '1000', '2', '300', '0', '2600', 'Abhinav Pandey', 'Customise', '2025-11-08 13:20:32'),
(2276, '1762588119191', 190, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '7', '300', '250', '14350', 'Abhinav Pandey', 'Customise', '2025-11-08 13:20:41'),
(2277, '1762588119191', 190, 'Video Services', 'Testimonial Video', 114, 'Basic Editing', '1000', '3', '300', '250', '4650', 'Abhinav Pandey', 'Customise', '2025-11-08 13:20:54'),
(2278, '1762588119191', 190, 'Video Services', 'Youtube Video', 45, 'Standard Editing', '4000', '2', '300', '250', '9100', 'Abhinav Pandey', 'Customise', '2025-11-08 13:21:12'),
(2279, '1762588119191', 190, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '7', '0', '0', '7000', 'Abhinav Pandey', 'Customise', '2025-11-08 13:21:28'),
(2280, '1762588119191', 190, 'Video Shoot', 'Camera Shoot', 15, 'Camera Shoot', '2000', '2', '0', '0', '4000', 'Abhinav Pandey', 'Customise', '2025-11-08 13:21:38'),
(2281, '1762588119191', 190, 'GMB', 'LOCAL SEO', 157, 'Local SEO Keyword & Negative Comment Handling', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-08 13:23:27'),
(2282, '1762588119191', 190, 'Video Shoot', 'Drone Shoot', 151, 'Drone Shoot', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', 'Customise', '2025-11-08 13:26:22'),
(2283, '1762588119191', 190, 'Video Shoot', 'Camera Shoot', 160, 'Professional Camera Shoot', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-11-08 13:28:06'),
(2284, '1762588119191', 190, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '10', '0', '0', '1500', 'Abhinav Pandey', 'Customise', '2025-11-08 13:28:53'),
(2285, '1762588592858', 189, 'Video Services', 'Premium Video', 5, 'Basic Editing', '1500', '3', '0', '250', '5250', 'Lavina Kukreja', 'Customise', '2025-11-08 13:37:53'),
(2286, '1762588592858', 189, 'Video Shoot', 'Mobile Shoot', 43, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Lavina Kukreja', 'Customise', '2025-11-08 13:38:06'),
(2287, '1762596181195', 190, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-11-08 15:34:33'),
(2288, '1762596181195', 190, 'Graphics Design', 'Static Graphics', 115, 'Carousel Post', '1000', '3', '300', '0', '3900', 'Abhinav Pandey', 'Customise', '2025-11-08 15:34:42'),
(2289, '1762596181195', 190, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Customise', '2025-11-08 15:34:18'),
(2290, '1762596181195', 190, 'Video Services', 'Testimonial Video', 114, 'Basic Editing', '1000', '3', '300', '250', '4650', 'Abhinav Pandey', 'Customise', '2025-11-08 15:35:05'),
(2291, '1762596181195', 190, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '6', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-08 15:35:21'),
(2292, '1762596181195', 190, 'GMB', 'LOCAL SEO', 157, 'Local SEO Keyword & Negative Comment Handling', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-08 15:35:52'),
(2293, '1762596181195', 190, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '9', '0', '0', '1350', 'Abhinav Pandey', 'Customise', '2025-11-08 15:36:20'),
(2295, '1762596181195', 190, 'Video Shoot', 'Camera Shoot', 160, 'Professional Camera Shoot', '5000', '1', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-11-08 15:42:28'),
(2296, '1762759898174', 191, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '4', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-10 13:03:24'),
(2297, '1762759898174', 191, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '4', '0', '0', '4000', 'Abhinav Pandey', 'Customise', '2025-11-10 13:03:50'),
(2299, '1762759898174', 191, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-11-10 13:04:55'),
(2300, '1762770463690', 181, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '10', '300', '0', '8000', 'Abhinav Pandey', 'Customise', '2025-11-10 16:07:23'),
(2301, '1762770463690', 181, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '20', '300', '250', '41000', 'Abhinav Pandey', 'Customise', '2025-11-10 16:45:48'),
(2302, '1762770463690', 181, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '26', '0', '0', '26000', 'Abhinav Pandey', 'Customise', '2025-11-10 16:10:34'),
(2303, '1762770463690', 181, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '25', '0', '0', '3750', 'Abhinav Pandey', 'Customise', '2025-11-10 16:46:38'),
(2304, '1762770463690', 181, 'Video Services', 'Youtube Video', 45, 'Standard Editing', '4000', '5', '0', '250', '21250', 'Abhinav Pandey', 'Customise', '2025-11-10 16:45:08'),
(2305, '1762773464209', 181, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Abhinav Pandey', 'Customise', '2025-11-10 17:12:33'),
(2307, '1762773464209', 181, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '16', '300', '250', '32800', 'Abhinav Pandey', 'Customise', '2025-11-10 16:56:16'),
(2308, '1762773464209', 181, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '16', '0', '0', '16000', 'Abhinav Pandey', 'Customise', '2025-11-10 16:56:22'),
(2309, '1762773464209', 181, 'Video Shoot', 'Mobile Shoot', 163, 'Mobile Shoot (10-30 min)', '600', '10', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-10 16:55:57'),
(2311, '1762773464209', 181, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '21', '0', '0', '3150', 'Abhinav Pandey', 'Customise', '2025-11-10 17:10:52'),
(2312, '1762773464209', 181, 'Video Services', 'Youtube Video', 45, 'Standard Editing', '4000', '5', '0', '250', '21250', 'Abhinav Pandey', 'Customise', '2025-11-10 17:11:45'),
(2313, '1762777042282', 192, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Lavina Kukreja', 'Basic SMO', '2025-11-10 17:47:25'),
(2314, '1762777042282', 192, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '8', '300', '250', '16400', 'Lavina Kukreja', 'Basic SMO', '2025-11-10 18:37:21'),
(2315, '1762777042282', 192, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '6', '0', '0', '5100', 'Lavina Kukreja', 'Basic SMO', '2025-11-10 18:40:08'),
(2316, '1762779925265', 181, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-11-10 18:36:04'),
(2318, '1762779925265', 181, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '8', '300', '250', '16400', 'Abhinav Pandey', 'Customise', '2025-11-10 18:42:14'),
(2319, '1762777042282', 192, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Lavina Kukreja', 'Customise', '2025-11-10 18:42:30'),
(2320, '1762779925265', 181, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '6', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-10 18:42:38'),
(2322, '1762780496899', 192, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '5', '300', '250', '10250', 'Lavina Kukreja', 'Customise', '2025-11-10 18:45:37'),
(2323, '1762780496899', 192, 'Video Shoot', 'Mobile Shoot', 43, 'Mobile Shoot', '850', '4', '0', '0', '3400', 'Lavina Kukreja', 'Customise', '2025-11-10 18:46:00'),
(2324, '1762780496899', 192, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Lavina Kukreja', 'Customise', '2025-11-10 18:46:18'),
(2325, '1762780496899', 192, 'GMB', 'LOCAL SEO', 24, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Lavina Kukreja', 'Customise', '2025-11-10 18:46:38'),
(2326, '1762779925265', 181, 'Video Shoot', 'Mobile Shoot', 163, 'Mobile Shoot (10-30 min)', '600', '20', '0', '0', '12000', 'Abhinav Pandey', 'Customise', '2025-11-10 18:48:51'),
(2327, '1762779925265', 181, 'Video Services', 'Youtube Video', 45, 'Standard Editing', '4000', '1', '0', '250', '4250', 'Abhinav Pandey', 'Customise', '2025-11-10 18:51:07'),
(2328, '1762779925265', 181, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '9', '0', '0', '1350', 'Abhinav Pandey', 'Customise', '2025-11-10 18:51:40'),
(2329, '1762786961986', 193, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '250', '2050', 'Abhinav Pandey', 'Tiny DM', '2025-11-10 20:33:09'),
(2330, '1762788151917', 193, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '250', '2050', 'Abhinav Pandey', 'Tiny DM', '2025-11-10 20:52:35'),
(2331, '1762866522210', 178, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Abhinav Pandey', 'Customise', '2025-11-11 18:40:57'),
(2332, '1762866522210', 178, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Customise', '2025-11-11 18:41:39'),
(2333, '1762866522210', 178, 'Video Services', 'Testimonial Video', 114, 'Basic Editing', '1000', '2', '300', '250', '3100', 'Abhinav Pandey', 'Customise', '2025-11-11 18:42:01'),
(2334, '1762866522210', 178, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-11-11 18:43:33'),
(2335, '1762866522210', 178, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '6', '0', '0', '900', 'Abhinav Pandey', 'Customise', '2025-11-11 18:44:29'),
(2336, '1762868710612', 194, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Abhinav Pandey', 'Customise', '2025-11-11 19:15:40'),
(2337, '1762868710612', 194, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Abhinav Pandey', 'Customise', '2025-11-11 19:16:14'),
(2338, '1762868710612', 194, 'Video Services', 'Testimonial Video', 114, 'Basic Editing', '1000', '2', '300', '250', '3100', 'Abhinav Pandey', 'Customise', '2025-11-11 19:16:41'),
(2339, '1762868710612', 194, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', 'Customise', '2025-11-11 19:16:56'),
(2340, '1762868710612', 194, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '6', '0', '0', '900', 'Abhinav Pandey', 'Customise', '2025-11-11 19:17:11'),
(2341, '1758545828900', 152, 'Video Services', 'Premium Video', 5, 'Basic Editing', '1500', '1', '0', '0', '1750', 'Abhinav Pandey', 'Customise', '2025-11-12 17:34:22'),
(2342, '1762948872613', 192, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Lavina Kukreja', 'Customise', '2025-11-12 17:34:58'),
(2343, '1762948872613', 192, 'Video Shoot', 'Mobile Shoot', 43, 'Mobile Shoot', '850', '3', '0', '0', '2550', 'Lavina Kukreja', 'Customise', '2025-11-12 17:35:25'),
(2344, '1762951102867', 195, 'Software Development', 'CRM', 154, 'CRM software', '60000', '1', '0', '0', '60000', 'Abhinav Pandey', 'Customise', '2025-11-12 18:08:46'),
(2345, '1762951102867', 195, 'Software Development', 'Maintenance', 155, 'CRM Maintenance Monthly', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-11-12 18:08:55'),
(2346, '1762951102867', 195, 'Software Tool Subscription', 'CRM Software', 147, 'Customer Relationship Management (CRM) per month', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', 'Customise', '2025-11-12 18:15:50'),
(2347, '1763027321517', 181, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-11-14 18:56:20'),
(2348, '1763027321517', 181, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '8', '300', '250', '16400', 'Abhinav Pandey', 'Customise', '2025-11-14 18:54:28'),
(2350, '1763027321517', 181, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '8', '0', '0', '8000', 'Abhinav Pandey', 'Customise', '2025-11-14 18:54:41'),
(2352, '1763027321517', 181, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '20', '0', '0', '3000', 'Abhinav Pandey', 'Customise', '2025-11-14 19:04:14'),
(2353, '1763037625803', 190, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-11-13 18:35:07'),
(2354, '1763037625803', 190, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Abhinav Pandey', 'Customise', '2025-11-13 18:35:00'),
(2355, '1763037625803', 190, 'Video Services', 'Testimonial Video', 114, 'Basic Editing', '1000', '3', '300', '250', '4650', 'Abhinav Pandey', 'Customise', '2025-11-13 18:12:14'),
(2356, '1763037625803', 190, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '7', '0', '0', '7000', 'Abhinav Pandey', 'Customise', '2025-11-13 18:13:29'),
(2357, '1763037625803', 190, 'GMB', 'LOCAL SEO', 157, 'Local SEO Keyword & Negative Comment Handling', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-13 18:14:18'),
(2358, '1763037625803', 190, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '9', '0', '0', '1350', 'Abhinav Pandey', 'Customise', '2025-11-13 18:36:00'),
(2359, '1763037625803', 190, 'Graphics Design', 'Static Graphics', 115, 'Carousel Post', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', 'Customise', '2025-11-13 18:35:30'),
(2360, '1763027321517', 181, 'Graphics Design', 'Static Graphics', 115, 'Carousel Post', '1000', '2', '300', '0', '2600', 'Abhinav Pandey', 'Customise', '2025-11-14 18:44:28'),
(2361, '1763027321517', 181, 'GMB', 'LOCAL SEO', 157, 'Local SEO Keyword & Negative Comment Handling', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-14 19:08:55'),
(2362, '1763129724156', 181, 'Graphics Design', 'Static Graphics', 12, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Abhinav Pandey', 'Customise', '2025-11-14 19:54:11'),
(2363, '1763129724156', 181, 'Graphics Design', 'Static Graphics', 115, 'Carousel Post', '1000', '2', '300', '0', '2600', 'Lavina Kukreja', 'Customise', '2025-11-15 15:01:15'),
(2364, '1763129724156', 181, 'Video Services', 'Reels', 2, 'Standard Editing', '1500', '8', '300', '250', '16400', 'Abhinav Pandey', 'Customise', '2025-11-14 19:55:16'),
(2366, '1763129724156', 181, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '8', '0', '0', '8000', 'Abhinav Pandey', 'Customise', '2025-11-14 19:56:58'),
(2367, '1763129724156', 181, 'GMB', 'LOCAL SEO', 157, 'Local SEO Keyword & Negative Comment Handling', '1200', '5', '0', '0', '6000', 'Abhinav Pandey', 'Customise', '2025-11-14 20:04:05'),
(2369, '1763129724156', 181, 'Video Services', 'Reels', 164, 'Basic Editing Including Shoot', '1500', '10', '0', '0', '15000', 'Abhinav Pandey', 'Customise', '2025-11-14 21:12:05'),
(2370, '1763129724156', 181, 'Social Media Optimization', 'Social Media Posting', 109, 'Youtube Video Posting', '150', '8', '0', '0', '1200', 'Lavina Kukreja', 'Customise', '2025-11-15 15:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `service_id`, `category_name`, `created_at`) VALUES
(14, 12, 'Reels', '2025-06-13 14:40:18'),
(15, 12, 'Premium Video', '2025-06-13 14:47:47'),
(16, 12, 'Shorts', '2025-06-13 14:47:58'),
(17, 18, 'Static Graphics', '2025-06-13 14:56:24'),
(18, 14, 'Camera Shoot', '2025-06-13 14:58:01'),
(19, 14, 'Mobile Shoot', '2025-06-13 14:58:09'),
(28, 26, 'Intended for Lead Generation', '2025-07-02 13:15:00'),
(29, 27, 'LOCAL SEO', '2025-07-02 13:15:27'),
(30, 28, 'Website Maintenance', '2025-07-12 13:34:51'),
(31, 29, 'Posting', '2025-07-12 14:04:49'),
(32, 30, 'Organic page optimization', '2025-07-21 19:21:38'),
(33, 14, 'Drone Shoot', '2025-07-21 19:30:32'),
(37, 34, 'Standard Video creation (Shoot, Editing and Four shorts)', '2025-07-27 16:11:18'),
(38, 18, 'Thumbnail', '2025-08-02 16:42:22'),
(40, 18, 'Festival Post', '2025-08-05 15:24:58'),
(41, 12, 'Youtube Video', '2025-08-05 18:01:11'),
(47, 14, 'Model Shoot', '2025-08-25 20:09:55'),
(48, 34, 'Podcast Editing', '2025-08-26 13:44:11'),
(49, 14, 'Podcast Video Shoot', '2025-08-26 15:43:12'),
(62, 37, 'Test Category', '2025-08-29 17:37:03'),
(65, 39, 'Graphic Creation', '2025-09-09 10:56:22'),
(66, 39, 'Video Service', '2025-09-09 12:33:54'),
(67, 39, 'Meta Account Setup', '2025-09-09 12:39:47'),
(69, 41, 'Meta Account Setup', '2025-09-13 20:24:00'),
(71, 41, 'Google Account Setup', '2025-09-13 20:25:28'),
(72, 39, 'Video Shoot', '2025-09-13 20:48:17'),
(74, 26, 'Backlink Creation', '2025-09-15 16:38:47'),
(76, 30, 'Social Media Posting', '2025-09-15 20:04:53'),
(77, 39, 'Social Media Posting', '2025-09-15 20:06:18'),
(78, 39, 'Social Media Marketing (SMM)', '2025-09-15 20:24:10'),
(80, 42, 'Lead Conversion ', '2025-09-16 14:59:47'),
(81, 26, 'Google My Business (GMB)', '2025-09-16 15:44:26'),
(82, 43, 'Meta ADS', '2025-10-01 16:06:03'),
(84, 12, 'Interview Video', '2025-10-01 17:03:15'),
(85, 12, 'Testimonial Video', '2025-10-01 17:04:36'),
(86, 12, 'Youtube Podcast Video', '2025-10-01 17:23:04'),
(88, 27, 'GMB Profile Handle', '2025-10-03 15:21:47'),
(89, 39, 'Website SEO', '2025-10-06 21:58:42'),
(90, 39, 'GMB SEO', '2025-10-06 21:59:06'),
(92, 45, ' On-site coordination & supervision', '2025-10-24 12:20:06'),
(94, 48, 'School Management Software', '2025-10-25 18:52:04'),
(95, 39, ' Software Tool Subscription', '2025-10-28 14:57:32'),
(97, 48, 'CRM Software', '2025-10-28 15:00:24'),
(98, 49, 'CRM', '2025-11-07 14:18:29'),
(99, 49, 'Maintenance', '2025-11-07 14:21:15'),
(100, 39, 'Software Development', '2025-11-07 14:23:16'),
(101, 49, 'Website', '2025-11-12 18:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `client_requirement_links`
--

CREATE TABLE `client_requirement_links` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `expires_at` varchar(191) NOT NULL,
  `created_by` varchar(250) DEFAULT NULL,
  `created_at` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_requirement_links`
--

INSERT INTO `client_requirement_links` (`id`, `client_id`, `slug`, `is_active`, `expires_at`, `created_by`, `created_at`) VALUES
(8, 114, '114-mf6fsgrj-867e00', 1, '2025-10-05 11:41:04', 'Abhinav Pandey', '2025-09-05 11:41:04'),
(10, 119, '119-mf6itoap-097b88', 1, '2025-10-05 12:05:59', 'Umer Qureshi', '2025-09-05 13:05:59'),
(12, 121, '121-mfb4lkxk-c9d0fe', 1, '2025-10-08 18:26:38', 'Abhinav Pandey', '2025-09-08 18:26:38'),
(17, 126, '126-mff7abz3-7a95f3', 1, '2025-10-11 14:52:56', 'Umer Qureshi', '2025-09-11 14:52:57'),
(18, 155, '155-mfy65rg2-1b0ec3', 1, '2025-10-24 21:28:59', 'Abhinav Pandey', '2025-09-24 21:29:01'),
(19, 161, '161-mg67jviw-aa8255', 1, '2025-10-30 12:30:08', 'Abhinav Pandey', '2025-09-30 12:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `complimentary`
--

CREATE TABLE `complimentary` (
  `id` int(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `editing_type_id` int(255) DEFAULT NULL,
  `editing_type_name` varchar(255) NOT NULL,
  `editing_type_amount` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `include_content_posting` varchar(255) NOT NULL,
  `include_thumbnail_creation` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `employee` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complimentary`
--

INSERT INTO `complimentary` (`id`, `txn_id`, `client_id`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `employee`, `created_at`) VALUES
(2, '1757153226291', 49, 'Complementary', 'Thumbnail', NULL, 'YouTube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', '2025-09-06 19:16:06'),
(5, '1757153226291', 49, 'Complementary', 'Graphic Creation', NULL, 'Festive Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-06 19:16:15'),
(6, '1757312404438', 49, 'Complementary', 'Graphic Creation', NULL, 'Festive Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-08 11:52:36'),
(7, '1757316462039', 49, 'Complementary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '0', '0', '250', 'Abhinav Pandey', '2025-09-08 12:58:00'),
(9, '1757317562895', 49, 'Complementary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '0', '0', '250', 'Dev BD', '2025-09-08 13:22:22'),
(10, '1757318429104', 49, 'Complementary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '0', '0', '250', 'Dev BD', '2025-09-08 13:30:55'),
(14, '1757322163331', 49, 'Complimentary', 'Thumbnail', NULL, 'YouTube Video Thumbnail', '300', '1', '', '', '300', 'Abhinav Pandey', '2025-09-08 14:53:16'),
(20, '1757325175741', 50, 'Complimentary', 'Thumbnail', NULL, 'YouTube Video Thumbnail', '300', '1', '', '', '300', 'Abhinav Pandey', '2025-09-08 15:27:33'),
(21, '1757325175741', 50, 'Complimentary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '', '', '250', 'Abhinav Pandey', '2025-09-08 15:27:33'),
(30, '1757325600793', 51, 'Complimentary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '0', '0', '250', 'Abhinav Pandey', '2025-09-08 15:46:42'),
(33, '1757327359707', 51, 'Complimentary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '300', '0', '550', 'Abhinav Pandey', '2025-09-08 16:03:48'),
(34, '1757327679354', 52, 'Complimentary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '300', '0', '550', 'Abhinav Pandey', '2025-09-08 16:04:39'),
(36, '1757328422356', 54, 'Complimentary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '300', '0', '550', 'Dev BD', '2025-09-08 16:17:02'),
(37, '1757328372853', 53, 'Complimentary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '300', '0', '550', 'Dev BD', '2025-09-08 16:23:13'),
(41, '1757395853771', 116, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-09 11:01:03'),
(43, '1757397847773', 127, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-09 11:34:07'),
(46, '1757400489430', 121, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '300', '250', '1050', 'Mohammad Mazhar', '2025-09-09 12:18:48'),
(47, '1757401482038', 121, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '2', '300', '250', '3100', 'Abhinav Pandey', '2025-09-09 12:35:18'),
(48, '1757402864968', 126, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-09 12:59:16'),
(49, '1757403034860', 126, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-09 13:00:36'),
(50, '1757405847330', 119, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-09 13:58:47'),
(51, '1757410826487', 118, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-09 15:10:29'),
(54, '1757488635113', 116, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Dev BD', '2025-09-10 12:50:48'),
(55, '1757489571410', 116, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-10 13:03:15'),
(56, '1757497208328', 116, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-10 15:10:10'),
(58, '1757503239424', 130, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Vishakha Agrahari', '2025-09-10 16:50:56'),
(62, '1757568431487', 113, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-11 10:57:18'),
(64, '1757571260314', 113, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-11 11:44:29'),
(66, '1757592956174', 132, 'Complimentary', 'Video Service', NULL, 'Reel With Standard Editing', '1500', '1', '300', '0', '1800', 'Abhinav Pandey', '2025-09-11 17:46:17'),
(68, '1757596267227', 115, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-11 18:41:36'),
(69, '1757596267227', 115, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-11 18:41:36'),
(70, '1757596267227', 115, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-11 18:41:36'),
(71, '1757596267227', 115, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-11 18:41:36'),
(72, '1757596267227', 115, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-11 18:41:36'),
(73, '1757596267227', 115, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-11 18:41:36'),
(80, '1757596352995', 115, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-11 18:43:17'),
(81, '1757596352995', 115, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-11 18:43:18'),
(82, '1757596352995', 115, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-11 18:43:18'),
(83, '1757596352995', 115, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-11 18:43:18'),
(84, '1757596352995', 115, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-11 18:43:18'),
(85, '1757596352995', 115, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-11 18:43:18'),
(113, '1757675898674', 133, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-12 16:48:22'),
(114, '1757683866263', 133, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-12 19:01:08'),
(115, '1757683866263', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-12 19:01:08'),
(116, '1757683866263', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-12 19:01:08'),
(117, '1757683866263', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-12 19:01:08'),
(118, '1757683866263', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-12 19:01:09'),
(119, '1757684041141', 133, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-12 19:04:03'),
(120, '1757684041141', 133, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-12 19:04:03'),
(121, '1757684041141', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-12 19:04:03'),
(122, '1757684041141', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-12 19:04:03'),
(123, '1757684041141', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-12 19:04:04'),
(124, '1757684041141', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-12 19:04:04'),
(125, '1757739693722', 133, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-13 10:31:36'),
(126, '1757739693722', 133, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-13 10:31:36'),
(127, '1757739693722', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-13 10:31:36'),
(128, '1757739693722', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-13 10:31:36'),
(129, '1757739693722', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-13 10:31:36'),
(130, '1757739693722', 133, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-13 10:31:36'),
(131, '1757773895017', 134, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-13 20:01:38'),
(132, '1757776809492', 134, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-13 20:50:13'),
(133, '1757776809492', 134, 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', '2025-09-13 20:50:56'),
(134, '1757773895017', 134, 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', '2025-09-13 21:06:39'),
(135, '1757833202500', 113, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-14 12:30:09'),
(136, '1757833202500', 113, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-14 12:30:09'),
(137, '1757833202500', 113, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-14 12:30:09'),
(138, '1757833202500', 113, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-14 12:30:09'),
(139, '1757833202500', 113, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-14 12:30:09'),
(140, '1757833202500', 113, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-14 12:30:09'),
(141, '1757937238394', 133, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-15 17:24:02'),
(142, '1757937345024', 135, 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '5', '0', '0', '4250', 'Abhinav Pandey', '2025-09-15 17:28:17'),
(143, '1757943281186', 137, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-15 19:04:43'),
(144, '1757945163754', 138, 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '2', '0', '0', '400', 'Abhinav Pandey', '2025-09-15 20:10:38'),
(145, '1757947793267', 139, 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Abhinav Pandey', '2025-09-15 20:20:57'),
(146, '1757945163754', 138, 'Complimentary', 'Social Media Marketing (SMM)', NULL, 'Meta Ad Charges', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', '2025-09-15 20:25:21'),
(147, '1757945163754', 138, 'Complimentary', 'Graphic Creation', NULL, 'Thumbnail Design', '250', '4', '0', '0', '1000', 'Abhinav Pandey', '2025-09-15 20:28:23'),
(149, '1758006755721', 140, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-16 12:42:38'),
(150, '1758016723408', 140, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-09-16 15:34:31'),
(151, '1758016723408', 140, 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '1', '0', '0', '200', 'Abhinav Pandey', '2025-09-16 15:34:44'),
(152, '1758096331992', 142, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Vishakha Agrahari', '2025-09-17 17:39:25'),
(153, '1758096450911', 142, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Vishakha Agrahari', '2025-09-17 17:41:26'),
(154, '1758096450911', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:41:28'),
(155, '1758096450911', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:41:29'),
(156, '1758096450911', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:41:29'),
(157, '1758096450911', 142, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Vishakha Agrahari', '2025-09-17 17:41:29'),
(158, '1758096450911', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-17 17:41:29'),
(159, '1758096450911', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:41:29'),
(160, '1758096450911', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:41:30'),
(161, '1758096450911', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:41:30'),
(162, '1758096450911', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-17 17:41:35'),
(163, '1758096468600', 142, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Vishakha Agrahari', '2025-09-17 17:41:42'),
(164, '1758096468600', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:41:42'),
(165, '1758096468600', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:41:42'),
(166, '1758096468600', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:41:43'),
(167, '1758096468600', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-17 17:41:43'),
(168, '1758111182522', 138, 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '2', '0', '0', '400', 'Abhinav Pandey', '2025-09-17 17:47:58'),
(169, '1758111182522', 138, 'Complimentary', 'Graphic Creation', NULL, 'Thumbnail Design', '250', '4', '0', '0', '1000', 'Abhinav Pandey', '2025-09-17 17:50:06'),
(170, '1758111182522', 138, 'Complimentary', 'Social Media Marketing (SMM)', NULL, 'Meta Ad Charges', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', '2025-09-17 17:50:26'),
(171, '1758097007463', 142, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Vishakha Agrahari', '2025-09-17 17:50:43'),
(172, '1758097007463', 142, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Vishakha Agrahari', '2025-09-17 17:50:43'),
(173, '1758097007463', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:50:43'),
(174, '1758097007463', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:50:43'),
(175, '1758097007463', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-17 17:50:43'),
(176, '1758097007463', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-17 17:50:43'),
(177, '1758123158995', 142, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '0', '0', '800', 'Abhinav Pandey', '2025-09-17 21:04:41'),
(178, '1758123158995', 142, 'Complimentary', 'Video Service', NULL, 'Reel With Standard Editing', '1500', '1', '0', '0', '1500', 'Abhinav Pandey', '2025-09-17 21:04:57'),
(179, '1758123158995', 142, 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', '2025-09-17 21:05:18'),
(180, '1758123158995', 142, 'Complimentary', 'Graphic Creation', NULL, 'Thumbnail Design', '250', '5', '0', '0', '1250', 'Abhinav Pandey', '2025-09-17 21:05:46'),
(181, '1758123158995', 142, 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Abhinav Pandey', '2025-10-17 20:16:17'),
(182, '1758173221111', 141, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-18 10:57:11'),
(183, '1758177142165', 142, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'deepanshu', '2025-09-18 12:02:25'),
(184, '1758177142165', 142, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'deepanshu', '2025-09-18 12:02:25'),
(185, '1758177142165', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'deepanshu', '2025-09-18 12:02:26'),
(186, '1758177142165', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'deepanshu', '2025-09-18 12:02:26'),
(187, '1758177142165', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'deepanshu', '2025-09-18 12:02:26'),
(188, '1758177142165', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'deepanshu', '2025-09-18 12:02:26'),
(189, '1758123158995', 142, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-18 12:09:15'),
(190, '1758178594520', 144, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'deepanshu', '2025-09-18 12:26:39'),
(191, '1758182237953', 146, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-18 13:27:20'),
(192, '1758182237953', 146, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-18 13:27:20'),
(193, '1758182237953', 146, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-18 13:27:20'),
(194, '1758182237953', 146, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-18 13:27:20'),
(195, '1758182237953', 146, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-18 13:27:20'),
(196, '1758182237953', 146, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-18 13:27:21'),
(197, '1758178226961', 143, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Lavina Kukreja', '2025-09-18 13:27:41'),
(198, '1758182285382', 143, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Lavina Kukreja', '2025-10-06 18:14:19'),
(199, '1758182285382', 143, 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Lavina Kukreja', '2025-09-18 13:38:22'),
(203, '1758191578036', 148, 'Complimentary', 'Video Service', NULL, 'Reel With Standard Editing', '1500', '1', '0', '0', '1500', 'Deepanshu Shukla', '2025-09-18 16:05:08'),
(204, '1758191578036', 148, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Deepanshu Shukla', '2025-09-18 16:06:32'),
(205, '1758196206713', 148, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-18 17:20:20'),
(206, '1758197898944', 148, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-18 17:48:32'),
(207, '1758263722569', 149, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-19 12:05:34'),
(208, '1758288729216', 150, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-19 19:02:10'),
(209, '1758288729216', 150, 'Complimentary', 'Video Service', NULL, 'Reel With Standard Editing', '1500', '2', '300', '250', '4100', 'Abhinav Pandey', '2025-09-21 19:01:25'),
(210, '1758521324859', 149, 'Complimentary', 'Video Service', NULL, 'Reel with Premium Editing', '2500', '1', '0', '0', '2500', 'Abhinav Pandey', '2025-09-22 11:41:41'),
(212, '1758526466908', 149, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-22 13:04:30'),
(214, '1758528039784', 149, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-22 13:30:44'),
(217, '1758611941655', 149, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-23 12:49:20'),
(218, '1758617939012', 153, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '0', '0', '800', 'Abhinav Pandey', '2025-09-23 15:24:11'),
(219, '1758617939012', 153, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-23 14:28:59'),
(220, '1758617939012', 153, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-23 14:28:59'),
(221, '1758617939012', 153, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-23 14:28:59'),
(222, '1758617939012', 153, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-23 14:28:59'),
(223, '1758617964774', 153, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-23 14:29:27'),
(224, '1758617964774', 153, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-23 14:29:27'),
(225, '1758617964774', 153, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-23 14:29:27'),
(226, '1758617964774', 153, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-23 14:29:27'),
(227, '1758617964774', 153, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-23 14:29:28'),
(228, '1758617964774', 153, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-23 14:29:28'),
(229, '1758625556091', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-23 16:35:56'),
(230, '1758625658291', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Mohammad Mazhar', '2025-09-23 16:37:43'),
(231, '1758625778033', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Mohammad Mazhar', '2025-09-23 16:40:44'),
(232, '1758625778033', 155, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Mohammad Mazhar', '2025-09-23 16:40:44'),
(233, '1758625778033', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Mohammad Mazhar', '2025-09-23 16:40:44'),
(234, '1758625778033', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Mohammad Mazhar', '2025-09-23 16:40:44'),
(235, '1758625778033', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Mohammad Mazhar', '2025-09-23 16:40:44'),
(236, '1758625778033', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Mohammad Mazhar', '2025-09-23 16:40:44'),
(237, '1758627783979', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Mohammad Mazhar', '2025-09-23 17:13:21'),
(239, '1758627783979', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Mohammad Mazhar', '2025-09-23 17:14:24'),
(240, '1758627783979', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Mohammad Mazhar', '2025-09-23 17:32:10'),
(241, '1758627783979', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Mohammad Mazhar', '2025-09-23 17:32:10'),
(242, '1758627783979', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Mohammad Mazhar', '2025-09-23 17:32:10'),
(243, '1758627783979', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Mohammad Mazhar', '2025-09-23 17:32:10'),
(244, '1758627783979', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Mohammad Mazhar', '2025-09-23 17:32:10'),
(245, '1758627783979', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Mohammad Mazhar', '2025-09-23 17:34:24'),
(246, '1758627783979', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Mohammad Mazhar', '2025-09-23 17:34:25'),
(247, '1758627783979', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Mohammad Mazhar', '2025-09-23 17:34:25'),
(248, '1758627783979', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Mohammad Mazhar', '2025-09-23 17:34:25'),
(249, '1758627783979', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Mohammad Mazhar', '2025-09-23 17:34:25'),
(250, '1758692498775', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 11:11:51'),
(252, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Vishakha Agrahari', '2025-09-24 12:11:58'),
(253, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Vishakha Agrahari', '2025-09-24 12:27:35'),
(254, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:27:35'),
(255, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:27:35'),
(256, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:27:35'),
(257, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-24 12:27:35'),
(258, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Vishakha Agrahari', '2025-09-24 12:41:43'),
(259, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:41:43'),
(260, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:41:43'),
(261, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:41:43'),
(262, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-24 12:41:43'),
(263, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Vishakha Agrahari', '2025-09-24 12:41:57'),
(264, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:41:57'),
(265, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:41:57'),
(266, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:41:57'),
(267, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-24 12:41:57'),
(268, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Vishakha Agrahari', '2025-09-24 12:43:03'),
(269, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Vishakha Agrahari', '2025-09-24 12:45:51'),
(270, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:45:51'),
(271, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:45:51'),
(272, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:45:51'),
(273, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-24 12:45:52'),
(274, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Vishakha Agrahari', '2025-09-24 12:54:58'),
(275, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Vishakha Agrahari', '2025-09-24 12:55:27'),
(276, '1758696102866', 155, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Vishakha Agrahari', '2025-09-24 12:55:27'),
(277, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:55:27'),
(278, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:55:27'),
(279, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:55:27'),
(280, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-24 12:55:27'),
(281, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Vishakha Agrahari', '2025-09-24 12:58:11'),
(282, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:58:11'),
(283, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:58:11'),
(284, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 12:58:11'),
(285, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-24 12:58:11'),
(286, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Vishakha Agrahari', '2025-09-24 13:00:54'),
(287, '1758696102866', 155, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Vishakha Agrahari', '2025-09-24 13:00:54'),
(288, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 13:00:54'),
(289, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 13:00:54'),
(290, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 13:00:54'),
(291, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-24 13:00:54'),
(292, '1758696102866', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Vishakha Agrahari', '2025-09-24 13:27:55'),
(293, '1758696102866', 155, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Vishakha Agrahari', '2025-09-24 13:27:55'),
(294, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 13:27:55'),
(295, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 13:27:55'),
(296, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-24 13:27:55'),
(297, '1758696102866', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Vishakha Agrahari', '2025-09-24 13:27:55'),
(298, '1758700993840', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 13:33:19'),
(329, '1758719764277', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-24 19:47:29'),
(330, '1758719764277', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 19:47:30'),
(331, '1758719764277', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 19:47:30'),
(332, '1758719764277', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 19:47:30'),
(333, '1758719764277', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-24 19:47:30'),
(334, '1758719764277', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-24 19:47:32'),
(335, '1758719764277', 155, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-24 19:47:32'),
(336, '1758719764277', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 19:47:32'),
(337, '1758719764277', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 19:47:32'),
(338, '1758719764277', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 19:47:32'),
(339, '1758719764277', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-24 19:47:32'),
(340, '1758726950079', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-24 20:45:54'),
(341, '1758726950079', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-24 20:45:56'),
(342, '1758726950079', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:45:56'),
(343, '1758726950079', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:45:56'),
(344, '1758726950079', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:45:56'),
(345, '1758726950079', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-24 20:45:56'),
(346, '1758726950079', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-24 20:45:58'),
(347, '1758726950079', 155, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-24 20:45:58'),
(348, '1758726950079', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:45:58'),
(349, '1758726950079', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:45:58'),
(350, '1758726950079', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:45:58'),
(351, '1758726950079', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-24 20:45:58'),
(352, '1758726981529', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-24 20:46:26'),
(353, '1758726981529', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-24 20:46:27'),
(354, '1758726981529', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:46:27'),
(355, '1758726981529', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:46:27'),
(356, '1758726981529', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:46:27'),
(357, '1758726981529', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-24 20:46:27'),
(358, '1758726981529', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-24 20:46:29'),
(359, '1758726981529', 155, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-24 20:46:29'),
(360, '1758726981529', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:46:29'),
(361, '1758726981529', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:46:29'),
(362, '1758726981529', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:46:29'),
(363, '1758726981529', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-24 20:46:29'),
(364, '1758727032599', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-24 20:47:16'),
(365, '1758727032599', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-24 20:47:17'),
(366, '1758727032599', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:47:18'),
(367, '1758727032599', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:47:18'),
(368, '1758727032599', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:47:18'),
(369, '1758727032599', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-24 20:47:18'),
(370, '1758727032599', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-24 20:47:19'),
(371, '1758727032599', 155, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-24 20:47:19'),
(372, '1758727032599', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:47:20'),
(373, '1758727032599', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:47:20'),
(374, '1758727032599', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-24 20:47:20'),
(375, '1758727032599', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-24 20:47:20'),
(377, '1758776574367', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Vishakha Agrahari', '2025-09-25 10:35:40'),
(378, '1758786918984', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-25 13:25:31'),
(379, '1758787020554', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-25 13:27:05'),
(380, '1758796398957', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-25 16:03:21'),
(383, '1758694737497', 152, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'deepanshu', '2025-09-26 12:38:11'),
(385, '1758694737497', 152, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'deepanshu', '2025-09-26 12:55:09'),
(386, '1758694737497', 152, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'deepanshu', '2025-09-26 12:55:38'),
(387, '1758875804425', 152, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'deepanshu', '2025-09-26 14:06:45'),
(389, '1758898269960', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-26 20:21:14'),
(390, '1758898288612', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-26 20:21:31'),
(391, '1758898394164', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-26 20:23:17'),
(392, '1758898394164', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:23:17'),
(393, '1758898394164', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:23:17'),
(394, '1758898394164', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:23:17'),
(395, '1758898394164', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-26 20:23:17'),
(396, '1758898400836', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-26 20:23:23'),
(397, '1758898400836', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:23:23'),
(398, '1758898400836', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:23:23'),
(399, '1758898400836', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:23:24'),
(400, '1758898400836', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-26 20:23:24'),
(401, '1758898400836', 155, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-26 20:23:30'),
(402, '1758898400836', 155, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-26 20:23:30'),
(403, '1758898400836', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:23:30'),
(404, '1758898400836', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:23:30'),
(405, '1758898400836', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:23:31'),
(406, '1758898400836', 155, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-26 20:23:31'),
(407, '1758898637748', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-26 20:27:22'),
(408, '1758898637748', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-26 20:27:37'),
(409, '1758898637748', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-26 20:27:42'),
(410, '1758898742731', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-26 20:29:05'),
(411, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:29:05'),
(412, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:29:05'),
(413, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:29:05'),
(414, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-26 20:29:05'),
(415, '1758898742731', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-26 20:29:08'),
(416, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:29:09');
INSERT INTO `complimentary` (`id`, `txn_id`, `client_id`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `employee`, `created_at`) VALUES
(417, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:29:09'),
(418, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:29:09'),
(419, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-26 20:29:09'),
(420, '1758898742731', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-26 20:29:13'),
(421, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:29:13'),
(422, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:29:13'),
(423, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:29:13'),
(424, '1758898742731', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-26 20:29:13'),
(425, '1758898839635', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-26 20:30:57'),
(426, '1758898839635', 161, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-26 20:30:57'),
(427, '1758898839635', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:30:57'),
(428, '1758898839635', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:30:57'),
(429, '1758898839635', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:30:58'),
(430, '1758898839635', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-26 20:30:58'),
(431, '1758899361475', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:39:29'),
(432, '1758899518290', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:42:06'),
(433, '1758899518290', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:42:12'),
(434, '1758899577875', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:43:09'),
(435, '1758899577875', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:43:16'),
(436, '1758899577875', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-26 20:43:21'),
(437, '1758899577875', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:43:21'),
(438, '1758899577875', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:43:21'),
(439, '1758899577875', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-26 20:43:21'),
(440, '1758899577875', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-26 20:43:21'),
(441, '1758900126891', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-26 20:53:46'),
(442, '1758970268204', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-27 16:21:18'),
(443, '1758970268204', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-27 16:21:18'),
(444, '1758970268204', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-27 16:21:19'),
(445, '1758970268204', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-27 16:21:19'),
(446, '1758970268204', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-27 16:21:19'),
(447, '1758970287059', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-09-27 16:21:33'),
(448, '1758970287059', 161, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-09-27 16:21:33'),
(449, '1758970287059', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-27 16:21:33'),
(450, '1758970287059', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-27 16:21:33'),
(451, '1758970287059', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-27 16:21:33'),
(452, '1758970287059', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-09-27 16:21:34'),
(453, '1759213495791', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-30 11:55:00'),
(454, '1759213555018', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-30 11:56:04'),
(455, '1759238599973', 163, 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '39', '0', '0', '7800', 'Abhinav Pandey', '2025-09-30 19:19:14'),
(458, '1759301584397', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-10-01 12:23:07'),
(459, '1759301619585', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-01 12:23:41'),
(460, '1759301619585', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-01 12:23:41'),
(461, '1759301619585', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-01 12:23:41'),
(462, '1759301619585', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-01 12:23:41'),
(463, '1759301619585', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-01 12:23:41'),
(464, '1759301845519', 161, 'Complimentary', 'Social Media Posting', NULL, 'Youtube Posting', '300', '8', '0', '0', '2400', 'Abhinav Pandey', '2025-10-01 14:33:13'),
(466, '1759309683267', 164, 'Complimentary', 'Social Media Posting', NULL, 'Youtube Posting', '150', '8', '0', '0', '1200', 'Abhinav Pandey', '2025-10-01 15:02:22'),
(467, '1759238599973', 163, 'Complimentary', 'Social Media Posting', NULL, 'Youtube Posting', '150', '10', '0', '0', '1500', 'Abhinav Pandey', '2025-10-01 15:07:50'),
(469, '1759317556690', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-10-01 16:49:24'),
(470, '1759317441263', 32, 'Complimentary', 'Video Service', 111, 'Changes Video', '1000', '4', '0', '0', '4000', 'Abhinav Pandey', '2025-10-01 16:50:09'),
(471, '1759318508709', 165, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-10-01 17:05:13'),
(473, '1759318508709', 165, 'Complimentary', 'Video Service', 78, 'Reel With Standard Editing', '1500', '5', '0', '0', '7500', 'Abhinav Pandey', '2025-10-01 17:08:20'),
(476, '1759317556690', 161, 'Complimentary', 'Video Service', 77, 'Reel with Basic Editing', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-10-01 17:12:36'),
(477, '1759319472927', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-01 17:21:15'),
(478, '1759318714716', 165, 'Complimentary', 'Social Media Posting', 108, 'Youtube Posting', '150', '12', '0', '0', '1800', 'Abhinav Pandey', '2025-10-01 18:26:57'),
(479, '1759318714716', 165, 'Complimentary', 'Graphic Creation', 99, 'Thumbnail Design', '250', '11', '0', '0', '2750', 'Abhinav Pandey', '2025-10-01 18:27:55'),
(480, '1759318714716', 165, 'Complimentary', 'Graphic Creation', 118, 'YouTube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', '2025-10-01 18:38:07'),
(481, '1759325284316', 166, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-01 18:58:07'),
(482, '1759325284316', 166, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-01 18:58:07'),
(483, '1759325284316', 166, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-01 18:58:07'),
(484, '1759325284316', 166, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-01 18:58:07'),
(485, '1759325284316', 166, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-01 18:58:07'),
(486, '1759325302604', 166, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-01 18:58:25'),
(487, '1759329129281', 165, 'Complimentary', 'Graphic Creation', 118, 'YouTube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', '2025-10-01 20:07:37'),
(488, '1759329129281', 165, 'Complimentary', 'Graphic Creation', 99, 'Thumbnail Design', '250', '9', '0', '0', '2250', 'Abhinav Pandey', '2025-10-01 20:07:58'),
(489, '1759329129281', 165, 'Complimentary', 'Social Media Posting', 108, 'Youtube Posting', '150', '12', '0', '0', '1800', 'Abhinav Pandey', '2025-10-01 20:08:39'),
(497, '1759475367222', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-03 12:44:35'),
(503, '1759475686521', 161, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-03 12:49:04'),
(504, '1759475686521', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-03 12:49:04'),
(505, '1759475686521', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-03 12:49:04'),
(506, '1759475686521', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-03 12:49:04'),
(507, '1759475686521', 161, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-03 12:49:04'),
(508, '1759558354057', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 11:42:40'),
(509, '1759560771577', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-04 12:22:54'),
(510, '1759562564266', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 12:52:47'),
(511, '1759565473560', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 13:41:19'),
(512, '1759566090025', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 13:51:33'),
(514, '1759568184211', 168, 'Complimentary', 'Graphic Creation', 75, 'Festival Post', '400', '3', '0', '0', '1200', 'Abhinav Pandey', '2025-10-04 14:56:18'),
(516, '1759568184211', 168, 'Complimentary', 'Video Shoot', 125, 'Mobile Shoot', '1000', '3', '0', '0', '3000', 'Abhinav Pandey', '2025-10-04 14:58:43'),
(517, '1759570156443', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:20'),
(518, '1759570157464', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:21'),
(519, '1759570157723', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:21'),
(520, '1759570158061', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:22'),
(521, '1759570158374', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:22'),
(522, '1759570158448', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:22'),
(523, '1759570158323', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:22'),
(524, '1759570157843', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:22'),
(525, '1759570159311', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(526, '1759570159230', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(527, '1759570159168', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(528, '1759570159593', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(529, '1759570159619', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(530, '1759570158809', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(531, '1759570159766', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(532, '1759570158844', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(533, '1759570158992', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(534, '1759570159765', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(535, '1759570159901', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(536, '1759570159590', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:23'),
(537, '1759570159666', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:24'),
(538, '1759570159858', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:24'),
(539, '1759570158991', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:24'),
(540, '1759570159309', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:24'),
(541, '1759570159344', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-04 14:59:24'),
(542, '1759570474612', 168, 'Complimentary', 'Graphic Creation', 75, 'Festival Post', '400', '3', '0', '0', '1200', 'Abhinav Pandey', '2025-10-04 15:12:06'),
(543, '1759570474612', 168, 'Complimentary', 'Video Shoot', 125, 'Mobile Shoot', '1000', '3', '0', '0', '3000', 'Abhinav Pandey', '2025-10-04 15:12:19'),
(544, '1759570474612', 168, 'Complimentary', 'Social Media Posting', 97, 'Facebook & Instagram Posting', '200', '5', '0', '0', '1000', 'Abhinav Pandey', '2025-10-04 15:12:50'),
(545, '1759736059360', 171, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Jayant Hazari', '2025-10-06 13:04:23'),
(546, '1759736059360', 171, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Jayant Hazari', '2025-10-06 13:05:11'),
(547, '1759742629229', 171, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-06 14:53:51'),
(548, '1759742642767', 171, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-06 14:54:04'),
(549, '1759742642767', 171, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-06 14:54:04'),
(550, '1759742642767', 171, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-06 14:54:05'),
(551, '1759742642767', 171, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-06 14:54:05'),
(552, '1759742642767', 171, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-06 14:54:05'),
(553, '1759742649199', 171, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-10-06 14:54:11'),
(554, '1759742649199', 171, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-10-06 14:54:11'),
(555, '1759742649199', 171, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-06 14:54:11'),
(556, '1759742649199', 171, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-06 14:54:11'),
(557, '1759742649199', 171, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-06 14:54:11'),
(558, '1759742649199', 171, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-06 14:54:11'),
(559, '1759766835193', 172, 'Complimentary', 'Social Media Posting', 108, 'Youtube Posting', '150', '7', '0', '0', '1050', 'Abhinav Pandey', '2025-10-06 21:42:53'),
(560, '1759766835193', 172, 'Complimentary', 'Video Shoot', 90, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Abhinav Pandey', '2025-10-06 21:43:28'),
(561, '1759766835193', 172, 'Complimentary', 'Social Media Marketing (SMM)', 128, 'Google Ads', '8350', '1', '0', '0', '8350', 'Abhinav Pandey', '2025-10-06 21:45:19'),
(562, '1759766835193', 172, 'Complimentary', 'GMB SEO', 131, 'Keyword', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-10-06 22:00:01'),
(563, '1759822976759', 152, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-07 13:13:12'),
(564, '1759826420473', 170, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-07 14:10:30'),
(565, '1759830679237', 171, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-07 15:21:21'),
(566, '1759822976759', 152, 'Complimentary', 'Meta Account Setup', 82, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-07 15:32:29'),
(568, '1759905740641', 174, 'Complimentary', 'GMB SEO', 131, 'Keyword', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-10-08 12:20:12'),
(569, '1759905740641', 174, 'Complimentary', 'Graphic Creation', 133, 'Changes Post', '150', '5', '0', '0', '750', 'Abhinav Pandey', '2025-10-08 12:23:54'),
(570, '1759905740641', 174, 'Complimentary', 'Social Media Posting', 97, 'Facebook & Instagram Posting', '200', '15', '0', '0', '3000', 'Abhinav Pandey', '2025-10-08 12:24:27'),
(571, '1759905740641', 174, 'Complimentary', 'Social Media Marketing (SMM)', 134, 'Meta Ads Service Charge', '3600', '1', '0', '0', '3600', 'Abhinav Pandey', '2025-10-08 12:25:11'),
(572, '1759826420473', 170, 'Complimentary', 'Graphic Creation', 75, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-08 18:45:45'),
(573, '1759826420473', 170, 'Complimentary', 'Video Service', 77, 'Reel with Basic Editing', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-10-08 18:45:50'),
(574, '1759826420473', 170, 'Complimentary', 'Video Shoot', 90, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', '2025-10-08 18:45:55'),
(575, '1760177697723', 175, 'Complimentary', 'Video Shoot', 90, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Lavina Kukreja', '2025-10-11 15:55:45'),
(576, '1760694703806', 154, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 15:21:53'),
(577, '1760695661673', 177, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-17 15:37:45'),
(578, '1760695661673', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 15:37:45'),
(579, '1760695661673', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 15:37:45'),
(580, '1760695661673', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 15:37:45'),
(581, '1760695661673', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-17 15:37:45'),
(582, '1760698694697', 177, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-10-17 16:28:19'),
(583, '1760698694697', 177, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-10-17 16:28:19'),
(584, '1760698694697', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 16:28:20'),
(585, '1760698694697', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 16:28:20'),
(586, '1760698694697', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 16:28:20'),
(587, '1760698694697', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-17 16:28:20'),
(588, '1760700233504', 177, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-17 16:53:55'),
(589, '1760700233504', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 16:53:56'),
(590, '1760700233504', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 16:53:56'),
(591, '1760700233504', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 16:53:56'),
(592, '1760700233504', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-17 16:53:56'),
(593, '1760702305547', 178, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-17 17:28:29'),
(599, '1760704338009', 177, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-17 18:02:19'),
(600, '1760704338009', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 18:02:19'),
(601, '1760704338009', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 18:02:19'),
(602, '1760704338009', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-17 18:02:19'),
(603, '1760704338009', 177, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-17 18:02:19'),
(604, '1760705060926', 181, 'Complimentary', 'Graphic Creation', 75, 'Festival Post', '400', '2', '0', '0', '800', 'Lavina Kukreja', '2025-10-17 18:26:16'),
(605, '1760705060926', 181, 'Complimentary', 'Video Shoot', 90, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Lavina Kukreja', '2025-10-17 18:29:14'),
(606, '1761041628173', 182, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-21 15:43:51'),
(607, '1761041628173', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-21 15:43:51'),
(608, '1761041628173', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-21 15:43:51'),
(609, '1761041628173', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-21 15:43:51'),
(610, '1761041628173', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-21 15:43:51'),
(611, '1761048201959', 182, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-21 17:33:24'),
(612, '1761048201959', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-21 17:33:24'),
(613, '1761048201959', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-21 17:33:24'),
(614, '1761048201959', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-21 17:33:24'),
(615, '1761048201959', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-21 17:33:24'),
(616, '1761224847040', 142, 'Complimentary', 'Graphic Creation', 99, 'Thumbnail Design', '250', '6', '0', '0', '1500', 'Abhinav Pandey', '2025-10-23 18:39:32'),
(619, '1761394674189', 183, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-25 17:48:02'),
(620, '1761394779413', 183, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-25 17:49:41'),
(621, '1761394779413', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 17:49:42'),
(622, '1761394779413', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 17:49:42'),
(623, '1761394779413', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 17:49:42'),
(624, '1761394779413', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-25 17:49:42'),
(625, '1761394839814', 183, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-10-25 17:50:42'),
(626, '1761394839814', 183, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-10-25 17:50:42'),
(627, '1761394839814', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 17:50:42'),
(628, '1761394839814', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 17:50:42'),
(629, '1761394839814', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 17:50:42'),
(630, '1761394839814', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Abhinav Pandey', '2025-10-25 17:50:42'),
(631, '1761396112237', 183, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-25 18:11:54'),
(632, '1761396155302', 183, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-25 18:12:38'),
(633, '1761396155302', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 18:12:38'),
(634, '1761396155302', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 18:12:38'),
(635, '1761396155302', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 18:12:38'),
(636, '1761396155302', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 18:12:38'),
(637, '1761396211822', 183, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-10-25 18:13:34'),
(638, '1761396211822', 183, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-10-25 18:13:34'),
(639, '1761396211822', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 18:13:34'),
(640, '1761396211822', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 18:13:34'),
(641, '1761396211822', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 18:13:34'),
(642, '1761396211822', 183, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-25 18:13:34'),
(646, '1761224847040', 142, 'Complimentary', 'Graphic Creation', 75, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-10-27 13:45:04'),
(647, '1761224847040', 142, 'Complimentary', 'Video Service', 78, 'Reel With Standard Editing', '1500', '1', '300', '0', '1800', 'Abhinav Pandey', '2025-10-27 13:45:12'),
(649, '1761643201847', 184, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-28 14:50:05'),
(650, '1761643479078', 184, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '0', '0', '800', 'Abhinav Pandey', '2025-10-28 14:56:57'),
(651, '1761643479078', 184, 'Complimentary', ' Software Tool Subscription', 146, 'Customer Relationship Management (CRM) per month', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-10-28 15:01:39'),
(652, '1761643201847', 184, 'Complimentary', ' Software Tool Subscription', 146, 'Customer Relationship Management (CRM) per month', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-10-28 15:02:16'),
(653, '1761736808124', 182, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-29 16:50:11'),
(654, '1761735675740', 182, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-29 16:50:43'),
(655, '1761735675740', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-29 16:50:43'),
(656, '1761735675740', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-29 16:50:44'),
(657, '1761735675740', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-29 16:50:44'),
(658, '1761735675740', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-10-29 16:50:44'),
(666, '1759822976759', 152, 'Complimentary', 'Video Service', 78, 'Reel With Standard Editing', '1500', '1', '300', '250', '2050', 'deepanshu', '2025-10-30 19:44:23'),
(667, '1761993901498', 182, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-11-01 16:15:06'),
(668, '1761993901498', 182, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-11-01 16:15:06'),
(669, '1761993901498', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-01 16:15:06'),
(670, '1761993901498', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-01 16:15:06'),
(671, '1761993901498', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-01 16:15:06'),
(672, '1761993901498', 182, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-01 16:15:06'),
(673, '1759238599973', 163, 'Complimentary', 'Video Shoot', 125, 'Mobile Shoot', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', '2025-11-03 17:30:35'),
(675, '1762239459456', 134, 'Complimentary', 'Graphic Creation', 75, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-11-04 12:29:58'),
(676, '1762257206910', 126, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Mohammad Mazhar', '2025-11-04 17:23:29'),
(677, '1762323639525', 168, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-11-05 11:50:43'),
(678, '1762323652979', 168, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-11-05 11:50:57'),
(679, '1762323652979', 168, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-05 11:50:57'),
(680, '1762323652979', 168, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-05 11:50:58'),
(681, '1762323652979', 168, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-05 11:50:58'),
(682, '1762323652979', 168, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-05 11:50:58'),
(683, '1762323667122', 168, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Abhinav Pandey', '2025-11-05 11:51:10'),
(684, '1762323667122', 168, 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', 'Abhinav Pandey', '2025-11-05 11:51:10'),
(685, '1762323667122', 168, 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-05 11:51:11'),
(686, '1762323667122', 168, 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-05 11:51:11'),
(687, '1762323667122', 168, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-05 11:51:11'),
(688, '1762323667122', 168, 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-11-05 11:51:11'),
(691, '1760177697723', 175, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-11-06 10:59:54'),
(692, '1762407038010', 175, 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-11-06 11:00:43'),
(694, '1762505402689', 126, 'Complimentary', 'Software Development', 156, 'CRM Maintenance Monthly', '1000', '2', '0', '0', '2000', 'Mahesh Kuldeep', '2025-11-07 14:39:49'),
(695, '1762582849963', 190, 'Complimentary', 'Video Shoot', 125, 'Mobile Shoot', '1000', '3', '0', '0', '3000', 'Abhinav Pandey', '2025-11-08 12:00:59'),
(696, '1762582849963', 190, 'Complimentary', 'Graphic Creation', 159, 'Festival Post', '500', '2', '300', '0', '1600', 'Abhinav Pandey', '2025-11-08 12:02:26'),
(697, '1762588119191', 190, 'Complimentary', 'Graphic Creation', 159, 'Festival Post', '500', '3', '300', '0', '2400', 'Abhinav Pandey', '2025-11-08 13:22:14'),
(698, '1762588119191', 190, 'Complimentary', 'Video Shoot', 125, 'Mobile Shoot', '1000', '3', '0', '0', '3000', 'Abhinav Pandey', '2025-11-08 13:22:25'),
(699, '1762596181195', 190, 'Complimentary', 'Graphic Creation', 159, 'Festival Post', '500', '3', '300', '0', '2400', 'Abhinav Pandey', '2025-11-08 15:36:43'),
(700, '1762596181195', 190, 'Complimentary', 'Video Shoot', 125, 'Mobile Shoot', '1000', '3', '0', '0', '3000', 'Abhinav Pandey', '2025-11-08 15:37:03'),
(701, '1762759898174', 191, 'Complimentary', 'Graphic Creation', 76, 'Infographic Post', '500', '4', '0', '0', '2000', 'Abhinav Pandey', '2025-11-10 13:05:30'),
(702, '1762759898174', 191, 'Complimentary', 'Video Service', 78, 'Reel With Standard Editing', '1500', '1', '0', '0', '1500', 'Abhinav Pandey', '2025-11-10 13:05:44'),
(703, '1762759898174', 191, 'Complimentary', 'Social Media Posting', 145, 'Facebook & Instagram Posting', '300', '9', '0', '0', '2700', 'Abhinav Pandey', '2025-11-10 13:06:56'),
(704, '1762759898174', 191, 'Complimentary', 'Video Shoot', 161, 'Model Shoot', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', '2025-11-10 13:13:54'),
(706, '1762777042282', 192, 'Complimentary', 'Graphic Creation', 159, 'Festival Post', '500', '3', '300', '0', '2400', 'Lavina Kukreja', '2025-11-10 18:39:07'),
(707, '1762777042282', 192, 'Complimentary', 'Video Shoot', 90, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Lavina Kukreja', '2025-11-10 18:39:39'),
(708, '1762780496899', 192, 'Complimentary', 'Video Shoot', 90, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Lavina Kukreja', '2025-11-10 18:46:59'),
(709, '1762780496899', 192, 'Complimentary', 'Graphic Creation', 159, 'Festival Post', '500', '1', '0', '0', '500', 'Lavina Kukreja', '2025-11-10 18:47:59'),
(710, '1762866522210', 178, 'Complimentary', 'Graphic Creation', 159, 'Festival Post', '500', '3', '300', '0', '2400', 'Abhinav Pandey', '2025-11-11 18:47:19'),
(711, '1758545828900', 152, 'Complimentary', 'Video Service', 78, 'Reel With Standard Editing', '1500', '1', '0', '250', '1750', 'Abhinav Pandey', '2025-11-11 18:50:14'),
(712, '1763027321517', 181, 'Complimentary', 'Graphic Creation', 159, 'Festival Post', '500', '3', '300', '0', '2400', 'Abhinav Pandey', '2025-11-13 15:22:08'),
(714, '1763037625803', 190, 'Complimentary', 'Video Shoot', 125, 'Mobile Shoot', '1000', '2', '0', '0', '2000', 'Abhinav Pandey', '2025-11-13 18:37:12'),
(716, '1763037625803', 190, 'Complimentary', 'Graphic Creation', 159, 'Festival Post', '500', '1', '300', '0', '800', 'Abhinav Pandey', '2025-11-13 18:40:16'),
(717, '1763129724156', 181, 'Complimentary', 'Graphic Creation', 159, 'Festival Post', '500', '3', '300', '0', '2400', 'Abhinav Pandey', '2025-11-14 20:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `complimentary_invoice`
--

CREATE TABLE `complimentary_invoice` (
  `id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `editing_type_id` int(255) DEFAULT NULL,
  `editing_type_name` varchar(255) NOT NULL,
  `editing_type_amount` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `include_content_posting` varchar(255) NOT NULL,
  `include_thumbnail_creation` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `employee` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complimentary_invoice`
--

INSERT INTO `complimentary_invoice` (`id`, `client_id`, `txn_id`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `employee`, `created_at`) VALUES
(27, 55, '1757652499781', 'Complimentary', 'Graphic Creation', NULL, 'Festive Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-14 18:55:36'),
(28, 55, '1757652499781', 'Complimentary', 'Graphic Creation', NULL, 'Festive Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-09-14 18:55:36'),
(29, 55, '1757857389940', 'Complimentary', 'Thumbnail', NULL, 'Reel Video Thumbnail', '250', '1', '0', '0', '250', 'Abhinav Pandey', '2025-09-15 14:07:59'),
(43, 135, '1757937345024', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '5', '0', '0', '4250', 'Abhinav Pandey', '2025-09-15 19:18:58'),
(49, 139, '1757947793267', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Abhinav Pandey', '2025-09-16 15:39:30'),
(52, 138, '1758111182522', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '2', '0', '0', '400', 'Abhinav Pandey', '2025-09-17 17:53:35'),
(53, 138, '1758111182522', 'Complimentary', 'Graphic Creation', NULL, 'Thumbnail Design', '250', '4', '0', '0', '1000', 'Abhinav Pandey', '2025-09-17 17:53:35'),
(54, 138, '1758111182522', 'Complimentary', 'Social Media Marketing (SMM)', NULL, 'Meta Ad Charges', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', '2025-09-17 17:53:35'),
(73, 143, '1758182285382', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', 'Lavina Kukreja', '2025-10-06 18:14:19'),
(74, 143, '1758182285382', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Lavina Kukreja', '2025-09-18 13:38:22'),
(76, 126, '1757403034860', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-18 14:55:13'),
(79, 142, '1758123158995', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '0', '0', '800', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(80, 142, '1758123158995', 'Complimentary', 'Video Service', NULL, 'Reel With Standard Editing', '1500', '1', '0', '0', '1500', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(81, 142, '1758123158995', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(82, 142, '1758123158995', 'Complimentary', 'Graphic Creation', NULL, 'Thumbnail Design', '250', '5', '0', '0', '1250', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(83, 142, '1758123158995', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Abhinav Pandey', '2025-10-17 20:16:17'),
(84, 142, '1758123158995', 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(145, 134, '1757773895017', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '300', '0', '700', 'Abhinav Pandey', '2025-09-27 16:34:20'),
(146, 134, '1757773895017', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Abhinav Pandey', '2025-09-27 16:34:20'),
(148, 163, '1759238599973', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '39', '0', '0', '7800', 'Abhinav Pandey', '2025-09-30 19:34:28'),
(151, 163, '1759238599973', 'Complimentary', 'Social Media Posting', NULL, 'Youtube Posting', '150', '10', '0', '0', '1500', 'Abhinav Pandey', '2025-10-01 15:07:50'),
(153, 32, '1759317441263', 'Complimentary', 'Video Service', NULL, 'Changes Video', '1000', '4', '0', '0', '4000', 'Abhinav Pandey', '2025-10-01 16:51:36'),
(159, 165, '1759329129281', 'Complimentary', 'Graphic Creation', NULL, 'YouTube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(160, 165, '1759329129281', 'Complimentary', 'Graphic Creation', NULL, 'Thumbnail Design', '250', '9', '0', '0', '2250', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(161, 165, '1759329129281', 'Complimentary', 'Social Media Posting', NULL, 'Youtube Posting', '150', '12', '0', '0', '1800', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(162, 168, '1759570474612', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '3', '0', '0', '1200', 'Abhinav Pandey', '2025-10-04 15:16:18'),
(163, 168, '1759570474612', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '1000', '3', '0', '0', '3000', 'Abhinav Pandey', '2025-10-04 15:16:18'),
(164, 168, '1759570474612', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '5', '0', '0', '1000', 'Abhinav Pandey', '2025-10-04 15:16:18'),
(166, 168, '1759732450076', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '3', '0', '0', '1200', 'Abhinav Pandey', '2025-10-06 12:04:10'),
(167, 168, '1759732450076', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '1000', '3', '0', '0', '3000', 'Abhinav Pandey', '2025-10-06 12:04:10'),
(168, 168, '1759732450076', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '5', '0', '0', '1000', 'Abhinav Pandey', '2025-10-06 12:04:10'),
(172, 172, '1759766835193', 'Complimentary', 'Social Media Posting', NULL, 'Youtube Posting', '150', '7', '0', '0', '1050', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(173, 172, '1759766835193', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(174, 172, '1759766835193', 'Complimentary', 'Social Media Marketing (SMM)', NULL, 'Google Ads', '8350', '1', '0', '0', '8350', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(175, 172, '1759766835193', 'Complimentary', 'GMB SEO', NULL, 'Keyword', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(176, 174, '1759905740641', 'Complimentary', 'GMB SEO', NULL, 'Keyword', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-10-08 12:28:23'),
(177, 174, '1759905740641', 'Complimentary', 'Graphic Creation', NULL, 'Changes Post', '150', '5', '0', '0', '750', 'Abhinav Pandey', '2025-10-08 12:28:23'),
(178, 174, '1759905740641', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '15', '0', '0', '3000', 'Abhinav Pandey', '2025-10-08 12:28:23'),
(179, 174, '1759905740641', 'Complimentary', 'Social Media Marketing (SMM)', NULL, 'Meta Ads Service Charge', '3600', '1', '0', '0', '3600', 'Abhinav Pandey', '2025-10-08 12:28:23'),
(183, 139, '1760446938641', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Abhinav Pandey', '2025-10-14 18:32:18'),
(187, 138, '1760625379835', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '2', '0', '0', '400', 'Abhinav Pandey', '2025-10-16 20:06:19'),
(188, 138, '1760625379835', 'Complimentary', 'Graphic Creation', NULL, 'Thumbnail Design', '250', '4', '0', '0', '1000', 'Abhinav Pandey', '2025-10-16 20:06:19'),
(189, 138, '1760625379835', 'Complimentary', 'Social Media Marketing (SMM)', NULL, 'Meta Ad Charges', '3000', '1', '0', '0', '3000', 'Abhinav Pandey', '2025-10-16 20:06:19'),
(306, 171, '1759830679237', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Abhinav Pandey', '2025-10-28 14:00:17'),
(326, 165, '1762158633255', 'Complimentary', 'Graphic Creation', NULL, 'YouTube Video Thumbnail', '300', '1', '0', '0', '300', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(327, 165, '1762158633255', 'Complimentary', 'Graphic Creation', NULL, 'Thumbnail Design', '250', '9', '0', '0', '2250', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(328, 165, '1762158633255', 'Complimentary', 'Social Media Posting', NULL, 'Youtube Posting', '150', '12', '0', '0', '1800', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(329, 32, '1762160193782', 'Complimentary', 'Video Service', NULL, 'Changes Video', '1000', '4', '0', '0', '4000', 'Abhinav Pandey', '2025-11-03 14:26:33'),
(330, 163, '1759238599973', 'Complimentary', 'Video Shoot', 125, 'Mobile Shoot', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', '2025-11-03 17:30:35'),
(331, 163, '1762171620469', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '39', '0', '0', '7800', 'Abhinav Pandey', '2025-11-03 17:37:00'),
(332, 163, '1762171620469', 'Complimentary', 'Social Media Posting', NULL, 'Youtube Posting', '150', '10', '0', '0', '1500', 'Abhinav Pandey', '2025-11-03 17:37:00'),
(333, 163, '1762171620469', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '1000', '5', '0', '0', '5000', 'Abhinav Pandey', '2025-11-03 17:37:00'),
(334, 174, '1762180372172', 'Complimentary', 'GMB SEO', NULL, 'Keyword', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-11-03 20:02:52'),
(335, 174, '1762180372172', 'Complimentary', 'Graphic Creation', NULL, 'Changes Post', '150', '5', '0', '0', '750', 'Abhinav Pandey', '2025-11-03 20:02:52'),
(336, 174, '1762180372172', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '15', '0', '0', '3000', 'Abhinav Pandey', '2025-11-03 20:02:52'),
(337, 174, '1762180372172', 'Complimentary', 'Social Media Marketing (SMM)', NULL, 'Meta Ads Service Charge', '3600', '1', '0', '0', '3600', 'Abhinav Pandey', '2025-11-03 20:02:52'),
(341, 126, '1762257206910', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', 'Mohammad Mazhar', '2025-11-04 19:00:21'),
(345, 168, '1762323997246', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '3', '0', '0', '1200', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(346, 168, '1762323997246', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '1000', '3', '0', '0', '3000', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(347, 168, '1762323997246', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '5', '0', '0', '1000', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(348, 172, '1762334137424', 'Complimentary', 'Social Media Posting', NULL, 'Youtube Posting', '150', '7', '0', '0', '1050', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(349, 172, '1762334137424', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(350, 172, '1762334137424', 'Complimentary', 'Social Media Marketing (SMM)', NULL, 'Google Ads', '8350', '1', '0', '0', '8350', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(351, 172, '1762334137424', 'Complimentary', 'GMB SEO', NULL, 'Keyword', '1000', '1', '0', '0', '1000', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(360, 191, '1762759898174', 'Complimentary', 'Graphic Creation', NULL, 'Infographic Post', '500', '4', '0', '0', '2000', 'Abhinav Pandey', '2025-11-10 16:28:43'),
(361, 191, '1762759898174', 'Complimentary', 'Video Service', NULL, 'Reel With Standard Editing', '1500', '1', '0', '0', '1500', 'Abhinav Pandey', '2025-11-10 16:28:43'),
(362, 191, '1762759898174', 'Complimentary', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '300', '9', '0', '0', '2700', 'Abhinav Pandey', '2025-11-10 16:28:43'),
(363, 191, '1762759898174', 'Complimentary', 'Video Shoot', NULL, 'Model Shoot', '2000', '1', '0', '0', '2000', 'Abhinav Pandey', '2025-11-10 16:28:43'),
(369, 190, '1763037625803', 'Complimentary', 'Video Shoot', NULL, 'Mobile Shoot', '1000', '2', '0', '0', '2000', 'Abhinav Pandey', '2025-11-13 20:27:55'),
(370, 190, '1763037625803', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '300', '0', '800', 'Abhinav Pandey', '2025-11-13 20:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `discount_per` int(255) DEFAULT NULL,
  `discount_amt` int(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `client_id`, `txn_id`, `discount_type`, `discount_per`, `discount_amt`, `created_at`) VALUES
(4, 53, '1757501529575', 'percent', 15, NULL, '2025-09-10 16:50:57'),
(5, 114, '1757507646035', 'percent', 10, NULL, '2025-09-10 18:04:21'),
(7, 101, '1757566281638', 'percent', 15, NULL, '2025-09-11 10:50:05'),
(11, 101, '1757568245969', 'percent', 10, NULL, '2025-09-11 11:19:50'),
(12, 113, '1757568431487', 'percent', 10, NULL, '2025-09-11 11:26:27'),
(16, 101, '1758005557961', 'percent', 10, NULL, '2025-09-16 12:31:13'),
(17, 140, '1758006755721', 'percent', 20, NULL, '2025-09-16 13:01:33'),
(18, 140, '1758016723408', 'percent', 8, NULL, '2025-09-16 15:38:01'),
(19, 142, '1758123158995', 'percent', 3, NULL, '2025-09-18 12:17:01'),
(20, 137, '1757943281186', 'percent', 10, NULL, '2025-09-18 10:56:03'),
(21, 141, '1758173221111', 'percent', 10, NULL, '2025-09-18 11:05:33'),
(22, 101, '1758184120859', 'percent', 10, NULL, '2025-09-18 14:19:44'),
(23, 126, '1757403034860', 'amount', NULL, 500, '2025-09-18 14:51:40'),
(24, 148, '1758191578036', 'percent', 10, NULL, '2025-09-18 16:27:30'),
(25, 149, '1758263722569', 'percent', 10, NULL, '2025-09-19 12:37:42'),
(27, 150, '1758288729216', 'percent', 10, NULL, '2025-09-21 19:22:48'),
(28, 132, '1757592124702', 'percent', 100, NULL, '2025-09-22 13:09:19'),
(29, 132, '1758526915072', 'percent', 100, NULL, '2025-09-22 13:12:10'),
(33, 149, '1758521324859', 'percent', 10, NULL, '2025-09-22 15:09:04'),
(34, 149, '1758521324859', 'percent', 10, NULL, '2025-09-22 15:09:12'),
(35, 26, '1754663135591', 'percent', 10, NULL, '2025-09-22 17:40:51'),
(36, 149, '1758542288360', 'percent', 10, NULL, '2025-09-22 17:48:22'),
(37, 152, '1758545828900', 'percent', 10, NULL, '2025-09-22 18:27:21'),
(39, 26, '1758543865896', 'percent', 12, NULL, '2025-09-22 19:12:34'),
(40, 149, '1758611941655', 'percent', 1023, NULL, '2025-09-23 15:47:39'),
(41, 154, '1758625556091', 'percent', 10, NULL, '2025-09-23 16:39:34'),
(42, 154, '1758700993840', 'percent', 10, NULL, '2025-09-24 14:40:21'),
(56, 155, '1758776574367', 'percent', 12, NULL, '2025-09-25 17:01:43'),
(58, 152, '1758694737497', 'percent', 1, NULL, '2025-09-25 17:07:52'),
(59, 155, '1758807224551', 'percent', 9, NULL, '2025-09-25 19:11:57'),
(63, 154, '1759316470881', 'percent', 15, NULL, '2025-10-01 17:05:30'),
(64, 26, '1759478191640', 'percent', 12, NULL, '2025-10-03 13:28:49'),
(65, 154, '1759558354057', 'percent', 10, NULL, '2025-10-04 11:43:20'),
(66, 154, '1759562564266', 'percent', 10, NULL, '2025-10-04 12:53:33'),
(68, 167, '1759483173961', 'percent', 20, NULL, '2025-10-06 12:15:20'),
(69, 152, '1759822976759', 'percent', 12, 200, '2025-10-13 11:58:06'),
(70, 173, '1759837469691', 'amount', 0, 90, '2025-10-14 16:59:56'),
(71, 177, '1760698694697', 'amount', 15, 1500, '2025-10-17 16:51:51'),
(72, 177, '1760700233504', 'amount', 10, 1500, '2025-10-17 17:05:46'),
(73, 142, '1760709774983', 'percent', 3, NULL, '2025-10-17 19:32:54'),
(74, 182, '1761041628173', 'percent', 10, NULL, '2025-10-21 15:44:30'),
(75, 182, '1761043417198', 'percent', 10, 10, '2025-10-21 16:33:28'),
(76, 167, '1762761192023', 'percent', 20, NULL, '2025-11-10 13:23:12'),
(77, 189, '1762512432083', 'amount', 0, 100, '2025-11-10 16:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `discount_settings`
--

CREATE TABLE `discount_settings` (
  `id` int(11) NOT NULL,
  `discount_per` int(255) NOT NULL,
  `discount_amt` int(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount_settings`
--

INSERT INTO `discount_settings` (`id`, `discount_per`, `discount_amt`, `created_at`) VALUES
(18, 20, 2000, '2025-10-12 16:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `dm_calculator_ads`
--

CREATE TABLE `dm_calculator_ads` (
  `id` int(11) NOT NULL,
  `ads_category` varchar(250) DEFAULT NULL,
  `amt_range_start` varchar(100) DEFAULT NULL,
  `amt_range_end` varchar(100) DEFAULT NULL,
  `percentage` varchar(20) DEFAULT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dm_calculator_ads`
--

INSERT INTO `dm_calculator_ads` (`id`, `ads_category`, `amt_range_start`, `amt_range_end`, `percentage`, `created_at`) VALUES
(4, 'Meta Ad', '1000', '10000', '35', '2025-06-13 15:45:11'),
(5, 'Meta Ad', '10001', '25000', '30', '2025-06-13 15:45:45'),
(6, 'Meta Ad', '25001', '50000', '25', '2025-06-13 15:46:17'),
(7, 'Meta Ad', '50001', 'Above', '20', '2025-06-13 15:50:31'),
(8, 'Google Ad', '1000', '10000', '45', '2025-06-13 15:51:33'),
(9, 'Google Ad', '10001', '25000', '40', '2025-06-13 15:53:09'),
(10, 'Google Ad', '25001', '50000', '35', '2025-06-13 15:53:49'),
(11, 'Google Ad', '50001', 'Above', '30', '2025-06-13 15:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `dm_calculator_client_details`
--

CREATE TABLE `dm_calculator_client_details` (
  `id` int(11) NOT NULL,
  `client_name` varchar(250) DEFAULT NULL,
  `client_organization` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `dg_employee` varchar(250) DEFAULT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dm_calculator_client_details`
--

INSERT INTO `dm_calculator_client_details` (`id`, `client_name`, `client_organization`, `email`, `phone`, `address`, `dg_employee`, `created_at`) VALUES
(17, 'google meta ', 'google ', 'google@gemail.com', '8585858585', 'USA 1', 'Abhinav Pandey', '2025-08-23 18:27:11'),
(20, 'Chirag Gala', 'Gala Developers', 'Galadevelopers.jbp@gmail.com', '9244145552', 'Gala developers 3rd floor near maharashtra school,, Jabalpur, India, Madhya Pradesh', 'Abhinav Pandey', '2025-08-05 15:32:37'),
(25, 'Chirag Gala', 'Gala Developers', 'Galadevelopers.jbp@gmail.com', '9244145552', 'Gala developers 3rd floor near maharashtra school,, Jabalpur, India, Madhya Pradesh', 'Mohammad Mazhar', '2025-08-05 17:43:27'),
(26, 'Akhil Grover', 'Hotel Satya Ashoka', 'hotelsatyaashoka@hotmail.com', '9407561411', 'Pandit Ravishankar Shukla Stadium, Opposite, Wright Town Jabalpur', 'Mohammad Mazhar', '2025-09-22 19:35:44'),
(27, 'test of client ', 'Gala Developers', 'doaguruinfosystems@gmail.com', '7586868566', 'jjjjjjj', 'Dev BD', '2025-08-08 11:11:31'),
(28, 'Dr. Archana Shrivastav', 'Jabalpur Fertility Centre', 'jabalpurivf1@gmail.com', '7770877117', 'Napier Town Home Science College Road, Near Madan Mahal Station, Jabalpur, Madhya Pradesh', 'Mohammad Mazhar', '2025-08-08 16:54:56'),
(29, 'Water purifier', 'Water purifier', 'test@gmail.com', '4567890234', 'Right Town, Jabalpur, MP', 'Abhinav Pandey', '2025-08-11 14:35:47'),
(32, 'Adarsh Agrawal', 'Chaitanya Promoters & Developers', 'chaitanyacity1234@gmail.com', '9111391113', 'Sadar Main Road, Oppsite Sadar Post office, Jabalpur', 'Mohammad Mazhar', '2025-08-12 18:12:48'),
(33, 'Ayushmaan', 'Ayushmaan Multispecialist Hospital', 'ayushmanhospital@gmail.com', '7000090721', 'Ayushman Multispeciality Hospital, Station Road, Khitola, Sihora, Sihora 483225', 'Mohammad Mazhar', '2025-08-15 18:17:26'),
(34, 'Ayushman ', 'Ayushman Multispeciality Hospital Sihora', 'ayushmanhospital@gmail.com', '7000090721', 'Station Road Khitola, Sihora, Madhya Pradesh 483225', 'Vishakha Agrahari', '2025-08-15 19:58:24'),
(35, 'Rajkumar Vishwaraj', 'N/A', 'rahkumargupta2331973@gmail.com', '9981826693', 'Raipur Kachuliyam Rewa, MP', 'Mohammad Mazhar', '2025-08-18 20:14:58'),
(36, 'Akshay Kumar', 'SPA', 'akshay9062kumar@gmail.com', '8305271320', 'Nanak Nagar BhawarKuan', 'Mohammad Mazhar', '2025-08-18 20:14:23'),
(37, 'Keshari Chauhan', 'Chauhan construction interior company', 'madhuinterior81@gmail.com', '8303087030', 'Lucknow Uttar Pradesh', 'Mohammad Mazhar', '2025-08-18 20:41:02'),
(38, 'Neelesh Gupta', 'NA', 'neelesh.reewa@gmail.com', '8770231515', 'Rewa', 'Vishakha Agrahari', '2025-08-19 11:45:22'),
(39, 'Kshitij Joshi', 'Hair colour', 'avdhootfoundation@gmail.com', '7073121482', 'NA', 'Vishakha Agrahari', '2025-08-19 12:05:58'),
(40, 'Anupam Mishra', 'Integrity Classes', 'na@gmail.com', '7610140007', 'Madan Mahal, Near Khandelwal Super Mart, Wright Town, Jabalpur', 'Mohammad Mazhar', '2025-08-19 13:55:18'),
(41, 'Md Wasim', 'Interior Designer', 'wasimkhan999327@gmail.com', '8878999327', 'Madhya Pradesh', 'Mohammad Mazhar', '2025-08-19 17:26:53'),
(42, 'Neelesh Gupta', 'ajnms  kjdsjhd allkieu ajjbdh', 'neelesh.reewa@gmail.com', '8770231515', 'Rewa, Madhya Pradeshjjjjjj hhhhs hhhsa ', 'Mohammad Mazhar', '2025-08-19 18:31:28'),
(43, 'Hasrat Ali ', 'Ayan Enterprises ', 'ayanenterprises@gmail.com', '9892925717', 'Mumbai, Maharashtra ', 'Vishakha Agrahari', '2025-08-21 12:31:51'),
(51, 'SIHORA HOSPITAL', 'SIHORA HOSPITAL MULTI-SPECIALITY', 'sihorahospital@gmail.com', '9424706733', 'Sihora, Madhya Pradesh 483225', 'Vishakha Agrahari', '2025-08-22 14:12:34'),
(58, 'Manoj Sharma', 'Bharamaputra Construction', NULL, '9300656583', 'Patan Bypass, Jabalpur', 'Mohammad Mazhar', '2025-08-23 17:26:21'),
(76, 'kanhaiya', 'Kanhaiya sada banshidhar', '', '7899032865', '', 'Vishakha Agrahari', '2025-08-26 14:38:18'),
(86, 'Bhawna Rajput', 'Podcast ', NULL, '7566582020', 'Jabalpur', 'Abhinav Pandey', '2025-08-26 15:26:43'),
(87, 'Arjit Jain ', 'Constructor', '', '9713434348', '', 'Vishakha Agrahari', '2025-08-27 13:35:32'),
(88, 'test of client ', '', '', '7586868566', '', 'Abhinav Pandey', '2025-08-27 15:18:27'),
(89, 'TestClient', 'Doa', 'deepanshushukla07@gmail.com', '7397952088', '480\nRamnagar', 'Dev BD', '2025-08-29 12:18:07'),
(90, 'Tushar Gupta', 'Pathalogy', NULL, '7999938672', 'Jabalpur', 'Abhinav Pandey', '2025-08-29 12:18:32'),
(93, 'Ayush Agrawal ', 'AGRAWAL MOTORS', '', '8839215849', 'Baldeobagh Jabalpur, Madhya Pradesh 482002', 'Vishakha Agrahari', '2025-08-30 13:18:16'),
(94, 'Test New Client', 'Water purifier', 'deepanshu123.doaguru@gmail.com', '2345678902', 'Jabalpur', 'Abhinav Pandey', '2025-09-01 14:30:06'),
(95, 'basic', NULL, NULL, '7746004774', NULL, 'Lavina Kukreja', '2025-09-09 11:37:05'),
(96, 'Bhavna Rajput', 'Podcast', '', '7566582020', '', 'Lavina Kukreja', '2025-09-01 17:11:49'),
(97, 'Computer Hardware', 'Compact', 'deepanshushukla07@gmail.com', '4567890234', 'Jabalpur', 'Dev BD', '2025-09-02 12:16:30'),
(99, 'Rajeev Kumar ', 'ARR Construction', '', '9685966806', 'Jabalpur ', 'Vishakha Agrahari', '2025-09-03 10:34:03'),
(102, 'Jaideep Mishra ', 'Mekalsuta Eduspace ', '', '8435555515', 'jabalpur ', 'Vishakha Agrahari', '2025-09-03 17:57:28'),
(114, 'google meta ', NULL, NULL, '7586868566', NULL, 'Dev BD', '2025-09-04 17:45:24'),
(119, 'Deepak GADs', NULL, 'deepu@example.com', '4567890232', NULL, 'Abhinav Pandey', '2025-09-04 18:00:51'),
(120, 'Shashank Dubey', 'PR', '', '9754880013', '', 'Lavina Kukreja', '2025-09-08 11:40:35'),
(121, 'Real Estate - Basic', 'Basic Plan', NULL, '774604774', NULL, 'Lavina Kukreja', '2025-09-08 14:43:46'),
(126, 'Durgesh Sir', 'Ayushi Construction', 'infoayushiconstruction@gmail.com', '9575809888', 'Infront of Garha Thana, Tripuri Chowk, Jabalpur', 'Vishakha Agrahari', '2025-10-13 12:38:31'),
(130, 'Ram Patel', 'N/A', '', '8517824590', 'Jabalpur', 'Vishakha Agrahari', '2025-09-10 16:50:32'),
(131, 'Babulal Agrawal ', 'kajaria Tiles', '', '9827282001', 'Jabalpur ', 'Vishakha Agrahari', '2025-09-10 18:06:45'),
(132, 'Rajeev Kumar ', 'ARR Developers', '', '9685966806', 'Dhanvantri Nagar, Ahinsa Chowk, Gadha, Jabalpur', 'Vishakha Agrahari', '2025-09-22 13:06:14'),
(133, 'Milton Test Devops', 'Milton Test Devops', 'milton@devops.com', '9855466322', 'Jabalpur', 'Abhinav Pandey', '2025-09-12 12:41:22'),
(134, 'Dr. Parimal Swamy', 'Diabetes Center Clinic', '', '7389752555', 'Mohit Chamber Near Chanchala Bai College, Wright Town, Jabalpur', 'Abhinav Pandey', '2025-09-13 20:01:26'),
(135, 'Neel Patel', 'The Phonebooth', '', '9993664294', 'Gohalpur, Amkhera Road Jabalpur', 'Abhinav Pandey', '2025-09-15 16:05:29'),
(136, 'Nathan Wade', 'Disrupta', 'nathan@disrupta.com.au', '0416209798', ' Australia', 'Abhinav Pandey', '2025-09-15 16:41:31'),
(138, 'Kaustubh Harshey', 'Daksh Netralaya', 'dakshnetralaya@gmail.com', '7860342564', 'First Floor, Golbazar, Jabalpur', 'Abhinav Pandey', '2025-09-15 19:35:51'),
(139, 'Richa Chhatrashal', 'MRV Venture LTD', 'ohbombaymilton@gmail.com', '9056361211', '1050 Main St E, Milton, ON L9T 9M3, Canada, Ontario', 'Abhinav Pandey', '2025-09-16 15:39:03'),
(142, 'Gulabchand Gupta', 'Sasumaa Saree', '', '9039821381', 'Shop No. 27, SP Market, LordGanj, Jabalpur', 'Vishakha Agrahari', '2025-09-18 12:45:04'),
(143, 'Mr. Pratik Jain', 'Ayushman Children Hospital', '', '8649977777', '', 'Lavina Kukreja', '2025-09-18 12:20:15'),
(148, 'Sumit Gupta', 'MGSchool', 'deepanshu123.doaguru@gmail.com', '5545446464', 'Jabalpur', 'Deepanshu Shukla', '2025-09-18 16:02:16'),
(149, 'Deepak Test', 'Deep furniture', 'deepanshu123.doaguru@gmail.com', '3456781234', 'Jabalpur', 'Abhinav Pandey', '2025-09-19 12:05:33'),
(150, 'Kamlesh Tiwari', 'Ritika Buildcon', NULL, '9301121084', 'Jabalpur', 'Abhinav Pandey', '2025-09-19 19:02:10'),
(152, 'google meta 123', 'Gala Developers', 'umerqureshi786786@gmail.com', '7586868566', 'qw', 'Abhinav Pandey', '2025-10-15 14:20:33'),
(153, 'Reda Hassan', 'Reda Hassan Real Estate', 'redah6522@gmail.com', '1501388617', 'Dubai, United Arab', 'Abhinav Pandey', '2025-09-23 14:28:59'),
(154, 'Nikita Shukla', 'Water purifier', NULL, '5678934568', NULL, 'Abhinav Pandey', '2025-09-23 16:35:55'),
(155, 'jayant', 'doaguru infosystems', 'doaguruinfosystems@gmail.com', '7440992424', 'kanpur', 'Mohammad Mazhar', '2025-09-25 12:11:57'),
(158, 'Rohit Rajak', 'Nidhivan', '', '8770375800', 'Sundarpur Fagua Nala Near Pariyat Dam, Jabalpur', 'Abhinav Pandey', '2025-09-25 15:20:42'),
(161, 'test', 'abc', '', '5555555555', 'aaaaa', 'Abhinav Pandey', '2025-10-01 12:38:28'),
(163, 'DR. Pawan Sthapak', 'Janjyoti, DVJEI', '', '9826950101', '1051, Gole Bazar Ranital, near Kesharwani College, Wright Town Jabalpur', 'Abhinav Pandey', '2025-09-30 18:46:00'),
(164, 'Osanj', 'Osho Amritdham', '', '9617997667', '1883, Medical Road, Devtal, Garha, Jabalpur', 'Abhinav Pandey', '2025-10-01 14:37:57'),
(165, 'Dr Bhavik Dhirawani', 'Jabalpur Hospital & Research Centre', '', '8308300456', 'Russel Chowk, Napier Town, Jabalpur', 'Abhinav Pandey', '2025-10-01 16:59:26'),
(166, 'Deepak Agrawal', 'Naivedyam The Veg Lounge', '', '9827234959', 'Adrashnagar Narmada Road Near Petrol Pump, Jabalpur', 'Abhinav Pandey', '2025-10-01 18:58:00'),
(167, 'Mr. Navi', 'MN Tire Changers', 'info@mntirechangers.com', '2896731929', 'USA', 'Lavina Kukreja', '2025-10-06 11:30:25'),
(168, 'Anand Baharani', 'Baharani Hospital', '', '9179979777', 'Next to Standard Maruti Showroom, Bhavartal Garden Road, Napier Town, Jabalpur', 'Abhinav Pandey', '2025-10-04 14:23:21'),
(169, 'Aman civil engineering', 'Hilton Garden Inn Jabalpur', '', '8269230511', '466, Hitkarini College Rd, Jabalpur', 'Abhinav Pandey', '2025-10-13 16:44:41'),
(170, 'testtoday', 'Doa', 'deepanshu123.doaguru@gmail.com', '3535336636', 'Jabalpur', 'Abhinav Pandey', '2025-10-06 12:06:13'),
(171, 'Deepak Shiv Hare', 'Positive Real Estate Pvt. Ltd.', '', '7693066371', 'Madan Mehal Near 133 Pillar, Jabalpur', 'Jayant Hazari', '2025-10-06 15:13:22'),
(172, 'Dr. Archana Shrivastav', 'Jabalpur Fertility Centre', '', '9826553302', '199-A, Vishva Hindu Parishad Lane, Home Science College Road, Napier Town Jabalpur', 'Abhinav Pandey', '2025-10-06 21:37:13'),
(173, 'Deepak Shiv Hare', 'Biocellix Nature Forever', '', '7693066371', 'Jabalpur', 'Abhinav Pandey', '2025-10-14 19:30:26'),
(174, 'Suryakant Jarariya', 'Ram Academy', '', '9004673896', 'Jaiswal Bhawan, Home Science College Road, Shastri Bridge, Jabalpur', 'Abhinav Pandey', '2025-10-08 12:12:18'),
(175, 'R S Chauhan', 'Royal Senior Secondary School', 'royalschool_jbp@hotmail.com', '9993204840', 'Sanjeevani Nagar', 'Lavina Kukreja', '2025-10-11 15:44:46'),
(176, 'Mr. Rahul Tiwari', 'Jabali Paramedical Institute Of Science', '', '9713685500', 'Gohalpur, Jabalpur', 'Lavina Kukreja', '2025-10-11 16:46:56'),
(177, 'TestNewfeature', '', '', '5454646436', 'pp', 'Abhinav Pandey', '2025-10-21 15:35:46'),
(178, 'ABC', 'Test', NULL, '9999999999', 'Test', 'Abhinav Pandey', '2025-11-11 18:48:03'),
(181, 'Dr. Akshay Saxena', 'Saxena Cosmetic Clinic', 'saxenacosmeticclinic@yahoo.in', '9131589496', 'Khushi Plaza, Near Krishna Hotel, In Front Of Bhawartal Garden, Napier Town, Jabalpur', 'Lavina Kukreja', '2025-11-03 16:55:40'),
(182, 'Test Client', 'Bombay Furniture ', 'test@gmail.com', '4325355355', 'Writetown Jabalpur', 'Abhinav Pandey', '2025-10-21 15:50:02'),
(183, 'Mrs. Heena', 'Little Kingdom School', NULL, '9685707032', 'Amkhera Rd, New Ram Nagar, Jagriti Nagar, Adhartal, Jabalpur', 'Abhinav Pandey', '2025-10-25 19:20:08'),
(184, 'Sanjay Dahiya', 'Hanshika Farm House', '', '9300028127', '2nd Floor Roopali Chamber Medicine Complex, Near Shastri Bridge, Jabalpur', 'Abhinav Pandey', '2025-10-28 14:50:00'),
(185, 'Shomil Dixit', 'Shree Vriddhi Group', 'shomildixit90@gmail.com', '7415400400', 'Jabalpur', 'Abhinav Pandey', '2025-10-30 21:03:19'),
(186, 'Mohd Adil Rehmani', 'Huzaif Dental Clinic', '', '8279332638', 'Sakari Tubewell & Shree Ram Finance ke Pass Pipal Adda Etah-207001 (M.P.)', 'Abhinav Pandey', '2025-11-04 20:23:12'),
(187, 'Deepak Agrawal', 'NAIVEDYAM The Veg Lounge', 'lavinakukreja7@gmail.com', '9827234959', 'Rampur, Jabalpur', 'Lavina Kukreja', '2025-11-05 15:44:20'),
(188, 'Pankaj Sen', 'Spark Build', 'sparkbuildconstruction@gmail.com', '7000220483', 'Ukhri road, Jabalpur', 'Abhinav Pandey', '2025-11-05 19:19:56'),
(189, 'Shivam Vishwakarma', 'Easy Earn Stock Trading Institute', NULL, '8839726315', 'Near DN Jain College, Gole Bazaar, Wright Town , Jabalpur ( M.P ) 482002', 'Abhinav Pandey', '2025-11-10 19:16:35'),
(190, 'Dr. Mukesh Shrivastava', 'Life Medicity Hospital', NULL, '9171404528', 'Aaga Chowk, Jabalpur', 'Lavina Kukreja', '2025-11-11 14:36:24'),
(191, 'Sharad Jain', 'Darbar Restaurant', '', '7828400463', 'Jayanti Complex, Gurunanak School Rd, Marhatal, Jabalpur M.P 482002', 'Abhinav Pandey', '2025-11-10 12:16:33'),
(192, 'Dr. Priyanshu Dixit', 'SUN ORTHO CLINIC', 'priyanshudixit01@gmail.com', '9923933508', 'Shop No. 16, Dixit Pride, Napier Town In Front Of Tyab Ali Petrol Pump,Napier Town, Jabalpur, Madhya Pradesh 482002', 'Lavina Kukreja', '2025-11-10 17:47:25'),
(193, 'A+ Academy', 'A+ Academy', '', '9425157053', 'Jabalpur', 'Abhinav Pandey', '2025-11-10 20:32:30'),
(194, 'Anil Kolhe', 'Ortho Clinic', NULL, '8269939120', 'Jabalpur', 'Abhinav Pandey', '2025-11-11 19:19:38'),
(195, 'Keerti Sharma', 'Little London Kids', '', '8109239728', 'Near Java Electricals Main Road Gol Bajar Wright Town Ganjipura Jabalpur (M.P.) 482002', 'Abhinav Pandey', '2025-11-12 14:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `dm_calculator_employees`
--

CREATE TABLE `dm_calculator_employees` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(250) DEFAULT NULL,
  `employee_phone` varchar(20) DEFAULT NULL,
  `employee_role` varchar(200) DEFAULT NULL,
  `employee_email` varchar(100) DEFAULT NULL,
  `employee_password` varchar(250) DEFAULT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dm_calculator_employees`
--

INSERT INTO `dm_calculator_employees` (`id`, `employee_name`, `employee_phone`, `employee_role`, `employee_email`, `employee_password`, `created_at`) VALUES
(1, 'Abhinav Pandey', '9399044850', 'Owner', 'devdeveloper998@gmail.com', '$2b$10$o2FpLcZUHpfSOjWiP8t0nOHiFyx3ugLL8p9pAYJ/cL07S/AHA3k8.', '2025-06-06 17:26:10'),
(2, 'Dev Ansh Dubey', '9617742311', 'BD', 'devansh@dentalguru.software', '$2b$10$4XW3UqLUcd4vq8x1RlXuSuRRCLV6LNYq00UuPNyqhjsqbBZiGUdEu', '2025-06-07 16:07:04'),
(3, 'Umer Qureshi', '6260550661', 'BD', 'umerqureshidoaguru@gmail.com', '$2b$10$352CZMf7dEuSw1Lg7ReAn.cSxcCOeyX8VpJfmRt.UHSqqrmxSvRyu', '2025-06-27 14:59:59'),
(4, 'shiva12345', NULL, 'BD', 'devansh@dentalguru.software', '$2b$10$vYTDbD0gYklhB7EN3fLVr.Ad2lKUUarmHNZ3/zHVz2j55zJ6.1KYq', '2025-06-29 15:18:17'),
(5, 'Deepanshu Shukla', '7397952088', 'BD', 'deepanshushukla07@gmail.com', '$2b$10$OAKTFFCN13C6Agw/7WSPQusEu2nMwmdJwCYvjjN2Xisyo71GJEmqq', '2025-06-30 14:30:57'),
(6, 'Priyanshu', NULL, 'BD', 'kddubey98@gmail.com', '$2b$10$2DPiUzIZq/KEm2/Yuq/3dOrEuCuDu1TCT5DCxXNOymSsjIs1dXDWu', '2025-07-02 11:13:30'),
(7, 'Rechal Bashani', NULL, 'BD', 'rechalbashani@gmail.com', '$2b$10$68d/z68bKL5TEiB9BWIzPep46N80MWeYX0yKktxfA.JAuweCufeNq', '2025-07-05 12:17:21'),
(8, 'Vishakha Agrahari', NULL, 'BD', 'agraharivishakha285@gmail.com', '$2b$10$0W7Ru5vNzESIdlXZ7PvXnO5YcliWbnBUVvHUbgO053WOFo4UjXk0u', '2025-07-07 11:33:50'),
(9, 'Mohammad Mazhar', NULL, 'BD', 'md.mazharchisti@gmail.com', '$2b$10$4RPNY8hdol9z3/XCZhMmtuB0yDuTzOYbGbSfqDKxA2OMK9FlXLs3q', '2025-07-21 17:39:52'),
(10, 'Lavina Kukreja', NULL, 'BD', 'lavina@doaguru.com', '$2b$10$l51b8uc7CYFStOUAodRn4ewaJZ70c.iexQRymt7YroRTbV6L/jcKK', '2025-08-21 17:58:07'),
(11, 'testBD', NULL, 'BD', 'test123@gmail.com', '$2b$10$.OdwrjN42yhIsMzYhDM96emFToljxhcz5/koHzwYflUmd0p96DIpe', '2025-08-29 17:34:36'),
(12, 'deepanshu', NULL, 'BD', 'deepanshu123.doaguru@gmail.com', '$2b$10$x92KxFFAaMqlXB92aG/uD.VejUsY6AYbSetJfXzDDeukY1pSMz19O', '2025-09-18 11:51:57'),
(13, 'Mahesh Kuldeep', NULL, 'BD', 'mkuldeep313@gmail.com', '$2b$10$ALBr9YGqiQHs/c3lNJ93DOgGFco2Pt.OKxqojrFY7NbroYAayY.mm', '2025-09-19 13:02:24'),
(14, 'Jayant Hazari', NULL, 'BD', 'jayant@doaguru.com', '$2b$10$EK/tUahY3klXR7zp.o3mnOc4zJmNfSZDOyjAkZdgZzxufIMUdge7i', '2025-10-03 13:13:30'),
(15, 'Meghna', NULL, 'BD', 'meghna@doaguru.com', '$2b$10$CaqKrtvvWG8Lh1omBrrFgODWukptJi5H4KOes/elR8el9yq6k86Gm', '2025-10-11 15:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `editing_types`
--

CREATE TABLE `editing_types` (
  `editing_type_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `editing_type_name` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `editing_types`
--

INSERT INTO `editing_types` (`editing_type_id`, `service_id`, `category_id`, `editing_type_name`, `amount`, `created_at`) VALUES
(1, 12, 14, 'Basic Editing', '1000', '2025-06-13 14:40:36'),
(2, 12, 14, 'Standard Editing', '1500', '2025-06-13 14:49:18'),
(4, 12, 14, 'Advanced Editing', '2000', '2025-06-13 14:50:20'),
(5, 12, 15, 'Basic Editing', '1500', '2025-06-13 14:52:03'),
(6, 12, 15, 'Standard Editing', '2500', '2025-06-13 14:52:38'),
(8, 12, 16, 'Basic Editing', '1000', '2025-06-13 14:53:47'),
(9, 12, 16, 'Standard Editing', '1500', '2025-06-13 14:54:04'),
(10, 12, 16, 'Advanced Editing', '2000', '2025-06-13 14:54:31'),
(12, 18, 17, 'Banner/Poster Design', '500', '2025-06-13 14:56:59'),
(13, 18, 17, 'Carousel', '700', '2025-06-13 14:57:15'),
(15, 14, 18, 'Camera Shoot', '2000', '2025-06-13 15:00:49'),
(23, 26, 28, '1 Keyword On-Page & Off-Page Optimization/Keyword Research', '1000', '2025-07-02 13:16:58'),
(24, 27, 29, ' Local SEO and Negative Comment Handling', '1000', '2025-07-02 13:18:24'),
(25, 28, 30, 'Maintenance', '1500', '2025-07-12 13:35:16'),
(31, 14, 33, 'Drone shoot (Non FPV)', '2000', '2025-07-21 19:33:20'),
(35, 12, 15, 'Advance Editing with VFX/Drone shoot/Effects', '7000', '2025-07-23 14:59:25'),
(39, 34, 37, 'Standard Video creation (Shoot, Editing and shorts)', '10000', '2025-07-27 16:13:24'),
(41, 18, 38, 'Thumbnail Creation', '250', '2025-08-05 14:49:24'),
(42, 29, 31, 'Content Posting', '300', '2025-08-05 15:17:49'),
(43, 14, 19, 'Mobile Shoot', '850', '2025-08-05 15:20:11'),
(45, 12, 41, 'Standard Editing', '4000', '2025-08-05 18:01:52'),
(51, 14, 47, 'Model Charges', '3500', '2025-08-25 20:11:15'),
(53, 34, 48, 'Standard Editing 20 min - 30 min', '5000', '2025-08-26 13:44:52'),
(54, 12, 16, 'Basic Editing', '750', '2025-08-26 14:03:29'),
(55, 14, 49, '20 Mins - 40 Mins', '4000', '2025-08-26 15:44:38'),
(68, 37, 62, 'Test Editing Types', '100', '2025-08-29 17:37:29'),
(69, 27, 29, 'GMB Setup', '2000', '2025-08-30 11:45:05'),
(70, 18, 17, 'Changes Post', '200', '2025-08-30 13:15:58'),
(71, 18, 40, 'Festive Changes Post', '200', '2025-08-30 13:22:30'),
(72, 18, 17, 'Post Design', '400', '2025-08-30 13:33:00'),
(73, 30, 32, 'Description, hashtag, caption, message responses and group sharing', '300', '2025-09-03 11:10:00'),
(75, 39, 65, 'Festival Post', '400', '2025-09-09 10:56:38'),
(76, 39, 65, 'Infographic Post', '500', '2025-09-09 12:33:38'),
(77, 39, 66, 'Reel with Basic Editing', '1000', '2025-09-09 12:34:30'),
(78, 39, 66, 'Reel With Standard Editing', '1500', '2025-09-09 12:37:09'),
(79, 39, 66, 'Reel with Premium Editing', '2500', '2025-09-09 12:37:32'),
(80, 39, 67, 'Facebook Page Creation', '500', '2025-09-09 12:40:11'),
(81, 39, 67, 'Instagram Page Creation', '500', '2025-09-09 12:40:19'),
(82, 39, 67, 'Meta Business Suit Creation', '500', '2025-09-09 12:40:36'),
(83, 39, 67, 'Meta Ad Account Creation', '500', '2025-09-09 12:40:59'),
(84, 41, 69, 'Facebook Page Creation', '500', '2025-09-13 20:24:26'),
(85, 41, 69, 'Instagram Page Creation', '500', '2025-09-13 20:24:39'),
(86, 41, 69, 'Meta Business Suit Creation', '500', '2025-09-13 20:24:48'),
(87, 41, 69, 'Meta Ad Account Creation', '500', '2025-09-13 20:25:10'),
(88, 41, 71, 'YouTube Channel Creation', '700', '2025-09-13 20:25:53'),
(89, 41, 71, 'Gmail ID Creation', '500', '2025-09-13 20:26:12'),
(90, 39, 72, 'Mobile Shoot', '850', '2025-09-13 20:48:45'),
(91, 39, 72, 'Camera Shoot', '2000', '2025-09-13 20:49:04'),
(92, 39, 72, 'Model Shoot with Mobile', '3850', '2025-09-13 20:49:56'),
(93, 26, 74, 'Backlink Creation for 1 Website', '300', '2025-09-15 16:39:04'),
(94, 26, 74, '3 Website', '229', '2025-09-15 16:48:41'),
(96, 30, 76, 'Facebook & Instagram Posting', '200', '2025-09-15 20:05:38'),
(97, 39, 77, 'Facebook & Instagram Posting', '200', '2025-09-15 20:06:30'),
(98, 39, 78, 'Meta Ad Charges', '3000', '2025-09-15 20:24:46'),
(99, 39, 65, 'Thumbnail Design', '250', '2025-09-15 20:27:44'),
(100, 42, 80, 'Calling Charges', '100', '2025-09-16 14:59:56'),
(101, 42, 80, 'Lead Visit & Convert Charges', '2000', '2025-09-16 15:03:06'),
(102, 27, 29, 'GMB Update', '1000', '2025-09-16 15:38:04'),
(103, 26, 81, '1 Keyword', '1000', '2025-09-16 15:45:20'),
(104, 14, 47, 'Model Charges', '1000', '2025-09-17 21:11:33'),
(105, 14, 19, 'Mobile Shoot', '1000', '2025-09-25 15:32:30'),
(106, 12, 14, 'Basic Editing', '800', '2025-09-30 18:53:13'),
(108, 39, 77, 'Youtube Posting', '150', '2025-09-30 19:38:00'),
(109, 30, 76, 'Youtube Video Posting', '150', '2025-10-01 12:36:24'),
(110, 43, 82, 'Facebook & Instagram', '9000', '2025-10-01 16:08:12'),
(111, 39, 66, 'Changes Video', '1000', '2025-10-01 16:11:32'),
(113, 12, 84, 'Standard Editing', '1500', '2025-10-01 17:03:37'),
(114, 12, 85, 'Basic Editing', '1000', '2025-10-01 17:04:52'),
(115, 18, 17, 'Carousel Post', '1000', '2025-10-01 17:09:28'),
(116, 18, 17, 'Post Design', '300', '2025-10-01 17:17:35'),
(117, 12, 86, 'Standard Editing', '4000', '2025-10-01 17:23:24'),
(118, 39, 65, 'YouTube Video Thumbnail', '300', '2025-10-01 18:28:57'),
(120, 27, 88, 'GMB Update & Review Handling', '2000', '2025-10-03 15:22:58'),
(121, 12, 85, 'Basic Editing', '600', '2025-10-04 14:32:14'),
(122, 12, 14, 'Premium Editing', '4000', '2025-10-04 14:36:16'),
(123, 12, 16, 'Premium Editing', '3000', '2025-10-04 14:39:27'),
(124, 12, 14, 'Standard Editing', '1200', '2025-10-04 14:54:41'),
(125, 39, 72, 'Mobile Shoot', '1000', '2025-10-04 14:57:17'),
(126, 14, 18, 'Professional Studio Shoot', '5000', '2025-10-04 16:52:05'),
(127, 43, 82, 'Facebook & Instagram Ads', '8350', '2025-10-06 21:44:34'),
(128, 39, 78, 'Google Ads', '8350', '2025-10-06 21:44:49'),
(129, 26, 28, 'Keyword', '1500', '2025-10-06 21:52:48'),
(130, 39, 89, 'Keyword', '1500', '2025-10-06 21:58:58'),
(131, 39, 90, 'Keyword', '1000', '2025-10-06 21:59:15'),
(132, 12, 85, 'Basic Editing', '500', '2025-10-06 22:04:41'),
(133, 39, 65, 'Changes Post', '150', '2025-10-08 12:21:50'),
(134, 39, 78, 'Meta Ads Service Charge', '3600', '2025-10-08 12:22:43'),
(135, 43, 82, 'Facebook & Instagram Ads Service Charge', '1000', '2025-10-14 11:33:35'),
(136, 26, 28, '1 Keyword On-Page & Off-Page Optimization', '1200', '2025-10-15 20:52:38'),
(137, 18, 17, 'Festival Post', '450', '2025-10-22 18:10:34'),
(138, 14, 47, 'Model Charges', '2000', '2025-10-23 19:44:55'),
(140, 45, 92, ' On-site coordination & supervision per visit charge', '1000', '2025-10-24 12:21:00'),
(143, 48, 94, 'School Management Software Yearly', '24000', '2025-10-25 18:52:20'),
(144, 48, 94, '	 School Management Software Lifetime (10 Years) ', '40000', '2025-10-25 18:52:31'),
(145, 39, 77, 'Facebook & Instagram Posting', '300', '2025-10-27 13:40:06'),
(146, 39, 95, 'Customer Relationship Management (CRM) per month', '1000', '2025-10-28 14:59:37'),
(147, 48, 97, 'Customer Relationship Management (CRM) per month', '1000', '2025-10-28 15:00:31'),
(148, 18, 38, 'Youtube Video Thumbnail', '300', '2025-10-29 17:01:18'),
(149, 26, 74, 'Backlink Creation for 1 Website', '229', '2025-10-29 21:34:22'),
(150, 12, 41, 'Basic Editing', '2000', '2025-11-03 16:59:09'),
(151, 14, 33, 'Drone Shoot', '3000', '2025-11-04 19:14:54'),
(152, 14, 47, 'Model Charges', '4000', '2025-11-04 19:15:31'),
(153, 18, 17, 'Page Header & Footer', '1000', '2025-11-04 20:24:09'),
(154, 49, 98, 'CRM software', '60000', '2025-11-07 14:19:33'),
(155, 49, 99, 'CRM Maintenance Monthly', '1000', '2025-11-07 14:21:38'),
(156, 39, 100, 'CRM Maintenance Monthly', '1000', '2025-11-07 14:23:38'),
(157, 27, 29, 'Local SEO Keyword & Negative Comment Handling', '1200', '2025-11-08 11:54:43'),
(158, 26, 28, 'Website SEO Keyword On-Page & Off-Page Optimization', '1500', '2025-11-08 11:55:38'),
(159, 39, 65, 'Festival Post', '500', '2025-11-08 12:02:10'),
(160, 14, 18, 'Professional Camera Shoot', '5000', '2025-11-08 13:27:47'),
(161, 39, 72, 'Model Shoot', '2000', '2025-11-10 13:13:03'),
(162, 39, 72, 'Model Shoot', '1000', '2025-11-10 13:13:12'),
(163, 14, 19, 'Mobile Shoot (10-30 min)', '600', '2025-11-10 16:54:38'),
(164, 12, 14, 'Basic Editing Including Shoot', '1500', '2025-11-13 15:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(255) NOT NULL,
  `bill_type` varchar(255) DEFAULT 'NON_GST',
  `bill_number` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_organization` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dg_employee` varchar(255) DEFAULT NULL,
  `duration_start_date` varchar(255) NOT NULL,
  `duration_end_date` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `client_gst_no` varchar(255) DEFAULT NULL,
  `client_pan_no` varchar(255) DEFAULT NULL,
  `tag_received_amt` varchar(255) NOT NULL DEFAULT 'pending',
  `received_amt` varchar(255) DEFAULT NULL,
  `current_amt` varchar(255) DEFAULT NULL,
  `previous_amt` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `bill_type`, `bill_number`, `txn_id`, `client_id`, `client_name`, `client_organization`, `email`, `phone`, `address`, `dg_employee`, `duration_start_date`, `duration_end_date`, `payment_mode`, `client_gst_no`, `client_pan_no`, `tag_received_amt`, `received_amt`, `current_amt`, `previous_amt`, `created_at`) VALUES
(29, 'NON_GST', '01', '1757937345024', 135, 'Neel Patel', 'The Phonebooth', NULL, '9993664294', 'Gohalpur, Amkhera Road Jabalpur', 'Abhinav Pandey', '2025-09-15', '2025-10-14', 'UPI', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-09-15 19:18:58'),
(34, 'NON_GST', '02', '1757947793267', 139, 'Richa Chhatrashal', 'MRV Venture LTD', 'ohbombaymilton@gmail.com', '9056361211', '1050 Main St E, Milton, ON L9T 9M3, Canada, Ontario', 'Abhinav Pandey', '2025-09-16', '2025-10-15', 'Net Banking', NULL, NULL, 'received', '15600', '0', NULL, '2025-09-16'),
(39, 'NON_GST', '03', '1758111182522', 138, 'Kaustubh Harshey', 'Daksh Netralaya', 'dakshnetralaya@gmail.com', '7860342564', 'First Floor, Golbazar, Jabalpur', 'Abhinav Pandey', '2025-09-16', '2025-10-15', 'UPI', NULL, NULL, 'received', '11482.95', '0', NULL, '2025-09-16'),
(45, 'GST', '01', '1757403034860', 126, 'Durgesh Sir', 'Ayushi Construction', 'infoayushiconstruction@gmail.com', '9575809888', 'Infront of Garha Thana, Tripuri Chowk, Jabalpur', 'Abhinav Pandey', '2025-09-20', '2025-10-19', 'Net Banking', '23ABMFA6307M1ZB', NULL, 'received', '12390', '0', NULL, '2025-10-13'),
(46, 'GST', '02', '1758123158995', 142, 'Gulabchand Gupta', 'Sasumaa Saree', NULL, '9039821381', 'Shop No. 27, SP Market, LordGanj, Jabalpur', 'Abhinav Pandey', '2025-09-18', '2025-10-17', 'Payment Cheque', '23AAQFG7147Q1ZN', NULL, 'received', '16463.12518', '0', NULL, '2025-09-18'),
(60, 'NON_GST', '04', '1758526915072', 132, 'Rajeev Kumar ', 'ARR Developers', NULL, '9685966806', 'Dhanvantri Nagar, Ahinsa Chowk, Gadha, Jabalpur', 'Abhinav Pandey', '2025-09-12', '2025-09-30', 'Net Banking', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-09-22 13:29:35'),
(68, 'NON_GST', '05', '1758543865896', 26, 'Akhil Grover', 'Hotel Satya Ashoka', 'hotelsatyaashoka@hotmail.com', '9407561411', 'Pandit Ravishankar Shukla Stadium, Opposite, Wright Town Jabalpur', 'Abhinav Pandey', '2025-09-16', '2025-10-15', 'UPI', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-09-22 19:35:44'),
(90, 'GST', '03', '1757773895017', 134, 'Dr. Parimal Swamy', 'Diabetes Center Clinic', NULL, '7389752555', 'Mohit Chamber Near Chanchala Bai College, Wright Town, Jabalpur', 'Lavina Kukreja', '2025-09-29', '2025-10-28', 'Payment Cheque', '23AJFPS0320R2Z2', NULL, 'received', '16815', '-1385', NULL, '2025-09-27'),
(92, 'NON_GST', '06', '1759238599973', 163, 'DR. Pawan Sthapak', 'Janjyoti, DVJEI', NULL, '9826950101', '1051, Gole Bazar Ranital, near Kesharwani College, Wright Town Jabalpur', 'Abhinav Pandey', '2025-10-01', '2025-10-31', 'Net Banking', NULL, NULL, 'received', '65603.95', '0', NULL, '2025-09-30'),
(93, 'NON_GST', '07', '1756873760212', 32, 'Adarsh Agrawal', 'Chaitanya Promoters & Developers', 'chaitanyacity1234@gmail.com', '9111391113', 'Sadar Main Road, Oppsite Sadar Post office, Jabalpur', 'Abhinav Pandey', '2025-10-05', '2025-11-04', 'Net Banking', NULL, NULL, 'received', '11000', '0', NULL, '2025-10-04'),
(97, 'NON_GST', '08', '1759317441263', 32, 'Adarsh Agrawal', 'Chaitanya Promoters & Developers', 'chaitanyacity1234@gmail.com', '9111391113', 'Sadar Main Road, Oppsite Sadar Post office, Jabalpur', 'Abhinav Pandey', '2025-10-01', '2025-10-31', 'UPI', NULL, NULL, 'received', '15000', '0', NULL, '2025-10-01'),
(102, 'NON_GST', '09', '1759329129281', 165, 'Dr Bhavik Dhirawani', 'Jabalpur Hospital & Research Centre', NULL, '8308300456', 'Russel Chowk, Napier Town, Jabalpur', 'Abhinav Pandey', '2025-10-01', '2025-10-31', 'Net Banking', NULL, NULL, 'received', '35186.5', '0', NULL, '2025-10-01'),
(104, 'NON_GST', '10', '1759478191640', 26, 'Akhil Grover', 'Hotel Satya Ashoka', 'hotelsatyaashoka@hotmail.com', '9407561411', 'Pandit Ravishankar Shukla Stadium, Opposite, Wright Town Jabalpur', 'Abhinav Pandey', '2025-11-05', '2025-10-19', 'UPI', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-10-06'),
(105, 'NON_GST', '11', '1759570474612', 168, 'Anand Baharani', 'Baharani Hospital', NULL, '9179979777', 'Next to Standard Maruti Showroom, Bhavartal Garden Road, Napier Town, Jabalpur', 'Abhinav Pandey', '2025-09-05', '2025-10-04', 'Net Banking', NULL, NULL, 'received', '24000', '0', NULL, '2025-10-04'),
(106, 'GST', '04', '1759576984354', 169, 'Aman civil engineering', 'Hilton Garden Inn Jabalpur', '', '8269230511', '466, Hitkarini College Rd, Jabalpur', 'Abhinav Pandey', '2025-09-29', '2025-10-03', 'Net Banking', '23AAGCA2245N3ZO', NULL, 'received', '18408', '0', NULL, '2025-10-13'),
(109, 'NON_GST', '12', '1759483173961', 167, 'Mr. Navi', 'MN Tire Changers', 'info@mntirechangers.com', '2896731929', 'USA', 'Lavina Kukreja', '2025-10-06', '2025-11-05', 'Net Banking', NULL, NULL, 'received', '12000', '0', NULL, '2025-10-06'),
(110, 'NON_GST', '13', '1759732450076', 168, 'Anand Baharani', 'Baharani Hospital', NULL, '9179979777', 'Next to Standard Maruti Showroom, Bhavartal Garden Road, Napier Town, Jabalpur', 'Abhinav Pandey', '2025-09-05', '2025-10-04', 'Net Banking', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-10-06 12:04:10'),
(113, 'NON_GST', '14', '1759766835193', 172, 'Dr. Archana Shrivastav', 'Jabalpur Fertility Centre', NULL, '9826553302', '199-A, Vishva Hindu Parishad Lane, Home Science College Road, Napier Town Jabalpur', 'Abhinav Pandey', '2025-10-07', '2025-11-06', 'Net Banking', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-10-07 18:30:17'),
(114, 'NON_GST', '15', '1759905740641', 174, 'Suryakant Jarariya', 'Ram Academy', NULL, '9004673896', 'Jaiswal Bhawan, Home Science College Road, Shastri Bridge, Jabalpur', 'Abhinav Pandey', '2025-10-01', '2025-10-31', 'Net Banking', NULL, NULL, 'received', '15000', '0', NULL, '2025-10-08'),
(115, 'NON_GST', '16', '1760446938641', 139, 'Richa Chhatrashal', 'MRV Venture LTD', 'ohbombaymilton@gmail.com', '9056361211', '1050 Main St E, Milton, ON L9T 9M3, Canada, Ontario', 'Abhinav Pandey', '2025-10-16', '2025-11-15', 'Net Banking', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-10-14'),
(118, 'NON_GST', '18', '1760625379835', 138, 'Kaustubh Harshey', 'Daksh Netralaya', 'dakshnetralaya@gmail.com', '7860342564', 'First Floor, Golbazar, Jabalpur', 'Abhinav Pandey', '2025-10-16', '2025-11-15', 'UPI', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-10-16'),
(149, 'NON_GST', '19', '1761136936467', 158, 'Rohit Rajak', 'Nidhivan', NULL, '8770375800', 'Sundarpur Fagua Nala Near Pariyat Dam, Jabalpur', 'Abhinav Pandey', '2025-10-20', '2025-11-19', 'UPI', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-10-22 18:18:00'),
(164, 'NON_GST', '20', '1761551690055', 142, 'Gulabchand Gupta', 'Sasumaa Saree', NULL, '9039821381', 'Shop No. 27, SP Market, LordGanj, Jabalpur', 'Abhinav Pandey', '2025-10-26', '2025-11-25', 'Cash', NULL, NULL, 'partial', '10000', '3871.8999999999996', NULL, '2025-10-27'),
(165, 'NON_GST', '21', '1759830679237', 171, 'Deepak Shiv Hare', 'Positive Real Estate Pvt. Ltd.', NULL, '7693066371', 'Madan Mehal Near 133 Pillar, Jabalpur', 'Abhinav Pandey', '2025-10-28', '2025-11-27', 'UPI', NULL, NULL, 'partial', '10000', '5065', NULL, '2025-10-28'),
(168, 'NON_GST', '22', '1761644633885', 26, 'Akhil Grover', 'Hotel Satya Ashoka', 'hotelsatyaashoka@hotmail.com', '9407561411', 'Pandit Ravishankar Shukla Stadium, Opposite, Wright Town Jabalpur', 'Abhinav Pandey', '2025-10-05', '2025-10-23', 'Payment Cheque', NULL, NULL, 'pending', NULL, '3950', NULL, '2025-10-28'),
(170, 'NON_GST', '24', '1761753813151', 136, 'Nathan Wade', 'Disrupta', 'nathan@disrupta.com.au', '0416209798', ' Australia', 'Abhinav Pandey', '2025-10-29', '2025-11-28', 'Net Banking', NULL, NULL, 'pending', NULL, NULL, NULL, '2025-10-29 21:43:22'),
(172, 'NON_GST', '25', '1761838405341', 185, 'Shomil Dixit', 'Shree Vriddhi Group', 'shomildixit90@gmail.com', '7415400400', 'Jabalpur', 'Abhinav Pandey', '2025-10-30', '2025-10-29', 'UPI', NULL, NULL, 'received', '1000', '0', NULL, '2025-10-30'),
(174, 'NON_GST', '26', '1762158633255', 165, 'Dr Bhavik Dhirawani', 'Jabalpur Hospital & Research Centre', NULL, '8308300456', 'Russel Chowk, Napier Town, Jabalpur', 'Abhinav Pandey', '2025-11-01', '2025-11-30', 'Net Banking', NULL, NULL, 'pending', NULL, '35186.5', NULL, '2025-11-03'),
(175, 'NON_GST', '27', '1762160193782', 32, 'Adarsh Agrawal', 'Chaitanya Promoters & Developers', 'chaitanyacity1234@gmail.com', '9111391113', 'Sadar Main Road, Oppsite Sadar Post office, Jabalpur', 'Abhinav Pandey', '2025-11-01', '2025-11-30', 'UPI', NULL, NULL, 'pending', NULL, '15000', NULL, '2025-11-03'),
(177, 'NON_GST', '28', '1762171620469', 163, 'DR. Pawan Sthapak', 'Janjyoti, DVJEI', NULL, '9826950101', '1051, Gole Bazar Ranital, near Kesharwani College, Wright Town Jabalpur', 'Abhinav Pandey', '2025-11-01', '2025-11-30', 'Net Banking', NULL, NULL, 'pending', NULL, '65603.95', NULL, '2025-11-03'),
(179, 'NON_GST', '29', '1762180372172', 174, 'Suryakant Jarariya', 'Ram Academy', NULL, '9004673896', 'Jaiswal Bhawan, Home Science College Road, Shastri Bridge, Jabalpur', 'Abhinav Pandey', '2025-11-01', '2025-11-30', 'Net Banking', NULL, NULL, 'pending', NULL, '15000', NULL, '2025-11-03'),
(180, 'NON_GST', '30', '1762168621656', 181, 'Dr. Akshay Saxena', 'Saxena Cosmetic Clinic', 'saxenacosmeticclinic@yahoo.in', '9131589496', 'Khushi Plaza, Near Krishna Hotel, In Front Of Bhawartal Garden, Napier Town, Jabalpur', 'Abhinav Pandey', '2025-11-03', '2025-11-10', 'Cash', NULL, NULL, 'pending', NULL, '3540', NULL, '2025-11-03'),
(184, 'GST', '05', '1762257206910', 126, 'Durgesh Sir', 'Ayushi Construction', 'infoayushiconstruction@gmail.com', '9575809888', 'Infront of Garha Thana, Tripuri Chowk, Jabalpur', 'Abhinav Pandey', '2025-11-04', '2025-12-03', 'Payment Cheque', '23ABMFA6307M1ZB', NULL, 'pending', NULL, NULL, NULL, '2025-11-04 19:00:21'),
(186, 'NON_GST', '31', '1762268053237', 186, 'Mohd Adil Rehmani', 'Huzaif Dental Clinic', NULL, '8279332638', 'Sakari Tubewell & Shree Ram Finance ke Pass Pipal Adda Etah-207001 (M.P.)', 'Abhinav Pandey', '2025-11-03', '2025-11-05', 'UPI', NULL, NULL, 'received', '1000', '0', NULL, '2025-11-04'),
(187, 'NON_GST', '32', '1762323997246', 168, 'Anand Baharani', 'Baharani Hospital', NULL, '9179979777', 'Next to Standard Maruti Showroom, Bhavartal Garden Road, Napier Town, Jabalpur', 'Abhinav Pandey', '2025-10-05', '2025-11-04', 'Net Banking', NULL, NULL, 'pending', NULL, '22000', '0', '2025-11-05'),
(188, 'NON_GST', '33', '1762334137424', 172, 'Dr. Archana Shrivastav', 'Jabalpur Fertility Centre', NULL, '9826553302', '199-A, Vishva Hindu Parishad Lane, Home Science College Road, Napier Town Jabalpur', 'Abhinav Pandey', '2025-11-06', '2025-12-05', 'Net Banking', NULL, NULL, 'pending', NULL, '42850', NULL, '2025-11-05'),
(189, 'NON_GST', '34', '1762761192023', 167, 'Mr. Navi', 'MN Tire Changers', 'info@mntirechangers.com', '2896731929', 'USA', 'Lavina Kukreja', '2025-11-06', '2025-12-05', 'Net Banking', NULL, NULL, 'pending', NULL, '12000', NULL, '2025-11-10'),
(190, 'NON_GST', '35', '1762763730042', 32, 'Adarsh Agrawal', 'Chaitanya Promoters & Developers', 'chaitanyacity1234@gmail.com', '9111391113', 'Sadar Main Road, Oppsite Sadar Post office, Jabalpur', 'Abhinav Pandey', '2025-11-05', '2025-12-04', 'Net Banking', NULL, NULL, 'pending', NULL, '11000', '0', '2025-11-10'),
(191, 'NON_GST', '36', '1762512432083', 189, 'Shivam Vishwakarma', 'Easy Earn Stock Trading Institute', NULL, '8839726315', 'Near DN Jain College, Gole Bazaar, Wright Town , Jabalpur ( M.P ) 482002', 'Lavina Kukreja', '2025-11-10', '2025-11-25', 'UPI', NULL, NULL, 'received', '5575', '0', NULL, '2025-11-10 19:16:35'),
(194, 'NON_GST', '37', '1762759898174', 191, 'Sharad Jain', 'Darbar Restaurant', NULL, '7828400463', 'Jayanti Complex, Gurunanak School Rd, Marhatal, Jabalpur M.P 482002', 'Abhinav Pandey', '2025-11-10', '2025-12-09', 'Cash', NULL, NULL, 'received', '15000', '0', NULL, '2025-11-10'),
(197, 'NON_GST', '39', '1762951102867', 195, 'Keerti Sharma', 'Little London Kids', NULL, '8109239728', 'Near Java Electricals Main Road Gol Bajar Wright Town Ganjipura Jabalpur (M.P.) 482002', 'Abhinav Pandey', '2025-10-03', '2025-11-28', 'UPI', NULL, NULL, 'partial', '17000', '45000', NULL, '2025-11-12'),
(199, 'GST', '06', '1763037625803', 190, 'Dr. Mukesh Shrivastava', 'Life Medicity Hospital', NULL, '9171404528', 'Aaga Chowk, Jabalpur', 'Abhinav Pandey', '2025-11-10', '2025-12-09', 'Net Banking', '23AAGCD0903Q1ZO', NULL, 'pending', NULL, NULL, NULL, '2025-11-13 20:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_client_notes`
--

CREATE TABLE `invoice_client_notes` (
  `id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `note_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_client_notes`
--

INSERT INTO `invoice_client_notes` (`id`, `client_id`, `txn_id`, `note_name`, `created_at`) VALUES
(323, 56, '1757682586412', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad12.', '2025-09-14 16:44:16'),
(327, 56, '1757682593828', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad12.', '2025-09-15 13:30:46'),
(328, 56, '1757682593828', 'this is ', '2025-09-15 13:30:46'),
(329, 55, '1757857389940', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad12.', '2025-09-15 14:07:46'),
(330, 135, '1757937345024', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-09-15 19:31:06'),
(331, 135, '1757937345024', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-15 19:31:06'),
(332, 135, '1757937345024', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-09-15 19:31:06'),
(333, 135, '1757937345024', 'The above amount does not include GST.', '2025-09-15 19:31:06'),
(334, 139, '1757947793267', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-09-15 20:37:55'),
(335, 139, '1757947793267', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-09-15 20:37:55'),
(336, 139, '1757947793267', 'The above amount does not include GST.', '2025-09-15 20:37:55'),
(338, 140, '1758006755721', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-16 12:52:14'),
(339, 140, '1758006755721', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-09-16 12:52:14'),
(341, 126, '1757403034860', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-18 14:56:02'),
(342, 126, '1757403034860', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-09-18 14:56:02'),
(343, 126, '1757403034860', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-09-18 14:56:02'),
(344, 142, '1758123158995', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-09-18 16:36:10'),
(345, 142, '1758123158995', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-09-18 16:36:10'),
(346, 56, '1758201607180', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad12.', '2025-09-18 18:50:07'),
(347, 149, '1758526466908', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-22 13:10:49'),
(348, 26, '1758543865896', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-09-22 19:20:44'),
(349, 26, '1758543865896', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-09-22 19:20:44'),
(350, 26, '1758543865896', 'The above amount includes 18% GST.', '2025-09-22 19:22:29'),
(351, 154, '1758625556091', 'The above amount includes 18% GST.', '2025-09-23 16:39:22'),
(352, 154, '1758700993840', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-24 15:04:10'),
(353, 154, '1758700993840', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-09-24 15:04:10'),
(354, 163, '1759238599973', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-09-30 19:44:30'),
(355, 163, '1759238599973', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-09-30 19:44:30'),
(356, 163, '1759238599973', 'The above amount does not include GST.', '2025-09-30 19:44:30'),
(360, 32, '1759317441263', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-01 16:54:20'),
(361, 32, '1759317441263', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 14:25:52'),
(362, 32, '1759317441263', 'The above amount does not include GST.', '2025-10-01 16:54:20'),
(363, 154, '1759316470881', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-01 17:04:27'),
(364, 154, '1759316470881', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-01 17:03:46'),
(365, 32, '1759322943808', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-01 18:19:03'),
(366, 32, '1759322943808', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-01 18:19:03'),
(367, 32, '1759322943808', 'The above amount does not include GST.', '2025-10-01 18:19:03'),
(368, 165, '1759329129281', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-01 20:27:03'),
(369, 165, '1759329129281', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-01 20:27:03'),
(370, 165, '1759329129281', 'The above amount does not include GST.', '2025-10-01 20:27:03'),
(374, 169, '1759576984354', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-04 17:01:29'),
(375, 169, '1759576984354', 'The above amount does not include GST.', '2025-10-04 17:01:29'),
(376, 152, '1758875804425', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-04 18:57:15'),
(377, 152, '1758875804425', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-04 18:24:03'),
(384, 26, '1759478191640', 'The above amount does not include GST.', '2025-10-04 20:01:18'),
(386, 26, '1759478191640', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-04 20:02:12'),
(387, 169, '1759576984354', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-04 21:47:28'),
(388, 167, '1759483173961', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-06 12:58:15'),
(389, 167, '1759483173961', 'Kindly note that service charges are non-refundable under any circumstances; only the service will be delivered against the refundable amount.', '2025-10-06 13:08:27'),
(390, 167, '1759483173961', 'The above amount does not include GST.', '2025-10-06 12:58:15'),
(391, 139, '1760446938641', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-14 18:32:18'),
(392, 139, '1760446938641', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-14 18:32:18'),
(393, 139, '1760446938641', 'The above amount does not include GST.', '2025-10-14 18:32:18'),
(394, 163, '1760541598872', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-15 20:49:58'),
(395, 163, '1760541598872', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-15 20:49:58'),
(396, 163, '1760541598872', 'The above amount does not include GST.', '2025-10-15 20:49:58'),
(397, 154, '1760694703806', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-17 15:25:59'),
(398, 154, '1760694703806', 'The above amount includes 18% GST.', '2025-10-17 15:25:59'),
(399, 154, '1760695218099', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-17 15:30:18'),
(400, 154, '1760695218099', 'The above amount includes 18% GST.', '2025-10-17 15:30:18'),
(401, 154, '1760695478211', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-17 15:34:38'),
(402, 154, '1760695478211', 'The above amount includes 18% GST.', '2025-10-17 15:34:38'),
(403, 142, '1760709774983', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-17 19:32:54'),
(404, 142, '1760709774983', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-17 19:32:54'),
(405, 154, '1760805007676', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-18 22:00:07'),
(406, 154, '1760805007676', 'The above amount includes 18% GST.', '2025-10-18 22:00:07'),
(407, 169, '1761040985888', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-21 15:33:05'),
(408, 169, '1761040985888', 'The above amount does not include GST.', '2025-10-21 15:33:05'),
(409, 169, '1761040985888', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-21 15:33:05'),
(410, 158, '1761136936467', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-22 18:44:31'),
(412, 158, '1761136936467', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-22 18:44:31'),
(413, 158, '1761136936467', 'The above amount does not include GST.', '2025-10-22 18:44:31'),
(414, 142, '1761224847040', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-25 18:23:54'),
(415, 142, '1761224847040', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-24 12:56:12'),
(426, 142, '1761551690055', 'Please note that this invoice includes only the service charges. The ad budget is not included and must be paid by the client directly to Meta.', '2025-10-27 15:27:52'),
(427, 142, '1761551690055', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-27 15:27:52'),
(428, 142, '1761551690055', 'The above amount does not include GST.', '2025-10-27 15:27:52'),
(429, 171, '1759830679237', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-28 14:36:45'),
(430, 171, '1759830679237', 'Please note that this invoice includes only the service charges. The ad budget is not included and must be paid by the client directly to Meta.', '2025-10-28 14:36:45'),
(431, 171, '1759830679237', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-28 14:36:45'),
(432, 171, '1759830679237', 'The above amount does not include GST.', '2025-10-28 14:36:45'),
(433, 26, '1761644633885', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-28 15:16:47'),
(434, 26, '1761644633885', 'The above amount does not include GST.', '2025-10-28 15:16:47'),
(435, 136, '1761753813151', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-10-29 21:43:46'),
(436, 136, '1761753813151', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-29 21:43:46'),
(437, 185, '1761838405341', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-10-30 21:06:17'),
(438, 185, '1761838405341', 'Any additional modifications, enhancements, or new feature requests in the software will incur extra charges, which shall be paid by the client.', '2025-10-30 21:06:17'),
(439, 185, '1761838405341', 'The above amount does not include GST.', '2025-10-30 21:06:17'),
(440, 165, '1762158633255', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-03 14:00:33'),
(441, 165, '1762158633255', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 14:13:39'),
(442, 165, '1762158633255', 'The above amount does not include GST.', '2025-11-03 14:00:33'),
(443, 32, '1762160193782', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-03 14:26:33'),
(444, 32, '1762160193782', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 14:26:33'),
(445, 32, '1762160193782', 'The above amount does not include GST.', '2025-11-03 14:26:33'),
(446, 134, '1762169270249', 'Please note that this invoice includes only the service charges. The ad budget is not included and must be paid by the client directly to Meta.', '2025-11-03 17:20:00'),
(447, 134, '1762169270249', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-03 17:20:00'),
(448, 134, '1762169270249', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 17:20:00'),
(449, 163, '1762171620469', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-03 17:37:00'),
(450, 163, '1762171620469', 'Kindly note that service charges are non-refundable under any circumstances.', '2025-11-03 17:37:00'),
(451, 163, '1762171620469', 'The above amount does not include GST.', '2025-11-03 17:37:00'),
(452, 181, '1762168621656', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 18:49:39'),
(454, 181, '1762168621656', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-03 18:49:39'),
(455, 181, '1762168621656', 'The above amount does not include GST.', '2025-11-03 18:49:39'),
(456, 174, '1762180372172', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-03 20:03:38'),
(457, 174, '1762180372172', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 20:03:38'),
(458, 174, '1762180372172', 'The above amount does not include GST.', '2025-11-03 20:03:38'),
(459, 174, '1759905740641', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-03 20:15:38'),
(460, 174, '1759905740641', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 20:15:38'),
(461, 174, '1759905740641', 'The above amount does not include GST.', '2025-11-03 20:15:38'),
(462, 168, '1759570474612', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-03 20:19:05'),
(463, 168, '1759570474612', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 20:19:05'),
(464, 168, '1759570474612', 'The above amount does not include GST.', '2025-11-03 20:19:05'),
(465, 32, '1756873760212', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-03 20:21:38'),
(466, 32, '1756873760212', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 20:21:38'),
(467, 32, '1756873760212', 'The above amount does not include GST.', '2025-11-03 20:21:38'),
(468, 181, '1762168621656', 'The ad will run for a total of seven days with this specified budget.', '2025-11-04 13:58:50'),
(469, 126, '1762257206910', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-04 17:26:36'),
(470, 126, '1762257206910', 'Please note that this invoice includes only the service charges. The ad budget is not included and must be paid by the client directly to Meta.', '2025-11-04 17:26:36'),
(471, 126, '1762257206910', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-04 17:26:36'),
(472, 168, '1762323997246', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-05 11:56:37'),
(473, 168, '1762323997246', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-05 11:56:37'),
(474, 168, '1762323997246', 'The above amount does not include GST.', '2025-11-05 11:56:37'),
(476, 172, '1759766835193', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-05 14:40:30'),
(477, 172, '1759766835193', 'Please note that this invoice includes only the service charges. The ad budget is not included and must be paid by the client directly to Meta.', '2025-11-05 14:40:30'),
(478, 172, '1759766835193', 'The above amount does not include GST.', '2025-11-05 14:40:30'),
(479, 172, '1762334137424', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-05 14:45:37'),
(480, 172, '1762334137424', 'Please note that this invoice includes only the service charges. The ad budget is not included and must be paid by the client directly to Meta.', '2025-11-05 14:45:37'),
(481, 172, '1762334137424', 'The above amount does not include GST.', '2025-11-05 14:45:37'),
(482, 167, '1762761192023', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-10 13:23:12'),
(483, 167, '1762761192023', 'Kindly note that service charges are non-refundable under any circumstances; only the service will be delivered against the refundable amount.', '2025-11-10 13:23:12'),
(484, 167, '1762761192023', 'The above amount does not include GST.', '2025-11-10 13:23:12'),
(485, 32, '1762763730042', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-10 14:05:30'),
(486, 32, '1762763730042', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 14:05:30'),
(487, 32, '1762763730042', 'The above amount does not include GST.', '2025-11-10 14:05:30'),
(488, 189, '1762512432083', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-10 16:12:30'),
(489, 189, '1762512432083', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-10 16:12:30'),
(490, 189, '1762512432083', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 16:12:30'),
(491, 189, '1762512432083', 'The above amount does not include GST.', '2025-11-10 16:12:30'),
(492, 189, '1762512432083', 'Please note that this invoice includes only the service charges. The ad budget is not included and must be paid by the client directly to Meta.', '2025-11-10 16:12:30'),
(493, 191, '1762759898174', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-10 16:27:33'),
(494, 191, '1762759898174', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 16:27:33'),
(495, 191, '1762759898174', 'The above amount does not include GST.', '2025-11-10 16:27:33'),
(496, 190, '1762596181195', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-11 14:32:49'),
(497, 190, '1762596181195', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-11 14:32:49'),
(498, 190, '1762596181195', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-11 14:32:49'),
(499, 195, '1762951102867', 'We have developed two websites along with their respective admin panels as per the agreed specifications.', '2025-11-12 19:03:28'),
(500, 195, '1762951102867', 'An annual maintenance charge of 30% of the project cost will be applicable.', '2025-11-12 19:04:36'),
(501, 195, '1762951102867', 'If any changes or modifications are made to the website code by any third-party developer after delivery, we shall not be held responsible for any issues, errors, or malfunctions arising thereafter.', '2025-11-12 19:04:52'),
(502, 195, '1762951102867', 'Any modifications, additions, or updates beyond the agreed project scope and quotation, whether requested before or after delivery, will be subject to additional charges.', '2025-11-12 19:05:21'),
(503, 195, '1762951102867', 'The above amount does not include GST.', '2025-11-12 18:32:50'),
(505, 195, '1762951102867', 'Complimentary technical support will be provided for 30 days following the project delivery. After this period, the annual maintenance plan will commence as per mutually agreed terms.', '2025-11-12 19:05:38'),
(506, 190, '1763037625803', 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-11-13 20:28:29'),
(507, 190, '1763037625803', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-13 20:28:29'),
(508, 190, '1763037625803', 'Please note that this invoice includes only the service charges. The ad budget is not included and must be paid by the client directly to Meta.', '2025-11-13 20:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_graphic`
--

CREATE TABLE `invoice_graphic` (
  `id` int(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `editing_type_id` int(255) DEFAULT NULL,
  `editing_type_name` varchar(255) NOT NULL,
  `editing_type_amount` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `include_content_posting` varchar(255) NOT NULL,
  `include_thumbnail_creation` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `employee` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_graphic`
--

INSERT INTO `invoice_graphic` (`id`, `txn_id`, `client_id`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `plan_name`, `employee`, `created_at`) VALUES
(87, '1757652499781', 55, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Basic', 'Abhinav Pandey', '2025-09-14 18:55:36'),
(88, '1757652499781', 55, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Basic', 'Abhinav Pandey', '2025-09-14 18:55:36'),
(89, '1757652499781', 55, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Basic', 'Abhinav Pandey', '2025-09-14 18:55:36'),
(91, '1757857389940', 55, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', 'Standard', 'Abhinav Pandey', '2025-09-15 14:04:49'),
(92, '1757857389940', 55, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Standard', 'Abhinav Pandey', '2025-09-15 14:04:49'),
(93, '1757857389940', 55, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Standard', 'Abhinav Pandey', '2025-09-15 14:04:49'),
(94, '1757857389940', 55, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '1', '300', '0', '800', 'Customise', 'Abhinav Pandey', '2025-09-15 14:07:40'),
(137, '1757937345024', 135, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '10', '300', '0', '8000', 'Customise	', 'Abhinav Pandey', '2025-09-15 19:18:58'),
(138, '1757937345024', 135, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '5', '300', '0', '6500', 'Customise	', 'Abhinav Pandey', '2025-09-15 19:18:58'),
(142, '1758005557961', 101, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Test', 'Abhinav Pandey', '2025-09-16 12:29:35'),
(143, '1758005557961', 101, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Test', 'Abhinav Pandey', '2025-09-16 12:26:26'),
(144, '1758005557961', 101, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Customise', 'Abhinav Pandey', '2025-09-16 12:29:00'),
(151, '1757947793267', 139, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '4', '0', '0', '2000', 'Customise	', 'Abhinav Pandey', '2025-09-16 15:39:30'),
(152, '1757947793267', 139, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '12', '0', '0', '12000', 'Customise	', 'Abhinav Pandey', '2025-09-16 15:39:30'),
(153, '1757947793267', 139, 'Social Media Optimization', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Customise	', 'Abhinav Pandey', '2025-09-16 15:39:30'),
(165, '1758111182522', 138, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '8', '0', '0', '4000', 'Customise	', 'Abhinav Pandey', '2025-09-17 17:53:35'),
(166, '1758111182522', 138, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '4', '0', '0', '4000', 'Customise	', 'Abhinav Pandey', '2025-09-17 17:53:35'),
(167, '1758111182522', 138, 'Social Media Optimization', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '10', '0', '0', '2000', 'Customise	', 'Abhinav Pandey', '2025-09-17 17:53:35'),
(193, '1758182285382', 143, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Customise', 'Lavina Kukreja', '2025-09-18 13:29:15'),
(194, '1758182285382', 143, 'GMB', 'LOCAL SEO', NULL, 'GMB Update', '1000', '1', '0', '0', '1000', 'Customise', 'Lavina Kukreja', '2025-09-18 13:29:35'),
(195, '1758182285382', 143, 'GMB', 'LOCAL SEO', NULL, '1 Keyword', '1200', '5', '0', '0', '6000', 'Customise', 'Lavina Kukreja', '2025-10-06 18:08:51'),
(196, '1758182285382', 143, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '2', '300', '250', '4100', 'Customise', 'Lavina Kukreja', '2025-09-18 13:31:38'),
(197, '1758182285382', 143, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '4', '300', '250', '6200', 'Customise', 'Lavina Kukreja', '2025-09-18 13:32:40'),
(198, '1758182285382', 143, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '6', '300', '0', '4800', 'Customise', 'Lavina Kukreja', '2025-10-06 18:10:17'),
(199, '1758182285382', 143, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Customise', 'Lavina Kukreja', '2025-09-18 13:38:01'),
(202, '1757403034860', 126, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Basic', 'Abhinav Pandey', '2025-09-18 14:55:13'),
(203, '1757403034860', 126, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Basic', 'Abhinav Pandey', '2025-09-18 14:55:13'),
(204, '1757403034860', 126, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Basic', 'Abhinav Pandey', '2025-09-18 14:55:13'),
(208, '1758123158995', 142, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Customise	', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(209, '1758123158995', 142, 'Video Shoot', 'Model Shoot', NULL, 'Model Based Shoot with Mobile', '1000', '2', '0', '0', '2000', 'Customise	', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(210, '1758123158995', 142, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '0', '7200', 'Customise	', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(211, '1758123158995', 142, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '400', '5', '0', '0', '2000', 'Customise	', 'Abhinav Pandey', '2025-09-18 16:30:25'),
(222, '1757570960796', 101, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Test', 'Abhinav Pandey', '2025-09-18 17:59:33'),
(223, '1757570960796', 101, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Test', 'Abhinav Pandey', '2025-09-18 17:59:33'),
(224, '1756885016256', 92, 'Video Services', 'Reels', NULL, 'Advanced Editing', '4000', '4', '0', '0', '16000', 'Test', 'Abhinav Pandey', '2025-09-18 18:47:51'),
(225, '1756885016256', 92, 'Social Media Posting', 'Posting', NULL, 'Content Posting', '300', '2', '0', '0', '600', 'Test', 'Abhinav Pandey', '2025-09-18 18:47:51'),
(226, '1756885016256', 92, 'SEO', 'Intended for Lead Generation', NULL, '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', '1200', '5', '0', '0', '6000', 'Test', 'Abhinav Pandey', '2025-09-18 18:47:51'),
(227, '1756885016256', 92, 'GMB', 'LOCAL SEO', NULL, 'Local SEO and negative comment handling', '1000', '1', '0', '0', '1000', 'Test', 'Abhinav Pandey', '2025-09-18 18:47:51'),
(255, '1758526915072', 132, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '0', '1800', 'Customise', 'Abhinav Pandey', '2025-09-22 13:29:35'),
(256, '1758526915072', 132, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Customise', 'Abhinav Pandey', '2025-09-22 13:29:35'),
(260, '1758528273286', 151, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Basic', 'Abhinav Pandey', '2025-09-22 13:34:46'),
(261, '1758528273286', 151, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Basic', 'Abhinav Pandey', '2025-09-22 13:34:46'),
(262, '1758528273286', 151, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Basic', 'Abhinav Pandey', '2025-09-22 13:34:46'),
(280, '1758543865896', 26, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Customise', 'Abhinav Pandey', '2025-09-22 19:18:29'),
(281, '1758543865896', 26, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '3', '300', '250', '4650', 'Customise', 'Abhinav Pandey', '2025-09-22 19:18:29'),
(282, '1758543865896', 26, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Customise', 'Abhinav Pandey', '2025-09-22 19:18:29'),
(283, '1758543865896', 26, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '3', '300', '250', '9150', 'Customise', 'Abhinav Pandey', '2025-09-22 19:18:29'),
(313, '1758627048038', 101, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '0', '2800', 'Customise', 'Abhinav Pandey', '2025-09-23 17:04:25'),
(314, '1758627048038', 101, 'Graphics Design', 'Static Graphics', NULL, 'Carousel', '700', '1', '300', '0', '1000', 'Customise', 'Abhinav Pandey', '2025-09-23 17:04:25'),
(315, '1758627852049', 156, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Test', 'Abhinav Pandey', '2025-09-23 17:15:15'),
(316, '1758627852049', 156, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', 'Test', 'Abhinav Pandey', '2025-09-23 17:15:15'),
(358, '1758729352651', 157, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Basic', 'Abhinav Pandey', '2025-09-24 21:26:20'),
(359, '1758729352651', 157, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Basic', 'Abhinav Pandey', '2025-09-24 21:26:20'),
(360, '1758729352651', 157, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Basic', 'Abhinav Pandey', '2025-09-24 21:26:20'),
(389, '1757773895017', 134, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Basic', 'Lavina Kukreja', '2025-09-27 16:34:20'),
(390, '1757773895017', 134, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Basic', 'Lavina Kukreja', '2025-09-27 16:34:20'),
(391, '1757773895017', 134, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Basic', 'Lavina Kukreja', '2025-09-27 16:34:20'),
(392, '1757773895017', 134, 'Social Media Creation', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Customise	', 'Lavina Kukreja', '2025-09-27 16:34:20'),
(393, '1757773895017', 134, 'Social Media Creation', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Customise	', 'Lavina Kukreja', '2025-09-27 16:34:20'),
(394, '1757773895017', 134, 'Social Media Creation', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Customise	', 'Lavina Kukreja', '2025-09-27 16:34:20'),
(395, '1757773895017', 134, 'Social Media Creation', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '700', '1', '0', '0', '700', 'Customise	', 'Lavina Kukreja', '2025-09-27 16:34:20'),
(396, '1757773895017', 134, 'Social Media Creation', 'Google Account Setup', NULL, 'YouTube Channel Creation', '700', '1', '0', '0', '700', 'Customise	', 'Lavina Kukreja', '2025-09-27 16:34:20'),
(401, '1759238599973', 163, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '24', '0', '0', '12000', 'Customise', 'Abhinav Pandey', '2025-09-30 19:34:28'),
(403, '1759238599973', 163, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '15', '0', '0', '15000', 'Customise', 'Abhinav Pandey', '2025-09-30 19:34:28'),
(405, '1756873760212', 32, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Basic', 'Abhinav Pandey', '2025-10-01 15:57:57'),
(406, '1756873760212', 32, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Basic', 'Abhinav Pandey', '2025-10-01 15:57:57'),
(407, '1756873760212', 32, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Basic', 'Abhinav Pandey', '2025-10-01 15:57:57'),
(408, '1756873760212', 32, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Basic', 'Abhinav Pandey', '2025-10-01 15:57:57'),
(415, '1759317441263', 32, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '0', '0', '6000', 'Customise', 'Abhinav Pandey', '2025-10-01 16:51:36'),
(416, '1759317441263', 32, 'Social Media Marketing', 'Meta ADS', NULL, 'Facebook & Instagram', '9000', '1', '0', '0', '9000', 'Customise', 'Abhinav Pandey', '2025-10-01 16:51:36'),
(433, '1759329129281', 165, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Customise', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(434, '1759329129281', 165, 'Graphics Design', 'Static Graphics', NULL, 'Carousel', '700', '3', '300', '0', '3000', 'Customise', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(435, '1759329129281', 165, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '0', '10800', 'Customise', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(436, '1759329129281', 165, 'Video Services', 'Testimonial Video', NULL, 'Basic Editing', '1000', '3', '300', '0', '3900', 'Customise', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(437, '1759329129281', 165, 'Video Services', 'Interview Video', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Customise', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(438, '1759329129281', 165, 'Video Services', 'Youtube Podcast Video', NULL, 'Standard Editing', '4000', '1', '0', '0', '4000', 'Customise', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(439, '1759329129281', 165, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-10-01 20:23:51'),
(442, '1759478191640', 26, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Customise', 'Abhinav Pandey', '2025-10-03 13:26:31'),
(443, '1759478191640', 26, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '3', '300', '250', '4650', 'Customise', 'Abhinav Pandey', '2025-10-03 13:26:31'),
(444, '1759478191640', 26, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '2', '0', '0', '1700', 'Customise', 'Abhinav Pandey', '2025-10-03 13:26:31'),
(445, '1759478191640', 26, 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '3', '300', '250', '9150', 'Customise', 'Abhinav Pandey', '2025-10-03 13:26:31'),
(446, '1759570474612', 168, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '0', '0', '2000', 'Customise', 'Abhinav Pandey', '2025-10-04 15:16:18'),
(447, '1759570474612', 168, 'Video Services', 'Reels', NULL, 'Standard Editing', '1200', '6', '0', '250', '8700', 'Customise', 'Abhinav Pandey', '2025-10-04 15:16:18'),
(448, '1759570474612', 168, 'Video Services', 'Testimonial Video', NULL, 'Basic Editing', '600', '2', '0', '250', '1700', 'Customise', 'Abhinav Pandey', '2025-10-04 15:16:18'),
(449, '1759570474612', 168, 'Video Services', 'Shorts', NULL, 'Advanced Editing', '2000', '1', '0', '0', '2000', 'Customise', 'Abhinav Pandey', '2025-10-04 15:16:18'),
(450, '1759570474612', 168, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-10-04 15:16:18'),
(451, '1759570474612', 168, 'Social Media Optimization', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Customise', 'Abhinav Pandey', '2025-10-04 15:16:18'),
(452, '1759576984354', 169, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '300', '22', '0', '0', '6600', 'Customise', 'Abhinav Pandey', '2025-10-04 16:56:53'),
(453, '1759576984354', 169, 'Video Services', 'Reels', NULL, 'Advanced Editing', '2000', '2', '0', '0', '4000', 'Customise', 'Abhinav Pandey', '2025-10-04 16:56:53'),
(454, '1759576984354', 169, 'Video Shoot', 'Camera Shoot', NULL, 'Professional Studio Shoot', '5000', '1', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-10-04 16:56:53'),
(460, '1759483173961', 167, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '10', '0', '0', '15000', 'Customise', 'Lavina Kukreja', '2025-10-06 11:46:18'),
(461, '1759732450076', 168, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '0', '0', '2000', 'Customise', 'Abhinav Pandey', '2025-10-06 12:04:10'),
(462, '1759732450076', 168, 'Video Services', 'Reels', NULL, 'Standard Editing', '1200', '6', '0', '250', '8700', 'Customise', 'Abhinav Pandey', '2025-10-06 12:04:10'),
(463, '1759732450076', 168, 'Video Services', 'Testimonial Video', NULL, 'Basic Editing', '600', '2', '0', '250', '1700', 'Customise', 'Abhinav Pandey', '2025-10-06 12:04:10'),
(464, '1759732450076', 168, 'Video Services', 'Shorts', NULL, 'Advanced Editing', '2000', '1', '0', '0', '2000', 'Customise', 'Abhinav Pandey', '2025-10-06 12:04:10'),
(465, '1759732450076', 168, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-10-06 12:04:10'),
(466, '1759732450076', 168, 'Social Media Optimization', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Customise', 'Abhinav Pandey', '2025-10-06 12:04:10'),
(473, '1759766835193', 172, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Customise', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(474, '1759766835193', 172, 'Video Services', 'Reels', NULL, 'Standard Editing', '1200', '4', '300', '250', '7000', 'Customise', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(475, '1759766835193', 172, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(476, '1759766835193', 172, 'Social Media Marketing', 'Meta ADS', NULL, 'Facebook & Instagram Ads', '8350', '1', '0', '0', '8350', 'Customise', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(477, '1759766835193', 172, 'SEO', 'Intended for Lead Generation', NULL, 'Per Keyword', '1500', '11', '0', '0', '16500', 'Customise', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(478, '1759766835193', 172, 'Video Services', 'Shorts', NULL, 'Standard Editing', '1500', '1', '0', '0', '1500', 'Customise', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(479, '1759766835193', 172, 'Video Services', 'Testimonial Video', NULL, 'Basic Editing', '500', '2', '300', '250', '2100', 'Customise', 'Abhinav Pandey', '2025-10-07 18:30:17'),
(480, '1759905740641', 174, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '10', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-10-08 12:28:23'),
(481, '1759905740641', 174, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-10-08 12:28:23'),
(482, '1759905740641', 174, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-10-08 12:28:23'),
(484, '1759570474612', 168, 'Social Media Marketing', 'Meta ADS', 135, 'Facebook & Instagram Ads Service Charge', '1000', '1', '0', '0', '1000', 'Customise', 'Abhinav Pandey', '2025-10-14 11:47:49'),
(485, '1760446938641', 139, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '4', '0', '0', '2000', 'Customise	', 'Abhinav Pandey', '2025-10-14 18:32:18'),
(486, '1760446938641', 139, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '12', '0', '0', '12000', 'Customise	', 'Abhinav Pandey', '2025-10-14 18:32:18'),
(487, '1760446938641', 139, 'Social Media Optimization', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Customise	', 'Abhinav Pandey', '2025-10-14 18:32:18'),
(493, '1759238599973', 163, 'SEO', 'Intended for Lead Generation', 136, '1 Keyword On-Page & Off-Page Optimization', '1200', '15', '0', '0', '18000', 'Customise', 'Abhinav Pandey', '2025-10-15 20:53:00'),
(494, '1759238599973', 163, 'Video Services', 'Reels', 1, 'Basic Editing', '1000', '15', '0', '250', '18750', 'Customise', 'Abhinav Pandey', '2025-10-15 20:55:18'),
(496, '1760625379835', 138, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '500', '8', '0', '0', '4000', 'Customise	', 'Abhinav Pandey', '2025-10-16 20:06:19'),
(497, '1760625379835', 138, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '4', '0', '0', '4000', 'Customise	', 'Abhinav Pandey', '2025-10-16 20:06:19'),
(498, '1760625379835', 138, 'Social Media Optimization', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '10', '0', '0', '2000', 'Customise	', 'Abhinav Pandey', '2025-10-16 20:06:19'),
(584, '1761136936467', 158, 'Graphics Design', 'Static Graphics', NULL, 'Festival Post', '450', '1', '0', '0', '450', 'Customise', 'Abhinav Pandey', '2025-10-22 18:18:00'),
(585, '1761136936467', 158, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '1', '300', '250', '1550', 'Customise', 'Abhinav Pandey', '2025-10-22 18:18:00'),
(586, '1761136936467', 158, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Customise', 'Abhinav Pandey', '2025-10-22 18:18:00'),
(587, '1761136936467', 158, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-10-22 18:18:00'),
(589, '1761136936467', 158, 'Video Shoot', 'Drone Shoot', NULL, 'Drone shoot (Non FPV)', '2000', '1', '0', '0', '2000', 'Customise', 'Abhinav Pandey', '2025-10-22 18:18:00'),
(590, '1761136936467', 158, 'Video Shoot', 'Mobile Shoot', 105, 'Mobile Shoot', '1000', '1', '0', '0', '1000', 'Customise', 'Abhinav Pandey', '2025-10-22 18:47:15'),
(664, '1761551690055', 142, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '2', '0', '0', '1700', 'Customise', 'Abhinav Pandey', '2025-10-27 17:52:25'),
(665, '1761551690055', 142, 'Video Shoot', 'Model Shoot', NULL, 'Model Charges', '1000', '2', '0', '0', '2000', 'Customise', 'Abhinav Pandey', '2025-10-27 17:52:25'),
(666, '1761551690055', 142, 'Graphics Design', 'Static Graphics', NULL, 'Post Design', '400', '2', '300', '0', '1400', 'Customise', 'Abhinav Pandey', '2025-10-27 17:52:25'),
(667, '1761551690055', 142, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', 'Customise', 'Abhinav Pandey', '2025-10-27 17:52:25'),
(668, '1759830679237', 171, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Basic', 'Abhinav Pandey', '2025-10-28 14:00:17'),
(669, '1759830679237', 171, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Basic', 'Abhinav Pandey', '2025-10-28 14:00:17'),
(670, '1759830679237', 171, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Basic', 'Abhinav Pandey', '2025-10-28 14:00:17'),
(671, '1759830679237', 171, 'Social Media Creation', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', 'Customise', 'Abhinav Pandey', '2025-10-28 14:00:17'),
(672, '1759830679237', 171, 'Social Media Creation', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', 'Customise', 'Abhinav Pandey', '2025-10-28 14:00:17'),
(673, '1759830679237', 171, 'Social Media Creation', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', 'Customise', 'Abhinav Pandey', '2025-10-28 14:00:17'),
(674, '1759830679237', 171, 'Social Media Creation', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', 'Customise', 'Abhinav Pandey', '2025-10-28 14:00:17'),
(681, '1761644633885', 26, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Customise', 'Abhinav Pandey', '2025-10-28 15:15:39'),
(682, '1761644633885', 26, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '1', '300', '250', '1550', 'Customise', 'Abhinav Pandey', '2025-10-28 15:15:39'),
(686, '1761753813151', 136, 'SEO', 'Backlink Creation', NULL, 'Backlink Creation for 1 Website', '229', '100', '0', '0', '22900', 'Customise', 'Abhinav Pandey', '2025-10-29 21:43:22'),
(690, '1761838405341', 185, 'Software Tool Subscription', 'CRM Software', NULL, 'Customer Relationship Management (CRM) per month', '1000', '1', '0', '0', '1000', 'Customise', 'Abhinav Pandey', '2025-10-30 21:05:16'),
(697, '1762158633255', 165, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Customise', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(698, '1762158633255', 165, 'Graphics Design', 'Static Graphics', NULL, 'Carousel', '700', '3', '300', '0', '3000', 'Customise', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(699, '1762158633255', 165, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '0', '10800', 'Customise', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(700, '1762158633255', 165, 'Video Services', 'Testimonial Video', NULL, 'Basic Editing', '1000', '3', '300', '0', '3900', 'Customise', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(701, '1762158633255', 165, 'Video Services', 'Interview Video', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', 'Customise', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(702, '1762158633255', 165, 'Video Services', 'Youtube Podcast Video', NULL, 'Standard Editing', '4000', '1', '0', '0', '4000', 'Customise', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(703, '1762158633255', 165, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-11-03 14:00:33'),
(704, '1762160193782', 32, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '0', '0', '6000', 'Customise', 'Abhinav Pandey', '2025-11-03 14:26:33'),
(705, '1762160193782', 32, 'Social Media Marketing', 'Meta ADS', NULL, 'Facebook & Instagram', '9000', '1', '0', '0', '9000', 'Customise', 'Abhinav Pandey', '2025-11-03 14:26:33'),
(711, '1762171620469', 163, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '24', '0', '0', '12000', 'Customise', 'Abhinav Pandey', '2025-11-03 17:37:00'),
(712, '1762171620469', 163, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '15', '0', '0', '15000', 'Customise', 'Abhinav Pandey', '2025-11-03 17:37:00'),
(713, '1762171620469', 163, 'SEO', 'Intended for Lead Generation', NULL, '1 Keyword On-Page & Off-Page Optimization', '1200', '15', '0', '0', '18000', 'Customise', 'Abhinav Pandey', '2025-11-03 17:37:00'),
(714, '1762171620469', 163, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '15', '0', '250', '18750', 'Customise', 'Abhinav Pandey', '2025-11-03 17:37:00'),
(717, '1762180372172', 174, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '10', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-11-03 20:02:52'),
(718, '1762180372172', 174, 'Video Services', 'Reels', NULL, 'Basic Editing', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-11-03 20:02:52'),
(719, '1762180372172', 174, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-11-03 20:02:52'),
(720, '1762168621656', 181, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '1000', '1', '0', '0', '1000', 'Customise', 'Abhinav Pandey', '2025-11-04 13:54:29'),
(721, '1762168621656', 181, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '250', '2050', 'Customise', 'Abhinav Pandey', '2025-11-04 13:54:29'),
(731, '1762257206910', 126, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Basic SMO', 'Abhinav Pandey', '2025-11-04 19:00:21'),
(732, '1762257206910', 126, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Basic SMO', 'Abhinav Pandey', '2025-11-04 19:00:21'),
(733, '1762257206910', 126, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Basic SMO', 'Abhinav Pandey', '2025-11-04 19:00:21'),
(734, '1762257206910', 126, 'Video Shoot', 'Drone Shoot', 151, 'Drone Shoot', '3000', '1', '0', '0', '3000', 'Customise', 'Abhinav Pandey', '2025-11-04 19:20:23'),
(735, '1762257206910', 126, 'Video Shoot', 'Model Shoot', 152, 'Model Charges', '4000', '1', '0', '0', '4000', 'Customise', 'Abhinav Pandey', '2025-11-04 19:20:37'),
(739, '1762268053237', 186, 'Graphics Design', 'Static Graphics', NULL, 'Header & Footer', '1000', '1', '0', '0', '1000', 'Customise', 'Abhinav Pandey', '2025-11-04 20:25:41'),
(740, '1762323997246', 168, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '0', '0', '2000', 'Customise', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(741, '1762323997246', 168, 'Video Services', 'Reels', NULL, 'Standard Editing', '1200', '6', '0', '250', '8700', 'Customise', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(742, '1762323997246', 168, 'Video Services', 'Testimonial Video', NULL, 'Basic Editing', '600', '2', '0', '250', '1700', 'Customise', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(743, '1762323997246', 168, 'Video Services', 'Shorts', NULL, 'Advanced Editing', '2000', '1', '0', '0', '2000', 'Customise', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(744, '1762323997246', 168, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(745, '1762323997246', 168, 'Social Media Optimization', 'Social Media Posting', NULL, 'Facebook & Instagram Posting', '200', '8', '0', '0', '1600', 'Customise', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(746, '1762323997246', 168, 'Social Media Marketing', 'Meta ADS', NULL, 'Facebook & Instagram Ads Service Charge', '1000', '1', '0', '0', '1000', 'Customise', 'Abhinav Pandey', '2025-11-05 11:56:37'),
(747, '1762334137424', 172, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '3', '300', '0', '2400', 'Customise', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(748, '1762334137424', 172, 'Video Services', 'Reels', NULL, 'Standard Editing', '1200', '4', '300', '250', '7000', 'Customise', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(749, '1762334137424', 172, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(750, '1762334137424', 172, 'Social Media Marketing', 'Meta ADS', NULL, 'Facebook & Instagram Ads', '8350', '1', '0', '0', '8350', 'Customise', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(751, '1762334137424', 172, 'SEO', 'Intended for Lead Generation', NULL, 'Per Keyword', '1500', '11', '0', '0', '16500', 'Customise', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(752, '1762334137424', 172, 'Video Services', 'Shorts', NULL, 'Standard Editing', '1500', '1', '0', '0', '1500', 'Customise', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(753, '1762334137424', 172, 'Video Services', 'Testimonial Video', NULL, 'Basic Editing', '500', '2', '300', '250', '2100', 'Customise', 'Abhinav Pandey', '2025-11-05 14:45:37'),
(754, '1762761192023', 167, 'Video Services', 'Premium Video', NULL, 'Basic Editing', '1500', '10', '0', '0', '15000', 'Customise', 'Lavina Kukreja', '2025-11-10 13:23:12'),
(755, '1762763730042', 32, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', 'Basic', 'Abhinav Pandey', '2025-11-10 14:05:30'),
(756, '1762763730042', 32, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', 'Basic', 'Abhinav Pandey', '2025-11-10 14:05:30'),
(757, '1762763730042', 32, 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', 'Basic', 'Abhinav Pandey', '2025-11-10 14:05:30'),
(758, '1762763730042', 32, 'Complimentary ', 'Graphic Creation', NULL, 'Festive Post', '0', '1', '0', '0', '0', 'Basic', 'Abhinav Pandey', '2025-11-10 14:05:30'),
(759, '1762512432083', 189, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '0', '3600', 'Customise', 'Lavina Kukreja', '2025-11-10 16:08:16'),
(760, '1762512432083', 189, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', 'Customise', 'Lavina Kukreja', '2025-11-10 16:08:16'),
(767, '1762759898174', 191, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '0', '0', '6000', 'Customise', 'Abhinav Pandey', '2025-11-10 16:28:43'),
(768, '1762759898174', 191, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '1000', '4', '0', '0', '4000', 'Customise', 'Abhinav Pandey', '2025-11-10 16:28:43'),
(769, '1762759898174', 191, 'GMB', 'LOCAL SEO', NULL, ' Local SEO and Negative Comment Handling', '1000', '5', '0', '0', '5000', 'Customise', 'Abhinav Pandey', '2025-11-10 16:28:43'),
(780, '1762951102867', 195, 'Software Development', 'CRM', NULL, 'CRM software', '60000', '1', '0', '0', '60000', 'Customise', 'Abhinav Pandey', '2025-11-12 18:10:23'),
(781, '1762951102867', 195, 'Software Development', 'Maintenance', NULL, 'CRM Maintenance Monthly', '1000', '1', '0', '0', '1000', 'Customise', 'Abhinav Pandey', '2025-11-12 18:10:23'),
(782, '1762951102867', 195, 'Software Tool Subscription', 'CRM Software', 147, 'Customer Relationship Management (CRM) per month', '1000', '1', '0', '0', '1000', 'Customise', 'Abhinav Pandey', '2025-11-12 18:15:50'),
(790, '1763037625803', 190, 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', 'Customise', 'Abhinav Pandey', '2025-11-13 20:27:55'),
(791, '1763037625803', 190, 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', 'Customise', 'Abhinav Pandey', '2025-11-13 20:27:55'),
(792, '1763037625803', 190, 'Video Services', 'Testimonial Video', NULL, 'Basic Editing', '1000', '3', '300', '250', '4650', 'Customise', 'Abhinav Pandey', '2025-11-13 20:27:55'),
(793, '1763037625803', 190, 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '1000', '7', '0', '0', '7000', 'Customise', 'Abhinav Pandey', '2025-11-13 20:27:55'),
(794, '1763037625803', 190, 'GMB', 'LOCAL SEO', NULL, 'Local SEO Keyword & Negative Comment Handling', '1200', '5', '0', '0', '6000', 'Customise', 'Abhinav Pandey', '2025-11-13 20:27:55'),
(795, '1763037625803', 190, 'Social Media Optimization', 'Social Media Posting', NULL, 'Youtube Video Posting', '150', '9', '0', '0', '1350', 'Customise', 'Abhinav Pandey', '2025-11-13 20:27:55'),
(796, '1763037625803', 190, 'Graphics Design', 'Static Graphics', NULL, 'Carousel Post', '1000', '1', '300', '0', '1300', 'Customise', 'Abhinav Pandey', '2025-11-13 20:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_notes_data`
--

CREATE TABLE `invoice_notes_data` (
  `id` int(11) NOT NULL,
  `note_text` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_notes_data`
--

INSERT INTO `invoice_notes_data` (`id`, `note_text`, `created_at`) VALUES
(3, 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-15 19:28:37'),
(5, 'Declaration: We confirm that this invoice reflects the true price of the services listed, and all details are accurate and correct.', '2025-09-15 19:29:25'),
(6, 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 14:13:18'),
(7, 'The above amount does not include GST.', '2025-09-15 19:30:14'),
(8, 'The above amount includes 18% GST.', '2025-09-22 19:22:20'),
(9, 'Please note that this invoice includes only the service charges. The ad budget is not included and must be paid by the client directly to Meta.', '2025-10-27 15:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `notes_data`
--

CREATE TABLE `notes_data` (
  `id` int(11) NOT NULL,
  `note_text` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes_data`
--

INSERT INTO `notes_data` (`id`, `note_text`, `created_at`) VALUES
(1, 'Payment is not Refundable.', '2025-09-18 14:01:12'),
(3, 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-18 14:01:20'),
(4, 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-18 14:01:51'),
(5, 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-18 14:02:00'),
(6, 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-18 14:02:12'),
(7, 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 16:50:57'),
(8, 'Required details like credentials and other details are needed to share timely.', '2025-09-18 14:02:36'),
(9, 'The above given price does not include GST.', '2025-09-18 14:02:48'),
(10, 'Payment will be made in 100% advance.', '2025-09-18 14:03:01'),
(11, 'We are only responsible for editing the podcasts, not for shooting the podcast videos.', '2025-09-10 15:23:34'),
(12, 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-18 14:03:15'),
(13, 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-18 14:03:26'),
(14, 'SEO takes time (3–6 months to show results).', '2025-09-10 15:25:48'),
(16, 'We are committed to delivering the agreed number of leads as given in the above quotation.', '2025-09-18 14:03:41'),
(17, 'Full payment is required upfront. If the client chooses a 50% advance payment, the remaining 50% must be provided as a post-dated cheque at the time of the initial cash payment.', '2025-09-16 15:53:44'),
(18, 'In case we are unable to deliver the committed number of leads, we will refund the cost of the undelivered leads based on the lead cost calculated by dividing the total quotation amount by the number of committed leads.', '2025-09-16 20:30:07'),
(19, 'If the number of leads exceeds the committed lead, we will charge ₹2,500 for each additional lead.', '2025-09-16 20:32:24'),
(20, 'While we are managing your social media page, no other person or agency should work on it during that period. However, if someone else is also required to work on the same, we will create a separate page for our digital marketing activities.', '2025-09-18 14:04:30'),
(21, 'The discount only applies to the service amount and not to the advertising budget.', '2025-09-17 21:49:13'),
(22, 'Model shoot charges will vary according to the models.', '2025-09-18 12:19:48'),
(23, 'Page and Meta account creation charges will apply. However, since this is the client’s initial business stage this month, the client is granted the option to defer payment until the next month.', '2025-10-14 16:56:30'),
(24, 'An annual maintenance fee of ₹10,000 will be applicable starting after the completion of the first year.', '2025-10-25 18:48:09'),
(25, 'Domain registration and hosting expenses shall be borne by the client.', '2025-10-25 18:48:27'),
(26, 'Any additional modifications, enhancements, or new feature requests in the software will incur extra charges, which shall be paid by the client.', '2025-10-25 18:53:45'),
(27, 'The ad will run for a total of seven days with this specified budget.', '2025-11-03 16:54:12'),
(28, 'Additional charges will apply for posting any extra creatives provided or generated by the client.', '2025-11-03 17:09:51'),
(30, '2 Months Maintenance free If you want to add any new feature that will be free of cost after that period adding feature will be chargeable.', '2025-11-07 14:35:07'),
(33, 'Maintenance includes only the current features. Any issues with existing features will be resolved, but adding new features will be chargeable.', '2025-11-07 14:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `plans_notes`
--

CREATE TABLE `plans_notes` (
  `id` int(255) NOT NULL,
  `plan_id` varchar(255) DEFAULT NULL,
  `note_name` varchar(255) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans_notes`
--

INSERT INTO `plans_notes` (`id`, `plan_id`, `note_name`, `plan`, `created_at`) VALUES
(5, '4', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', 'Basic SMO', '2025-08-19 18:42:00'),
(6, '4', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', 'Basic SMO', '2025-08-19 18:42:12'),
(7, '4', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', 'Basic SMO', '2025-08-19 18:42:26'),
(8, '4', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', 'Basic SMO', '2025-08-19 18:42:47'),
(10, '5', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', 'Standard SMO', '2025-08-20 10:24:45'),
(11, '5', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', 'Standard SMO', '2025-08-20 10:24:57'),
(12, '5', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', 'Standard SMO', '2025-08-20 10:25:11'),
(13, '5', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', 'Standard SMO', '2025-08-20 10:25:26'),
(14, '6', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', 'Premium SMO', '2025-08-20 10:25:58'),
(15, '6', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', 'Premium SMO', '2025-08-20 10:26:11'),
(16, '6', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', 'Premium SMO', '2025-08-20 10:26:20'),
(17, '6', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', 'Premium SMO', '2025-08-20 10:26:31'),
(20, NULL, 'The above given price does not include GST.', 'Customise', '2025-08-20 15:00:21'),
(25, NULL, 'Payment will be made in 100% advance. ', 'Customise', '2025-08-25 20:16:37'),
(27, '20', 'The above given price does not include GST.', 'Podcast Basic', '2025-08-26 15:12:34'),
(29, '20', 'Required details like credentials and other details are needed to share timely.', 'Podcast Basic', '2025-08-26 15:13:14'),
(30, '20', 'Payment will be made in 100% advance.', 'Podcast Basic', '2025-08-26 15:13:28'),
(31, '20', 'We are only responsible for editing the podcasts, not for shooting the podcast videos.', 'Podcast Basic', '2025-08-26 15:15:19'),
(32, '20', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', 'Podcast Basic', '2025-08-26 15:25:03'),
(33, '28', ' The above given price does not include GST.', 'Podcast Standard', '2025-08-26 15:48:20'),
(34, '28', 'Required details like credentials and other details are needed to share timely.', 'Podcast Standard', '2025-08-26 15:48:36'),
(35, '28', 'Payment will be made in 100% advance.', 'Podcast Standard', '2025-08-26 15:48:54'),
(36, '28', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', 'Podcast Standard', '2025-08-26 15:49:19'),
(38, '0', 'c', 'g', '2025-08-26 16:11:11'),
(40, '0', 'gfg', 'u', '2025-08-26 16:26:39'),
(41, '0', 'ss', 's', '2025-08-26 16:32:16'),
(43, '36', 'qq', 'r', '2025-08-26 18:30:09'),
(45, '37', 'q', 'ww', '2025-08-26 18:58:50'),
(55, '42', 'The above given price does not include GST.', 'Tiny', '2025-08-29 17:28:11'),
(56, '42', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', 'Tiny', '2025-08-29 17:28:28'),
(57, '42', 'Required details like credentials and other details are needed to share timely.', 'Tiny', '2025-08-29 17:28:39'),
(58, '42', 'Payment will be made in 100% advance.', 'Tiny', '2025-08-29 17:28:53'),
(61, NULL, 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', 'Customise', '2025-08-30 13:27:25'),
(62, '4', 'The amount paid is non-refundable and will be adjusted solely against the services provided', 'Basic SMO', '2025-09-01 17:56:18'),
(63, '5', 'The amount paid is non-refundable and will be adjusted solely against the services provided', 'Standard SMO', '2025-09-01 17:56:37'),
(64, '6', 'The amount paid is non-refundable and will be adjusted solely against the services provided', 'Premium SMO', '2025-09-01 17:56:49'),
(65, '20', 'The amount paid is non-refundable and will be adjusted solely against the services provided', 'Podcast Basic', '2025-09-01 17:57:23'),
(66, '28', 'The amount paid is non-refundable and will be adjusted solely against the services provided', 'Podcast Standard', '2025-09-01 17:57:32'),
(67, '42', 'The amount paid is non-refundable and will be adjusted solely against the services provided', 'Tiny', '2025-09-01 17:57:44'),
(68, NULL, 'The amount paid is non-refundable and will be adjusted solely against the services provided', 'Customise', '2025-09-01 17:58:09'),
(77, '52', 'All amount need to be paid in advance.', 'Standard SEO', '2025-09-15 16:43:26'),
(78, '41', 'Payment should be compulsory', 'Test', '2025-09-18 14:01:18'),
(79, '56', 'This Plan is only for 15 days.', 'Basic DM ', '2025-09-25 18:24:51'),
(80, '55', 'This plan will only valid for 15 days only.', 'Tiny DM', '2025-09-26 13:52:35'),
(81, '55', 'Facebook, Instagram, Meta Business Suit & Meta Ad Account creation charges will apply for basic plan users if the page is not created yet.', 'Tiny DM', '2025-09-26 14:22:49'),
(82, '41', 'Payment should be compulsory', 'Test', '2025-09-29 18:34:17'),
(83, '41', 'Payment should be compulsory', 'Test', '2025-09-29 18:35:37'),
(88, '42', 'Payment will be made in 100% advance.', 'Tiny', '2025-10-03 17:48:18'),
(89, '42', 'This plan will only valid for 15 Days.', 'Tiny', '2025-10-03 17:55:40'),
(94, '62', 'k', 'Standard DM', '2025-10-29 16:27:14'),
(95, '63', 'k', 'Premium DM', '2025-10-29 16:29:47'),
(96, '64', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', 'Basic', '2025-10-29 16:53:52'),
(97, '65', 'Facebook, Instagram & Meta business suit creation charges will apply if the page is not created yet.', 'Standard', '2025-10-29 16:57:07'),
(98, '66', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', 'Premium', '2025-10-29 17:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `plan_client_notes`
--

CREATE TABLE `plan_client_notes` (
  `id` int(255) NOT NULL,
  `client_id` int(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `note_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan_client_notes`
--

INSERT INTO `plan_client_notes` (`id`, `client_id`, `txn_id`, `note_name`, `created_at`) VALUES
(169, 58, '1755952853668', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-23 18:10:58'),
(170, 58, '1755952853668', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-23 18:10:58'),
(171, 58, '1755952853668', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-23 18:10:58'),
(172, 58, '1755952853668', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-23 18:10:58'),
(177, 58, '1755955044623', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-23 18:51:40'),
(178, 58, '1755955044623', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-23 18:51:40'),
(179, 58, '1755955044623', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-23 18:51:40'),
(180, 58, '1755955044623', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-23 18:51:40'),
(189, 27, '1756107685551', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-25 13:15:16'),
(190, 27, '1756107685551', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-25 13:15:16'),
(191, 27, '1756107685551', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-25 13:15:16'),
(192, 27, '1756107685551', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-25 13:15:16'),
(197, 27, '1754906816252', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-25 19:25:49'),
(198, 27, '1754906816252', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-25 19:25:49'),
(199, 27, '1754906816252', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-25 19:25:49'),
(200, 27, '1754906816252', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-25 19:25:49'),
(219, 58, '1756133066514', 'The above given price does not include GST.', '2025-08-26 12:57:36'),
(220, 58, '1756133066514', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, \ncontents, videos changes, etc. ', '2025-08-26 12:57:36'),
(221, 58, '1756133066514', 'Required details like credentials and other details are needed to share timely.', '2025-08-26 12:57:36'),
(222, 58, '1756133066514', 'Payment will be made in 100% advance.', '2025-08-26 12:57:36'),
(223, 58, '1756133066514', 'We are only responsible for providing the genuine leads, not for closing them. ', '2025-08-26 12:57:36'),
(224, 76, '1756199302911', 'The above given price does not include GST.', '2025-08-26 14:41:23'),
(225, 76, '1756199302911', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, \ncontents, videos changes, etc. ', '2025-08-26 14:41:23'),
(226, 76, '1756199302911', 'Required details like credentials and other details are needed to share timely.', '2025-08-26 14:41:23'),
(227, 76, '1756199302911', 'Payment will be made in 100% advance.', '2025-08-26 14:41:23'),
(228, 76, '1756199302911', 'We are only responsible for providing the genuine leads, not for closing them. ', '2025-08-26 14:41:23'),
(234, 86, '1756202783263', 'The above given price does not include GST.', '2025-08-26 15:36:26'),
(235, 86, '1756202783263', 'Required details like credentials and other details are needed to share timely.', '2025-08-26 15:36:26'),
(236, 86, '1756202783263', 'Payment will be made in 100% advance.', '2025-08-26 15:36:26'),
(237, 86, '1756202783263', 'We are only responsible for editing the podcasts, not for shooting the podcast videos.', '2025-08-26 15:36:26'),
(238, 86, '1756202783263', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', '2025-08-26 15:36:26'),
(247, 86, '1756204300321', ' The above given price does not include GST.', '2025-08-26 19:25:54'),
(248, 86, '1756204300321', 'Required details like credentials and other details are needed to share timely.', '2025-08-26 19:25:54'),
(249, 86, '1756204300321', 'Payment will be made in 100% advance.', '2025-08-26 19:25:54'),
(250, 86, '1756204300321', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', '2025-08-26 19:25:54'),
(255, 86, '1756276835336', 'The above given price does not include GST.', '2025-08-27 13:17:38'),
(256, 86, '1756276835336', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, \ncontents, videos changes, etc. ', '2025-08-27 13:17:38'),
(257, 86, '1756276835336', 'Required details like credentials and other details are needed to share timely.', '2025-08-27 13:17:38'),
(258, 86, '1756276835336', 'Payment will be made in 100% advance.', '2025-08-27 13:17:38'),
(259, 86, '1756276835336', 'We are only responsible for providing the genuine leads, not for closing them. ', '2025-08-27 13:17:38'),
(261, 87, '1756282021490', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-27 13:37:21'),
(262, 87, '1756282021490', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-27 13:37:21'),
(263, 87, '1756282021490', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-27 13:37:21'),
(264, 87, '1756282021490', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-27 13:37:21'),
(265, 87, '1756282021490', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-27 13:39:24'),
(266, 87, '1756282021490', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-27 13:39:24'),
(267, 87, '1756282021490', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-27 13:39:24'),
(268, 87, '1756282021490', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-27 13:39:24'),
(269, 87, '1756282195085', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-27 13:39:58'),
(270, 87, '1756282195085', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-27 13:39:58'),
(271, 87, '1756282195085', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-27 13:39:58'),
(272, 87, '1756282195085', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-27 13:39:58'),
(273, 87, '1756282195085', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-27 13:43:15'),
(274, 87, '1756282195085', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-27 13:43:15'),
(275, 87, '1756282195085', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-27 13:43:15'),
(276, 87, '1756282195085', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-27 13:43:15'),
(277, 87, '1756282405338', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-27 13:43:40'),
(278, 87, '1756282405338', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-27 13:43:40'),
(279, 87, '1756282405338', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-27 13:43:40'),
(280, 87, '1756282405338', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-27 13:43:40'),
(294, 88, '1756288111722', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-27 15:26:04'),
(295, 88, '1756288111722', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-27 15:26:04'),
(296, 88, '1756288111722', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-27 15:26:04'),
(297, 88, '1756288111722', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-27 15:26:04'),
(298, 88, '1756295188438', 'The above given price does not include GST.', '2025-08-27 17:16:45'),
(299, 88, '1756295188438', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, \ncontents, videos changes, etc. ', '2025-08-27 17:16:45'),
(300, 88, '1756295188438', 'Required details like credentials and other details are needed to share timely.', '2025-08-27 17:16:45'),
(301, 88, '1756295188438', 'Payment will be made in 100% advance.', '2025-08-27 17:16:45'),
(302, 88, '1756295188438', 'We are only responsible for providing the genuine leads, not for closing them. ', '2025-08-27 17:16:45'),
(306, 88, '1756295188438', 'Payment will be made in 100% advance. hhhshjksd', '2025-08-27 17:29:09'),
(327, 90, '1756450112613', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-29 12:26:53'),
(328, 90, '1756450112613', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-29 12:26:53'),
(329, 90, '1756450112613', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-29 12:26:53'),
(330, 90, '1756450112613', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-29 12:26:53'),
(331, 90, '1756450765040', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-29 12:29:28'),
(332, 90, '1756450765040', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-29 12:29:28'),
(333, 90, '1756450765040', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-29 12:29:28'),
(334, 90, '1756450765040', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-29 12:29:28'),
(335, 90, '1756450856307', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-29 12:31:07'),
(336, 90, '1756450856307', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-29 12:31:07'),
(337, 90, '1756450856307', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-29 12:31:07'),
(338, 90, '1756450856307', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-29 12:31:07'),
(339, 90, '1756450965387', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-29 12:32:46'),
(340, 90, '1756450965387', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-29 12:32:46'),
(341, 90, '1756450965387', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-29 12:32:46'),
(342, 90, '1756450965387', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-29 12:32:46'),
(343, 90, '1756450983612', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-29 12:33:06'),
(344, 90, '1756450983612', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-29 12:33:06'),
(345, 90, '1756450983612', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-29 12:33:06'),
(346, 90, '1756450983612', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-29 12:33:06'),
(347, 90, '1756451072215', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-29 12:34:35'),
(348, 90, '1756451072215', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-29 12:34:35'),
(349, 90, '1756451072215', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-29 12:34:35'),
(350, 90, '1756451072215', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-29 12:34:35'),
(351, 89, '1756450934843', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-08-29 12:40:53'),
(352, 89, '1756450934843', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-08-29 12:40:53'),
(353, 89, '1756450934843', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-08-29 12:40:53'),
(354, 89, '1756450934843', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-08-29 12:40:53'),
(371, 90, '1756468817547', 'The above given price does not include GST.', '2025-08-29 17:30:38'),
(372, 90, '1756468817547', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-08-29 17:30:38'),
(373, 90, '1756468817547', 'Required details like credentials and other details are needed to share timely.', '2025-08-29 17:30:38'),
(374, 90, '1756468817547', 'Payment will be made in 100% advance.', '2025-08-29 17:30:38'),
(375, 90, '1756533239899', 'The above given price does not include GST.', '2025-08-30 11:29:00'),
(376, 90, '1756533239899', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-08-30 11:29:00'),
(377, 90, '1756533239899', 'Required details like credentials and other details are needed to share timely.', '2025-08-30 11:29:00'),
(378, 90, '1756533239899', 'Payment will be made in 100% advance.', '2025-08-30 11:29:00'),
(383, 90, '1756534127122', 'The above given price does not include GST.', '2025-08-30 11:41:39'),
(384, 90, '1756534127122', 'Required details like credentials and other details are needed to share timely.', '2025-08-30 11:41:39'),
(385, 90, '1756534127122', 'Payment will be made in 100% advance. ', '2025-08-30 11:41:39'),
(390, 90, '1756534127122', 'Google My Business (GMB) setup requires a one-time payment to create, verify, and optimize your business profile on Google.', '2025-08-30 12:12:26'),
(395, 93, '1756540105614', 'The above given price does not include GST.', '2025-08-30 13:24:06'),
(396, 93, '1756540105614', 'Required details like credentials and other details are needed to share timely.', '2025-08-30 13:24:06'),
(397, 93, '1756540105614', 'Payment will be made in 100% advance. ', '2025-08-30 13:24:06'),
(398, 93, '1756540105614', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-08-30 13:27:30'),
(399, 94, '1756717206619', 'Businesses: Product demos, promotions, customer testimonials.', '2025-09-01 14:30:06'),
(400, 94, '1756717206619', 'SEO takes time (3–6 months to show results).', '2025-09-01 14:30:06'),
(401, 94, '1756717206619', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2025-09-01 14:30:06'),
(402, 94, '1756717206619', 'Test Note', '2025-09-01 14:30:06'),
(403, 95, '1756719639949', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-01 15:10:39'),
(404, 95, '1756719639949', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-01 15:10:39'),
(405, 95, '1756719639949', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-01 15:10:39'),
(406, 95, '1756719639949', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-01 15:10:39'),
(407, 96, '1756726918753', 'The above given price does not include GST.', '2025-09-01 17:17:31'),
(408, 96, '1756726918753', 'Payment will be made in 100% advance. ', '2025-09-01 17:17:31'),
(409, 96, '1756726918753', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-01 17:17:31'),
(471, 32, '1756873760212', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-03 09:59:22'),
(472, 32, '1756873760212', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-03 09:59:22'),
(473, 32, '1756873760212', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-03 09:59:22'),
(474, 32, '1756873760212', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-03 09:59:22'),
(475, 32, '1756873760212', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-03 09:59:22'),
(481, 99, '1756875868619', 'The above given price does not include GST.', '2025-09-03 10:42:48'),
(482, 99, '1756875868619', 'Payment will be made in 100% advance. ', '2025-09-03 10:42:48'),
(483, 99, '1756875868619', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-03 10:42:48'),
(484, 99, '1756875868619', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-03 10:42:48'),
(485, 97, '1756877059829', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-03 10:54:24'),
(486, 97, '1756877059829', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-03 10:54:24'),
(487, 97, '1756877059829', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-03 10:54:24'),
(488, 97, '1756877059829', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-03 10:54:24'),
(489, 97, '1756877059829', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-03 10:54:24'),
(524, 102, '1756890846663', 'The above given price does not include GST.', '2025-09-03 14:47:00'),
(525, 102, '1756890846663', 'Payment will be made in 100% advance. ', '2025-09-03 14:47:00'),
(526, 102, '1756890846663', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-03 14:47:00'),
(527, 102, '1756890846663', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-03 14:47:00'),
(604, 102, '1756894758575', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-03 15:49:23'),
(605, 102, '1756894758575', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-03 15:49:23'),
(606, 102, '1756894758575', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-03 15:49:23'),
(607, 102, '1756894758575', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-03 15:49:23'),
(608, 102, '1756894758575', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-03 15:49:23'),
(609, 102, '1756894967342', ' The above given price does not include GST.', '2025-09-03 15:52:51'),
(610, 102, '1756894967342', 'Required details like credentials and other details are needed to share timely.', '2025-09-03 15:52:51'),
(611, 102, '1756894967342', 'Payment will be made in 100% advance.', '2025-09-03 15:52:51'),
(612, 102, '1756894967342', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', '2025-09-03 15:52:51'),
(613, 102, '1756894967342', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-03 15:52:51'),
(614, 102, '1756894981887', 'The above given price does not include GST.', '2025-09-03 15:53:57'),
(615, 102, '1756894981887', 'Payment will be made in 100% advance. ', '2025-09-03 15:53:57'),
(616, 102, '1756894981887', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-03 15:53:57'),
(617, 102, '1756894981887', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-03 15:53:57'),
(618, 97, '1756895129441', 'Businesses: Product demos, promotions, customer testimonials.', '2025-09-03 15:55:39'),
(619, 97, '1756895129441', 'SEO takes time (3–6 months to show results).', '2025-09-03 15:55:39'),
(620, 97, '1756895129441', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2025-09-03 15:55:39'),
(621, 97, '1756895129441', 'Test Note', '2025-09-03 15:55:39'),
(627, 96, '1756726918753', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-03 15:58:43'),
(628, 102, '1756894758575', 'The above given price does not include GST.', '2025-09-03 16:00:01'),
(629, 102, '1756894758575', 'Payment will be made in 100% advance. ', '2025-09-03 16:00:01'),
(630, 102, '1756894758575', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-03 16:00:01'),
(631, 97, '1756888934590', 'The above given price does not include GST.', '2025-09-03 16:10:11'),
(632, 97, '1756888934590', 'Payment will be made in 100% advance. ', '2025-09-03 16:10:11'),
(633, 97, '1756888934590', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-03 16:10:11'),
(634, 97, '1756888934590', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-03 16:10:11'),
(727, 119, '1756989051000', 'Businesses: Product demos, promotions, customer testimonials.', '2025-09-04 18:01:50'),
(728, 119, '1756989051000', 'SEO takes time (3–6 months to show results).', '2025-09-04 18:01:50'),
(729, 119, '1756989051000', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2025-09-04 18:01:50'),
(730, 119, '1756989051000', 'Test Note', '2025-09-04 18:01:50'),
(758, 120, '1757311846947', 'The above given price does not include GST.', '2025-09-08 11:42:06'),
(759, 120, '1757311846947', 'Payment will be made in 100% advance. ', '2025-09-08 11:42:06'),
(760, 120, '1757311846947', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-08 11:42:06'),
(761, 120, '1757311846947', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-08 11:42:06'),
(762, 121, '1757322828934', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-08 14:43:46'),
(763, 121, '1757322828934', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-08 14:43:46'),
(764, 121, '1757322828934', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-08 14:43:46'),
(765, 121, '1757322828934', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-08 14:43:46'),
(766, 121, '1757322828934', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-08 14:43:46'),
(819, 126, '1757403034860', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-09 13:00:36'),
(820, 126, '1757403034860', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-09 13:00:36'),
(821, 126, '1757403034860', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-09 13:00:36'),
(822, 126, '1757403034860', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-09 13:00:36'),
(823, 126, '1757403034860', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-09 13:00:36'),
(886, 130, '1757503239424', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-10 16:50:56'),
(887, 130, '1757503239424', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-10 16:50:56'),
(888, 130, '1757503239424', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-10 16:50:56'),
(889, 130, '1757503239424', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-10 16:50:56'),
(890, 130, '1757503239424', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-10 16:50:56'),
(901, 131, '1757507809888', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-09-10 18:16:06'),
(902, 131, '1757507809888', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-10 18:16:06'),
(903, 131, '1757507809888', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-10 18:16:06'),
(914, 121, '1757569484856', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-11 11:15:59'),
(915, 121, '1757569484856', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-11 11:15:59'),
(916, 121, '1757569484856', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-11 11:15:59'),
(917, 121, '1757569484856', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-11 11:15:59'),
(918, 121, '1757569484856', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-11 11:15:59'),
(1010, 134, '1757773895017', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-13 20:01:38'),
(1011, 134, '1757773895017', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-13 20:01:38'),
(1013, 134, '1757773895017', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-13 20:01:38'),
(1014, 134, '1757773895017', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-13 20:01:38'),
(1015, 134, '1757773895017', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-13 20:32:14'),
(1027, 136, '1757934876897', 'All amount need to be paid in advance.', '2025-09-15 16:44:40'),
(1028, 136, '1757934876897', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-15 16:52:44'),
(1029, 136, '1757934876897', 'SEO takes time (3–6 months to show results).', '2025-09-15 16:52:44'),
(1030, 136, '1757935846415', 'All amount need to be paid in advance.', '2025-09-15 17:00:53'),
(1031, 133, '1757937238394', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-15 17:24:01'),
(1032, 133, '1757937238394', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-15 17:24:01'),
(1033, 133, '1757937238394', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-15 17:24:01'),
(1034, 133, '1757937238394', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-15 17:24:01'),
(1035, 133, '1757937238394', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-15 17:24:01'),
(1036, 135, '1757937345024', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-15 17:29:56'),
(1037, 135, '1757937345024', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-15 17:29:56'),
(1038, 135, '1757937345024', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-15 17:29:56'),
(1039, 135, '1757937345024', 'The above given price does not include GST.', '2025-09-15 17:29:56'),
(1040, 135, '1757937345024', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-15 17:29:56'),
(1050, 139, '1757947793267', 'Payment will be made in 100% advance.', '2025-09-15 20:22:46'),
(1051, 139, '1757947793267', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-15 20:22:46'),
(1052, 139, '1757947793267', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-15 20:22:46'),
(1053, 139, '1757947793267', 'The above given price does not include GST.', '2025-09-15 20:22:46'),
(1074, 102, '1758015195080', 'The above given price does not include GST.', '2025-09-16 20:34:39'),
(1075, 102, '1758015195080', 'Required details like credentials and other details are needed to share timely.', '2025-09-16 20:34:39'),
(1076, 102, '1758015195080', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-16 20:34:39'),
(1077, 102, '1758015195080', 'Full payment is required upfront. If the client chooses a 50% advance payment, the remaining 50% must be provided as a post-dated cheque at the time of the initial cash payment.', '2025-09-16 20:34:39'),
(1078, 102, '1758015195080', 'We are committed to delivering the agreed number of leads as given in the above quotation.', '2025-09-16 20:34:39'),
(1079, 102, '1758015195080', 'In case we are unable to deliver the committed number of leads, we will refund the cost of the undelivered leads based on the lead cost calculated by dividing the total quotation amount by the number of committed leads.', '2025-09-16 20:34:39'),
(1080, 102, '1758015195080', 'If the number of leads exceeds the committed lead, we will charge ₹2,500 for each additional lead.', '2025-09-16 20:34:39'),
(1081, 102, '1758015195080', 'While we are managing your social media page, no other person or agency should work on it during that period. However, if someone else is also required to work on the same, we will create a separate page for our digital marketing activities.', '2025-09-16 20:41:29'),
(1082, 102, '1758015195080', 'We are committed to providing up to 40 genuine leads for your demo class.', '2025-09-17 17:00:49'),
(1108, 138, '1758111182522', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-17 17:52:19'),
(1109, 138, '1758111182522', 'Payment will be made in 100% advance.', '2025-09-17 17:52:19'),
(1110, 138, '1758111182522', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-17 17:52:19'),
(1111, 138, '1758111182522', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-17 17:52:19'),
(1112, 138, '1758111182522', 'The above given price does not include GST.', '2025-09-17 17:52:19'),
(1129, 142, '1758123158995', 'Payment will be made in 100% advance.', '2025-09-17 21:27:31'),
(1130, 142, '1758123158995', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-17 21:27:31'),
(1131, 142, '1758123158995', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-17 21:27:31'),
(1132, 142, '1758123158995', 'Required details like credentials and other details are needed to share timely.', '2025-09-17 21:27:31'),
(1147, 142, '1758123158995', 'Model shoot charges will vary according to the models.', '2025-09-18 12:20:19'),
(1148, 142, '1758123158995', 'The discount only applies to the service amount and not to the advertising budget.', '2025-09-18 12:20:19'),
(1159, 143, '1758178226961', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-18 13:27:41'),
(1160, 143, '1758178226961', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-18 13:27:41'),
(1161, 143, '1758178226961', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-18 13:27:41'),
(1162, 143, '1758178226961', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-18 13:27:41'),
(1163, 143, '1758178226961', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-18 13:27:41'),
(1169, 143, '1758182285382', 'Payment is not Refundable.', '2025-09-18 14:07:53'),
(1170, 143, '1758182285382', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-18 14:08:10'),
(1171, 143, '1758182285382', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-18 14:08:22'),
(1172, 143, '1758182285382', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-18 14:08:33'),
(1173, 143, '1758182285382', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-18 14:08:49'),
(1174, 143, '1758182285382', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-09-18 14:09:08'),
(1175, 143, '1758182285382', 'The above given price does not include GST.', '2025-09-18 14:09:14'),
(1176, 143, '1758182285382', 'Payment will be made in 100% advance.', '2025-09-18 14:09:26'),
(1177, 143, '1758182285382', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-18 14:09:42'),
(1178, 143, '1758182285382', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-18 14:09:48'),
(1179, 148, '1758191578036', 'The discount only applies to the service amount and not to the advertising budget.', '2025-09-18 16:27:50'),
(1180, 148, '1758191578036', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-09-18 16:27:50'),
(1181, 148, '1758191578036', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-18 16:27:50'),
(1182, 148, '1758194850193', ' The above given price does not include GST.', '2025-09-18 17:00:40'),
(1183, 148, '1758194850193', 'Required details like credentials and other details are needed to share timely.', '2025-09-18 17:00:40'),
(1184, 148, '1758194850193', 'Payment will be made in 100% advance.', '2025-09-18 17:00:40'),
(1185, 148, '1758194850193', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', '2025-09-18 17:00:40'),
(1186, 148, '1758194850193', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-18 17:00:40'),
(1187, 148, '1758196206713', 'Payment should be compulsory', '2025-09-18 17:20:20'),
(1188, 148, '1758197898944', 'Payment should be compulsory', '2025-09-18 17:48:31'),
(1191, 150, '1758288729216', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-19 19:02:10'),
(1192, 150, '1758288729216', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-19 19:02:10'),
(1194, 150, '1758288729216', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-19 19:02:10'),
(1195, 150, '1758288729216', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-19 19:02:10'),
(1197, 150, '1758288729216', 'If this initial budget works well for you, we can move forward with our suggested ad budget in the next phase.', '2025-09-19 21:19:38'),
(1198, 149, '1758521324859', 'Payment is not Refundable.', '2025-09-22 11:49:36'),
(1199, 149, '1758521324859', 'In case we are unable to deliver the committed number of leads, we will refund the cost of the undelivered leads based on the lead cost calculated by dividing the total quotation amount by the number of committed leads.', '2025-09-22 12:39:54'),
(1200, 149, '1758521324859', 'Full payment is required upfront. If the client chooses a 50% advance payment, the remaining 50% must be provided as a post-dated cheque at the time of the initial cash payment.', '2025-09-22 12:39:54'),
(1201, 149, '1758526466908', 'Payment should be compulsory', '2025-09-22 13:04:30'),
(1202, 132, '1758526915072', 'The above given price does not include GST.', '2025-09-22 13:12:25'),
(1203, 132, '1758526915072', 'Payment will be made in 100% advance.', '2025-09-22 13:12:25'),
(1204, 132, '1758526915072', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-22 13:12:25'),
(1205, 149, '1758528039784', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-22 13:30:44'),
(1206, 149, '1758528039784', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-22 13:30:44'),
(1207, 149, '1758528039784', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-22 13:30:44'),
(1208, 149, '1758528039784', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-22 13:30:44'),
(1209, 149, '1758528039784', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-22 13:30:44'),
(1220, 26, '1758543865896', 'Payment will be made in 100% advance.', '2025-09-22 19:19:39'),
(1221, 26, '1758543865896', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-22 19:19:39'),
(1222, 26, '1758543865896', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-22 19:19:39'),
(1223, 149, '1758611941655', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-23 12:49:20'),
(1224, 149, '1758611941655', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-23 12:49:20'),
(1225, 149, '1758611941655', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-23 12:49:20'),
(1226, 149, '1758611941655', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-23 12:49:20'),
(1227, 149, '1758611941655', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-23 12:49:20'),
(1228, 153, '1758617939012', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-23 14:28:59'),
(1229, 153, '1758617939012', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-23 14:28:59'),
(1230, 153, '1758617939012', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-23 14:28:59'),
(1231, 153, '1758617939012', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-23 14:28:59'),
(1232, 153, '1758617939012', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-23 14:28:59'),
(1233, 153, '1758617964774', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-23 14:29:27'),
(1234, 153, '1758617964774', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-23 14:29:27'),
(1235, 153, '1758617964774', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-23 14:29:27'),
(1236, 153, '1758617964774', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-23 14:29:27'),
(1237, 153, '1758617964774', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-23 14:29:27'),
(1238, 154, '1758625556091', 'Payment should be compulsory', '2025-09-23 16:35:55'),
(1239, 155, '1758625658291', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-23 16:37:43'),
(1240, 155, '1758625658291', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-23 16:37:43'),
(1241, 155, '1758625658291', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-23 16:37:43'),
(1242, 155, '1758625658291', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-23 16:37:43'),
(1243, 155, '1758625658291', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-23 16:37:43'),
(1244, 155, '1758625778033', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-23 16:40:43'),
(1245, 155, '1758625778033', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-23 16:40:43'),
(1246, 155, '1758625778033', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-23 16:40:43'),
(1247, 155, '1758625778033', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-23 16:40:43'),
(1248, 155, '1758625778033', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-23 16:40:43'),
(1249, 155, '1758627783979', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-23 17:13:21'),
(1250, 155, '1758627783979', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-23 17:13:21'),
(1251, 155, '1758627783979', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-23 17:13:21'),
(1252, 155, '1758627783979', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-23 17:13:21'),
(1253, 155, '1758627783979', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-23 17:13:21');
INSERT INTO `plan_client_notes` (`id`, `client_id`, `txn_id`, `note_name`, `created_at`) VALUES
(1255, 155, '1758627783979', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-23 17:14:23'),
(1256, 155, '1758627783979', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-23 17:14:23'),
(1257, 155, '1758627783979', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-23 17:14:23'),
(1258, 155, '1758627783979', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-23 17:14:23'),
(1259, 155, '1758627783979', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-23 17:14:23'),
(1260, 155, '1758627783979', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-23 17:32:09'),
(1261, 155, '1758627783979', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-23 17:32:09'),
(1262, 155, '1758627783979', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-23 17:32:09'),
(1263, 155, '1758627783979', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-23 17:32:09'),
(1264, 155, '1758627783979', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-23 17:32:09'),
(1265, 155, '1758627783979', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-23 17:34:24'),
(1266, 155, '1758627783979', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-23 17:34:24'),
(1267, 155, '1758627783979', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-23 17:34:24'),
(1268, 155, '1758627783979', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-23 17:34:24'),
(1269, 155, '1758627783979', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-23 17:34:24'),
(1270, 155, '1758627783979', 'All amount need to be paid in advance.', '2025-09-23 17:35:22'),
(1271, 154, '1758692498775', 'Payment should be compulsory', '2025-09-24 11:11:51'),
(1354, 154, '1758700993840', 'Payment should be compulsory', '2025-09-24 13:33:18'),
(1442, 155, '1758727032599', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-24 20:47:16'),
(1443, 155, '1758727032599', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-24 20:47:16'),
(1444, 155, '1758727032599', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-24 20:47:16'),
(1445, 155, '1758727032599', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-24 20:47:16'),
(1446, 155, '1758727032599', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-24 20:47:16'),
(1447, 155, '1758727032599', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-24 20:47:17'),
(1448, 155, '1758727032599', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-24 20:47:17'),
(1449, 155, '1758727032599', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-24 20:47:17'),
(1450, 155, '1758727032599', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-24 20:47:17'),
(1451, 155, '1758727032599', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-24 20:47:17'),
(1452, 155, '1758727032599', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-24 20:47:19'),
(1453, 155, '1758727032599', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-24 20:47:19'),
(1454, 155, '1758727032599', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-24 20:47:19'),
(1455, 155, '1758727032599', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-24 20:47:19'),
(1456, 155, '1758727032599', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-24 20:47:19'),
(1462, 155, '1758776574367', 'The above given price does not include GST.', '2025-09-25 10:33:14'),
(1463, 155, '1758776574367', 'Required details like credentials and other details are needed to share timely.', '2025-09-25 10:33:14'),
(1464, 155, '1758776574367', 'Payment will be made in 100% advance.', '2025-09-25 10:33:14'),
(1465, 155, '1758776574367', 'We are only responsible for editing the podcasts, not for shooting the podcast videos.', '2025-09-25 10:33:14'),
(1466, 155, '1758776574367', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', '2025-09-25 10:33:14'),
(1467, 155, '1758776574367', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-25 10:33:14'),
(1468, 155, '1758776574367', 'The above given price does not include GST.', '2025-09-25 10:33:27'),
(1469, 155, '1758776574367', 'Required details like credentials and other details are needed to share timely.', '2025-09-25 10:33:27'),
(1470, 155, '1758776574367', 'Payment will be made in 100% advance.', '2025-09-25 10:33:27'),
(1471, 155, '1758776574367', 'We are only responsible for editing the podcasts, not for shooting the podcast videos.', '2025-09-25 10:33:27'),
(1472, 155, '1758776574367', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', '2025-09-25 10:33:27'),
(1473, 155, '1758776574367', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-25 10:33:27'),
(1474, 155, '1758776574367', ' The above given price does not include GST.', '2025-09-25 10:35:05'),
(1475, 155, '1758776574367', 'Required details like credentials and other details are needed to share timely.', '2025-09-25 10:35:05'),
(1476, 155, '1758776574367', 'Payment will be made in 100% advance.', '2025-09-25 10:35:05'),
(1477, 155, '1758776574367', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', '2025-09-25 10:35:05'),
(1478, 155, '1758776574367', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-25 10:35:05'),
(1479, 155, '1758776574367', 'Payment should be compulsory', '2025-09-25 10:35:39'),
(1480, 155, '1758776574367', 'The above given price does not include GST.', '2025-09-25 10:39:07'),
(1481, 155, '1758776574367', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-25 10:39:07'),
(1482, 155, '1758776574367', 'Required details like credentials and other details are needed to share timely.', '2025-09-25 10:39:07'),
(1483, 155, '1758776574367', 'Payment will be made in 100% advance.', '2025-09-25 10:39:07'),
(1484, 155, '1758776574367', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-25 10:39:07'),
(1485, 155, '1758776574367', 'The above given price does not include GST.', '2025-09-25 10:40:58'),
(1486, 155, '1758776574367', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-25 10:40:58'),
(1487, 155, '1758776574367', 'Required details like credentials and other details are needed to share timely.', '2025-09-25 10:40:58'),
(1488, 155, '1758776574367', 'Payment will be made in 100% advance.', '2025-09-25 10:40:58'),
(1489, 155, '1758776574367', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-25 10:40:58'),
(1490, 155, '1758776574367', 'All amount need to be paid in advance.', '2025-09-25 10:41:47'),
(1491, 155, '1758776574367', 'The above given price does not include GST.', '2025-09-25 10:54:57'),
(1492, 155, '1758776574367', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-25 10:54:57'),
(1493, 155, '1758776574367', 'Required details like credentials and other details are needed to share timely.', '2025-09-25 10:54:57'),
(1494, 155, '1758776574367', 'Payment will be made in 100% advance.', '2025-09-25 10:54:57'),
(1495, 155, '1758776574367', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-25 10:54:57'),
(1496, 155, '1758776574367', 'All amount need to be paid in advance.', '2025-09-25 10:55:27'),
(1497, 155, '1758776574367', 'All amount need to be paid in advance.', '2025-09-25 11:30:32'),
(1498, 155, '1758776574367', 'All amount need to be paid in advance.', '2025-09-25 11:30:46'),
(1500, 154, '1758787020554', 'Payment should be compulsory', '2025-09-25 13:27:05'),
(1501, 154, '1758625556091', 'Full payment is required upfront. If the client chooses a 50% advance payment, the remaining 50% must be provided as a post-dated cheque at the time of the initial cash payment.', '2025-09-25 13:57:47'),
(1507, 154, '1758796398957', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-25 16:03:21'),
(1508, 154, '1758796398957', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-25 16:03:21'),
(1509, 154, '1758796398957', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-25 16:03:21'),
(1510, 154, '1758796398957', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-25 16:03:21'),
(1511, 154, '1758796398957', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-25 16:03:21'),
(1522, 102, '1758804907336', 'This Plan is only for 15 days.', '2025-09-25 18:25:11'),
(1523, 102, '1758804907336', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-25 18:29:16'),
(1524, 102, '1758804907336', 'Required details like credentials and other details are needed to share timely.', '2025-09-25 18:29:16'),
(1525, 102, '1758804907336', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-09-25 18:29:16'),
(1532, 158, '1758796172840', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-26 12:53:03'),
(1533, 158, '1758796172840', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 12:53:03'),
(1534, 158, '1758796172840', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-26 12:53:03'),
(1535, 158, '1758796172840', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-26 12:53:03'),
(1536, 158, '1758796172840', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 12:53:03'),
(1558, 155, '1758874979220', 'This plan will only valid for one month.', '2025-09-26 14:23:58'),
(1559, 155, '1758874979220', 'Facebook, Instagram, Meta Business Suit & Meta Ad Account creation charges will apply for basic plan users if the page is not created yet.', '2025-09-26 14:23:58'),
(1560, 158, '1758796172840', 'Payment is not Refundable.', '2025-09-26 16:45:06'),
(1561, 155, '1758898034373', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 20:20:25'),
(1562, 155, '1758898034373', 'We are only responsible for editing the podcasts, not for shooting the podcast videos.', '2025-09-26 20:20:25'),
(1563, 155, '1758898034373', 'Full payment is required upfront. If the client chooses a 50% advance payment, the remaining 50% must be provided as a post-dated cheque at the time of the initial cash payment.', '2025-09-26 20:20:25'),
(1564, 155, '1758898034373', 'We are committed to delivering the agreed number of leads as given in the above quotation.', '2025-09-26 20:20:25'),
(1565, 155, '1758898034373', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 20:20:25'),
(1566, 155, '1758898034373', 'We are only responsible for editing the podcasts, not for shooting the podcast videos.', '2025-09-26 20:20:25'),
(1567, 155, '1758898034373', 'Full payment is required upfront. If the client chooses a 50% advance payment, the remaining 50% must be provided as a post-dated cheque at the time of the initial cash payment.', '2025-09-26 20:20:25'),
(1568, 155, '1758898034373', 'We are committed to delivering the agreed number of leads as given in the above quotation.', '2025-09-26 20:20:25'),
(1569, 155, '1758898269960', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-26 20:21:14'),
(1570, 155, '1758898269960', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 20:21:14'),
(1571, 155, '1758898269960', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-26 20:21:14'),
(1572, 155, '1758898269960', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-26 20:21:14'),
(1573, 155, '1758898269960', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:21:14'),
(1574, 155, '1758898288612', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-26 20:21:31'),
(1575, 155, '1758898288612', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 20:21:31'),
(1576, 155, '1758898288612', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-26 20:21:31'),
(1577, 155, '1758898288612', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-26 20:21:31'),
(1578, 155, '1758898288612', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:21:31'),
(1594, 161, '1758898637748', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-26 20:27:22'),
(1595, 161, '1758898637748', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 20:27:22'),
(1596, 161, '1758898637748', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-26 20:27:22'),
(1597, 161, '1758898637748', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-26 20:27:22'),
(1598, 161, '1758898637748', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:27:22'),
(1599, 161, '1758898637748', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-26 20:27:37'),
(1600, 161, '1758898637748', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 20:27:37'),
(1601, 161, '1758898637748', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-26 20:27:37'),
(1602, 161, '1758898637748', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-26 20:27:37'),
(1603, 161, '1758898637748', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:27:37'),
(1604, 161, '1758898637748', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-26 20:27:42'),
(1605, 161, '1758898637748', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 20:27:42'),
(1606, 161, '1758898637748', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-26 20:27:42'),
(1607, 161, '1758898637748', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-26 20:27:42'),
(1608, 161, '1758898637748', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:27:42'),
(1655, 161, '1758898637748', 'The above given price does not include GST.', '2025-09-26 20:41:31'),
(1656, 161, '1758898637748', 'Required details like credentials and other details are needed to share timely.', '2025-09-26 20:41:31'),
(1657, 161, '1758898637748', 'Payment will be made in 100% advance.', '2025-09-26 20:41:31'),
(1658, 161, '1758898637748', 'We are only responsible for editing the podcasts, not for shooting the podcast videos.', '2025-09-26 20:41:31'),
(1659, 161, '1758898637748', 'The service amount will not be refunded under any circumstances; however, the full value of services can be delivered in place of the remaining service amount.', '2025-09-26 20:41:31'),
(1660, 161, '1758898637748', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:41:31'),
(1661, 161, '1758899504082', 'The above given price does not include GST.', '2025-09-26 20:41:47'),
(1662, 161, '1758899504082', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-26 20:41:47'),
(1663, 161, '1758899504082', 'Required details like credentials and other details are needed to share timely.', '2025-09-26 20:41:47'),
(1664, 161, '1758899504082', 'Payment will be made in 100% advance.', '2025-09-26 20:41:47'),
(1665, 161, '1758899504082', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:41:47'),
(1666, 161, '1758899518290', 'Payment should be compulsory', '2025-09-26 20:42:06'),
(1667, 161, '1758899518290', 'Payment should be compulsory', '2025-09-26 20:42:12'),
(1668, 161, '1758899518290', 'The above given price does not include GST.', '2025-09-26 20:42:17'),
(1669, 161, '1758899518290', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-09-26 20:42:17'),
(1670, 161, '1758899518290', 'Required details like credentials and other details are needed to share timely.', '2025-09-26 20:42:17'),
(1671, 161, '1758899518290', 'Payment will be made in 100% advance.', '2025-09-26 20:42:17'),
(1672, 161, '1758899518290', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:42:17'),
(1673, 161, '1758899577875', 'Payment should be compulsory', '2025-09-26 20:43:09'),
(1674, 161, '1758899577875', 'Payment should be compulsory', '2025-09-26 20:43:16'),
(1675, 161, '1758899577875', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-26 20:43:20'),
(1676, 161, '1758899577875', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 20:43:20'),
(1677, 161, '1758899577875', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-26 20:43:20'),
(1678, 161, '1758899577875', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-26 20:43:20'),
(1679, 161, '1758899577875', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:43:20'),
(1680, 161, '1758900126891', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-26 20:53:46'),
(1681, 161, '1758900126891', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-26 20:53:46'),
(1682, 161, '1758900126891', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-26 20:53:46'),
(1683, 161, '1758900126891', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-26 20:53:46'),
(1684, 161, '1758900126891', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-26 20:53:46'),
(1685, 161, '1758970268204', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-09-27 16:21:18'),
(1686, 161, '1758970268204', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-09-27 16:21:18'),
(1687, 161, '1758970268204', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-09-27 16:21:18'),
(1688, 161, '1758970268204', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-09-27 16:21:18'),
(1689, 161, '1758970268204', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-09-27 16:21:18'),
(1717, 161, '1759301619585', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-01 12:23:41'),
(1718, 161, '1759301619585', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-01 12:23:41'),
(1719, 161, '1759301619585', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-01 12:23:41'),
(1720, 161, '1759301619585', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-01 12:23:41'),
(1721, 161, '1759301619585', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-01 12:23:41'),
(1722, 164, '1759309683267', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-01 14:41:48'),
(1723, 164, '1759309683267', 'Required details like credentials and other details are needed to share timely.', '2025-10-01 14:41:48'),
(1725, 164, '1759309683267', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-01 15:03:19'),
(1726, 164, '1759309683267', 'The above given price does not include GST.', '2025-10-01 15:03:28'),
(1727, 154, '1759314583613', 'Payment should be compulsory', '2025-10-01 15:59:57'),
(1728, 154, '1759314583613', 'Payment should be compulsory', '2025-10-01 15:59:57'),
(1729, 154, '1759314583613', 'Payment should be compulsory', '2025-10-01 15:59:57'),
(1730, 154, '1759314583613', 'Payment should be compulsory', '2025-10-01 16:02:24'),
(1731, 154, '1759314583613', 'Payment should be compulsory', '2025-10-01 16:02:24'),
(1732, 154, '1759314583613', 'Payment should be compulsory', '2025-10-01 16:02:24'),
(1736, 154, '1759315321218', 'Payment should be compulsory', '2025-10-01 16:12:07'),
(1737, 154, '1759315321218', 'Payment should be compulsory', '2025-10-01 16:12:07'),
(1738, 154, '1759315321218', 'Payment should be compulsory', '2025-10-01 16:12:07'),
(1739, 154, '1759315321218', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-01 16:22:14'),
(1741, 154, '1759316470881', 'Payment should be compulsory', '2025-10-01 16:31:12'),
(1742, 154, '1759316470881', 'Payment should be compulsory', '2025-10-01 16:31:12'),
(1743, 154, '1759316470881', 'Payment should be compulsory', '2025-10-01 16:31:12'),
(1744, 161, '1759317223790', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-01 16:43:46'),
(1745, 161, '1759317223790', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-01 16:43:46'),
(1746, 161, '1759317223790', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-01 16:43:46'),
(1747, 161, '1759317223790', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-01 16:43:46'),
(1748, 161, '1759317223790', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-01 16:43:46'),
(1749, 161, '1759317223790', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-01 16:43:50'),
(1750, 161, '1759317223790', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-01 16:43:50'),
(1751, 161, '1759317223790', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-01 16:43:50'),
(1752, 161, '1759317223790', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-01 16:43:50'),
(1753, 161, '1759317223790', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-01 16:43:50'),
(1754, 161, '1759317223790', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-01 16:46:27'),
(1755, 161, '1759317223790', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-01 16:46:27'),
(1756, 161, '1759317223790', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-01 16:46:27'),
(1757, 161, '1759317223790', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-01 16:46:27'),
(1758, 161, '1759317223790', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-01 16:46:27'),
(1759, 32, '1759317441263', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-01 16:48:09'),
(1760, 32, '1759317441263', 'Payment will be made in 100% advance.', '2025-10-01 16:48:09'),
(1761, 32, '1759317441263', 'The above given price does not include GST.', '2025-10-01 16:48:09'),
(1762, 161, '1759317556690', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-01 16:49:23'),
(1763, 161, '1759317556690', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-01 16:49:23'),
(1764, 161, '1759317556690', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-01 16:49:23'),
(1765, 161, '1759317556690', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-01 16:49:23'),
(1766, 161, '1759317556690', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-01 16:49:23'),
(1777, 154, '1759319472927', 'Payment should be compulsory', '2025-10-01 17:21:15'),
(1778, 154, '1759319472927', 'Payment should be compulsory', '2025-10-01 17:21:15'),
(1779, 154, '1759319472927', 'Payment should be compulsory', '2025-10-01 17:21:15'),
(1780, 166, '1759325284316', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-01 18:58:07'),
(1781, 166, '1759325284316', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-01 18:58:07'),
(1782, 166, '1759325284316', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-01 18:58:07'),
(1783, 166, '1759325284316', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-01 18:58:07'),
(1784, 166, '1759325284316', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-01 18:58:07'),
(1785, 166, '1759325302604', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-01 18:58:25'),
(1786, 166, '1759325302604', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-01 18:58:25'),
(1787, 166, '1759325302604', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-01 18:58:25'),
(1788, 166, '1759325302604', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-01 18:58:25'),
(1789, 166, '1759325302604', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-01 18:58:25'),
(1790, 165, '1759329129281', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-01 20:10:14'),
(1791, 165, '1759329129281', 'Required details like credentials and other details are needed to share timely.', '2025-10-01 20:10:14'),
(1792, 165, '1759329129281', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-01 20:10:14'),
(1793, 165, '1759329129281', 'Payment will be made in 100% advance.', '2025-10-01 20:10:14'),
(1794, 165, '1759329129281', 'The above given price does not include GST.', '2025-10-01 20:10:14'),
(1810, 161, '1759475367222', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-03 12:44:35'),
(1811, 161, '1759475367222', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-03 12:44:35'),
(1812, 161, '1759475367222', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-03 12:44:35'),
(1813, 161, '1759475367222', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-03 12:44:35'),
(1814, 161, '1759475367222', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-03 12:44:35'),
(1820, 161, '1759475686521', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-03 12:49:04'),
(1821, 161, '1759475686521', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-03 12:49:04'),
(1822, 161, '1759475686521', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-03 12:49:04'),
(1823, 161, '1759475686521', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-03 12:49:04'),
(1827, 167, '1759483173961', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-03 14:51:51'),
(1828, 167, '1759483173961', 'Required details like credentials and other details are needed to share timely.', '2025-10-03 14:51:51'),
(1829, 167, '1759483173961', 'The above given price does not include GST.', '2025-10-03 14:51:51'),
(1830, 167, '1759483173961', 'Payment will be made in 100% advance.', '2025-10-03 14:51:51'),
(1831, 167, '1759483173961', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-03 14:51:51'),
(1832, 166, '1759477676259', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-03 15:26:53'),
(1833, 166, '1759477676259', 'Required details like credentials and other details are needed to share timely.', '2025-10-03 15:26:53'),
(1834, 166, '1759477676259', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-03 15:26:53'),
(1835, 166, '1759477676259', 'The above given price does not include GST.', '2025-10-03 15:26:53'),
(1836, 166, '1759477676259', 'Payment will be made in 100% advance.', '2025-10-03 15:26:53'),
(1837, 161, '1759472327491', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-03 19:12:40'),
(1838, 161, '1759472327491', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-10-03 19:12:40'),
(1839, 161, '1759472327491', 'Full payment is required upfront. If the client chooses a 50% advance payment, the remaining 50% must be provided as a post-dated cheque at the time of the initial cash payment.', '2025-10-03 19:12:40'),
(1840, 161, '1759472327491', 'In case we are unable to deliver the committed number of leads, we will refund the cost of the undelivered leads based on the lead cost calculated by dividing the total quotation amount by the number of committed leads.', '2025-10-03 19:12:40'),
(1841, 161, '1759472327491', 'While we are managing your social media page, no other person or agency should work on it during that period. However, if someone else is also required to work on the same, we will create a separate page for our digital marketing activities.', '2025-10-03 19:12:40'),
(1842, 154, '1759558354057', 'Payment should be compulsory', '2025-10-04 11:42:40'),
(1843, 154, '1759558354057', 'Payment should be compulsory', '2025-10-04 11:42:40'),
(1844, 154, '1759558354057', 'Payment should be compulsory', '2025-10-04 11:42:40'),
(1845, 154, '1759558354057', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-04 11:43:31'),
(1846, 154, '1759560771577', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-04 12:22:54'),
(1847, 154, '1759560771577', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-04 12:22:54'),
(1848, 154, '1759560771577', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-04 12:22:54'),
(1849, 154, '1759560771577', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-04 12:22:54'),
(1850, 154, '1759560771577', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-04 12:22:54'),
(1851, 154, '1759562564266', 'Payment should be compulsory', '2025-10-04 12:52:47'),
(1854, 154, '1759562564266', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-04 12:53:40'),
(1855, 154, '1759565473560', 'Payment should be compulsory', '2025-10-04 13:41:19'),
(1856, 154, '1759565473560', 'Payment should be compulsory', '2025-10-04 13:41:19'),
(1857, 154, '1759565473560', 'Payment should be compulsory', '2025-10-04 13:41:19'),
(1858, 154, '1759566090025', 'Payment should be compulsory', '2025-10-04 13:51:33'),
(1859, 154, '1759566090025', 'Payment should be compulsory', '2025-10-04 13:51:33'),
(1860, 154, '1759566090025', 'Payment should be compulsory', '2025-10-04 13:51:33'),
(1866, 154, '1759570156443', 'Payment should be compulsory', '2025-10-04 14:59:19'),
(1867, 154, '1759570156443', 'Payment should be compulsory', '2025-10-04 14:59:19'),
(1868, 154, '1759570156443', 'Payment should be compulsory', '2025-10-04 14:59:19'),
(1869, 154, '1759570157464', 'Payment should be compulsory', '2025-10-04 14:59:20'),
(1870, 154, '1759570157464', 'Payment should be compulsory', '2025-10-04 14:59:20'),
(1871, 154, '1759570157464', 'Payment should be compulsory', '2025-10-04 14:59:20'),
(1872, 154, '1759570157723', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1873, 154, '1759570157723', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1874, 154, '1759570157723', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1875, 154, '1759570158061', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1876, 154, '1759570158061', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1877, 154, '1759570158061', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1878, 154, '1759570158374', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1879, 154, '1759570158374', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1880, 154, '1759570158374', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1881, 154, '1759570158448', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1882, 154, '1759570158448', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1883, 154, '1759570158448', 'Payment should be compulsory', '2025-10-04 14:59:21'),
(1884, 154, '1759570158323', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1885, 154, '1759570158323', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1886, 154, '1759570158323', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1887, 154, '1759570157843', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1888, 154, '1759570157843', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1889, 154, '1759570157843', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1890, 154, '1759570159311', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1891, 154, '1759570159311', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1892, 154, '1759570159311', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1893, 154, '1759570159230', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1894, 154, '1759570159230', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1895, 154, '1759570159230', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1896, 154, '1759570159168', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1897, 154, '1759570159168', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1898, 154, '1759570159168', 'Payment should be compulsory', '2025-10-04 14:59:22'),
(1899, 154, '1759570159593', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1900, 154, '1759570159593', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1901, 154, '1759570159593', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1902, 154, '1759570159619', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1903, 154, '1759570159619', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1904, 154, '1759570159619', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1905, 154, '1759570158809', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1906, 154, '1759570158809', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1907, 154, '1759570158809', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1908, 154, '1759570159766', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1909, 154, '1759570159766', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1910, 154, '1759570159766', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1911, 154, '1759570158844', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1912, 154, '1759570158844', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1913, 154, '1759570158844', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1914, 154, '1759570158992', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1915, 154, '1759570158992', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1916, 154, '1759570158992', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1917, 154, '1759570159590', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1918, 154, '1759570159590', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1919, 154, '1759570159590', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1920, 154, '1759570159901', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1921, 154, '1759570159901', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1922, 154, '1759570159901', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1923, 154, '1759570159765', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1924, 154, '1759570159765', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1925, 154, '1759570159765', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1926, 154, '1759570159666', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1927, 154, '1759570159666', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1928, 154, '1759570159666', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1929, 154, '1759570159858', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1930, 154, '1759570159858', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1931, 154, '1759570159858', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1932, 154, '1759570158991', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1933, 154, '1759570158991', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1934, 154, '1759570158991', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1935, 154, '1759570159309', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1936, 154, '1759570159309', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1937, 154, '1759570159309', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1938, 154, '1759570159344', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1939, 154, '1759570159344', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1940, 154, '1759570159344', 'Payment should be compulsory', '2025-10-04 14:59:23'),
(1941, 168, '1759570474612', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-04 15:15:51'),
(1942, 168, '1759570474612', 'Required details like credentials and other details are needed to share timely.', '2025-10-04 15:15:51'),
(1943, 168, '1759570474612', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-04 15:15:51'),
(1944, 168, '1759570474612', 'Payment will be made in 100% advance.', '2025-10-04 15:15:51'),
(1945, 168, '1759570474612', 'The above given price does not include GST.', '2025-10-04 15:15:51'),
(1949, 161, '1759475367222', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-10-04 18:55:50'),
(1950, 161, '1759475367222', 'Full payment is required upfront. If the client chooses a 50% advance payment, the remaining 50% must be provided as a post-dated cheque at the time of the initial cash payment.', '2025-10-04 18:55:50'),
(1951, 161, '1759475367222', 'In case we are unable to deliver the committed number of leads, we will refund the cost of the undelivered leads based on the lead cost calculated by dividing the total quotation amount by the number of committed leads.', '2025-10-04 18:55:50'),
(1953, 161, '1759475686521', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-04 19:15:22'),
(1955, 161, '1759475686521', 'Payment is not Refundable.', '2025-10-04 19:25:05'),
(1966, 171, '1759742629229', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-06 14:53:51'),
(1967, 171, '1759742629229', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-06 14:53:51'),
(1968, 171, '1759742629229', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-06 14:53:51'),
(1969, 171, '1759742629229', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-06 14:53:51'),
(1970, 171, '1759742629229', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-06 14:53:51'),
(1983, 172, '1759766835193', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-06 22:06:53'),
(1984, 172, '1759766835193', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-06 22:06:53'),
(1985, 172, '1759766835193', 'The above given price does not include GST.', '2025-10-06 22:06:53'),
(1986, 172, '1759766835193', 'Required details like credentials and other details are needed to share timely.', '2025-10-06 22:06:53'),
(1987, 172, '1759766835193', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-10-06 22:06:53'),
(1993, 170, '1759826420473', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-07 14:10:29'),
(1994, 170, '1759826420473', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-07 14:10:29'),
(1995, 170, '1759826420473', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-07 14:10:29'),
(1996, 170, '1759826420473', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-07 14:10:29'),
(1997, 170, '1759826420473', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-07 14:10:29'),
(1998, 171, '1759830679237', 'Facebook, Instagram & Meta business suit creation charges will apply if the page is not created yet.', '2025-10-14 17:26:42'),
(1999, 171, '1759830679237', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-07 15:21:21'),
(2001, 171, '1759830679237', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-07 15:21:21'),
(2002, 171, '1759830679237', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-07 15:21:21');
INSERT INTO `plan_client_notes` (`id`, `client_id`, `txn_id`, `note_name`, `created_at`) VALUES
(2008, 174, '1759905740641', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-08 12:26:29'),
(2009, 174, '1759905740641', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-08 12:26:29'),
(2010, 174, '1759905740641', 'Required details like credentials and other details are needed to share timely.', '2025-10-08 12:26:29'),
(2011, 174, '1759905740641', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-08 12:26:29'),
(2012, 174, '1759905740641', 'The above given price does not include GST.', '2025-10-08 12:26:29'),
(2013, 170, '1759925301687', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-08 17:38:41'),
(2014, 170, '1759925301687', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-08 17:38:41'),
(2015, 170, '1759925301687', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-08 17:38:41'),
(2016, 170, '1759925301687', 'The above given price does not include GST.', '2025-10-08 17:38:41'),
(2018, 170, '1759925301687', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-10-08 17:39:10'),
(2021, 170, '1759826420473', 'Payment is not Refundable.', '2025-10-08 17:57:39'),
(2023, 175, '1760177697723', 'Required details like credentials and other details are needed to share timely.', '2025-10-11 15:52:28'),
(2024, 175, '1760177697723', 'The above given price does not include GST.', '2025-10-11 15:52:28'),
(2025, 175, '1760177697723', 'Payment will be made in 100% advance.', '2025-10-11 15:52:28'),
(2026, 175, '1760177697723', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-10-11 15:52:28'),
(2027, 175, '1760177697723', 'SEO takes time (3–6 months to show results).', '2025-10-11 15:52:28'),
(2028, 175, '1760177697723', 'While we are managing your social media page, no other person or agency should work on it during that period. However, if someone else is also required to work on the same, we will create a separate page for our digital marketing activities.', '2025-10-11 15:52:28'),
(2029, 175, '1760177697723', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-11 15:52:28'),
(2030, 175, '1760177697723', 'Model shoot charges will vary according to the models.', '2025-10-11 15:52:28'),
(2031, 176, '1760181425853', 'Required details like credentials and other details are needed to share timely.', '2025-10-11 16:55:46'),
(2032, 176, '1760181425853', 'The above given price does not include GST.', '2025-10-11 16:55:46'),
(2033, 176, '1760181425853', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-10-11 16:55:46'),
(2034, 176, '1760181425853', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-11 16:55:46'),
(2035, 176, '1760181425853', 'SEO takes time (3–6 months to show results).', '2025-10-11 16:55:46'),
(2036, 176, '1760181425853', 'While we are managing your social media page, no other person or agency should work on it during that period. However, if someone else is also required to work on the same, we will create a separate page for our digital marketing activities.', '2025-10-11 16:55:46'),
(2037, 176, '1760181425853', 'Payment will be made in 100% advance.', '2025-10-11 16:55:46'),
(2038, 173, '1759837469691', 'Facebook, Instagram, Meta Ad & Business Suit creation charges will apply if the page is not created yet.', '2025-10-14 16:33:47'),
(2044, 173, '1759837469691', 'Page and Meta account creation charges will apply. However, since this is the client’s initial business stage this month, the client is granted the option to defer payment until the next month.', '2025-10-14 17:00:28'),
(2045, 171, '1759830679237', 'Page and Meta account creation charges will apply. However, since this is the client’s initial business stage this month, the client is granted the option to defer payment until the next month.', '2025-10-14 17:26:04'),
(2046, 173, '1759837469691', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-14 19:32:41'),
(2047, 173, '1759837469691', 'Required details like credentials and other details are needed to share timely.', '2025-10-14 19:32:41'),
(2048, 173, '1759837469691', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-14 19:32:41'),
(2049, 173, '1759837469691', 'The discount only applies to the service amount and not to the advertising budget.', '2025-10-14 19:32:41'),
(2050, 173, '1759837469691', 'The above given price does not include GST.', '2025-10-14 19:32:41'),
(2051, 154, '1760694703806', 'Payment should be compulsory', '2025-10-17 15:21:53'),
(2052, 154, '1760694703806', 'Payment should be compulsory', '2025-10-17 15:21:53'),
(2053, 154, '1760694703806', 'Payment should be compulsory', '2025-10-17 15:21:53'),
(2054, 177, '1760695661673', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-17 15:37:45'),
(2055, 177, '1760695661673', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-17 15:37:45'),
(2056, 177, '1760695661673', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-17 15:37:45'),
(2057, 177, '1760695661673', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-17 15:37:45'),
(2058, 177, '1760695661673', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-17 15:37:45'),
(2060, 177, '1760695661673', 'Required details like credentials and other details are needed to share timely.', '2025-10-17 15:38:59'),
(2061, 177, '1760698694697', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-17 16:28:19'),
(2062, 177, '1760698694697', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-17 16:28:19'),
(2063, 177, '1760698694697', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-17 16:28:19'),
(2064, 177, '1760698694697', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-17 16:28:19'),
(2065, 177, '1760698694697', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-17 16:28:19'),
(2066, 177, '1760700233504', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-17 16:53:55'),
(2067, 177, '1760700233504', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-17 16:53:55'),
(2068, 177, '1760700233504', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-17 16:53:55'),
(2069, 177, '1760700233504', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-17 16:53:55'),
(2070, 177, '1760700233504', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-17 16:53:55'),
(2071, 178, '1760702305547', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-17 17:28:29'),
(2072, 178, '1760702305547', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-17 17:28:29'),
(2073, 178, '1760702305547', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-17 17:28:29'),
(2074, 178, '1760702305547', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-17 17:28:29'),
(2075, 178, '1760702305547', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-17 17:28:29'),
(2081, 177, '1760704338009', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-17 18:02:19'),
(2082, 177, '1760704338009', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-17 18:02:19'),
(2083, 177, '1760704338009', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-17 18:02:19'),
(2084, 177, '1760704338009', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-17 18:02:19'),
(2085, 177, '1760704338009', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-17 18:02:19'),
(2094, 181, '1760705060926', 'Payment is not Refundable.', '2025-10-17 18:33:56'),
(2095, 181, '1760705060926', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-17 18:33:56'),
(2096, 181, '1760705060926', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-17 18:33:56'),
(2097, 181, '1760705060926', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-17 18:33:56'),
(2098, 181, '1760705060926', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-17 18:33:56'),
(2099, 181, '1760705060926', 'The above given price does not include GST.', '2025-10-17 18:33:56'),
(2100, 181, '1760705060926', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-17 18:33:56'),
(2101, 181, '1760705060926', 'SEO takes time (3–6 months to show results).', '2025-10-17 18:33:56'),
(2102, 182, '1761041628173', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-21 15:43:51'),
(2103, 182, '1761041628173', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-21 15:43:51'),
(2104, 182, '1761041628173', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-21 15:43:51'),
(2105, 182, '1761041628173', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-21 15:43:51'),
(2106, 182, '1761041628173', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-21 15:43:51'),
(2107, 182, '1761048201959', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-21 17:33:24'),
(2108, 182, '1761048201959', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-21 17:33:24'),
(2109, 182, '1761048201959', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-21 17:33:24'),
(2110, 182, '1761048201959', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-21 17:33:24'),
(2111, 182, '1761048201959', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-21 17:33:24'),
(2112, 142, '1761224847040', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-23 21:34:38'),
(2113, 142, '1761224847040', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-23 21:34:38'),
(2114, 142, '1761224847040', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-23 21:34:38'),
(2115, 142, '1761224847040', 'The above given price does not include GST.', '2025-10-23 21:34:38'),
(2116, 142, '1761224847040', 'Model shoot charges will vary according to the models.', '2025-10-23 21:34:38'),
(2117, 182, '1761393392842', 'The above given price does not include GST.', '2025-10-25 17:27:21'),
(2118, 182, '1761393392842', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-25 17:27:21'),
(2119, 182, '1761393392842', 'Required details like credentials and other details are needed to share timely.', '2025-10-25 17:27:21'),
(2120, 182, '1761393392842', 'Payment will be made in 100% advance.', '2025-10-25 17:27:21'),
(2121, 182, '1761393392842', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-25 17:27:21'),
(2122, 182, '1761393392842', 'Payment will be made in 100% advance.', '2025-10-25 17:27:21'),
(2123, 182, '1761393392842', 't', '2025-10-25 17:27:21'),
(2139, 183, '1761396112237', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-25 18:11:54'),
(2140, 183, '1761396112237', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-25 18:11:54'),
(2141, 183, '1761396112237', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-25 18:11:54'),
(2142, 183, '1761396112237', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-25 18:11:54'),
(2143, 183, '1761396112237', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-25 18:11:54'),
(2145, 183, '1761396155302', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-25 18:12:38'),
(2147, 183, '1761396155302', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-25 18:12:38'),
(2148, 183, '1761396155302', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-25 18:12:38'),
(2150, 183, '1761396211822', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-25 18:13:34'),
(2152, 183, '1761396211822', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-25 18:13:34'),
(2153, 183, '1761396211822', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-25 18:13:34'),
(2154, 183, '1761396155302', 'Required details like credentials and other details are needed to share timely.', '2025-10-25 18:18:28'),
(2155, 183, '1761396211822', 'Required details like credentials and other details are needed to share timely.', '2025-10-25 18:19:10'),
(2156, 183, '1761396112237', 'Required details like credentials and other details are needed to share timely.', '2025-10-25 18:19:22'),
(2157, 183, '1761398089356', 'Payment will be made in 100% advance.', '2025-10-25 18:49:12'),
(2158, 183, '1761398089356', 'An annual maintenance fee of ₹10,000 will be applicable starting after the completion of the first year.', '2025-10-25 18:49:12'),
(2159, 183, '1761398089356', 'Domain registration and hosting expenses shall be borne by the client.', '2025-10-25 18:49:12'),
(2160, 183, '1761398089356', 'Any additional modifications, enhancements, or new feature requests in the software will incur extra charges, which shall be paid by the client.', '2025-10-25 18:53:54'),
(2161, 142, '1761551690055', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-27 13:36:42'),
(2162, 142, '1761551690055', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-27 13:36:42'),
(2163, 142, '1761551690055', 'Required details like credentials and other details are needed to share timely.', '2025-10-27 13:36:42'),
(2164, 142, '1761551690055', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-10-27 13:36:42'),
(2165, 142, '1761551690055', 'Model shoot charges will vary according to the models.', '2025-10-27 13:36:42'),
(2166, 142, '1761551690055', 'The above given price does not include GST.', '2025-10-27 13:36:42'),
(2167, 184, '1761643201847', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-28 14:50:05'),
(2168, 184, '1761643201847', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-28 14:50:05'),
(2169, 184, '1761643201847', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-28 14:50:05'),
(2170, 184, '1761643201847', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-28 14:50:05'),
(2171, 184, '1761643201847', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-28 14:50:05'),
(2172, 184, '1761643479078', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-28 14:54:42'),
(2173, 184, '1761643479078', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-28 14:54:42'),
(2174, 184, '1761643479078', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-28 14:54:42'),
(2175, 184, '1761643479078', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-28 14:54:42'),
(2176, 184, '1761643479078', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-28 14:54:42'),
(2179, 182, '1761735657154', 'hh', '2025-10-29 16:31:08'),
(2184, 182, '1761735948586', 'k', '2025-10-29 16:35:54'),
(2185, 182, '1761736808124', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-29 16:50:11'),
(2186, 182, '1761736808124', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-29 16:50:11'),
(2187, 182, '1761736808124', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-29 16:50:11'),
(2188, 182, '1761736808124', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-29 16:50:11'),
(2189, 182, '1761736808124', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-29 16:50:11'),
(2190, 182, '1761735675740', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-10-29 16:50:43'),
(2191, 182, '1761735675740', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-10-29 16:50:43'),
(2192, 182, '1761735675740', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-10-29 16:50:43'),
(2193, 182, '1761735675740', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-29 16:50:43'),
(2194, 182, '1761735675740', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-10-29 16:50:43'),
(2200, 182, '1761735686251', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-10-29 17:05:10'),
(2201, 136, '1761753813151', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-29 21:35:42'),
(2202, 136, '1761753813151', 'SEO takes time (3–6 months to show results).', '2025-10-29 21:35:42'),
(2203, 185, '1761838405341', 'The amount paid is non-refundable and will be adjusted solely against the services provided.', '2025-10-30 21:04:29'),
(2204, 185, '1761838405341', 'Any additional modifications, enhancements, or new feature requests in the software will incur extra charges, which shall be paid by the client.', '2025-10-30 21:04:29'),
(2205, 182, '1761993901498', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-01 16:15:06'),
(2206, 182, '1761993901498', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-01 16:15:06'),
(2207, 182, '1761993901498', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-11-01 16:15:06'),
(2208, 182, '1761993901498', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-01 16:15:06'),
(2209, 182, '1761993901498', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-11-01 16:15:06'),
(2210, 181, '1762168621656', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-03 16:49:28'),
(2211, 181, '1762168621656', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-03 16:49:28'),
(2212, 181, '1762168621656', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 16:49:43'),
(2213, 181, '1762168621656', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-03 16:49:28'),
(2214, 181, '1762168621656', 'The above given price does not include GST.', '2025-11-03 16:49:28'),
(2215, 181, '1762168621656', 'The ad will run for a total of seven days with this specified budget.', '2025-11-03 16:54:02'),
(2216, 134, '1762169270249', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-03 17:03:46'),
(2217, 134, '1762169270249', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-03 17:03:46'),
(2218, 134, '1762169270249', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-03 17:03:46'),
(2219, 134, '1762169270249', 'Additional charges will apply for posting any extra creatives provided or generated by the client.', '2025-11-03 17:09:39'),
(2221, 134, '1762239197203', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-04 12:23:26'),
(2222, 134, '1762239197203', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-11-04 12:23:26'),
(2223, 134, '1762239197203', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-04 12:23:26'),
(2224, 134, '1762239197203', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-11-04 12:23:26'),
(2225, 134, '1762239459456', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-04 12:46:12'),
(2226, 134, '1762239459456', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-04 12:46:12'),
(2227, 134, '1762239459456', 'Additional charges will apply for posting any extra creatives provided or generated by the client.', '2025-11-04 12:46:12'),
(2231, 126, '1762257206910', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-04 17:23:29'),
(2232, 126, '1762257206910', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-11-04 17:23:29'),
(2233, 126, '1762257206910', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-04 19:12:20'),
(2234, 126, '1762257206910', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-04 19:12:20'),
(2235, 126, '1762257206910', 'Model shoot charges will vary according to the models.', '2025-11-04 19:12:20'),
(2236, 186, '1762268053237', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-04 20:25:20'),
(2237, 186, '1762268053237', 'Payment will be made in 100% advance.', '2025-11-04 20:25:20'),
(2238, 186, '1762268053237', 'The above given price does not include GST.', '2025-11-04 20:25:20'),
(2239, 168, '1762323639525', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-05 11:50:43'),
(2240, 168, '1762323639525', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-05 11:50:43'),
(2241, 168, '1762323639525', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-11-05 11:50:43'),
(2242, 168, '1762323639525', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-05 11:50:43'),
(2243, 168, '1762323639525', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-11-05 11:50:43'),
(2244, 168, '1762323652979', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-05 11:50:57'),
(2245, 168, '1762323652979', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-05 11:50:57'),
(2246, 168, '1762323652979', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-11-05 11:50:57'),
(2247, 168, '1762323652979', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-05 11:50:57'),
(2248, 168, '1762323652979', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-11-05 11:50:57'),
(2249, 168, '1762323667122', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-05 11:51:10'),
(2250, 168, '1762323667122', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-05 11:51:10'),
(2251, 168, '1762323667122', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-11-05 11:51:10'),
(2252, 168, '1762323667122', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-05 11:51:10'),
(2253, 168, '1762323667122', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-11-05 11:51:10'),
(2254, 187, '1762337671589', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-05 15:44:46'),
(2256, 187, '1762337671589', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-05 15:51:12'),
(2257, 187, '1762337671589', 'The above given price does not include GST.', '2025-11-05 15:51:12'),
(2258, 187, '1762337671589', 'Required details like credentials and other details are needed to share timely.', '2025-11-05 15:51:12'),
(2259, 187, '1762337671589', 'Payment will be made in 100% advance.', '2025-11-05 15:51:12'),
(2260, 187, '1762337671589', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-05 15:51:12'),
(2262, 187, '1762337671589', 'While we are managing your social media page, no other person or agency should work on it during that period. However, if someone else is also required to work on the same, we will create a separate page for our digital marketing activities.', '2025-11-05 15:51:12'),
(2267, 188, '1762350626487', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-05 19:29:19'),
(2268, 188, '1762350626487', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-05 19:29:19'),
(2269, 188, '1762350626487', 'Required details like credentials and other details are needed to share timely.', '2025-11-05 19:29:19'),
(2270, 188, '1762350626487', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-05 19:29:19'),
(2271, 175, '1760177697723', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-06 10:59:53'),
(2272, 175, '1760177697723', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-06 10:59:53'),
(2273, 175, '1760177697723', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-11-06 10:59:53'),
(2274, 175, '1760177697723', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-06 10:59:53'),
(2275, 175, '1760177697723', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-11-06 10:59:53'),
(2276, 175, '1762407038010', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-06 11:00:43'),
(2277, 175, '1762407038010', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-06 11:00:43'),
(2278, 175, '1762407038010', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-11-06 11:00:43'),
(2279, 175, '1762407038010', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-06 11:00:43'),
(2280, 175, '1762407038010', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-11-06 11:00:43'),
(2281, 126, '1762505402689', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-07 14:30:15'),
(2282, 126, '1762505402689', 'The above given price does not include GST.', '2025-11-07 14:30:15'),
(2283, 126, '1762505402689', 'Payment will be made in 100% advance.', '2025-11-07 14:30:15'),
(2284, 126, '1762505402689', 'Domain registration and hosting expenses shall be borne by the client.', '2025-11-07 14:30:15'),
(2285, 126, '1762505402689', 'Maintenance includes only the current features. Any issues with existing features will be resolved, but adding new features will be chargeable.', '2025-11-07 14:30:15'),
(2287, 126, '1762505402689', '2 Months Maintenance free If you want to add any new feature that will be free of cost after that period adding feature will be chargeable.', '2025-11-07 14:34:06'),
(2288, 189, '1762512432083', 'This plan is only valid for 15 days.', '2025-11-07 17:28:09'),
(2289, 190, '1762582587812', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-08 11:50:54'),
(2290, 190, '1762582587812', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-08 11:50:54'),
(2291, 190, '1762582587812', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-08 11:50:54'),
(2292, 190, '1762582587812', 'The above given price does not include GST.', '2025-11-08 11:50:54'),
(2293, 190, '1762582587812', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-08 11:50:54'),
(2294, 190, '1762582587812', 'SEO takes time (3–6 months to show results).', '2025-11-08 11:50:54'),
(2295, 190, '1762582587812', 'While we are managing your social media page, no other person or agency should work on it during that period. However, if someone else is also required to work on the same, we will create a separate page for our digital marketing activities.', '2025-11-08 11:50:54'),
(2296, 190, '1762582849963', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-08 12:03:52'),
(2298, 190, '1762582849963', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-08 12:03:52'),
(2299, 190, '1762582849963', 'Required details like credentials and other details are needed to share timely.', '2025-11-08 12:03:52'),
(2300, 190, '1762582849963', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-08 12:03:52'),
(2301, 190, '1762582849963', 'SEO takes time (3–6 months to show results).', '2025-11-08 12:03:52'),
(2302, 190, '1762582849963', 'The above given price does not include GST.', '2025-11-08 12:03:52'),
(2303, 189, '1762512432083', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-08 13:24:15'),
(2305, 189, '1762512432083', 'Required details like credentials and other details are needed to share timely.', '2025-11-08 13:24:15'),
(2306, 189, '1762512432083', 'The above given price does not include GST.', '2025-11-08 13:24:15'),
(2307, 189, '1762512432083', 'Payment will be made in 100% advance.', '2025-11-08 13:24:15'),
(2309, 189, '1762588592858', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-08 13:31:24'),
(2310, 189, '1762588592858', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-11-08 13:31:24'),
(2311, 189, '1762588592858', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-08 13:31:24'),
(2312, 189, '1762588592858', 'Required details like credentials and other details are needed to share timely.', '2025-11-08 13:31:24'),
(2313, 189, '1762588592858', 'The above given price does not include GST.', '2025-11-08 13:31:24'),
(2314, 189, '1762588592858', 'Payment will be made in 100% advance.', '2025-11-08 13:31:24'),
(2315, 189, '1762588592858', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-08 13:31:24'),
(2316, 189, '1762588592858', 'Model shoot charges will vary according to the models.', '2025-11-08 13:31:24'),
(2317, 189, '1762588592858', 'The ad will run for a total of seven days with this specified budget.', '2025-11-08 13:31:24'),
(2318, 190, '1762588119191', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-08 13:34:01'),
(2319, 190, '1762588119191', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-08 13:34:01'),
(2320, 190, '1762588119191', 'Required details like credentials and other details are needed to share timely.', '2025-11-08 13:34:01'),
(2321, 190, '1762588119191', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-08 13:34:01'),
(2322, 190, '1762588119191', 'SEO takes time (3–6 months to show results).', '2025-11-08 13:34:01'),
(2323, 190, '1762588119191', 'The above given price does not include GST.', '2025-11-08 13:34:01'),
(2324, 190, '1762596181195', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-08 15:40:10'),
(2325, 190, '1762596181195', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-08 15:40:10'),
(2326, 190, '1762596181195', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-08 15:40:10'),
(2327, 190, '1762596181195', 'Required details like credentials and other details are needed to share timely.', '2025-11-08 15:40:10'),
(2328, 190, '1762596181195', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-08 15:40:10'),
(2329, 190, '1762596181195', 'SEO takes time (3–6 months to show results).', '2025-11-08 15:40:10'),
(2330, 191, '1762759898174', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 13:17:39'),
(2331, 191, '1762759898174', 'Required details like credentials and other details are needed to share timely.', '2025-11-10 13:17:39'),
(2332, 191, '1762759898174', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-10 13:17:39'),
(2333, 191, '1762759898174', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-10 13:17:39'),
(2334, 181, '1762770463690', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-10 16:12:11'),
(2335, 181, '1762770463690', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-10 16:12:11'),
(2336, 181, '1762770463690', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 16:12:11'),
(2337, 181, '1762770463690', 'Required details like credentials and other details are needed to share timely.', '2025-11-10 16:12:11'),
(2338, 181, '1762770463690', 'The above given price does not include GST.', '2025-11-10 16:12:11'),
(2339, 181, '1762770463690', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-10 16:12:11'),
(2340, 181, '1762773464209', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-10 17:04:29'),
(2341, 181, '1762773464209', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 17:04:29'),
(2342, 181, '1762773464209', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-10 17:04:29'),
(2343, 181, '1762773464209', 'Required details like credentials and other details are needed to share timely.', '2025-11-10 17:04:29'),
(2344, 181, '1762773464209', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-10 17:04:29'),
(2345, 181, '1762773464209', 'The above given price does not include GST.', '2025-11-10 17:04:29'),
(2346, 192, '1762777042282', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-10 17:47:25'),
(2347, 192, '1762777042282', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-10 17:47:25'),
(2348, 192, '1762777042282', 'Minimum Meta ad budget of Rs 3,000 is required for running the ad & service amount is also paid by the client.', '2025-11-10 17:47:25'),
(2349, 192, '1762777042282', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-10 17:47:25'),
(2350, 192, '1762777042282', 'The amount paid is non-refundable and will be adjusted solely against the services provided', '2025-11-10 17:47:25'),
(2351, 192, '1762777042282', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 18:43:19'),
(2352, 192, '1762777042282', 'The above given price does not include GST.', '2025-11-10 18:43:19'),
(2353, 192, '1762777042282', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-10 18:43:19'),
(2354, 192, '1762777042282', 'While we are managing your social media page, no other person or agency should work on it during that period. However, if someone else is also required to work on the same, we will create a separate page for our digital marketing activities.', '2025-11-10 18:43:19'),
(2355, 192, '1762780496899', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-10 18:49:21'),
(2356, 192, '1762780496899', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-10 18:49:21'),
(2357, 192, '1762780496899', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-10 18:49:21'),
(2359, 192, '1762780496899', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 18:49:21'),
(2360, 192, '1762780496899', 'Required details like credentials and other details are needed to share timely.', '2025-11-10 18:49:21'),
(2361, 192, '1762780496899', 'The above given price does not include GST.', '2025-11-10 18:49:21'),
(2362, 192, '1762780496899', 'Payment will be made in 100% advance.', '2025-11-10 18:49:21'),
(2363, 181, '1762779925265', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-10 18:54:49'),
(2364, 181, '1762779925265', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-10 18:54:49'),
(2365, 181, '1762779925265', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 18:54:49'),
(2366, 181, '1762779925265', 'Required details like credentials and other details are needed to share timely.', '2025-11-10 18:54:49'),
(2367, 181, '1762779925265', 'The above given price does not include GST.', '2025-11-10 18:54:49'),
(2368, 181, '1762779925265', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-10 18:54:49'),
(2369, 189, '1762512432083', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-10 19:02:16'),
(2370, 189, '1762512432083', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-10 19:02:16'),
(2371, 189, '1762512432083', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-10 19:02:16'),
(2372, 193, '1762786961986', 'This plan will only valid for 15 days only.', '2025-11-10 20:33:09'),
(2373, 193, '1762786961986', 'Facebook, Instagram, Meta Business Suit & Meta Ad Account creation charges will apply for basic plan users if the page is not created yet.', '2025-11-10 20:33:09'),
(2374, 193, '1762788151917', 'This plan will only valid for 15 days only.', '2025-11-10 20:52:35'),
(2375, 193, '1762788151917', 'Facebook, Instagram, Meta Business Suit & Meta Ad Account creation charges will apply for basic plan users if the page is not created yet.', '2025-11-10 20:52:35'),
(2376, 194, '1762868710612', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-11 19:18:59'),
(2377, 194, '1762868710612', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-11 19:18:59'),
(2378, 194, '1762868710612', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-11 19:18:59'),
(2379, 194, '1762868710612', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-11 19:18:59'),
(2380, 194, '1762868710612', 'Required details like credentials and other details are needed to share timely.', '2025-11-11 19:18:59'),
(2381, 194, '1762868710612', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-11 19:18:59'),
(2382, 192, '1762948872613', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-12 17:34:06'),
(2383, 192, '1762948872613', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-12 17:34:06'),
(2385, 192, '1762948872613', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-12 17:34:06'),
(2386, 192, '1762948872613', 'The above given price does not include GST.', '2025-11-12 17:34:06'),
(2387, 192, '1762948872613', 'The service amount will not be refunded under any circumstances, however the full value of services can be delivered in place of the remaining service amount.', '2025-11-12 17:34:06'),
(2388, 192, '1762948872613', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-12 17:34:06'),
(2389, 181, '1763027321517', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-13 15:31:08'),
(2390, 181, '1763027321517', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-13 15:31:08'),
(2391, 181, '1763027321517', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-13 15:31:08'),
(2392, 181, '1763027321517', 'Required details like credentials and other details are needed to share timely.', '2025-11-13 15:31:08');
INSERT INTO `plan_client_notes` (`id`, `client_id`, `txn_id`, `note_name`, `created_at`) VALUES
(2393, 181, '1763027321517', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-13 15:31:08'),
(2394, 181, '1763027321517', 'The above given price does not include GST.', '2025-11-13 15:31:08'),
(2400, 152, '1758545828900', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-13 17:36:35'),
(2401, 152, '1758545828900', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-13 17:36:35'),
(2402, 152, '1758545828900', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-13 17:36:35'),
(2403, 152, '1758545828900', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-13 17:36:35'),
(2404, 152, '1758545828900', 'Required details like credentials and other details are needed to share timely.', '2025-11-13 17:36:35'),
(2405, 190, '1763037625803', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-13 18:41:52'),
(2406, 190, '1763037625803', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-13 18:41:52'),
(2407, 190, '1763037625803', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-13 18:41:52'),
(2408, 190, '1763037625803', 'Required details like credentials and other details are needed to share timely.', '2025-11-13 18:41:52'),
(2409, 190, '1763037625803', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-13 18:41:52'),
(2410, 181, '1763129724156', 'Facebook, Instagram & Meta business suit creation charges will apply for basic plan users if the page is not created yet.', '2025-11-15 15:00:43'),
(2411, 181, '1763129724156', 'The client pays for the Meta ad budget, and ad service charges will apply only if the client wants to run the ad.', '2025-11-15 15:00:43'),
(2412, 181, '1763129724156', 'All amounts need to be paid in advance. Only the ad budget will be paid upon request of the client or immediately after the service is started.', '2025-11-15 15:00:43'),
(2413, 181, '1763129724156', 'Please note that service charges are non-refundable but may be adjusted against another service.', '2025-11-15 15:00:43'),
(2414, 181, '1763129724156', 'One dedicated SPOC (single point of contact) is required from the client side to approve the posts, contents, videos changes, etc.', '2025-11-15 15:00:43'),
(2415, 181, '1763129724156', 'SEO takes time (3–6 months to show results).', '2025-11-15 15:00:43'),
(2416, 181, '1763129724156', 'The above given price does not include GST.', '2025-11-15 15:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `plan_data`
--

CREATE TABLE `plan_data` (
  `id` int(11) NOT NULL,
  `plan_id` int(255) NOT NULL,
  `plan_name` varchar(250) NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `editing_type_id` int(255) DEFAULT NULL,
  `editing_type_name` varchar(255) DEFAULT NULL,
  `editing_type_amount` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `include_content_posting` varchar(50) DEFAULT NULL,
  `include_thumbnail_creation` varchar(50) DEFAULT NULL,
  `total_amount` varchar(100) DEFAULT NULL,
  `amount_ads` varchar(255) DEFAULT NULL,
  `percent_ads` varchar(255) DEFAULT NULL,
  `charge_ads` varchar(255) DEFAULT NULL,
  `total_ads` varchar(255) DEFAULT NULL,
  `employee` varchar(250) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan_data`
--

INSERT INTO `plan_data` (`id`, `plan_id`, `plan_name`, `service_name`, `category_name`, `editing_type_id`, `editing_type_name`, `editing_type_amount`, `quantity`, `include_content_posting`, `include_thumbnail_creation`, `total_amount`, `amount_ads`, `percent_ads`, `charge_ads`, `total_ads`, `employee`, `created_at`) VALUES
(182, 4, 'Basic SMO', 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-01 17:19:44'),
(183, 4, 'Basic SMO', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-01 17:19:03'),
(189, 5, 'Standard SMO', 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-14 16:40:26'),
(190, 5, 'Standard SMO', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-14 16:41:20'),
(192, 6, 'Premium SMO', 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-14 16:42:47'),
(193, 6, 'Premium SMO', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-14 16:43:11'),
(195, 6, 'Premium SMO', 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '0', '0', '3000', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-14 16:47:07'),
(196, 6, 'Premium SMO', 'Social Media Posting', 'Posting', NULL, 'Youtube Video Posting', '200', '7', '0', '0', '1400', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-14 16:54:55'),
(197, 6, 'Premium SMO', 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '0', '0', '300', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-14 16:56:07'),
(199, 20, 'Podcast Basic', 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-26 13:58:42'),
(200, 20, 'Podcast Basic', 'Video Services', 'Shorts', NULL, 'Basic Editing', '750', '4', '300', '250', '5200', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-26 14:10:45'),
(202, 28, 'Podcast Standard', 'Video Shoot', 'Podcast Video Shoot', NULL, '20 Mins - 40 Mins', '4000', '1', '0', '0', '4000', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-26 15:45:22'),
(203, 28, 'Podcast Standard', 'Podcast Video creation', 'Podcast Editing', NULL, 'Standard Editing 20 min - 30 min', '5000', '1', '0', '0', '5000', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-26 15:45:53'),
(204, 28, 'Podcast Standard', 'Video Services', 'Shorts', NULL, 'Basic Editing', '500', '6', '300', '250', '6300', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-08-26 15:47:44'),
(245, 41, 'Test', 'Video Shoot', 'Mobile Shoot', NULL, '15 min - 1 Hr', '850', '1', '0', '0', '850', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-08 19:24:55'),
(248, 41, 'Test', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '500', '1', '0', '0', '500', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-09 11:00:42'),
(251, 41, 'Test', 'Video Services', 'Premium Video', NULL, 'Standard Editing', '2500', '1', '300', '250', '3050', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-09 11:29:10'),
(252, 4, 'Basic SMO', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-01 17:19:19'),
(254, 5, 'Standard SMO', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-11 18:34:06'),
(255, 5, 'Standard SMO', 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-11 18:34:33'),
(256, 5, 'Standard SMO', 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-11 18:34:46'),
(257, 5, 'Standard SMO', 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-11 18:35:12'),
(259, 6, 'Premium SMO', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '2', '300', '0', '1400', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-11 18:36:52'),
(260, 6, 'Premium SMO', 'Complimentary', 'Video Service', NULL, 'Reel with Basic Editing', '1000', '1', '300', '0', '1300', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-11 18:38:47'),
(261, 6, 'Premium SMO', 'Complimentary', 'Meta Account Setup', NULL, 'Facebook Page Creation', '500', '1', '0', '0', '500', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-11 18:37:44'),
(262, 6, 'Premium SMO', 'Complimentary', 'Meta Account Setup', NULL, 'Instagram Page Creation', '500', '1', '0', '0', '500', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-11 18:37:52'),
(263, 6, 'Premium SMO', 'Complimentary', 'Meta Account Setup', NULL, 'Meta Business Suit Creation', '500', '1', '0', '0', '500', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-11 18:38:01'),
(266, 52, 'Standard SEO', 'SEO', 'Backlink Creation', NULL, '3 Website', '229', '300', '0', '0', '68700', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-09-15 16:53:17'),
(267, 56, 'Basic DM ', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:17:26'),
(270, 55, 'Tiny DM', 'Ads Campaign', 'Meta Ad', NULL, NULL, NULL, NULL, '0', '0', NULL, '3000', '35', '1050', '4050', 'Abhinav Pandey', '2025-09-26 13:49:47'),
(271, 55, 'Tiny DM', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '1', '300', '250', '2050', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:41:27'),
(272, 4, 'Basic SMO', 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '1', '0', '0', '850', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-25 18:07:57'),
(273, 5, 'Standard SMO', 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-25 18:08:41'),
(274, 5, 'Standard SMO', 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '2', '0', '0', '1700', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-25 18:09:37'),
(275, 6, 'Premium SMO', 'Video Shoot', 'Mobile Shoot', NULL, 'Mobile Shoot', '850', '4', '0', '0', '3400', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-25 18:10:15'),
(276, 6, 'Premium SMO', 'Complimentary', 'Meta Account Setup', NULL, 'Meta Ad Account Creation', '500', '1', '0', '0', '500', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-25 18:10:40'),
(277, 56, 'Basic DM ', 'Ads Campaign', 'Meta Ad', NULL, NULL, NULL, NULL, '0', '0', NULL, '6000', '35', '2100', '8100', 'Abhinav Pandey', '2025-10-29 16:16:58'),
(281, 62, 'Standard DM', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:26:53'),
(282, 62, 'Standard DM', 'Ads Campaign', 'Meta Ad', NULL, NULL, NULL, NULL, '0', '0', NULL, '9000', '35', '3150', '12150', 'Abhinav Pandey', '2025-10-29 16:26:53'),
(283, 63, 'Premium DM', 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '2', '300', '0', '1600', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:29:06'),
(285, 63, 'Premium DM', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:28:55'),
(286, 63, 'Premium DM', 'Ads Campaign', 'Meta Ad', NULL, NULL, NULL, NULL, '0', '0', NULL, '15000', '30', '4500', '19500', 'Abhinav Pandey', '2025-10-29 16:34:42'),
(287, 42, 'Tiny', 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '4', '300', '0', '3200', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:45:28'),
(288, 42, 'Tiny', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '2', '300', '250', '4100', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:46:34'),
(289, 42, 'Tiny', 'Ads Campaign', 'Meta Ad', NULL, NULL, NULL, NULL, '0', '0', NULL, '3750', '35', '1312.5', '5062.5', 'Abhinav Pandey', '2025-10-29 16:47:22'),
(290, 64, 'Basic', 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '5', '300', '0', '4000', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:52:25'),
(291, 64, 'Basic', 'Ads Campaign', 'Meta Ad', NULL, NULL, NULL, NULL, '0', '0', NULL, '6000', '35', '2100', '8100', 'Abhinav Pandey', '2025-10-29 16:52:34'),
(292, 64, 'Basic', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '3', '300', '250', '6150', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:53:02'),
(293, 64, 'Basic', 'Complimentary', 'Graphic Creation', NULL, 'Festival Post', '400', '1', '0', '0', '400', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:53:34'),
(294, 65, 'Standard', 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '8', '300', '0', '6400', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:54:53'),
(295, 65, 'Standard', 'Ads Campaign', 'Meta Ad', NULL, NULL, NULL, NULL, '0', '0', NULL, '9000', '35', '3150', '12150', 'Abhinav Pandey', '2025-10-29 16:54:53'),
(296, 65, 'Standard', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '4', '300', '250', '8200', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:56:51'),
(297, 66, 'Premium', 'Graphics Design', 'Static Graphics', NULL, 'Banner/Poster Design', '500', '12', '300', '0', '9600', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:58:32'),
(298, 66, 'Premium', 'Video Services', 'Reels', NULL, 'Standard Editing', '1500', '6', '300', '250', '12300', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:58:56'),
(299, 66, 'Premium', 'Video Services', 'Youtube Video', NULL, 'Standard Editing', '3000', '1', '300', '250', '3550', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 16:59:49'),
(300, 66, 'Premium', 'Graphics Design', 'Thumbnail', NULL, 'Youtube Video Thumbnail', '300', '1', '300', '0', '600', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 17:01:40'),
(301, 66, 'Premium', 'Social Media Optimization', 'Social Media Posting', NULL, 'Youtube Video Posting', '150', '6', '0', '0', '900', NULL, NULL, NULL, NULL, 'Abhinav Pandey', '2025-10-29 17:02:36'),
(302, 66, 'Premium', 'Ads Campaign', 'Meta Ad', NULL, NULL, NULL, NULL, '0', '0', NULL, '15000', '30', '4500', '19500', 'Abhinav Pandey', '2025-10-29 17:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `plan_details`
--

CREATE TABLE `plan_details` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan_details`
--

INSERT INTO `plan_details` (`id`, `plan_name`, `created_at`) VALUES
(4, 'Basic SMO', '2025-08-13 18:42:24'),
(5, 'Standard SMO', '2025-08-14 12:08:14'),
(6, 'Premium SMO', '2025-08-14 12:10:38'),
(20, 'Podcast Basic', '2025-08-26 13:58:04'),
(28, 'Podcast Standard', '2025-08-26 15:40:30'),
(41, 'Test', '2025-08-29 12:54:23'),
(42, 'Tiny', '2025-08-29 17:26:05'),
(52, 'Standard SEO', '2025-09-15 16:41:57'),
(55, 'Tiny DM', '2025-09-25 18:14:21'),
(56, 'Basic DM ', '2025-09-25 18:21:53'),
(62, 'Standard DM', '2025-10-29 16:25:16'),
(63, 'Premium DM', '2025-10-29 16:27:48'),
(64, 'Basic', '2025-10-29 16:51:41'),
(65, 'Standard', '2025-10-29 16:54:10'),
(66, 'Premium', '2025-10-29 16:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `requirement_submissions`
--

CREATE TABLE `requirement_submissions` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(32) NOT NULL,
  `requirement` text DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirement_submissions`
--

INSERT INTO `requirement_submissions` (`id`, `client_id`, `link_id`, `slug`, `name`, `email`, `phone`, `requirement`, `total_amount`, `created_at`) VALUES
(7, 114, 8, '114-mf6fsgrj-867e00', 'Manager', 'manager@admin.com', '4444444444', '555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555', 7000.00, '2025-09-05 11:53:09'),
(9, 119, 10, '119-mf6itoap-097b88', 'visahakha ', 'agraharivishakha285@gmail.com', '9993522579', NULL, 65601.00, '2025-09-05 13:29:24'),
(10, 121, 12, '121-mfb4lkxk-c9d0fe', '.htaccess', 'umerqureshi786786@gmail.com', '7586868566', NULL, 66101.00, '2025-09-08 18:27:14'),
(14, 119, 10, '119-mf6itoap-097b88', 'Api test', 'deepu@example.com', '2345678902', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 37751.00, '2025-09-09 12:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `requirement_submission_items`
--

CREATE TABLE `requirement_submission_items` (
  `id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `category` varchar(191) NOT NULL,
  `sub_category` varchar(191) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `line_total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirement_submission_items`
--

INSERT INTO `requirement_submission_items` (`id`, `submission_id`, `category`, `sub_category`, `unit_price`, `qty`, `line_total`) VALUES
(20, 7, 'Meta Ad', 'Meta Ad', 30.00, 10001, 3000.00),
(21, 7, 'Google Ad', 'Google Ad', 40.00, 10001, 4000.00),
(26, 9, 'Graphic Services', 'Banner/Poster Design', 500.00, 1, 500.00),
(27, 9, 'Video Services', 'Reels Standard Editing', 1500.00, 1, 1500.00),
(28, 9, 'Video Shoot', 'Mobile Shoot (15min - 1hr)', 850.00, 1, 850.00),
(29, 9, 'Complimentary', 'Information Reel', 0.00, 1, 0.00),
(30, 9, 'SEO (Website)', '1 Keyword / On-Page Optimization / Off-Page Optimization / Keyword Research', 1200.00, 10, 12000.00),
(31, 9, 'GMB', 'LOCAL SEO', 1200.00, 10, 12000.00),
(32, 9, 'GMB', 'Local SEO and negative comment handling', 1000.00, 5, 5000.00),
(33, 9, 'Google Ad', 'Google Ad', 35.00, 25001, 8750.00),
(34, 10, 'Graphic Services', 'Banner/Poster Design', 500.00, 1, 500.00),
(35, 10, 'Graphic Services', 'Content Posting', 300.00, 1, 300.00),
(36, 10, 'Graphic Services', 'Youtube Thumbnail', 300.00, 1, 300.00),
(37, 10, 'Google Ad', 'Google Ad', 30.00, 50001, 15000.00),
(58, 14, 'Graphic Services', 'Banner/Poster Design', 500.00, 1, 500.00),
(59, 14, 'Video Services', 'Reels Standard Editing', 1500.00, 1, 1500.00),
(60, 14, 'Video Services', 'Reels Content Posting', 300.00, 1, 300.00),
(61, 14, 'Video Shoot', 'Mobile Shoot (15min - 1hr)', 850.00, 2, 1700.00),
(62, 14, 'Social Media Posting', 'Youtube Video Posting', 200.00, 2, 400.00),
(63, 14, 'Complimentary', 'Festive Post Creation', 0.00, 1, 0.00),
(64, 14, 'SEO (Website)', '1 Keyword / On-Page Optimization / Off-Page Optimization / Keyword Research', 1200.00, 10, 12000.00),
(65, 14, 'GMB', 'LOCAL SEO', 1200.00, 5, 6000.00),
(66, 14, 'Meta Ad', 'Meta Ad', 35.00, 1000, 350.00),
(67, 14, 'Google Ad', 'Google Ad', 40.00, 10001, 4000.00);

-- --------------------------------------------------------

--
-- Table structure for table `seo_clients`
--

CREATE TABLE `seo_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `website` varchar(500) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo_clients`
--

INSERT INTO `seo_clients` (`id`, `name`, `website`, `created_at`) VALUES
(12, 'DOAGuru InfoSystems', 'https://doaguru.com', '2025-09-26 19:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `seo_keywords`
--

CREATE TABLE `seo_keywords` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `keyword` text NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo_keywords`
--

INSERT INTO `seo_keywords` (`id`, `client_id`, `keyword`, `created_at`) VALUES
(2, 12, 'Best Digital Marketing Company in Jabalpur', '2025-09-26 19:20:22'),
(3, 12, 'Best digital marketing agency in jabalpur', '2025-09-26 19:26:49'),
(4, 12, 'Best SEO agency in jabalpur', '2025-09-26 19:27:10'),
(5, 12, 'Doa', '2025-09-27 14:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `created_at`) VALUES
(12, 'Video Services', '2025-06-13 14:37:45'),
(14, 'Video Shoot', '2025-06-13 14:38:06'),
(18, 'Graphics Design', '2025-06-13 14:55:41'),
(26, 'SEO', '2025-07-02 13:14:05'),
(27, 'GMB', '2025-07-02 13:14:33'),
(28, 'Website Maintenance', '2025-07-12 13:33:25'),
(29, 'Social Media Posting', '2025-07-12 14:04:34'),
(30, 'Social Media Optimization', '2025-07-21 19:21:09'),
(34, 'Podcast Video creation', '2025-07-27 16:09:04'),
(37, 'Test Service', '2025-08-29 17:36:45'),
(39, 'Complimentary', '2025-09-09 10:55:16'),
(41, 'Social Media Creation', '2025-09-13 20:23:45'),
(42, 'Lead Conversion Service', '2025-09-16 14:57:57'),
(43, 'Social Media Marketing', '2025-10-01 16:05:39'),
(45, 'Convenience Charges', '2025-10-24 12:19:51'),
(48, 'Software Tool Subscription', '2025-10-25 18:51:57'),
(49, 'Software Development', '2025-11-07 14:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `service_progress`
--

CREATE TABLE `service_progress` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `txn_id` varchar(64) NOT NULL,
  `service_name` varchar(191) NOT NULL,
  `category_name` varchar(191) NOT NULL,
  `editing_type_name` varchar(191) NOT NULL DEFAULT '',
  `planned_qty` int(11) NOT NULL DEFAULT 0,
  `done_qty` int(11) NOT NULL DEFAULT 0,
  `last_updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_progress`
--

INSERT INTO `service_progress` (`id`, `client_id`, `txn_id`, `service_name`, `category_name`, `editing_type_name`, `planned_qty`, `done_qty`, `last_updated_by`, `created_at`, `updated_at`) VALUES
(1, 92, '1756454693884', 'Video Services', 'Reels', 'Advanced Editing', 4, 0, 5, '2025-08-29 13:54:12', '2025-08-29 14:22:04'),
(2, 92, '1756454693884', 'Social Media Posting', 'Posting', 'Content Posting', 2, 2, 5, '2025-08-29 13:54:12', '2025-08-29 14:22:04'),
(3, 92, '1756454693884', 'SEO', 'Intended for Lead Generation', '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', 5, 2, 5, '2025-08-29 13:54:12', '2025-08-29 14:22:04'),
(10, 94, '1756717206619', 'Video Services', 'Reels', 'Advanced Editing', 4, 0, 2, '2025-09-02 12:02:22', '2025-09-02 12:02:22'),
(11, 94, '1756717206619', 'Social Media Posting', 'Posting', 'Content Posting', 2, 0, 2, '2025-09-02 12:02:22', '2025-09-02 12:02:22'),
(12, 94, '1756717206619', 'SEO', 'Intended for Lead Generation', '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', 5, 0, 2, '2025-09-02 12:02:22', '2025-09-02 12:02:22'),
(13, 94, '1756717206619', 'GMB', 'LOCAL SEO', 'Local SEO and negative comment handling', 1, 0, 2, '2025-09-02 12:02:22', '2025-09-02 12:02:22'),
(14, 97, '1756877059829', 'Graphics Design', 'Static Graphics', 'Banner/Poster Design', 8, 1, 5, '2025-09-03 15:12:35', '2025-09-03 15:12:35'),
(15, 97, '1756877059829', 'Video Services', 'Reels', 'Standard Editing', 4, 0, 5, '2025-09-03 15:12:35', '2025-09-03 15:12:35'),
(16, 97, '1756877059829', 'Video Shoot', 'Mobile Shoot', '15 min - 1 Hr', 2, 1, 5, '2025-09-03 15:12:35', '2025-09-03 15:12:35'),
(17, 97, '1756877059829', 'Complimentary', 'Graphic Creation', 'Festive Post', 2, 0, 5, '2025-09-03 15:12:35', '2025-09-03 15:12:35'),
(18, 97, '1756877059829', 'Complimentary', 'Social Media Page Setup', 'Facebook', 1, 1, 5, '2025-09-03 15:12:35', '2025-09-03 15:12:35'),
(19, 97, '1756877059829', 'Complimentary', 'Social Media Page Setup', 'Instagram', 1, 0, 5, '2025-09-03 15:12:35', '2025-09-03 15:12:35'),
(20, 97, '1756877059829', 'Complimentary', 'Social Media Page Setup', 'Meta Ad Account', 1, 1, 5, '2025-09-03 15:12:35', '2025-09-03 15:12:35'),
(21, 97, '1756877059829', 'Complimentary', 'Social Media Page Setup', 'Meta Business Suit', 1, 0, 5, '2025-09-03 15:12:36', '2025-09-03 15:12:36'),
(22, 101, '1757143291521', 'Video Services', 'Reels', 'Advanced Editing', 4, 0, 5, '2025-09-06 17:50:07', '2025-09-09 16:14:12'),
(23, 101, '1757143291521', 'Social Media Posting', 'Posting', 'Content Posting', 2, 0, 5, '2025-09-06 17:50:07', '2025-09-09 16:14:12'),
(24, 101, '1757143291521', 'SEO', 'Intended for Lead Generation', '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', 5, 0, 5, '2025-09-06 17:50:07', '2025-09-09 16:14:12'),
(25, 101, '1757143291521', 'GMB', 'LOCAL SEO', 'Local SEO and negative comment handling', 1, 0, 5, '2025-09-06 17:50:07', '2025-09-09 16:14:12'),
(34, 118, '1757410826487', 'Graphics Design', 'Static Graphics', 'Banner/Poster Design', 5, 1, 3, '2025-09-09 15:12:39', '2025-09-11 12:58:48'),
(35, 118, '1757410826487', 'Video Services', 'Reels', 'Standard Editing', 3, 0, 3, '2025-09-09 15:12:39', '2025-09-11 12:58:48'),
(36, 118, '1757410826487', 'Video Shoot', 'Mobile Shoot', '15 min - 1 Hr', 1, 0, 3, '2025-09-09 15:12:39', '2025-09-11 12:58:48'),
(57, 101, '1757142862596', 'Graphics Design', 'Static Graphics', 'Banner/Poster Design', 5, 0, 3, '2025-09-09 15:40:49', '2025-09-09 15:40:49'),
(58, 101, '1757142862596', 'Video Services', 'Reels', 'Standard Editing', 3, 0, 3, '2025-09-09 15:40:49', '2025-09-09 15:40:49'),
(59, 101, '1757142862596', 'Video Shoot', 'Mobile Shoot', '15 min - 1 Hr', 1, 0, 3, '2025-09-09 15:40:49', '2025-09-09 15:40:49'),
(60, 101, '1757142862596', 'Complimentary', 'Graphic Creation', 'Festive Post', 1, 0, 3, '2025-09-09 15:40:49', '2025-09-09 15:40:49'),
(65, 92, '1756885016256', 'Video Services', 'Reels', 'Advanced Editing', 4, 0, 5, '2025-09-09 16:14:23', '2025-09-09 16:14:23'),
(66, 92, '1756885016256', 'Social Media Posting', 'Posting', 'Content Posting', 2, 0, 5, '2025-09-09 16:14:23', '2025-09-09 16:14:23'),
(67, 92, '1756885016256', 'SEO', 'Intended for Lead Generation', '1 Key word/On-Page Optimization/Off-Page Optimization/Keyword Research', 5, 0, 5, '2025-09-09 16:14:23', '2025-09-09 16:14:23'),
(68, 92, '1756885016256', 'GMB', 'LOCAL SEO', 'Local SEO and negative comment handling', 1, 0, 5, '2025-09-09 16:14:23', '2025-09-09 16:14:23'),
(72, 101, '1757140224048', 'Video Services', 'Reels', 'Advanced Editing', 4, 2, 5, '2025-09-11 13:32:36', '2025-09-11 13:32:42'),
(73, 101, '1757140224048', 'Social Media Posting', 'Posting', 'Content Posting', 2, 0, 5, '2025-09-11 13:32:36', '2025-09-11 13:32:42'),
(76, 140, '1758006755721', 'Video Shoot', 'Mobile Shoot', '15 min - 1 Hr', 1, 1, 5, '2025-09-16 18:08:48', '2025-09-16 18:08:48'),
(77, 140, '1758006755721', 'Video Services', 'Premium Video', 'Standard Editing', 1, 0, 5, '2025-09-16 18:08:48', '2025-09-16 18:08:48'),
(78, 154, '1759213555018', 'Video Shoot', 'Mobile Shoot', '15 min - 1 Hr', 1, 1, 5, '2025-09-30 12:32:19', '2025-09-30 12:32:19'),
(79, 154, '1759213555018', 'Video Services', 'Premium Video', 'Standard Editing', 1, 0, 5, '2025-09-30 12:32:19', '2025-09-30 12:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `created_at`) VALUES
(7, 'Doa Team', '2025-09-23 17:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `team_id`, `employee_id`, `created_at`) VALUES
(18, 7, 5, '2025-09-23 17:20:09'),
(19, 7, 12, '2025-09-23 17:20:09'),
(20, 7, 3, '2025-09-23 17:20:09'),
(21, 7, 2, '2025-09-23 17:20:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addtional_service`
--
ALTER TABLE `addtional_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `ads_campaign_details`
--
ALTER TABLE `ads_campaign_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_campaign_details_invoice`
--
ALTER TABLE `ads_campaign_details_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `amount_remaining`
--
ALTER TABLE `amount_remaining`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `assign_quotation`
--
ALTER TABLE `assign_quotation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_txn_user` (`txn_id`,`user_id`),
  ADD KEY `idx_txn` (`txn_id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_team` (`team_id`),
  ADD KEY `idx_mode` (`assignment_mode`),
  ADD KEY `fk_aq_client` (`client_id`);

--
-- Indexes for table `calculator_transactions`
--
ALTER TABLE `calculator_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `client_requirement_links`
--
ALTER TABLE `client_requirement_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `complimentary`
--
ALTER TABLE `complimentary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complimentary_invoice`
--
ALTER TABLE `complimentary_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `discount_settings`
--
ALTER TABLE `discount_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dm_calculator_ads`
--
ALTER TABLE `dm_calculator_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dm_calculator_client_details`
--
ALTER TABLE `dm_calculator_client_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dm_calculator_employees`
--
ALTER TABLE `dm_calculator_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editing_types`
--
ALTER TABLE `editing_types`
  ADD PRIMARY KEY (`editing_type_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `invoice_client_notes`
--
ALTER TABLE `invoice_client_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `invoice_graphic`
--
ALTER TABLE `invoice_graphic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `invoice_notes_data`
--
ALTER TABLE `invoice_notes_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes_data`
--
ALTER TABLE `notes_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans_notes`
--
ALTER TABLE `plans_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_client_notes`
--
ALTER TABLE `plan_client_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `plan_data`
--
ALTER TABLE `plan_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_details`
--
ALTER TABLE `plan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirement_submissions`
--
ALTER TABLE `requirement_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `link_id` (`link_id`);

--
-- Indexes for table `requirement_submission_items`
--
ALTER TABLE `requirement_submission_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submission_id` (`submission_id`);

--
-- Indexes for table `seo_clients`
--
ALTER TABLE `seo_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `website` (`website`);

--
-- Indexes for table `seo_keywords`
--
ALTER TABLE `seo_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_progress`
--
ALTER TABLE `service_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_progress` (`client_id`,`txn_id`,`service_name`,`category_name`,`editing_type_name`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_team_employee` (`team_id`,`employee_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addtional_service`
--
ALTER TABLE `addtional_service`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `ads_campaign_details`
--
ALTER TABLE `ads_campaign_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `ads_campaign_details_invoice`
--
ALTER TABLE `ads_campaign_details_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `amount_remaining`
--
ALTER TABLE `amount_remaining`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `assign_quotation`
--
ALTER TABLE `assign_quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `calculator_transactions`
--
ALTER TABLE `calculator_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2371;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `client_requirement_links`
--
ALTER TABLE `client_requirement_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `complimentary`
--
ALTER TABLE `complimentary`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;

--
-- AUTO_INCREMENT for table `complimentary_invoice`
--
ALTER TABLE `complimentary_invoice`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `discount_settings`
--
ALTER TABLE `discount_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dm_calculator_ads`
--
ALTER TABLE `dm_calculator_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dm_calculator_client_details`
--
ALTER TABLE `dm_calculator_client_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `dm_calculator_employees`
--
ALTER TABLE `dm_calculator_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `editing_types`
--
ALTER TABLE `editing_types`
  MODIFY `editing_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `invoice_client_notes`
--
ALTER TABLE `invoice_client_notes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `invoice_graphic`
--
ALTER TABLE `invoice_graphic`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=797;

--
-- AUTO_INCREMENT for table `invoice_notes_data`
--
ALTER TABLE `invoice_notes_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notes_data`
--
ALTER TABLE `notes_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `plans_notes`
--
ALTER TABLE `plans_notes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `plan_client_notes`
--
ALTER TABLE `plan_client_notes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2417;

--
-- AUTO_INCREMENT for table `plan_data`
--
ALTER TABLE `plan_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `plan_details`
--
ALTER TABLE `plan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `requirement_submissions`
--
ALTER TABLE `requirement_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `requirement_submission_items`
--
ALTER TABLE `requirement_submission_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `seo_clients`
--
ALTER TABLE `seo_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seo_keywords`
--
ALTER TABLE `seo_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `service_progress`
--
ALTER TABLE `service_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_quotation`
--
ALTER TABLE `assign_quotation`
  ADD CONSTRAINT `fk_aq_client` FOREIGN KEY (`client_id`) REFERENCES `dm_calculator_client_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aq_user` FOREIGN KEY (`user_id`) REFERENCES `dm_calculator_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_assign_team` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE CASCADE;

--
-- Constraints for table `client_requirement_links`
--
ALTER TABLE `client_requirement_links`
  ADD CONSTRAINT `client_requirement_links_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `dm_calculator_client_details` (`id`);

--
-- Constraints for table `editing_types`
--
ALTER TABLE `editing_types`
  ADD CONSTRAINT `editing_types_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `editing_types_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `plan_client_notes`
--
ALTER TABLE `plan_client_notes`
  ADD CONSTRAINT `plan_client_notes_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `dm_calculator_client_details` (`id`);

--
-- Constraints for table `requirement_submissions`
--
ALTER TABLE `requirement_submissions`
  ADD CONSTRAINT `fk_submissions_link` FOREIGN KEY (`link_id`) REFERENCES `client_requirement_links` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `requirement_submissions_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `dm_calculator_client_details` (`id`);

--
-- Constraints for table `requirement_submission_items`
--
ALTER TABLE `requirement_submission_items`
  ADD CONSTRAINT `requirement_submission_items_ibfk_1` FOREIGN KEY (`submission_id`) REFERENCES `requirement_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `seo_keywords`
--
ALTER TABLE `seo_keywords`
  ADD CONSTRAINT `seo_keywords_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `seo_clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_members_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `dm_calculator_employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
