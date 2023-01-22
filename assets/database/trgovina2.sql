-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2020 at 06:26 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trgovina`
--
CREATE DATABASE IF NOT EXISTS `trgovina` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `trgovina`;

-- --------------------------------------------------------

--
-- Table structure for table `case_2`
--

CREATE TABLE `case_2` (
  `id` int(10) UNSIGNED NOT NULL,
  `Proizvajalec_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_factor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barva` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `psu_wattage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_bays` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internal_bays` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cena` float DEFAULT 0,
  `ocena` int(1) UNSIGNED DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `case_2`
--

INSERT INTO `case_2` (`id`, `Proizvajalec_id`, `model`, `form_factor`, `barva`, `psu_wattage`, `external_bays`, `internal_bays`, `cena`, `ocena`, `slika`) VALUES
(1, 1, 'Aero-500-C', 'ATXMidTower', 'White/Black', NULL, '2', '4', 162.59, 1, 'AerocoolAero-500-CATXMidTower.jpg'),
(2, 1, 'DSCubeBlack/WhiteSilentCube', 'MicroATXMiniTower', 'Black/Gold', NULL, '1', '2', 179.69, 4, 'AerocoolDSCubeBlack-WhiteSilentCubeMicroATXMiniTower.jpg'),
(3, 1, 'Strike-XXtreme', 'ATXMidTower', 'Black/White', NULL, '4', '6', 110.7, 2, 'AerocoolStrike-XXtremeATXMidTower.jpg'),
(4, 2, 'AICrystalCube', 'ATXMidTower', 'Black', NULL, '0', '3', 214.41, 1, 'AnideesAICrystalCubeATXMidTower.jpg'),
(5, 3, 'ISK600M', 'MicroATXMiniTower', 'Black', NULL, '0', '3', 189.95, 2, 'AntecISK600MMicroATXMiniTower.jpg'),
(6, 3, 'NSK3180', 'MicroATXMidTower', 'Black', '380', '2', '2', 256.53, 1, 'AntecNSK3180MicroATXMidTower.jpg'),
(7, 3, 'P101Silent', 'ATXMidTower', 'Black', NULL, '1', '8', 162.81, 4, 'AntecP101SilentATXMidTower.jpg'),
(8, 3, 'SONATAII', 'ATXMidTower', 'Black', '450', '3', '4', 244.47, 3, 'AntecSONATAIIATXMidTower.jpg'),
(9, 3, 'TORQUE', 'ATXMidTower', 'White', NULL, '0', '1', 183.9, 1, 'AntecTORQUEATXMidTower.jpg'),
(10, 3, 'VSK-4000', 'ATXMidTower', 'Black', NULL, '3', '2', 136.09, 4, 'AntecVSK-4000ATXMidTower.jpg'),
(11, 3, 'VSK4000EU3', 'ATXMidTower', 'Black', NULL, '3', '5', 78.77, 2, 'AntecVSK4000EU3ATXMidTower.jpg'),
(12, 4, 'X-Dreamer3', 'ATXMidTower', 'Black', '450', '4', '6', 185.55, 2, 'ApeviaX-Dreamer3ATXMidTower.jpg'),
(13, 4, 'X-Gear', 'ATXMidTower', 'Green/Blue', '420', '4', '4', 141.46, 3, 'ApeviaX-GearATXMidTower.jpg'),
(14, 4, 'X-Hermes', 'ATXMidTower', 'Black/Blue', NULL, '4', '4', 100.66, 3, 'ApeviaX-HermesATXMidTower.jpg'),
(15, 4, 'X-Master', 'HTPC', 'Black/Green', '500', '2', '1', 278.89, 1, 'ApeviaX-MasterHTPC.jpg'),
(16, 4, 'X-QBOII', 'MicroATXMiniTower', 'Black/Silver', '500', '2', '2', 292.48, 3, 'ApeviaX-QBOIIMicroATXMiniTower.jpg'),
(17, 4, 'X-Qber', 'MicroATXDesktop', 'White', NULL, '1', '2', 75.78, 4, 'ApeviaX-QberMicroATXDesktop.jpg'),
(18, 4, 'X-Qtis', 'MicroATXMidTower', 'White/Blue', NULL, '1', '4', 201.39, 1, 'ApeviaX-QtisMicroATXMidTower.jpg'),
(19, 5, 'EL-660', 'ATXMidTower', 'Black', NULL, '4', '6', 229.65, 1, 'ApexEL-660ATXMidTower.jpg'),
(20, 6, 'CA-601Y60', 'ATXFullTower', 'Yellow', '600', '4', '4', 244.08, 2, 'AthenaPowerCA-601Y60ATXFullTower.jpg'),
(21, 7, 'A605BR.450', 'ATXMidTower', 'Black/Red', '430', '4', '3', 231.47, 3, 'AthenatechA605BR.450ATXMidTower.jpg'),
(22, 8, 'Cube802', 'ATXMidTower', 'Black', NULL, '0', '1', 125.08, 1, 'AzzaCube802ATXMidTower.jpg'),
(23, 8, 'Nova8000', 'ATXFullTower', 'Black/Orange', NULL, '4', '6', 131, 4, 'AzzaNova8000ATXFullTower.jpg'),
(24, 9, 'ColossusMicro', 'MicroATXMidTower', 'Black', NULL, '1', '4', 229.74, 4, 'BitFenixColossusMicroMicroATXMidTower.jpg'),
(25, 9, 'Comrade', 'ATXMidTower', 'White', NULL, '3', '3', 205.73, 4, 'BitFenixComradeATXMidTower.jpg'),
(26, 9, 'NeosBlack', 'ATXMidTower', 'White', NULL, '2', '3', 289.43, 1, 'BitFenixNeosBlackATXMidTower.jpg'),
(27, 9, 'PhenomMidnightBlack', 'MiniITXTower', 'Black', NULL, '0', '6', 279.96, 3, 'BitFenixPhenomMidnightBlackMiniITXTower.jpg'),
(28, 9, 'Portal', 'MiniITXTower', 'Black', NULL, '0', '2', 231.53, 3, 'BitFenixPortalMiniITXTower.jpg'),
(29, 9, 'Shadow', 'ATXMidTower', 'Black', NULL, '3', '7', 267.75, 2, 'BitFenixShadowATXMidTower.jpg'),
(30, 9, 'Survivor', 'ATXMidTower', 'Black', NULL, '3', '6', 94.2, 2, 'BitFenixSurvivorATXMidTower.jpg'),
(31, 10, 'Prime223', 'ATXMidTower', 'Black', NULL, '4', '4', 117.71, 3, 'CFIPrime223ATXMidTower.jpg'),
(32, 11, '690III', 'ATXMidTower', 'Black', NULL, '3', '7', 255.95, 2, 'CoolerMaster690IIIATXMidTower.jpg'),
(33, 11, 'Cosmos', 'ATXFullTower', 'Silver/Black', NULL, '5', '6', 126.65, 3, 'CoolerMasterCosmosATXFullTower.jpg'),
(34, 11, 'Elite330Upgraded', 'ATXMidTower', 'Black/Silver', NULL, '4', '5', 65.37, 3, 'CoolerMasterElite330UpgradedATXMidTower.jpg'),
(35, 11, 'Elite343', 'MicroATXMiniTower', 'Black', '420', '2', '5', 146.89, 3, 'CoolerMasterElite343MicroATXMiniTower.jpg'),
(36, 11, 'HAF932Advanced', 'ATXFullTower', 'Black', NULL, '6', '5', 238.37, 3, 'CoolerMasterHAF932AdvancedATXFullTower.jpg'),
(37, 11, 'MasterBox5', 'ATXMidTower', 'Black', NULL, '0', '2', 201.16, 4, 'CoolerMasterMasterBox5ATXMidTower.jpg'),
(38, 11, 'MasterBoxE500L', 'ATXMidTower', 'Black/Silver', NULL, '1', '2', 240.71, 4, 'CoolerMasterMasterBoxE500LATXMidTower.jpg'),
(39, 11, 'MasterBoxMB511', 'ATXMidTower', 'Black/Red', NULL, '0', '2', 50.08, 4, 'CoolerMasterMasterBoxMB511ATXMidTower.jpg'),
(40, 11, 'MasterBoxPro5RGB', 'ATXMidTower', 'Black', NULL, '0', '2', 228.22, 3, 'CoolerMasterMasterBoxPro5RGBATXMidTower.jpg'),
(41, 11, 'MasterCaseH500M', 'ATXMidTower', 'Black', NULL, '0', '2', 190.88, 3, 'CoolerMasterMasterCaseH500MATXMidTower.jpg'),
(42, 11, 'MasterCasePro5', 'ATXMidTower', 'Black', NULL, '2', '5', 219.73, 2, 'CoolerMasterMasterCasePro5ATXMidTower.jpg'),
(43, 11, 'Silencio650', 'ATXMidTower', 'Black', NULL, '3', '7', 226.01, 3, 'CoolerMasterSilencio650ATXMidTower.jpg'),
(44, 11, 'StormScout', 'ATXMidTower', 'Black', '700', '5', '5', 170.87, 1, 'CoolerMasterStormScoutATXMidTower.jpg'),
(45, 12, 'TG-01RGB', 'ATXMidTower', 'Black', NULL, '0', '2', 126.3, 2, 'CooltekTG-01RGBATXMidTower.jpg'),
(46, 12, 'w2', 'ATXMidTower', 'Black', NULL, '1', '3', 68.9, 4, 'Cooltekw2ATXMidTower.jpg'),
(47, 13, '350DWindow', 'MicroATXMidTower', 'Black', NULL, '2', '2', 165.57, 2, 'Corsair350DWindowMicroATXMidTower.jpg'),
(48, 13, 'CarbideSeries275R', 'ATXMidTower', 'Black', NULL, '0', '2', 71.17, 2, 'CorsairCarbideSeries275RATXMidTower.jpg'),
(49, 13, 'SPEC-M2', 'MicroATXMidTower', 'Black', NULL, '1', '2', 59.13, 2, 'CorsairSPEC-M2MicroATXMidTower.jpg'),
(50, 14, 'MG110', 'MicroATXMiniTower', 'Black', NULL, '1', '2', 282.1, 1, 'CougarMG110MicroATXMiniTower.jpg'),
(51, 15, 'A4SFX', 'MiniITXDesktop', 'Black', NULL, '0', '0', 183.18, 1, 'DANCasesA4SFXMiniITXDesktop.jpg'),
(52, 15, 'A4-SFXv4', 'MiniITXDesktop', 'Black', NULL, '0', '0', 269.58, 4, 'DANCasesA4-SFXv4MiniITXDesktop.jpg'),
(53, 16, 'Alnitak-BK', 'ATXMidTower', 'Black/Blue', NULL, '1', '4', 248.38, 4, 'DIYPCAlnitak-BKATXMidTower.jpg'),
(54, 16, 'DIY-M6', 'MicroATXMidTower', 'Black/Red', NULL, '0', '2', 133.14, 1, 'DIYPCDIY-M6MicroATXMidTower.jpg'),
(55, 16, 'Gamemax', 'ATXFullTower', 'Black', NULL, '1', '4', 120.55, 1, 'DIYPCGamemaxATXFullTower.jpg'),
(56, 16, 'Rainbow-Flash-R1', 'ATXMidTower', 'Black', NULL, '0', '2', 153.35, 1, 'DIYPCRainbow-Flash-R1ATXMidTower.jpg'),
(57, 17, 'Frame', 'MicroATXMidTower', 'Black', NULL, '1', '3', 105.09, 3, 'DeepcoolFrameMicroATXMidTower.jpg'),
(58, 17, 'GamerStormQuadstellar', 'ATXDesktop', 'Black', NULL, '0', '8', 265.4, 1, 'DeepcoolGamerStormQuadstellarATXDesktop.jpg'),
(59, 18, 'DG-75', 'ATXMidTower', 'White', NULL, '0', '2', 211.75, 2, 'EVGADG-75ATXMidTower.jpg'),
(60, 19, 'ECA892BG-1350', 'ATXMidTower', 'Black', '1350', '4', '6', 212.55, 2, 'EnermaxECA892BG-1350ATXMidTower.jpg'),
(61, 20, 'CMT520', 'ATXMidTower', 'Black', NULL, '0', '2', 127.48, 3, 'FSPGroupCMT520ATXMidTower.jpg'),
(62, 21, 'RS-233(H)+DSL-150-4SS', 'MiniITXTower', 'Black/Silver', '150', '1', '1', 199.75, 2, 'FoxconnRS-233(H)+DSL-150-4SSMiniITXTower.jpg'),
(63, 22, 'ArcMini', 'MicroATXMiniTower', 'Black', NULL, '2', '6', 66.33, 3, 'FractalDesignArcMiniMicroATXMiniTower.jpg'),
(64, 22, 'Core2500', 'ATXMidTower', 'Black', NULL, '2', '4', 182.37, 2, 'FractalDesignCore2500ATXMidTower.jpg'),
(65, 22, 'DefineR4', 'ATXMidTower', 'Black', NULL, '2', '8', 162.87, 2, 'FractalDesignDefineR4ATXMidTower.jpg'),
(66, 22, 'DefineS2', 'ATXMidTower', 'White', NULL, '0', '3', 217.22, 4, 'FractalDesignDefineS2ATXMidTower.jpg'),
(67, 22, 'Node304', 'MiniITXTower', 'Black/White', NULL, '0', '6', 297.51, 4, 'FractalDesignNode304MiniITXTower.jpg'),
(68, 22, 'VectorRSBlackout', 'ATXMidTower', 'Black', NULL, '0', '6', 285.91, 3, 'FractalDesignVectorRSBlackoutATXMidTower.jpg'),
(69, 23, 'Draco', 'ATXMidTower', 'Black', NULL, '0', '3', 237.04, 4, 'GameMaxDracoATXMidTower.jpg'),
(70, 23, 'KamikazePRO', 'MicroATXMiniTower', 'Black', NULL, '0', '2', 277.46, 1, 'GameMaxKamikazePROMicroATXMiniTower.jpg'),
(71, 24, 'LuxoM1000', 'ATXMidTower', 'Black', NULL, '4', '4', 126.17, 3, 'GigabyteLuxoM1000ATXMidTower.jpg'),
(72, 25, '6T10BBHP585D', 'MicroATXMiniTower', 'Black', '585', '2', '1', 248.47, 4, 'HEC6T10BBHP585DMicroATXMiniTower.jpg'),
(73, 25, '6T18BBHP485D', 'MicroATXMiniTower', 'Black', '485', '2', '1', 63.87, 4, 'HEC6T18BBHP485DMicroATXMiniTower.jpg'),
(74, 25, 'ITX200B', 'HTPC', 'Black/Silver', '200', '0', '1', 273.88, 1, 'HECITX200BHTPC.jpg'),
(75, 26, '503', 'ATXMidTower', 'Black/Red', NULL, '1', '4', 127.82, 4, 'InWin503ATXMidTower.jpg'),
(76, 26, 'BM639.AD160TBL', 'MiniITXTower', 'Black', NULL, '1', '1', 267.47, 3, 'InWinBM639.AD160TBLMiniITXTower.jpg'),
(77, 26, 'BUC101(Black)', 'ATXMidTower', 'Black', NULL, '3', '5', 153.88, 3, 'InWinBUC101(Black)ATXMidTower.jpg'),
(78, 26, 'DragonRiderWhite', 'ATXFullTower', 'White/Black', NULL, '5', '6', 167, 3, 'InWinDragonRiderWhiteATXFullTower.jpg'),
(79, 26, 'IW-BK644.SE', 'MicroATXMiniTower', 'Black', '300', '1', '1', 73.36, 1, 'InWinIW-BK644.SEMicroATXMiniTower.jpg'),
(80, 26, 'IW-BQ656T.AD120TB3', 'MiniITXTower', 'Black', '120', '0', '0', 65.77, 1, 'InWinIW-BQ656T.AD120TB3MiniITXTower.jpg'),
(81, 26, 'Track', 'ATXMidTower', 'Black/Silver', NULL, '3', '3', 58.78, 1, 'InWinTrackATXMidTower.jpg'),
(82, 27, 'LPC309(U3)', 'ATXMidTower', 'Black', NULL, '3', '3', 296.59, 4, 'LEPALPC309(U3)ATXMidTower.jpg'),
(83, 28, 'PC-7FN', 'ATXMidTower', 'Black', NULL, '5', '4', 256.61, 2, 'LianLiPC-7FNATXMidTower.jpg'),
(84, 28, 'PC-9N', 'ATXMidTower', 'Black', NULL, '3', '3', 93.31, 1, 'LianLiPC-9NATXMidTower.jpg'),
(85, 28, 'PC-A55', 'ATXMidTower', 'Black', NULL, '1', '2', 146.68, 1, 'LianLiPC-A55ATXMidTower.jpg'),
(86, 28, 'PC-D600', 'ATXFullTower', 'Silver', NULL, '10', '6', 153.48, 1, 'LianLiPC-D600ATXFullTower.jpg'),
(88, 28, 'PC-Q04', 'MiniITXTower', 'Black', NULL, '0', '2', 126.41, 3, 'LianLiPC-Q04MiniITXTower.jpg'),
(89, 28, 'PC-Q09', 'MiniITXDesktop', 'Silver', '80', '0', '0', 249.91, 2, 'LianLiPC-Q09MiniITXDesktop.jpg'),
(90, 28, 'PC-Q36W', 'MiniITXTower', 'Black/Red', NULL, '0', '2', 70.35, 1, 'LianLiPC-Q36WMiniITXTower.jpg'),
(91, 28, 'PC-V358', 'MicroATXMidTower', 'Black', NULL, '0', '6', 51.99, 4, 'LianLiPC-V358MicroATXMidTower.jpg'),
(92, 29, '617-03-c2228U', 'MicroATXSlim', 'Black/Silver', '400', '1', '1', 248.89, 2, 'Linkworld617-03-c2228UMicroATXSlim.jpg'),
(93, 30, 'CS380BK', 'ATXMidTower', 'Black', '480', '2', '3', 288.51, 1, 'LogisysCS380BKATXMidTower.jpg'),
(94, 31, 'NeoAir', 'ATXMidTower', NULL, NULL, '0', '2', 145.91, 4, 'MetallicGearNeoAirATXMidTower.jpg'),
(95, 32, 'H200', 'MiniITXTower', 'Black', NULL, '0', '1', 63.98, 1, 'NZXTH200MiniITXTower.jpg'),
(96, 32, 'H440', 'ATXMidTower', 'Black', NULL, '0', '8', 82.15, 2, 'NZXTH440ATXMidTower.jpg'),
(97, 32, 'H500i', 'ATXMidTower', 'White', NULL, '0', '3', 168.8, 4, 'NZXTH500iATXMidTower.jpg'),
(98, 32, 'H710i', 'ATXMidTower', 'Black', NULL, '0', '4', 297.54, 2, 'NZXTH710iATXMidTower.jpg'),
(99, 32, 'Hush', 'ATXMidTower', 'Silver', NULL, '4', '5', 181.36, 4, 'NZXTHushATXMidTower.jpg'),
(100, 32, 'Manta', 'MiniITXDesktop', 'Black', NULL, '0', '2', 214.17, 4, 'NZXTMantaMiniITXDesktop.jpg'),
(101, 32, 'Source210', 'ATXMidTower', 'Black', NULL, '3', '8', 226.76, 2, 'NZXTSource210ATXMidTower.jpg'),
(102, 33, 'ENTHOOEVOLVSHIFTX', 'MiniITXTower', 'Black', NULL, '0', '2', 191.3, 3, 'PhanteksENTHOOEVOLVSHIFTXMiniITXTower.jpg'),
(103, 33, 'EclipseP400', 'ATXMidTower', 'Black/Red', NULL, '0', '2', 226.23, 1, 'PhanteksEclipseP400ATXMidTower.jpg'),
(104, 33, 'EnthooLuxe2', 'ATXFullTower', 'Black', NULL, '0', '4', 257.26, 4, 'PhanteksEnthooLuxe2ATXFullTower.jpg'),
(105, 33, 'EnthooPro', 'ATXFullTower', 'Black/Green', NULL, '3', '6', 57.6, 3, 'PhanteksEnthooProATXFullTower.jpg'),
(106, 34, 'STYX', 'MicroATXMiniTower', 'Green', NULL, '0', '3', 216.19, 4, 'RAIJINTEKSTYXMicroATXMiniTower.jpg'),
(107, 35, 'ATX-298WBP', 'ATXMidTower', 'Black/Blue', NULL, '4', '4', 108.16, 3, 'RaidmaxATX-298WBPATXMidTower.jpg'),
(108, 35, 'ATX-502WBG', 'ATXMidTower', 'White/Black', NULL, '3', '3', 92.24, 2, 'RaidmaxATX-502WBGATXMidTower.jpg'),
(109, 35, 'SagittaATX-928WB', 'ATXMidTower', 'Black', NULL, '5', '3', 86.71, 3, 'RaidmaxSagittaATX-928WBATXMidTower.jpg'),
(110, 35, 'SimplexATX-618B', 'MicroATXMidTower', 'Black', NULL, '4', '5', 106.83, 4, 'RaidmaxSimplexATX-618BMicroATXMidTower.jpg'),
(111, 36, 'BRADLEYM', 'ATXMidTower', 'Black', NULL, '1', '3', 224, 1, 'RosewillBRADLEYMATXMidTower.jpg'),
(112, 36, 'LegacyU2-B', 'MiniITXTower', 'Black', NULL, '0', '2', 249.54, 1, 'RosewillLegacyU2-BMiniITXTower.jpg'),
(113, 36, 'Orbit-Z1', 'ATXMidTower', 'Black', NULL, '0', '2', 275.7, 1, 'RosewillOrbit-Z1ATXMidTower.jpg'),
(114, 36, 'R363-M-BK', 'MicroATXMidTower', 'Black', '400', '2', '2', 79.88, 1, 'RosewillR363-M-BKMicroATXMidTower.jpg'),
(115, 37, 'Proxima-RGB', 'ATXMidTower', 'Black', NULL, '0', '2', 272.29, 3, 'SAMAProxima-RGBATXMidTower.jpg'),
(116, 38, 'BD28', 'ATXMidTower', 'Black/Red', NULL, '2', '3', 71.85, 4, 'SHARKOONBD28ATXMidTower.jpg'),
(117, 38, 'T28', 'ATXMidTower', 'Black/Green', NULL, '2', '6', 242.35, 3, 'SHARKOONT28ATXMidTower.jpg'),
(118, 39, 'BX1-4237v2.1', 'ATXMidTower', 'Black', NULL, '4', '4', 196.23, 3, 'SenteyBX1-4237v2.1ATXMidTower.jpg'),
(119, 39, 'CS3-3340TAC2.0(Black)', 'ATXMidTower', 'Black', NULL, '3', '5', 204.09, 1, 'SenteyCS3-3340TAC2.0(Black)ATXMidTower.jpg'),
(120, 39, 'GS-6020', 'ATXMidTower', 'Black', NULL, '3', '4', 131.76, 3, 'SenteyGS-6020ATXMidTower.jpg'),
(121, 40, 'FT01-B', 'ATXMidTower', 'Black', NULL, '5', '7', 246.52, 3, 'SilverstoneFT01-BATXMidTower.jpg'),
(122, 40, 'GD06B', 'HTPC', 'Black', NULL, '1', '4', 287.33, 1, 'SilverstoneGD06BHTPC.jpg'),
(123, 40, 'LC20-B', 'HTPC', 'Black', NULL, '2', '6', 147.11, 1, 'SilverstoneLC20-BHTPC.jpg'),
(124, 40, 'PM01', 'ATXMidTower', 'Black/Red', NULL, '0', '4', 73.54, 2, 'SilverstonePM01ATXMidTower.jpg'),
(125, 40, 'RL03B-W-USB3.0', 'ATXMidTower', 'Black', NULL, '3', '7', 126.36, 1, 'SilverstoneRL03B-W-USB3.0ATXMidTower.jpg'),
(126, 40, 'RL06', 'ATXMidTower', 'White/Black', NULL, '0', '3', 111.19, 2, 'SilverstoneRL06ATXMidTower.jpg'),
(127, 40, 'RVZ02B', 'HTPC', 'Black/Clear', NULL, '0', '1', 126.87, 1, 'SilverstoneRVZ02BHTPC.jpg'),
(128, 40, 'SG05-B', 'MiniITXDesktop', 'Black', '300', '0', '1', 250.76, 4, 'SilverstoneSG05-BMiniITXDesktop.jpg'),
(129, 40, 'TJ10B-W-USB3.0', 'ATXFullTower', 'Black', NULL, '4', '6', 73.22, 2, 'SilverstoneTJ10B-W-USB3.0ATXFullTower.jpg'),
(130, 41, 'ACUF-T', 'ATXMidTower', 'Clear', NULL, '2', '2', 63.79, 2, 'SunbeamACUF-TATXMidTower.jpg'),
(131, 42, 'A700TG', 'ATXFullTower', 'Silver', NULL, '0', '4', 299.28, 4, 'ThermaltakeA700TGATXFullTower.jpg'),
(132, 42, 'ChaserA21', 'ATXMidTower', 'Black/Blue', NULL, '3', '6', 255.06, 4, 'ThermaltakeChaserA21ATXMidTower.jpg'),
(133, 42, 'ChaserA31ThunderEdition', 'ATXMidTower', 'Black', NULL, '4', '5', 77.48, 3, 'ThermaltakeChaserA31ThunderEditionATXMidTower.jpg'),
(134, 42, 'CoreV71', 'ATXFullTower', 'Black', NULL, '2', '8', 72.17, 3, 'ThermaltakeCoreV71ATXFullTower.jpg'),
(135, 42, 'Level20GT', 'ATXFullTower', 'Black/Silver', NULL, '0', '7', 78.41, 2, 'ThermaltakeLevel20GTATXFullTower.jpg'),
(136, 42, 'V4BlackEdition', 'ATXMidTower', 'Black', NULL, '4', '4', 125.52, 4, 'ThermaltakeV4BlackEditionATXMidTower.jpg'),
(137, 42, 'V9BlackEdition', 'ATXMidTower', 'Black', NULL, '4', '5', 92.4, 3, 'ThermaltakeV9BlackEditionATXMidTower.jpg'),
(138, 42, 'VersaJ24ARGB', 'ATXMidTower', 'Black', NULL, '0', '3', 285.42, 2, 'ThermaltakeVersaJ24ARGBATXMidTower.jpg'),
(139, 42, 'VersaN27', 'ATXMidTower', 'Black', NULL, '0', '4', 99.95, 3, 'ThermaltakeVersaN27ATXMidTower.jpg'),
(140, 43, '320', 'ATXMidTower', 'Black', NULL, '3', '8', 93.44, 2, 'XClio320ATXMidTower.jpg'),
(141, 44, 'AsgardII', 'ATXMidTower', 'Black', NULL, '4', '5', 117.35, 4, 'XigmatekAsgardIIATXMidTower.jpg'),
(142, 44, 'SpiritM', 'MicroATXMiniTower', 'Black', NULL, '1', '2', 256.44, 4, 'XigmatekSpiritMMicroATXMiniTower.jpg'),
(143, 45, 'GS-1000-BK', 'ATXFullTower', 'Black', NULL, '4', '6', 130.17, 4, 'ZalmanGS-1000-BKATXFullTower.jpg'),
(144, 45, 'Z3PlusWhite', 'ATXMidTower', 'Black/White', NULL, '2', '4', 81.52, 1, 'ZalmanZ3PlusWhiteATXMidTower.jpg'),
(145, 46, 'DarkBasePro900Rev.2', 'ATXFullTower', 'Black/Orange', NULL, '2', '7', 217.09, 2, 'bequiet!DarkBasePro900Rev.2ATXFullTower.jpg'),
(146, 46, 'SilentBase601', 'ATXMidTower', 'Black/Silver', NULL, '0', '3', 290.88, 3, 'bequiet!SilentBase601ATXMidTower.jpg'),
(147, 46, 'SilentBase800', 'ATXMidTower', 'Black/Orange', NULL, '3', '7', 253.16, 4, 'bequiet!SilentBase800ATXMidTower.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` int(10) UNSIGNED NOT NULL,
  `Proizvajalec_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cores` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_clock` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boost_clock` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tdp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `integrated_graphics` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multithreading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cena` float DEFAULT 0,
  `ocena` int(1) UNSIGNED DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `Proizvajalec_id`, `model`, `cores`, `base_clock`, `boost_clock`, `tdp`, `integrated_graphics`, `multithreading`, `cena`, `ocena`, `slika`) VALUES
(1, 64, 'A10-7800', '4', '3500000000', '3900000000', '65', 'RadeonR7(on-die)', '0', 111.06, 4, 'AMDA10-7800.jpg'),
(2, 64, 'A10-9700E', '4', '3000000000', '3500000000', '35', 'RadeonR7(on-die)', '0', 280.98, 4, 'AMDA10-9700E.jpg'),
(3, 64, 'A4-3400', '2', '2700000000', NULL, '65', 'RadeonHD6410D', '0', 271.75, 4, 'AMDA4-3400.jpg'),
(4, 64, 'A4-5300', '2', '3400000000', NULL, '65', 'RadeonHD7480D', '0', 215.83, 1, 'AMDA4-5300.jpg'),
(5, 64, 'A6-7470K', '2', '3700000000', '4000000000', '65', 'RadeonR5(ondie)', '0', 213.9, 2, 'AMDA6-7470K.jpg'),
(6, 64, 'A8-5600K', '4', '3600000000', NULL, '100', 'RadeonHD7560D', '0', 122.01, 3, 'AMDA8-5600K.jpg'),
(7, 64, 'Athlon200GE', '2', '3200000000', NULL, '35', 'RadeonVega3', '1', 168.34, 2, 'AMDAthlon200GE.jpg'),
(8, 64, 'AthlonIIX2240', '2', '2800000000', NULL, '65', NULL, '0', 175.66, 3, 'AMDAthlonIIX2240.jpg'),
(9, 64, 'AthlonIIX2250u', '2', '1600000000', NULL, '25', NULL, '0', 73.3, 2, 'AMDAthlonIIX2250u.jpg'),
(10, 64, 'AthlonIIX2270', '2', '3400000000', NULL, '65', NULL, '0', 289.49, 2, 'AMDAthlonIIX2270.jpg'),
(11, 64, 'AthlonIIX3460', '3', '3400000000', NULL, '95', NULL, '0', 177.58, 3, 'AMDAthlonIIX3460.jpg'),
(12, 64, 'AthlonIIX4645', '4', '3100000000', NULL, '95', NULL, '0', 219.41, 4, 'AMDAthlonIIX4645.jpg'),
(13, 64, 'AthlonIIX4651', '4', '3000000000', NULL, '100', NULL, '0', 264.33, 3, 'AMDAthlonIIX4651.jpg'),
(14, 64, 'AthlonX2370K', '2', '4200000000', NULL, '65', NULL, '0', 113.44, 3, 'AMDAthlonX2370K.jpg'),
(15, 64, 'AthlonX4845', '4', '3500000000', '3800000000', '65', NULL, '0', 224.18, 1, 'AMDAthlonX4845.jpg'),
(16, 64, 'AthlonX4880K', '4', '4000000000', '4200000000', '95', NULL, '0', 230.6, 4, 'AMDAthlonX4880K.jpg'),
(17, 64, 'FX-4300', '4', '3800000000', NULL, '95', NULL, '0', 180.44, 3, 'AMDFX-4300.jpg'),
(18, 64, 'FX-6100', '6', '3300000000', NULL, '95', NULL, '0', 160.41, 3, 'AMDFX-6100.jpg'),
(19, 64, 'FX-8300', '8', '3300000000', NULL, '95', NULL, '0', 210.73, 4, 'AMDFX-8300.jpg'),
(20, 64, 'FX-8350', '8', '4000000000', NULL, '125', NULL, '0', 272.44, 3, 'AMDFX-8350.jpg'),
(21, 64, 'FX-8370', '8', '4000000000', '4300000000', '125', NULL, '0', 180, 1, 'AMDFX-8370.jpg'),
(22, 64, 'FX-9370', '8', '4400000000', '4700000000', '220', NULL, '0', 282.68, 1, 'AMDFX-9370.jpg'),
(23, 64, 'PhenomIIX2545', '2', '3000000000', NULL, '80', NULL, '0', 73.44, 4, 'AMDPhenomIIX2545.jpg'),
(24, 64, 'PhenomIIX2555Black', '2', '3200000000', NULL, '80', NULL, '0', 219.1, 4, 'AMDPhenomIIX2555Black.jpg'),
(25, 64, 'PhenomIIX3715Black', '3', '2800000000', NULL, '95', NULL, '0', 75.23, 1, 'AMDPhenomIIX3715Black.jpg'),
(26, 64, 'PhenomIIX4905e', '4', '2500000000', NULL, '65', NULL, '0', 168.82, 4, 'AMDPhenomIIX4905e.jpg'),
(27, 64, 'PhenomIIX4965', '4', '3400000000', NULL, '125', NULL, '0', 68.43, 3, 'AMDPhenomIIX4965.jpg'),
(28, 64, 'PhenomIIX4B99', '4', '3300000000', NULL, '95', NULL, '0', 285.64, 3, 'AMDPhenomIIX4B99.jpg'),
(29, 64, 'PhenomIIX61045T', '6', '2700000000', NULL, '95', NULL, '0', 172.95, 3, 'AMDPhenomIIX61045T.jpg'),
(30, 64, 'Ryzen31200', '4', '3100000000', '3400000000', '65', NULL, '0', 207.83, 2, 'AMDRyzen31200.jpg'),
(31, 64, 'Ryzen32200G', '4', '3500000000', '3700000000', '65', 'RadeonVega8', '0', 220.32, 4, 'AMDRyzen32200G.jpg'),
(32, 64, 'Ryzen53600X', '6', '3800000000', '4400000000', '95', NULL, '1', 178.08, 3, 'AMDRyzen53600X.jpg'),
(33, 64, 'Ryzen71800X', '8', '3600000000', '4000000000', '95', NULL, '1', 179.45, 1, 'AMDRyzen71800X.jpg'),
(34, 64, 'Ryzen73700X', '8', '3600000000', '4400000000', '65', NULL, '1', 63.01, 2, 'AMDRyzen73700X.jpg'),
(35, 64, 'Sempron145', '1', '2800000000', NULL, '45', NULL, '0', 226.68, 2, 'AMDSempron145.jpg'),
(36, 64, 'Threadripper1950X', '16', '3400000000', '4000000000', '180', NULL, '1', 144.41, 3, 'AMDThreadripper1950X.jpg'),
(37, 64, 'Threadripper2990WX', '32', '3000000000', '4200000000', '250', NULL, '1', 241.99, 3, 'AMDThreadripper2990WX.jpg'),
(38, 65, 'Celeron440', '1', '2000000000', NULL, '35', NULL, '0', 226.75, 4, 'IntelCeleron440.jpg'),
(39, 65, 'CeleronE3300', '2', '2500000000', NULL, '65', NULL, '0', 107.78, 4, 'IntelCeleronE3300.jpg'),
(40, 65, 'CeleronG1620', '2', '2700000000', NULL, '55', 'IntelHDGraphics', '0', 58.61, 1, 'IntelCeleronG1620.jpg'),
(41, 65, 'CeleronG1850', '2', '2900000000', NULL, '53', 'IntelHDGraphics', '0', 169.71, 1, 'IntelCeleronG1850.jpg'),
(42, 65, 'CeleronG470', '1', '2000000000', NULL, '35', 'IntelHDGraphics', '1', 122.72, 1, 'IntelCeleronG470.jpg'),
(43, 65, 'Core2DuoE4300', '2', '1800000000', NULL, '65', NULL, '0', 54.48, 3, 'IntelCore2DuoE4300.jpg'),
(44, 65, 'Core2DuoE4600', '2', '2400000000', NULL, '65', NULL, '0', 104.21, 2, 'IntelCore2DuoE4600.jpg'),
(45, 65, 'Core2DuoE6400', '2', '2130000000', NULL, '65', NULL, '0', 57.64, 3, 'IntelCore2DuoE6400.jpg'),
(46, 65, 'Core2DuoE6700', '2', '2660000000', NULL, '65', NULL, '0', 175.53, 4, 'IntelCore2DuoE6700.jpg'),
(47, 65, 'Core2DuoE7500', '2', '2930000000', NULL, '65', NULL, '0', 154.73, 4, 'IntelCore2DuoE7500.jpg'),
(48, 65, 'Core2DuoE7500', '2', '2930000000', NULL, '65', NULL, '0', 197.09, 3, 'IntelCore2DuoE7500.jpg'),
(49, 65, 'Core2DuoE8300', '2', '2830000000', NULL, '65', NULL, '0', 221.24, 4, 'IntelCore2DuoE8300.jpg'),
(50, 65, 'Core2DuoE8600', '2', '3330000000', NULL, '65', NULL, '0', 214.95, 3, 'IntelCore2DuoE8600.jpg'),
(51, 65, 'Core2QuadQ6600', '4', '2400000000', NULL, '100', NULL, '0', 111.01, 1, 'IntelCore2QuadQ6600.jpg'),
(52, 65, 'Core2QuadQ8300', '4', '2500000000', NULL, '95', NULL, '0', 110.21, 3, 'IntelCore2QuadQ8300.jpg'),
(53, 65, 'Core2QuadQ9505', '4', '2830000000', NULL, '95', NULL, '0', 167.99, 3, 'IntelCore2QuadQ9505.jpg'),
(54, 65, 'Corei3-2100', '2', '3100000000', NULL, '65', 'IntelHDGraphics2000', '1', 209.33, 3, 'IntelCorei3-2100.jpg'),
(55, 65, 'Corei3-2120T', '2', '2600000000', NULL, '35', 'IntelHDGraphics2000', '1', 242.7, 3, 'IntelCorei3-2120T.jpg'),
(56, 65, 'Corei3-2125', '2', '3300000000', NULL, '65', 'IntelHDGraphics3000', '1', 285.51, 4, 'IntelCorei3-2125.jpg'),
(57, 65, 'Corei3-4130', '2', '3400000000', NULL, '54', 'IntelHDGraphics4400', '1', 149.47, 2, 'IntelCorei3-4130.jpg'),
(58, 65, 'Corei3-4160', '2', '3600000000', NULL, '54', 'IntelHDGraphics4400', '1', 90.81, 2, 'IntelCorei3-4160.jpg'),
(59, 65, 'Corei3-4370', '2', '3800000000', NULL, '54', 'IntelHDGraphics4600', '1', 205.64, 2, 'IntelCorei3-4370.jpg'),
(60, 65, 'Corei3-560', '2', '3333000000', NULL, '73', 'IntelHDGraphics', '1', 205.77, 1, 'IntelCorei3-560.jpg'),
(61, 65, 'Corei3-7100', '2', '3900000000', NULL, '51', 'IntelHDGraphics630', '1', 111.92, 3, 'IntelCorei3-7100.jpg'),
(62, 65, 'Corei3-7100T', '2', '3400000000', NULL, '35', 'IntelHDGraphics630', '1', 142.28, 4, 'IntelCorei3-7100T.jpg'),
(63, 65, 'Corei3-7300', '2', '4000000000', NULL, '51', 'IntelHDGraphics630', '1', 75.65, 4, 'IntelCorei3-7300.jpg'),
(64, 65, 'Corei3-7350K', '2', '4200000000', NULL, '60', 'IntelHDGraphics630', '1', 151.42, 2, 'IntelCorei3-7350K.jpg'),
(65, 65, 'Corei3-8100T', '4', '3100000000', NULL, '35', 'IntelUHDGraphics630', '0', 230.12, 3, 'IntelCorei3-8100T.jpg'),
(66, 65, 'Corei3-9100', '4', '3600000000', '4200000000', '65', 'IntelUHDGraphics630', '0', 146.36, 2, 'IntelCorei3-9100.jpg'),
(67, 65, 'Corei5-2320', '4', '3000000000', NULL, '95', 'IntelHDGraphics2000', '0', 241.42, 1, 'IntelCorei5-2320.jpg'),
(68, 65, 'Corei5-2400', '4', '3100000000', NULL, '95', 'IntelHDGraphics2000', '0', 218.02, 3, 'IntelCorei5-2400.jpg'),
(69, 65, 'Corei5-2550K', '4', '3400000000', NULL, '95', NULL, '0', 65.88, 3, 'IntelCorei5-2550K.jpg'),
(70, 65, 'Corei5-3570S', '4', '3100000000', '3800000000', '65', 'IntelHDGraphics2500', '0', 125.31, 4, 'IntelCorei5-3570S.jpg'),
(71, 65, 'Corei5-4570S', '4', '2900000000', NULL, '65', 'IntelHDGraphics4600', '0', 128.9, 4, 'IntelCorei5-4570S.jpg'),
(72, 65, 'Corei5-4690K', '4', '3500000000', '3900000000', '88', 'IntelHDGraphics4600', '0', 218.57, 2, 'IntelCorei5-4690K.jpg'),
(73, 65, 'Corei5-6400', '4', '2700000000', '3300000000', '65', 'IntelHDGraphics530', '0', 156.15, 2, 'IntelCorei5-6400.jpg'),
(74, 65, 'Corei5-650', '2', '3200000000', NULL, '73', 'IntelHDGraphics', '1', 75.04, 1, 'IntelCorei5-650.jpg'),
(75, 65, 'Corei5-680', '2', '3600000000', NULL, '73', 'IntelHDGraphics', '1', 106.74, 2, 'IntelCorei5-680.jpg'),
(76, 65, 'Corei5-7500T', '4', '2700000000', '3300000000', '35', 'IntelHDGraphics630', '0', 258.58, 3, 'IntelCorei5-7500T.jpg'),
(77, 65, 'Corei5-7600K', '4', '3800000000', '4200000000', '91', 'IntelHDGraphics630', '0', 172.7, 1, 'IntelCorei5-7600K.jpg'),
(78, 65, 'Corei5-8400', '6', '2800000000', '4000000000', '65', 'IntelUHDGraphics630', '0', 287.77, 1, 'IntelCorei5-8400.jpg'),
(79, 65, 'Corei5-8600T', '6', '2300000000', '3700000000', '35', 'IntelUHDGraphics630', '0', 120.74, 3, 'IntelCorei5-8600T.jpg'),
(80, 65, 'Corei5-9400', '6', '2900000000', '4099999999', '65', 'IntelUHDGraphics630', '0', 190.37, 1, 'IntelCorei5-9400.jpg'),
(81, 65, 'Corei5-9400', '6', '2900000000', '4099999999', '65', 'IntelUHDGraphics630', '0', 289.65, 4, 'IntelCorei5-9400.jpg'),
(82, 65, 'Corei5-9500F', '6', '3000000000', '4400000000', '65', NULL, '0', 77.17, 3, 'IntelCorei5-9500F.jpg'),
(83, 65, 'Corei5-9600K', '6', '3700000000', '4600000000', '95', 'IntelUHDGraphics630', '0', 216.84, 1, 'IntelCorei5-9600K.jpg'),
(84, 65, 'Corei7-3770K', '4', '3500000000', NULL, '77', 'IntelHDGraphics4000', '1', 52.73, 1, 'IntelCorei7-3770K.jpg'),
(85, 65, 'Corei7-3930K', '6', '3200000000', NULL, '130', NULL, '1', 63.1, 3, 'IntelCorei7-3930K.jpg'),
(86, 65, 'Corei7-4930K', '6', '3400000000', '3900000000', '130', NULL, '1', 107.3, 2, 'IntelCorei7-4930K.jpg'),
(87, 65, 'Corei7-5820K', '6', '3300000000', '3600000000', '140', NULL, '1', 297.19, 3, 'IntelCorei7-5820K.jpg'),
(88, 65, 'Corei7-6700', '4', '3400000000', '4000000000', '65', 'IntelHDGraphics530', '1', 114.09, 2, 'IntelCorei7-6700.jpg'),
(89, 65, 'Corei7-6950X', '10', '3000000000', '3500000000', '140', NULL, '1', 128.84, 4, 'IntelCorei7-6950X.jpg'),
(90, 65, 'Corei7-7740X', '4', '4300000000', '4500000000', '112', NULL, '1', 251.92, 3, 'IntelCorei7-7740X.jpg'),
(91, 65, 'Corei7-7820X', '8', '3600000000', '4500000000', '140', NULL, '1', 73.11, 1, 'IntelCorei7-7820X.jpg'),
(92, 65, 'Corei7-8700', '6', '3200000000', '4600000000', '65', 'IntelUHDGraphics630', '1', 59.77, 2, 'IntelCorei7-8700.jpg'),
(93, 65, 'Corei7-920', '4', '2660000000', NULL, '130', NULL, '1', 279.48, 1, 'IntelCorei7-920.jpg'),
(94, 65, 'Corei7-950', '4', '3060000000', NULL, '130', NULL, '1', 168.16, 1, 'IntelCorei7-950.jpg'),
(95, 65, 'Corei7-9700T', '8', '2000000000', '4300000000', '35', 'IntelHDGraphics630', '0', 202.34, 4, 'IntelCorei7-9700T.jpg'),
(96, 65, 'Corei9-7960X', '16', '2800000000', '4400000000', '165', NULL, '1', 207.21, 3, 'IntelCorei9-7960X.jpg'),
(97, 65, 'Corei9-9900', '8', '3100000000', '5000000000', '65', 'IntelUHDGraphics630', '1', 129.02, 4, 'IntelCorei9-9900.jpg'),
(98, 65, 'Corei9-9980XE', '18', '3000000000', '4400000000', '165', NULL, '1', 223.47, 2, 'IntelCorei9-9980XE.jpg'),
(99, 65, 'PentiumE2220', '2', '2400000000', NULL, '65', NULL, '0', 180.32, 3, 'IntelPentiumE2220.jpg'),
(100, 65, 'PentiumE5800', '2', '3200000000', NULL, '65', NULL, '0', 181.16, 3, 'IntelPentiumE5800.jpg'),
(101, 65, 'PentiumE6300', '2', '2800000000', NULL, '65', NULL, '0', 64.84, 4, 'IntelPentiumE6300.jpg'),
(102, 65, 'PentiumG2010', '2', '2800000000', NULL, '55', 'IntelHDGraphics', '0', 230.7, 2, 'IntelPentiumG2010.jpg'),
(103, 65, 'PentiumG3250', '2', '3200000000', NULL, '53', 'IntelHDGraphics', '0', 159, 3, 'IntelPentiumG3250.jpg'),
(104, 65, 'PentiumG4400', '2', '3300000000', NULL, '54', 'IntelHDGraphics510', '0', 52.92, 4, 'IntelPentiumG4400.jpg'),
(105, 65, 'PentiumG4400', '2', '3300000000', NULL, '54', 'IntelHDGraphics510', '0', 237.55, 1, 'IntelPentiumG4400.jpg'),
(106, 65, 'PentiumG4620', '2', '3700000000', NULL, '51', 'IntelHDGraphics630', '1', 229.04, 3, 'IntelPentiumG4620.jpg'),
(107, 65, 'PentiumG6950', '2', '2800000000', NULL, '73', 'IntelHDGraphics', '0', 132.53, 4, 'IntelPentiumG6950.jpg'),
(108, 65, 'PentiumGoldG5500T', '2', '3200000000', NULL, '35', 'IntelUHDGraphics630', '1', 175.55, 3, 'IntelPentiumGoldG5500T.jpg'),
(109, 65, 'XeonE-2144G', '4', '3600000000', '4500000000', '71', 'IntelHDGraphicsP630', '1', 180.13, 2, 'IntelXeonE-2144G.jpg'),
(110, 65, 'XeonE-2176G', '6', '3700000000', '4700000000', '80', 'IntelHDGraphicsP630', '1', 74, 2, 'IntelXeonE-2176G.jpg'),
(111, 65, 'XeonE-2236', '6', '3400000000', '4800000000', '80', NULL, '1', 279.59, 2, 'IntelXeonE-2236.jpg'),
(112, 65, 'XeonE3-1220V6', '4', '3000000000', '3500000000', '72', NULL, '0', 126, 4, 'IntelXeonE3-1220V6.jpg'),
(113, 65, 'XeonE3-1225V2', '4', '3200000000', NULL, '77', 'IntelHDGraphicsP4000', '0', 241.2, 3, 'IntelXeonE3-1225V2.jpg'),
(114, 65, 'XeonE3-1230V3', '4', '3300000000', '3700000000', '80', NULL, '1', 278.02, 2, 'IntelXeonE3-1230V3.jpg'),
(115, 65, 'XeonE3-1240V6', '4', '3700000000', '4099999999', '72', NULL, '1', 116.49, 3, 'IntelXeonE3-1240V6.jpg'),
(116, 65, 'XeonE3-1240LV5', '4', '2100000000', '3200000000', '25', NULL, '1', 198.39, 2, 'IntelXeonE3-1240LV5.jpg'),
(117, 65, 'XeonE3-1245V3', '4', '3400000000', '3800000000', '84', 'IntelHDGraphicsP4600', '1', 92.48, 4, 'IntelXeonE3-1245V3.jpg'),
(118, 65, 'XeonE3-1270V5', '4', '3600000000', '4000000000', '80', NULL, '1', 67.24, 2, 'IntelXeonE3-1270V5.jpg'),
(119, 65, 'XeonE3-1275V2', '4', '3500000000', NULL, '77', 'IntelHDGraphicsP4000', '1', 258.72, 2, 'IntelXeonE3-1275V2.jpg'),
(120, 65, 'XeonE3-1285V6', '4', '4099999999', '4500000000', '79', 'IntelHDGraphics630', '1', 291.91, 2, 'IntelXeonE3-1285V6.jpg'),
(121, 65, 'XeonE5-1630V4', '4', '3700000000', '4000000000', '140', NULL, '1', 133.4, 1, 'IntelXeonE5-1630V4.jpg'),
(122, 65, 'XeonE5-2420V2', '6', '2200000000', '2700000000', '80', NULL, '1', 241.26, 1, 'IntelXeonE5-2420V2.jpg'),
(123, 65, 'XeonE5-2440V2', '8', '1900000000', '2400000000', '95', NULL, '1', 256.09, 2, 'IntelXeonE5-2440V2.jpg'),
(124, 65, 'XeonE5-2603V3', '6', '1600000000', NULL, '85', NULL, '0', 256.69, 2, 'IntelXeonE5-2603V3.jpg'),
(125, 65, 'XeonE5-2620', '6', '2000000000', NULL, '95', NULL, '1', 215.18, 3, 'IntelXeonE5-2620.jpg'),
(126, 65, 'XeonE5-2622V3', '8', '2400000000', NULL, '85', NULL, '1', 255.81, 3, 'IntelXeonE5-2622V3.jpg'),
(127, 65, 'XeonE5-2630V3', '8', '2400000000', '3200000000', '85', NULL, '1', 83.53, 1, 'IntelXeonE5-2630V3.jpg'),
(128, 65, 'XeonE5-2650', '8', '2000000000', '2800000000', '95', NULL, '1', 100.19, 3, 'IntelXeonE5-2650.jpg'),
(129, 65, 'XeonE5-2650LV2', '10', '1700000000', '2100000000', '70', NULL, '1', 200.37, 3, 'IntelXeonE5-2650LV2.jpg'),
(130, 65, 'XeonE5-2650LV4', '14', '1700000000', '2500000000', '65', NULL, '1', 151.27, 2, 'IntelXeonE5-2650LV4.jpg'),
(131, 65, 'XeonE5-2660', '8', '2200000000', '3000000000', '95', NULL, '1', 105.26, 3, 'IntelXeonE5-2660.jpg'),
(132, 65, 'XeonE5-2660', '8', '2200000000', '3000000000', '95', NULL, '1', 272.47, 2, 'IntelXeonE5-2660.jpg'),
(133, 65, 'XeonE5-2667V3', '8', '3200000000', '3600000000', '135', NULL, '1', 246.6, 4, 'IntelXeonE5-2667V3.jpg'),
(134, 65, 'XeonE5-2683V4', '16', '2100000000', '3000000000', '120', NULL, '1', 115.57, 1, 'IntelXeonE5-2683V4.jpg'),
(135, 65, 'XeonE5-2687WV2', '8', '3400000000', '4000000000', '150', NULL, '1', 288.05, 3, 'IntelXeonE5-2687WV2.jpg'),
(136, 65, 'XeonE5-2690', '8', '2900000000', '3800000000', '135', NULL, '1', 293.54, 2, 'IntelXeonE5-2690.jpg'),
(137, 65, 'XeonE5-2697V3', '14', '2600000000', '3600000000', '145', NULL, '1', 53.59, 4, 'IntelXeonE5-2697V3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cpu_cooler`
--

