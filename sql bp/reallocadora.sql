-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Host: mysql02-farm36.kinghost.net
-- Tempo de geração: 03/01/2022 às 10:48
-- Versão do servidor: 10.2.33-MariaDB-log
-- Versão do PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `reallocadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE IF NOT EXISTS `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`, `createdAt`, `updatedAt`) VALUES
(4, 'ANGRA DOS REIS', '2021-09-06 17:06:30', '2021-09-06 17:06:30'),
(5, 'RESENDE', '2021-09-06 17:06:38', '2021-09-06 17:06:38'),
(6, 'QUATIS', '2021-09-06 17:06:46', '2021-09-06 17:06:46'),
(7, 'PORTO REAL', '2021-09-06 17:06:53', '2021-09-06 17:06:53'),
(8, 'PETROPOLIS', '2021-09-06 17:07:00', '2021-09-06 17:07:00'),
(9, 'NITEROI', '2021-09-06 17:07:08', '2021-09-06 17:07:08'),
(10, 'ITATIAIA', '2021-09-06 17:07:22', '2021-09-06 17:07:22'),
(11, 'VOLTA REDONDA', '2021-09-06 17:07:35', '2021-09-06 17:07:35'),
(12, 'BARRA MANSA', '2021-09-06 17:50:09', '2021-09-06 17:50:09'),
(13, 'MIGUEL PEREIRA', '2021-09-06 20:08:26', '2021-09-06 20:08:26'),
(14, 'PARATY', '2021-09-06 20:20:54', '2021-09-06 20:20:54'),
(15, '3 ', '2021-09-06 21:33:44', '2021-09-06 21:33:44'),
(16, 'Três RIOS ', '2021-09-06 21:34:00', '2021-09-06 21:34:00'),
(17, 'BARRA DO PIRAI', '2021-09-23 19:09:58', '2021-09-23 19:09:58'),
(18, 'RIO DE JANEIRO', '2021-11-01 12:28:38', '2021-11-01 12:28:38'),
(19, 'BANANAL SP', '2021-11-01 14:16:03', '2021-11-01 14:16:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatosfornecedors`
--

CREATE TABLE IF NOT EXISTS `contatosfornecedors` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `idForncedor` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contratos`
--

CREATE TABLE IF NOT EXISTS `contratos` (
  `id` int(11) NOT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `orgao` varchar(255) DEFAULT NULL,
  `empenho` varchar(255) DEFAULT NULL,
  `edital` varchar(255) DEFAULT NULL,
  `processo` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `contratante` varchar(255) DEFAULT NULL,
  `inicio` varchar(255) DEFAULT NULL,
  `termino` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `contratos`
--

INSERT INTO `contratos` (`id`, `numero`, `orgao`, `empenho`, `edital`, `processo`, `cidade`, `contratante`, `inicio`, `termino`, `status`, `createdAt`, `updatedAt`) VALUES
(2, '007/2017', 'SAAE', '00000000000000000', '010/2017', '20170033988', 'ANGRA DOS REIS', 'SAAE', '09-2017', '48', 'Encerrado', '2021-09-06 17:10:05', '2021-11-01 12:43:46'),
(3, '024/2020', 'SEGURANÇA', '000', '015/2020', '5734/2019', 'MIGUEL PEREIRA', 'GUARDA', '04-2021', '12', 'Prorrogado', '2021-09-06 20:13:41', '2021-09-06 20:14:10'),
(4, '029/2019', 'DEFESA DO CONSUMIDOR ', '000', '029/2019', '54000023/2019', 'NITEROI', 'DEFESA DO CONSUMIDOR ', '11-2019', '12', 'Ativo', '2021-09-06 20:19:49', '2021-09-06 20:19:49'),
(5, '011/2019', 'FUNDO MUNICIPAL DE SAÚDE ', '394', '016/2019', '17615/2019', 'PARATY', 'SAÚDE', '04-2019', '12', 'Prorrogado', '2021-09-06 20:26:15', '2021-11-01 16:50:19'),
(6, '018/2019', 'FUNDO MUNICIPAL DE SAÚDE ', '000', '024/2019', '2497/2019', 'PETROPOLIS', 'SAÚDE', '10-2019', '12', 'Prorrogado', '2021-09-06 20:47:03', '2021-11-01 16:52:10'),
(7, '047/2019', 'FUNDO', '000', '024/2019', '2497/2019', 'PETROPOLIS', 'SAÚDE', '07-2019', '12', 'Prorrogado', '2021-09-06 20:52:07', '2021-09-06 20:52:22'),
(8, '012/2020', 'ASSISTÊNCIA', '052/2021', '143/2019', '4023/2019', 'PORTO REAL', 'ASSISTÊNCIA', '01-2019', '12', 'Prorrogado', '2021-09-06 20:59:52', '2021-09-06 21:00:09'),
(9, '084/2018', 'SECRETARIA', '001635/2018', '115/2018', '3208/2018', 'PORTO REAL', 'SECRETARIA', '12-2018', '12', 'Prorrogado', '2021-09-06 21:12:24', '2021-09-06 21:29:09'),
(10, '0030/2021', 'SAAETRI', '000', '0023/2021', '4432/2021', '3 RIOS ', 'SAAETRI', '08-2021', '12', 'Ativo', '2021-09-06 21:36:39', '2021-09-06 21:36:39'),
(11, '38/2020', 'FUNDO', '1285', '090/2020', '55568/2019', 'PETROPOLIS', 'SAÚDE', '12-2020', '12', 'Prorrogado', '2021-09-08 12:54:26', '2021-09-08 13:06:57'),
(12, '053/2021', 'ADMINISTRAÇÃO', '000', '24/2021', '1262/2021', 'QUATIS', 'SECRETARIA MUNICIPAL DE ADMINISTRAÇÃO ', '08-2021', '12', 'Ativo', '2021-09-08 13:41:01', '2021-09-08 13:41:01'),
(13, '09/2021', 'DEFESA', '000', '001/2020', '2019020873', 'QUATIS', 'GUARDA', '05-2021', '12', 'Ativo', '2021-09-08 14:09:27', '2021-09-08 14:22:32'),
(14, '148/2019', 'ADMINISTRAÇÃO', '000', '100/2019', '15914/2019', 'RESENDE', 'ADMINISTRAÇÃO ', '08-2019', '12', 'Ativo', '2021-09-09 19:50:19', '2021-09-09 19:50:19'),
(15, '82/2018', 'SAAE SAVEIRO CD', '1200/19', '010/2017', '8786/2018', 'BARRA DO PIRAI', 'SAAE', '06-2018', '12', 'Ativo', '2021-09-23 19:28:07', '2021-11-01 13:13:24'),
(16, '034/2017', 'ASSISTÊNCIA SOCIAL', '2410', '001/2020', '2017022323', 'ANGRA DOS REIS', 'ADMINISTRAÇÃO ', '07-2019', '12', 'Ativo', '2021-11-01 12:47:09', '2021-11-01 13:16:18'),
(17, '020/2021', 'EDUCAÇÃO', '000', '001/2020', '2019020873', 'ANGRA DOS REIS', 'ADMINISTRAÇÃO ', '03-2019', '12', 'Ativo', '2021-11-01 13:20:05', '2021-11-01 13:20:05'),
(18, '003/2021', 'CÂMARA ', '059/2021/SA', '011/2021', '1247/2021', 'ANGRA DOS REIS', 'CÂMARA DOS VEREADORES ', '09-2021', '6', 'Ativo', '2021-11-01 13:30:39', '2021-11-01 13:30:39'),
(19, '02/2020', 'CENTRO ESPIRITA', '000', '02/2020', '02/2020', 'BARRA DO PIRAI', 'HOSPITAL', '03-2020', '10', 'Ativo', '2021-11-01 13:48:53', '2021-11-01 13:48:53'),
(20, '53/2021', 'ADMINISTRAÇÃO', '000', 'ATA 097/2020', '2019020873', 'BARRA DO PIRAI', 'OBRA E MEIO AMBIENTE ', '06-2021', '12', 'Ativo', '2021-11-01 13:55:56', '2021-11-01 13:55:56'),
(21, '017/020', 'PREF. MUNICIPAL DE BANANAL ', '000', '11/2020', '3636/2019', 'BANANAL SP', 'SECRETARIA MUNICIPAL DE SAÚDE', '03-2020', '12', 'Ativo', '2021-11-01 14:18:44', '2021-11-01 14:18:44'),
(22, '52/2017', 'G.M', '2905/2017', 'ATA', '6416/2017', 'BARRA DO PIRAI', 'G.M', '11-2017', '12', 'Prorrogado', '2021-11-01 14:23:24', '2021-11-01 14:26:53'),
(23, '36/2019', 'DEMUTRAN', '1200/19', 'ATA', '17085/2018', 'BARRA DO PIRAI', 'DEMUTRAN', '05-2019', '12', 'Ativo', '2021-11-01 14:30:00', '2021-11-01 14:30:23'),
(24, '062/2020', 'ASSISTÊNCIA SOCIAL', '35/20', 'ATA 007/2020 PR 99/2019', '2491/2020', 'ITATIAIA', 'ASSISTÊNCIA SOCIAL ', '05-2020', '12', 'Ativo', '2021-11-01 14:36:42', '2021-11-01 14:36:42'),
(25, '033/2020', 'ADMINISTRAÇÃO', '424/18', 'ATA 007/2020 PR 99/2019', '7071/2018', 'ITATIAIA', 'ADMINISTRAÇÃO ', '02-2020', '12', 'Ativo', '2021-11-01 14:41:24', '2021-11-01 14:41:24'),
(26, '005/2021', 'GUARDA MUNICIPAL', '000', 'ATA', '7071/2018', 'ITATIAIA', 'ORDEM  PUBLICA', '01-2021', '12', 'Ativo', '2021-11-01 14:44:42', '2021-11-01 14:45:28'),
(27, '030/2020', 'ASSISTÊNCIA SOCIAL', '17/20', 'ATA 007/2020 PR 99/2019', '7071/2018', 'ITATIAIA', 'ASSISTÊNCIA SOCIAL ', '02-2020', '12', 'Ativo', '2021-11-01 14:48:10', '2021-11-01 14:48:10'),
(29, '028/2020', 'SAÚDE', '178/20', 'ATA', '7071/2018', 'ITATIAIA', 'ADMINISTRAÇÃO ', '02-2020', '12', 'Ativo', '2021-11-01 14:59:32', '2021-11-01 15:53:52'),
(30, '24/2018', 'FUNDO MUNICIPAL DE SAÚDE ', '14/19', 'ATA', '2743/2018', 'ITATIAIA', 'PENEDO E ITATIAIA ', '05-2018', '12', 'Ativo', '2021-11-01 15:58:16', '2021-11-01 16:00:56'),
(31, '170/2021', 'EDUCAÇÃO', '000', '209/2021', '10957/2021', 'RESENDE', 'SECR. MUNICIPAL DE EDUCAÇÃO ', '09-2021', '12', 'Ativo', '2021-11-01 16:17:52', '2021-11-01 16:17:52');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contrato_veiculos`
--

