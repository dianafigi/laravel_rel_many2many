-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2019 at 10:37 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muitospramuitos`
--

-- --------------------------------------------------------

--
-- Table structure for table `alocacoes`
--

CREATE TABLE `alocacoes` (
  `desenvolvedor_id` int(10) UNSIGNED NOT NULL,
  `projecto_id` int(10) UNSIGNED NOT NULL,
  `horas_semanais` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alocacoes`
--

INSERT INTO `alocacoes` (`desenvolvedor_id`, `projecto_id`, `horas_semanais`, `created_at`, `updated_at`) VALUES
(1, 1, 11, NULL, NULL),
(2, 1, 13, NULL, NULL),
(2, 2, 14, NULL, NULL),
(3, 2, 15, NULL, NULL),
(1, 3, 16, NULL, NULL),
(2, 3, 17, NULL, NULL),
(3, 3, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `desenvolvedores`
--

CREATE TABLE `desenvolvedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desenvolvedores`
--

INSERT INTO `desenvolvedores` (`id`, `nome`, `cargo`, `created_at`, `updated_at`) VALUES
(1, 'Berardo', 'Analista Pleno', NULL, NULL),
(2, 'Gonçalo', 'Analista Senior', NULL, NULL),
(3, 'Diana', 'Programador Jr', NULL, NULL);

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
(1, '2019_07_23_150613_create_desenvolvedors_table', 1),
(2, '2019_07_23_150648_create_projectos_table', 1),
(3, '2019_07_23_150733_create_alocacaos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projectos`
--

CREATE TABLE `projectos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimativa_horas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projectos`
--

INSERT INTO `projectos` (`id`, `nome`, `estimativa_horas`, `created_at`, `updated_at`) VALUES
(1, 'Sistema de Alocaçao de Recursos', 200, NULL, NULL),
(2, 'Sistema de Bibliotecas', 1000, NULL, NULL),
(3, 'Sistema de Vendas', 2000, NULL, NULL),
(4, 'Novo Sistema', 5000, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alocacoes`
--
ALTER TABLE `alocacoes`
  ADD PRIMARY KEY (`projecto_id`,`desenvolvedor_id`),
  ADD KEY `alocacoes_desenvolvedor_id_foreign` (`desenvolvedor_id`);

--
-- Indexes for table `desenvolvedores`
--
ALTER TABLE `desenvolvedores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectos`
--
ALTER TABLE `projectos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desenvolvedores`
--
ALTER TABLE `desenvolvedores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectos`
--
ALTER TABLE `projectos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alocacoes`
--
ALTER TABLE `alocacoes`
  ADD CONSTRAINT `alocacoes_desenvolvedor_id_foreign` FOREIGN KEY (`desenvolvedor_id`) REFERENCES `desenvolvedores` (`id`),
  ADD CONSTRAINT `alocacoes_projecto_id_foreign` FOREIGN KEY (`projecto_id`) REFERENCES `projectos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