CREATE TABLE `cpu_cooler` (
  `id` int(10) UNSIGNED NOT NULL,
  `Proizvajalec_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_decibels` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_decibels` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_decibels` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `velikost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barva` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cena` float DEFAULT 0,
  `ocena` int(1) UNSIGNED DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cpu_cooler`
--

INSERT INTO `cpu_cooler` (`id`, `Proizvajalec_id`, `model`, `default_rpm`, `min_rpm`, `max_rpm`, `default_decibels`, `min_decibels`, `max_decibels`, `velikost`, `barva`, `cena`, `ocena`, `slika`) VALUES
(1, 47, 'Alpine11GTRev2', '2000', NULL, NULL, '22.5', NULL, NULL, NULL, NULL, 220.29, 3, 'ARCTICAlpine11GTRev2.jpg'),
(2, 47, 'Alpine11ProRev.2', NULL, '500', '2000', NULL, NULL, NULL, NULL, NULL, 91.23, 4, 'ARCTICAlpine11ProRev.2.jpg'),
(3, 47, 'Alpine12Passive', NULL, NULL, NULL, '0', NULL, NULL, NULL, 'Black', 245.24, 3, 'ARCTICAlpine12Passive.jpg'),
(4, 47, 'Alpine64ProRev2', NULL, '500', '2000', NULL, NULL, NULL, NULL, NULL, 152.52, 1, 'ARCTICAlpine64ProRev2.jpg'),
(5, 47, 'AlpineAM4LP', NULL, '100', '2000', NULL, NULL, NULL, NULL, 'Black/White', 226.89, 2, 'ARCTICAlpineAM4LP.jpg'),
(6, 47, 'Freezer13', NULL, '600', '2000', NULL, NULL, NULL, NULL, NULL, 126.88, 1, 'ARCTICFreezer13.jpg'),
(7, 47, 'Freezer33CO', NULL, NULL, NULL, '22.5', NULL, NULL, NULL, NULL, 153.7, 3, 'ARCTICFreezer33CO.jpg'),
(8, 47, 'Freezer33TR(Black/White)', NULL, '200', '1800', '24.4', NULL, NULL, NULL, NULL, 87.9, 3, 'ARCTICFreezer33TR(Black-White).jpg'),
(9, 47, 'Freezer33eSportsONE(Black/Green)', NULL, '200', '1800', '24.4', NULL, NULL, NULL, NULL, 178.37, 4, 'ARCTICFreezer33eSportsONE(Black-Green).jpg'),
(10, 47, 'Freezer34CO', NULL, '200', '1800', NULL, NULL, NULL, NULL, 'Black/Silver', 78.17, 4, 'ARCTICFreezer34CO.jpg'),
(11, 47, 'Freezer34eSports', NULL, '200', '2100', '28', NULL, NULL, NULL, 'Red/Black', 55.7, 4, 'ARCTICFreezer34eSports.jpg'),
(12, 47, 'Freezer34eSportsDUO', NULL, '200', '2100', NULL, NULL, NULL, NULL, 'Yellow/Black', 244, 1, 'ARCTICFreezer34eSportsDUO.jpg'),
(13, 47, 'Freezer34eSportsDUO', NULL, '200', '2100', NULL, NULL, NULL, NULL, 'White/Black', 252.94, 1, 'ARCTICFreezer34eSportsDUO.jpg'),
(14, 47, 'FreezerA11', NULL, '500', '2000', '22.5', NULL, NULL, NULL, NULL, 232.68, 3, 'ARCTICFreezerA11.jpg'),
(15, 47, 'LIQUIDFREEZERII360', NULL, '800', '2000', NULL, NULL, NULL, '360', 'Black', 104.6, 1, 'ARCTICLIQUIDFREEZERII360.jpg'),
(16, 47, 'LiquidFreezerII240', NULL, '200', '1800', NULL, NULL, NULL, '240', 'Black', 274.92, 4, 'ARCTICLiquidFreezerII240.jpg'),
(17, 48, 'NeroLX', NULL, '600', '1900', NULL, '12', '32', NULL, NULL, 260.84, 2, 'AkasaNeroLX.jpg'),
(18, 49, 'Brocken3', NULL, '400', '1050', '22', NULL, NULL, NULL, 'Black', 179.46, 3, 'Alpenfu00f6hnBrocken3.jpg'),
(19, 49, 'Olymp', NULL, '300', '1400', NULL, '8', '27', NULL, NULL, 64.74, 1, 'Alpenfu00f6hnOlymp.jpg'),
(20, 66, 'EisbaerLT360', NULL, '550', '1700', '29', NULL, NULL, '360', 'Black', 235.32, 2, 'AlphacoolEisbaerLT360.jpg'),
(21, 3, 'A30', '1750', NULL, NULL, '20', NULL, NULL, NULL, NULL, 182.41, 4, 'AntecA30.jpg'),
(22, 3, 'KUHLERFlow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 156.07, 2, 'AntecKUHLERFlow.jpg'),
(23, 3, 'KuhlerH2O620', NULL, '1450', '2000', NULL, NULL, NULL, '120', NULL, 183.1, 3, 'AntecKuhlerH2O620.jpg'),
(24, 3, 'Mercury360', NULL, '900', '1800', '30', NULL, NULL, '360', 'Black/White', 147.33, 3, 'AntecMercury360.jpg'),
(25, 67, 'ROGRYUO120RGB', NULL, '800', '2500', '37', NULL, NULL, '120', 'Black', 137.33, 1, 'AsusROGRYUO120RGB.jpg'),
(26, 68, 'A40', NULL, '600', '2200', NULL, '13', '37', '240', NULL, 194.64, 1, 'CRYORIGA40.jpg'),
(27, 68, 'C7Cu', NULL, '600', '2500', '30', NULL, NULL, NULL, 'White/Orange', 261.21, 4, 'CRYORIGC7Cu.jpg'),
(28, 68, 'H7', NULL, '330', '1600', NULL, '1', '25', NULL, NULL, 172.16, 4, 'CRYORIGH7.jpg'),
(29, 68, 'M9a', NULL, '600', '2200', '26.4', NULL, NULL, NULL, NULL, 277.16, 2, 'CRYORIGM9a.jpg'),
(30, 11, 'BlizzardT2', '2200', NULL, NULL, '30', NULL, NULL, NULL, NULL, 69.35, 2, 'CoolerMasterBlizzardT2.jpg'),
(31, 11, 'BlizzardT2mini', '2200', NULL, NULL, '22', NULL, NULL, NULL, NULL, 215.22, 3, 'CoolerMasterBlizzardT2mini.jpg'),
(32, 11, 'DK9-7G52A-0L-GP', '4500', NULL, NULL, '35', NULL, NULL, NULL, NULL, 68.09, 1, 'CoolerMasterDK9-7G52A-0L-GP.jpg'),
(33, 11, 'Eisberg120LPrestige', '1600', NULL, NULL, '20.5', NULL, NULL, '120', NULL, 144.76, 2, 'CoolerMasterEisberg120LPrestige.jpg'),
(34, 11, 'GeminIIS524Ver2', '2000', NULL, NULL, '22', NULL, NULL, NULL, NULL, 219.52, 2, 'CoolerMasterGeminIIS524Ver2.jpg'),
(35, 11, 'Hyper212EVO', NULL, '600', '2000', NULL, '9', '36', NULL, NULL, 113.35, 2, 'CoolerMasterHyper212EVO.jpg'),
(36, 11, 'Hyper212LEDTurbo(Red)', NULL, '300', '1600', NULL, '9', '31', NULL, NULL, 108.18, 1, 'CoolerMasterHyper212LEDTurbo(Red).jpg'),
(37, 11, 'Hyper212X', NULL, '600', '2000', NULL, '9', '36', NULL, NULL, 150.85, 1, 'CoolerMasterHyper212X.jpg'),
(38, 11, 'Hyper612', NULL, '600', '2000', NULL, '9', '36', NULL, NULL, 129.72, 3, 'CoolerMasterHyper612.jpg'),
(39, 11, 'HyperD92', NULL, '800', '2800', NULL, '18', '33', NULL, NULL, 146.04, 2, 'CoolerMasterHyperD92.jpg'),
(40, 11, 'MASTERAIRMA620M', NULL, '650', '2000', NULL, '8', '30', NULL, 'Black', 291.05, 4, 'CoolerMasterMASTERAIRMA620M.jpg'),
(41, 11, 'MasterAirMA410MTUFGamingEdition', NULL, '600', '1800', NULL, '6', '31', NULL, 'Black/Yellow', 217.14, 3, 'CoolerMasterMasterAirMA410MTUFGamingEdition.jpg'),
(42, 11, 'MasterLiquid120', NULL, '650', '2000', NULL, '6', '30', '120', NULL, 162.54, 3, 'CoolerMasterMasterLiquid120.jpg'),
(43, 11, 'MasterLiquidML240RRGB', NULL, '650', '2000', NULL, '6', '30', '240', NULL, 111.29, 1, 'CoolerMasterMasterLiquidML240RRGB.jpg'),
(44, 11, 'MasterLiquidPro120', NULL, '500', '2000', NULL, '6', '30', '120', NULL, 268.82, 3, 'CoolerMasterMasterLiquidPro120.jpg'),
(45, 11, 'Nepton120XL', '2400', NULL, NULL, NULL, '7', '27', '120', NULL, 210.26, 4, 'CoolerMasterNepton120XL.jpg'),
(46, 11, 'RR-H101-22FK-RI', '2200', NULL, NULL, '22', NULL, NULL, NULL, NULL, 194.83, 1, 'CoolerMasterRR-H101-22FK-RI.jpg'),
(47, 11, 'Seidon120V', '2400', NULL, NULL, NULL, '19', '40', '120', NULL, 293.35, 2, 'CoolerMasterSeidon120V.jpg'),
(48, 11, 'Seidon240M', NULL, '600', '2400', NULL, '19', '40', '240', NULL, 82.31, 2, 'CoolerMasterSeidon240M.jpg'),
(49, 11, 'TPC812', NULL, '600', '2400', NULL, '19', '40', NULL, NULL, 231.45, 3, 'CoolerMasterTPC812.jpg'),
(50, 11, 'X6Elite', NULL, '600', '1800', NULL, '9', '35', NULL, NULL, 110.37, 4, 'CoolerMasterX6Elite.jpg'),
(51, 13, 'H100i', '2700', NULL, NULL, '37.68', NULL, NULL, '240', NULL, 57.45, 3, 'CorsairH100i.jpg'),
(52, 13, 'H100iPRO', '2400', NULL, NULL, '37', NULL, NULL, '240', 'Black', 156.14, 2, 'CorsairH100iPRO.jpg'),
(53, 13, 'H110i', '2100', NULL, NULL, '43', NULL, NULL, '280', NULL, 58.36, 3, 'CorsairH110i.jpg'),
(54, 13, 'H150iPRO', '1600', NULL, NULL, '25', NULL, NULL, '360', NULL, 273.38, 3, 'CorsairH150iPRO.jpg'),
(55, 13, 'H40', '2000', NULL, NULL, NULL, NULL, NULL, '120', NULL, 141.82, 1, 'CorsairH40.jpg'),
(56, 13, 'H55', '1700', NULL, NULL, '30.32', NULL, NULL, '120', NULL, 88.97, 2, 'CorsairH55.jpg'),
(57, 13, 'H70Core', NULL, NULL, NULL, NULL, NULL, NULL, '120', NULL, 219.39, 3, 'CorsairH70Core.jpg'),
(58, 13, 'H75', '2000', NULL, NULL, '31.4', NULL, NULL, '120', NULL, 280.02, 1, 'CorsairH75.jpg'),
(59, 13, 'H80i', '2700', NULL, NULL, '37.68', NULL, NULL, '120', NULL, 191.97, 2, 'CorsairH80i.jpg'),
(60, 14, 'Helor360', NULL, '600', '1800', '37.1', NULL, NULL, '360', 'Black', 69.77, 3, 'CougarHelor360.jpg'),
(61, 17, 'CAPTAIN120EXWHITE', NULL, '500', '1800', NULL, '18', '31', '120', NULL, 222.93, 3, 'DeepcoolCAPTAIN120EXWHITE.jpg'),
(62, 17, 'CAPTAIN240WHITE', NULL, '600', '2200', NULL, '18', '39', '240', NULL, 105.37, 3, 'DeepcoolCAPTAIN240WHITE.jpg'),
(63, 17, 'CAPTAIN240EXRGBWH', NULL, '500', '1800', NULL, '18', '31', '240', 'White/Black', 58.02, 2, 'DeepcoolCAPTAIN240EXRGBWH.jpg'),
(64, 17, 'CAPTAIN360EXWHITERGB', NULL, '500', '1800', NULL, '18', '31', '360', NULL, 174, 1, 'DeepcoolCAPTAIN360EXWHITERGB.jpg'),
(65, 17, 'CASTLE360EX', NULL, '500', '1800', '32.1', NULL, NULL, '360', 'Black', 145.93, 4, 'DeepcoolCASTLE360EX.jpg'),
(66, 17, 'Castle240RGB', NULL, '500', '1800', NULL, '18', '30', '240', 'Black', 157.64, 3, 'DeepcoolCastle240RGB.jpg'),
(67, 17, 'Fryzen', NULL, '500', '1800', NULL, '18', '42', NULL, 'Silver/Black', 50.44, 3, 'DeepcoolFryzen.jpg'),
(68, 17, 'GAMERSTORMCAPTAIN360XWHITE', NULL, '500', '1800', '32.1', NULL, NULL, '360', 'White/Black', 229.24, 3, 'DeepcoolGAMERSTORMCAPTAIN360XWHITE.jpg'),
(69, 17, 'GAMMAXX300', NULL, '900', '1600', NULL, '18', '21', NULL, NULL, 194.9, 1, 'DeepcoolGAMMAXX300.jpg'),
(70, 17, 'GAMMAXXGTTGA', NULL, '500', '1500', NULL, '18', '27', NULL, 'Black/Silver', 236.76, 4, 'DeepcoolGAMMAXXGTTGA.jpg'),
(71, 17, 'ICEBLADE200M', '2200', NULL, NULL, NULL, '18', '30', NULL, NULL, 299.13, 1, 'DeepcoolICEBLADE200M.jpg'),
(72, 17, 'IceEdgeMiniFSV2.0', '2200', NULL, NULL, '24.7', NULL, NULL, NULL, NULL, 235.38, 4, 'DeepcoolIceEdgeMiniFSV2.0.jpg'),
(73, 17, 'LUCIFERK2', NULL, '600', '1800', NULL, '18', '32', NULL, NULL, 229.48, 2, 'DeepcoolLUCIFERK2.jpg'),
(74, 17, 'Maelstrom240T', NULL, '600', '1800', NULL, '18', '34', '240', NULL, 141.29, 2, 'DeepcoolMaelstrom240T.jpg'),
(75, 17, 'THETA20PWM', NULL, '900', '2400', NULL, '18', '33', NULL, 'Black/Silver', 217.99, 3, 'DeepcoolTHETA20PWM.jpg'),
(76, 69, 'R14', NULL, '1500', '7000', NULL, '16', '48', NULL, NULL, 116.1, 1, 'DynatronR14.jpg'),
(77, 69, 'R25', NULL, '1000', '7000', NULL, '22', '59', NULL, NULL, 126.52, 3, 'DynatronR25.jpg'),
(78, 69, 'R8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 234.27, 1, 'DynatronR8.jpg'),
(79, 69, 'T860', NULL, '2000', '6000', NULL, '20', '45', NULL, NULL, 241.83, 4, 'DynatronT860.jpg'),
(80, 18, 'ACX', '2800', NULL, NULL, '42.5', NULL, NULL, NULL, NULL, 206.35, 1, 'EVGAACX.jpg'),
(81, 18, 'CLC120CL11', '1800', NULL, NULL, '32.1', NULL, NULL, '120', NULL, 256.26, 1, 'EVGACLC120CL11.jpg'),
(82, 19, 'Aquafusion240', NULL, '500', '2000', NULL, '17', '33', '240', 'Black', 112.26, 2, 'EnermaxAquafusion240.jpg'),
(83, 19, 'ELC-LM120S-TAA', '2500', NULL, NULL, '30', NULL, NULL, '120', NULL, 242.5, 2, 'EnermaxELC-LM120S-TAA.jpg'),
(84, 19, 'ETD-T60-TB', NULL, '800', '1800', NULL, '10', '21', NULL, NULL, 75.73, 2, 'EnermaxETD-T60-TB.jpg'),
(85, 19, 'ETS-N30R-HE', NULL, '600', '2800', NULL, '12', '28', NULL, NULL, 101.15, 3, 'EnermaxETS-N30R-HE.jpg'),
(86, 19, 'ETS-T40-W', '2200', NULL, NULL, '31.2', NULL, NULL, NULL, NULL, 228.53, 3, 'EnermaxETS-T40-W.jpg'),
(87, 19, 'ETS-T40F-TB', NULL, '900', '1800', NULL, '11', '21', NULL, NULL, 289.24, 3, 'EnermaxETS-T40F-TB.jpg'),
(88, 19, 'LIQTECHTR4II360', NULL, '500', '2300', NULL, '14', '28', '360', 'Black', 210.6, 2, 'EnermaxLIQTECHTR4II360.jpg'),
(89, 19, 'Liqtech120X', NULL, '600', '2500', NULL, '15', '30', '120', NULL, 135.29, 4, 'EnermaxLiqtech120X.jpg'),
(90, 70, 'Extreme-XRev.A', NULL, '1000', '2500', NULL, '16', '43', NULL, NULL, 244.62, 4, 'EnzotechExtreme-XRev.A.jpg'),
(91, 52, 'EC-NK804A-925EP', '2750', NULL, NULL, '28.2', NULL, NULL, NULL, NULL, 267.23, 3, 'EvercoolEC-NK804A-925EP.jpg'),
(92, 52, 'HPJ-12025', '1000', NULL, NULL, '21', NULL, NULL, NULL, NULL, 52.34, 2, 'EvercoolHPJ-12025.jpg'),
(93, 52, 'HPM-12025', NULL, '800', '2500', NULL, '15', '35', NULL, NULL, 159.95, 2, 'EvercoolHPM-12025.jpg'),
(94, 52, 'NI01-9525EP', '2600', NULL, NULL, '33', NULL, NULL, NULL, NULL, 92.77, 3, 'EvercoolNI01-9525EP.jpg'),
(95, 20, 'Windale4', NULL, '600', '1600', '32', NULL, NULL, NULL, 'Black/Silver', 183.99, 1, 'FSPGroupWindale4.jpg'),
(96, 22, 'CelsiusS36Blackout', NULL, '500', '2000', '32.2', NULL, NULL, '360', 'Black', 91.65, 4, 'FractalDesignCelsiusS36Blackout.jpg'),
(97, 71, 'CHIONEM1A240R', NULL, '1200', '1500', NULL, NULL, NULL, '240', 'Black', 106.26, 3, 'GAMDIASCHIONEM1A240R.jpg'),
(98, 23, 'Gamma500RGB', NULL, '1000', '1800', '26.3', NULL, NULL, NULL, 'Black/Silver', 206.35, 1, 'GameMaxGamma500RGB.jpg'),
(99, 53, 'CC-Siberian-01', NULL, '900', '2200', NULL, '10', '23', NULL, NULL, 162.98, 3, 'GelidSolutionsCC-Siberian-01.jpg'),
(100, 53, 'CC-Ssilence-AM1', NULL, '1200', '2600', NULL, '15', '27', NULL, NULL, 145.86, 1, 'GelidSolutionsCC-Ssilence-AM1.jpg'),
(101, 53, 'GX7', NULL, '750', '1800', NULL, '12', '28', NULL, NULL, 190.36, 4, 'GelidSolutionsGX7.jpg'),
(102, 53, 'SlimSilenceAM2', NULL, '1200', '2500', NULL, '15', '27', NULL, NULL, 214.22, 1, 'GelidSolutionsSlimSilenceAM2.jpg'),
(103, 24, 'AORUSLIQUIDCOOLER280', '2300', NULL, NULL, NULL, '22', '45', '280', 'Black', 200.03, 3, 'GigabyteAORUSLIQUIDCOOLER280.jpg'),
(104, 72, 'FROSTFLOW240L-R', NULL, '800', '2000', NULL, '20', '38', '240', NULL, 57.51, 4, 'ID-COOLINGFROSTFLOW240L-R.jpg'),
(105, 72, 'IS-40', NULL, '300', '2500', NULL, '14', '33', NULL, NULL, 137.42, 4, 'ID-COOLINGIS-40.jpg'),
(106, 72, 'IS-VC45', NULL, '600', '2500', NULL, '14', '33', NULL, NULL, 214.57, 4, 'ID-COOLINGIS-VC45.jpg'),
(107, 72, 'SE-203K', '1800', NULL, NULL, NULL, '16', '29', NULL, NULL, 110.62, 1, 'ID-COOLINGSE-203K.jpg'),
(108, 72, 'SE-205', NULL, '1600', '1800', NULL, '16', '29', NULL, NULL, 109.37, 3, 'ID-COOLINGSE-205.jpg'),
(109, 72, 'SE-214i', NULL, '800', '1800', NULL, '16', '29', NULL, NULL, 164.97, 3, 'ID-COOLINGSE-214i.jpg'),
(110, 65, 'BXRTS2011LC', '2200', NULL, NULL, NULL, NULL, NULL, '120', NULL, 196.75, 4, 'IntelBXRTS2011LC.jpg'),
(111, 65, 'BXXTS100H', NULL, '800', '1800', NULL, '20', '35', NULL, NULL, 188.84, 2, 'IntelBXXTS100H.jpg'),
(112, 73, 'CR-201HIVES(Black)', NULL, '800', '1500', NULL, '19', '31', NULL, 'Black', 53.96, 2, 'JonsboCR-201HIVES(Black).jpg'),
(113, 27, 'LPALV12-BK', '2200', NULL, NULL, '23', NULL, NULL, NULL, NULL, 153.24, 1, 'LEPALPALV12-BK.jpg'),
(114, 30, 'IC207', '2500', NULL, NULL, '25', NULL, NULL, NULL, NULL, 54.36, 1, 'LogisysIC207.jpg'),
(115, 30, 'MC4004IEXT', NULL, '900', '2200', NULL, '18', '28', NULL, NULL, 262.06, 4, 'LogisysMC4004IEXT.jpg'),
(116, 56, '5W1081F1M3', '2400', NULL, NULL, '31', NULL, NULL, NULL, NULL, 97.24, 3, 'Masscool5W1081F1M3.jpg'),
(117, 56, '8W553B1M3', '2400', NULL, NULL, '26.2', NULL, NULL, NULL, NULL, 150, 2, 'Masscool8W553B1M3.jpg'),
(118, 32, 'HAVIK120', NULL, '1200', '1500', NULL, '18', '22', NULL, NULL, 158.27, 3, 'NZXTHAVIK120.jpg'),
(119, 32, 'KrakenX42', NULL, '500', '1800', NULL, '21', '38', '140', NULL, 291.37, 3, 'NZXTKrakenX42.jpg'),
(120, 32, 'KrakenX52Rev2', NULL, '500', '2000', NULL, '21', '36', '240', NULL, 182.04, 4, 'NZXTKrakenX52Rev2.jpg'),
(121, 32, 'KrakenX72', NULL, '500', '2000', NULL, '21', '36', '360', 'Black', 236.09, 2, 'NZXTKrakenX72.jpg'),
(122, 58, 'NH-C14', NULL, '750', '1200', NULL, '10', '20', NULL, NULL, 84.36, 2, 'NoctuaNH-C14.jpg'),
(123, 58, 'NH-C14S', NULL, '300', '1500', NULL, '19', '25', NULL, NULL, 163.47, 3, 'NoctuaNH-C14S.jpg'),
(124, 58, 'NH-D9DXi43U', NULL, '400', '2000', NULL, '16', '23', NULL, NULL, 264.31, 4, 'NoctuaNH-D9DXi43U.jpg'),
(125, 58, 'NH-L9ichromax.black', NULL, '600', '2500', NULL, '15', '24', NULL, 'Black', 281.13, 4, 'NoctuaNH-L9ichromax.black.jpg'),
(126, 58, 'NH-L9x65', NULL, '600', '2500', NULL, '15', '24', NULL, NULL, 62.76, 2, 'NoctuaNH-L9x65.jpg'),
(127, 58, 'NH-U12S', NULL, '300', '1500', NULL, '19', '22', NULL, NULL, 170.38, 3, 'NoctuaNH-U12S.jpg'),
(128, 58, 'NH-U9DXi4', NULL, '300', '1600', NULL, '13', '18', NULL, NULL, 113.61, 1, 'NoctuaNH-U9DXi4.jpg'),
(129, 33, 'PH-TC12DX', NULL, '600', '1800', NULL, '22', '28', NULL, NULL, 256.91, 2, 'PhanteksPH-TC12DX.jpg'),
(130, 33, 'PH-TC12LS_BK', NULL, '500', '1800', '25', NULL, NULL, NULL, NULL, 143.76, 4, 'PhanteksPH-TC12LS_BK.jpg'),
(131, 33, 'PH-TC14CS', NULL, '700', '1200', NULL, '13', '19', NULL, NULL, 148.03, 1, 'PhanteksPH-TC14CS.jpg'),
(132, 33, 'PH-TC14CS_BL', '700', NULL, NULL, NULL, '13', '19', NULL, NULL, 258.86, 2, 'PhanteksPH-TC14CS_BL.jpg'),
(133, 33, 'PH-TC14PE_RD', NULL, '700', '1200', NULL, '13', '19', NULL, NULL, 50.24, 4, 'PhanteksPH-TC14PE_RD.jpg'),
(134, 74, 'Basic48', NULL, '1000', '2000', NULL, NULL, NULL, NULL, NULL, 174.61, 2, 'ProlimatechBasic48.jpg'),
(135, 74, 'PRO-GNSS', NULL, '800', '1600', NULL, NULL, NULL, NULL, NULL, 172.32, 4, 'ProlimatechPRO-GNSS.jpg'),
(136, 74, 'PRO-PNTH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 287.78, 2, 'ProlimatechPRO-PNTH.jpg'),
(137, 34, 'JUNOPRORBW', NULL, '400', '1800', '28', NULL, NULL, NULL, 'Black', 121.96, 3, 'RAIJINTEKJUNOPRORBW.jpg'),
(138, 34, 'JUNO-X', NULL, '1200', '2500', '26', NULL, NULL, NULL, 'Red/Black', 196.45, 4, 'RAIJINTEKJUNO-X.jpg'),
(139, 34, 'PALLASRed', NULL, '650', '1400', '28', NULL, NULL, NULL, NULL, 66.39, 4, 'RAIJINTEKPALLASRed.jpg'),
(140, 34, 'THEMIS', NULL, '1000', '1500', '24.53', NULL, NULL, NULL, NULL, 192.55, 2, 'RAIJINTEKTHEMIS.jpg'),
(141, 34, 'TISISCOREEDITION', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 213.59, 1, 'RAIJINTEKTISISCOREEDITION.jpg'),
(142, 34, 'TRITONBLUE', NULL, '1000', '2600', NULL, '22', '37', '240', NULL, 190.3, 3, 'RAIJINTEKTRITONBLUE.jpg'),
(143, 34, 'ZELOS', NULL, '800', '1400', '20', NULL, NULL, NULL, NULL, 260.74, 4, 'RAIJINTEKZELOS.jpg'),
(144, 75, 'BIFROST240', NULL, NULL, NULL, NULL, NULL, NULL, '240', NULL, 182.8, 3, 'RIOTOROBIFROST240.jpg'),
(145, 76, 'Justice', NULL, '300', '1500', NULL, '4', '30', NULL, NULL, 81.76, 2, 'ReevenJustice.jpg'),
(146, 76, 'Ouranos', NULL, '300', '1700', NULL, '6', '36', NULL, NULL, 60.42, 4, 'ReevenOuranos.jpg'),
(147, 36, 'AIOLOS', '1500', NULL, NULL, '24.6', NULL, NULL, NULL, NULL, 256.8, 3, 'RosewillAIOLOS.jpg'),
(148, 36, 'RCX-Z1', NULL, '1700', '3100', NULL, '18', '33', NULL, NULL, 52.75, 1, 'RosewillRCX-Z1.jpg'),
(149, 36, 'ROCC-16002', NULL, '800', '2000', '23.6', NULL, NULL, NULL, 'Blue/Black', 193.33, 3, 'RosewillROCC-16002.jpg'),
(150, 77, 'BIGShuriken2Rev.B', NULL, '500', '2000', NULL, '9', '34', NULL, NULL, 258.4, 3, 'ScytheBIGShuriken2Rev.B.jpg'),
(151, 77, 'BigShuriken3', NULL, '300', '1800', NULL, '3', '30', NULL, 'Black/Silver', 162.03, 1, 'ScytheBigShuriken3.jpg'),
(152, 77, 'FUMA2', NULL, '300', '1200', NULL, '3', '25', NULL, 'Black/Silver', 234.95, 1, 'ScytheFUMA2.jpg'),
(153, 77, 'KotetsuMarkII', NULL, '300', '1200', NULL, '4', '25', NULL, NULL, 138.65, 2, 'ScytheKotetsuMarkII.jpg'),
(154, 77, 'Ninja5', NULL, '300', '800', NULL, '4', '15', NULL, 'Black', 188.4, 4, 'ScytheNinja5.jpg'),
(155, 77, 'SCKC-2000', NULL, '500', '1300', NULL, '10', '25', NULL, NULL, 226.04, 4, 'ScytheSCKC-2000.jpg'),
(156, 77, 'SCKDT-1000', NULL, '800', '3300', NULL, '8', '33', NULL, NULL, 265.03, 3, 'ScytheSCKDT-1000.jpg'),
(157, 77, 'SCKZT-1000', NULL, '800', '3300', NULL, '8', '33', NULL, NULL, 97.04, 4, 'ScytheSCKZT-1000.jpg'),
(158, 77, 'SCNJ-4000', NULL, '300', '1500', NULL, '4', '30', NULL, NULL, 140.06, 1, 'ScytheSCNJ-4000.jpg'),
(159, 77, 'SCYS-1000', NULL, '470', '1900', NULL, '7', '27', NULL, NULL, 109.21, 1, 'ScytheSCYS-1000.jpg'),
(160, 60, 'EFZ-80HA3', '2200', NULL, NULL, NULL, '8', '24', NULL, NULL, 75.85, 3, 'SilenXEFZ-80HA3.jpg'),
(161, 60, 'EFZ-92HA2', '2400', NULL, NULL, NULL, '8', '24', NULL, NULL, 251.62, 1, 'SilenXEFZ-92HA2.jpg'),
(162, 78, 'NavisRGB280', NULL, '800', '1800', NULL, NULL, NULL, '280', 'Black', 230.57, 2, 'SilentiumPCNavisRGB280.jpg'),
(163, 40, 'AR02', NULL, '1200', '2800', NULL, '16', '24', NULL, NULL, 97.98, 2, 'SilverstoneAR02.jpg'),
(164, 40, 'AR08', NULL, '1500', '2800', NULL, '14', '28', NULL, 'Blue/Silver', 248.2, 1, 'SilverstoneAR08.jpg'),
(165, 40, 'ArgonAR09-115XS', NULL, '1200', '5000', NULL, '18', '43', NULL, NULL, 147.05, 1, 'SilverstoneArgonAR09-115XS.jpg'),
(166, 40, 'ArgonAR10-115XS', NULL, '500', '4000', NULL, '18', '39', NULL, NULL, 190.65, 1, 'SilverstoneArgonAR10-115XS.jpg'),
(167, 40, 'NT06-PRO', NULL, '1000', '2200', NULL, NULL, NULL, NULL, NULL, 212.08, 4, 'SilverstoneNT06-PRO.jpg'),
(168, 40, 'PF120-ARGB', NULL, '600', '2200', NULL, '7', '36', '120', 'Black', 188.49, 4, 'SilverstonePF120-ARGB.jpg'),
(169, 40, 'SST-HE01', NULL, '500', '2000', NULL, '18', '41', NULL, NULL, 256.19, 1, 'SilverstoneSST-HE01.jpg'),
(170, 40, 'TundraTD02-SLIM', NULL, '800', '2200', NULL, '17', '27', '240', NULL, 165.48, 1, 'SilverstoneTundraTD02-SLIM.jpg'),
(171, 41, 'CR-CCTF', NULL, '1000', '2000', NULL, '16', '20', NULL, NULL, 258.84, 4, 'SunbeamCR-CCTF.jpg'),
(172, 61, 'AXP-100', NULL, '900', '2500', NULL, '22', '30', NULL, NULL, 247.75, 3, 'ThermalrightAXP-100.jpg'),
(173, 61, 'AXP-100RH', NULL, '900', '2500', NULL, NULL, NULL, NULL, 'Black/Red', 162.24, 2, 'ThermalrightAXP-100RH.jpg'),
(174, 61, 'LeGrandMacho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 267.94, 4, 'ThermalrightLeGrandMacho.jpg'),
(175, 61, 'Macho-120', NULL, '900', '1300', NULL, '17', '21', NULL, NULL, 53, 4, 'ThermalrightMacho-120.jpg'),
(176, 61, 'SilverArrowExtreme', NULL, '600', '2500', NULL, '21', '45', NULL, NULL, 161.13, 4, 'ThermalrightSilverArrowExtreme.jpg'),
(177, 61, 'TRUESpirit120M(BW)Rev.A', NULL, '600', '1300', '25.4', NULL, NULL, NULL, NULL, 96.68, 4, 'ThermalrightTRUESpirit120M(BW)Rev.A.jpg'),
(178, 61, 'TS-140', NULL, '900', '1300', NULL, '17', '21', NULL, NULL, 199.98, 3, 'ThermalrightTS-140.jpg'),
(179, 42, 'CL-P0101', NULL, '600', '3700', NULL, '15', '47', NULL, NULL, 159.88, 4, 'ThermaltakeCL-P0101.jpg'),
(180, 42, 'CL-P0401', NULL, '1300', '2000', NULL, '16', '24', NULL, NULL, 149.46, 3, 'ThermaltakeCL-P0401.jpg'),
(181, 42, 'CLP0534', NULL, '1200', '2400', NULL, '20', '27', NULL, NULL, 217.67, 4, 'ThermaltakeCLP0534.jpg'),
(182, 42, 'CLP0554', NULL, '1000', '1600', NULL, '19', '28', NULL, NULL, 89.98, 3, 'ThermaltakeCLP0554.jpg'),
(183, 42, 'CLP0596', NULL, '800', '2000', NULL, '21', '44', NULL, NULL, 246.86, 4, 'ThermaltakeCLP0596.jpg'),
(184, 42, 'CLP0607', NULL, '1000', '2000', NULL, '20', '40', NULL, NULL, 164.37, 1, 'ThermaltakeCLP0607.jpg'),
(185, 42, 'FrioSilent12', '1400', NULL, NULL, NULL, '12', '19', NULL, NULL, 281.26, 2, 'ThermaltakeFrioSilent12.jpg'),
(186, 42, 'MeOrbII', NULL, '1500', '2500', NULL, '19', '28', NULL, NULL, 113.2, 1, 'ThermaltakeMeOrbII.jpg'),
(187, 42, 'Water3.0240ARGBSync', NULL, '500', '1500', '25.8', NULL, NULL, '240', 'Black', 172.22, 1, 'ThermaltakeWater3.0240ARGBSync.jpg'),
(188, 42, 'Water3.0Performer', NULL, '1000', '2000', '20', NULL, NULL, '120', NULL, 221.49, 4, 'ThermaltakeWater3.0Performer.jpg'),
(189, 62, 'EC-TTC-NC05TZ', NULL, '800', '1500', NULL, '15', '29', NULL, NULL, 290.81, 1, 'TitanEC-TTC-NC05TZ.jpg'),
(190, 62, 'TTC-NK85TZ/CS2', NULL, '800', '2200', NULL, '15', '35', NULL, NULL, 239.59, 1, 'TitanTTC-NK85TZ-CS2.jpg'),
(191, 44, 'AegirSD128264', NULL, '1000', '2200', '20', NULL, NULL, NULL, NULL, 275.53, 1, 'XigmatekAegirSD128264.jpg'),
(192, 44, 'HDT-D1284', NULL, '800', '1500', '27.2', NULL, NULL, NULL, NULL, 108.89, 1, 'XigmatekHDT-D1284.jpg'),
(193, 44, 'HDT-SD964', NULL, '1200', '2800', NULL, '22', '30', NULL, NULL, 167.85, 3, 'XigmatekHDT-SD964.jpg'),
(194, 44, 'ThorsHammer', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 212.58, 2, 'XigmatekThorsHammer.jpg'),
(195, 79, 'ZT-10D', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 259.35, 2, 'ZEROthermZT-10D.jpg'),
(196, 45, '9500A', NULL, '1350', '2600', NULL, '18', '27', NULL, NULL, 109.01, 4, 'Zalman9500A.jpg'),
(197, 45, 'CNPS10XPerforma', NULL, '900', '2000', NULL, '17', '24', NULL, NULL, 217, 2, 'ZalmanCNPS10XPerforma.jpg'),
(198, 45, 'CNPS11XPerforma', NULL, '1000', '1600', NULL, '17', '26', NULL, NULL, 207.99, 2, 'ZalmanCNPS11XPerforma.jpg'),
(199, 45, 'CNPS7000V(AL)-1-PWM', NULL, '800', '2600', NULL, '20', '32', NULL, NULL, 88.94, 1, 'ZalmanCNPS7000V(AL)-1-PWM.jpg'),
(200, 45, 'CNPS9500A-LED', NULL, '1350', '2600', NULL, '18', '28', NULL, NULL, 270.7, 4, 'ZalmanCNPS9500A-LED.jpg'),
(201, 45, 'CNPS9900MAX-B', NULL, '900', '1700', NULL, '18', '30', NULL, NULL, 286.71, 4, 'ZalmanCNPS9900MAX-B.jpg'),
(202, 45, 'FX70', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 71.49, 1, 'ZalmanFX70.jpg'),
(203, 46, 'DarkRock2', '1300', NULL, NULL, NULL, '9', '21', NULL, NULL, 197.25, 2, 'bequiet!DarkRock2.jpg'),
(204, 46, 'DarkRockPro4', '1500', NULL, NULL, NULL, '13', '24', NULL, 'Black', 221.82, 2, 'bequiet!DarkRockPro4.jpg'),
(205, 46, 'ShadowRockSlim', NULL, '400', '1400', NULL, '12', '24', NULL, NULL, 217.35, 2, 'bequiet!ShadowRockSlim.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `graficna`
--

CREATE TABLE `graficna` (
  `id` int(10) UNSIGNED NOT NULL,
  `Proizvajalec_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `core_clock` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boost_clock` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interface` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barva` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cena` float DEFAULT 0,
  `ocena` int(1) UNSIGNED DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `graficna`
--

INSERT INTO `graficna` (`id`, `Proizvajalec_id`, `model`, `chipset`, `vram`, `core_clock`, `boost_clock`, `interface`, `barva`, `cena`, `ocena`, `slika`) VALUES
(1, 64, '100-505821', 'FireProW2100', '2000000000', '630000000', NULL, 'PCIex16', 'Black/Red', 164.05, 3, 'AMD100-505821.jpg'),
(2, 64, '100-505956', 'RadeonProWX8200', '8000000000', '1200000000', '1530000000', 'PCIex16', 'Blue', 290.64, 3, 'AMD100-505956.jpg'),
(3, 64, 'RADEONPROWX7100', 'RadeonProWX7100', '8000000000', '900000000', '1080000000', 'PCIex16', 'Blue', 161.05, 4, 'AMDRADEONPROWX7100.jpg'),
(4, 227, '100-505633', 'FireProW8000', '4000000000', '900000000', NULL, 'PCIex16', 'Black/Red', 133.34, 4, 'ATI100-505633.jpg'),
(5, 227, '100-505817', 'FireProW4100', '2000000000', '630000000', NULL, 'PCIex16', 'Black/Red', 133.52, 4, 'ATI100-505817.jpg'),
(6, 227, '100-505884', 'FireProS9150', '16000000000', '900000000', NULL, 'PCIex16', 'Black/White', 217.59, 4, 'ATI100-505884.jpg'),
(7, 67, '20thAnniversaryGoldEdition', 'GeForceGTX980', '4000000000', '1317000000', '1431000000', 'PCIex16', 'Black/Gold', 137.41, 4, 'Asus20thAnniversaryGoldEdition.jpg'),
(8, 67, 'AREZ', 'RadeonRX550-640', '2000000000', '1071000000', '1206000000', 'PCIex16', 'Black', 234.28, 1, 'AsusAREZ.jpg'),
(9, 67, 'DUALOC', 'GeForceGTX1660Ti', '6000000000', '1500000000', '1830000000', 'PCIex16', 'Black/White', 209.16, 2, 'AsusDUALOC.jpg'),
(10, 67, 'DirectCUII', 'RadeonR9270', '2000000000', '950000000', '975000000', 'PCIex16', 'Black/Red', 292.98, 1, 'AsusDirectCUII.jpg'),
(11, 67, 'Dual', 'RadeonRX580', '4000000000', '1257000000', '1360000000', 'PCIex16', 'Black/White', 287.43, 1, 'AsusDual.jpg'),
(12, 67, 'EAH5450SILENT/DI/512MD3(LP)', 'RadeonHD5450', '500000000', '650000000', NULL, 'PCIex16', 'Red/Silver', 258.23, 4, 'AsusEAH5450SILENT-DI-512MD3(LP).jpg'),
(13, 67, 'ENGT740-OC-2GD5', 'GeForceGT740', '2000000000', '1033000000', NULL, 'PCIex16', 'Black', 128.84, 2, 'AsusENGT740-OC-2GD5.jpg'),
(14, 67, 'ENGTX550Ti/DI/1GD5', 'GeForceGTX550Ti', '1000000000', '900000000', NULL, 'PCIex16', 'Black/Red', 69.49, 1, 'AsusENGTX550Ti-DI-1GD5.jpg'),
(15, 67, 'ENGTX590/3DIS/3GD5', 'GeForceGTX590', '3000000000', '612000000', NULL, 'PCIex16', NULL, 160.92, 2, 'AsusENGTX590-3DIS-3GD5.jpg'),
(16, 67, 'Expedition', 'RadeonRX570', '8000000000', '1168000000', '1266000000', 'PCIex16', 'Black/Red', 296.13, 4, 'AsusExpedition.jpg'),
(17, 67, 'GT720-SL-2GD3-BRK', 'GeForceGT720', '2000000000', '797000000', NULL, 'PCIex8', 'Black/Blue', 197.92, 3, 'AsusGT720-SL-2GD3-BRK.jpg'),
(18, 67, 'GTX650-DCT-1GD5', 'GeForceGTX650', '1000000000', '1215000000', NULL, 'PCIex16', 'Black/Red', 51.22, 3, 'AsusGTX650-DCT-1GD5.jpg'),
(19, 67, 'GTX660TI-DC2T-2GD5', 'GeForceGTX660Ti', '2000000000', '1059000000', NULL, 'PCIex16', 'Black/Red', 112.29, 2, 'AsusGTX660TI-DC2T-2GD5.jpg'),
(20, 67, 'GTX680-DC2O-2GD5', 'GeForceGTX680', '2000000000', '1019000000', NULL, 'PCIex16', 'Black/Red', 107.81, 1, 'AsusGTX680-DC2O-2GD5.jpg'),
(21, 67, 'GTX760-DC2OC-4GD5', 'GeForceGTX760', '4000000000', '1006000000', '1072000000', 'PCIex16', 'Black/Red', 152.19, 2, 'AsusGTX760-DC2OC-4GD5.jpg'),
(22, 67, 'GTXTITANX-12GD5', 'GeForceGTXTitanX', '12000000000', '1075000000', '1000000000', 'PCIex16', 'Black/Silver', 137.51, 2, 'AsusGTXTITANX-12GD5.jpg'),
(23, 67, 'HD7850-DC2-2GD5', 'RadeonHD7850', '2000000000', '870000000', NULL, 'PCIex16', 'Black/Red', 180.99, 3, 'AsusHD7850-DC2-2GD5.jpg'),
(24, 67, 'HD7850-DC2T-2GD5-V2', 'RadeonHD7850', '2000000000', '1000000000', NULL, 'PCIex16', 'Black/Red', 192.43, 2, 'AsusHD7850-DC2T-2GD5-V2.jpg'),
(25, 67, 'HD7950-DC2T-3GD5', 'RadeonHD7950', '3000000000', '900000000', NULL, 'PCIex16', 'Black/Red', 119.19, 1, 'AsusHD7950-DC2T-3GD5.jpg'),
(26, 67, 'R9290-4GD5', 'RadeonR9290', '4000000000', '947000000', NULL, 'PCIex16', 'Black/Red', 218.63, 2, 'AsusR9290-4GD5.jpg'),
(27, 67, 'ROGSTRIX', 'GeForceGTX1070Ti', '8000000000', '1607000000', '1721000000', 'PCIex16', 'Black', 185.58, 3, 'AsusROGSTRIX.jpg'),
(28, 67, 'ROGStrixGaming', 'GeForceRTX2080', '8000000000', '1515000000', NULL, 'PCIex16', 'Black', 222.03, 4, 'AsusROGStrixGaming.jpg'),
(29, 67, 'ROGStrixGamingAdvanced', 'GeForceRTX2080', '8000000000', '1515000000', NULL, 'PCIex16', 'Black', 253.42, 1, 'AsusROGStrixGamingAdvanced.jpg'),
(30, 67, 'STRIX', 'GeForceGTX750Ti', '2000000000', '1124000000', '1202000000', 'PCIex16', 'Black/Red', 51, 2, 'AsusSTRIX.jpg'),
(31, 67, 'STRIXGAMING', 'GeForceRTX2070', '8000000000', '1410000000', '1650000000', 'PCIex16', 'Black', 194.7, 3, 'AsusSTRIXGAMING.jpg'),
(32, 67, 'STRIXGAMING', 'GeForceGTX1650', '4000000000', '1485000000', '1695000000', 'PCIex16', 'Black', 270.54, 2, 'AsusSTRIXGAMING.jpg'),
(33, 67, 'STRIX-GTX750TI-DC2OC-4GD5', 'GeForceGTX750Ti', '4000000000', '1124000000', '1202000000', 'PCIex16', 'Black/Red', 218.62, 2, 'AsusSTRIX-GTX750TI-DC2OC-4GD5.jpg'),
(34, 67, 'STRIX-GTX970-DC2-4GD5', 'GeForceGTX970', '4000000000', '1051000000', '1178000000', 'PCIex16', 'Black/Red', 231.48, 4, 'AsusSTRIX-GTX970-DC2-4GD5.jpg'),
(35, 67, 'TUFOC', 'GeForceRTX2060', '6000000000', '1365000000', '1740000000', 'PCIex16', 'Black/Gray', 201.52, 2, 'AsusTUFOC.jpg'),
(36, 67, 'X9290-DC2T-4GD5', 'RadeonR9290X', '4000000000', '772000000', '1000000000', 'PCIex16', 'Black/Red', 263.14, 4, 'AsusX9290-DC2T-4GD5.jpg'),
(37, 228, 'royalKing', 'RadeonR9280', '3000000000', '827000000', '960000000', 'PCIex16', 'Black/Red', 161.19, 1, 'Club3DroyalKing.jpg'),
(38, 229, '5850PE51G', 'RadeonHD5850', '1000000000', '725000000', NULL, 'PCIex16', NULL, 216.51, 4, 'Diamond5850PE51G.jpg'),
(39, 229, '6870PE51G', 'RadeonHD6870', '1000000000', '900000000', NULL, 'PCIex16', NULL, 298.99, 1, 'Diamond6870PE51G.jpg'),
(40, 229, '7750PE51GV', 'RadeonHD7750', '1000000000', '800000000', NULL, 'PCIex16', 'Black/Red', 295.42, 2, 'Diamond7750PE51GV.jpg'),
(41, 229, '7970PE53G', 'RadeonHD7970', '3000000000', '925000000', NULL, 'PCIex16', 'Black/Red', 280.14, 2, 'Diamond7970PE53G.jpg'),
(42, 229, 'R9270XD52GXOC', 'RadeonR9270X', '2000000000', '1030000000', '1080000000', 'PCIex16', 'Black/Red', 214.46, 4, 'DiamondR9270XD52GXOC.jpg'),
(43, 229, 'R9280XD53G', 'RadeonR9280X', '3000000000', '850000000', NULL, 'PCIex16', 'Black/Red', 181.87, 4, 'DiamondR9280XD53G.jpg'),
(44, 192, 'GT620C-2GR3-QFT', 'GeForceGT620', '2000000000', '700000000', NULL, 'PCIex16', 'Black/Blue', 215.94, 4, 'ECSGT620C-2GR3-QFT.jpg'),
(45, 192, 'NBGTX560-1GPI-F', 'GeForceGTX560', '1000000000', '870000000', NULL, 'PCIex16', 'Black/Green', 234.12, 2, 'ECSNBGTX560-1GPI-F.jpg'),
(46, 192, 'NGT440-1GQR-F2', 'GeForceGT440', '1000000000', '810000000', NULL, 'PCIex16', 'Black/Blue', 222.76, 2, 'ECSNGT440-1GQR-F2.jpg'),
(47, 192, 'NGT520C-2GQK-F', 'GeForceGT520', '2000000000', '810000000', NULL, 'PCIex16', NULL, 111.45, 4, 'ECSNGT520C-2GQK-F.jpg'),
(48, 192, 'NS8400GS2C-512SS-H', 'GeForce8400GS', '500000000', '567000000', NULL, 'PCIex16', NULL, 88.95, 4, 'ECSNS8400GS2C-512SS-H.jpg'),
(49, 18, '012-P3-1576-KR', 'GeForceGTX570', '1250000000', '797000000', NULL, 'PCIex16', NULL, 60.4, 4, 'EVGA012-P3-1576-KR.jpg'),
(50, 18, '01G-P3-1335-KR', 'GeForceGT430', '1000000000', '700000000', NULL, 'PCIex16', 'Black/Green', 235.12, 4, 'EVGA01G-P3-1335-KR.jpg'),
(51, 18, '01G-P3-1430-LR', 'GeForceGT430', '1000000000', '700000000', NULL, 'PCIex16', 'Black/Green', 194.45, 1, 'EVGA01G-P3-1430-LR.jpg'),
(52, 18, '01G-P3-1567-AR', 'GeForceGTX560Ti', '1000000000', '900000000', NULL, 'PCIex16', 'Black/Green', 216.86, 2, 'EVGA01G-P3-1567-AR.jpg'),
(53, 18, '01G-P3-2716-KR', 'GeForceGT710', '1000000000', '954000000', NULL, 'PCIex8', 'Black', 200.98, 3, 'EVGA01G-P3-2716-KR.jpg'),
(54, 18, '01G-P4-3652-KR', 'GeForceGTX650Ti', '1000000000', '1071000000', NULL, 'PCIex16', 'Black', 54.32, 3, 'EVGA01G-P4-3652-KR.jpg'),
(55, 18, '02G-P3-1386-KR', 'GeForceGTX460', '2000000000', '700000000', NULL, 'PCIex16', 'Black/Silver', 118.65, 2, 'EVGA02G-P3-1386-KR.jpg'),
(56, 18, '02G-P4-2662-KR', 'GeForceGTX660', '2000000000', '1046000000', NULL, 'PCIex16', 'Black/Silver', 130.29, 4, 'EVGA02G-P4-2662-KR.jpg'),
(57, 18, '02G-P4-2681-KR', 'GeForceGTX680', '2000000000', '1006000000', NULL, 'PCIex16', 'Black/Silver', 245.47, 3, 'EVGA02G-P4-2681-KR.jpg'),
(58, 18, '02G-P4-2684-KR', 'GeForceGTX680', '2000000000', '1058000000', NULL, 'PCIex16', 'Black', 286.51, 1, 'EVGA02G-P4-2684-KR.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `motherboard`
--

CREATE TABLE `motherboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `Proizvajalec_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_factor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ram_slots` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barva` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cena` float DEFAULT 0,
  `ocena` int(1) UNSIGNED DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `motherboard`
--

INSERT INTO `motherboard` (`id`, `Proizvajalec_id`, `model`, `socket`, `form_factor`, `ram_slots`, `max_ram`, `barva`, `cena`, `ocena`, `slika`) VALUES
(1, 190, '870Extreme3R2.0', 'AM3+', 'ATX', '4', '32000000000', 'Black/Blue', 261.17, 2, 'ASRock870Extreme3R2.0.jpg'),
(2, 190, 'A320M-DGS', 'AM4', 'MicroATX', '2', '32000000000', 'Black/Silver', 184.34, 3, 'ASRockA320M-DGS.jpg'),
(3, 190, 'A320M-ITX', 'AM4', 'MiniITX', '2', '32000000000', 'Black/Silver', 88.17, 4, 'ASRockA320M-ITX.jpg'),
(5, 190, 'B150M-HDV', 'LGA1151', 'MicroATX', '2', '32000000000', 'Black/Orange', 124.71, 2, 'ASRockB150M-HDV.jpg'),
(6, 190, 'B85MPro4/ASM', 'LGA1150', 'MicroATX', '4', '32000000000', NULL, 60.01, 2, 'ASRockB85MPro4-ASM.jpg'),
(7, 190, 'E3C224-4L', 'LGA1150', 'ATX', '4', '32000000000', 'Green/Blue', 125.92, 4, 'ASRockE3C224-4L.jpg'),
(8, 190, 'E3V5WS', 'LGA1151', 'ATX', '4', '64000000000', 'Black/White', 149.55, 2, 'ASRockE3V5WS.jpg'),
(9, 190, 'FM2A55M-VG3+', 'FM2+', 'MicroATX', '2', '32000000000', 'Brown/Black', 70.02, 2, 'ASRockFM2A55M-VG3+.jpg'),
(10, 190, 'FM2A75Pro4', 'FM2', 'ATX', '4', '32000000000', 'Black', 101.44, 3, 'ASRockFM2A75Pro4.jpg'),
(11, 190, 'FM2A78M-ITX+', 'FM2+', 'MiniITX', '2', '32000000000', 'Brown/Black', 247.11, 4, 'ASRockFM2A78M-ITX+.jpg'),
(12, 190, 'Fatal1ty970Performance', 'AM3+/AM3', 'ATX', '4', '64000000000', 'Black/Red', 131.28, 3, 'ASRockFatal1ty970Performance.jpg'),
(13, 190, 'Fatal1tyP67Professional(B3)', 'LGA1155', 'ATX', '4', '32000000000', NULL, 115.06, 4, 'ASRockFatal1tyP67Professional(B3).jpg'),
(14, 190, 'Fatal1tyZ170ProfessionalGamingi7', 'LGA1151', 'ATX', '4', '64000000000', 'Black/Red', 131.47, 1, 'ASRockFatal1tyZ170ProfessionalGamingi7.jpg'),
(16, 190, 'H110M-HDV', 'LGA1151', 'MicroATX', '2', '32000000000', 'Black/Orange', 116.27, 3, 'ASRockH110M-HDV.jpg'),
(17, 190, 'H270M-ITX/ac', 'LGA1151', 'MiniITX', '2', '32000000000', 'Black/Silver', 244.95, 4, 'ASRockH270M-ITX-ac.jpg'),
(18, 190, 'H67M(B3)', 'LGA1155', 'MicroATX', '2', '16000000000', 'Black/Blue', 75.96, 4, 'ASRockH67M(B3).jpg'),
(19, 190, 'H87Pro4', 'LGA1150', 'ATX', '4', '32000000000', 'Brown/Black', 94.94, 4, 'ASRockH87Pro4.jpg'),
(20, 190, 'K10N78M-PRO', 'AM3/AM2+/AM2', 'MicroATX', '2', '8000000000', 'Multicolor', 196.82, 4, 'ASRockK10N78M-PRO.jpg'),
(21, 190, 'P67Extreme6(B3)', 'LGA1155', 'ATX', '4', '32000000000', NULL, 149.29, 4, 'ASRockP67Extreme6(B3).jpg'),
(22, 190, 'P67Pro', 'LGA1155', 'ATX', '4', '32000000000', NULL, 105.98, 4, 'ASRockP67Pro.jpg'),
(23, 190, 'Q170MvPro', 'LGA1151', 'MicroATX', '4', '64000000000', 'Black/Orange', 282.01, 3, 'ASRockQ170MvPro.jpg'),
(24, 190, 'X299Taichi', 'LGA2066', 'ATX', '8', '128000000000', 'Black/Silver', 292.14, 2, 'ASRockX299Taichi.jpg'),
(25, 190, 'X299E-ITX/ac', 'LGA2066', 'MiniITX', '4', '64000000000', 'Black', 64.69, 4, 'ASRockX299E-ITX-ac.jpg'),
(26, 190, 'X570SteelLegend', 'AM4', 'ATX', '4', '128000000000', 'Black/Silver', 147.01, 2, 'ASRockX570SteelLegend.jpg'),
(27, 190, 'X99Professional', 'LGA2011-3', 'EATX', '8', '128000000000', 'Black/Red', 240.98, 1, 'ASRockX99Professional.jpg'),
(28, 190, 'Z170MExtreme4', 'LGA1151', 'MicroATX', '4', '64000000000', 'Black/Orange', 213.87, 4, 'ASRockZ170MExtreme4.jpg'),
(29, 190, 'Z270Extreme4', 'LGA1151', 'ATX', '4', '64000000000', 'Black/White', 296.43, 2, 'ASRockZ270Extreme4.jpg'),
(30, 190, 'Z390STEELLEGEND', 'LGA1151', 'ATX', '4', '128000000000', 'Silver/Black', 290.53, 4, 'ASRockZ390STEELLEGEND.jpg'),
(31, 190, 'Z77Extreme6/TB4', 'LGA1155', 'ATX', '4', '32000000000', 'Black/Gold', 263.38, 2, 'ASRockZ77Extreme6-TB4.jpg'),
(32, 190, 'Z77Performance', 'LGA1155', 'ATX', '4', '32000000000', 'Black/Red', 145.31, 3, 'ASRockZ77Performance.jpg'),
(33, 190, 'Z87OCFormula', 'LGA1150', 'EATX', '4', '32000000000', 'Black/Yellow', 136.38, 1, 'ASRockZ87OCFormula.jpg'),
(34, 190, 'Z97Extreme3', 'LGA1150', 'ATX', '4', '32000000000', 'Black/Blue', 195.99, 4, 'ASRockZ97Extreme3.jpg'),
(35, 67, 'A55M-A/USB3', 'FM2', 'MicroATX', '2', '32000000000', 'Black/Blue', 270.81, 4, 'AsusA55M-A-USB3.jpg'),
(36, 67, 'B150-PLUS', 'LGA1151', 'ATX', '4', '64000000000', 'Black/Gold', 216.07, 2, 'AsusB150-PLUS.jpg'),
(37, 67, 'B85M-E/CSM', 'LGA1150', 'MicroATX', '4', '32000000000', 'Black/Gold', 217.94, 2, 'AsusB85M-E-CSM.jpg'),
(38, 67, 'E3-PROV5', 'LGA1151', 'ATX', '4', '64000000000', 'Black/White', 141.48, 3, 'AsusE3-PROV5.jpg'),
(39, 67, 'E35M1-IDELUXE', 'IntegratedE-SeriesE-350', 'MiniITX', '2', '8000000000', 'Black/Blue', 253.59, 1, 'AsusE35M1-IDELUXE.jpg'),
(40, 67, 'F1A55-MLX3', 'FM1', 'MicroATX', '2', '32000000000', 'Black/Blue', 293.49, 3, 'AsusF1A55-MLX3.jpg'),
(41, 67, 'F2A85-V', 'FM2', 'ATX', '4', '64000000000', 'Black/Blue', 156.71, 2, 'AsusF2A85-V.jpg'),
(42, 67, 'H110M-E/M.2', 'LGA1151', 'MicroATX', '2', '32000000000', 'Black/Gold', 103.07, 2, 'AsusH110M-E-M.2.jpg'),
(43, 67, 'H110M-PLUS', 'LGA1151', 'MicroATX', '2', '32000000000', 'Black/Gold', 245.22, 2, 'AsusH110M-PLUS.jpg'),
(44, 67, 'H87I-PLUS', 'LGA1150', 'MiniITX', '2', '16000000000', 'Black/Gold', 116.89, 3, 'AsusH87I-PLUS.jpg'),
(45, 67, 'M4A78L-M', 'AM3/AM2+/AM2', 'MicroATX', '2', '8000000000', NULL, 298.77, 3, 'AsusM4A78L-M.jpg'),
(46, 67, 'M5A78L-M/USB3', 'AM3+', 'MicroATX', '4', '32000000000', 'Black/Blue', 93.22, 3, 'AsusM5A78L-M-USB3.jpg'),
(47, 67, 'MAXIMUSVIIIIMPACT', 'LGA1151', 'MiniITX', '2', '32000000000', 'Black/Red', 269.74, 4, 'AsusMAXIMUSVIIIIMPACT.jpg'),
(48, 67, 'MaximusVIFormula', 'LGA1150', 'ATX', '4', '32000000000', 'Black/Red', 269.06, 3, 'AsusMaximusVIFormula.jpg'),
(49, 67, 'P5G41C-MLX', 'LGA775', 'MicroATX', '2', '8000000000', NULL, 236.11, 4, 'AsusP5G41C-MLX.jpg'),
(50, 67, 'P5P41TLE', 'LGA775', 'ATX', '2', '8000000000', 'Black/Blue', 73.38, 4, 'AsusP5P41TLE.jpg'),
(51, 67, 'P6TWSPRO', 'LGA1366', 'ATX', '6', '24000000000', 'Black/Blue', 108.54, 1, 'AsusP6TWSPRO.jpg'),
(52, 67, 'P8B75-MLXPLUS', 'LGA1155', 'MicroATX', '2', '16000000000', 'Black/Blue', 272.57, 3, 'AsusP8B75-MLXPLUS.jpg'),
(53, 67, 'P8H61-MLX(REV3.0)', 'LGA1155', 'MicroATX', '2', '16000000000', NULL, 237.24, 2, 'AsusP8H61-MLX(REV3.0).jpg'),
(54, 67, 'P8H67-MPRO/CSM', 'LGA1155', 'MicroATX', '4', '32000000000', 'Black/Blue', 68.5, 3, 'AsusP8H67-MPRO-CSM.jpg'),
(55, 67, 'P8P67(REV3.1)', 'LGA1155', 'ATX', '4', '32000000000', NULL, 80.76, 1, 'AsusP8P67(REV3.1).jpg'),
(56, 67, 'P8P67WSRevolution', 'LGA1155', 'ATX', '4', '32000000000', NULL, 148.29, 1, 'AsusP8P67WSRevolution.jpg'),
(57, 67, 'P8Z77-VDELUXE', 'LGA1155', 'ATX', '4', '32000000000', 'Black/Blue', 199.19, 4, 'AsusP8Z77-VDELUXE.jpg'),
(58, 67, 'P9X79WS', 'LGA2011', 'SSICEB', '8', '64000000000', 'Black/Blue', 251.07, 1, 'AsusP9X79WS.jpg'),
(59, 67, 'PRIMEB360M-A', 'LGA1151', 'MicroATX', '4', '64000000000', 'Silver/Black', 107.8, 3, 'AsusPRIMEB360M-A.jpg'),
(60, 67, 'PRIMEB365M-K', 'LGA1151', 'MicroATX', '2', '32000000000', 'Black/Silver', 235.78, 4, 'AsusPRIMEB365M-K.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `power_supply`
--

CREATE TABLE `power_supply` (
  `id` int(10) UNSIGNED NOT NULL,
  `Proizvajalec_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_factor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `efficiency_rating` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wattage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barva` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cena` float DEFAULT 0,
  `ocena` int(1) UNSIGNED DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `power_supply`
--

INSERT INTO `power_supply` (`id`, `Proizvajalec_id`, `model`, `form_factor`, `efficiency_rating`, `wattage`, `modular`, `barva`, `cena`, `ocena`, `slika`) VALUES
(1, 3, 'EDGE', 'ATX', '80+Gold', '750', 'Full', NULL, 159.21, 4, 'AntecEDGE.JPG'),
(2, 3, 'EarthwattsGoldPro', 'ATX', '80+Gold', '650', 'Semi', 'Black', 266.57, 4, 'AntecEarthwattsGoldPro.jpg'),
(3, 3, 'HCP-750Platinum', 'ATX', '80+Platinum', '750', 'Full', NULL, 55.27, 2, 'AntecHCP-750Platinum.jpg'),
(4, 3, 'TruePowerClassic', 'ATX', '80+Gold', '750', 'No', NULL, 176.59, 1, 'AntecTruePowerClassic.jpg'),
(5, 3, 'TruePowerNew', 'ATX', '80+Bronze', '750', 'Semi', NULL, 167.15, 1, 'AntecTruePowerNew.jpg'),
(6, 3, 'VPPLUS', 'ATX', '80+', '500', 'No', NULL, 255.97, 4, 'AntecVPPLUS.jpg'),
(7, 4, 'ATX-AS680W-BL', 'ATX', NULL, '680', 'No', NULL, 228.4, 4, 'ApeviaATX-AS680W-BL.jpg'),
(8, 4, 'Astro', 'ATX', NULL, '500', 'No', 'Black', 74.13, 3, 'ApeviaAstro.jpg'),
(9, 6, 'AP-P4ATX80FEP8', 'ATX', '80+Bronze', '800', 'No', NULL, 135.4, 2, 'AthenaPowerAP-P4ATX80FEP8.jpg'),
(10, 216, 'CUL-650B', 'ATX', NULL, '650', 'Semi', NULL, 154.61, 3, 'CoolMaxCUL-650B.jpg'),
(11, 216, 'V-400', 'ATX', NULL, '400', 'No', NULL, 66.86, 1, 'CoolMaxV-400.jpg'),
(12, 216, 'ZU-700B', 'ATX', '80+Bronze', '700', 'Semi', NULL, 70.48, 3, 'CoolMaxZU-700B.jpg'),
(13, 11, 'MWEBronze', 'ATX', '80+Bronze', '550', 'No', 'Black', 101.79, 3, 'CoolerMasterMWEBronze.jpg'),
(14, 11, 'MasterWattTUFGamingAlliance', 'ATX', '80+Bronze', '650', 'Semi', 'Black/Gray', 247.5, 1, 'CoolerMasterMasterWattTUFGamingAlliance.jpg'),
(15, 11, 'RSC00-AFBAG1-US', 'ATX', '80+Platinum', '1200', 'Full', NULL, 132.15, 2, 'CoolerMasterRSC00-AFBAG1-US.jpg'),
(16, 11, 'SilentProM', 'ATX', '80+', '600', 'Full', NULL, 118.23, 3, 'CoolerMasterSilentProM.jpg'),
(17, 11, 'SilentProPlatinum', 'ATX', '80+Platinum', '1000', 'Semi', NULL, 144.73, 2, 'CoolerMasterSilentProPlatinum.jpg'),
(18, 13, 'AX', 'ATX', '80+Titanium', '1000', 'Full', 'Black/Silver', 68.93, 1, 'CorsairAX.jpg'),
(19, 13, 'CMPSU-750CXV3', 'ATX', '80+Bronze', '750', 'No', NULL, 110.45, 1, 'CorsairCMPSU-750CXV3.jpg'),
(20, 13, 'CX(2017)', 'ATX', '80+Bronze', '550', 'No', NULL, 295.45, 1, 'CorsairCX(2017).jpg'),
(21, 13, 'Enthusiast', 'ATX', '80+Bronze', '750', 'No', NULL, 95.94, 4, 'CorsairEnthusiast.jpg'),
(22, 13, 'GSSeries', 'ATX', '80+Bronze', '800', 'No', NULL, 293.3, 3, 'CorsairGSSeries.jpg'),
(23, 13, 'Professional', 'ATX', '80+', '1000', 'Semi', NULL, 128.71, 4, 'CorsairProfessional.jpg'),
(24, 13, 'RMx', 'ATX', '80+Gold', '750', 'Full', NULL, 213.65, 4, 'CorsairRMx.jpg'),
(26, 14, 'COUGAR-GX700', 'ATX', '80+Gold', '700', 'Full', NULL, 219.67, 2, 'CougarCOUGAR-GX700.jpg'),
(27, 14, 'GX-S', 'ATX', '80+Gold', '750', 'No', NULL, 151.98, 1, 'CougarGX-S.jpg'),
(28, 217, 'PHD450', 'ATX', NULL, '450', 'No', NULL, 50.88, 1, 'DiablotekPHD450.jpg'),
(29, 18, '100-N1-0750-L1', 'ATX', NULL, '750', 'No', NULL, 248.45, 4, 'EVGA100-N1-0750-L1.jpg'),
(30, 18, 'BT', 'ATX', '80+Bronze', '450', 'No', NULL, 289.62, 4, 'EVGABT.jpg'),
(31, 18, 'GD', 'ATX', '80+Gold', '650', 'No', 'Black', 152.77, 4, 'EVGAGD.JPG'),
(32, 18, 'SuperNOVAG3', 'ATX', '80+Gold', '650', 'Full', NULL, 94.99, 4, 'EVGASuperNOVAG3.jpg'),
(33, 19, 'ENM750AWT', 'ATX', '80+Bronze', '750', 'Semi', NULL, 216.62, 3, 'EnermaxENM750AWT.jpg'),
(34, 19, 'ERV1020EWT', 'ATX', '80+Silver', '1020', 'Full', NULL, 248.16, 1, 'EnermaxERV1020EWT.jpg'),
(35, 19, 'RevoBron', 'ATX', '80+Bronze', '600', 'Semi', NULL, 290.91, 4, 'EnermaxRevoBron.jpg'),
(36, 20, 'AURUMGOLD400', 'ATX', '80+Gold', '400', 'No', NULL, 160.11, 3, 'FSPGroupAURUMGOLD400.jpg'),
(37, 20, 'Dagger', 'SFX', '80+Gold', '600', 'Full', 'Black', 127.82, 3, 'FSPGroupDagger.jpg'),
(38, 20, 'Everest85PLUS800', 'ATX', '80+Bronze', '800', 'Full', NULL, 108.74, 2, 'FSPGroupEverest85PLUS800.jpg'),
(39, 20, 'HydroGPro', 'ATX', '80+Gold', '1000', 'Full', 'Black', 110.26, 2, 'FSPGroupHydroGPro.jpg'),
(40, 20, 'RaiderS650', 'ATX', '80+Silver', '650', 'No', NULL, 175.05, 1, 'FSPGroupRaiderS650.jpg'),
(41, 22, 'TeslaR2', 'ATX', '80+Gold', '1000', 'No', NULL, 244.47, 1, 'FractalDesignTeslaR2.jpg'),
(42, 23, 'GM', 'ATX', '80+Gold', '2000', 'No', 'Black', 147.22, 1, 'GameMaxGM.jpg'),
(43, 23, 'GS', 'SFX', '80+Bronze', '300', 'No', 'Silver', 202.69, 4, 'GameMaxGS.jpg'),
(44, 25, 'HEC200SA-2FX', 'MiniITX', NULL, '200', 'No', NULL, 271.79, 3, 'HECHEC200SA-2FX.jpg'),
(45, 26, 'Classic', 'ATX', '80+Platinum', '900', 'Full', NULL, 200.88, 3, 'InWinClassic.jpg'),
(46, 54, 'ABT-610MM', 'ATX', NULL, '610', 'No', NULL, 139.05, 2, 'KingwinABT-610MM.jpg'),
(48, 27, 'B550-SA', 'ATX', '80+Bronze', '550', 'No', NULL, 245.84, 2, 'LEPAB550-SA.jpg'),
(49, 27, 'MaxGold', 'ATX', '80+Gold', '600', 'No', NULL, 51.42, 2, 'LEPAMaxGold.jpg'),
(50, 141, 'HummerGD', 'ATX', '80+Gold', '750', 'No', NULL, 219.53, 2, 'NOXHummerGD.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `proizvajalec`
--

CREATE TABLE `proizvajalec` (
  `id` int(10) UNSIGNED NOT NULL,
  `naziv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `proizvajalec`
--

INSERT INTO `proizvajalec` (`id`, `naziv`) VALUES
(1, 'Aerocool'),
(2, 'Anidees'),
(3, 'Antec'),
(4, 'Apevia'),
(5, 'Apex'),
(6, 'AthenaPower'),
(7, 'Athenatech'),
(8, 'Azza'),
(9, 'BitFenix'),
(10, 'CFI'),
(11, 'CoolerMaster'),
(12, 'Cooltek'),
(13, 'Corsair'),
(14, 'Cougar'),
(15, 'DANCases'),
(16, 'DIYPC'),
(17, 'Deepcool'),
(18, 'EVGA'),
(19, 'Enermax'),
(20, 'FSPGroup'),
(21, 'Foxconn'),
(22, 'FractalDesign'),
(23, 'GameMax'),
(24, 'Gigabyte'),
(25, 'HEC'),
(26, 'InWin'),
(27, 'LEPA'),
(28, 'LianLi'),
(29, 'Linkworld'),
(30, 'Logisys'),
(31, 'MetallicGear'),
(32, 'NZXT'),
(33, 'Phanteks'),
(34, 'RAIJINTEK'),
(35, 'Raidmax'),
(36, 'Rosewill'),
(37, 'SAMA'),
(38, 'SHARKOON'),
(39, 'Sentey'),
(40, 'Silverstone'),
(41, 'Sunbeam'),
(42, 'Thermaltake'),
(43, 'XClio'),
(44, 'Xigmatek'),
(45, 'Zalman'),
(46, 'bequiet!'),
(47, 'ARCTIC'),
(48, 'Akasa'),
(49, 'Alpenfuhn'),
(50, 'Coolink'),
(51, 'DeltaElectronics'),
(52, 'Evercool'),
(53, 'GelidSolutions'),
(54, 'Kingwin'),
(55, 'MSI'),
(56, 'Masscool'),
(57, 'Nanoxia'),
(58, 'Noctua'),
(59, 'NoiseBlocker'),
(60, 'SilenX'),
(61, 'Thermalright'),
(62, 'Titan'),
(63, 'Xion'),
(64, 'AMD'),
(65, 'Intel'),
(66, 'Alphacool'),
(67, 'Asus'),
(68, 'CRYORIG'),
(69, 'Dynatron'),
(70, 'Enzotech'),
(71, 'GAMDIAS'),
(72, 'ID-COOLING'),
(73, 'Jonsbo'),
(74, 'Prolimatech'),
(75, 'RIOTORO'),
(76, 'Reeven'),
(77, 'Scythe'),
(78, 'SilentiumPC'),
(79, 'ZEROtherm'),
(80, 'ADATA'),
(81, 'Apotop'),
(82, 'Avexir'),
(83, 'Axiom'),
(84, 'Crucial'),
(85, 'EdgeTech'),
(86, 'Eluktro'),
(87, 'G.Skill'),
(88, 'HP'),
(89, 'Hitachi'),
(90, 'HyundaiTechnology'),
(91, 'IBM'),
(92, 'Inland'),
(93, 'Kingston'),
(94, 'LaCie'),
(95, 'Lenovo'),
(96, 'Micron'),
(97, 'Mushkin'),
(98, 'MyDigitalSSD'),
(99, 'OCZ'),
(100, 'PLDS'),
(101, 'PNY'),
(102, 'Patriot'),
(103, 'Plextor'),
(104, 'SKhynix'),
(105, 'Sabrent'),
(106, 'Samsung'),
(107, 'SanDisk'),
(108, 'Seagate'),
(109, 'SiliconPower'),
(110, 'Team'),
(111, 'Toshiba'),
(112, 'Transcend'),
(113, 'Verbatim'),
(114, 'VisionTek'),
(115, 'WesternDigital'),
(116, 'A4Tech'),
(117, 'AZIO'),
(118, 'Adesso'),
(119, 'Aorus'),
(120, 'BlueFinger'),
(121, 'Buslink'),
(122, 'Cherry'),
(123, 'DasKeyboard'),
(124, 'Deck'),
(125, 'Ducky'),
(126, 'Ergoguys'),
(127, 'FNATIC'),
(128, 'Filco'),
(129, 'GearHead'),
(130, 'Genius'),
(131, 'I/OMagic'),
(132, 'Interlink'),
(133, 'Kensington'),
(134, 'KeyTronic'),
(135, 'Keycool'),
(136, 'Lite-On'),
(137, 'Logitech'),
(138, 'MadCatz'),
(139, 'MaxKeyboard'),
(140, 'Microsoft'),
(141, 'NOX'),
(142, 'Penclic'),
(143, 'Qisan'),
(144, 'ROCCAT'),
(145, 'Razer'),
(146, 'Redragon'),
(147, 'SIIG'),
(148, 'SMK-Link'),
(149, 'Saitek'),
(150, 'SolidTek'),
(151, 'SteelSeries'),
(152, 'Syba'),
(153, 'Tesoro'),
(154, 'Topre'),
(155, 'Trust'),
(156, 'V7'),
(157, 'Varmilo'),
(158, 'Vortex'),
(159, 'Wintec'),
(160, 'i-rocks'),
(161, 'iKBC'),
(162, 'matias'),
(163, 'GeIL'),
(164, 'Klevv'),
(165, 'OLOy'),
(166, 'Panram'),
(167, 'AOC'),
(168, 'Acer'),
(169, 'Apple'),
(170, 'BenQ'),
(171, 'CTL'),
(172, 'Crossover'),
(173, 'Dell'),
(174, 'Eizo'),
(175, 'Gateway'),
(176, 'Hannspree'),
(177, 'Iiyama'),
(178, 'LG'),
(179, 'Mbest'),
(180, 'NEC'),
(181, 'Philips'),
(182, 'Planar'),
(183, 'Sceptre'),
(184, 'Seiki'),
(185, 'VIOTEK'),
(186, 'ViewEra'),
(187, 'ViewSonic'),
(188, 'WasabiMango'),
(189, 'Yamakasi'),
(190, 'ASRock'),
(191, 'Biostar'),
(192, 'ECS'),
(193, 'Jetway'),
(194, 'Supermicro'),
(195, 'Zotac'),
(196, 'Anker'),
(197, 'Belkin'),
(198, 'Cobra'),
(199, 'Cyborg'),
(200, 'Evoluent'),
(201, 'Func'),
(202, 'GE'),
(203, 'IOGEAR'),
(204, 'KeyOvation'),
(205, 'Kodak'),
(206, 'Mionix'),
(207, 'Monoprice'),
(208, 'OzoneGaming'),
(209, 'Perixx'),
(210, 'SHARKK'),
(211, 'Sony'),
(212, 'Targus'),
(213, 'TurtleBeach'),
(214, 'UtechSmart'),
(215, 'Zowie'),
(216, 'CoolMax'),
(217, 'Diablotek'),
(218, 'PCPower&Cooling'),
(219, 'Rocketfish'),
(220, 'SeaSonic'),
(221, 'Sparkle'),
(222, 'StarTech'),
(223, 'SuperFlower'),
(224, 'Topower'),
(225, 'Ultra'),
(226, 'XFX'),
(227, 'ATI'),
(228, 'Club3D'),
(229, 'Diamond'),
(230, 'GALAX'),
(231, 'Gainward'),
(232, 'Galaxy'),
(233, 'HIS'),
(234, 'Inno3D'),
(235, 'KFA2'),
(236, 'NVIDIA'),
(237, 'Palit'),
(238, 'PowerColor'),
(239, 'Sapphire');

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `id` int(10) UNSIGNED NOT NULL,
  `Proizvajalec_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hitrost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_factor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st_modulov` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `velikost_modula` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_per_gb` float DEFAULT NULL,
  `barva` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cena` float DEFAULT 0,
  `ocena` int(1) UNSIGNED DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`id`, `Proizvajalec_id`, `model`, `tip`, `hitrost`, `form_factor`, `st_modulov`, `velikost_modula`, `price_per_gb`, `barva`, `cena`, `ocena`, `slika`) VALUES
(1, 80, 'AX4U3200W4G16-QGZ16GB', 'DDR4', '3200000000', '288-pinDIMM', '4', '4000000000', 0, 'Gold', 171.15, 2, 'ADATAAX4U3200W4G16-QGZ16GB.jpg'),
(2, 80, 'SupremeSeries8GB', 'DDR3', '1333000000', '204-pinSODIMM', '2', '4000000000', 0, 'Green', 167.63, 2, 'ADATASupremeSeries8GB.jpg'),
(3, 80, 'XPGGAMMIXD1032GB', 'DDR4', '2666000000', '288-pinDIMM', '4', '8000000000', 0, 'Red/White', 274.67, 4, 'ADATAXPGGAMMIXD1032GB.jpg'),
(4, 80, 'XPGGAMMIXD3032GB', 'DDR4', '3200000000', '288-pinDIMM', '2', '16000000000', 0, 'Silver/Black', 70.52, 1, 'ADATAXPGGAMMIXD3032GB.jpg'),
(5, 80, 'XPGGamingSeriesv2.08GB', 'DDR3', '2400000000', '240-pinDIMM', '2', '4000000000', 0, NULL, 228.54, 3, 'ADATAXPGGamingSeriesv2.08GB.jpg'),
(6, 80, 'XPGSPECTRIXD8016GB', 'DDR4', '3200000000', '288-pinDIMM', '2', '8000000000', 7.062, 'Red', 131.18, 3, 'ADATAXPGSPECTRIXD8016GB.jpg'),
(7, 64, 'EntertainmentEdition2GB', 'DDR3', '1333000000', '240-pinDIMM', '1', '2000000000', 0, 'Black/Red', 170.24, 2, 'AMDEntertainmentEdition2GB.jpg'),
(8, 64, 'R5EntertainmentSeries4GB', 'DDR3', '1600000000', '204-pinSODIMM', '1', '4000000000', 0, 'Black/Red', 157.69, 1, 'AMDR5EntertainmentSeries4GB.jpg'),
(9, 81, 'L3A4Gx2-16CBDA8GB', 'DDR3', '1600000000', '240-pinDIMM', '2', '4000000000', 0, 'Black/Red', 227.72, 4, 'ApotopL3A4Gx2-16CBDA8GB.jpg'),
(10, 82, 'AVD4SZ121331508G-1B8GB', 'DDR4', '2133000000', '260-pinSODIMM', '1', '8000000000', 0, 'Black', 115.54, 4, 'AvexirAVD4SZ121331508G-1B8GB.jpg'),
(11, 82, 'Blitz8GB', 'DDR3', '2400000000', '240-pinDIMM', '2', '4000000000', 0, 'Black/White', 94.53, 2, 'AvexirBlitz8GB.jpg'),
(12, 82, 'Core16GB', 'DDR3', '1600000000', '240-pinDIMM', '4', '4000000000', 0, 'Black/Green', 76, 2, 'AvexirCore16GB.jpg'),
(13, 82, 'CoreSeries16GB', 'DDR4', '2666000000', '288-pinDIMM', '2', '8000000000', 0, 'Black/Yellow', 296.42, 3, 'AvexirCoreSeries16GB.jpg'),
(14, 82, 'CoreSeries8GB', 'DDR3', '1600000000', '240-pinDIMM', '2', '4000000000', 0, 'Black/Red', 204.11, 2, 'AvexirCoreSeries8GB.jpg'),
(15, 82, 'MPOWERSeries32GB', 'DDR3', '1600000000', '240-pinDIMM', '4', '8000000000', 0, 'Black/Yellow', 81.3, 3, 'AvexirMPOWERSeries32GB.jpg'),
(16, 82, 'Raiden8GB', 'DDR4', '3000000000', '288-pinDIMM', '2', '4000000000', 0, 'White/Blue', 244.15, 4, 'AvexirRaiden8GB.jpg'),
(17, 13, 'CMSO4GX3M1C1600C114GB', 'DDR3', '1600000000', '204-pinSODIMM', '1', '4000000000', 5.745, 'Green', 176.89, 4, 'CorsairCMSO4GX3M1C1600C114GB.jpg'),
(18, 13, 'CMSO8GX3M2C1600C118GB', 'DDR3', '1600000000', '204-pinSODIMM', '2', '4000000000', 5.124, 'Green', 101.97, 4, 'CorsairCMSO8GX3M2C1600C118GB.jpg'),
(19, 13, 'Dominator2GB', 'DDR2', '1066000000', '240-pinDIMM', '2', '1000000000', 0, 'Black/Blue', 179.18, 4, 'CorsairDominator2GB.jpg'),
(20, 13, 'DominatorGT8GB', 'DDR3', '2000000000', '240-pinDIMM', '2', '4000000000', 0, 'Black/Red', 290.01, 4, 'CorsairDominatorGT8GB.jpg'),
(21, 13, 'DominatorPlatinum32GB', 'DDR4', '2800000000', '288-pinDIMM', '4', '8000000000', 0, 'Black/Silver', 112.5, 1, 'CorsairDominatorPlatinum32GB.jpg'),
(22, 13, 'DominatorPlatinum32GB', 'DDR4', '2666000000', '288-pinDIMM', '4', '8000000000', 6.406, 'Black/Silver', 142.46, 2, 'CorsairDominatorPlatinum32GB.jpg'),
(23, 13, 'DominatorPlatinumRGB16GB', 'DDR4', '3000000000', '288-pinDIMM', '2', '8000000000', 6.624, 'Black', 74.82, 3, 'CorsairDominatorPlatinumRGB16GB.jpg'),
(24, 13, 'ValueSelect4GB', 'DDR4', '2400000000', '288-pinDIMM', '1', '4000000000', 6.385, 'Black', 146.7, 3, 'CorsairValueSelect4GB.jpg'),
(25, 13, 'Vengeance4GB', 'DDR3', '1600000000', '240-pinDIMM', '2', '2000000000', 0, 'Black/Silver', 209.03, 3, 'CorsairVengeance4GB.jpg'),
(26, 13, 'Vengeance8GB', 'DDR3', '1600000000', '240-pinDIMM', '1', '8000000000', 4.999, 'Black/Silver', 55.06, 2, 'CorsairVengeance8GB.jpg'),
(27, 13, 'VengeanceLED16GB', 'DDR4', '2666000000', '288-pinDIMM', '2', '8000000000', 6.911, 'Black', 98.17, 1, 'CorsairVengeanceLED16GB.jpg'),
(28, 13, 'VengeanceLED32GB', 'DDR4', '3600000000', '288-pinDIMM', '4', '8000000000', 34.25, 'Black/White', 275.7, 4, 'CorsairVengeanceLED32GB.jpg'),
(29, 13, 'VengeanceLED32GB', 'DDR4', '3200000000', '288-pinDIMM', '4', '8000000000', 0, 'Black/Red', 284.01, 4, 'CorsairVengeanceLED32GB.jpg'),
(30, 13, 'VengeanceLP4GB', 'DDR3', '1600000000', '240-pinDIMM', '1', '4000000000', 0, 'Red', 292.93, 3, 'CorsairVengeanceLP4GB.jpg'),
(31, 13, 'VengeanceLPX16GB', 'DDR4', '2666000000', '288-pinDIMM', '2', '8000000000', 4.743, 'Red', 62.67, 4, 'CorsairVengeanceLPX16GB.jpg'),
(32, 13, 'VengeanceLPX16GB', 'DDR4', '2800000000', '288-pinDIMM', '4', '4000000000', 0, 'Black/Yellow', 134.51, 2, 'CorsairVengeanceLPX16GB.jpg'),
(33, 13, 'VengeanceLPX16GB', 'DDR4', '3000000000', '288-pinDIMM', '2', '8000000000', 4.061, 'Black/Yellow', 184.53, 4, 'CorsairVengeanceLPX16GB.jpg'),
(34, 13, 'VengeanceLPX16GB', 'DDR4', '3866000000', '288-pinDIMM', '4', '4000000000', 0, 'Black/Yellow', 219.14, 4, 'CorsairVengeanceLPX16GB.jpg'),
(35, 13, 'VengeanceLPX32GB', 'DDR4', '3000000000', '288-pinDIMM', '2', '16000000000', 12.037, 'Black/Yellow', 242.1, 1, 'CorsairVengeanceLPX32GB.jpg'),
(36, 13, 'VengeanceLPX8GB', 'DDR4', '2400000000', '288-pinDIMM', '1', '8000000000', 4.721, 'Black/Yellow', 253.1, 4, 'CorsairVengeanceLPX8GB.jpg'),
(37, 13, 'VengeancePro16GB', 'DDR3', '1600000000', '240-pinDIMM', '2', '8000000000', 0, 'Black/Gold', 239.22, 3, 'CorsairVengeancePro16GB.jpg'),
(38, 13, 'VengeancePro16GB', 'DDR3', '2400000000', '240-pinDIMM', '4', '4000000000', 0, 'Black/Red', 136.77, 4, 'CorsairVengeancePro16GB.jpg'),
(39, 13, 'VengeancePro8GB', 'DDR3', '2133000000', '240-pinDIMM', '2', '4000000000', 0, 'Black/Red', 166.2, 1, 'CorsairVengeancePro8GB.jpg'),
(40, 13, 'VengeancePro8GB', 'DDR3', '1866000000', '240-pinDIMM', '2', '4000000000', 0, 'Black/Blue', 120.7, 3, 'CorsairVengeancePro8GB.jpg'),
(41, 13, 'VengeanceRGB64GB', 'DDR4', '2666000000', '288-pinDIMM', '4', '16000000000', 15.058, 'Black', 54.88, 3, 'CorsairVengeanceRGB64GB.jpg'),
(42, 13, 'VengeanceRGBPro32GB', 'DDR4', '2666000000', '288-pinDIMM', '4', '8000000000', 5.468, 'Black', 112.3, 1, 'CorsairVengeanceRGBPro32GB.jpg'),
(43, 13, 'VengeanceRGBPro64GB', 'DDR4', '2666000000', '288-pinDIMM', '4', '16000000000', 4.687, 'Black', 96.86, 1, 'CorsairVengeanceRGBPro64GB.jpg'),
(44, 13, 'XMS34GB', 'DDR3', '1600000000', '240-pinDIMM', '1', '4000000000', 5.747, 'Black/Blue', 97.37, 2, 'CorsairXMS34GB.jpg'),
(45, 84, 'Ballistix12GB', 'DDR3', '1600000000', '240-pinDIMM', '3', '4000000000', 0, 'Black/Yellow', 146.29, 3, 'CrucialBallistix12GB.jpg'),
(46, 84, 'Ballistix4GB', 'DDR3', '1333000000', '240-pinDIMM', '2', '2000000000', 0, 'Orange/White', 139.35, 3, 'CrucialBallistix4GB.jpg'),
(47, 84, 'BallistixElite16GB', 'DDR4', '3600000000', '288-pinDIMM', '2', '8000000000', 9.306, 'Black', 207.86, 3, 'CrucialBallistixElite16GB.jpg'),
(48, 84, 'BallistixSport4GB', 'DDR3', '1600000000', '240-pinDIMM', '2', '2000000000', 0, 'Black/Silver', 71.26, 4, 'CrucialBallistixSport4GB.jpg'),
(50, 84, 'BallistixSportLT16GB', 'DDR4', '2400000000', '260-pinSODIMM', '2', '8000000000', 4.124, 'Black/Camo', 149.77, 3, 'CrucialBallistixSportLT16GB.jpg'),
(51, 84, 'BallistixSportLT32GB', 'DDR4', '3000000000', '288-pinDIMM', '2', '16000000000', 4.656, 'Red/Black', 150.71, 4, 'CrucialBallistixSportLT32GB.jpg'),
(52, 84, 'BallistixSportLT32GB', 'DDR4', '3200000000', '288-pinDIMM', '2', '16000000000', 4.375, 'Silver/Black', 254.23, 3, 'CrucialBallistixSportLT32GB.jpg'),
(53, 84, 'BallistixTacticalTracer16GB', 'DDR3', '1600000000', '240-pinDIMM', '2', '8000000000', 0, 'Black/Silver', 269.06, 1, 'CrucialBallistixTacticalTracer16GB.jpg'),
(54, 84, 'CT16G4RFD826616GB', 'DDR4', '2666000000', '288-pinDIMM', '1', '16000000000', 5.187, 'Green/Black', 282.61, 4, 'CrucialCT16G4RFD826616GB.JPG'),
(55, 84, 'CT2CP6464AA6671GB', 'DDR2', '667000000', '240-pinDIMM', '2', '512000000', 0, 'Green', 55.88, 1, 'CrucialCT2CP6464AA6671GB.JPG'),
(56, 84, 'CT2K16G4SFD826632GB', 'DDR4', '2666000000', '260-pinSODIMM', '2', '16000000000', 3.937, 'Green/Black', 131.53, 4, 'CrucialCT2K16G4SFD826632GB.jpg'),
(57, 84, 'CT2KIT102472BA160B16GB', 'DDR3', '1600000000', '240-pinDIMM', '2', '8000000000', 0, 'Green', 190.03, 3, 'CrucialCT2KIT102472BA160B16GB.jpg'),
(58, 84, 'CT2KIT51264BC160B8GB', 'DDR3', '1600000000', '204-pinSODIMM', '2', '4000000000', 0, 'Green', 255.54, 4, 'CrucialCT2KIT51264BC160B8GB.jpg'),
(59, 84, 'CT3KIT102472BA160B24GB', 'DDR3', '1600000000', '240-pinDIMM', '3', '8000000000', 0, 'Green', 157.64, 2, 'CrucialCT3KIT102472BA160B24GB.jpg'),
(60, 84, 'CT51264BF186DJ4GB', 'DDR3', '1866000000', '204-pinSODIMM', '1', '4000000000', 5.497, 'Black/Green', 221.56, 3, 'CrucialCT51264BF186DJ4GB.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(10) UNSIGNED NOT NULL,
  `Proizvajalec_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kapaciteta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_per_gb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vrsta_diska` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rpm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_factor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interface` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cena` float DEFAULT 0,
  `ocena` int(1) UNSIGNED DEFAULT NULL,
  `slika` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id`, `Proizvajalec_id`, `model`, `kapaciteta`, `price_per_gb`, `vrsta_diska`, `rpm`, `cache`, `form_factor`, `interface`, `cena`, `ocena`, `slika`) VALUES
(1, 80, 'PremierSP610', '256000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 111.96, 3, 'ADATAPremierSP610.jpg'),
(2, 80, 'S599', '128000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 108.3, 1, 'ADATAS599.jpg'),
(3, 80, 'SP900M.2', '256000000000', '0.504', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 155.63, 1, 'ADATASP900M.2.jpg'),
(4, 80, 'UltimateSU650', '120000000000', '0.225', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 153.26, 1, 'ADATAUltimateSU650.jpg'),
(5, 80, 'UltimateSU750', '1000000000000', '0.108', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 249.38, 2, 'ADATAUltimateSU750.jpg'),
(6, 80, 'UltimateSU750', '256000000000', '0.14', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 237.15, 3, 'ADATAUltimateSU750.jpg'),
(7, 80, 'XPGGAMMIXS11', '480000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 137.6, 2, 'ADATAXPGGAMMIXS11.jpg'),
(8, 80, 'XPGGAMMIXS5', '256000000000', '0.164', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 176.52, 1, 'ADATAXPGGAMMIXS5.jpg'),
(9, 80, 'XPGSX6000Pro', '1000000000000', '0.1', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 169.84, 1, 'ADATAXPGSX6000Pro.jpg'),
(10, 80, 'XPGSX8200', '480000000000', '0.204', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 269.61, 2, 'ADATAXPGSX8200.jpg'),
(11, 80, 'XPGSX850', '256000000000', '0.426', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 288.55, 2, 'ADATAXPGSX850.jpg'),
(12, 64, 'RADEON-R7SSD-240G', '240000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 83.94, 4, 'AMDRADEON-R7SSD-240G.jpg'),
(13, 81, 'MASS3C512GBR', '512000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 254.01, 2, 'ApotopMASS3C512GBR.jpg'),
(14, 82, 'E100', '480000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 218.27, 2, 'AvexirE100.jpg'),
(15, 83, 'SignatureIII', '480000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 279.29, 4, 'AxiomSignatureIII.jpg'),
(16, 13, 'Force', '90000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 191.69, 2, 'CorsairForce.jpg'),
(17, 13, 'ForceLS', '60000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 70.54, 1, 'CorsairForceLS.jpg'),
(18, 13, 'ForceSeriesGT', '90000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 227.63, 4, 'CorsairForceSeriesGT.jpg'),
(19, 13, 'MP300', '120000000000', '0.275', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 126.56, 3, 'CorsairMP300.jpg'),
(20, 13, 'NeutronSeries', '64000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 149.89, 4, 'CorsairNeutronSeries.jpg'),
(21, 13, 'NeutronXTi', '480000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 69.78, 4, 'CorsairNeutronXTi.jpg'),
(22, 13, 'Performance3Series', '64000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 99.22, 4, 'CorsairPerformance3Series.jpg'),
(23, 84, 'BX500', '480000000000', '0.114', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 236.74, 4, 'CrucialBX500.jpg'),
(24, 84, 'BX500', '240000000000', '0.133', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 86.09, 2, 'CrucialBX500.jpg'),
(25, 84, 'BX500', '2000000000000', '0.107', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 170.19, 3, 'CrucialBX500.jpg'),
(26, 84, 'M4', '512000000000', '1.367', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 292.68, 4, 'CrucialM4.jpg'),
(27, 84, 'M500', '120000000000', '0', 'SSD', NULL, NULL, 'mSATA', 'mSATA', 152.86, 4, 'CrucialM500.jpg'),
(28, 84, 'MX200', '1000000000000', '0.247', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 86.24, 1, 'CrucialMX200.jpg'),
(29, 84, 'MX300', '275000000000', '0.823', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 172.62, 3, 'CrucialMX300.jpg'),
(30, 84, 'V4', '256000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 54.39, 4, 'CrucialV4.jpg'),
(31, 85, 'BoostProSlim', '240000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 204.07, 1, 'EdgeTechBoostProSlim.jpg'),
(32, 86, 'Pro-XPerformance', '128000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 57.21, 4, 'EluktroPro-XPerformance.jpg'),
(33, 87, 'PhoenixIII', '120000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 123.81, 3, 'G.SkillPhoenixIII.jpg'),
(34, 87, 'PhoenixSeries', '120000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 147.41, 4, 'G.SkillPhoenixSeries.jpg'),
(35, 88, '653950-001', '146000000000', '0', 'HDD', '15000', NULL, '2.5', 'SAS6Gb/s', 65.61, 4, 'HP653950-001.jpg'),
(36, 88, 'ZTurboDrivePCIe', '256000000000', '0.312', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 85.84, 4, 'HPZTurboDrivePCIe.jpg'),
(37, 89, '0F14689', '3000000000000', '0', 'HDD', '7200', '64000000', '3.5', 'SATA6Gb/s', 182.37, 2, 'Hitachi0F14689.jpg'),
(38, 89, '0F18335', '6000000000000', '0.029', 'HDD', '7200', '64000000', '3.5', 'SATA6Gb/s', 104.31, 2, 'Hitachi0F18335.jpg'),
(39, 89, '0F27406', '8000000000000', '0.039', 'HDD', '7200', '256000000', '3.5', 'SAS12Gb/s', 174.45, 1, 'Hitachi0F27406.jpg'),
(40, 89, '0TS1351', '1920000000000', '0.532', 'SSD', NULL, NULL, 'PCI-E', 'PCIex8', 259.32, 2, 'Hitachi0TS1351.jpg'),
(41, 89, 'Deskstar', '500000000000', '0.12', 'HDD', '7200', '32000000', '3.5', 'SATA3Gb/s', 223.25, 3, 'HitachiDeskstar.jpg'),
(42, 89, 'Deskstar', '3000000000000', '0', 'HDD', '5400', '32000000', '3.5', 'SATA3Gb/s', 288.29, 2, 'HitachiDeskstar.jpg'),
(43, 89, 'Deskstar', '1000000000000', '0.06', 'HDD', '7200', '32000000', '3.5', 'SATA3Gb/s', 221.7, 1, 'HitachiDeskstar.jpg'),
(44, 89, 'DeskstarNAS', '10000000000000', '0', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 193.65, 1, 'HitachiDeskstarNAS.jpg'),
(45, 89, 'DeskstarNAS', '5000000000000', '0', 'HDD', '7200', '128000000', '3.5', 'SATA6Gb/s', 253.12, 4, 'HitachiDeskstarNAS.jpg'),
(46, 89, 'HGSTUltrastar', '4000000000000', '0', 'HDD', '7200', '128000000', '3.5', 'SAS12Gb/s', 134.69, 4, 'HitachiHGSTUltrastar.jpg'),
(47, 89, 'HITACHI-0F12460', '3000000000000', '0.097', 'HDD', '5400', '32000000', '3.5', 'SATA6Gb/s', 114.06, 1, 'HitachiHITACHI-0F12460.jpg'),
(48, 89, 'Travelstar', '500000000000', '0.169', 'HDD', '7200', '32000000', '2.5', 'SATA6Gb/s', 116.22, 2, 'HitachiTravelstar.jpg'),
(49, 89, 'Travelstar7K750', '500000000000', '0', 'HDD', '7200', '16000000', '2.5', 'SATA3Gb/s', 188.92, 3, 'HitachiTravelstar7K750.jpg'),
(50, 89, 'TravelstarZ7K500', '500000000000', '0.3', 'HDD', '7200', '32000000', '2.5', 'SATA6Gb/s', 295.93, 2, 'HitachiTravelstarZ7K500.jpg'),
(51, 89, 'Ultrastar7K4000', '3000000000000', '0', 'HDD', '7200', '64000000', '3.5', 'SATA6Gb/s', 112.93, 2, 'HitachiUltrastar7K4000.jpg'),
(52, 89, 'Ultrastar7K4000', '4000000000000', '0', 'HDD', '7200', '64000000', '3.5', 'SATA6Gb/s', 126.83, 1, 'HitachiUltrastar7K4000.jpg'),
(53, 89, 'UltrastarC10K900', '600000000000', '0', 'HDD', '10000', '64000000', '2.5', 'SATA6Gb/s', 245.37, 3, 'HitachiUltrastarC10K900.jpg'),
(54, 89, 'UltrastarHe10', '8000000000000', '0.037', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 296.36, 1, 'HitachiUltrastarHe10.jpg'),
(55, 90, 'Cobalt', '480000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 195.72, 4, 'HyundaiTechnologyCobalt.jpg'),
(56, 90, 'Sapphire', '120000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 289.51, 3, 'HyundaiTechnologySapphire.jpg'),
(57, 91, '90Y8572', '2000000000000', '0', 'HDD', '7200', NULL, '3.5', 'SAS6Gb/s', 60.4, 1, 'IBM90Y8572.jpg'),
(58, 92, '2TBNVMEPREMIU', '2000000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 133.43, 4, 'Inland2TBNVMEPREMIU.jpg'),
(59, 65, '320Series', '120000000000', '0.617', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 185.95, 4, 'Intel320Series.jpg'),
(60, 65, '320Series', '80000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 229.49, 2, 'Intel320Series.jpg'),
(61, 65, '510Series', '250000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 289.59, 2, 'Intel510Series.jpg'),
(62, 65, '525Series', '120000000000', '0', 'SSD', NULL, NULL, 'mSATA', 'mSATA', 209.5, 4, 'Intel525Series.jpg'),
(63, 65, '530Series', '180000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 128.72, 4, 'Intel530Series.jpg'),
(64, 65, '530Series', '120000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 215.1, 2, 'Intel530Series.jpg'),
(65, 65, '535Series', '360000000000', '0.401', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 139.36, 1, 'Intel535Series.jpg'),
(66, 65, '540s', '1000000000000', '0.4', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 251.47, 1, 'Intel540s.jpg'),
(67, 65, '660p', '512000000000', '0.137', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 289.29, 3, 'Intel660p.jpg'),
(68, 65, '710Series(Lyndonville)', '100000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 142.04, 4, 'Intel710Series(Lyndonville).jpg'),
(69, 65, 'D3-S4510', '960000000000', '0.212', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 292.33, 3, 'IntelD3-S4510.jpg'),
(70, 65, 'DCP3600', '800000000000', '2.312', 'SSD', NULL, NULL, 'PCI-E', 'PCIex4', 235.56, 4, 'IntelDCP3600.jpg'),
(71, 65, 'DCP4510', '4000000000000', '0', 'SSD', NULL, NULL, '2.5', 'U.2', 250.8, 3, 'IntelDCP4510.jpg'),
(72, 65, 'DCP4511', '2000000000000', '0', 'SSD', NULL, NULL, 'M.2-22110', 'M.2(M)', 247.32, 3, 'IntelDCP4511.jpg'),
(73, 65, 'DCS3500Series', '300000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 184.21, 4, 'IntelDCS3500Series.jpg'),
(74, 65, 'DCS3510', '240000000000', '1.078', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 129.1, 4, 'IntelDCS3510.jpg'),
(75, 65, 'DCS3700Series', '800000000000', '0.588', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 292.84, 3, 'IntelDCS3700Series.jpg'),
(76, 65, 'DCS3710', '200000000000', '1.071', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 276.91, 4, 'IntelDCS3710.jpg'),
(77, 65, 'Pro5400s', '480000000000', '0.371', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 206.03, 3, 'IntelPro5400s.jpg'),
(78, 65, 'Pro6000p', '128000000000', '0.804', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 149.44, 1, 'IntelPro6000p.jpg'),
(79, 65, 'SSDDCS3500Series', '800000000000', '0.304', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 79.11, 3, 'IntelSSDDCS3500Series.jpg'),
(80, 65, 'SSDSCKJW180H601', '180000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 147.2, 3, 'IntelSSDSCKJW180H601.jpg'),
(81, 65, 'X25-E', '32000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 198.68, 1, 'IntelX25-E.jpg'),
(82, 65, 'X25-M', '80000000000', '2.487', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 251.82, 1, 'IntelX25-M.jpg'),
(83, 93, 'A2000', '230000000000', '0.174', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 113.05, 2, 'KingstonA2000.jpg'),
(85, 93, 'HyperX3K', '90000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 159.66, 3, 'KingstonHyperX3K.jpg'),
(86, 93, 'HyperXFURYRGB', '480000000000', '0.181', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 219.04, 1, 'KingstonHyperXFURYRGB.jpg'),
(87, 93, 'KC300', '240000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 66.23, 3, 'KingstonKC300.jpg'),
(88, 93, 'Q500', '480000000000', '0.106', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 123.98, 3, 'KingstonQ500.jpg'),
(89, 93, 'SSDNowESeries', '64000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 121.25, 3, 'KingstonSSDNowESeries.jpg'),
(90, 93, 'SSDNowKC310', '960000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 184.27, 3, 'KingstonSSDNowKC310.jpg'),
(91, 93, 'SSDNowM.2', '120000000000', '0', 'SSD', NULL, '256000000', 'M.2-2280', 'M.2(B+M)', 257.63, 4, 'KingstonSSDNowM.2.jpg'),
(92, 93, 'SSDNowUV400', '960000000000', '0.292', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 185.34, 2, 'KingstonSSDNowUV400.jpg'),
(93, 93, 'SSDNowV+Series', '64000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 103.81, 3, 'KingstonSSDNowV+Series.jpg'),
(94, 93, 'SSDNowV+200', '90000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 163, 4, 'KingstonSSDNowV+200.jpg'),
(95, 93, 'SSDNowV200Series', '64000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 203.59, 1, 'KingstonSSDNowV200Series.jpg'),
(96, 93, 'Savage', '120000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 228.97, 1, 'KingstonSavage.jpg'),
(97, 94, 'ST1000LM038', '1000000000000', '0', 'HDD', '5400', '128000000', '2.5', 'SATA6Gb/s', 234.06, 1, 'LaCieST1000LM038.jpg'),
(98, 95, 'ThinkPad', '500000000000', '0', 'HDD', '5400', '8000000', '2.5', 'SATA3Gb/s', 183.4, 1, 'LenovoThinkPad.jpg'),
(99, 96, 'M600', '1000000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 164.83, 1, 'MicronM600.jpg'),
(100, 97, 'AtlasSeries', '120000000000', '0', 'SSD', NULL, NULL, 'mSATA', 'mSATA', 223.92, 3, 'MushkinAtlasSeries.jpg'),
(101, 97, 'AtlasVital', '240000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 75.15, 4, 'MushkinAtlasVital.jpg'),
(102, 97, 'CallistoDeluxe', '240000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 153.97, 2, 'MushkinCallistoDeluxe.jpg'),
(103, 97, 'ChronosDeluxe', '120000000000', '0', 'SSD', NULL, NULL, '1.8', 'MicroSATA6Gb/s', 244.42, 1, 'MushkinChronosDeluxe.jpg'),
(104, 97, 'ECO3', '240000000000', '0.333', 'SSD', NULL, '256000000', '2.5', 'SATA6Gb/s', 210.17, 2, 'MushkinECO3.jpg'),
(105, 97, 'EnhancedSource', '2000000000000', '0.11', 'SSD', NULL, '2048000000', '2.5', 'SATA6Gb/s', 267.59, 1, 'MushkinEnhancedSource.jpg'),
(106, 97, 'PILOT', '250000000000', '0.18', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 157.47, 1, 'MushkinPILOT.jpg'),
(107, 97, 'Reactor', '512000000000', '0.547', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 184.57, 1, 'MushkinReactor.jpg'),
(108, 97, 'Source', '120000000000', '0.175', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 150.45, 3, 'MushkinSource.jpg'),
(109, 98, '80mmBP5e', '480000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 148.52, 2, 'MyDigitalSSD80mmBP5e.jpg'),
(110, 98, 'BP5eSlim7', '128000000000', '0.195', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 241.25, 2, 'MyDigitalSSDBP5eSlim7.jpg'),
(111, 98, 'SBX', '512000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 210.69, 2, 'MyDigitalSSDSBX.jpg'),
(112, 98, 'SuperBootDrive', '32000000000', '0', 'SSD', NULL, NULL, 'M.2-2242', 'M.2(B+M)', 279.7, 2, 'MyDigitalSSDSuperBootDrive.jpg'),
(113, 99, 'Agility', '60000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 216.47, 3, 'OCZAgility.jpg'),
(114, 99, 'Agility2', '90000000000', '0', 'SSD', NULL, NULL, '3.5', 'SATA3Gb/s', 193.23, 3, 'OCZAgility2.jpg'),
(115, 99, 'Agility2', '80000000000', '1.108', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 266.72, 1, 'OCZAgility2.jpg'),
(116, 99, 'Agility3', '256000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 203.95, 1, 'OCZAgility3.jpg'),
(117, 99, 'Agility3', '90000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 169.59, 4, 'OCZAgility3.jpg'),
(118, 99, 'Colossus2Series', '460000000000', '2.163', 'SSD', NULL, NULL, '3.5', 'SATA3Gb/s', 186.11, 4, 'OCZColossus2Series.jpg'),
(119, 99, 'Deneva2', '180000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 121.75, 2, 'OCZDeneva2.jpg'),
(120, 99, 'Octane', '256000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 250.4, 3, 'OCZOctane.jpg'),
(121, 99, 'Octane', '1000000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 86.81, 4, 'OCZOctane.jpg'),
(122, 99, 'Petrol', '64000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 132.8, 4, 'OCZPetrol.jpg'),
(123, 99, 'RevoDrive', '180000000000', '0', 'SSD', NULL, NULL, 'PCI-E', 'PCIex4', 103.57, 2, 'OCZRevoDrive.jpg'),
(124, 99, 'RevoDrive3X2series', '480000000000', '0', 'SSD', NULL, NULL, 'PCI-E', 'PCIex4', 69.47, 2, 'OCZRevoDrive3X2series.jpg'),
(125, 99, 'Solid2', '60000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 236.61, 2, 'OCZSolid2.jpg'),
(126, 99, 'Solid3', '120000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 174.66, 1, 'OCZSolid3.jpg'),
(127, 99, 'TRION150', '240000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 113.48, 1, 'OCZTRION150.jpg'),
(128, 99, 'Vector180', '480000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 243.42, 3, 'OCZVector180.jpg'),
(129, 99, 'Vector180', '240000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 76.66, 1, 'OCZVector180.jpg'),
(130, 99, 'Vertex', '120000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 103.03, 1, 'OCZVertex.jpg'),
(131, 99, 'Vertex2', '120000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 235.15, 3, 'OCZVertex2.jpg'),
(132, 99, 'Vertex2', '240000000000', '0', 'SSD', NULL, NULL, '3.5', 'SATA3Gb/s', 66.69, 1, 'OCZVertex2.jpg'),
(133, 99, 'Vertex2EX', '50000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 77.98, 2, 'OCZVertex2EX.jpg'),
(134, 99, 'Vertex3', '240000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 139.84, 4, 'OCZVertex3.jpg'),
(135, 99, 'Vertex460A', '480000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 165.25, 3, 'OCZVertex460A.jpg'),
(136, 99, 'VertexTurbo', '120000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 106.73, 4, 'OCZVertexTurbo.jpg'),
(137, 100, 'M5M', '128000000000', '0', 'SSD', NULL, NULL, 'mSATA', 'mSATA', 237.9, 2, 'PLDSM5M.jpg'),
(138, 101, 'CS2030', '480000000000', '0.469', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 69.33, 1, 'PNYCS2030.jpg'),
(139, 101, 'CS2111', '480000000000', '0.365', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 82.94, 2, 'PNYCS2111.jpg'),
(140, 101, 'Optima', '480000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 156.67, 2, 'PNYOptima.jpg'),
(141, 101, 'XLR8', '120000000000', '2.125', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 234.56, 1, 'PNYXLR8.jpg'),
(142, 102, 'Blaze', '60000000000', '0', 'SSD', NULL, '32000000', '2.5', 'SATA6Gb/s', 152.81, 3, 'PatriotBlaze.jpg'),
(143, 102, 'Burst', '480000000000', '0.1', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 260.34, 1, 'PatriotBurst.jpg'),
(144, 102, 'PyroSE', '60000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 293.28, 4, 'PatriotPyroSE.jpg'),
(145, 102, 'VPN100', '512000000000', '0.156', 'SSD', NULL, '512000000', 'M.2-2280', 'M.2(M)', 135.41, 1, 'PatriotVPN100.jpg'),
(146, 103, 'M5SSeries', '256000000000', '0', 'SSD', NULL, '512000000', '2.5', 'SATA6Gb/s', 247.18, 2, 'PlextorM5SSeries.jpg'),
(147, 103, 'M6V', '128000000000', '0', 'SSD', NULL, '128000000', '2.5', 'SATA6Gb/s', 279.69, 3, 'PlextorM6V.jpg'),
(148, 103, 'M6eBlackEdition', '512000000000', '0', 'SSD', NULL, '256000000', 'PCI-E', 'PCIex2', 106.93, 1, 'PlextorM6eBlackEdition.jpg'),
(149, 103, 'M8Pe', '512000000000', '0', 'SSD', NULL, '512000000', 'M.2-2280', 'M.2(M)', 145.54, 4, 'PlextorM8Pe.jpg'),
(150, 103, 'M9Pe', '256000000000', '0.168', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 106.93, 4, 'PlextorM9Pe.jpg'),
(151, 103, 'M9Pe', '512000000000', '0.156', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 298, 2, 'PlextorM9Pe.jpg'),
(152, 104, 'SL308', '500000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 119.23, 4, 'SKhynixSL308.jpg'),
(153, 105, 'RocketHTSK4.0', '2000000000000', '0.205', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 152.16, 1, 'SabrentRocketHTSK4.0.jpg'),
(154, 106, '470Series', '256000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 103.08, 1, 'Samsung470Series.jpg'),
(155, 106, '840EVO', '120000000000', '2.507', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 258.93, 3, 'Samsung840EVO.jpg'),
(156, 106, '850EVO', '120000000000', '1.675', 'SSD', NULL, NULL, 'mSATA', 'mSATA', 185.43, 2, 'Samsung850EVO.jpg'),
(157, 106, '850EVO-Series', '500000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 100.37, 2, 'Samsung850EVO-Series.jpg'),
(158, 106, '860Evo', '250000000000', '0.275', 'SSD', NULL, '512000000', 'M.2-2280', 'M.2(B+M)', 145.51, 3, 'Samsung860Evo.jpg'),
(159, 106, '860Pro', '256000000000', '0.351', 'SSD', NULL, '512000000', '2.5', 'SATA6Gb/s', 126.48, 2, 'Samsung860Pro.jpg'),
(160, 106, 'DataCenter', '240000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 145.85, 4, 'SamsungDataCenter.jpg'),
(161, 106, 'MZ1LV960HCJH', '960000000000', '0', 'SSD', NULL, NULL, 'M.2-22110', 'M.2(M)', 299.81, 1, 'SamsungMZ1LV960HCJH.jpg'),
(162, 106, 'PM951', '512000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 261.54, 2, 'SamsungPM951.jpg'),
(163, 106, 'PM981', '512000000000', '0.154', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 108.25, 3, 'SamsungPM981.jpg'),
(164, 106, 'SM961', '512000000000', '0', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 206.61, 3, 'SamsungSM961.jpg'),
(165, 106, 'SpinpointF1EG', '250000000000', '0', 'HDD', '5400', '16000000', '3.5', 'SATA3Gb/s', 158.31, 4, 'SamsungSpinpointF1EG.jpg'),
(166, 106, 'SpinpointF2EG', '500000000000', '0.308', 'HDD', '5400', '16000000', '3.5', 'SATA3Gb/s', 121.71, 1, 'SamsungSpinpointF2EG.jpg'),
(167, 106, 'SpinpointF2EG', '1000000000000', '0', 'HDD', '5400', '16000000', '3.5', 'SATA3Gb/s', 83.62, 2, 'SamsungSpinpointF2EG.jpg'),
(168, 106, 'SpinpointF3', '1000000000000', '0', 'HDD', '7200', '32000000', '3.5', 'SATA3Gb/s', 252.96, 3, 'SamsungSpinpointF3.jpg'),
(169, 106, 'SpinpointF3EG', '1500000000000', '0', 'HDD', '5400', '32000000', '3.5', 'SATA3Gb/s', 213.98, 4, 'SamsungSpinpointF3EG.jpg'),
(170, 106, 'SpinpointMSeries', '160000000000', '0', 'HDD', '5400', '8000000', '2.5', 'SATA1.5Gb/s', 260.99, 1, 'SamsungSpinpointMSeries.jpg'),
(171, 106, 'SpinpointM7', '500000000000', '0.09', 'HDD', '5400', '8000000', '2.5', 'SATA3Gb/s', 113.02, 1, 'SamsungSpinpointM7.jpg'),
(172, 106, 'SpinpointM7E', '160000000000', '0', 'HDD', '5400', '8000000', '2.5', 'SATA3Gb/s', 232.1, 2, 'SamsungSpinpointM7E.jpg'),
(173, 106, 'SpinpointM8', '1000000000000', '0.049', 'HDD', '5400', '8000000', '2.5', 'SATA3Gb/s', 271.47, 4, 'SamsungSpinpointM8.jpg'),
(174, 106, 'SpinpointMP4', '320000000000', '0', 'HDD', '7200', '16000000', '2.5', 'SATA3Gb/s', 111.05, 2, 'SamsungSpinpointMP4.jpg'),
(175, 106, 'XP941Series', '128000000000', '0', 'SSD', NULL, '512000000', 'M.2-2280', 'M.2(M)', 190.84, 3, 'SamsungXP941Series.jpg'),
(176, 107, 'EXTREMEPRO', '1000000000000', '0.426', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 71.04, 1, 'SanDiskEXTREMEPRO.jpg'),
(177, 107, 'SD6SB2M-128G-1022I', '128000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 232.68, 4, 'SanDiskSD6SB2M-128G-1022I.jpg'),
(178, 107, 'SSDPLUS', '1000000000000', '0.1', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 150.29, 1, 'SanDiskSSDPLUS.jpg'),
(179, 107, 'UltraPlus', '128000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 253.41, 2, 'SanDiskUltraPlus.jpg'),
(180, 107, 'X400', '1000000000000', '0.341', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 266.2, 4, 'SanDiskX400.jpg'),
(181, 107, 'Z400s', '32000000000', '0', 'SSD', NULL, NULL, 'mSATA', 'mSATA', 270.75, 3, 'SanDiskZ400s.jpg'),
(182, 108, '1200.2', '3200000000000', '0', 'SSD', NULL, NULL, '2.5', 'SAS12Gb/s', 255.18, 4, 'Seagate1200.2.jpg'),
(183, 108, 'ArchiveHDDv2', '6000000000000', '0.037', 'HDD', '5900', '128000000', '3.5', 'SATA6Gb/s', 163.64, 4, 'SeagateArchiveHDDv2.jpg'),
(184, 108, 'BarraCuda', '3000000000000', '0.043', 'HDD', '5400', '128000000', '2.5', 'SATA6Gb/s', 252.63, 4, 'SeagateBarraCuda.jpg'),
(185, 108, 'BarraCudaCompute', '500000000000', '0.139', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 222.26, 4, 'SeagateBarraCudaCompute.jpg'),
(186, 108, 'BarraCudaPro', '8000000000000', '0.038', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 53.42, 3, 'SeagateBarraCudaPro.jpg'),
(194, 108, 'Cheetah15K.7', '600000000000', '0.07', 'HDD', '15000', '16000000', '3.5', 'SAS6Gb/s', 282.95, 3, 'SeagateCheetah15K.7.jpg'),
(195, 108, 'ConstellationES', '500000000000', '0.185', 'HDD', '7200', '64000000', '3.5', 'SAS6Gb/s', 61.43, 4, 'SeagateConstellationES.jpg'),
(196, 108, 'ConstellationES', '500000000000', '0', 'HDD', '7200', '64000000', '3.5', 'SAS6Gb/s', 158.24, 3, 'SeagateConstellationES.jpg'),
(197, 108, 'ConstellationES.2', '3000000000000', '0.073', 'HDD', '7200', '64000000', '3.5', 'SAS6Gb/s', 56.93, 4, 'SeagateConstellationES.2.jpg'),
(200, 108, 'DesktopHDD', '4000000000000', '0.025', 'HDD', '5900', '64000000', '3.5', 'SATA6Gb/s', 63.88, 4, 'SeagateDesktopHDD.jpg'),
(201, 108, 'EXOSEnterprise', '6000000000000', '0.039', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 283.25, 3, 'SeagateEXOSEnterprise.jpg'),
(202, 108, 'Enterprise', '8000000000000', '0.034', 'HDD', '7200', '256000000', '3.5', 'SAS12Gb/s', 174.62, 2, 'SeagateEnterprise.jpg'),
(203, 108, 'EnterpriseCapacity', '8000000000000', '0', 'HDD', '7200', '256000000', '3.5', 'SAS12Gb/s', 223.35, 3, 'SeagateEnterpriseCapacity.jpg'),
(204, 108, 'EnterpriseCapacity', '8000000000000', '0.038', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 292.91, 1, 'SeagateEnterpriseCapacity.jpg'),
(205, 108, 'EnterpriseNAS', '8000000000000', '0.076', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 244.49, 4, 'SeagateEnterpriseNAS.jpg'),
(206, 108, 'EnterprisePerformance', '600000000000', '0.217', 'HDD', '10000', '128000000', '2.5', 'SAS12Gb/s', 293.71, 1, 'SeagateEnterprisePerformance.jpg'),
(207, 108, 'EnterprisePerformance10K.7', '1200000000000', '0', 'HDD', '10000', '64000000', '2.5', 'SAS6Gb/s', 185.1, 2, 'SeagateEnterprisePerformance10K.7.jpg'),
(208, 108, 'FireCuda', '2000000000000', '0.195', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 244.37, 4, 'SeagateFireCuda.jpg'),
(209, 108, 'IronWolfNAS', '12000000000000', '0.027', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 116.55, 4, 'SeagateIronWolfNAS.jpg'),
(210, 108, 'IronWolfNAS', '3840000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 299.63, 4, 'SeagateIronWolfNAS.jpg'),
(211, 108, 'IronWolfPro', '10000000000000', '0.03', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 98.52, 2, 'SeagateIronWolfPro.jpg'),
(212, 108, 'Momentus5400.3', '80000000000', '1.632', 'HDD', '5400', '8000000', '2.5', 'PATA100', 293.69, 4, 'SeagateMomentus5400.3.jpg'),
(213, 108, 'Momentus7200.4', '250000000000', '0.556', 'HDD', '7200', '16000000', '2.5', 'SATA3Gb/s', 122.94, 1, 'SeagateMomentus7200.4.jpg'),
(214, 108, 'MomentusThin', '250000000000', '0', 'HDD', '5400', '16000000', '2.5', 'SATA3Gb/s', 183.58, 1, 'SeagateMomentusThin.jpg'),
(215, 108, 'NytroEnterprise', '400000000000', '0.753', 'SSD', NULL, NULL, '2.5', 'SAS12Gb/s', 249.07, 3, 'SeagateNytroEnterprise.jpg'),
(216, 108, 'NytroEnterprise', '1920000000000', '0', 'SSD', NULL, NULL, 'M.2-22110', 'M.2(M)', 144.66, 2, 'SeagateNytroEnterprise.jpg'),
(217, 108, 'PipelineHD', '320000000000', '0.125', 'HDD', '5900', '8000000', '3.5', 'SATA3Gb/s', 176.07, 3, 'SeagatePipelineHD.jpg'),
(218, 108, 'ST1000NX0333', '1000000000000', '0.173', 'HDD', '7200', '128000000', '2.5', 'SAS12Gb/s', 146.36, 3, 'SeagateST1000NX0333.jpg'),
(219, 108, 'ST3000VM002', '3000000000000', '0.039', 'HDD', '5900', '64000000', '3.5', 'SATA6Gb/s', 153.59, 2, 'SeagateST3000VM002.jpg'),
(220, 108, 'ST4000LM016', '4000000000000', '0.058', 'HDD', '5400', '128000000', '2.5', 'SATA6Gb/s', 278.88, 1, 'SeagateST4000LM016.jpg'),
(221, 108, 'ST4000VM000', '4000000000000', '0.034', 'HDD', '5900', '64000000', '3.5', 'SATA6Gb/s', 133.65, 4, 'SeagateST4000VM000.jpg'),
(222, 108, 'ST5000NM0024', '5000000000000', '0.094', 'HDD', '7200', '128000000', '3.5', 'SATA6Gb/s', 281.6, 4, 'SeagateST5000NM0024.jpg'),
(223, 108, 'ST6000DX000', '6000000000000', '0.062', 'HDD', '7200', '128000000', '3.5', 'SATA6Gb/s', 207.05, 4, 'SeagateST6000DX000.jpg'),
(224, 108, 'SV35Series', '1000000000000', '0', 'HDD', '5400', '64000000', '3.5', 'SATA6Gb/s', 140.47, 1, 'SeagateSV35Series.jpg'),
(225, 108, 'SkyHawk', '3000000000000', '0.034', 'HDD', '5900', '64000000', '3.5', 'SATA6Gb/s', 281.18, 4, 'SeagateSkyHawk.jpg'),
(226, 108, 'SkyHawkSurveillance', '10000000000000', '0.039', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 184.49, 2, 'SeagateSkyHawkSurveillance.jpg'),
(227, 108, 'SurveillanceHDD', '2000000000000', '0', 'HDD', '5900', '64000000', '3.5', 'SATA6Gb/s', 278.93, 1, 'SeagateSurveillanceHDD.jpg'),
(228, 109, 'S55', '480000000000', '0.185', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 291.16, 3, 'SiliconPowerS55.jpg'),
(229, 109, 'SP001TBP34A80M28', '1000000000000', '0.12', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 69.04, 2, 'SiliconPowerSP001TBP34A80M28.jpg'),
(230, 109, 'SU256GBSS3A55S25AE', '256000000000', '0.156', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 171.67, 2, 'SiliconPowerSU256GBSS3A55S25AE.jpg'),
(231, 109, 'SilmS55', '480000000000', '0.117', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 101.25, 1, 'SiliconPowerSilmS55.jpg'),
(232, 110, 'DARKL3', '240000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 191.21, 4, 'TeamDARKL3.jpg'),
(233, 110, 'L5LITE', '60000000000', '0.448', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 102.32, 2, 'TeamL5LITE.jpg'),
(234, 110, 'MP34', '1000000000000', '0.105', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 137.98, 3, 'TeamMP34.jpg'),
(235, 110, 'MS30', '512000000000', '0', 'SSD', NULL, NULL, 'M.2-2242', 'M.2(B+M)', 82.94, 1, 'TeamMS30.jpg'),
(236, 110, 'T-ForceVULCAN', '250000000000', '0.144', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 200.72, 1, 'TeamT-ForceVULCAN.jpg'),
(237, 111, 'HDD3A02', '1000000000000', '0', 'HDD', '7200', '16000000', '3.5', 'SAS6Gb/s', 204.81, 4, 'ToshibaHDD3A02.jpg'),
(238, 111, 'HDKBB097', '750000000000', '0', 'HDD', '5400', '8000000', '2.5', 'SATA6Gb/s', 121.89, 4, 'ToshibaHDKBB097.jpg'),
(239, 111, 'HDKCC00', '500000000000', '0.052', 'HDD', '7200', '16000000', '2.5', 'SATA6Gb/s', 195.02, 3, 'ToshibaHDKCC00.jpg'),
(240, 111, 'MD04ACA500', '5000000000000', '0', 'HDD', '7200', '128000000', '3.5', 'SATA6Gb/s', 59.43, 1, 'ToshibaMD04ACA500.jpg'),
(241, 111, 'MK2576GSX', '250000000000', '0.128', 'HDD', '5400', '8000000', '2.5', 'SATA3Gb/s', 162.09, 2, 'ToshibaMK2576GSX.jpg'),
(242, 111, 'MK3259GSXP', '320000000000', '0', 'HDD', '5400', '8000000', '2.5', 'SATA3Gb/s', 82.15, 1, 'ToshibaMK3259GSXP.jpg'),
(243, 111, 'MK5059GSXP', '500000000000', '0', 'HDD', '5400', '8000000', '2.5', 'SATA3Gb/s', 124.48, 3, 'ToshibaMK5059GSXP.jpg'),
(244, 111, 'MQ01ABF050H', '500000000000', '0', 'Hybrid', NULL, '32000000', '2.5', 'SATA6Gb/s', 75.94, 2, 'ToshibaMQ01ABF050H.jpg'),
(245, 111, 'P300', '2000000000000', '0.037', 'HDD', '7200', '64000000', '3.5', 'SATA6Gb/s', 206.24, 1, 'ToshibaP300.jpg'),
(246, 111, 'P300', '3000000000000', '0', 'HDD', '7200', '64000000', '3.5', 'SATA6Gb/s', 253.4, 1, 'ToshibaP300.jpg'),
(247, 111, 'ProductSeries AL13SE', '300000000000', '0', 'HDD', '10500', '64000000', '2.5', 'SAS6Gb/s', 98.32, 4, 'ToshibaProductSeriesAL13SE.jpg'),
(248, 111, 'QSeries', '512000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 181.35, 3, 'ToshibaQSeries.jpg'),
(249, 111, 'Q300', '960000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 61.8, 4, 'ToshibaQ300.jpg'),
(250, 111, 'S300', '10000000000000', '0.03', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 214.95, 4, 'ToshibaS300.jpg'),
(251, 111, 'VX500', '128000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 89.34, 4, 'ToshibaVX500.jpg'),
(252, 111, 'X300', '14000000000000', '0', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 251.85, 1, 'ToshibaX300.jpg'),
(253, 112, 'MTS600', '32000000000', '1.097', 'SSD', NULL, NULL, 'M.2-2260', 'M.2(B+M)', 191.26, 2, 'TranscendMTS600.jpg'),
(254, 112, 'SSD370', '256000000000', '0.496', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 150.72, 2, 'TranscendSSD370.jpg'),
(255, 112, 'TS128GSSD230S', '128000000000', '0.211', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 129.81, 2, 'TranscendTS128GSSD230S.jpg'),
(256, 112, 'TS64GSSD370S', '64000000000', '0.629', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 146.9, 1, 'TranscendTS64GSSD370S.jpg'),
(257, 113, 'VerbatimSATAII', '128000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 295.05, 1, 'VerbatimVerbatimSATAII.jpg'),
(258, 114, '900990', '120000000000', '0.705', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 234.57, 2, 'VisionTek900990.jpg'),
(259, 114, 'GoDrive', '120000000000', '0', 'SSD', NULL, NULL, '1.8', 'SATA6Gb/s', 237.71, 3, 'VisionTekGoDrive.jpg'),
(260, 114, 'PRO', '500000000000', '0.38', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 184.84, 2, 'VisionTekPRO.jpg'),
(261, 114, 'PRO', '120000000000', '0.583', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 161.08, 3, 'VisionTekPRO.jpg'),
(262, 115, 'AV', '320000000000', '0', 'HDD', '7200', '8000000', '3.5', 'SATA3Gb/s', 200.87, 4, 'WesternDigitalAV.jpg'),
(263, 115, 'AV-25', '250000000000', '0', 'HDD', '5400', '32000000', '2.5', 'SATA3Gb/s', 221.11, 4, 'WesternDigitalAV-25.jpg'),
(264, 115, 'AV-GP', '3000000000000', '0.06', 'HDD', '5400', '64000000', '3.5', 'SATA3Gb/s', 202.94, 1, 'WesternDigitalAV-GP.jpg'),
(265, 115, 'AV-GP', '3000000000000', '0.041', 'HDD', '5900', '64000000', '3.5', 'SATA6Gb/s', 51.37, 2, 'WesternDigitalAV-GP.jpg'),
(266, 115, 'AV-GP', '1000000000000', '0.06', 'HDD', '5400', '64000000', '3.5', 'SATA3Gb/s', 98.01, 3, 'WesternDigitalAV-GP.jpg'),
(267, 115, 'Black', '1000000000000', '0.11', 'HDD', '7200', '32000000', '2.5', 'SATA6Gb/s', 285.92, 4, 'WesternDigitalBlack.jpg'),
(268, 115, 'BlackPCIe', '256000000000', '0.474', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(M)', 85.6, 1, 'WesternDigitalBlackPCIe.jpg'),
(269, 115, 'Blue', '500000000000', '0.13', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 270.22, 1, 'WesternDigitalBlue.jpg'),
(270, 115, 'Blue', '250000000000', '0.2', 'SSD', NULL, NULL, '2.5', 'SATA6Gb/s', 294.31, 3, 'WesternDigitalBlue.jpg'),
(271, 115, 'CaviarBlack', '2000000000000', '0.089', 'HDD', '7200', '32000000', '3.5', 'SATA3Gb/s', 110.89, 4, 'WesternDigitalCaviarBlack.jpg'),
(272, 115, 'CaviarBlack', '1500000000000', '0', 'HDD', '7200', '64000000', '3.5', 'SATA3Gb/s', 121.53, 4, 'WesternDigitalCaviarBlack.jpg'),
(273, 115, 'CaviarBlue', '250000000000', '0', 'HDD', '7200', '16000000', '3.5', 'SATA3Gb/s', 224.97, 2, 'WesternDigitalCaviarBlue.jpg'),
(274, 115, 'CaviarBlue', '1000000000000', '0.045', 'HDD', '7200', '64000000', '3.5', 'SATA6Gb/s', 210.26, 4, 'WesternDigitalCaviarBlue.jpg'),
(275, 115, 'CaviarBlue', '320000000000', '0.083', 'HDD', '7200', '16000000', '3.5', 'SATA6Gb/s', 76.39, 3, 'WesternDigitalCaviarBlue.jpg'),
(276, 115, 'CaviarGreen', '640000000000', '0.156', 'HDD', '5400', '64000000', '3.5', 'SATA3Gb/s', 201.16, 4, 'WesternDigitalCaviarGreen.jpg'),
(277, 115, 'CaviarGreen', '3000000000000', '0.064', 'HDD', '5400', '64000000', '3.5', 'SATA3Gb/s', 226.65, 4, 'WesternDigitalCaviarGreen.jpg'),
(278, 115, 'CaviarSE', '500000000000', '0', 'HDD', '7200', '8000000', '3.5', 'PATA100', 229.76, 4, 'WesternDigitalCaviarSE.jpg'),
(279, 115, 'CaviarSE', '250000000000', '0.16', 'HDD', '7200', '8000000', '3.5', 'PATA100', 168.87, 2, 'WesternDigitalCaviarSE.jpg'),
(280, 115, 'Gold', '6000000000000', '0.038', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 105.07, 2, 'WesternDigitalGold.jpg'),
(281, 115, 'HGSTDCHC530', '14000000000000', '0.026', 'HDD', '7200', '512000000', '3.5', 'SATA6Gb/s', 218.72, 1, 'WesternDigitalHGSTDCHC530.jpg'),
(282, 115, 'Purple', '8000000000000', '0.028', 'HDD', '7200', '256000000', '3.5', 'SATA6Gb/s', 228.42, 3, 'WesternDigitalPurple.jpg'),
(283, 115, 'PurpleNV', '4000000000000', '0.049', 'HDD', '5400', '64000000', '3.5', 'SATA6Gb/s', 185.93, 1, 'WesternDigitalPurpleNV.jpg'),
(284, 115, 'RE2', '750000000000', '0.2', 'HDD', '7200', '16000000', '3.5', 'SATA3Gb/s', 194.38, 2, 'WesternDigitalRE2.jpg'),
(285, 115, 'RE4', '250000000000', '0', 'HDD', '7200', '64000000', '3.5', 'SATA3Gb/s', 114.12, 1, 'WesternDigitalRE4.jpg'),
(286, 115, 'Red', '12000000000000', '0.03', 'HDD', '5400', '256000000', '3.5', 'SATA6Gb/s', 187.46, 1, 'WesternDigitalRed.jpg'),
(287, 115, 'RedPro', '2000000000000', '0.059', 'HDD', '7200', '64000000', '3.5', 'SATA6Gb/s', 294.92, 2, 'WesternDigitalRedPro.jpg'),
(288, 115, 'RedSA500', '1000000000000', '0.14', 'SSD', NULL, NULL, 'M.2-2280', 'M.2(B+M)', 112.24, 3, 'WesternDigitalRedSA500.jpg'),
(289, 115, 'ScorpioBlack', '80000000000', '0', 'HDD', '7200', '16000000', '2.5', 'SATA3Gb/s', 126.44, 1, 'WesternDigitalScorpioBlack.jpg'),
(290, 115, 'ScorpioBlack', '320000000000', '0', 'HDD', '7200', '16000000', '2.5', 'SATA3Gb/s', 245.45, 1, 'WesternDigitalScorpioBlack.jpg'),
(291, 115, 'ScorpioBlack', '250000000000', '0.099', 'HDD', '7200', '16000000', '2.5', 'SATA3Gb/s', 297.96, 3, 'WesternDigitalScorpioBlack.jpg'),
(292, 115, 'ScorpioBlue', '160000000000', '0', 'HDD', '5400', '8000000', '2.5', 'SATA1.5Gb/s', 203.45, 2, 'WesternDigitalScorpioBlue.jpg'),
(293, 115, 'Se', '1000000000000', '0.21', 'HDD', '7200', '128000000', '3.5', 'SATA6Gb/s', 73.36, 3, 'WesternDigitalSe.jpg'),
(294, 115, 'VelociRaptor', '150000000000', '0', 'HDD', '10000', '32000000', '3.5', 'SATA6Gb/s', 206.43, 1, 'WesternDigitalVelociRaptor.jpg'),
(295, 115, 'WDBlue', '750000000000', '0.06', 'HDD', '5400', '8000000', '2.5', 'SATA6Gb/s', 262.08, 3, 'WesternDigitalWDBlue.jpg'),
(296, 115, 'WDSE', '2000000000000', '0.032', 'HDD', '7200', '64000000', '3.5', 'SATA6Gb/s', 141.14, 1, 'WesternDigitalWDSE.jpg'),
(297, 115, 'WDVelociRaptor', '500000000000', '0', 'HDD', '10000', '64000000', '2.5', 'SATA6Gb/s', 119.43, 2, 'WesternDigitalWDVelociRaptor.jpg'),
(298, 115, 'WDBMYH0010BNC-NRSN', '1000000000000', '0.055', 'HDD', '5400', '8000000', '2.5', 'SATA3Gb/s', 123.72, 2, 'WesternDigitalWDBMYH0010BNC-NRSN.jpg'),
(299, 45, 'NSeries', '64000000000', '0', 'SSD', NULL, NULL, '2.5', 'SATA3Gb/s', 210.33, 1, 'ZalmanNSeries.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `uporabnik`
--

CREATE TABLE `uporabnik` (
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Ime` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Priimek` varchar(100) CHARACTER SET latin1 NOT NULL,
  `geslo` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_slovenian_ci;

--
-- Dumping data for table `uporabnik`
--

INSERT INTO `uporabnik` (`email`, `Ime`, `Priimek`, `geslo`) VALUES
('admin@gmail.com', 'Janez', 'Banez', '$2y$10$6ggJb4P7UtOVv5NtxPHTRua.a7YCwccqEvQQvictDrGJ1szUGv4Qm'),
('janez.dolenc@gmail.com', 'Janez', 'Dolenc', '$2y$10$g/mVcpKkfzjlWt1rPU42GevjmgOIS4QcdB5HNouJC6a578xkZbQMK'),
('janez.kovac@gmail.com', 'Janez', 'KovaÄ', '$2y$10$sGdJRRSbArAG3C6J3L67fO3dEX7DBf6Heodjz3LnZUTVCwZYMbdoe'),
('marija.kekec@gmail.com', 'Marija', 'Kekec', '$2y$10$RMqdT5OKksfzTx9tV2mikuHcDP5ro.JqQ19QOURKJ35hPCnJxALxG'),
('metka123@gmail.com', 'Metka', 'KovaÄeva', '$2y$10$sd7yUbcLzy7XUqXzIMWsO.zu4Vxb5pSPc5k4JFsORZNrPfeS9y.De');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `case_2`
--
ALTER TABLE `case_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Proizvajalec_id` (`Proizvajalec_id`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Proizvajalec_id` (`Proizvajalec_id`);

--
-- Indexes for table `cpu_cooler`
--
ALTER TABLE `cpu_cooler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Proizvajalec_id` (`Proizvajalec_id`);

--
-- Indexes for table `graficna`
--
ALTER TABLE `graficna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Proizvajalec_id` (`Proizvajalec_id`);

--
-- Indexes for table `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Proizvajalec_id` (`Proizvajalec_id`);

--
-- Indexes for table `power_supply`
--
ALTER TABLE `power_supply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Proizvajalec_id` (`Proizvajalec_id`);

--
-- Indexes for table `proizvajalec`
--
ALTER TABLE `proizvajalec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Proizvajalec_id` (`Proizvajalec_id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Proizvajalec_id` (`Proizvajalec_id`);

--
-- Indexes for table `uporabnik`
--
ALTER TABLE `uporabnik`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `case_2`
--
ALTER TABLE `case_2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `cpu_cooler`
--
ALTER TABLE `cpu_cooler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `graficna`
--
ALTER TABLE `graficna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `power_supply`
--
ALTER TABLE `power_supply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `proizvajalec`
--
ALTER TABLE `proizvajalec`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `case_2`
--
ALTER TABLE `case_2`
  ADD CONSTRAINT `case_2_ibfk_1` FOREIGN KEY (`Proizvajalec_id`) REFERENCES `proizvajalec` (`id`);

--
-- Constraints for table `cpu`
--
ALTER TABLE `cpu`
  ADD CONSTRAINT `cpu_ibfk_1` FOREIGN KEY (`Proizvajalec_id`) REFERENCES `proizvajalec` (`id`);

--
-- Constraints for table `cpu_cooler`
--
ALTER TABLE `cpu_cooler`
  ADD CONSTRAINT `cpu_cooler_ibfk_1` FOREIGN KEY (`Proizvajalec_id`) REFERENCES `proizvajalec` (`id`);

--
-- Constraints for table `graficna`
--
ALTER TABLE `graficna`
  ADD CONSTRAINT `graficna_ibfk_1` FOREIGN KEY (`Proizvajalec_id`) REFERENCES `proizvajalec` (`id`);

--
-- Constraints for table `motherboard`
--
ALTER TABLE `motherboard`
  ADD CONSTRAINT `motherboard_ibfk_1` FOREIGN KEY (`Proizvajalec_id`) REFERENCES `proizvajalec` (`id`);

--
-- Constraints for table `power_supply`
--
ALTER TABLE `power_supply`
  ADD CONSTRAINT `power_supply_ibfk_1` FOREIGN KEY (`Proizvajalec_id`) REFERENCES `proizvajalec` (`id`);

--
-- Constraints for table `ram`
--
ALTER TABLE `ram`
  ADD CONSTRAINT `ram_ibfk_1` FOREIGN KEY (`Proizvajalec_id`) REFERENCES `proizvajalec` (`id`);

--
-- Constraints for table `storage`
--
ALTER TABLE `storage`
  ADD CONSTRAINT `storage_ibfk_1` FOREIGN KEY (`Proizvajalec_id`) REFERENCES `proizvajalec` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