CREATE TABLE IF NOT EXISTS `contrato_veiculos` (
  `id` int(11) NOT NULL,
  `placa` varchar(255) DEFAULT NULL,
  `idVeiculo` varchar(255) DEFAULT NULL,
  `idContrato` varchar(255) DEFAULT NULL,
  `dataEntrada` varchar(255) DEFAULT NULL,
  `valorVeiculo` varchar(255) DEFAULT NULL,
  `saidaVeiculo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `contrato_veiculos`
--

INSERT INTO `contrato_veiculos` (`id`, `placa`, `idVeiculo`, `idContrato`, `dataEntrada`, `valorVeiculo`, `saidaVeiculo`, `createdAt`, `updatedAt`) VALUES
(12, 'LTN9E54', '49', '2', '2017-11-24', '2.920,00', NULL, '2021-09-06 17:15:45', '2021-09-06 17:15:45'),
(13, 'LTH8943', '50', '2', '2017-11-24', '2.920,00', NULL, '2021-09-06 17:16:16', '2021-09-06 17:16:16'),
(14, 'LTH8940', '51', '2', '2017-11-24', '2.920,00', NULL, '2021-09-06 17:16:59', '2021-09-06 17:16:59'),
(15, 'LTG1488', '48', '2', '2017-11-24', '2.920,00', NULL, '2021-09-06 17:18:07', '2021-09-06 17:18:07'),
(16, 'LMM4141', '47', '2', '2017-11-24', '2.920,00', NULL, '2021-09-06 17:18:39', '2021-09-06 17:18:39'),
(17, 'LMM3891', '46', '2', '2017-11-24', '2.920,00', NULL, '2021-09-06 17:19:02', '2021-09-06 17:19:02'),
(19, 'KYO9411', '84', '2', '2017-11-24', '2.920,00', NULL, '2021-09-06 17:21:53', '2021-09-06 17:21:53'),
(20, 'LMP4H11', '87', '3', '2020-05-15', '2.000,00', NULL, '2021-09-06 20:15:05', '2021-09-06 20:15:05'),
(21, 'LMP7F13', '86', '3', '2020-05-15', '2.000,00', NULL, '2021-09-06 20:15:47', '2021-09-06 20:15:47'),
(22, 'LMN5081', '33', '4', '2019-11-25', '1.758,00', NULL, '2021-09-06 20:20:22', '2021-09-06 20:20:22'),
(23, 'LMX6G92', '88', '5', '2019-05-24', '4.990,00', NULL, '2021-09-06 20:29:41', '2021-09-06 20:29:41'),
(24, 'QPE5657', '89', '6', '2019-11-08', '2.819,75', NULL, '2021-09-06 20:50:36', '2021-09-06 20:50:36'),
(25, 'LMY4I14', '90', '7', '2019-07-19', '2.819,75', NULL, '2021-09-06 20:53:06', '2021-09-06 20:53:06'),
(26, 'LMX8E35', '91', '7', '2019-07-05', '2.819,75', NULL, '2021-09-06 20:53:39', '2021-09-06 20:53:39'),
(27, 'LMX8E14', '92', '7', '2019-07-05', '2.819,75', NULL, '2021-09-06 20:54:06', '2021-09-06 20:54:06'),
(28, 'QNN2C38', '94', '8', '2020-02-10', '2.550,00', NULL, '2021-09-06 21:02:28', '2021-09-06 21:02:28'),
(29, 'FPM3A17', '93', '8', '2020-02-10', '2.550,00', NULL, '2021-09-06 21:03:13', '2021-09-06 21:03:13'),
(30, 'LMS3D23', '95', '9', '2019-01-31', '2.599,00', NULL, '2021-09-06 21:26:37', '2021-09-06 21:26:37'),
(31, 'PUF3B11', '96', '9', '2019-01-11', '2.633,00', NULL, '2021-09-06 21:27:29', '2021-09-06 21:27:29'),
(32, 'IXI4B44', '98', '9', '2019-01-15', '2.633,00', NULL, '2021-09-06 21:27:52', '2021-09-06 21:27:52'),
(33, 'OYV5J46', '97', '9', '2019-01-15', '2.633,00', NULL, '2021-09-06 21:28:20', '2021-09-06 21:28:20'),
(34, 'KRG5F20', '99', '9', '2019-01-11', '1.669,00', NULL, '2021-09-06 21:28:53', '2021-09-06 21:28:53'),
(35, 'LMP4H29', '79', '10', '2021-08-23', '1.800,00', NULL, '2021-09-06 21:39:14', '2021-09-06 21:39:14'),
(36, 'EWT1507', '102', '10', '2021-08-23', '1.780,00', NULL, '2021-09-06 21:49:20', '2021-09-06 21:49:20'),
(37, 'QUE9790', '100', '10', '2021-08-23', '3.400,00', NULL, '2021-09-06 21:49:46', '2021-09-06 21:49:46'),
(38, 'QQP8I37', '101', '10', '2021-08-23', '3.400,00', NULL, '2021-09-06 21:50:12', '2021-09-06 21:50:12'),
(39, 'QQC1298', '103', '11', '2020-12-02', '2.700,00', NULL, '2021-09-08 13:07:32', '2021-09-08 13:07:32'),
(40, 'QUR7H09', '105', '11', '2020-12-02', '2.700,00', NULL, '2021-09-08 13:07:59', '2021-09-08 13:07:59'),
(41, 'QQE2I72', '107', '11', '2020-12-02', '2.700,00', NULL, '2021-09-08 13:19:09', '2021-09-08 13:19:09'),
(42, 'QQP9238', '106', '11', '2020-12-02', '2.700,00', NULL, '2021-09-08 13:19:38', '2021-09-08 13:19:38'),
(43, 'QQC1296', '104', '11', '2020-05-03', '2.700,00', NULL, '2021-09-08 13:20:18', '2021-09-08 13:20:18'),
(44, 'LMO4H37', '108', '12', '2021-08-12', '1.670,00', NULL, '2021-09-08 13:44:31', '2021-09-08 13:44:31'),
(45, 'LMH7912', '109', '12', '2021-08-12', '1.670,00', NULL, '2021-09-08 13:49:48', '2021-09-08 13:49:48'),
(46, 'KOL6009', '110', '13', '2021-05-31', '2.295,00', NULL, '2021-09-08 14:24:52', '2021-09-08 14:24:52'),
(47, 'LLG2965', '111', '13', '2021-05-31', '2.295,00', NULL, '2021-09-08 14:25:21', '2021-09-08 14:25:21'),
(48, 'KZA9659', '34', '14', '2019-11-22', '1.665,14', NULL, '2021-09-09 20:07:23', '2021-09-09 20:07:23'),
(49, 'LTK3594', '36', '14', '2019-08-13', '1.665,14', NULL, '2021-09-09 20:08:16', '2021-09-09 20:08:16'),
(50, 'LTK3662', '35', '14', '2019-08-13', '1.665,14', NULL, '2021-09-09 20:08:35', '2021-09-09 20:08:35'),
(51, 'KZA9749', '32', '14', '2019-08-13', '1.665,14', NULL, '2021-09-09 20:08:58', '2021-09-09 20:08:58'),
(52, 'KZA9709', '40', '14', '2019-08-13', '1.665,14', NULL, '2021-09-09 20:09:27', '2021-09-09 20:09:27'),
(53, 'LMN5100', '39', '14', '2019-08-13', '1.665,14', NULL, '2021-09-09 20:09:47', '2021-09-09 20:09:47'),
(54, 'LTK3636', '37', '14', '2019-08-13', '1.665,14', NULL, '2021-09-09 20:10:11', '2021-09-09 20:10:11'),
(55, 'PZI4992', '112', '12', '2021-12-20', '1.670,00', NULL, '2021-09-20 14:36:36', '2021-09-20 14:36:36'),
(56, 'QOQ2598', '113', '12', '2021-08-31', '1.670,00', NULL, '2021-09-20 14:45:53', '2021-09-20 14:45:53'),
(57, 'LSZ8388', '114', '12', '2021-09-22', '1.670,00', NULL, '2021-09-22 20:47:32', '2021-09-22 20:47:32'),
(58, 'LTF9791', '127', '2', '2017-11-24', '2.920,00', NULL, '2021-11-01 12:43:26', '2021-11-01 12:43:26'),
(59, 'LUB6924', '54', '16', '2017-11-30', '2.920,00', NULL, '2021-11-01 13:03:12', '2021-11-01 13:03:12'),
(60, 'LMM5646', '53', '16', '2017-11-30', '2.920,00', NULL, '2021-11-01 13:04:56', '2021-11-01 13:04:56'),
(61, 'LTL9839', '68', '15', '2018-07-10', '2.920,00', NULL, '2021-11-01 13:10:48', '2021-11-01 13:10:48'),
(62, 'KZI8567', '67', '15', '2018-07-10', '2.920,00', NULL, '2021-11-01 13:13:02', '2021-11-01 13:13:02'),
(63, 'LMU0C67', '52', '17', '2019-03-29', '2.090,00', NULL, '2021-11-01 13:25:32', '2021-11-01 13:25:32'),
(64, 'RHK8A75', '118', '18', '2021-09-21', '2.126,67', NULL, '2021-11-01 13:39:11', '2021-11-01 13:39:11'),
(65, 'RHK8A70', '115', '18', '2021-09-21', '2.126,67', NULL, '2021-11-01 13:39:47', '2021-11-01 13:39:47'),
(66, 'RHK7B24', '116', '18', '2021-09-21', '2.126,67', NULL, '2021-11-01 13:40:29', '2021-11-01 13:40:29'),
(67, 'RHK8A73', '122', '18', '2021-09-21', '2.126,67', NULL, '2021-11-01 13:41:03', '2021-11-01 13:41:03'),
(68, 'RHK8A72', '124', '18', '2021-09-21', '2.126,67', NULL, '2021-11-01 13:41:40', '2021-11-01 13:41:40'),
(69, 'RHK8A71', '117', '18', '2021-09-21', '2.126,67', NULL, '2021-11-01 13:43:48', '2021-11-01 13:43:48'),
(70, 'RHK8A74', '121', '18', '2021-09-21', '2.126,67', NULL, '2021-11-01 13:44:24', '2021-11-01 13:44:24'),
(71, 'LMN9482', '59', '19', '2020-03-02', '11.800,00', NULL, '2021-11-01 13:51:34', '2021-11-01 13:51:34'),
(72, 'RJA3C81', '60', '20', '2021-05-28', '2.090,00', NULL, '2021-11-01 13:59:32', '2021-11-01 13:59:32'),
(73, 'RIP4J47', '61', '20', '2021-05-28', '2.090,00', NULL, '2021-11-01 14:00:02', '2021-11-01 14:00:02'),
(74, 'LLG1B34', '62', '20', '2021-06-23', '2.090,00', NULL, '2021-11-01 14:00:41', '2021-11-01 14:00:41'),
(75, 'LLG2991', '63', '20', '2021-06-23', '2.090,00', NULL, '2021-11-01 14:01:05', '2021-11-01 14:01:05'),
(76, 'FQH8J92', '64', '21', '2020-08-04', '9.000,00', NULL, '2021-11-01 14:19:23', '2021-11-01 14:19:23'),
(77, 'KYE8744', '55', '22', '2017-12-19', '7.250,00', NULL, '2021-11-01 14:25:18', '2021-11-01 14:25:18'),
(78, 'LTG5280', '56', '22', '2021-12-19', '7.250,00', NULL, '2021-11-01 14:25:45', '2021-11-01 14:25:45'),
(79, 'KYE8422', '57', '22', '2017-12-19', '7.250,00', NULL, '2021-11-01 14:26:16', '2021-11-01 14:26:16'),
(80, 'KYE8534', '58', '22', '2017-12-19', '7.250,00', NULL, '2021-11-01 14:26:40', '2021-11-01 14:26:40'),
(81, 'LMV7G52', '66', '23', '2019-05-13', '2.250,00', NULL, '2021-11-01 14:32:47', '2021-11-01 14:32:47'),
(82, 'LTR8J60', '65', '23', '2019-05-13', '2.250,00', NULL, '2021-11-01 14:33:08', '2021-11-01 14:33:08'),
(83, 'RJO0F32', '72', '24', '2021-03-16', '3.400,00', NULL, '2021-11-01 14:38:08', '2021-11-01 14:38:08'),
(84, 'RKU1C49', '74', '25', '2020-03-16', '3.400,00', NULL, '2021-11-01 14:42:21', '2021-11-01 14:42:21'),
(85, 'RIP4J47', '61', '26', '2021-02-05', '3.400,00', NULL, '2021-11-01 14:46:08', '2021-11-01 14:46:08'),
(86, 'RJO0F32', '72', '27', '2020-03-16', '3.400,00', NULL, '2021-11-01 14:49:05', '2021-11-01 14:49:05'),
(87, 'RJW0645', '69', '28', '2020-03-31', '4.790,00', NULL, '2021-11-01 14:51:57', '2021-11-01 14:51:57'),
(88, 'RJW0G45', '69', '28', '2020-03-31', '3.400,00', NULL, '2021-11-01 14:55:47', '2021-11-01 14:55:47'),
(89, 'RJW0G45', '69', '29', '2020-03-31', '4.790,00', NULL, '2021-11-01 15:00:05', '2021-11-01 15:00:05'),
(90, 'LTL9353', '71', '30', '2018-08-28', '4.500,00', NULL, '2021-11-01 16:01:17', '2021-11-01 16:01:17'),
(91, 'LLG2331', '70', '30', '2018-11-22', '4.500,00', NULL, '2021-11-01 16:01:46', '2021-11-01 16:01:46'),
(93, 'QQV6J20', '128', '31', '2021-10-25', '2.475,00', NULL, '2021-11-01 16:26:47', '2021-11-01 16:26:47'),
(94, 'QQV6J30', '129', '31', '2021-10-25', '2.475,00', NULL, '2021-11-01 16:28:32', '2021-11-01 16:28:32'),
(95, 'LMM3891', '46', '31', '2021-10-25', '1.800,00', NULL, '2021-11-01 16:29:28', '2021-11-01 16:29:28'),
(96, 'LMP9F00', '77', '31', '2021-10-25', '1.575,00', NULL, '2021-11-01 16:30:14', '2021-11-01 16:30:14'),
(97, 'LMP9E94', '78', '31', '2021-10-25', '1.575,00', NULL, '2021-11-01 16:30:49', '2021-11-01 16:30:49'),
(98, 'LRJ7G98', '80', '31', '2021-10-25', '1.575,00', NULL, '2021-11-01 16:31:22', '2021-11-01 16:31:22'),
(99, 'LMP9H13', '81', '31', '2021-10-25', '1.575,00', NULL, '2021-11-01 16:31:49', '2021-11-01 16:31:49'),
(100, 'KRG5528', '130', '31', '2021-10-25', '1.575,00', NULL, '2021-11-01 16:38:16', '2021-11-01 16:38:16'),
(101, 'LSV8C75', '126', '31', '2021-10-25', '1.575,00', NULL, '2021-11-01 16:42:04', '2021-11-01 16:42:04'),
(102, 'LLV8919', '82', '31', '2021-10-25', '1.800,00', NULL, '2021-11-01 16:45:17', '2021-11-01 16:45:17'),
(103, 'KPK5377', '131', '31', '2021-10-25', '1.800,00', NULL, '2021-11-01 16:48:07', '2021-11-01 16:48:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoques`
--

CREATE TABLE IF NOT EXISTS `estoques` (
  `id` int(11) NOT NULL,
  `idItem` varchar(255) DEFAULT NULL,
  `qtdItem` varchar(255) DEFAULT NULL,
  `idForencedor` int(11) DEFAULT NULL,
  `ultimaCompra` int(11) DEFAULT NULL,
  `valorUltimaCompra` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `estoques`
--

INSERT INTO `estoques` (`id`, `idItem`, `qtdItem`, `idForencedor`, `ultimaCompra`, `valorUltimaCompra`, `createdAt`, `updatedAt`) VALUES
(1, '5', '3', 5, 2021, 2, '2021-11-02 14:34:59', '2021-11-02 14:34:59'),
(2, '5', '5', NULL, 2021, 5, '2021-11-02 15:01:16', '2021-11-02 15:01:16'),
(3, '2', '13', 10, 2021, 5, '2021-11-02 15:03:13', '2021-11-02 15:03:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `forncedores`
--

CREATE TABLE IF NOT EXISTS `forncedores` (
  `id` int(11) NOT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE IF NOT EXISTS `fornecedores` (
  `id` int(11) NOT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `empresa`, `cidade`, `celular`, `telefone`, `email`, `desc`, `createdAt`, `updatedAt`) VALUES
(4, 'CONDIP', 'RESENDE', '(19) 64368-341', '', 'admin@admin.com', 'FORNECEDOR DE BOMBA D''ÁGUA', '2021-09-06 17:36:12', '2021-09-06 17:36:30'),
(5, 'REDE MANAUS ', 'BARRA MANSA', '(24) 97401-2845', '', 'admin@admin.com', 'FORNECEDOR DE PNEUS ', '2021-09-06 17:51:34', '2021-09-06 17:51:34'),
(6, 'BARRA LURB', 'BARRA MANSA', '(24) 99952-31', '', '', '', '2021-11-01 12:27:36', '2021-11-01 12:35:15'),
(7, 'CANTU PNEUS ', 'RIO DE JANEIRO', '(21) 96958-26', '', '', '', '2021-11-01 12:29:12', '2021-11-01 12:35:34'),
(8, 'NAFIL AUTO PEÇAS ', 'RESENDE', '(24) 99334-52', '', '', '', '2021-11-01 12:30:38', '2021-11-01 12:34:55'),
(9, 'LACAUTO  AUTO PEÇAS ', 'VOLTA REDONDA', '(24) 97403-97', '', '', '', '2021-11-01 12:32:07', '2021-11-01 12:32:07'),
(10, 'REAL AUTOFER ', 'PORTO REAL', '(24) 99945-0473', '', '', 'Distribuidora Azobert Porto Real', '2021-11-01 12:34:02', '2021-11-01 12:34:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gasto_manutencaos`
--

CREATE TABLE IF NOT EXISTS `gasto_manutencaos` (
  `id` int(11) NOT NULL,
  `id_manutencao` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `quantidade` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `gasto_manutencaos`
--

INSERT INTO `gasto_manutencaos` (`id`, `id_manutencao`, `codigo`, `nome`, `valor`, `quantidade`, `total`, `createdAt`, `updatedAt`) VALUES
(35, '7', 'NKBA07637', 'BOMBA D''ÁGUA', '198,00', '1', '198', '2021-09-06 17:43:11', '2021-09-06 17:43:11'),
(36, '8', '303683', 'PNEU 185/R14', '427,59', '2', '854', '2021-09-06 18:04:27', '2021-09-06 18:04:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `historicos`
--

CREATE TABLE IF NOT EXISTS `historicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `acao` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `historicos`
--

INSERT INTO `historicos` (`id`, `nome`, `acao`, `msg`, `data`, `createdAt`, `updatedAt`) VALUES
(2, 'Danilo Chagas', 'Criou um veículo', 'Veículo com placa 7777777', '11111', '2021-08-14 14:46:53', '2021-08-14 14:46:53'),
(3, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTB6979', '11111', '2021-09-06 14:04:15', '2021-09-06 14:04:15'),
(4, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LLX6015', '11111', '2021-09-06 14:06:30', '2021-09-06 14:06:30'),
(5, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KWL6307', '11111', '2021-09-06 14:07:46', '2021-09-06 14:07:46'),
(6, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LLX8020', '11111', '2021-09-06 14:08:51', '2021-09-06 14:08:51'),
(7, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMH1115', '11111', '2021-09-06 14:09:59', '2021-09-06 14:09:59'),
(8, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMA1430', '11111', '2021-09-06 14:11:18', '2021-09-06 14:11:18'),
(9, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMG9114', '11111', '2021-09-06 14:12:30', '2021-09-06 14:12:30'),
(10, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LSP9415', '11111', '2021-09-06 14:13:43', '2021-09-06 14:13:43'),
(11, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KRR2676', '11111', '2021-09-06 14:15:56', '2021-09-06 14:15:56'),
(12, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LSQ7128', '11111', '2021-09-06 14:16:52', '2021-09-06 14:16:52'),
(13, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KZB8348', '11111', '2021-09-06 14:18:56', '2021-09-06 14:18:56'),
(14, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KXI5794', '11111', '2021-09-06 14:23:03', '2021-09-06 14:23:03'),
(15, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KZA9749', '11111', '2021-09-06 14:26:16', '2021-09-06 14:26:16'),
(16, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMN5081', '11111', '2021-09-06 14:27:20', '2021-09-06 14:27:20'),
(17, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KZA9659', '11111', '2021-09-06 14:28:21', '2021-09-06 14:28:21'),
(18, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTK3662', '11111', '2021-09-06 14:29:45', '2021-09-06 14:29:45'),
(19, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTK3594', '11111', '2021-09-06 14:33:13', '2021-09-06 14:33:13'),
(20, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTK3636', '11111', '2021-09-06 14:33:49', '2021-09-06 14:33:49'),
(21, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTK3635', '11111', '2021-09-06 14:34:54', '2021-09-06 14:34:54'),
(22, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMN5100', '11111', '2021-09-06 14:35:36', '2021-09-06 14:35:36'),
(23, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KZA9709', '11111', '2021-09-06 14:36:35', '2021-09-06 14:36:35'),
(24, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KZA9664', '11111', '2021-09-06 14:37:37', '2021-09-06 14:37:37'),
(25, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KXR9756', '11111', '2021-09-06 14:39:34', '2021-09-06 14:39:34'),
(26, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KRV9769', '11111', '2021-09-06 14:41:04', '2021-09-06 14:41:04'),
(27, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KRW9834', '11111', '2021-09-06 14:42:14', '2021-09-06 14:42:14'),
(28, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTF9791', '11111', '2021-09-06 14:46:33', '2021-09-06 14:46:33'),
(29, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMM3891', '11111', '2021-09-06 14:47:27', '2021-09-06 14:47:27'),
(30, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMM4141', '11111', '2021-09-06 14:48:18', '2021-09-06 14:48:18'),
(31, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTG1488', '11111', '2021-09-06 14:49:09', '2021-09-06 14:49:09'),
(32, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTN9E54', '11111', '2021-09-06 14:50:40', '2021-09-06 14:50:40'),
(33, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTH8943', '11111', '2021-09-06 14:51:47', '2021-09-06 14:51:47'),
(34, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTH8940', '11111', '2021-09-06 14:53:00', '2021-09-06 14:53:00'),
(35, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMU0C67', '11111', '2021-09-06 14:55:06', '2021-09-06 14:55:06'),
(36, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMM5646', '11111', '2021-09-06 14:57:25', '2021-09-06 14:57:25'),
(37, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LUB6924', '11111', '2021-09-06 14:58:23', '2021-09-06 14:58:23'),
(38, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KYE8744', '11111', '2021-09-06 15:03:00', '2021-09-06 15:03:00'),
(39, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTG5280', '11111', '2021-09-06 15:04:05', '2021-09-06 15:04:05'),
(40, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KYE8422', '11111', '2021-09-06 15:05:03', '2021-09-06 15:05:03'),
(41, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KYE8534', '11111', '2021-09-06 15:06:20', '2021-09-06 15:06:20'),
(42, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMN9482', '11111', '2021-09-06 15:08:26', '2021-09-06 15:08:26'),
(43, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RJA3C81', '11111', '2021-09-06 15:10:17', '2021-09-06 15:10:17'),
(44, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RIP4J47', '11111', '2021-09-06 15:11:40', '2021-09-06 15:11:40'),
(45, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LLG1B34', '11111', '2021-09-06 15:14:23', '2021-09-06 15:14:23'),
(46, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LLG2991', '11111', '2021-09-06 15:16:33', '2021-09-06 15:16:33'),
(47, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa FQH8J92', '11111', '2021-09-06 15:26:32', '2021-09-06 15:26:32'),
(48, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTR8J60', '11111', '2021-09-06 15:33:31', '2021-09-06 15:33:31'),
(49, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMV7G52', '11111', '2021-09-06 15:40:48', '2021-09-06 15:40:48'),
(50, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KZI8567', '11111', '2021-09-06 16:08:15', '2021-09-06 16:08:15'),
(51, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTL9839', '11111', '2021-09-06 16:08:59', '2021-09-06 16:08:59'),
(52, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RJW0645', '11111', '2021-09-06 16:21:01', '2021-09-06 16:21:01'),
(53, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LLG2331', '11111', '2021-09-06 16:22:22', '2021-09-06 16:22:22'),
(54, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTL9353', '11111', '2021-09-06 16:23:39', '2021-09-06 16:23:39'),
(55, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RJO0F32', '11111', '2021-09-06 16:26:43', '2021-09-06 16:26:43'),
(56, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RJQ1A45', '11111', '2021-09-06 16:29:29', '2021-09-06 16:29:29'),
(57, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RKU1C49', '11111', '2021-09-06 16:31:06', '2021-09-06 16:31:06'),
(58, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RIP4A17', '11111', '2021-09-06 16:37:26', '2021-09-06 16:37:26'),
(59, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa OPI2B50', '11111', '2021-09-06 16:42:01', '2021-09-06 16:42:01'),
(60, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMP9F00', '11111', '2021-09-06 16:45:18', '2021-09-06 16:45:18'),
(61, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMP9E94', '11111', '2021-09-06 16:47:24', '2021-09-06 16:47:24'),
(62, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMP4H29', '11111', '2021-09-06 16:48:38', '2021-09-06 16:48:38'),
(63, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LRJ7G98', '11111', '2021-09-06 16:49:42', '2021-09-06 16:49:42'),
(64, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMP9H13', '11111', '2021-09-06 16:50:56', '2021-09-06 16:50:56'),
(65, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LLV8919', '11111', '2021-09-06 16:53:29', '2021-09-06 16:53:29'),
(66, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KYA4146', '11111', '2021-09-06 16:54:28', '2021-09-06 16:54:28'),
(67, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KYO9411', '11111', '2021-09-06 17:21:04', '2021-09-06 17:21:04'),
(68, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KWS5864', '11111', '2021-09-06 18:00:54', '2021-09-06 18:00:54'),
(69, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMP7F13', '11111', '2021-09-06 20:09:28', '2021-09-06 20:09:28'),
(70, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMP4H11', '11111', '2021-09-06 20:10:16', '2021-09-06 20:10:16'),
(71, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMX6G92', '11111', '2021-09-06 20:28:19', '2021-09-06 20:28:19'),
(72, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QPE5657', '11111', '2021-09-06 20:35:35', '2021-09-06 20:35:35'),
(73, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMY4I14', '11111', '2021-09-06 20:37:21', '2021-09-06 20:37:21'),
(74, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMX8E35', '11111', '2021-09-06 20:38:16', '2021-09-06 20:38:16'),
(75, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMX8E14', '11111', '2021-09-06 20:39:07', '2021-09-06 20:39:07'),
(76, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa FPM3A17', '11111', '2021-09-06 20:56:42', '2021-09-06 20:56:42'),
(77, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QNN2C38', '11111', '2021-09-06 20:57:44', '2021-09-06 20:57:44'),
(78, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMS3D23', '11111', '2021-09-06 21:19:42', '2021-09-06 21:19:42'),
(79, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa PUF3B11', '11111', '2021-09-06 21:21:26', '2021-09-06 21:21:26'),
(80, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa OYV5J46', '11111', '2021-09-06 21:22:45', '2021-09-06 21:22:45'),
(81, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa IXI4B44', '11111', '2021-09-06 21:23:54', '2021-09-06 21:23:54'),
(82, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KRG5F20', '11111', '2021-09-06 21:25:04', '2021-09-06 21:25:04'),
(83, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QUE9790', '11111', '2021-09-06 21:42:51', '2021-09-06 21:42:51'),
(84, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QQP8I37', '11111', '2021-09-06 21:45:03', '2021-09-06 21:45:03'),
(85, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa EWT1507', '11111', '2021-09-06 21:47:55', '2021-09-06 21:47:55'),
(86, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QQC1298', '11111', '2021-09-08 12:58:12', '2021-09-08 12:58:12'),
(87, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QQC1296', '11111', '2021-09-08 13:00:35', '2021-09-08 13:00:35'),
(88, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QUR7H09', '11111', '2021-09-08 13:04:01', '2021-09-08 13:04:01'),
(89, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QQP9238', '11111', '2021-09-08 13:05:46', '2021-09-08 13:05:46'),
(90, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QQE2I72', '11111', '2021-09-08 13:18:19', '2021-09-08 13:18:19'),
(91, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMO4H37', '11111', '2021-09-08 13:23:29', '2021-09-08 13:23:29'),
(92, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LMH7912', '11111', '2021-09-08 13:24:50', '2021-09-08 13:24:50'),
(93, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KOL6009', '11111', '2021-09-08 14:18:16', '2021-09-08 14:18:16'),
(94, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LLG2965', '11111', '2021-09-08 14:19:43', '2021-09-08 14:19:43'),
(95, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa PZI4992', '11111', '2021-09-20 14:19:59', '2021-09-20 14:19:59'),
(96, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QOQ2598', '11111', '2021-09-20 14:38:31', '2021-09-20 14:38:31'),
(97, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LSZ8388', '11111', '2021-09-22 20:47:09', '2021-09-22 20:47:09'),
(98, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RHK8A70', '11111', '2021-10-29 14:28:27', '2021-10-29 14:28:27'),
(99, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RHK7B24', '11111', '2021-10-29 14:31:54', '2021-10-29 14:31:54'),
(100, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RHK8A31', '11111', '2021-10-29 14:33:52', '2021-10-29 14:33:52'),
(101, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RHK8A75', '11111', '2021-10-29 14:36:11', '2021-10-29 14:36:11'),
(102, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QNJ73L3', '11111', '2021-10-29 14:39:50', '2021-10-29 14:39:50'),
(103, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QNN0B25', '11111', '2021-10-29 14:49:01', '2021-10-29 14:49:01'),
(104, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RHK8A74', '11111', '2021-10-29 14:54:12', '2021-10-29 14:54:12'),
(105, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RHK8A73', '11111', '2021-10-29 14:56:49', '2021-10-29 14:56:49'),
(106, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QQV6J30', '11111', '2021-10-29 15:02:01', '2021-10-29 15:02:01'),
(107, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa RHK8A72', '11111', '2021-10-29 15:04:51', '2021-10-29 15:04:51'),
(108, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa DPN1J90', '11111', '2021-10-29 15:15:30', '2021-10-29 15:15:30'),
(109, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LSV8275', '11111', '2021-10-29 18:17:18', '2021-10-29 18:17:18'),
(110, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa LTF9791', '11111', '2021-11-01 12:42:33', '2021-11-01 12:42:33'),
(111, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QQV6J20', '11111', '2021-11-01 16:24:18', '2021-11-01 16:24:18'),
(112, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa QQV6J30', '11111', '2021-11-01 16:27:41', '2021-11-01 16:27:41'),
(113, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KRG5528', '11111', '2021-11-01 16:37:44', '2021-11-01 16:37:44'),
(114, 'Romilson Gomes Sobrinho', 'Criou um veículo', 'Veículo com placa KPK5377', '11111', '2021-11-01 16:47:39', '2021-11-01 16:47:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itemestoques`
--

CREATE TABLE IF NOT EXISTS `itemestoques` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nomeItem` varchar(255) DEFAULT NULL,
  `fabricante` varchar(255) DEFAULT NULL,
  `fornecedor` varchar(255) DEFAULT NULL,
  `valorItem` varchar(255) DEFAULT NULL,
  `ultimaCompra` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `qtdItem` varchar(255) DEFAULT NULL,
  `valorUltimaCompra` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `itemestoques`
--

INSERT INTO `itemestoques` (`id`, `codigo`, `nomeItem`, `fabricante`, `fornecedor`, `valorItem`, `ultimaCompra`, `desc`, `qtdItem`, `valorUltimaCompra`, `createdAt`, `updatedAt`) VALUES
(2, 'NKBA07637', 'BOMBA D''ÁGUA', 'NAKATA', 'CONDIP', '198,00', '2021-09-01', 'BOMBA D''ÁGUA DO GOL 3 CILINDROS ', '1', '198,00', '2021-09-06 17:41:04', '2021-09-06 17:43:11'),
(3, '414040', 'PNEU 175/65R14', 'DUNLOP', 'REDE MANAUS ', '305,44', '2021-09-03', 'PNEU ARO 14', '6', '282,81', '2021-09-06 17:53:29', '2021-09-06 18:07:45'),
(4, '303683', 'PNEU 185/R14', 'FALKEN', 'REDE MANAUS ', '427,59', '2021-09-03', 'PNEU DE KOMBI', '0', '427,05', '2021-09-06 17:57:38', '2021-09-06 18:04:27'),
(6, '10010746', 'PNEU 185/65R15', 'FAR', 'CANTU PNEUS ', '334', '2021-10-29', '185/65/R15 88H FRD16 FAR', '0', NULL, '2021-11-03 20:26:06', '2021-11-03 20:34:13'),
(7, '10010717', 'PNEU 195/55R15', 'FAR', 'CANTU PNEUS ', '317', '2021-10-29', '195/55R15 85V FRD 16 FAR', '0', NULL, '2021-11-03 20:29:25', '2021-11-03 20:29:25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `manutencaos`
--

CREATE TABLE IF NOT EXISTS `manutencaos` (
  `id` int(11) NOT NULL,
  `data` varchar(255) DEFAULT NULL,
  `km` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `placa` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `abertura` varchar(255) DEFAULT NULL,
  `fechamento` varchar(255) DEFAULT NULL,
  `valorTotal` varchar(255) DEFAULT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `maoObra` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `manutencaos`
--

INSERT INTO `manutencaos` (`id`, `data`, `km`, `desc`, `placa`, `usuario`, `abertura`, `fechamento`, `valorTotal`, `responsavel`, `local`, `maoObra`, `createdAt`, `updatedAt`) VALUES
(7, '2021-09-01', '39009', 'TROCA DE ÓLEO E FILTRO, TROCA DA BOMBA DE ÁGUA ', 'LMN5100', 'Romilson Gomes Sobrinho', '2021-9-6 / 14:30:13', NULL, '198', 'CAIO', 'REAL', '0,00', '2021-09-06 17:30:13', '2021-09-06 17:43:11'),
(8, '2021-09-03', '99921', 'TROCA DE DOIS PNEUS,BALANCE E MONTAGEM ', 'KWS5864', 'Romilson Gomes Sobrinho', '2021-9-6 / 15:04:08', '2021-9-6 / 15:05:14', '907', 'ALBA', 'VINCOL', '53,00', '2021-09-06 18:04:08', '2021-09-06 18:05:14');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mes_contratos`
--

CREATE TABLE IF NOT EXISTS `mes_contratos` (
  `id` int(11) NOT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `contrato` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `valor_total` varchar(255) DEFAULT NULL,
  `id_contrato` varchar(255) DEFAULT NULL,
  `prorrogadoQtd` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `data_pagamento` varchar(255) NOT NULL,
  `valor_pagamento` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `mes_contratos`
--

INSERT INTO `mes_contratos` (`id`, `mes`, `contrato`, `status`, `valor_total`, `id_contrato`, `prorrogadoQtd`, `createdAt`, `updatedAt`, `data_pagamento`, `valor_pagamento`) VALUES
(38, '09-2017', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(39, '10-2017', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(40, '02-2018', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(41, '03-2018', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(42, '12-2017', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(43, '01-2018', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(44, '11-2017', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(45, '04-2018', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(46, '05-2018', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(47, '06-2018', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(48, '07-2018', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(49, '08-2018', NULL, NULL, NULL, '2', NULL, '2021-09-06 17:10:05', '2021-09-06 17:10:05', '', ''),
(50, '04-2021', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(51, '05-2021', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(52, '06-2021', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(53, '07-2021', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(54, '09-2021', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(55, '10-2021', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(56, '08-2021', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(57, '12-2021', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(58, '01-2022', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(59, '02-2022', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(60, '03-2022', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(61, '11-2021', NULL, NULL, NULL, '3', NULL, '2021-09-06 20:13:41', '2021-09-06 20:13:41', '', ''),
(62, '11-2019', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(63, '12-2019', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(64, '01-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(65, '02-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(66, '03-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(67, '04-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(68, '07-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(69, '08-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(70, '09-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(71, '05-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(72, '06-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(73, '10-2020', NULL, NULL, NULL, '4', NULL, '2021-09-06 20:19:49', '2021-09-06 20:19:49', '', ''),
(74, '04-2019', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(75, '05-2019', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(76, '06-2019', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(77, '07-2019', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(78, '08-2019', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(79, '09-2019', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(80, '10-2019', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(81, '11-2019', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(82, '02-2020', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(83, '03-2020', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(84, '12-2019', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(85, '01-2020', NULL, NULL, NULL, '5', NULL, '2021-09-06 20:26:15', '2021-09-06 20:26:15', '', ''),
(86, '07-2019', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(87, '08-2019', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(88, '09-2019', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(89, '10-2019', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(90, '11-2019', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(91, '12-2019', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(92, '01-2020', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(93, '02-2020', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(94, '05-2020', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(95, '06-2020', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(96, '03-2020', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(97, '04-2020', NULL, NULL, NULL, '6', NULL, '2021-09-06 20:47:03', '2021-09-06 20:47:03', '', ''),
(98, '07-2019', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(99, '08-2019', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(100, '09-2019', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(101, '11-2019', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(102, '01-2020', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(103, '02-2020', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(104, '10-2019', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(105, '04-2020', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(106, '05-2020', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(107, '06-2020', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(108, '12-2019', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(109, '03-2020', NULL, NULL, NULL, '7', NULL, '2021-09-06 20:52:07', '2021-09-06 20:52:07', '', ''),
(110, '01-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(111, '02-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(112, '03-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(113, '04-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(114, '07-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(115, '06-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(116, '08-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(117, '05-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(118, '09-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(119, '10-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(120, '11-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(121, '12-2019', NULL, NULL, NULL, '8', NULL, '2021-09-06 20:59:52', '2021-09-06 20:59:52', '', ''),
(122, '12-2018', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(123, '01-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(124, '02-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(125, '05-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(126, '06-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(127, '03-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(128, '08-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(129, '04-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(130, '09-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(131, '10-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(132, '11-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(133, '07-2019', NULL, NULL, NULL, '9', NULL, '2021-09-06 21:12:24', '2021-09-06 21:12:24', '', ''),
(134, '08-2021', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(135, '09-2021', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(136, '10-2021', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(137, '11-2021', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(138, '12-2021', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(139, '02-2022', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(140, '03-2022', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(141, '01-2022', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(142, '04-2022', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(143, '06-2022', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(144, '07-2022', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(145, '05-2022', NULL, NULL, NULL, '10', NULL, '2021-09-06 21:36:39', '2021-09-06 21:36:39', '', ''),
(146, '12-2020', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(147, '01-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(148, '02-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(149, '03-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(150, '04-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(151, '05-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(152, '06-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(153, '09-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(154, '10-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(155, '07-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(156, '11-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(157, '08-2021', NULL, NULL, NULL, '11', NULL, '2021-09-08 12:54:26', '2021-09-08 12:54:26', '', ''),
(158, '08-2021', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(159, '09-2021', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(160, '10-2021', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(161, '12-2021', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(162, '01-2022', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(163, '03-2022', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(164, '11-2021', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(165, '02-2022', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(166, '04-2022', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(167, '06-2022', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(168, '07-2022', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(169, '05-2022', NULL, NULL, NULL, '12', NULL, '2021-09-08 13:41:01', '2021-09-08 13:41:01', '', ''),
(170, '03-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(171, '04-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(172, '05-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(173, '06-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(174, '07-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(175, '08-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(176, '10-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(177, '11-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(178, '12-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(179, '01-2022', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(180, '09-2021', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(181, '02-2022', NULL, NULL, NULL, '13', NULL, '2021-09-08 14:09:27', '2021-09-08 14:09:27', '', ''),
(182, '08-2019', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(183, '09-2019', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(184, '10-2019', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(185, '11-2019', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(186, '03-2020', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(187, '04-2020', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(188, '02-2020', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(189, '01-2020', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(190, '12-2019', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(191, '05-2020', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(192, '06-2020', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(193, '07-2020', NULL, NULL, NULL, '14', NULL, '2021-09-09 19:50:19', '2021-09-09 19:50:19', '', ''),
(194, '06-2018', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(195, '07-2018', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(196, '08-2018', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(197, '09-2018', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(198, '10-2018', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(199, '11-2018', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(200, '12-2018', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(201, '01-2019', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(202, '02-2019', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(203, '03-2019', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(204, '04-2019', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(205, '05-2019', NULL, NULL, NULL, '15', NULL, '2021-09-23 19:28:07', '2021-09-23 19:28:07', '', ''),
(206, '07-2019', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(207, '08-2019', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(208, '09-2019', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(209, '10-2019', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(210, '11-2019', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(211, '01-2020', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(212, '02-2020', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(213, '03-2020', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(214, '12-2019', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(215, '05-2020', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(216, '06-2020', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(217, '04-2020', NULL, NULL, NULL, '16', NULL, '2021-11-01 12:47:09', '2021-11-01 12:47:09', '', ''),
(218, '03-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(219, '04-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(220, '05-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(221, '06-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(222, '07-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(223, '08-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(224, '09-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(225, '10-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(226, '01-2020', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(227, '02-2020', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(228, '11-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(229, '12-2019', NULL, NULL, NULL, '17', NULL, '2021-11-01 13:20:05', '2021-11-01 13:20:05', '', ''),
(230, '09-2021', NULL, NULL, NULL, '18', NULL, '2021-11-01 13:30:39', '2021-11-01 13:30:39', '', ''),
(231, '12-2021', NULL, NULL, NULL, '18', NULL, '2021-11-01 13:30:39', '2021-11-01 13:30:39', '', ''),
(232, '11-2021', NULL, NULL, NULL, '18', NULL, '2021-11-01 13:30:39', '2021-11-01 13:30:39', '', ''),
(233, '10-2021', NULL, NULL, NULL, '18', NULL, '2021-11-01 13:30:39', '2021-11-01 13:30:39', '', ''),
(234, '01-2022', NULL, NULL, NULL, '18', NULL, '2021-11-01 13:30:39', '2021-11-01 13:30:39', '', ''),
(235, '02-2022', NULL, NULL, NULL, '18', NULL, '2021-11-01 13:30:39', '2021-11-01 13:30:39', '', ''),
(236, '03-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(237, '04-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(238, '06-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(239, '05-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(240, '09-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(241, '07-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(242, '11-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(243, '12-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(244, '08-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(245, '10-2020', NULL, NULL, NULL, '19', NULL, '2021-11-01 13:48:53', '2021-11-01 13:48:53', '', ''),
(246, '06-2021', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(247, '07-2021', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(248, '08-2021', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(249, '09-2021', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(250, '10-2021', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(251, '12-2021', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(252, '01-2022', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(253, '02-2022', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(254, '03-2022', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(255, '04-2022', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(256, '11-2021', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(257, '05-2022', NULL, NULL, NULL, '20', NULL, '2021-11-01 13:55:56', '2021-11-01 13:55:56', '', ''),
(258, '03-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(259, '04-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(260, '05-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(261, '08-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(262, '07-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(263, '06-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(264, '11-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(265, '12-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(266, '09-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(267, '01-2021', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(268, '02-2021', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(269, '10-2020', NULL, NULL, NULL, '21', NULL, '2021-11-01 14:18:44', '2021-11-01 14:18:44', '', ''),
(270, '11-2017', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(271, '12-2017', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(272, '01-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(273, '02-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(274, '04-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(275, '05-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(276, '06-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(277, '03-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(278, '08-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(279, '09-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(280, '10-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(281, '07-2018', NULL, NULL, NULL, '22', NULL, '2021-11-01 14:23:24', '2021-11-01 14:23:24', '', ''),
(282, '05-2019', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(283, '06-2019', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(284, '08-2019', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(285, '07-2019', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(286, '12-2019', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(287, '09-2019', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(288, '01-2020', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(289, '02-2020', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(290, '03-2020', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(291, '10-2019', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(292, '11-2019', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(293, '04-2020', NULL, NULL, NULL, '23', NULL, '2021-11-01 14:30:00', '2021-11-01 14:30:00', '', ''),
(294, '05-2020', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(295, '06-2020', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(296, '07-2020', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(297, '10-2020', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(298, '08-2020', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(299, '09-2020', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(300, '11-2020', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(301, '12-2020', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(302, '01-2021', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(303, '03-2021', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(304, '04-2021', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(305, '02-2021', NULL, NULL, NULL, '24', NULL, '2021-11-01 14:36:42', '2021-11-01 14:36:42', '', ''),
(306, '02-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(307, '03-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(308, '04-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(309, '06-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(310, '08-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(311, '05-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(312, '11-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(313, '09-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(314, '07-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(315, '12-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(316, '10-2020', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(317, '01-2021', NULL, NULL, NULL, '25', NULL, '2021-11-01 14:41:24', '2021-11-01 14:41:24', '', ''),
(318, '01-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(319, '02-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(320, '03-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(321, '04-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(322, '05-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(323, '06-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(324, '10-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(325, '07-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(326, '11-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(327, '12-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(328, '09-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(329, '08-2021', NULL, NULL, NULL, '26', NULL, '2021-11-01 14:44:42', '2021-11-01 14:44:42', '', ''),
(330, '02-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(331, '03-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(332, '04-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(333, '05-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(334, '09-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(335, '06-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(336, '07-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(337, '08-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(338, '10-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(339, '11-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(340, '01-2021', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(341, '12-2020', NULL, NULL, NULL, '27', NULL, '2021-11-01 14:48:10', '2021-11-01 14:48:10', '', ''),
(342, '02-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(343, '03-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(344, '04-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(345, '05-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(346, '07-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(347, '08-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(348, '06-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(349, '11-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(350, '12-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(351, '10-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(352, '09-2020', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(353, '01-2021', NULL, NULL, NULL, '28', NULL, '2021-11-01 14:50:54', '2021-11-01 14:50:54', '', ''),
(354, '02-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(355, '03-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(356, '06-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(357, '04-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(358, '05-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(359, '09-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(360, '10-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(361, '07-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(362, '11-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(363, '12-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(364, '01-2021', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(365, '08-2020', NULL, NULL, NULL, '29', NULL, '2021-11-01 14:59:32', '2021-11-01 14:59:32', '', ''),
(366, '05-2018', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(367, '06-2018', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(368, '10-2018', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(369, '08-2018', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(370, '09-2018', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(371, '07-2018', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(372, '12-2018', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(373, '01-2019', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(374, '02-2019', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(375, '03-2019', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(376, '11-2018', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(377, '04-2019', NULL, NULL, NULL, '30', NULL, '2021-11-01 15:58:16', '2021-11-01 15:58:16', '', ''),
(378, '09-2021', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(379, '10-2021', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(380, '02-2022', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(381, '11-2021', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(382, '12-2021', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(383, '01-2022', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(384, '04-2022', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(385, '05-2022', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(386, '06-2022', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(387, '07-2022', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(388, '08-2022', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', ''),
(389, '03-2022', NULL, NULL, NULL, '31', NULL, '2021-11-01 16:17:52', '2021-11-01 16:17:52', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `adm` tinyint(1) DEFAULT NULL,
  `acesso` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `adm`, `acesso`, `createdAt`, `updatedAt`) VALUES
(1, 'Administrador', 'admin@master.com', '$2a$10$14p30DXxvd8YSZLcNkC9yekDX9SIpfWChfQz7JzXuWXLQsH9AoprG', NULL, 'adm', '2021-05-15 18:26:55', '2021-08-14 14:47:31'),
(23, 'Teste', 'teste@teste.com', '$2a$10$GgXtXNsOk1j3KNp1Tj5/B.vq3DQJdiE2Ce4bAoAg671KickMH8KS2', NULL, 'com', '2021-05-21 23:34:42', '2021-06-04 13:48:56'),
(24, 'Romilson Gomes Sobrinho', 'admin@admin.com', '$2a$10$.S2AnUuTFOANrvPwSUif7.EV4i0EBYDHPYrBOH7ulv.bni7TGtVXi', NULL, 'adm', '2021-08-14 18:17:36', '2021-08-17 11:38:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculos`
--

CREATE TABLE IF NOT EXISTS `veiculos` (
  `id` int(11) NOT NULL,
  `placa` varchar(255) DEFAULT NULL,
  `renavan` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `nomeFornecedor` varchar(255) DEFAULT NULL,
  `valorCompra` varchar(255) DEFAULT NULL,
  `valorVenda` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `veiculos`
--

INSERT INTO `veiculos` (`id`, `placa`, `renavan`, `marca`, `ano`, `modelo`, `tipo`, `nomeFornecedor`, `valorCompra`, `valorVenda`, `status`, `createdAt`, `updatedAt`) VALUES
(20, 'LTB6979', '01096486498', 'VW', '2016', '2017', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Pátio', '2021-09-06 14:04:15', '2021-09-06 14:04:54'),
(21, 'LLX6015', '00568580869', 'VW', '2013', '2014', 'SAVEIRO AMBULANCIA', 'VW DO BRASIL', '00', '00', 'Pátio', '2021-09-06 14:06:30', '2021-09-06 14:06:30'),
(22, 'KWL6307', '00602453690', 'VW', '2013', '2014', 'SAVEIRO AMBULANCIA', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:07:46', '2021-09-06 14:07:46'),
(23, 'LLX8020', '00576699284', 'VW', '2013', '2014', 'SAVEIRO AMBULANCIA', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:08:51', '2021-09-06 14:08:51'),
(24, 'LMH1115', '01245103668', 'VW', '2014', '2015', 'SAVEIRO AMBULANCIA', 'VW DO BRASIL', '00', '00', 'Pátio', '2021-09-06 14:09:59', '2021-09-06 14:09:59'),
(25, 'LMA1430', '00997014792', 'VW', '2014', '2014', 'SAVEIRO CS', 'VW DO BRASIL', '00', '00', 'Pátio', '2021-09-06 14:11:18', '2021-09-06 14:11:18'),
(26, 'LMG9114', '01245103528', 'VW', '2014', '2015', 'SAVEIRO AMBULANCIA', 'VW DO BRASIL', '00', '00', 'Pátio', '2021-09-06 14:12:30', '2021-09-06 14:12:30'),
(27, 'LSP9415', '01091452692', 'VW', '2016', '2017', 'SAVEIRO AMBULANCIA', 'VW DO BRASIL', '39.887,76', '00', 'Pátio', '2021-09-06 14:13:43', '2021-09-06 20:05:29'),
(28, 'KRR2676', '01094114550', 'VW', '2016', '2017', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '40.330,51', '00', 'Pátio', '2021-09-06 14:15:56', '2021-09-06 19:59:37'),
(29, 'LSQ7128', '01094474662', 'VW', '2016', '2017', 'SAVEIRO AMBULANCIA', 'VW DO BRASIL', '00', '00', 'Pátio', '2021-09-06 14:16:52', '2021-09-06 14:16:52'),
(30, 'KZB8348', '01087203233', 'FIAT', '2015', '2016', 'CAR ABERTA ', 'FIAT ', '37.778,99', '00', 'Locado', '2021-09-06 14:18:56', '2021-09-06 20:02:37'),
(31, 'KXI5794', '01087203233', 'VW', '2015', '2016', 'SAVEIRO CS', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:23:03', '2021-09-06 14:23:03'),
(32, 'KZA9749', '1152406172', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:26:16', '2021-09-06 14:30:57'),
(33, 'LMN5081', '1152400824', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:27:20', '2021-09-06 14:31:27'),
(34, 'KZA9659', '1152400522', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:28:21', '2021-09-06 14:31:13'),
(35, 'LTK3662', '1152406105', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:29:45', '2021-09-06 14:29:45'),
(36, 'LTK3594', '1152400433', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:33:13', '2021-09-06 14:33:13'),
(37, 'LTK3636', '1152404978', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:33:49', '2021-09-06 14:33:49'),
(38, 'LTK3635', '1152404935', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:34:54', '2021-09-06 14:34:54'),
(39, 'LMN5100', '1152404900', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:35:36', '2021-09-06 14:35:36'),
(40, 'KZA9709', '1152405028', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:36:35', '2021-09-06 14:36:35'),
(41, 'KZA9664', '1152401249', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:37:37', '2021-09-06 14:37:37'),
(43, 'KRV9769', '1116202210', 'VW', '2017', '2017', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:41:04', '2021-09-06 14:41:04'),
(44, 'KRW9834', '1119732007', 'GM', '2017', '2018', 'ONIX JOY 1,0', 'GM', '00', '00', 'Locado', '2021-09-06 14:42:14', '2021-09-06 14:42:14'),
(46, 'LMM3891', '01136109908', 'VW', '2017', '2018', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '49.575,56', '00', 'Locado', '2021-09-06 14:47:27', '2021-09-06 20:04:26'),
(47, 'LMM4141', '01136427365', 'VW', '2017', '2018', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:48:18', '2021-09-06 14:48:18'),
(48, 'LTG1488', '01136432989', 'VW', '2017', '2018', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:49:09', '2021-09-06 14:49:09'),
(49, 'LTN9E54', '01175546396', 'VW', '2018', '2019', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:50:40', '2021-09-06 14:50:40'),
(50, 'LTH8943', '01142729700', 'VW', '2017', '2018', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:51:47', '2021-09-06 14:51:47'),
(51, 'LTH8940', '01142728177', 'VW', '2017', '2018', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:53:00', '2021-09-06 14:53:00'),
(52, 'LMU0C67', '01185594024', 'GM', '2019', '2019', 'MONTANA ', 'GM', '00', '00', 'Locado', '2021-09-06 14:55:06', '2021-09-06 14:55:06'),
(53, 'LMM5646', '01138671883', 'VW', '2017', '2018', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:57:25', '2021-09-06 14:57:25'),
(54, 'LUB6924', '01138674637', 'VW', '2017', '2018', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 14:58:23', '2021-09-06 14:58:23'),
(55, 'KYE8744', '01138813904', 'VW', '2017', '2017', 'AMAROK CD', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 15:03:00', '2021-09-06 15:03:00'),
(56, 'LTG5280', '01138809508', 'VW', '2017', '2017', 'AMAROK CD', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 15:04:05', '2021-09-06 15:04:05'),
(57, 'KYE8422', '01138668513', 'VW', '2017', '2017', 'AMAROK CD', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 15:05:03', '2021-09-06 15:05:03'),
(58, 'KYE8534', '01138354624', 'VW', '2017', '2017', 'AMAROK CD', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 15:06:20', '2021-09-06 15:06:20'),
(59, 'LMN9482', '01157919100', 'RENAULT', '2018', '2019', 'MASTER AMBULANCIA', 'RANAULT DO BRASIL', '00', '00', 'Locado', '2021-09-06 15:08:26', '2021-09-06 15:08:26'),
(60, 'RJA3C81', '01262718004', 'GM', '2021', '2021', 'MONTANA ', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 15:10:17', '2021-09-06 15:17:46'),
(61, 'RIP4J47', '01264400540', 'GM', '2021', '2021', 'MONTANA ', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 15:11:40', '2021-09-06 15:17:26'),
(62, 'LLG1B34', '01162690680', 'GM', '2018', '2019', 'MONTANA ', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 15:14:23', '2021-09-06 15:17:07'),
(63, 'LLG2991', '01162719718', 'GM', '2018', '2019', 'MONTANA ', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 15:16:33', '2021-09-06 15:16:33'),
(64, 'FQH8J92', '01080041394', 'RENAULT', '2016', '2017', 'MASTER AMBULANCIA', 'RANAULT DO BRASIL', '00', '00', 'Pátio', '2021-09-06 15:26:32', '2021-09-06 17:04:14'),
(65, 'LTR8J60', '01191137748', 'GM', '2019', '2019', 'MONTANA ', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 15:33:31', '2021-09-06 15:33:31'),
(66, 'LMV7G52', '01191135885', 'GM', '2019', '2019', 'MONTANA ', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 15:40:48', '2021-09-06 15:40:48'),
(67, 'KZI8567', '01158031901', 'VW', '2018', '2019', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:08:15', '2021-09-06 16:08:15'),
(68, 'LTL9839', '01158034145', 'VW', '2018', '2019', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:08:59', '2021-09-06 16:08:59'),
(69, 'RJW0G45', '01226261059', 'VW', '2021', '2021', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:21:01', '2021-11-01 14:54:27'),
(70, 'LLG2331', '01162682423', 'VW', '2018', '2019', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:22:22', '2021-09-06 16:22:22'),
(71, 'LTL9353', '1157712034', 'VW', '2018', '2018', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:23:39', '2021-09-06 16:23:39'),
(72, 'RJO0F32', '01226195722', 'GM', '2020', '2020', 'SPIN', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 16:26:43', '2021-09-06 16:26:43'),
(73, 'RJQ1A45', '01236444350', 'GM', '2020', '2020', 'SPIN', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 16:29:29', '2021-09-06 16:29:29'),
(74, 'RKU1C49', '01236441248', 'GM', '2020', '2020', 'SPIN', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 16:31:06', '2021-09-06 16:31:06'),
(75, 'RIP4A17', '01258020502', 'GM', '2020', '2021', 'SPIN', 'CHEVROLET', '00', '00', 'Locado', '2021-09-06 16:37:26', '2021-09-06 16:37:26'),
(76, 'OPI2B50', '00511950500', 'VW', '2013', '2013', 'KOMBI', 'MACHADO E GOMES', '00', '00', 'Locado', '2021-09-06 16:42:01', '2021-09-06 16:42:01'),
(77, 'LMP9F00', '01171862307', 'VW', '2018', '2019', 'GOL 1.6', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:45:18', '2021-09-06 16:45:18'),
(78, 'LMP9E94', '01171859721', 'VW', '2018', '2019', 'GOL 1.6', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:47:24', '2021-09-06 16:47:24'),
(79, 'LMP4H29', '01170151407', 'VW', '2018', '2019', 'VOYAGE 1.6', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:48:38', '2021-09-06 16:48:38'),
(80, 'LRJ7G98', '01171926151', 'VW', '2018', '2019', 'GOL 1.6', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:49:42', '2021-09-06 16:49:42'),
(81, 'LMP9H13', '01171922225', 'VW', '2018', '2019', 'GOL 1.6', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:50:56', '2021-09-06 16:50:56'),
(82, 'LLV8919', '00536263726', 'VW', '2013', '2014', 'KOMBI', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:53:29', '2021-09-06 16:53:29'),
(83, 'KYA4146', '00536310238', 'VW', '2013', '2014', 'KOMBI', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 16:54:28', '2021-09-06 16:54:28'),
(84, 'KYO9411', '01142724023', 'VW', '2017', '2018', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Pátio', '2021-09-06 17:21:04', '2021-09-06 17:21:04'),
(85, 'KWS5864', '0000000', 'VW', '2014', '2014', 'KOMBI', 'RAFAEL AGENCIA', '00', '00', 'Locado', '2021-09-06 18:00:54', '2021-09-06 18:00:54'),
(86, 'LMP7F13', '01171184376', 'VW', '2018', '2019', 'VOYAGE 1.6', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 20:09:28', '2021-09-06 20:09:28'),
(87, 'LMP4H11', '01170141525', 'VW', '2018', '2019', 'VOYAGE 1.6', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 20:10:16', '2021-09-06 20:10:16'),
(88, 'LMX6G92', '01196743883', 'FIAT', '2019', '2020', 'FIORINO FURGÃO', 'FIRENZE ', '00', '00', 'Locado', '2021-09-06 20:28:19', '2021-09-06 20:28:19'),
(89, 'QPE5657', '01166065089', 'FIAT', '2018', '2019', 'FIORINO FURGÃO', 'NTC SERVIÇOS', '30.000,00', '00', 'Locado', '2021-09-06 20:35:35', '2021-09-06 20:35:35'),
(90, 'LMY4I14', '01198898035', 'FIAT', '2019', '2020', 'FIORINO FURGÃO', 'FIRENZE ', '00', '00', 'Locado', '2021-09-06 20:37:21', '2021-09-06 20:37:21'),
(91, 'LMX8E35', '01197228621', 'FIAT', '2019', '2020', 'FIORINO FURGÃO', 'FIRENZE ', '00', '00', 'Locado', '2021-09-06 20:38:16', '2021-09-06 20:38:16'),
(92, 'LMX8E14', '01197217735', 'FIAT', '2019', '2020', 'FIORINO FURGÃO', 'FIRENZE ', '00', '00', 'Locado', '2021-09-06 20:39:07', '2021-09-06 20:39:07'),
(93, 'FPM3A17', '01140145565', 'RENAULT', '2017', '2018', 'OROCH', 'COMPRADA DE TERCEIRO', '00', '00', 'Locado', '2021-09-06 20:56:42', '2021-09-06 20:56:42'),
(94, 'QNN2C38', '01137419269', 'RENAULT', '2017', '2018', 'OROCH', 'COMPRADA DE TERCEIRO', '00', '00', 'Locado', '2021-09-06 20:57:44', '2021-09-06 20:57:44'),
(95, 'LMS3D23', '01179864007', 'VW', '2019', '2019', 'NOVA SAVEIRO RB', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-06 21:19:42', '2021-09-06 21:19:42'),
(96, 'PUF3B11', '01012993075', 'VW', '2014', '2015', 'SAVEIRO CS', 'DANIELA SÃO PAULO', '00', '00', 'Locado', '2021-09-06 21:21:26', '2021-09-06 21:21:26'),
(97, 'OYV5J46', '01010827496', 'VW', '2014', '2015', 'SAVEIRO CS', 'JOSE MAURO', '00', '00', 'Locado', '2021-09-06 21:22:45', '2021-09-06 21:22:45'),
(98, 'IXI4B44', '01091366737', 'VW', '2016', '2017', 'SAVEIRO CS', 'ADVANS COMERCIO', '00', '00', 'Locado', '2021-09-06 21:23:54', '2021-09-06 21:23:54'),
(99, 'KRG5F20', '01058555151', 'VW', '2015', '2016', 'GOL 1.6', 'JMG REP', '00', '00', 'Locado', '2021-09-06 21:25:04', '2021-09-06 21:25:04'),
(100, 'QUE9790', '00000', 'VW', '00000', '00000', 'SAVEIRO CD ', '000000', '00', '00', 'Locado', '2021-09-06 21:42:51', '2021-09-06 21:42:51'),
(101, 'QQP8I37', '01189404017', 'VW', '2019', '2020', 'NOVA SAVEIRO RB', 'ÂNGELA MARIA ', '00', '00', 'Locado', '2021-09-06 21:45:03', '2021-09-06 21:45:03'),
(102, 'EWT1507', '01191161681', 'RENAULT', '2019', '2020', 'LOGAN 1.6', 'VÓRTICE MOTORS', '49.000,00', '00', 'Locado', '2021-09-06 21:47:55', '2021-09-06 21:47:55'),
(103, 'QQC1298', '01181125550', 'VW', '2019', '2019', 'DOBLO 7 LUGARES', 'TECAR TRILHAS', '60.000,00', '00', 'Locado', '2021-09-08 12:58:12', '2021-09-08 12:58:12'),
(104, 'QQC1296', '01181125526', 'FIAT', '2019', '2019', 'DOBLO 7 LUGARES', 'TECAR TRILHAS', '60.300,00', '00', 'Locado', '2021-09-08 13:00:35', '2021-09-08 13:00:35'),
(105, 'QUR7H09', '01204580704', 'FIAT', '2019', '2020', 'DOBLO 7 LUGARES', 'LUIZ HENRIQUE ', '47.000,00', '00', 'Locado', '2021-09-08 13:04:01', '2021-09-08 13:06:31'),
(106, 'QQP9238', '01189445147', 'FIAT', '2019', '2020', 'DOBLO 7 LUGARES', 'NTC LOCACAÇÃO', '50.000,00', '00', 'Locado', '2021-09-08 13:05:46', '2021-09-08 13:05:46'),
(107, 'QQE2I72', '01182436711', 'FIAT', '2019', '2019', 'DOBLO 7 LUGARES', 'PEDRO ARRAIS', '60.000,00', '00', 'Locado', '2021-09-08 13:18:19', '2021-09-08 13:18:19'),
(108, 'LMO4H37', '01165773853', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-08 13:23:29', '2021-09-08 13:23:29'),
(109, 'LMH7912', '01163555476', 'VW', '2018', '2019', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-08 13:24:50', '2021-09-08 13:24:50'),
(110, 'KOL6009', '01162691821', 'GM', '2018', '2019', 'MONTANA ', 'GENERAL MOTORS', '00', '00', 'Locado', '2021-09-08 14:18:16', '2021-09-08 14:18:16'),
(111, 'LLG2965', '01162719505', 'GM', '2018', '2019', 'MONTANA ', 'GENERAL MOTORS', '00', '00', 'Locado', '2021-09-08 14:19:43', '2021-09-08 14:19:43'),
(112, 'PZI4992', '01114673819', 'FORD', '2017', '2018', 'KA', 'ANDRE LUIZ', '36.000,00', '00', 'Locado', '2021-09-20 14:19:59', '2021-09-20 14:19:59'),
(113, 'QOQ2F98', '01157782903', 'FORD', '2018', '2018', 'KA', 'SUL AMERICA', '39.000,00', '00', 'Locado', '2021-09-20 14:38:31', '2021-10-29 14:17:19'),
(114, 'LSZ8388', '01116766490', 'VW', '2017', '2017', 'GOL 1.0', 'VW DO BRASIL', '00', '00', 'Locado', '2021-09-22 20:47:09', '2021-09-22 20:47:09'),
(115, 'RHK8A70', '01276145389', 'FIAT', '2021', '2019', 'SIENA', 'FIRENZE  RESENDE', '62.500,00', '00', 'Locado', '2021-10-29 14:28:27', '2021-10-29 14:28:27'),
(116, 'RHK7B24', '01275489963', 'FIAT', '2021', '2021', 'SIENA', 'FIRENZE  RESENDE', '62.000,00', '00', 'Locado', '2021-10-29 14:31:54', '2021-10-29 14:31:54'),
(117, 'RHK8A71', '01276135944', 'FIAT', '2021', '2021', 'SIENA', 'FIRENZE  RESENDE', '60.000,00', '00', 'Locado', '2021-10-29 14:33:52', '2021-11-01 13:43:12'),
(118, 'RHK8A75', '01276139001', 'FIAT', '2021', '2021', 'SIENA', 'FIRENZE  RESENDE', '58.809,89', '00', 'Locado', '2021-10-29 14:36:11', '2021-10-29 14:36:11'),
(119, 'QNJ73L3', '01136652202', 'VW', '2017', '2018', 'GOL 1.0', 'CURITIBA PR', '38.000,00', '00', 'Locado', '2021-10-29 14:39:50', '2021-10-29 14:39:50'),
(120, 'QNN0B25', '01136767948', 'VW', '2017', '2018', 'GOL 1.0', 'CURITIBA PR', '38.000,00', '00', 'Locado', '2021-10-29 14:49:01', '2021-10-29 14:49:01'),
(121, 'RHK8A74', '01276141855', 'FIAT', '2021', '2021', 'SIENA', 'FIRENZE  RESENDE', '62.500,00', '00', 'Locado', '2021-10-29 14:54:12', '2021-10-29 14:54:12'),
(122, 'RHK8A73', '01276147012', 'FIAT', '2021', '2021', 'SIENA', 'FIRENZE  RESENDE', '63.000,00', '00', 'Locado', '2021-10-29 14:56:49', '2021-10-29 14:56:49'),
(124, 'RHK8A72', '01276149163', 'FIAT', '2021', '2014', 'SIENA', 'FIRENZE  RESENDE', '63.000,00', '00', 'Locado', '2021-10-29 15:04:51', '2021-10-29 15:04:51'),
(125, 'DPN1J90', '01207174936', 'GM', '2019', '2020', 'LOGAN 1.6', 'VERA LUCIA OSASCO SP', '46.500,00', '00', 'Locado', '2021-10-29 15:15:30', '2021-10-29 15:15:30'),
(126, 'LSV8C75', '01106304060', 'GM', '2016', '2017', 'FORD KA', 'NATHALIA MESQUITA', '34.000,00', '00', 'Locado', '2021-10-29 18:17:18', '2021-11-01 16:40:57'),
(127, 'LTF9791', '01136070041', 'VW', '2017', '2018', 'SAVEIRO CD ', 'VW DO BRASIL', '00', '00', 'Locado', '2021-11-01 12:42:33', '2021-11-01 12:42:33'),
(128, 'QQV6J20', '01192161251', 'GM', '2019', '2020', 'SPIN', 'CURITIBA PR', '66.000,00', '00', 'Locado', '2021-11-01 16:24:18', '2021-11-01 16:24:18'),
(129, 'QQV6J30', '01192161294', 'GM', '2019', '2020', 'SPIN', 'CURITIBA PR', '66.000,00', '00', 'Locado', '2021-11-01 16:27:41', '2021-11-01 16:27:41'),
(130, 'KRG5528', '01058552055', 'VW', '2015', '2016', 'GOL 1.6', 'VW DO BRASIL', '00', '00', 'Locado', '2021-11-01 16:37:44', '2021-11-01 16:37:44'),
(131, 'KPK5377', '00541559273', 'VW', '2013', '2014', 'KOMBI', 'VW DO BRASIL', '00', '00', 'Locado', '2021-11-01 16:47:39', '2021-11-01 16:47:39');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contatosfornecedors`
--
ALTER TABLE `contatosfornecedors`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contrato_veiculos`
--
ALTER TABLE `contrato_veiculos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `estoques`
--
ALTER TABLE `estoques`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `forncedores`
--
ALTER TABLE `forncedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `gasto_manutencaos`
--
ALTER TABLE `gasto_manutencaos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historicos`
--
ALTER TABLE `historicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `itemestoques`
--
ALTER TABLE `itemestoques`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `manutencaos`
--
ALTER TABLE `manutencaos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `mes_contratos`
--
ALTER TABLE `mes_contratos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de tabela `contatosfornecedors`
--
ALTER TABLE `contatosfornecedors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de tabela `contrato_veiculos`
--
ALTER TABLE `contrato_veiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT de tabela `estoques`
--
ALTER TABLE `estoques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `forncedores`
--
ALTER TABLE `forncedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de tabela `gasto_manutencaos`
--
ALTER TABLE `gasto_manutencaos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de tabela `historicos`
--
ALTER TABLE `historicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT de tabela `itemestoques`
--
ALTER TABLE `itemestoques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `manutencaos`
--
ALTER TABLE `manutencaos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `mes_contratos`
--
ALTER TABLE `mes_contratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=390;
--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
