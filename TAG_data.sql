-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2014 at 12:19 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `TAG_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE IF NOT EXISTS `administration` (
  `TAG` varchar(100) DEFAULT NULL,
  `After Order` varchar(100) DEFAULT NULL,
  `qtc` varchar(100) DEFAULT NULL,
  `passwords` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`TAG`, `After Order`, `qtc`, `passwords`) VALUES
('bliven', 'tagorder', 'ctq', 'passwords');

-- --------------------------------------------------------

--
-- Table structure for table `Applied FO`
--

CREATE TABLE IF NOT EXISTS `Applied FO` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `NO` int(11) DEFAULT NULL,
  `FO Number Applied To` varchar(100) DEFAULT NULL,
  `Notes to Next Engineer` tinytext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Applied FO`
--

INSERT INTO `Applied FO` (`ID`, `NO`, `FO Number Applied To`, `Notes to Next Engineer`) VALUES
(1692, 5678, '31731099-001', 'BRS - MCLD'),
(1693, 5675, '31731099-001', 'BRS - MCLD'),
(1742, 5763, '31389757-001', 'TMH - 5KV HVL/cc'),
(1744, 5763, '33140587-002', 'MEO - 5KV HVL/cc'),
(1793, 6026, '33159884-002', 'By MN'),
(1797, 5802, '33119842-002', 'Increased section width 1" on each side in HVlcc - HT');

-- --------------------------------------------------------

--
-- Table structure for table `Attachments`
--

CREATE TABLE IF NOT EXISTS `Attachments` (
  `TAG` int(11) DEFAULT NULL,
  `Attachments` varchar(255) DEFAULT NULL,
  `notes` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Backup`
--

CREATE TABLE IF NOT EXISTS `Backup` (
  `ID` int(11) DEFAULT NULL,
  `dtBackup` date NOT NULL,
  `TagMember` varchar(100) NOT NULL,
  `BackupTo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Backup`
--

INSERT INTO `Backup` (`ID`, `dtBackup`, `TagMember`, `BackupTo`) VALUES
(1, '2012-02-21', 'Walter Smitty', 'Monthly Backup'),
(2, '2012-02-21', 'Walter Smitty', 'Monthly Backup'),
(3, '2012-02-21', 'Walter Smitty', 'Weekly Backup'),
(4, '2012-02-21', 'Walter Smitty', 'Weekly Backup'),
(5, '2012-02-22', 'Richard Sewell', 'Weekly Backup'),
(6, '2012-02-22', 'Ken Joye', 'Monthly Backup'),
(7, '2012-02-22', 'Richard Sewell', 'Monthly Backup'),
(8, '2012-02-22', 'Tom Clarke', 'Monthly Backup'),
(9, '2012-02-27', 'Walter Smitty', 'Monthly Backup'),
(10, '2012-02-27', 'Walter Smitty', 'Weekly Backup'),
(11, '2012-03-15', 'Walter Smitty', 'Weekly Backup'),
(12, '2012-03-23', 'Walter Smitty', 'Weekly Backup'),
(13, '2012-03-23', 'Walter Smitty', 'Monthly Backup'),
(14, '2012-03-27', 'Walter Smitty', 'Weekly Backup'),
(15, '2012-10-31', 'Walter Smitty', 'Monthly Backup'),
(16, '2012-10-31', 'Walter Smitty', 'Weekly Backup'),
(19, '2013-04-04', 'Walter Smitty', 'Monthly Backup'),
(20, '2013-04-04', 'Walter Smitty', 'Weekly Backup'),
(21, '2013-05-14', 'Walter Smitty', 'Monthly Backup'),
(22, '2013-05-14', 'Walter Smitty', 'Weekly Backup'),
(23, '2013-06-07', 'Walter Smitty', 'Monthly Backup'),
(24, '2013-06-07', 'Walter Smitty', 'Weekly Backup'),
(25, '2013-06-28', 'Walter Smitty', 'Monthly Backup'),
(26, '2013-06-28', 'Walter Smitty', 'Weekly Backup');

-- --------------------------------------------------------

--
-- Table structure for table `complexity`
--

CREATE TABLE IF NOT EXISTS `complexity` (
  `complexity` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`complexity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complexity`
--

INSERT INTO `complexity` (`complexity`) VALUES
('A'),
('B'),
('C'),
('D'),
('E'),
('F'),
('G');

-- --------------------------------------------------------

--
-- Table structure for table `Country $ Adjustment`
--

CREATE TABLE IF NOT EXISTS `Country $ Adjustment` (
  `s_Generation` int(11) DEFAULT NULL,
  `s_GUID` char(38) DEFAULT NULL,
  `s_Lineage` varchar(255) DEFAULT NULL,
  `USA` float DEFAULT NULL,
  `Canada` float DEFAULT NULL,
  `Mexico` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Database Revisions`
--

CREATE TABLE IF NOT EXISTS `Database Revisions` (
  `Revision` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Notes` varchar(510) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Database Revisions`
--

INSERT INTO `Database Revisions` (`Revision`, `Date`, `UserName`, `Notes`) VALUES
(2, '2012-02-21 00:00:00', 'Walter Smitty', 'Updated all forms to set Special Items to Visible = False in order to leave in database for possible future need. Also removed Special items from Product table.');

-- --------------------------------------------------------

--
-- Table structure for table `Paste Errors`
--

CREATE TABLE IF NOT EXISTS `Paste Errors` (
  `NO` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(510) DEFAULT NULL,
  `Sub Category` varchar(510) DEFAULT NULL,
  `Created By` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Paste Errors`
--

INSERT INTO `Paste Errors` (`NO`, `DESCRIPTION`, `Sub Category`, `Created By`) VALUES
(1, 'ABB CT''S AND VT''S', 'Barrier', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Price Per Hour`
--

CREATE TABLE IF NOT EXISTS `Price Per Hour` (
  `Labor` float DEFAULT NULL,
  `Engineering` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Price Per Hour`
--

INSERT INTO `Price Per Hour` (`Labor`, `Engineering`) VALUES
(74.28, 62.24);

-- --------------------------------------------------------

--
-- Table structure for table `Product Type`
--

CREATE TABLE IF NOT EXISTS `Product Type` (
  `Product Type` varchar(100) DEFAULT NULL,
  `Multiplyer` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product Type`
--

INSERT INTO `Product Type` (`Product Type`, `Multiplyer`) VALUES
('HVL', 16),
('HVL/CC', 16),
('Metal Clad', 12),
('MVMCC', 16);

-- --------------------------------------------------------

--
-- Table structure for table `Q2C Reference`
--

CREATE TABLE IF NOT EXISTS `Q2C Reference` (
  `NO` int(11) DEFAULT NULL,
  `Q2CNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `QTC List`
--

CREATE TABLE IF NOT EXISTS `QTC List` (
  `QTC Number` int(11) DEFAULT NULL,
  `TAG No` int(11) DEFAULT NULL,
  `Rev No` int(11) DEFAULT NULL,
  `Date Applied` datetime DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `QTC List`
--

INSERT INTO `QTC List` (`QTC Number`, `TAG No`, `Rev No`, `Date Applied`, `product`, `country`) VALUES
(1234521, 3225, 0, '2009-02-05 00:00:00', 'HVL', 'USA'),
(1234521, NULL, 0, '2011-01-20 00:00:00', 'Metal Clad', 'USA'),
(1234521, 548, 0, '2012-05-03 00:00:00', 'Metal Clad', 'USA'),
(1234521, 0, 0, '2013-02-26 00:00:00', NULL, NULL),
(1234521, 0, 0, '2013-03-14 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Quote To Cash`
--

CREATE TABLE IF NOT EXISTS `Quote To Cash` (
  `QTC Number` int(11) NOT NULL,
  `Req by` varchar(100) DEFAULT NULL,
  `Requested` datetime DEFAULT NULL,
  `Completed` datetime DEFAULT NULL,
  `VES` char(1) NOT NULL,
  `product type` int(11) DEFAULT NULL,
  `Comments` tinytext,
  `Status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Quote To Cash`
--

INSERT INTO `Quote To Cash` (`QTC Number`, `Req by`, `Requested`, `Completed`, `VES`, `product type`, `Comments`, `Status`) VALUES
(1234521, 'richie', '2009-02-05 00:00:00', '2009-02-05 00:00:00', '1', 1, 'test', '2');

-- --------------------------------------------------------

--
-- Table structure for table `Revision`
--

CREATE TABLE IF NOT EXISTS `Revision` (
  `NO` int(11) DEFAULT NULL,
  `rev` int(11) DEFAULT NULL,
  `Lead Time` int(11) DEFAULT NULL,
  `Can LIST PRICE` float DEFAULT NULL,
  `US LIST PRICE` float DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `MATERIAL` float DEFAULT NULL,
  `LABOR` float DEFAULT NULL,
  `BURDEN` float DEFAULT NULL,
  `INST COST` float DEFAULT NULL,
  `Price Note` varchar(510) DEFAULT NULL,
  `Complexity` varchar(6) DEFAULT NULL,
  `Notes` varchar(510) DEFAULT NULL,
  `hvl` char(1) NOT NULL,
  `HVL/CC` char(1) NOT NULL,
  `Metal Clad` char(1) NOT NULL,
  `MVMCC` char(1) NOT NULL,
  `Special Items` char(1) NOT NULL,
  `price expiration` int(11) DEFAULT NULL,
  `revision obsolete` char(1) NOT NULL,
  `Under Current Revision` char(1) NOT NULL,
  `TAG Member` int(11) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  KEY `Complexity` (`Complexity`),
  KEY `TAG Member` (`TAG Member`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Revision`
--

INSERT INTO `Revision` (`NO`, `rev`, `Lead Time`, `Can LIST PRICE`, `US LIST PRICE`, `DATE`, `MATERIAL`, `LABOR`, `BURDEN`, `INST COST`, `Price Note`, `Complexity`, `Notes`, `hvl`, `HVL/CC`, `Metal Clad`, `MVMCC`, `Special Items`, `price expiration`, `revision obsolete`, `Under Current Revision`, `TAG Member`, `country`) VALUES
(5500, 0, 0, 0, 0, '2012-11-01 00:00:00', 8.25, 0, 0, 8.25, NULL, 'A', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5501, 0, 0, 0, 0, '2012-11-01 00:00:00', NULL, NULL, NULL, NULL, NULL, 'F', 'The Synchronous package will require a 29.5 aux section for mounting and wiring. To use this TAG you will need to price FVNR & 29.5 Aux section plus this TAG. TAG includes Kinetic Synchronous package + Eng + labor', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5501, 1, 0, 0, 0, '2012-11-01 00:00:00', 13250, 297.12, 497.92, 14045, NULL, NULL, 'The Synchronous package will require a 29.5 aux section for mounting and wiring. To use this TAG you will need to price FVNR & 29.5 Aux section plus this TAG. TAG includes Kinetic Synchronous package + Eng + labor', '0', '0', '0', '1', '0', 24, '0', '0', 14, 'US'),
(5502, 0, 0, 0, 0, '2012-11-01 00:00:00', 13250, 297.12, 497.92, 14045, NULL, 'F', 'The Synchronous package will require a 29.5 aux section for mounting and wiring. To use this TAG, you will need to price FVNR &29.5 Aux Section plus this TAG. TAG includes Kinetics Synchronous package + Eng. + labor', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5507, 0, 0, 0, 0, '2012-11-05 00:00:00', 635.95, 74.28, 62.24, 772.47, 'Price is each.', 'A', 'Accepts six (6) CCH connector panels or modules: supplied with blank panels and one (1) clamp kit', '0', '0', '1', '0', '1', 12, '0', '0', 14, 'US'),
(5508, 0, 0, 0, 0, '2012-11-05 00:00:00', 19.55, 74.28, 62.24, 156.07, 'Price is each', 'A', 'Corning 95-200-51 Unicam High Performance ST Compatible Connector, SPC Polish, Single-Mode, Ceramic Ferrule, Logo, Single Pack, amber housing. Engineering to specify quantity', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5509, 0, 0, 0, 0, '2012-11-05 00:00:00', 71.95, 74.28, 62.24, 208.47, 'Price is each', 'A', 'CCH-CP12-19T corning Cable System 12-fiber Connector Housing Panel (CCH) Patch Panel with ST comaptible adapters, single-mode, ceramic inserts. Engineering to specify quantity. To be installed in the panels.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5510, 0, 0, 0, 0, '2012-11-05 00:00:00', 3698.54, 445.68, 124.48, 4268.7, NULL, 'D', 'Includes transition and 3" throat.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5511, 0, 0, 0, 0, '2012-11-05 00:00:00', 4052, 297.12, 497.92, 4847.04, NULL, 'F', 'Parts are quantity of one (1) each', '0', '0', '1', '0', '0', 24, '0', '0', 14, 'US'),
(5513, 0, 0, 0, 0, '2012-11-06 00:00:00', 200, 0, 497.92, 697.92, NULL, 'D', 'See Series 2 index E51340, section 3.4. This assembly is to be used for reference ONLY.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5514, 0, 0, 0, 0, '2012-11-06 00:00:00', 126.49, 0, 0, 126.49, NULL, 'C', NULL, '1', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5515, 0, 0, 0, 0, '2012-11-07 00:00:00', 62.5, 8.9136, 7.4688, 78.8824, NULL, 'B', 'TAG List of $1262.00 includes initial set up and (1) nameplate. Additional, identical nameplates provided at $350.00 List', '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5516, 0, 0, 0, 0, '2012-11-12 00:00:00', 0, 0, 0, 0, NULL, 'A', NULL, '0', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5517, 0, 0, 0, 0, '2012-11-12 00:00:00', 81.96, 74.28, 62.24, 218.48, NULL, 'C', 'This TAG is used for a full device panel for the Blank/Blank unit assembly', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5518, 0, 0, 0, 0, '2012-11-12 00:00:00', NULL, NULL, NULL, NULL, NULL, 'B', NULL, '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5519, 0, 28, 0, 0, '2012-11-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Used on factory order 31709696, UCSD Campus Infrastructure Keylocks.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5519, 1, 28, 0, 0, '2012-11-13 00:00:00', 313.28, 74.28, 62.24, 449.8, NULL, NULL, 'Used on factory order 31709696, UCSD Campus Infrastructure Keylocks.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5520, 0, 0, 0, 0, '2012-11-13 00:00:00', 0, 148.56, 248.96, 397.52, NULL, 'F', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5520, 1, 0, 0, 0, '2012-11-13 00:00:00', 0, 148.56, 248.96, 397.52, NULL, 'F', NULL, '0', '0', '1', '0', '0', 12, '0', '1', 1, 'US'),
(5521, 0, 0, 0, 0, '2012-11-14 00:00:00', 920, 74.28, 124.48, 1118.76, NULL, 'B', 'Used on Q2C # 32476169 FHR East Main Sub', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5522, 0, 0, 0, 0, '2012-11-14 00:00:00', 1483.61, 297.12, 62.24, 1842.97, 'Price is per bay.', 'C', 'Used on f.o. 30138784-024, POLB Pier G Berth', '0', '0', '1', '0', '0', 24, '1', '0', 14, 'US'),
(5534, 0, 15, 0, 0, '2012-11-29 00:00:00', 3595.73, 148.56, 248.96, 3993.25, NULL, 'F', 'TAG is for Q2C # 32421466, Ridley Terminal Project. Includes factory labor and Engineering time.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5535, 0, 15, 0, 0, '2012-11-30 00:00:00', 10096, 148.56, 248.96, 10493.5, NULL, 'F', 'Used on Q2C # 32045482 Dover MacKay River MV SWGR-RL', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5536, 0, 20, 0, 0, '2012-12-03 00:00:00', 15420, 148.56, 248.96, 15817.5, NULL, 'F', 'Used on Q2C order #32212044 Maxville ECR Building.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5537, 0, 20, 0, 0, '2012-12-03 00:00:00', 34380, 148.56, 248.96, 34777.5, NULL, 'F', 'Used on Q2C #32212044, Maxville ECR Building', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5522, 1, 0, 0, 0, '2012-11-14 00:00:00', 1483.61, 297.12, 62.24, 1842.97, 'Price is per bay.', NULL, 'Used on f.o. 30138784-024, POLB Pier G Berth, This assembly has standard full height rear doors, (46028-004-50). For double doors, omit full height door assembly and replace with standard double door assembly 46028-004-51.', '0', '0', '1', '0', '0', 24, '1', '0', 14, 'US'),
(5522, 2, 0, 0, 0, '2012-11-14 00:00:00', 1483.61, 297.12, 62.24, 1842.97, 'Price is per bay.', NULL, 'Used on f.o. 30138784-024, POLB Pier G Berth, This assembly has standard full height rear doors, (46028-004-50). For double doors, omit full height door assembly and replace with standard double door assembly 46028-004-51. Use assembly MCD-00000-14525', '0', '0', '1', '0', '0', 24, '0', '0', 14, 'US'),
(5524, 0, 0, 0, 0, '2012-11-14 00:00:00', 261.007, 0, 1493.76, 1754.77, 'Price includes four (4) Agastats and 24 hours Engineering time', 'C', 'Used on Q2C # 31256172-009, 010 Cigna Wilde', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5524, 1, 0, 0, 0, '2012-11-14 00:00:00', 1044.28, 0, 1493.76, 2538.04, 'Price includes four (4) Agastats and 24 hours Engineering time', NULL, 'Used on Q2C # 31256172-009, 010 Cigna Wilde', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5525, 0, 0, 0, 0, '2012-11-14 00:00:00', 25, 0, 248.96, 273.96, 'Price is per bay.', 'B', 'Drawing supplied by Zenith Modification to be completed by Smyrna.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5526, 0, 0, 0, 0, '2012-11-15 00:00:00', 5741.95, 148.56, 248.96, 6139.47, 'Price Includes any special mounting by Engineering', 'C', 'Used on factory order 32476169, FHR East Main Sub. CT Measures 10.25 x 30.75 overall by 6.5 thickness, inside dimensions are as follows: 6.5 x 27.0', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5527, 0, 0, 0, 0, '2012-11-21 00:00:00', 1498.38, 37.14, 62.24, 1597.76, NULL, 'C', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5528, 0, 0, 0, 0, '2012-11-27 00:00:00', 2365.4, 148.56, 248.96, 2762.92, NULL, 'F', 'Quoted by John Gwin from Power Connections.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5503, 0, 0, 0, 0, '2012-11-01 00:00:00', 307.81, 0, 0, 307.81, 'List price difference per Digest', 'B', NULL, '1', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5505, 0, 14, 0, 0, '2012-11-01 00:00:00', 6396, 297.12, 497.92, 7191.04, NULL, 'C', 'Item 2- 751322 Expandable Pots Card, Item 3- 7501-24 4 wire AC data plug-in card, Item 4- Crating fee of $150.00', '0', '0', '1', '0', '0', 12, '1', '0', 11, 'US'),
(5505, 1, 14, 0, 0, '2012-11-01 00:00:00', 6396, 297.12, 497.92, 7191.04, NULL, NULL, 'Item 2- 751322 Expandable Pots Card, Item 3- 7501-24 4 wire AC data plug-in card, Item 4- Crating fee of $150.00', '0', '0', '1', '0', '0', 12, '0', '0', 11, 'US'),
(5506, 0, 0, 0, 0, '2012-11-05 00:00:00', 675.95, 74.28, 62.24, 812.47, 'Price is each.', 'A', 'Accepts twelve (12) CCh connector panels or modules: supplied with blank panels and one (1) UCC clamp kit', '0', '0', '1', '0', '0', 12, '0', '0', 1, 'US'),
(5529, 0, 15, 0, 0, '2012-11-28 00:00:00', 2088, 148.56, 248.96, 2485.52, NULL, 'F', 'Used on Q2C 32421466', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5529, 1, 15, 0, 0, '2012-11-28 00:00:00', 2088, 148.56, 248.96, 2485.52, NULL, NULL, 'Used on Q2C 32421466', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5530, 0, 15, 0, 0, '2012-11-28 00:00:00', 3419.6, 148.56, 248.96, 3817.12, NULL, 'F', 'Used on Q2C 32421466, Ridley Terminal Project', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5531, 0, 15, 0, 0, '2012-11-28 00:00:00', 2619.74, 148.56, 248.96, 3017.26, NULL, 'F', 'Used on Q2C 32421466 Ridley Terminal Project', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5532, 0, 14, 0, 0, '2012-11-28 00:00:00', 154.92, 222.84, 497.92, 875.68, NULL, 'D', 'Used on Q2C # 32542662 Outdoor Walk-in Metal-Clad', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5533, 0, 15, 0, 0, '2012-11-29 00:00:00', 2341, 148.56, 248.96, 2738.52, NULL, 'F', 'This TAG is for Q2C # 32421466, Ridley Terminal Project. The price includes factory labor and engineering time.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5538, 0, 14, 0, 0, '2012-12-04 00:00:00', 205, 74.28, 62.24, 341.52, NULL, 'B', 'Used on Q2C # 32533282, Priced as each . Use Quantity of four (4) per breaker.', '1', '1', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5539, 0, 0, 0, 0, '2012-12-05 00:00:00', 102.62, 0, 0, 102.62, NULL, 'C', 'This is not an adder, but full price for the set.', '1', '0', '0', '0', '0', 12, '1', '0', 13, 'US'),
(5539, 1, 0, 0, 0, '2012-12-05 00:00:00', 307.86, 0, 0, 307.86, NULL, NULL, 'This is not an adder, but full price for the set.', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5540, 0, 0, 0, 0, '2012-12-05 00:00:00', 10700, 0, 0, 10700, 'See attachments for cut sheet quote', 'G', 'Tag is for the CPT alone and does not include Engineering or Shop time to incorporate into an order. See attachments for cut sheet', '1', '0', '1', '0', '0', 12, '0', '0', 13, 'US'),
(5541, 0, 14, 0, 0, '2012-12-05 00:00:00', 357.28, 148.56, 62.24, 568.08, NULL, 'C', NULL, '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5542, 0, 14, 0, 0, '2012-12-05 00:00:00', 374.68, 148.56, 124.48, 647.72, NULL, 'C', NULL, '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5543, 0, 14, 0, 0, '2012-12-05 00:00:00', 387.97, 148.56, 124.48, 661.01, 'Price is per bay', 'C', NULL, '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5544, 0, 14, 0, 0, '2012-12-05 00:00:00', 213.14, 148.56, 62.24, 423.94, 'Price per bay', 'C', NULL, '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5545, 0, 14, 0, 0, '2012-12-05 00:00:00', 375.85, 148.56, 124.48, 648.89, 'Price per bay', 'C', NULL, '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5546, 0, 14, 0, 0, '2012-12-05 00:00:00', 374.68, 148.56, 124.48, 647.72, 'Price per bay', 'C', NULL, '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5547, 0, 14, 0, 0, '2012-12-05 00:00:00', 387.97, 148.56, 124.48, 661.01, 'Price per bay', 'C', NULL, '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5548, 0, 14, 0, 0, '2012-12-05 00:00:00', 314.12, 148.56, 62.24, 524.92, 'Price per bay', 'C', NULL, '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5549, 0, 14, 0, 0, '2012-12-05 00:00:00', 150, 297.12, 1244.8, 1691.92, 'The price is per bay', 'D', 'This TAG is an estimated price ONLY.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5550, 0, 14, 0, 0, '2012-12-05 00:00:00', 4299.92, 297.12, 248.96, 4846, 'Price is estimated', 'F', 'q2c # 32226310, Qualcomm', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5551, 0, 21, 0, 0, '2012-12-06 00:00:00', 278.5, 148.56, 248.96, 676.02, 'Tooling cost, $22,000,  to be split between Canada Purchasing and the customer and is a one time charge.', 'D', 'The depth of the 4000:5 C800 CT is, approx., 7.12 to 7.25', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5552, 0, 0, 0, 0, '2012-12-06 00:00:00', 721.88, 148.56, 62.24, 932.68, NULL, NULL, 'Use the 46007-632-50 22.0 wide frame transition. Used Q2C 32241512, 1019 Market Street, San Francisco. Customer to pull cable into adjacent unit.', '0', '0', '1', '0', '0', 24, '0', '0', 1, 'US'),
(5553, 0, 14, 0, 0, '2012-12-06 00:00:00', 1948, 297.12, 124.48, 2369.6, NULL, 'F', 'SEL Quote PCS12120415', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5554, 0, 14, 0, 0, '2012-12-06 00:00:00', 0, 0, 0, 0, NULL, 'F', 'This TAG is for the use of the low voltage comparmtnet on the 63 KA Arc Resistant equipment is be able to be applied to lower KA rated Metal-Clad Arc Resistant.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5555, 0, 14, 0, 0, '2012-12-06 00:00:00', 0, 0, 1244.8, 1244.8, 'Note: price is a one time charge', 'D', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5556, 0, 14, 0, 0, '2012-12-06 00:00:00', 721.88, 297.12, 995.84, 2014.84, 'Using price for 46007-632-50 as guide plus 16 hours engineering time.', 'D', 'Design to include main bus to matching 1200a copper/silver main bus on either side, bus compartment barrier (steel). The bus must be supported in the blank bay', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5556, 1, 14, 0, 0, '2012-12-06 00:00:00', 721.88, 297.12, 995.84, 2014.84, 'Using price for 46007-632-50 as guide plus 16 hours engineering time.', 'D', 'Design to include main bus to matching 2000a copper/silver plated main bus on either side, bus compartment barrier (steel). The bus must be supported in the blank bay', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5557, 0, 0, 0, 0, '2012-12-11 00:00:00', 4878, 594.24, 124.48, 5596.72, 'NOTE: USE SPECIAL LIST PRICE OF $62,000.00', 'D', 'For Q2C #32567506', '0', '0', '1', '0', '0', 12, '0', '0', 13, 'US'),
(5549, 1, 14, 0, 0, '2012-12-05 00:00:00', 150, 297.12, 1244.8, 1691.92, 'The price is per bay', NULL, 'This is a revised pricing for the pull box on the Arc Resistant', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5549, 2, 14, 0, 0, '2012-12-05 00:00:00', 25, 297.12, 62.24, 384.36, 'The price is per bay', NULL, 'This is a revised pricing for the pull box on the Arc Resistant', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5558, 0, 0, 0, 0, '2012-12-12 00:00:00', 0, 0, 1244.8, 1244.8, 'This is a one time charge for the design of the pull box on the Arc Resistant Metal-Clad', 'D', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5559, 0, 14, 0, 0, '2012-12-12 00:00:00', 28800, 0, 62.24, 28862.2, 'QUOTE PER # SP-104759 DATED 12/12/2012.', 'C', 'This is a special CPT, part number 3CPTD7-125-75-SDXXXXX, DIMENSIONS PER iti DRAWING 0173C28797, NOTE: Assembly similar for 27Kv 46027-206 for lower Fuse drawout, 46027-204 for upper fuse drawout with lower breaker.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5560, 0, 0, 0, 0, '2012-12-12 00:00:00', 34169.9, 0, 0, 34169.9, NULL, 'E', NULL, '1', '0', '0', '0', '0', 12, '1', '0', 13, 'US'),
(5560, 1, 0, 0, 0, '2012-12-12 00:00:00', 12999.4, 0, 0, 12999.4, NULL, 'E', NULL, '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5561, 0, 5, 0, 0, '2012-12-13 00:00:00', 8808.52, 148.56, 248.96, 9206.04, 'Priced each', 'F', 'Used on Q2C # 30760974 Bonnybrook wwtp', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5562, 0, 20, 0, 0, '2012-12-13 00:00:00', 1511.25, 148.56, 248.96, 1908.77, 'Priced as each', 'F', 'Allied Stock #: 70056168', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5563, 0, 14, 0, 0, '2012-12-13 00:00:00', 258.87, 74.28, 62.24, 395.39, 'Priced per each.', NULL, 'This CT is purchased from Amran. It has the same "case" size as the ITI type 785 CT''s. The width of the case is 6.5 inches. Refer to assembly 46004-582 (non-arc) as a reference.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5564, 0, 30, 0, 0, '2012-12-13 00:00:00', 9975, 297.12, 124.48, 10396.6, 'Priced each', 'F', 'First used on Q2C 32616835, edgewater Unit 5', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5565, 0, 14, 0, 0, '2012-12-13 00:00:00', 14881.4, 297.12, 248.96, 15427.5, NULL, 'F', 'Please see attachment', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5566, 0, 14, 0, 0, '2012-12-18 00:00:00', 1305, 297.12, 124.48, 1726.6, NULL, 'F', 'Used on Q2c # 32638130', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5567, 0, 14, 0, 0, '2012-12-18 00:00:00', 2782, 297.12, 124.48, 3203.6, NULL, 'F', 'Used on Q2C # 32638130', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5568, 0, 14, 0, 0, '2012-12-18 00:00:00', NULL, NULL, NULL, NULL, NULL, 'F', 'Used on Q2C #32638130', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5568, 1, 14, 0, 0, '2012-12-18 00:00:00', 3130, 297.12, 124.48, 3551.6, NULL, NULL, 'Used on Q2C #32638130', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5568, 2, 14, 0, 0, '2012-12-18 00:00:00', 3130, 297.12, 124.48, 3551.6, NULL, NULL, 'Used on Q2C #32638130', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5569, 0, 0, 0, 0, '2013-01-02 00:00:00', 0, 0, 0, 0, NULL, 'B', NULL, '1', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5570, 0, 0, 0, 0, '2013-01-04 00:00:00', NULL, NULL, NULL, NULL, NULL, 'F', 'This TAG is for the Columbus, PD System, Q2C # 29935906. Smyrna to install', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5570, 1, 0, 0, 0, '2013-01-04 00:00:00', 20082.5, 297.12, 248.96, 20628.6, NULL, NULL, 'This TAG is for the Columbus, PD System, Q2C # 29935906. Smyrna to install', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5571, 0, 0, 0, 0, '2013-01-04 00:00:00', 6980.5, 297.12, 248.96, 7526.58, NULL, NULL, 'This TAG is for Q2C # 29935906, for Columbus, PD System. Smyrna to install', '1', '0', '0', '0', '0', 12, '0', '0', 14, 'US'),
(5572, 0, 0, 0, 0, '2013-01-04 00:00:00', 1186, 297.12, 248.96, 1732.08, NULL, NULL, 'Used on Q2C f.o. # 30271741-033, Clintondale Pump Station Improvements.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5573, 0, 0, 0, 0, '2013-01-07 00:00:00', 0, 0, 0, 0, NULL, 'A', NULL, '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5574, 0, 0, 0, 0, '2013-01-07 00:00:00', 0, 0, 0, 0, NULL, 'A', NULL, '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5575, 0, 0, 0, 0, '2013-01-07 00:00:00', -38.6, -37.14, 0, -75.74, 'Price is for "negative" dollars', 'B', 'The OEM is Kinney Electric f.o. 32666099-002', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5576, 0, 0, 0, 0, '2013-01-07 00:00:00', 100, 297.12, 1493.76, 1890.88, NULL, NULL, 'Q2C #32033901', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5577, 0, 0, 0, 0, '2013-01-08 00:00:00', 1883, 222.84, 186.72, 2292.56, 'Per Maher Shehata, to be competitive, use a x7 multiplier for a tag list of $20,506.92.', 'D', 'IGNORE TAG LIST BELOW and USE LIST OF $20,506.92', '0', '0', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5579, 0, 30, 0, 0, '2013-01-09 00:00:00', 753, 74.28, 62.24, 889.52, NULL, 'F', 'For the K & S Potash MV order, Q2C # 32130133, case size 20TE', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5578, 0, 0, 0, 0, '2013-01-09 00:00:00', 2246.82, 74.28, 62.24, 2383.34, NULL, 'D', NULL, '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5580, 0, 30, 0, 0, '2013-01-09 00:00:00', 5448, 148.56, 124.48, 5721.04, 'P643- is priced at $3620.00 ea., The P141 is priced at $1828.00 ea = $5448.00 cost', 'F', 'for K & S Potash MV Q2C # 32130133', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5580, 1, 30, 0, 0, '2013-01-09 00:00:00', 3620, 74.28, 62.24, 3756.52, 'P643- is priced at $3620.00 ea., The P141 is priced at $1828.00 ea = $5448.00 cost', NULL, 'for K & S Potash MV Q2C # 32130133', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5580, 2, 30, 0, 0, '2013-01-09 00:00:00', 3620, 74.28, 62.24, 3756.52, 'P643- is priced at $3620.00 ea.', 'F', 'for K & S Potash MV Q2C # 32130133', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5581, 0, 30, 0, 0, '2013-01-09 00:00:00', 1828, 74.28, 62.24, 1964.52, NULL, 'F', 'For the K & S Potash MV, Q2C # 32130133', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5582, 0, 0, 0, 0, '2013-01-09 00:00:00', 0, 0, 1244.8, 1244.8, NULL, 'C', 'This TAG is for Engineering time for customer changes', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5583, 0, 0, 0, 0, '2013-01-09 00:00:00', 0, 0, 0, 0, NULL, 'A', NULL, '1', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5584, 0, 20, 0, 0, '2013-01-10 00:00:00', 3228, 148.56, 124.48, 3501.04, NULL, 'F', 'Q2C 32656622, Queenston Mining', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5584, 1, 0, 0, 0, '2013-01-10 00:00:00', 3228, 148.56, 124.48, 3501.04, NULL, NULL, 'Q2C 32656622 Queenston Mining', '0', '0', '1', '0', '0', 12, '0', '1', 1, 'US'),
(5585, 0, 20, 0, 0, '2013-01-10 00:00:00', 7604, 148.56, 124.48, 7877.04, NULL, 'F', 'Q2C 32656622, Queenston Mining', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5586, 0, 20, 0, 0, '2013-01-10 00:00:00', 1526, 148.56, 124.48, 1799.04, NULL, 'F', 'Q2C 32656622, Queenston Mining', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5587, 0, 20, 0, 0, '2013-01-10 00:00:00', 225.76, 148.56, 124.48, 498.8, NULL, 'C', 'Q2C 32656622, Queenston Mining', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5588, 0, 20, 0, 0, '2013-01-10 00:00:00', 125.25, 148.56, 62.24, 336.05, NULL, 'C', 'q2c 32656622, Queenston Mining', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5589, 0, 20, 0, 0, '2013-01-10 00:00:00', 225.76, 148.56, 62.24, 436.56, NULL, 'C', 'Q2C 32656622, Queenston Mining', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5592, 0, 20, 0, 0, '2013-01-10 00:00:00', 125.25, 148.56, 62.24, 336.05, NULL, 'C', 'Q2C Queenston Mining', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5593, 0, 20, 0, 0, '2013-01-10 00:00:00', 23.71, 74.28, 62.24, 160.23, NULL, 'B', 'Q2C 32314479-002 Volcan Motorpact', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5594, 0, 0, 0, 0, '2013-01-11 00:00:00', 956.65, 148.56, 124.48, 1229.69, NULL, 'E', 'For Q2C order 32717793, Air Liquid', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5595, 0, 0, 0, 0, '2013-01-11 00:00:00', 2500, 4456.8, 933.6, 7890.4, NULL, 'F', 'Customer Changes', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5595, 1, 0, 0, 0, '2013-01-11 00:00:00', 2500, 4456.8, 933.6, 7890.4, NULL, NULL, 'Customer Changes', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5595, 2, 0, 0, 0, '2013-01-11 00:00:00', 2500, 4456.8, 1742.72, 8699.52, NULL, NULL, 'Customer Changes', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5596, 0, 0, 0, 0, '2013-01-14 00:00:00', 500, 594.24, 995.84, 2090.08, 'Price includes 16 Hours Engineering design time.', 'D', 'Q2C 32675097- 15Kv Metal-Clad Switchgear Arcelor Mittal', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5596, 1, 0, 0, 0, '2013-01-14 00:00:00', 500, 594.24, 995.84, 2090.08, 'Price includes 16 Hours Engineering design time.', NULL, 'Q2C 32675097- 15Kv Metal-Clad Switchgear Arcelor Mittal', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5596, 2, 0, 0, 0, '2013-01-14 00:00:00', 500, 594.24, 995.84, 2090.08, 'Price includes 16 Hours Engineering design time.', NULL, 'Q2C 32675097- 15Kv Metal-Clad Switchgear Arcelor Mittal', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5596, 3, 0, 0, 0, '2013-01-14 00:00:00', 500, 594.24, 995.84, 2090.08, 'Price includes 16 Hours Engineering design time.', NULL, 'Q2C 32675097- 15Kv Metal-Clad Switchgear Arcelor Mittal', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5596, 4, 0, 0, 0, '2013-01-14 00:00:00', 500, 594.24, 995.84, 2090.08, 'Price includes 16 Hours Engineering design time.', NULL, 'Q2C 32675097- 15Kv Metal-Clad Switchgear Arcelor Mittal', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5596, 5, 0, 0, 0, '2013-01-14 00:00:00', 500, 594.24, 995.84, 2090.08, 'Price includes 16 Hours Engineering design time.', NULL, 'Q2C 32675097- 15Kv Metal-Clad Switchgear Arcelor Mittal', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5596, 6, 0, 0, 0, '2013-01-14 00:00:00', 500, 594.24, 995.84, 2090.08, 'Price includes 16 Hours Engineering design time.', NULL, 'Q2C 32675097- 15Kv Metal-Clad Switchgear Arcelor Mittal', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5597, 0, 0, 0, 0, '2013-01-14 00:00:00', 2500, 594.24, 1244.8, 4339.04, 'Price includes 20 hours Engineering estimated design time.', 'D', 'Q2C 30479120, Jamie Creek- Customer utility section for power generation.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5598, 0, 0, 0, 0, '2013-01-14 00:00:00', 0, 0, 995.84, 995.84, NULL, 'B', 'Estimates 16 hours Engineering time', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5598, 1, 0, 0, 0, '2013-01-14 00:00:00', 0, 0, 995.84, 995.84, NULL, NULL, 'Estimates 16 hours Engineering time. Miami University Inv, 29020887-002', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5599, 0, 0, 0, 0, '2013-01-14 00:00:00', 0, 0, 995.84, 995.84, NULL, NULL, 'Q2C- 32423013-001 Rock Tenn Paper', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5600, 0, 0, 0, 0, '2013-01-14 00:00:00', 700, 148.56, 62.24, 910.8, NULL, 'F', 'Q2C 32699758', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5601, 0, 20, 0, 0, '2013-01-15 00:00:00', 2247.8, 148.56, 124.48, 2520.84, NULL, 'F', 'Q2C 32675097- 15Kv Zswitchgear Arcelor Mittal', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5602, 0, 20, 0, 0, '2013-01-15 00:00:00', 2939, 148.56, 124.48, 3212.04, NULL, 'F', 'Q2C #32675097- 15Kv Switchgear Arcelor Mittal', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5603, 0, 0, 0, 0, '2013-01-15 00:00:00', 0, 0, 0, 0, 'This is a $0.00 dollar TAG', NULL, 'Q2C 32062436, Carlise Syntec', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5604, 0, 0, 0, 0, '2013-01-15 00:00:00', 41.52, 74.28, 62.24, 178.04, NULL, 'B', 'This is a "make" part made with #11 ga steel', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5695, 0, 0, 0, 0, '2013-02-21 00:00:00', 0, 0, 0, 0, NULL, 'C', 'see atached', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5695, 1, 0, 0, 0, '2013-02-21 00:00:00', 0, 0, 0, 0, NULL, NULL, 'see atached. The CPT is supplied by customer Q2C # 32775473 West Fraser Chetwynd', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5696, 0, 10, 0, 0, '2013-02-22 00:00:00', 200, 594.24, 497.92, 1292.16, 'The price is list price.', 'D', 'This TAG to be added to each line-up', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5697, 0, 0, 0, 0, '2013-02-22 00:00:00', 598.38, 0, 0, 598.38, 'Tag includes Engineering and Shop Time', 'B', 'Q2C #21879962-001; 24520787', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5698, 0, 20, 0, 0, '2013-02-25 00:00:00', NULL, NULL, NULL, NULL, NULL, 'D', 'Q2C # 24397389', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5698, 1, 20, 0, 0, '2013-02-25 00:00:00', 3419.6, 445.68, 497.92, 4363.2, NULL, NULL, 'Q2C # 24397389', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5698, 2, 20, 0, 0, '2013-02-25 00:00:00', 526.7, 445.68, 497.92, 1470.3, NULL, NULL, 'Q2C # 24397389', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5699, 0, 20, 0, 0, '2013-02-25 00:00:00', 0, 0, 497.92, 497.92, NULL, 'D', 'Q2C # 32936271', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5700, 0, 20, 0, 0, '2013-02-26 00:00:00', 0, 0, 0, 0, NULL, 'C', 'Q2C # 32914148', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5701, 0, 20, 0, 0, '2013-02-26 00:00:00', 241.14, 148.56, 124.48, 514.18, NULL, 'D', 'Q2C # 32914148', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5702, 0, 20, 0, 0, '2013-02-26 00:00:00', 14.19, 74.28, 62.24, 150.71, NULL, 'B', 'Q2C # 32914148', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5703, 0, 20, 0, 0, '2013-02-26 00:00:00', 0, 0, 1493.76, 1493.76, NULL, 'D', 'Select the 3750 KVA Powercast Transformer in the selector and add this TAG', '0', '0', '1', '0', '0', 24, '0', '0', 14, 'US'),
(5704, 0, 14, 0, 0, '2013-02-27 00:00:00', 749, 74.28, 124.48, 947.76, NULL, 'F', 'Q2C # 32952514 Romona & Vally- Solar Project. Price includes CD with Software, Documenattion CD, Installation Guid, Rack Mounting support rails, Smart UPS signalling RS-232 cable, USB cable.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5705, 0, 20, 0, 0, '2013-02-28 00:00:00', 2833.03, 74.28, 124.48, 3031.79, NULL, 'E', 'This is for the Brucejack Project, British Columbia', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5603, 1, 0, 0, 0, '2013-01-15 00:00:00', 16.33, 0, 0, 16.33, NULL, NULL, 'Q2C 32703161, West Shore Hospital. The TAG is for IBC/ASCE7 Seismic Qualification', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5605, 0, 0, 0, 0, '2013-01-15 00:00:00', 5000, 594.24, 2489.6, 8083.84, NULL, 'D', 'Pictures and drawings and dimensions must made available before design is started. Potential for increase in engineering time must be considered.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5597, 1, 0, 0, 0, '2013-01-14 00:00:00', 2538.06, 594.24, 1244.8, 4377.1, 'Price includes 20 hours Engineering estimated design time.', NULL, 'Q2C 30479120, Jamie Creek- Customer utility section for power generation. The meter', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5597, 2, 0, 0, 0, '2013-01-14 00:00:00', 2538.06, 594.24, 1244.8, 4377.1, 'Price includes 20 hours Engineering estimated design time.', NULL, 'Q2C 30479120, Jamie Creek- Customer utility section for power generation. The meter bay has (2) 3000a JCM-% Ct''s and (2) Stationary mounted JVM-5 Vt''s', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5606, 0, 0, 0, 0, '2013-01-17 00:00:00', 0, 0, 2489.6, 2489.6, 'Price is for Engineering time', 'F', 'Q2C 32716162, royal Service Hotel- MV Transf. System', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5607, 0, 0, 0, 0, '2013-01-17 00:00:00', 0, 0, 1244.8, 1244.8, 'Engineering design time', 'C', 'Note: this order has a maion bus connectrion to a load breaker switch, unknown supplier.      Q2C 32763784 Mustang', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5608, 0, 0, 0, 0, '2013-01-17 00:00:00', 0, 2971.2, 0, 2971.2, 'This is for factory labor of 40 hours', 'F', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5609, 0, 0, 0, 0, '2013-01-17 00:00:00', 170, 74.28, 62.24, 306.52, 'Price is an estimated price. No part number indicated by customer.', NULL, 'Q2C 32682204, Ecopetrol, Columbia', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5610, 0, 0, 0, 0, '2013-01-18 00:00:00', 45.72, 74.28, 62.24, 182.24, 'Price is for (1) device pan 46007-512-02, white', 'B', 'The "Best Battery System" to be supplied by PowerLogic. Q2C 32387738, USAA', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5611, 0, 0, 0, 0, '2013-01-18 00:00:00', 82.5, 74.28, 124.48, 281.26, 'Price is per keylock', 'D', 'The Q2C #31692763-001, 002, 003, 004', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5612, 0, 0, 0, 0, '2013-01-18 00:00:00', 500, 148.56, 995.84, 1644.4, 'Pricing is for Engineering design time, factory labor and materials', 'D', 'Q2C #32146970, Costco', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5613, 0, 0, 0, 0, '2013-01-18 00:00:00', 0, 0, 1244.8, 1244.8, 'Price is for 20 hours of Engineering time.', 'D', 'Q2C 32485575 Furnace Interconnectiron Circuit and UPS Proposed Resolution.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5614, 0, 0, 0, 0, '2013-01-18 00:00:00', 6447.08, 74.28, 124.48, 6645.84, NULL, 'F', 'Q2C # 32682204 Ecopetrol Columbia', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5615, 0, 0, 0, 0, '2013-01-18 00:00:00', 2392, 74.28, 124.48, 2590.76, NULL, 'F', 'Q2C 32682204, Ecopetrol, Columbia', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5616, 0, 0, 0, 0, '2013-01-18 00:00:00', 0, 0, 248.96, 248.96, NULL, 'C', 'Thie time is for the Application Engieer and Electrical Design time.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5619, 0, 0, 0, 0, '2013-01-21 00:00:00', 9279, 148.56, 124.48, 9552.04, NULL, 'F', 'q2c 32655690, Project Neptune Terminals MV switchgear', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5620, 0, 0, 0, 0, '2013-01-21 00:00:00', 950, 148.56, 124.48, 1223.04, NULL, 'D', 'Order minimum (2) for each breaker compartment.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5621, 0, 0, 0, 0, '2013-01-21 00:00:00', 100, 74.28, 62.24, 236.52, NULL, 'D', 'Q2C #32655690, Project of Neptunme Terminals MV Switchgear', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5622, 0, 0, 0, 0, '2013-01-21 00:00:00', 2150, 74.28, 62.24, 2286.52, NULL, NULL, 'Q2C # 32655690 Project of Neptune Terminals MV switchgear', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5623, 0, 0, 0, 0, '2013-01-21 00:00:00', 349.48, 74.28, 497.92, 921.68, 'Provide key interlocking per breaker to the rear doors', 'C', 'Q2C 32655690, Project of Neptune Terminals MV switchgear', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5625, 0, 0, 0, 0, '2013-01-21 00:00:00', 6444.03, 148.56, 248.96, 6841.55, NULL, 'F', 'Q2C # 32681254, Scaramento WTP. Quantity of (2) required on this order.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5626, 0, 0, 0, 0, '2013-01-21 00:00:00', 0, 0, 186.72, 186.72, NULL, 'C', 'The TAG is estimated at three (3) hours of Engineering time. Q2C # 31332156, SGA2, Chiller 2 & 4, Line items 016, 020 and 022. Three hours per line item.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5627, 0, 14, 0, 0, '2013-01-22 00:00:00', 216.9, 74.28, 124.48, 415.66, NULL, 'F', 'Q2C # 32655690, Project of Neptune Terminals MV Switchgear', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5628, 0, 28, 0, 0, '2013-01-22 00:00:00', 4738.75, 148.56, 248.96, 5136.27, NULL, 'F', 'RSG2100-B-DP-HI-XX-FX01-FX01-FX01-FX01-FG01-FX01-FX01-TX01-TX01-XX. Q2C # 32655690, Project of Neptune Terminals MV Switchgear.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5629, 0, 0, 0, 0, '2013-01-22 00:00:00', 373.2, 148.56, 124.48, 646.24, NULL, 'C', 'Duke Universty Medical Center, Q2C # 32774185', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5630, 0, 0, 0, 0, '2013-01-22 00:00:00', -480, 0, 62.24, -417.76, 'The deduct is $480.00 for each starter', 'C', 'Q2C # 32252405, Salof MV Line-up', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5630, 1, 0, 0, 0, '2013-01-22 00:00:00', -480, 0, 62.24, -417.76, 'The deduct is $480.00 for each starter', NULL, 'Q2C # 32252405, Salof MV Line-up', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5632, 0, 10, 0, 0, '2013-01-23 00:00:00', 0, 0, 2489.6, 2489.6, 'Plist price is for Engineering design time in hours', 'D', 'q2c # 312632821-001, Santa Monic High School', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5633, 0, 5, 0, 0, '2013-01-23 00:00:00', 0, 0, 2489.6, 2489.6, 'Price is engineering time in hours', 'F', 'Q2C # 32786843', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5634, 0, 0, 0, 0, '2013-01-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Use', '0', '0', '0', '0', '0', 12, '1', '0', 1, 'US'),
(5634, 1, 0, 0, 0, '2013-01-25 00:00:00', 1558.79, 297.12, 497.92, 2353.83, NULL, 'D', 'Use TAG 5448 as guide.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5635, 0, 0, 0, 0, '2013-01-25 00:00:00', 796, 37.14, 62.24, 895.38, NULL, 'B', NULL, '1', '1', '1', '1', '0', 12, '1', '0', 13, 'US'),
(5636, 0, 0, 0, 0, '2013-01-25 00:00:00', 600, 37.14, 62.24, 699.38, NULL, 'B', NULL, '0', '0', '0', '0', '0', 12, '1', '0', 13, 'US'),
(5636, 1, 0, 0, 0, '2013-01-25 00:00:00', 600, 37.14, 62.24, 699.38, NULL, NULL, 'Tag is for each window', '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5635, 1, 0, 0, 0, '2013-01-25 00:00:00', 796, 37.14, 62.24, 895.38, NULL, NULL, 'Tag is for each window', '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5637, 0, 0, 0, 0, '2013-01-25 00:00:00', 0, 0, 995.84, 995.84, NULL, 'D', 'Q2C # 32152764- 002 and 003', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5638, 0, 0, 0, 0, '2013-01-25 00:00:00', 85, 74.28, 62.24, 221.52, NULL, 'C', 'q2c # 32655690, Project of Neptune Terminal MV Swgr.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5639, 0, 0, 0, 0, '2013-01-25 00:00:00', 136.23, 222.84, 497.92, 856.99, NULL, 'D', 'Q2C #  31459294-004 and 005 Metal-Clad Gear & Battery System for Steel Dynamic', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5640, 0, 0, 0, 0, '2013-01-28 00:00:00', 0, 0, 995.84, 995.84, NULL, 'D', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5641, 0, 0, 0, 0, '2013-01-28 00:00:00', 0, 0, 995.84, 995.84, NULL, 'E', ' Q2C 32128964-001 Change order', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5642, 0, 0, 0, 0, '2013-01-29 00:00:00', 4935, 148.56, 248.96, 5332.52, 'P746_LANG_0-Eng,Fr,Germ,Span, P746_SOFT_03 version 03: Cyber Security, P746_CUST_8-Std version, P746_SUFF_K-K: Extended Phase 2 Cpu', NULL, 'TAG includes P746_VAUX-3-110-250vdc(100-240vac), P746_INVN_1-CT1-CT18 In=(110/120v), P746_HWOP_B-ethernet (100Mbits) plus IRIG-B(Demodulated), P746_SPEC_A Side Case 16,P746_PROT_6-IEC 61850 over Ethernet and courier via rear K-bus/RS485, P746_MNTG_M,', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5643, 0, 40, 0, 0, '2013-01-30 00:00:00', 23.21, 148.56, 124.48, 296.25, NULL, 'C', 'q2c # 32226310 Qualcomm CoGen', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5644, 0, 20, 0, 0, '2013-01-30 00:00:00', 4026, 148.56, 124.48, 4299.04, NULL, 'F', 'Q2C # 32770044 Cummins-Arcelor Mittal', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5645, 0, 30, 0, 0, '2013-01-30 00:00:00', 3393, 148.56, 124.48, 3666.04, NULL, 'F', 'Q2C #30813771', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5646, 0, 20, 0, 0, '2013-01-30 00:00:00', 1739, 148.56, 124.48, 2012.04, NULL, 'F', 'Q2C # 32327618 Bechtel: Rio Mesa Solo Power Thermal', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5646, 0, 0, 0, 0, '2013-01-30 00:00:00', 1739, 148.56, 124.48, 2012.04, NULL, NULL, 'Q2C # 32317618, Bechtel: Rio Mesa Solo Power Thermal', '0', '0', '1', '0', '0', 12, '0', '1', 1, 'US'),
(5647, 0, 20, 0, 0, '2013-01-30 00:00:00', 1047, 148.56, 124.48, 1320.04, NULL, 'F', 'Q2C # 32327618, Bechtel: Rio Mesa Solo Power Thermal', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5648, 0, 20, 0, 0, '2013-01-30 00:00:00', 2543, 148.56, 124.48, 2816.04, NULL, 'E', 'Q2C # 32327618, Bechtel: Rio Mesa Solo Power Thermal', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5649, 0, 20, 0, 0, '2013-01-30 00:00:00', 2543, 148.56, 124.48, 2816.04, NULL, 'F', 'Q2C $ 32327618, Bechtel: Rio Mesa solo Power Thermal', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5650, 0, 20, 0, 0, '2013-01-31 00:00:00', 0, 297.12, 248.96, 546.08, NULL, 'F', 'Q2C # 32791335, Gibson energy MV Switchgear.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5651, 0, 20, 0, 0, '2013-01-31 00:00:00', 2173, 297.12, 248.96, 2719.08, 'Price includes factory labor and Engineering time.', 'F', 'Q2C # 32730625 Cinncinnati (SEGA Inc)', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5652, 0, 20, 0, 0, '2013-01-31 00:00:00', 1106, 148.56, 124.48, 1379.04, 'Price is LIST dollars includes factory labor and Engineering time.', 'F', 'q2c # 32730625- Cinncinnati (SEGA Inc)', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5653, 0, 20, 0, 0, '2013-02-01 00:00:00', 9316.5, 148.56, 124.48, 9589.54, NULL, 'F', 'Q2C # 32280554, Schneider Chile', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5654, 0, 20, 0, 0, '2013-02-01 00:00:00', 11670.7, 148.56, 124.48, 11943.7, NULL, 'F', 'Q2C # 32280554, Schneider Chile', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5655, 0, 20, 0, 0, '2013-02-01 00:00:00', 1581, 148.56, 124.48, 1854.04, NULL, 'E', 'Q2C # 32791335, Gibson Energy MV Switchgear', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5656, 0, 20, 0, 0, '2013-02-01 00:00:00', 95.47, 74.28, 62.24, 231.99, NULL, 'E', 'Q2C # 31412862, USDA', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5657, 0, 20, 0, 0, '2013-02-02 00:00:00', 117, 74.28, 124.48, 315.76, NULL, 'D', 'Q2C # 32485575-004. This is a change order', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5658, 0, 10, 0, 0, '2013-02-04 00:00:00', 5450.72, 148.56, 124.48, 5723.76, NULL, 'F', 'General TAG, no Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5659, 0, 20, 0, 0, '2013-02-05 00:00:00', 47.23, 74.28, 62.24, 183.75, NULL, 'D', 'Q2C # 32593758, Selkirk Regional Health Centre-RL', '1', '1', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5660, 0, 20, 0, 0, '2013-02-05 00:00:00', 95.04, 74.28, 62.24, 231.56, NULL, 'C', 'Q2C # 32152051, SDCOC work Space Clarifications', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5661, 0, 0, 0, 0, '2013-02-05 00:00:00', NULL, NULL, NULL, NULL, NULL, 'C', NULL, '1', '1', '1', '1', '0', 12, '1', '0', 13, 'US'),
(5662, 0, 0, 0, 0, '2013-02-06 00:00:00', 1807, 148.56, 248.96, 2204.52, NULL, NULL, 'SEL quote PCS13020501', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5663, 0, 0, 0, 0, '2013-02-06 00:00:00', 62.43, 0, 62.24, 124.67, 'TAG is for the 10E fuse.', NULL, 'Mayo Hospital: PSG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5664, 0, 100, 0, 0, '2013-02-06 00:00:00', 12.37, 74.28, 124.48, 211.13, 'Price incluides the relay and Engineering time.', 'C', 'Q2C # 32226310, Qualcom  mCogen Plant and Data Center', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5665, 0, 25, 0, 0, '2013-02-06 00:00:00', 22154, NULL, NULL, NULL, NULL, 'F', 'Red Chris Project', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5665, 1, 25, 0, 0, '2013-02-06 00:00:00', 22154, 148.56, 248.96, 22551.5, NULL, NULL, 'Red Chris Project', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5665, 2, 25, 0, 0, '2013-02-06 00:00:00', 22154, 148.56, 248.96, 22551.5, NULL, NULL, 'Red Chris Project', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5665, 3, 25, 0, 0, '2013-02-06 00:00:00', 10945.5, 148.56, 248.96, 11343, NULL, NULL, 'Red Chris Project', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5665, 4, 25, 0, 0, '2013-02-06 00:00:00', 8156.86, 148.56, 248.96, 8554.38, NULL, NULL, 'Red Chris Project. This is a TAG adder', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5665, 5, 25, 0, 0, '2013-02-06 00:00:00', 10945.5, 148.56, 248.96, 11343, NULL, NULL, 'Red Chris Project. This is a TAG adder', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5665, 6, 25, 0, 0, '2013-02-06 00:00:00', 10945.5, 148.56, 248.96, 11343, NULL, NULL, 'Red Chris Project. This is a TAG adder', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5665, 7, 25, 0, 0, '2013-02-06 00:00:00', 8156.86, 148.56, 248.96, 8554.38, NULL, NULL, 'Red Chris Project. This is a TAG adder', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5666, 0, 20, 0, 0, '2013-02-07 00:00:00', 3643, 148.56, 124.48, 3916.04, NULL, 'F', 'FOR ADM-D1098= AIRPORT OF MONTREAL', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5667, 0, 0, 0, 0, '2013-02-07 00:00:00', 170.68, 55.71, 31.12, 257.51, 'The devices on the door will be (8) control switches (2438D), (8) Green Pilot Lights (9001KP38LGG31, (8) Red Pilot lights (9001KP38LRR31', NULL, 'Q2C #32817063, Eau Claire WWTF', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5668, 0, 20, 0, 0, '2013-02-08 00:00:00', 9809.55, 148.56, 248.96, 10207.1, NULL, 'F', 'Q2c # 32843131, Devon Ferrier Plant', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5669, 0, 20, 0, 0, '2013-02-08 00:00:00', 8096.69, 148.56, 248.96, 8494.21, NULL, 'F', 'Q2C # 32843131, Deven Ferrier Plant', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5670, 0, 20, 0, 0, '2013-02-08 00:00:00', 1800, 148.56, 124.48, 2073.04, NULL, 'B', 'Replaces TAG 07-780', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5671, 0, 20, 0, 0, '2013-02-08 00:00:00', 2505, 148.56, 186.72, 2840.28, NULL, 'B', 'Replaces TAG 07-1478', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5672, 0, 20, 0, 0, '2013-02-11 00:00:00', 5950.72, 148.56, 124.48, 6223.76, NULL, 'F', 'Q2C # 32847231, Crescent Point', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5665, 8, 25, 0, 0, '2013-02-06 00:00:00', 8156.86, 148.56, 248.96, 8554.38, NULL, NULL, 'Red Chris Project. This is a TAG adder. The width of the "medium duty autotransformer is 59.0". If "heavey" duty transformer is wider than 59.0",  it must be reviewed with Application engineering to determine engineering time dor design time.', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5673, 0, 20, 0, 0, '2013-02-12 00:00:00', 800, 0, 0, 800, 'Use LIST adder plus any options required', 'D', 'Use as a TAG adder. Select SEL 751 relay in product selector the add this TAG with additional cost. The options available for this relay vary', '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5675, 0, 10, 0, 0, '2013-02-12 00:00:00', 48.15, 74.28, 62.24, 184.67, NULL, 'B', 'Q2C # 31731009-001', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5675, 0, 0, 0, 0, '2013-02-12 00:00:00', 48.15, 74.28, 62.24, 184.67, NULL, NULL, NULL, '0', '0', '1', '0', '0', 12, '1', '0', 1, 'US'),
(5675, 1, 0, 0, 0, '2013-02-12 00:00:00', 48.15, 74.28, 62.24, 184.67, NULL, NULL, 'Use 46021-171-01 for single bay', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5675, 1, 10, 0, 0, '2013-02-12 00:00:00', 48.15, 74.28, 62.24, 184.67, NULL, NULL, 'Q2C # 31731009-001', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5675, 2, 10, 0, 0, '2013-02-12 00:00:00', 48.15, 74.28, 62.24, 184.67, NULL, NULL, 'Q2C # 31731009-001, Use pallet 46021-171-01 for one (1) bay', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5675, 2, 0, 0, 0, '2013-02-12 00:00:00', 48.15, 74.28, 62.24, 184.67, NULL, NULL, 'Use 46021-171-01 for single bay', '0', '0', '1', '0', '0', 12, '0', '1', 14, 'US'),
(5676, 0, 10, 0, 0, '2013-02-12 00:00:00', 61, 74.28, 62.24, 197.52, NULL, 'B', 'Use 46021-172-01 for a twp (2) bay shipping section', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5677, 0, 0, 0, 0, '2013-02-12 00:00:00', 170.68, 55.71, 31.12, 257.51, NULL, 'B', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5678, 0, 10, 0, 0, '2013-02-12 00:00:00', 0, 0, 62.24, 62.24, NULL, 'D', 'The esitmated time for the door lay outs is 1 hour per door. Add this TAG for the ISO doors per door', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5679, 0, 0, 0, 0, '2013-02-12 00:00:00', 5667.84, 148.56, 248.96, 6065.36, 'Price is for all items listed in TAG notes.', NULL, 'Items include: (1) 10KT-HSPHL-TF, (1) HSPM -H, (1) HSPM-L, (2) 10K2-2GCU, (8) 10K4-RJ45.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5661, 1, 0, 0, 0, '2013-02-05 00:00:00', 4312.5, 0, 0, 4312.5, NULL, 'C', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5680, 0, 20, 0, 0, '2013-02-13 00:00:00', 5640, 148.56, 124.48, 5913.04, NULL, 'D', 'q2c # 32793414, Union Electric Steel', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5681, 0, 20, 0, 0, '2013-02-14 00:00:00', 8970, 1485.6, 622.4, 11078, '(2) ARC-SLm-15 Fiber sensor, 8000 lx, 15 Meters, (1) VX001-3 Modular cable betwee VAMP 221 and VAM I/O unit', 'E', 'TAG includes: (2) VAM3LSE, fiber sensor I/O unit, (12) VA 1 DA-20 Arc Sensor, (12) VXY001, Surface mounting plate for sensor VA 1 DA-X,Z shaped, (12) VXY002, Surfaxce mounting plate for sensor VA 1 DA-X, L shaped, Q2C 31468785 & 30164774 POLA', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5681, 1, 20, 0, 0, '2013-02-14 00:00:00', 8970, 1485.6, 622.4, 11078, '(2) ARC-SLm-15 Fiber sensor, 8000 lx, 15 Meters, (1) VX001-3 Modular cable betwee VAMP 221 and VAM I/O unit', NULL, 'TAG includes: (2) VAM3LSE, fiber sensor I/O unit, (12) VA 1 DA-20 Arc Sensor, (12) VXY001, Surface mounting plate for sensor VA 1 DA-X,Z shaped, (12) VXY002, Surfaxce mounting plate for sensor VA 1 DA-X, L shaped, Q2C 31468785 & 30164774 POLA', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5682, 0, 20, 0, 0, '2013-02-14 00:00:00', 2444, 74.28, 62.24, 2580.52, NULL, 'D', '(1) VAM10LSE-Point sensor I/O unit, (12) VA 1 DA-20,Arc sensor, (12) VYX001- Surface mounting plate for senmsor VA 1 DA-X, Z SHAPED, (12) VYX002-Surface mounting plate for sendor VA 1 DA-X, L shaped, (2) VX001-10 Modular cable betwee VAMP 221 and VAM I/O', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5681, 2, 20, 0, 0, '2013-02-14 00:00:00', 8970, 1485.6, 622.4, 11078, '(2) ARC-SLm-15 Fiber sensor, 8000 lx, 15 Meters, (1) VX001-3 Modular cable betwee VAMP 221 and VAM I/O unit', NULL, 'TAG includes: (2) VAM3LSE, fiber sensor I/O unit, (12) VA 1 DA-20 Arc Sensor, (12) VYX001, Surface mounting plate for sensor VA 1 DA-X,Z shaped, (12) VYX002, Surfaxce mounting plate for sensor VA 1 DA-X, L shaped, Q2C 31468785 & 30164774 POLA', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5684, 0, 0, 0, 0, '2013-02-14 00:00:00', 0, 798.51, 0, 798.51, '***** PRICE IS CUSTOMER NET - NO NEGOTIATION', 'C', 'Price covers up to (6) sections', '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5685, 0, 0, 0, 0, '2013-02-14 00:00:00', 5847, 594.24, 248.96, 6690.2, NULL, 'C', 'Reference Q2C #31468785 & 30164774: Includes the following components:  (4) VAM10LSE; (22) VA 1 DA-20; (22) VYX001; (22) VYX002; (2) VX001-7', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5683, 0, 20, 0, 0, '2013-02-14 00:00:00', NULL, NULL, NULL, NULL, 'This TAG is for Engineering time and is specific for the request', 'D', 'For each Door: (1) VAMP321, (1) SEPAM S82 relay and (1) P991 Test Block', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5706, 0, 0, 0, 0, '2013-02-28 00:00:00', 500, 0, 0, 500, NULL, 'C', 'Same as built under 31878829-010', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5707, 0, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, NULL, 'E', NULL, '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5707, 0, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Priced per each', 'D', NULL, '0', '0', '1', '0', '0', 12, '1', '0', 1, 'US'),
(5708, 0, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Priced as each', 'E', NULL, '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US');
INSERT INTO `Revision` (`NO`, `rev`, `Lead Time`, `Can LIST PRICE`, `US LIST PRICE`, `DATE`, `MATERIAL`, `LABOR`, `BURDEN`, `INST COST`, `Price Note`, `Complexity`, `Notes`, `hvl`, `HVL/CC`, `Metal Clad`, `MVMCC`, `Special Items`, `price expiration`, `revision obsolete`, `Under Current Revision`, `TAG Member`, `country`) VALUES
(5708, 1, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Priced as each', NULL, NULL, '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5708, 2, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Priced as each', NULL, NULL, '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5708, 3, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Priced as each', NULL, NULL, '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5708, 4, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Priced as each', NULL, NULL, '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5708, 5, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Priced as each', NULL, NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5707, 1, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Priced per each', NULL, NULL, '0', '0', '1', '0', '0', 12, '1', '0', 1, 'US'),
(5707, 1, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, NULL, NULL, NULL, '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5707, 2, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, NULL, NULL, NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5707, 2, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Priced per each', NULL, NULL, '0', '0', '1', '0', '0', 12, '0', '1', 1, 'US'),
(5709, 0, 40, 0, 0, '2013-03-01 00:00:00', 492, 74.28, 124.48, 690.76, 'Price is each', 'E', NULL, '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5710, 0, 20, 0, 0, '2013-03-01 00:00:00', 277.74, 74.28, 124.48, 476.5, 'Price is for each Vt.', 'C', 'Q2C #32914148', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5711, 0, 20, 0, 0, '2013-03-01 00:00:00', 586.59, 74.28, 124.48, 785.35, 'Price is for each', 'D', 'Q2C #32914148', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5712, 0, 20, 0, 0, '2013-03-01 00:00:00', 277.74, 74.28, 124.48, 476.5, 'Price is for each', 'D', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5686, 0, 0, 0, 0, '2013-02-14 00:00:00', 1231, 594.24, 248.96, 2074.2, NULL, 'C', 'Q2C #3146885 & 30164774: 38kV HVL Sections: Includes the following components: (3) VAM1DA20; (3) VAMYX001; (3) VAMYX002; (1) VAM10LSE; (1) VAMVX0017; (1) VAMVX00120', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5687, 0, 20, 0, 0, '2013-02-15 00:00:00', 350, 297.12, 497.92, 1145.04, NULL, 'D', 'Design note: See transition 46006-329, Use 22.0 wide common aisle N3R assembly in design index for the transition.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5687, 1, 20, 0, 0, '2013-02-15 00:00:00', NULL, 297.12, 497.92, NULL, NULL, NULL, 'Design note: See transition 46006-329, Use 22.0 wide common aisle N3R assembly in design index for the transition.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5687, 2, 20, 0, 0, '2013-02-15 00:00:00', NULL, 297.12, 497.92, NULL, NULL, NULL, 'Design note: See transition 46006-329, Use 22.0 wide common aisle N3R assembly in design index for the transition.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5687, 3, 20, 0, 0, '2013-02-15 00:00:00', NULL, 297.12, 497.92, NULL, NULL, 'D', 'Design note: See transition 46006-329, Use 22.0 wide common aisle N3R assembly in design index for the transition.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5687, 4, 20, 0, 0, '2013-02-15 00:00:00', NULL, 297.12, 497.92, NULL, NULL, NULL, 'Design note: See transition 46006-329, Use 22.0 wide common aisle N3R assembly in design index for the transition.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5687, 5, 20, 0, 0, '2013-02-15 00:00:00', NULL, 297.12, 497.92, NULL, NULL, NULL, 'Design note: See transition 46006-329 for reference, Use 22.0 wide common aisle N3R assembly in design index, E55431, for the transition.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5687, 6, 20, 0, 0, '2013-02-15 00:00:00', 350, 0, 497.92, 847.92, NULL, 'D', 'Design note: See transition 46006-329 for reference, Use 22.0 wide common aisle N3R assembly in design index, E55431, for the transition.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5688, 0, 20, 0, 0, '2013-02-15 00:00:00', 6198, 0, 0, 6198, 'Price adder is $6198 for (3) Vt''s', 'D', 'Special # PT6-1-125-SDXXXXX @ $11016 for (3) Vt''s, minus PT61125243 @ $4818 FOR (3) Vt''s . Q2C # 30258205-002 Clemson University.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5689, 0, 20, 0, 0, '2013-02-15 00:00:00', 3980.7, 0, 0, 3980.7, 'Price adder is $3980.70 for (3) Vt''s', 'D', 'Special Vt- PT6-1-125-1382 @ $8798.70 FOR (3) Vt''s minus (3) PT61125243 @ $4818.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5690, 0, 40, 0, 0, '2013-02-18 00:00:00', 8400, 0, 2489.6, 10889.6, NULL, 'F', 'TAG includes engineering time of 40 hours.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5691, 0, 0, 0, 0, '2013-02-19 00:00:00', 5, 37.14, 7.4688, 49.6088, NULL, 'A', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5692, 0, 20, 0, 0, '2013-02-19 00:00:00', 14140, 0, 1244.8, 15384.8, NULL, 'F', 'See attachment', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5692, 1, 20, 0, 0, '2013-02-19 00:00:00', 14140, 0, 1244.8, 15384.8, NULL, NULL, 'See attachment', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5692, 2, 20, 0, 0, '2013-02-19 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'See attachment', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5692, 3, 20, 0, 0, '2013-02-19 00:00:00', 14140, 0, 1244.8, 15384.8, NULL, NULL, 'See attachment', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5693, 0, 0, 0, 0, '2013-02-19 00:00:00', 1671.48, 0, 0, 1671.48, NULL, 'A', 'Enter order with RBA 800 fuses selected, or tagged in.', '1', '0', '0', '0', '0', 12, '1', '0', 13, 'US'),
(5693, 1, 0, 0, 0, '2013-02-19 00:00:00', -1671.48, 0, 0, -1671.48, NULL, NULL, 'Enter order with RBA 800 fuses selected, or tagged in.', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5694, 0, 0, 0, 0, '2013-02-22 00:00:00', 983.1, 0, 6.224, 989.324, NULL, 'B', NULL, '1', '1', '1', '0', '0', 12, '0', '0', 13, 'US'),
(5713, 0, 20, 0, 0, '2013-03-04 00:00:00', 166.32, 0, 62.24, 228.56, 'Price is for a single fuse', 'C', 'Q2C #32637377 AMEC Newmount Project', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5714, 0, 20, 0, 0, '2013-03-06 00:00:00', 432, 74.28, 124.48, 630.76, 'Price is each', 'D', 'No Q2C number, customer BAJA California II', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5715, 0, 20, 0, 0, '2013-03-06 00:00:00', 432, 74.28, 124.48, 630.76, 'Price per each', 'E', 'No Q2C number, for BAJA California II', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5786, 0, 20, 0, 0, '2013-03-26 00:00:00', 1956, 148.56, 124.48, 2229.04, 'Price per each', 'F', 'Quote #PCS13032602, Q2C #32349854 Lincoln University', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5787, 0, 20, 0, 0, '2013-03-26 00:00:00', 3418, 148.56, 124.48, 3691.04, 'Price per each', 'F', 'Qote #pcs13032602, Q2C #', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5787, 0, 0, 0, 0, '2013-03-26 00:00:00', 3418, 148.56, 124.48, 3691.04, 'Prices per each', NULL, 'Quote #Pcs13032602, Q2C #32349854, Lincoln University', '0', '0', '1', '0', '0', 12, '0', '1', 1, 'US'),
(5788, 0, 20, 0, 0, '2013-03-26 00:00:00', NULL, NULL, NULL, NULL, 'Price per each', 'F', 'Installed on Arc Resistant Metal-Clad Switchgear', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5789, 0, 20, 0, 0, '2013-03-27 00:00:00', 497.58, 148.56, 124.48, 770.62, 'Price CPT transformer in one line up, use TAG 5790 to price in the second line up', 'F', 'Q2C #32533282-001 and 004', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5790, 0, 20, 0, 0, '2013-03-27 00:00:00', 0, 297.12, 248.96, 546.08, 'Priced as Engineering labor and factory labor', 'F', 'Q2C #32533282-001 and 004', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5791, 0, 0, 0, 0, '2013-03-27 00:00:00', -3158, 0, 0, -3158, 'Difference based on 7650 with 10MB sampling rate', 'A', NULL, '1', '1', '0', '0', '0', 12, '1', '0', 13, 'US'),
(5791, 1, 0, 0, 0, '2013-03-27 00:00:00', -197.38, 0, 0, -197.38, 'Difference based on 7650 with 10MB sampling rate', 'A', NULL, '1', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5792, 0, 35, 0, 0, '2013-03-27 00:00:00', 3018, 297.12, 248.96, 3564.08, 'Price per each', 'F', 'Q2C # not provided, order for NWRP:RFP', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5793, 0, 35, 0, 0, '2013-03-27 00:00:00', 3133, 297.12, 248.96, 3679.08, 'Priced per each', 'F', 'Order for NWRP:RFP', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5788, 1, 20, 0, 0, '2013-03-26 00:00:00', 3221, 148.56, 124.48, 3494.04, 'Price per each', NULL, 'Installed on Arc Resistant Metal-Clad Switchgear', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5794, 0, 10, 0, 0, '2013-03-27 00:00:00', 0, 0, 62.24, 62.24, 'Price is for 1 hour Engineering time', 'D', 'This TAG is for MV MCC Power Fuses to convert fuses to 150E and 300E', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5795, 0, 15, 0, 0, '2013-03-28 00:00:00', 1080, 148.56, 124.48, 1353.04, 'Pricem per each', 'F', 'Q2C #31370220, Project of Charles J Des Bhaillets', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5796, 0, 15, 0, 0, '2013-03-28 00:00:00', 900, 74.28, 124.48, 1098.76, 'Price per each', 'F', 'Q2C #31370220, Project of Charles J Des Baillets', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5716, 0, 20, 0, 0, '2013-03-06 00:00:00', 474, 74.28, 124.48, 672.76, 'Priced as each', 'E', 'No Q2C number, order for BAJA California II', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5717, 0, 20, 0, 0, '2013-03-06 00:00:00', 2003, 74.28, 124.48, 2201.76, 'Price is each', 'D', 'No Q2C number provided, Order is for Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5718, 0, 20, 0, 0, '2013-03-06 00:00:00', 2575, 74.28, 124.48, 2773.76, 'Price is for each', 'D', 'No Q2C number provided, Order for Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5719, 0, 0, 0, 0, '2013-03-06 00:00:00', 2669, 74.28, 124.48, 2867.76, 'Price is for each', NULL, 'No Q2C number provided, Order for Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 1, 'US'),
(5720, 0, 20, 0, 0, '2013-03-06 00:00:00', 2957, 74.28, 124.48, 3155.76, 'Price is for each', 'D', 'No Q2C number provided, Order for Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5721, 0, 20, 0, 0, '2013-03-06 00:00:00', 3655, 74.28, 124.48, 3853.76, 'Price is for each', 'D', 'No Q2C number provided, Order for Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5722, 0, 20, 0, 0, '2013-03-06 00:00:00', 3003, 74.28, 124.48, 3201.76, 'Price is for each', 'D', 'No Q2C number provided, Order for Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5723, 0, 20, 0, 0, '2013-03-06 00:00:00', 3924, 74.28, 124.48, 4122.76, 'Price is for each.', 'D', 'No Q2C number provided, Order for Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5724, 0, 20, 0, 0, '2013-03-06 00:00:00', 4842, 74.28, 124.48, 5040.76, 'Price is for each.', 'D', 'No Q2C number provided, Order for Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5725, 0, 15, 0, 0, '2013-03-07 00:00:00', 206.2, 74.28, 62.24, 342.72, 'Price is for each', 'D', 'No Q2C number provided, No order name provided', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5726, 0, 20, 0, 0, '2013-03-07 00:00:00', 26.25, 74.28, 124.48, 225.01, 'Price is for a MG24146, 10A circuit breaker.', 'D', 'Q2C #32919685, Kitimat LNG', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5727, 0, 20, 0, 0, '2013-03-07 00:00:00', 341, 445.68, 124.48, 911.16, 'Price is for a 6ft section of a Motorpact Arc Resistant plenum', 'D', 'Q2C #32280554', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5728, 0, 20, 0, 0, '2013-03-07 00:00:00', 155.52, 74.28, 124.48, 354.28, 'Price is each', 'D', 'Q2C #32985334', '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5729, 0, 0, 0, 0, '2013-03-07 00:00:00', 331.88, 0, 0, 331.88, 'Tag includes material and Engineering Time and margin.', 'A', 'For rear aligned Visi/vac to prevent door from hitting transformer', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5730, 0, 0, 0, 0, '2013-03-08 00:00:00', 794, 74.28, 62.24, 930.52, NULL, 'E', '13 to 14 week lead time. PLEASE NOTE IN TAG DESCRIPTION  - LONG LEAD TIME ITEM', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5731, 0, 20, 0, 0, '2013-03-11 00:00:00', 63.66, 74.28, 124.48, 262.42, 'Price is for each', 'D', 'Q2C #32730625', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5732, 0, 0, 0, 0, '2013-03-11 00:00:00', 0, 0, 0, 0, NULL, 'A', 'Refer to reference drawing LUG_HEIGHT_LOAD_FAO. See R. Barnett.', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5733, 0, 20, 0, 0, '2013-03-11 00:00:00', 172.91, 0, 0, 172.91, 'Price is for (1) light sensor and (1) cable.', 'D', 'Q2C #32972536 ConocoPhillips', '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5734, 0, 20, 0, 0, '2013-03-11 00:00:00', 1800, 74.28, 124.48, 1998.76, NULL, 'D', 'Q2C # not provided, Order for NEMA 3R Master Clad BAJA California', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5735, 0, 20, 0, 0, '2013-03-11 00:00:00', 826, 74.28, 124.48, 1024.76, NULL, 'D', 'Q2C # 32972536, order ConocoPhillips.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5736, 0, 20, 0, 0, '2013-03-12 00:00:00', 20, 148.56, 248.96, 417.52, 'This price is per bay', 'C', 'Q2C #32919685 Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5737, 0, 30, 0, 0, '2013-03-12 00:00:00', 1854, 74.28, 124.48, 2052.76, 'Price is each', 'F', 'Q2C # not provided', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5738, 0, 20, 0, 0, '2013-03-13 00:00:00', 179.81, 0, 0, 179.81, 'The 2000:5 and 4000:5 are priced together and have no labor or engineering time', 'D', 'The Current transformer are 2000:5 = 780R202, 4000:5 = 780R402', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5739, 0, 33, 0, 0, '2013-03-13 00:00:00', 1811.56, 74.28, 124.48, 2010.32, 'Price is per each', 'F', 'Q2C #32936760 Schneider electric North American Division Technical Case 5911979', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5740, 0, 20, 0, 0, '2013-03-13 00:00:00', 0, 0, 0, 0, NULL, 'C', '2000:5 Ct''s cannot be selected for 1200a breaker', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5741, 0, 20, 0, 0, '2013-03-14 00:00:00', 229.34, 74.28, 62.24, 365.86, 'Price is inclusive for both assemblies', 'D', 'Assemblies required are 46015-231-50 for the Vt compartment and 46015-077-54 for the stationary secondaries.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5742, 0, 20, 0, 0, '2013-03-15 00:00:00', 968, 74.28, 124.48, 1166.76, 'Priced as each', 'F', 'No Q2C number provided', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5743, 0, 20, 0, 0, '2013-03-15 00:00:00', 5067.93, 74.28, 124.48, 5266.69, 'This is special pricing per each.', 'F', 'Quotation for Schneider Chili', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5744, 0, 20, 0, 0, '2013-03-15 00:00:00', 6753.96, 74.28, 124.48, 6952.72, 'Special Pricing for each', 'F', 'Quote order for Schneider Chili', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5745, 0, 20, 0, 0, '2013-03-15 00:00:00', 2.06, 148.56, 248.96, 399.58, 'Price per each', 'C', 'Q2C #32919685 KM LNG', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5745, 0, 0, 0, 0, '2013-03-15 00:00:00', 2.06, 148.56, 248.96, 399.58, 'Price id for each block to mount on DIN rails', NULL, 'Q2C #32919685 KM LNG', '1', '1', '1', '1', '0', 12, '0', '1', 1, 'US'),
(5746, 0, 20, 0, 0, '2013-03-16 00:00:00', 7456, 74.28, 124.48, 7654.76, NULL, 'F', 'Order MVC13010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5747, 0, 20, 0, 0, '2013-03-16 00:00:00', 892, 74.28, 124.48, 1090.76, NULL, 'F', 'Order MVC13010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5748, 0, 20, 0, 0, '2013-03-16 00:00:00', 3626, 74.28, 124.48, 3824.76, NULL, 'F', 'Order MVC13010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5749, 0, 20, 0, 0, '2013-03-16 00:00:00', 7479, 74.28, 124.48, 7677.76, NULL, 'F', 'Order MVC13010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5750, 0, 20, 0, 0, '2013-03-16 00:00:00', 2612, 74.28, 124.48, 2810.76, NULL, 'F', 'Order MVC13010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5751, 0, 20, 0, 0, '2013-03-16 00:00:00', 2103, 74.28, 124.48, 2301.76, NULL, 'F', 'Order MVC13010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5752, 0, 20, 0, 0, '2013-03-16 00:00:00', 829, 74.28, 124.48, 1027.76, NULL, 'F', 'Order MVC13010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5753, 0, 20, 0, 0, '2013-03-16 00:00:00', 1721, 74.28, 124.48, 1919.76, NULL, 'F', 'mvc13010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5754, 0, 20, 0, 0, '2013-03-16 00:00:00', 2097, 74.28, 124.48, 2295.76, NULL, 'F', 'Order MVC13010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5755, 0, 20, 0, 0, '2013-03-18 00:00:00', 177.31, 74.28, 124.48, 376.07, 'Price is for each.', 'D', 'Q2C #31779207-002/009', '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5756, 0, 20, 0, 0, '2013-03-18 00:00:00', 3567, 74.28, 124.48, 3765.76, 'Price as each', 'F', 'Q2C #32997066', '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5757, 0, 20, 0, 0, '2013-03-18 00:00:00', 0, 0, 186.72, 186.72, NULL, 'D', 'Q2C #20358252', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5758, 0, 20, 0, 0, '2013-03-18 00:00:00', 2157, 74.28, 124.48, 2355.76, 'Price is for the Style SEL2126', 'F', 'No Q2C provided', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5759, 0, 20, 0, 0, '2013-03-18 00:00:00', 3172, 74.28, 124.48, 3370.76, 'Priced as Each', 'F', 'Q2C # 32950736, Project Of DISA Montgomery-TTI project M012EL96', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5760, 0, 20, 0, 0, '2013-03-18 00:00:00', 2780, 74.28, 124.48, 2978.76, 'Priced as each', 'F', 'Q2C #32950736, Project of DISA Montgomery-TTI Project M012EL96', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5761, 0, 20, 0, 0, '2013-03-18 00:00:00', 2323, 74.28, 124.48, 2521.76, 'Priced as each', 'F', 'Q2C #32950736, project DISA Montgomery-TTI Project M012EL96', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5762, 0, 20, 0, 0, '2013-03-18 00:00:00', 1422, 74.28, 124.48, 1620.76, 'Priced as each', 'F', 'Q2C #32950736, Project of DISA Montgomery, TTO Project M012EL96', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5763, 0, 20, 0, 0, '2013-03-18 00:00:00', 2570, 0, 0, 2570, NULL, 'F', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5764, 0, 20, 0, 0, '2013-03-19 00:00:00', 2107.64, 74.28, 124.48, 2306.4, 'Price per each', 'D', 'Q2C # 32950736 Project of DISA Montgomery-TTI Project M012EL96', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5765, 0, 20, 0, 0, '2013-03-19 00:00:00', 552, 74.28, 124.48, 750.76, 'Price per each', 'D', 'Q2C #32950736, Project of DISA Montgomery-TTI Project M012EL96', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5766, 0, 20, 0, 0, '2013-03-19 00:00:00', 1794, 74.28, 124.48, 1992.76, 'Price per each', 'D', 'Q2C #32950736, Project of DISA Montgomery-TTI Project M012EL96', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5767, 0, 20, 0, 0, '2013-03-19 00:00:00', 179.95, 74.28, 186.72, 440.95, 'Price per each', 'F', 'Q2c #32984246, Honda Anna ALMC', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5768, 0, 20, 0, 0, '2013-03-19 00:00:00', 44.65, 74.28, 124.48, 243.41, 'Price per each', 'D', 'Q2C #32984246, Honda Anna ALMC', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5769, 0, 20, 0, 0, '2013-03-19 00:00:00', 36.4, 74.28, 124.48, 235.16, 'Price per each', 'D', 'Q2C number 32997066', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5770, 0, 20, 0, 0, '2013-03-19 00:00:00', 241.14, 74.28, 186.72, 502.14, 'Price per each', 'D', 'Q2C #32997066', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5771, 0, 0, 0, 0, '2013-03-20 00:00:00', 60, 0, 15.56, 75.56, NULL, 'B', 'Apply tag to each section with incandescent lighting.', '1', '0', '1', '0', '0', 12, '0', '0', 13, 'US'),
(5772, 0, 20, 0, 0, '2013-03-21 00:00:00', 3022, 74.28, 248.96, 3345.24, 'Price per each', 'F', 'No Q2C number provied', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5797, 0, 30, 0, 0, '2013-03-28 00:00:00', 20267.3, 2971.2, 2489.6, 25728.1, 'The cost includes the CLiP, mounting and wiring. It does not include the sections.', 'F', 'Q2C #32919685 Kitimat LNG. The section to be used is essentiallt a tie bus section that has both upper and lower tie bus positions. The CLiP to be mounted towards the front of the section. Special bus connectors and bracing will be required.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5797, 1, 30, 0, 0, '2013-03-28 00:00:00', 20562.8, 0, 0, 20562.8, 'The cost includes the CLiP, mounting and wiring. It does not include the sections.', NULL, 'Q2C #32919685 Kitimat LNG. The section to be used is essentiallt a tie bus section that has both upper and lower tie bus positions. The CLiP to be mounted towards the front of the section. Special bus connectors and bracing will be required.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5798, 0, 10, 0, 0, '2013-04-02 00:00:00', 0, 0, 0, 0, 'This is a $0.00 TAG', 'B', 'Order NWR', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5799, 0, 0, 0, 0, '2013-04-02 00:00:00', 943, 111.42, 62.24, 1116.66, NULL, 'B', NULL, '1', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5800, 0, 10, 0, 0, '2013-04-03 00:00:00', 0, 0, 248.96, 248.96, NULL, 'C', 'Q2C #30760974-065 Bonnybrook WWTP, This is a customer Change', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5801, 0, 20, 0, 0, '2013-04-03 00:00:00', 1383, 74.28, 124.48, 1581.76, 'Price per each', 'D', 'Part has IEC61850 protocol', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5802, 0, 0, 0, 0, '2013-04-03 00:00:00', 165, 37.14, 995.84, 1197.98, NULL, 'B', NULL, '0', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5803, 0, 20, 0, 0, '2013-04-03 00:00:00', 562, 74.28, 124.48, 760.76, 'Price per each', 'D', 'q2c #33051453, GoldCorp', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5804, 0, 20, 0, 0, '2013-04-03 00:00:00', 540, 74.28, 124.48, 738.76, 'Price per each', 'D', 'Q2C #33051453, GoldCorp', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5805, 0, 20, 0, 0, '2013-04-03 00:00:00', 845, 148.56, 248.96, 1242.52, 'Priced per each', 'D', 'Q2C #33051453 GoldCorp', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5806, 0, 20, 0, 0, '2013-04-04 00:00:00', 3553.1, 148.56, 248.96, 3950.62, 'Price per each', 'F', 'No Q2C number provided', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5594, 1, 0, 0, 0, '2013-01-11 00:00:00', 956.65, 148.56, 124.48, 1229.69, NULL, NULL, 'For Q2C order 32717793, Air Liquid', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5594, 2, 0, 0, 0, '2013-01-11 00:00:00', 956.65, 148.56, 124.48, 1229.69, NULL, NULL, 'For Q2C order 32717793, Air Liquid', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5807, 0, 20, 0, 0, '2013-04-04 00:00:00', 0, 297.12, 248.96, 546.08, 'Price per stand alone CWB. Control switches, lights and mimic bus not included', 'F', 'Q2C #33051453 GoldCorp- Timmins, Ontario', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5820, 0, 0, 0, 0, '2013-04-08 00:00:00', 400, 74.28, 124.48, 598.76, 'Price per assembly', 'C', 'Q2C #32949443, Apple Mills 2 Data Center', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5773, 0, 20, 0, 0, '2013-03-21 00:00:00', 1999, 74.28, 248.96, 2322.24, 'Price per each', 'F', 'No Q2C number', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5773, 1, 20, 0, 0, '2013-03-21 00:00:00', 1999, 74.28, 248.96, 2322.24, 'Price per each', NULL, 'Relay has Arc Flash Detection', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5774, 0, 20, 0, 0, '2013-03-21 00:00:00', 3429, 74.28, 248.96, 3752.24, 'Price per each', 'F', 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5775, 0, 20, 0, 0, '2013-03-21 00:00:00', 7560, 74.28, 248.96, 7883.24, 'Price per each', 'F', 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5776, 0, 20, 0, 0, '2013-03-21 00:00:00', 129, 74.28, 124.48, 327.76, 'Price per each', 'F', 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5777, 0, 0, 0, 0, '2013-03-21 00:00:00', 0, 0, 0, 0, NULL, 'A', 'All standard parts exist, to support', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5778, 0, 10, 0, 0, '2013-03-22 00:00:00', 179.69, 74.28, 62.24, 316.21, 'Price per switch', 'C', 'Q2C #31360180 Med Hat Reg Hospital.', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5779, 0, 0, 0, 0, '2013-03-25 00:00:00', 0, 0, 0, 0, NULL, 'C', 'Disregard Product line pricing and use VAMP Model selection Quotes and Tag pricing tool', '1', '1', '1', '1', '0', 60, '1', '0', 1, 'US'),
(5779, 1, 0, 0, 0, '2013-03-25 00:00:00', 0, 0, 0, 0, NULL, NULL, 'Disregard Product line pricing and use VAMP Model selection Quotes and Tag pricing tool', '1', '1', '1', '1', '0', 60, '0', '0', 12, 'US'),
(5780, 0, 20, 0, 0, '2013-03-25 00:00:00', 242.31, 148.56, 124.48, 515.35, 'Priced as each', 'D', 'Q2C #32914148', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5781, 0, 20, 0, 0, '2013-03-25 00:00:00', 262.34, 148.56, 124.48, 535.38, 'Priced as each', 'D', 'Q2C #32914148', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5782, 0, 20, 0, 0, '2013-03-25 00:00:00', 242.31, 148.56, 124.48, 515.35, 'Priced as each', 'D', 'Q2C #32914148', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5783, 0, 0, 0, 0, '2013-03-25 00:00:00', 0, 0, 0, 0, NULL, NULL, 'Q2C #32845792', '1', '0', '1', '0', '0', 12, '0', '0', 1, 'US'),
(5784, 0, 5, 0, 0, '2013-03-25 00:00:00', 329.1, 74.28, 62.24, 465.62, 'Price per each', 'C', 'Q2C #32638796 BC Hydro', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5785, 0, 30, 0, 0, '2013-03-26 00:00:00', 3375, 222.84, 3485.44, 7083.28, 'Priced per bay', 'F', 'Q2C #32919685, Kitimat LNG', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5785, 1, 30, 0, 0, '2013-03-26 00:00:00', 3375, 222.84, 3485.44, 7083.28, 'Priced per bay. This TAG includes the rear extension, bussing and Engineering time.', NULL, 'Q2C #32919685, Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5807, 1, 20, 0, 0, '2013-04-04 00:00:00', 956, 297.12, 248.96, 1502.08, 'Price per stand alone CWB. Control switches, lights and mimic bus not included', NULL, 'Q2C #33051453 GoldCorp- Timmins, Ontario', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5808, 0, 20, 0, 0, '2013-04-04 00:00:00', 179.44, 74.28, 124.48, 378.2, 'Price per each', 'D', 'No Q2C number provided', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5809, 0, 30, 0, 0, '2013-04-04 00:00:00', 14846.4, 148.56, 248.96, 15244, 'Price per each', 'F', 'No Q2C number provided', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5810, 0, 20, 0, 0, '2013-04-04 00:00:00', 259.03, 148.56, 124.48, 532.07, 'Price is for a 125VDC close and trip test cabinet. Includes Engineering Design time', 'D', 'Q2C #28413040, SAI Piller', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5811, 0, 0, 0, 0, '2013-04-05 00:00:00', 7875, 222.84, 248.96, 8346.8, 'Price per each', 'F', 'Q2C #33051453 GoldCorp.    Universal Communications with USB & Ethernet ports, Embedded Temperature and Humidity Sensors, InsulGard software CD and one set of instructions manual.   One (1) required per line up', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(5812, 0, 30, 0, 0, '2013-04-05 00:00:00', 2935, 148.56, 248.96, 3332.52, 'Priced per each', 'F', 'Q2C #33051453 GoldCorp,  One (1) set required per line up', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(5813, 0, 30, 0, 0, '2013-04-05 00:00:00', 315, 148.56, 248.96, 712.52, 'Priced per each.', 'F', 'Q2C #33051453 GoldCorp. Part number of RFCT is PD-SR-RFCT-075. Order requirements for this order are as follows: Line up 1370 ESS, five (5) required, Line up 1620 ESS, five (5) required, Line up 2100 ESS, three (3) required', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5811, 1, 0, 0, 0, '2013-04-05 00:00:00', 7875, 222.84, 248.96, 8346.8, 'Price per each. Work with TAGs 5812 and 5813', NULL, 'Q2C #33051453 GoldCorp.    Universal Communications with USB & Ethernet ports, Embedded Temperature and Humidity Sensors, InsulGard software CD and one set of instructions manual.   One (1) required per line up. This TAG is order specific.', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5812, 1, 30, 0, 0, '2013-04-05 00:00:00', 2935, 148.56, 248.96, 3332.52, 'Priced per each', NULL, 'Q2C #33051453 GoldCorp,  One (1) set required per line up. This TAG is order specific. Work with TAGs 5811 and 5813', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5814, 0, 20, 0, 0, '2013-04-05 00:00:00', 260.47, 148.56, 62.24, 471.27, NULL, 'C', 'Ni Q2C Number provided, quote for SAI-Piller', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5815, 0, 25, 0, 0, '2013-04-05 00:00:00', 4173, 148.56, 248.96, 4570.52, 'Priced per each', 'F', 'No Q2C number order for NWRP, description as follows: Ethernet/Fast Ethernet/Gigabit Ethernet-switch according to IEEE 802.3', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5816, 0, 0, 0, 0, '2013-04-06 00:00:00', 1692, 74.28, 124.48, 1890.76, 'Price per each', 'D', 'No Q2C number provided, Data Concentrator Spec', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5817, 0, 0, 0, 0, '2013-04-08 00:00:00', 220, 148.56, 248.96, 617.52, 'Price includes special termination and Engineering time', 'C', 'No Q2C number provided, order for NWRP', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5818, 0, 0, 0, 0, '2013-04-08 00:00:00', 220, 148.56, 248.96, 617.52, 'Price includes special bussing and Engineering time', 'D', 'No Q2C number provided, Order for NWRP', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5819, 0, 0, 0, 0, '2013-04-08 00:00:00', 0, 148.56, 124.48, 273.04, 'Price is for Manufacturing labor and Engineering time', 'D', 'No Q2C number provided, order for NWRP', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5821, 0, 20, 0, 0, '2013-04-08 00:00:00', 150, 148.56, 248.96, 547.52, 'Price per assembly', 'C', 'Q2C #32979769-002, 003, 004 and 005', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5822, 0, 20, 0, 0, '2013-04-09 00:00:00', 175, 148.56, 1867.2, 2190.76, 'Price includes the material and Engineering design time', 'D', 'Q2C #31412862-002, 003, 004 and 005, USDA', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5823, 0, 0, 0, 0, '2013-04-09 00:00:00', 4076, 0, 0, 4076, NULL, 'D', NULL, '1', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5824, 0, 20, 0, 0, '2013-04-10 00:00:00', 587, 74.28, 124.48, 785.76, 'Priced per VT', 'C', 'Q2C #31949100-001', '1', '1', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5825, 0, 20, 0, 0, '2013-04-10 00:00:00', 1463.5, 297.12, 497.92, 2258.54, 'Price does not include rear extension.', 'D', 'Q2C #32919685, Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5826, 0, 20, 0, 0, '2013-04-10 00:00:00', 3084.76, 297.12, 622.4, 4004.28, 'Price does not include rear extension', 'D', 'Q2C #32919685, Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5827, 0, 20, 0, 0, '2013-04-10 00:00:00', 3821.81, 445.68, 995.84, 5263.33, 'Price does not include rear extension', 'D', 'Q2C #32919685, Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5828, 0, 20, 0, 0, '2013-04-10 00:00:00', 752.45, 148.56, 248.96, 1149.97, 'Price does not include rear extension', 'D', 'Q2C #32919685- Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5829, 0, 20, 0, 0, '2013-04-10 00:00:00', 1413.28, 445.68, 497.92, 2356.88, 'Price does not include the rear extension', 'D', 'Q2C #32919685 Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5830, 0, 0, 0, 0, '2013-04-10 00:00:00', 0, 0, 497.92, 497.92, 'Price is for Engineering time only for drawing corrections', 'C', 'Q2C#31643392-016', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5831, 0, 20, 0, 0, '2013-04-11 00:00:00', 0, 0, 622.4, 622.4, 'List price for 10 hours of Engineering time.', 'C', 'Q2 #32583560, General cable by PPL', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5832, 0, 20, 0, 0, '2013-04-11 00:00:00', 673.25, 148.56, 248.96, 1070.77, 'Price is for each', 'F', 'No Q2C number provided', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5833, 0, 20, 0, 0, '2013-04-11 00:00:00', 705, 74.28, 124.48, 903.76, 'Price is per each VT and is list price', 'B', 'Q2C #32470632, Knoxville , Building 7627', '1', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5834, 0, 20, 0, 0, '2013-04-11 00:00:00', 12.74, 74.28, 124.48, 211.5, 'Priced per each', 'C', 'Q2C #33098429, DCT Screw Pumps 3 & 4 MVMCC', '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5835, 0, 20, 0, 0, '2013-04-11 00:00:00', 155.52, 74.28, 124.48, 354.28, 'Price is per each', 'F', 'Q2C #33098429, DCT Screw Pumps 3 & 4 MVMCC', '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5836, 0, 20, 0, 0, '2013-04-11 00:00:00', 135.36, 74.28, 124.48, 334.12, 'Price is per each CT with mounting bracket', 'C', 'q2c #32874161, Access Midstream', '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5837, 0, 20, 0, 0, '2013-04-12 00:00:00', 1015.21, 297.12, 1991.68, 3304.01, 'Price includes material, labor and Engijneering design time', 'D', 'Q2C #32974540', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5838, 0, 0, 0, 0, '2013-04-12 00:00:00', 0, 0, 0, 0, NULL, 'A', 'Q2C #33098429, DCT Screw Pumps 3 & 4 MVMCC', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5839, 0, 0, 0, 0, '2013-04-15 00:00:00', 704, 148.56, 124.48, 977.04, 'Price based on Smyrna''s 46008-893 assembly', 'D', 'BFO NUMBER OP-121115-1362034, CUSTOMER- OPG CAMERON FALSS', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5839, 0, 0, 0, 0, '2013-04-15 00:00:00', 704, 148.56, 124.48, 977.04, 'Price is estimated per Smyrna''s standard assembly 46008-893', NULL, 'BFO #OP-121115-1362034, opg Cameron Falss', '0', '0', '1', '0', '0', 12, '0', '1', 1, 'US'),
(5840, 0, 30, 0, 0, '2013-04-15 00:00:00', 1990.13, 148.56, 248.96, 2387.65, 'Price is per each.', 'F', 'Q2C #32033901, DIA-PLC parts list', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5841, 0, 30, 0, 0, '2013-04-15 00:00:00', 48.28, 74.28, 62.24, 184.8, 'Price per each', 'C', 'Q2C #32033901, DIA-PLC Parts List', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5842, 0, 30, 0, 0, '2013-04-15 00:00:00', 1686.25, 148.56, 248.96, 2083.77, 'Price per each', 'F', 'Q2C #32033901 DIA-PLC Parts List', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5843, 0, 30, 0, 0, '2013-04-15 00:00:00', 3098, 148.56, 248.96, 3495.52, 'Price per each', 'F', 'q2c #33161877 Suncor Fort Hills MVMCC', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5844, 0, 20, 0, 0, '2013-04-15 00:00:00', 126.39, 74.28, 124.48, 325.15, 'Price per ech', 'C', 'q2c # NOT AVAILABLE', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5845, 0, 0, 0, 0, '2013-04-15 00:00:00', 708.34, 148.56, 248.96, 1105.86, 'Price is for 4000A copper silver plated main bus and Fans', 'D', 'Q2C #32919685, Kitimat LNG', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5845, 1, 0, 0, 0, '2013-04-15 00:00:00', 310.81, 148.56, 248.96, 708.33, 'Price is for 4000A copper silver plated main bus and Fans', NULL, 'Q2C #32919685, Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5846, 0, 20, 0, 0, '2013-04-16 00:00:00', 42.8, 74.28, 124.48, 241.56, 'Price per each', 'C', 'Q2C #30069238', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5847, 0, 30, 0, 0, '2013-04-16 00:00:00', 731.25, 148.56, 248.96, 1128.77, 'Price per each', 'D', 'Q2C #30069238', '0', '0', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5848, 0, 20, 0, 0, '2013-04-17 00:00:00', 3275.57, 148.56, 248.96, 3673.09, 'Price per each', 'D', 'No Q2C number provided, order- Suncor Fort Hills Project', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5849, 0, 0, 0, 0, '2013-04-17 00:00:00', 0, 0, 124.48, 124.48, NULL, 'C', 'Q2C #31255833, Project of Restigouche Hospital', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5850, 0, 0, 0, 0, '2013-04-17 00:00:00', 150, 74.28, 248.96, 473.24, 'Price is per bay', 'D', 'Q2C #33118006, Clemson Grid Simulator.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5851, 0, 20, 0, 0, '2013-04-17 00:00:00', 541, 148.56, 124.48, 814.04, 'Price per each', 'D', 'Q2C #33132451-001', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5851, 1, 20, 0, 0, '2013-04-17 00:00:00', 541, 148.56, 124.48, 814.04, 'Price per each', NULL, 'Q2C #33132451-001', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5821, 1, 20, 0, 0, '2013-04-08 00:00:00', 150, 148.56, 248.96, 547.52, 'Price per assembly', NULL, 'Q2C #32979769-002, 003, 004 and 005', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5852, 0, 0, 0, 0, '2013-04-18 00:00:00', 28.11, 74.28, 62.24, 164.63, 'Price Per Assembly', 'C', 'Refer to 46004-683-50, 51, 52, 53', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5853, 0, 0, 0, 0, '2013-04-18 00:00:00', 0, 0, 0, 0, NULL, 'A', NULL, '0', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5854, 0, 20, 0, 0, '2013-04-19 00:00:00', 6361, 148.56, 248.96, 6758.52, 'Price per each', 'D', 'PCS13041802', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5855, 0, 20, 0, 0, '2013-04-19 00:00:00', 4044, 148.56, 248.96, 4441.52, 'Price per each', 'D', 'pcs13041802', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5856, 0, 0, 0, 0, '2013-04-19 00:00:00', NULL, NULL, NULL, NULL, 'Price is per bay', 'D', 'Q2C #32919685- Kitimat', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5856, 1, 0, 0, 0, '2013-04-19 00:00:00', 20, 148.56, 248.96, 417.52, 'Price is per bay', NULL, 'Q2C #32919685- Kitimat', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5857, 0, 20, 0, 0, '2013-04-19 00:00:00', 42.43, 74.28, 62.24, 178.95, 'Price per each', 'C', 'Q2C #33118006, Clemson Grid Simulator', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5858, 0, 0, 0, 0, '2013-04-22 00:00:00', 400, 148.56, 373.44, 922, NULL, 'D', 'No Q2C Number, order for Neveda Power, 24Kv Revenue Meter Bay', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5859, 0, 0, 0, 0, '2013-04-22 00:00:00', 0, 0, 746.88, 746.88, 'Price id for Engineering time in list dollars', 'D', 'Q2C #30822516-002', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5860, 0, 20, 0, 0, '2013-04-22 00:00:00', 98.2, 74.28, 124.48, 296.96, 'Price per each.', 'D', 'No Q2C number or Cuastomer information', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5861, 0, 20, 0, 0, '2013-04-22 00:00:00', 198.4, 74.28, 124.48, 397.16, 'Price per each', 'D', 'No Q2C number or customer information', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5862, 0, 0, 0, 0, '2013-04-22 00:00:00', 1161.75, 297.12, 124.48, 1583.35, 'Price does not include the drawout truck assembly.', 'D', 'See 46008-770 for assembly details.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5863, 0, 0, 0, 0, '2013-04-22 00:00:00', 549.36, 148.56, 62.24, 760.16, 'Price per drawout truck', NULL, 'See 46007-405-51 for Vt drawout truck assembly', '1', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5864, 0, 0, 0, 0, '2013-04-22 00:00:00', 250, 297.12, 995.84, 1542.96, 'This TAG is order specific', 'D', 'Q2C #32743404-001, Morgan Stanley', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5865, 0, 20, 0, 0, '2013-04-22 00:00:00', 2076, 148.56, 248.96, 2473.52, 'Price is per each.', 'D', 'q2c #32919685, Kitimat LNG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5866, 0, 0, 0, 0, '2013-04-22 00:00:00', 433.48, 74.28, 62.24, 570, 'Price of Ct is each', 'B', 'Q2C #33120022, Las Vegas', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5867, 0, 0, 0, 0, '2013-04-23 00:00:00', 70.19, 74.28, 62.24, 206.71, 'Price is per each', 'C', 'Q2C #31495163, Dow Chenical MV Starter', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5868, 0, 0, 0, 0, '2013-04-23 00:00:00', 1.04, 74.28, 62.24, 137.56, 'Price is per each', 'C', 'Q2C #31945161, Dow Chemical MV Starter', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5869, 0, 0, 0, 0, '2013-04-24 00:00:00', 2044.55, 222.84, 995.84, 3263.23, NULL, 'F', 'This TAG cannot be applied to N3R', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5870, 0, 0, 0, 0, '2013-04-24 00:00:00', 23.63, 74.28, 186.72, 284.63, 'Priced per bay', 'C', 'Reference assembly for design purpose is 46005-258-50', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5871, 0, 0, 0, 0, '2013-04-24 00:00:00', 444.69, 148.56, 248.96, 842.21, NULL, 'C', 'No Q2C number', '0', '0', '0', '0', '0', 12, '1', '0', 14, 'US'),
(5871, 0, 0, 0, 0, '2013-04-24 00:00:00', 444.69, 148.56, 248.96, 842.21, 'Price is for the transition assembly only. Standard bus or cable connections to be used to transformer.', NULL, 'No Q2C number provided', '0', '0', '1', '0', '0', 12, '1', '0', 1, 'US'),
(5871, 1, 0, 0, 0, '2013-04-24 00:00:00', 444.69, 148.56, 248.96, 842.21, 'Price is for the transition assembly only. Standard bus or cable connections to be used to transformer.', 'C', 'No Q2C number provided', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5871, 1, 0, 0, 0, '2013-04-24 00:00:00', 444.69, 148.56, 248.96, 842.21, NULL, NULL, 'No Q2C number', '0', '0', '0', '0', '0', 12, '1', '0', 14, 'US'),
(5871, 2, 0, 0, 0, '2013-04-24 00:00:00', 444.69, 148.56, 248.96, 842.21, 'Price is for transition only. Standard cable or bus onnection to be used', NULL, 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5892, 0, 0, 0, 0, '2013-04-29 00:00:00', 500, 222.84, 497.92, 1220.76, NULL, 'D', 'Pull box to 36.0 wide x 48.5 long x 24.0 high', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5893, 0, 0, 0, 0, '2013-04-29 00:00:00', 110, 74.28, 124.48, 308.76, 'Price is per each', 'C', 'q2c #32152368-020, C.T. Perry', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5894, 0, 0, 0, 0, '2013-04-29 00:00:00', 30.63, 74.28, 248.96, 353.87, 'Price includes all three (3) devices', 'D', '8501NH7 restraining strap for JCK & MPS type relays to 8501 sockets. Q2C #32152368-020.', '1', '1', '1', '1', '0', 24, '0', '0', 14, 'US'),
(5895, 0, 0, 0, 0, '2013-04-29 00:00:00', 30, 74.28, 124.48, 228.76, 'Price is per breaker', 'C', 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5896, 0, 0, 0, 0, '2013-05-01 00:00:00', 2778.81, 594.24, 1493.76, 4866.81, 'TAG includes material labor nad Engineering time. See reference order Q2C #32698583', 'F', 'This TAG is order specific for LIPA Q2C #32855413', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5897, 0, 10, 0, 0, '2013-05-01 00:00:00', 62.02, 0, 1493.76, 1555.78, NULL, 'C', 'This TAG is ORDER SPECIFIC for Q2C #28424418-003', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5898, 0, 20, 0, 0, '2013-05-01 00:00:00', 80.29, 74.28, 124.48, 279.05, 'Price is per each relay', 'C', 'q2c #31508492-010 AND 011, Denver Water', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5899, 0, 0, 0, 0, '2013-05-01 00:00:00', 604.53, 148.56, 248.96, 1002.05, 'Price is for each', 'D', 'Q2C #31508492-010, 011', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5900, 0, 0, 0, 0, '2013-05-01 00:00:00', 30.63, 0, 0, 30.63, 'Price is per each', 'B', 'Note: this is a general TAG', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5901, 0, 0, 0, 0, '2013-05-02 00:00:00', 400, 445.68, 1493.76, 2339.44, 'This TAG includes the transition, bussing assembly and Engineering design time.', 'D', 'Q2C #33205909, Enmax', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5902, 0, 20, 0, 0, '2013-05-02 00:00:00', 728, 148.56, 248.96, 1125.52, 'Price is per each relay', 'F', 'q2c #', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5902, 0, 0, 0, 0, '2013-05-02 00:00:00', 728, 148.56, 248.96, 1125.52, 'Price is per each relay', NULL, 'AQ2C  #33215451, Nova Chemicals', '1', '1', '1', '1', '0', 12, '0', '1', 1, 'US'),
(5903, 0, 20, 0, 0, '2013-05-02 00:00:00', 2777, 148.56, 248.96, 3174.52, 'Price is per each relay', 'F', 'Q2C #33215451- Nova Chemicals', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5904, 0, 20, 0, 0, '2013-05-02 00:00:00', 1277, 148.56, 248.96, 1674.52, 'Price is per each', 'F', 'Q2C #33215451- Nova Chemicals', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5905, 0, 20, 0, 0, '2013-05-02 00:00:00', 552, 74.28, 124.48, 750.76, 'Price is per each', 'F', 'Q2C #33215451- Nova Chemicals', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5906, 0, 20, 0, 0, '2013-05-02 00:00:00', NULL, NULL, NULL, NULL, 'Price is per each', 'D', 'Q2C #33215451- Nova Chemicals', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5907, 0, 11, 0, 0, '2013-05-06 00:00:00', 10.65, 37.14, 62.24, 110.03, 'Price per each', 'C', 'Q2C #33215451, Nova Chemicals', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5908, 0, 5, 0, 0, '2013-05-06 00:00:00', 10724.7, 148.56, 248.96, 11122.3, 'Price is per each', 'F', 'Q2C #33215451, Nova Chemical', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5909, 0, 0, 0, 0, '2013-05-06 00:00:00', 22.55, 18.57, 15.56, 56.68, 'Tag price is per order.', 'A', 'TiltWatch Plus available through Grainger', '1', '1', '1', '1', '0', 12, '1', '0', 13, 'US'),
(5910, 0, 7, 0, 0, '2013-05-06 00:00:00', 1408.24, 148.56, 248.96, 1805.76, 'Priced is per each', 'D', 'Q2C #303965568-001, POLB', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5911, 0, 7, 0, 0, '2013-05-06 00:00:00', 882.34, 148.56, 248.96, 1279.86, 'Price is per each', 'D', 'Q2C #30396568-001, POLB', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5912, 0, 0, 0, 0, '2013-05-07 00:00:00', 11.55, 0, 0, 11.55, NULL, 'A', NULL, '0', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5913, 0, 0, 0, 0, '2013-05-07 00:00:00', 22.11, 37.14, 31.12, 90.37, NULL, 'A', NULL, '0', '1', '0', '0', '0', 12, '1', '0', 13, 'US'),
(5914, 0, 20, 0, 0, '2013-05-07 00:00:00', 422.17, 148.56, 248.96, 819.69, 'Price includes Power supply and Ethernet Switch', 'D', 'Q2C #33264123 Xstarta Nickle Sudbury', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(5915, 0, 20, 0, 0, '2013-05-07 00:00:00', 969.41, 74.28, 124.48, 1168.17, 'Price is for each', 'C', 'Q2C #32959346-002', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5916, 0, 0, 0, 0, '2013-05-07 00:00:00', 389, 297.12, 248.96, 935.08, 'Price is per bay', 'D', 'Q2C #29769125, Duke University', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5914, 1, 20, 0, 0, '2013-05-07 00:00:00', 422.17, 148.56, 248.96, 819.69, 'Price includes Power supply and Ethernet Switch', NULL, 'VOID, Do not use', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5917, 0, 20, 0, 0, '2013-05-07 00:00:00', 100.42, 148.56, 124.48, 373.46, 'Price per each', 'D', 'Q2C #32264123, Xstrata Nickle Sudbury', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5918, 0, 20, 0, 0, '2013-05-07 00:00:00', 321.75, 148.56, 124.48, 594.79, 'Price per each', 'D', 'Q2C #33264123, Xstrata Nickle Sudbury', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5919, 0, 0, 0, 0, '2013-05-08 00:00:00', 0, 0, 497.92, 497.92, NULL, 'C', 'Q2C #31673254-001', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5920, 0, 0, 0, 0, '2013-05-08 00:00:00', 250, 297.12, 1493.76, 2040.88, 'Price is for special exit plenum.', 'F', 'Q2C #33208093, Ultramar Motorpact', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5921, 0, 20, 0, 0, '2013-05-08 00:00:00', 2995, 148.56, 248.96, 3392.52, 'Price per each', 'E', 'Q2C #33208093, Ultramar', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5922, 0, 20, 0, 0, '2013-05-08 00:00:00', 2543, 148.56, 248.96, 2940.52, 'Price per each', 'F', 'Q2C #332-8093, Ultramar', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5923, 0, 20, 0, 0, '2013-05-09 00:00:00', 1466, 148.56, 248.96, 1863.52, 'Price is per each', 'F', 'Q2C #30943459, Project of Quintette Coal.', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5924, 0, 0, 0, 0, '2013-05-10 00:00:00', 0, 297.12, 497.92, 795.04, 'Price is for Engineering time plus four (4) manufacturing labor for mounting', 'D', '(1) 1756 A7 7 Slot Chassis, (1) 1756 PAXT Power Supply, (2) 1756 IA16 Digital Input Card 16 with 1756 TBSH, 1756 TBNH Terminal Blocks, (2) 1756 OA8 Digital Output Card, 8 with 1756 TBSH, 1756 TBNH Terminal Blocks, (1) 1756 EN2 Ethernet Bridge, Fiber.', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5925, 0, 0, 0, 0, '2013-05-10 00:00:00', 2026.08, 148.56, 248.96, 2423.6, 'Price is per each', 'D', 'Q2C # Not supplied', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5874, 0, 25, 0, 0, '2013-04-25 00:00:00', 1509.5, 3973.98, 995.84, 6479.32, 'Price is per each. This Tag is for this order Q2C #$33172320', 'F', 'Internal components shown on the BOM will be provided by Schneider, Automation NTH will provide the metal enclosure, wireway.wire duct, wire, wire labels, lengend plates, ground bars/kugs. On this TAG, the quantity is one (1). Order quantity as required.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5875, 0, 25, 0, 0, '2013-04-25 00:00:00', 1509.5, 1392.75, 995.84, 3898.09, 'Price per each. This TAG is for Q2C #33172320', 'F', 'Internal components shown on the BOM will be provided by Schneider, Automation NTH will provide the metal enclosure, wireway/wire duct, wire, wire labels, legend plates, ground bar/ lugs. On this TAG the quantity is one (1). Order quantity as required', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5875, 1, 25, 0, 0, '2013-04-25 00:00:00', 3019, 2785.5, 995.84, 6800.34, 'Price per each. This TAG is for Q2C #33172320', NULL, 'Internal components shown on the BOM will be provided by Schneider, Automation NTH will provide the metal enclosure, wireway/wire duct, wire, wire labels, legend plates, ground bar/ lugs. On this TAG the quantity is one (1). Order quantity as required', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5876, 0, 25, 0, 0, '2013-04-25 00:00:00', 2635, 398.141, 62.24, 3095.38, 'Price is per each', 'C', 'Q2C #33172320', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5877, 0, 25, 0, 0, '2013-04-25 00:00:00', 4137, 7953.9, 62.24, 12153.1, 'Price is per each', 'C', 'Q2C #33172320', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US');
INSERT INTO `Revision` (`NO`, `rev`, `Lead Time`, `Can LIST PRICE`, `US LIST PRICE`, `DATE`, `MATERIAL`, `LABOR`, `BURDEN`, `INST COST`, `Price Note`, `Complexity`, `Notes`, `hvl`, `HVL/CC`, `Metal Clad`, `MVMCC`, `Special Items`, `price expiration`, `revision obsolete`, `Under Current Revision`, `TAG Member`, `country`) VALUES
(5878, 0, 0, 0, 0, '2013-04-25 00:00:00', 983, 148.56, 74.688, 1206.25, 'VAMP2553C7 AAA; VA1DA-20; VYX001', 'D', 'Arc sensor cable length equals 20 meters; Surface mounting plate for sensor VA 1 DA-X, Z shaped', '0', '0', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5873, 1, 25, 0, 0, '2013-04-25 00:00:00', 3019, 3379.74, 497.92, 6896.66, 'Price per each. This TAG is for this order. Substation E & F panel 1. Q2C # 33172320', NULL, 'Internal Componets shown on the BOM will be provided by Schneider, Automation NTH will provide the metal enclosues, wireway/wire duct wire, wire labels, lengend plates, ground bars/lugs. On this TAG, the quantity is one (1). Order quantity as required.', '0', '0', '1', '0', '0', 24, '0', '0', 14, 'US'),
(5879, 0, 0, 0, 0, '2013-04-26 00:00:00', 100, 297.12, 497.92, 895.04, NULL, 'C', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5880, 0, 0, 0, 0, '2013-04-26 00:00:00', 41.52, 74.28, 62.24, 178.04, 'Price per each barrier', 'C', 'Q2C #32788896 Merck TG2 Blackstart', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5881, 0, 0, 0, 0, '2013-04-26 00:00:00', 4481.65, 297.12, 124.48, 4903.25, 'Price is each', 'D', 'No Q2C number, Customer-Nevada Power 24Kv revenue Meter bay', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5882, 0, 0, 0, 0, '2013-04-26 00:00:00', 0, 0, 4979.2, 4979.2, 'Engineering is 80 hours', 'D', 'Q2C #29941928-002', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5883, 0, 0, 0, 0, '2013-04-26 00:00:00', 0, 0, 2489.6, 2489.6, '40 hours engineering time', 'D', 'Q2C #30793001-010', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5926, 0, 20, 0, 0, '2013-05-10 00:00:00', 4750, 148.56, 248.96, 5147.52, 'Price is per each', 'F', 'No Q2C number', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5909, 1, 0, 0, 0, '2013-05-06 00:00:00', 22.55, 18.57, 15.56, 56.68, 'Tag price is per order.', 'A', 'TiltWatch Plus available through Grainger. Item mastered under manufacturers part number 0760-1451120 (without dashes) For reference, Grainger item number is 3EXJ5', '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5927, 0, 0, 0, 0, '2013-05-13 00:00:00', NULL, NULL, NULL, NULL, NULL, 'A', 'Selector work around, cannot select lugs for aluminum cables.', '0', '1', '0', '0', '0', 12, '1', '0', 13, 'US'),
(5927, 1, 0, 0, 0, '2013-05-13 00:00:00', 0, 0, 0, 0, NULL, 'A', 'Selector work around, cannot select lugs for aluminum cables.', '0', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5928, 0, 0, 0, 0, '2013-05-13 00:00:00', 500, 594.24, 1493.76, 2588, 'Price i9s per transition', 'D', 'Zenith, y1500v vadc0', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5930, 0, 0, 0, 0, '2013-05-13 00:00:00', 150, 74.28, 995.84, 1220.12, 'Price is per compartment door', 'D', 'Box is not to interferre with the racking port or the position indicator', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5931, 0, 0, 0, 0, '2013-05-13 00:00:00', 200, 445.68, 995.84, 1641.52, 'Price is per bay', 'D', 'Q2C #31352250-002 and 003, Port Authority', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5932, 0, 14, 0, 0, '2013-05-14 00:00:00', 10597, 148.56, 248.96, 10994.5, 'Price is per each', 'E', 'No Q2C number provided', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(5932, 1, 14, 0, 0, '2013-05-14 00:00:00', 10597, 148.56, 248.96, 10994.5, 'Price is per each', NULL, 'No Q2C number provided', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5931, 1, 0, 0, 0, '2013-05-13 00:00:00', 50, 74.28, 124.48, 248.76, 'Price is per bay', NULL, 'Q2C #31352250-002 and 003, Port Authority', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5933, 0, 0, 0, 0, '2013-05-14 00:00:00', 150, 297.12, 746.88, 1194, 'Price is per section', 'D', 'Q2C #31352250-002 and 003, Port Authority', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5934, 0, 30, 0, 0, '2013-05-14 00:00:00', 382.05, 74.28, 124.48, 580.81, NULL, 'G', 'Four (4) Cylinder Transfer Keylock. Coordination not included in TAG. Insert 3 keys remove 4th', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5969, 0, 20, 0, 0, '2013-05-29 00:00:00', 110, 74.28, 124.48, 308.76, 'Priced per each', 'C', 'q2c #33368234, Orilla Power- Swift Rapids- Hemi Controls', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5970, 0, 30, 0, 0, '2013-05-29 00:00:00', 4921.82, 594.24, 124.48, 5640.54, 'Price is per device, price includes listed iyems in TAG notes', 'F', 'Furnish (1) Primary Ground Bus Assembly (27Kv), 46027-920-50, furnish (1) Hook Stick, Hasting Cat # 8104, (1) Key Interlock Pan 46027-943-51 (Upper door Access)', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5973, 0, 0, 0, 0, '2013-05-29 00:00:00', 551, 297.12, 497.92, 1346.04, 'Price per bay', 'D', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5974, 0, 0, 0, 0, '2013-05-29 00:00:00', 670, 297.12, 995.84, 1962.96, 'Priced per bay', NULL, 'The termination connections to be 8.0" apart', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5975, 0, 0, 0, 0, '2013-05-29 00:00:00', 1950, 297.12, 497.92, 2745.04, 'Price is for the (3) duresca Bushings and mounting', 'D', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5976, 0, 0, 0, 0, '2013-05-29 00:00:00', 0, 0, 0, 0, '$0.00 TAG', 'D', 'All customer connections to be in the "upper" compartment', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5977, 0, 0, 0, 0, '2013-05-30 00:00:00', 260, 148.56, 497.92, 906.48, 'Price per bay', 'D', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5978, 0, 20, 0, 0, '2013-05-30 00:00:00', 63, 74.28, 124.48, 261.76, 'Price is per each', 'D', 'Q2C #33356763 MV MCC Motorpact', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5979, 0, 20, 0, 0, '2013-05-30 00:00:00', 1674, 148.56, 373.44, 2196, NULL, 'D', NULL, '0', '0', '0', '0', '0', 12, '0', '0', 14, 'US'),
(5979, 0, 0, 0, 0, '2013-05-30 00:00:00', 1674, 148.56, 373.44, 2196, NULL, NULL, 'q2c #32970160', '0', '0', '0', '0', '0', 12, '0', '1', 1, 'US'),
(5979, 0, 0, 0, 0, '2013-05-30 00:00:00', 1674, 148.56, 373.44, 2196, 'Price is per each', NULL, 'q2c #33316231, Devon Energy Servtedch', '1', '1', '1', '1', '0', 12, '0', '1', 1, 'US'),
(5980, 0, 20, 0, 0, '2013-05-30 00:00:00', 2090, 148.56, 373.44, 2612, 'Price per each', 'D', 'Q2C #33316231, Devon Energy Servtech', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5981, 0, 20, 0, 0, '2013-05-30 00:00:00', 805, 148.56, 248.96, 1202.52, 'Priced per each', 'D', 'Q2C #33316231, Devon Energy ServTech', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5982, 0, 0, 0, 0, '2013-05-31 00:00:00', -31480, 0, 0, -31480, 'Price Deduct', 'D', 'Q2C #32786843, Zenith, Y1500 VADCO', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5982, 1, 0, 0, 0, '2013-05-31 00:00:00', -2623.33, 0, 0, -2623.33, 'Price Deduct', NULL, 'Q2C #32786843, Zenith, Y1500 VADCO', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5983, 0, 0, 0, 0, '2013-05-31 00:00:00', -1182.09, 0, 0, -1182.09, 'This is a "deduct" TAG', 'D', 'Q2C #32423972, Zenith', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5935, 0, 0, 0, 0, '2013-05-14 00:00:00', 71, 0, 0, 71, NULL, 'A', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5936, 0, 0, 0, 0, '2013-05-16 00:00:00', 0, 297.12, 248.96, 546.08, 'Price is for Engineering time, Manufacturing labor testing', 'D', 'Q2C #33322214, Cenovus Foster Creek, MCC', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5938, 0, 20, 0, 0, '2013-05-16 00:00:00', 13136, 148.56, 248.96, 13533.5, 'Price is for each', 'E', 'Q2C #33246168 5Kv HRG', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5939, 0, 20, 0, 0, '2013-05-16 00:00:00', 2568, 148.56, 248.96, 2965.52, 'Price is per each', 'F', 'q2c #33320688', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5940, 0, 20, 0, 0, '2013-05-16 00:00:00', 1008, 148.56, 248.96, 1405.52, 'Price is each', 'F', 'Q2C #33320688', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5941, 0, 0, 0, 0, '2013-05-16 00:00:00', 0, 0, 0, 0, NULL, 'A', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5942, 0, 0, 0, 0, '2013-05-16 00:00:00', 100, 148.56, 995.84, 1244.4, 'Price is for complete pull box including material, labor and engineering time.', 'D', 'Q2C #33226273', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5943, 0, 0, 0, 0, '2013-05-17 00:00:00', 15, 74.28, 124.48, 213.76, 'Price is per bay', 'C', 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5944, 0, 20, 0, 0, '2013-05-17 00:00:00', 1185, 74.28, 124.48, 1383.76, 'Price is per each', 'C', 'Motorpact', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5945, 0, 20, 0, 0, '2013-05-17 00:00:00', 2825, 148.56, 248.96, 3222.52, 'Price is per each', 'F', 'Motorpact', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5946, 0, 0, 0, 0, '2013-05-18 00:00:00', 500, 148.56, 248.96, 897.52, 'Price per bay', 'D', 'Q2C #33208093, Ultramar', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5947, 0, 0, 0, 0, '2013-05-20 00:00:00', 0, 0, 1867.2, 1867.2, NULL, NULL, 'Adding Control Circuits for two new switches (24205), Estimated time is 30 hours', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5948, 0, 20, 0, 0, '2013-05-20 00:00:00', 499, 74.28, 124.48, 697.76, 'Price per each', 'D', 'Q2C #33297283', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5949, 0, 0, 0, 0, '2013-05-20 00:00:00', 0, 0, 0, 0, 'Check space availibility on HVL/cc and Motorpact', 'C', 'Disregard Product line pricing and use VAMP Model selection Quotes and Tag pricing tool provided by Maher Shehata', '1', '1', '1', '1', '0', 60, '0', '0', 12, 'US'),
(5871, 2, 0, 0, 0, '2013-04-24 00:00:00', 444.69, 148.56, 248.96, 842.21, 'Price is for the transition assembly only. Standard bus or cable connections to be used to transformer.', NULL, 'No Q2C number provided', '0', '0', '1', '0', '0', 12, '0', '1', 14, 'US'),
(5872, 0, 15, 0, 0, '2013-04-24 00:00:00', 43, 74.28, 124.48, 241.76, 'Price is per each', 'C', 'Q2C #33183614 WPB Veri Booster Station', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5873, 0, 25, 0, 0, '2013-04-25 00:00:00', 1509.5, 1708.44, 497.92, 3715.86, 'Price per each. This TAG is for this order. Substation E & F panel 1. Q2C # 33172320', 'F', 'Internal Componets shown on the BOM will be provided by Schneider, Automation NTH will provide the metal enclosues, wireway/wire duct wire, wire labels, lengend plates, ground bars/lugs. On this TAG, the quantity is one (1). Order quantity as required.', '0', '0', '1', '0', '0', 24, '1', '0', 14, 'US'),
(5884, 0, 0, 0, 0, '2013-04-26 00:00:00', 60.51, 74.28, 124.48, 259.27, 'Price per each', 'D', 'Q2C #30793001-010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5885, 0, 0, 0, 0, '2013-04-26 00:00:00', 121.02, 74.28, 124.48, 319.78, 'Price per each', 'D', 'Q2C #30793001-010', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5886, 0, 30, 0, 0, '2013-04-27 00:00:00', 2110, 148.56, 248.96, 2507.52, 'Price is per each', 'F', 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5887, 0, 30, 0, 0, '2013-04-27 00:00:00', 1284, 148.56, 248.96, 1681.52, 'Price is per each', 'F', 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5888, 0, 30, 0, 0, '2013-04-27 00:00:00', 1424, 148.56, 373.44, 1946, 'Price is per each', 'F', 'No Q2C number', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5889, 0, 30, 0, 0, '2013-04-27 00:00:00', 1921, 148.56, 373.44, 2443, 'Price is per each', 'F', 'No Q2C number', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5888, 1, 30, 0, 0, '2013-04-27 00:00:00', 1424, 148.56, 373.44, 1946, 'Price is per each', NULL, 'No Q2C number', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5890, 0, 30, 0, 0, '2013-04-27 00:00:00', 1424, 148.56, 248.96, 1821.52, 'Price is per each', 'F', 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5889, 1, 30, 0, 0, '2013-04-27 00:00:00', 1921, 148.56, 373.44, 2443, 'Price is per each', NULL, 'No Q2C number', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5888, 2, 30, 0, 0, '2013-04-27 00:00:00', 1424, 148.56, 373.44, 1946, 'Price is per each', NULL, 'DO NOT USE', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5891, 0, 0, 0, 0, '2013-04-29 00:00:00', 1332.75, 594.24, 995.84, 2922.83, 'Price includes transition frame assembly, bussing and Engineering time', 'D', 'No Q2C number', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5891, 1, 0, 0, 0, '2013-04-29 00:00:00', 1332.75, 594.24, 995.84, 2922.83, 'Price includes transition frame assembly, bussing to HVL/cc and tap off for cable lugs and Engineering time', NULL, 'No Q2C number', '0', '0', '1', '0', '0', 24, '0', '0', 14, 'US'),
(5944, 1, 20, 0, 0, '2013-05-17 00:00:00', 1438.16, 222.84, 186.72, 1847.72, 'Price is per each', NULL, 'Motorpact', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5944, 2, 20, 0, 0, '2013-05-17 00:00:00', 1438.16, 222.84, 186.72, 1847.72, 'Price is per each', NULL, 'Motorpact, This TAG includes the front instrument door "box" to house the SEL Clock. Use Make parts MVC-00000-01277, 00113, 01355, and 01826', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5950, 0, 0, 0, 0, '2013-05-21 00:00:00', 253.59, 148.56, 124.48, 526.63, 'Price is per bay', 'D', 'This is for the Motorpact front instrument door "box"', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5951, 0, 0, 0, 0, '2013-05-21 00:00:00', 341, 445.68, 124.48, 911.16, 'Price per foot equals $2429.76', 'D', 'Q2C #33208093, Ultramar Motorpact.', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5951, 1, 0, 0, 0, '2013-05-21 00:00:00', 568.33, 445.68, 124.48, 1138.49, 'Price per foot equals $2429.76', NULL, 'Q2C #33208093, Ultramar Motorpact.', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5951, 2, 0, 0, 0, '2013-05-21 00:00:00', 568.33, 445.68, 124.48, 1138.49, 'Price per foot equals $1821.84', NULL, 'Q2C #33208093, Ultramar Motorpact.', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5952, 0, 0, 0, 0, '2013-05-21 00:00:00', 121.9, 74.28, 62.24, 258.42, 'Price is per bay', 'A', 'No AQ2C number provided', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5953, 0, 0, 0, 0, '2013-05-21 00:00:00', 1052.5, 0, 0, 1052.5, 'Difference in VT section with switch and without switch.', 'A', NULL, '0', '1', '0', '0', '0', 12, '1', '0', 13, 'US'),
(5953, 1, 0, 0, 0, '2013-05-21 00:00:00', -1052, 0, 0, -1052, 'Difference in VT section with switch and without switch.', 'A', NULL, '0', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5954, 0, 0, 0, 0, '2013-05-22 00:00:00', 5.57, 0, 1493.76, 1499.33, NULL, 'C', 'Q2C #32520335-005', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5955, 0, 20, 0, 0, '2013-05-22 00:00:00', 92.15, 74.28, 62.24, 228.67, 'Pricded per key lock', 'C', 'Q2C #31451049, Elliot Industries, Inc.', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5956, 0, 0, 0, 0, '2013-05-23 00:00:00', 377.28, 0, 0, 377.28, 'Price is per each roof bushing', 'D', 'MidAmerican energy Bid', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5957, 0, 20, 0, 0, '2013-05-23 00:00:00', 3422.13, 594.24, 4979.2, 8995.57, 'Price is per bay', 'G', 'MidAmerican Energy', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5958, 0, 30, 0, 0, '2013-05-23 00:00:00', 13600, 297.12, 373.44, 14270.6, 'Price is per each', 'F', 'Q2C #33160916, Denver', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5959, 0, 20, 0, 0, '2013-05-24 00:00:00', 4200, 74.28, 248.96, 4523.24, 'Price is per each', 'D', 'Q2C #33297283', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5960, 0, 0, 0, 0, '2013-05-24 00:00:00', 3345.13, 297.12, 124.48, 3766.73, 'Price per each.', 'D', 'Nameplate Item 8- Upper Door Interlock Bus,Nameplate item 9- Lower Door Interlock Feeder', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5961, 0, 0, 0, 0, '2013-05-24 00:00:00', 956, 445.68, 248.96, 1650.64, NULL, 'D', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 13, 'US'),
(5962, 0, 0, 0, 0, '2013-05-24 00:00:00', 620, 74.28, 124.48, 818.76, 'Price per each', 'C', 'Q2C #30943459 Project of Quintette Coal', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5963, 0, 0, 0, 0, '2013-05-24 00:00:00', 850, 297.12, 995.84, 2142.96, 'Price is per transition bay', 'D', 'No Q2C number provided. Dow Chemical additions to esisting Metal-Clad switchgear', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5964, 0, 20, 0, 0, '2013-05-28 00:00:00', 3867, 148.56, 248.96, 4264.52, 'Price per each', 'F', 'q2c #32109691, chum St.Luc D5010 MV SWGR-OV', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5965, 0, 20, 0, 0, '2013-05-28 00:00:00', 2554, 148.56, 248.96, 2951.52, 'Price per each', 'F', 'q2c #32109691- chum St. Luc D5010 MV SWGR -OV', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5966, 0, 20, 0, 0, '2013-05-28 00:00:00', 291.94, 74.28, 124.48, 490.7, 'Price per each', 'C', 'Q2C #30865343, GM Milford Proving Ground.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(5966, 1, 20, 0, 0, '2013-05-28 00:00:00', 291.94, 74.28, 124.48, 490.7, 'Price per each', NULL, 'Q2C #30865343, GM Milford Proving Ground.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5913, 1, 0, 0, 0, '2013-05-07 00:00:00', 10, 18.57, 15.56, 44.13, 'Reduction in TAG list requested by Field to support commercial consideration.5/28/2013 RNB', 'A', NULL, '0', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(5967, 0, 20, 0, 0, '2013-05-28 00:00:00', 1502, 148.56, 248.96, 1899.52, 'Priced per each', 'E', 'Q2C #33368048 MV MCC', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5968, 0, 20, 0, 0, '2013-05-28 00:00:00', 5968, 148.56, 248.96, 6365.52, 'Price per each', 'F', 'Q2C #33368048 MC MCC', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5984, 0, 0, 0, 0, '2013-05-31 00:00:00', 0, 0, 0, 0, '$0.00 TAG', 'D', 'Q2C #32423972, Zenith', '1', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5985, 0, 0, 0, 0, '2013-06-01 00:00:00', 750, 445.68, 1493.76, 2689.44, 'Price includes transition and bussing', 'D', 'Existing transformer. All transformer information to be supplied prior to engineering of order', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5986, 0, 20, 0, 0, '2013-06-01 00:00:00', 1165, 148.56, 248.96, 1562.52, 'Price is per each', 'D', NULL, '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5987, 0, 0, 0, 0, '2013-06-01 00:00:00', 500, 148.56, 995.84, 1644.4, 'Priced per bay', 'D', 'Warning: This TAG can be used on one assumption only- the "vapor barier that isolates swgr from the bus duct is supplied by the bus duct supplier', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(5988, 0, 30, 0, 0, '2013-06-03 00:00:00', 2794, 148.56, 248.96, 3191.52, 'Price is for each', 'F', 'q2c #33374330, iamgold', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(5989, 0, 30, 0, 0, '2013-06-03 00:00:00', 4749, 148.56, 248.96, 5146.52, 'Price per each', 'F', 'q2c #33374330, IAMGOLD', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(5990, 0, 30, 0, 0, '2013-06-03 00:00:00', 6159, 148.56, 248.96, 6556.52, 'Price is per each', 'E', 'q2c #33374330 IAMGOLD', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(5991, 0, 30, 0, 0, '2013-06-03 00:00:00', 2072, 148.56, 248.96, 2469.52, 'Price is per each', 'F', 'q2c 33374330 IAMGOLD', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(5992, 0, 20, 0, 0, '2013-06-04 00:00:00', 2940, 148.56, 248.96, 3337.52, 'Price per each', 'F', 'No Q2C number', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5993, 0, 0, 0, 0, '2013-06-05 00:00:00', 250, 594.24, 1991.68, 2835.92, 'Price is per bay', 'F', 'Q2c #33247551', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(5994, 0, 20, 0, 0, '2013-06-05 00:00:00', 4540.01, 148.56, 248.96, 4937.53, 'Price is per each', 'F', 'q2c #33074622-001', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5995, 0, 20, 0, 0, '2013-06-05 00:00:00', 2442, 148.56, 248.96, 2839.52, 'Price per each', 'F', 'q2c #33074622', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5996, 0, 20, 0, 0, '2013-06-05 00:00:00', 5950, 148.56, 248.96, 6347.52, 'Price is per each', 'F', 'q2c #33074622', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5997, 0, 20, 0, 0, '2013-06-05 00:00:00', 8400, 148.56, 248.96, 8797.52, 'Price is per each', 'F', 'q2c #33074622', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5998, 0, 20, 0, 0, '2013-06-05 00:00:00', 74.5, 74.28, 62.24, 211.02, 'Price per each', 'C', 'Q2C #33074622', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5999, 0, 20, 0, 0, '2013-06-05 00:00:00', 11010, 148.56, 248.96, 11407.5, 'This is a Generic price.', 'F', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6000, 0, 20, 0, 0, '2013-06-05 00:00:00', 711.04, 148.56, 248.96, 1108.56, 'Price is per each', 'D', 'Q2C #30326204-032 & 206, HSC Diagnostic', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6001, 0, 20, 0, 0, '2013-06-05 00:00:00', 4535, 148.56, 248.96, 4932.52, 'Priced per each', 'F', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5988, 1, 30, 0, 0, '2013-06-03 00:00:00', 2184, 148.56, 248.96, 2581.52, 'Price is for each', NULL, 'q2c #33374330, iamgold', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5989, 1, 30, 0, 0, '2013-06-03 00:00:00', 3941, 148.56, 248.96, 4338.52, 'Price per each', NULL, 'q2c #33374330, IAMGOLD', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5990, 1, 30, 0, 0, '2013-06-03 00:00:00', 4855, 148.56, 248.96, 5252.52, 'Price is per each', NULL, 'q2c #33374330 IAMGOLD', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5991, 1, 30, 0, 0, '2013-06-03 00:00:00', 1724, 148.56, 248.96, 2121.52, 'Price is per each', NULL, 'q2c 33374330 IAMGOLD', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6002, 0, 0, 0, 0, '2013-06-06 00:00:00', 0, 0, 0, 0, NULL, 'A', 'Use in conjunction with all GM substation applications and totalized tags.', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(6003, 0, 0, 0, 0, '2013-06-07 00:00:00', 503.12, 0, 0, 503.12, NULL, 'A', 'Coordinate horizontal connection to the transformer.', '1', '0', '0', '0', '0', 12, '0', '0', 13, 'US'),
(6004, 0, 20, 0, 0, '2013-06-10 00:00:00', 75980, 0, 248.96, 76229, 'Prices per each', 'F', 'Q2C #33190457, Matheson Tri Gas, Cactus Az. Project', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(6004, 1, 20, 0, 0, '2013-06-10 00:00:00', 75980, 0, 248.96, 76229, 'Prices per each', NULL, 'Q2C #33190457, Matheson Tri Gas, Cactus Az. Project', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(6005, 0, 30, 0, 0, '2013-06-10 00:00:00', 13600, 222.84, 373.44, 14196.3, 'Price is per each', 'F', 'Q2C #33335098, Denver', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(6006, 0, 20, 0, 0, '2013-06-10 00:00:00', 1724.62, 148.56, 248.96, 2122.14, 'Priced per each', 'D', 'Q2C #31753120', '0', '0', '0', '1', '0', 12, '1', '0', 14, 'US'),
(6006, 1, 20, 0, 0, '2013-06-10 00:00:00', 1724.62, 148.56, 248.96, 2122.14, 'Priced per each, part number P141316A6M0XX8', NULL, 'Q2C #31753120', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6007, 0, 20, 0, 0, '2013-06-10 00:00:00', 1726.79, 148.56, 248.96, 2124.31, 'Priced per each', 'D', 'Q2C #31753120, part number P241316A2M0XX8', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6008, 0, 0, 0, 0, '2013-06-11 00:00:00', 2362.5, 0, 0, 2362.5, NULL, 'A', '240kA, 480/277V SPD Type TVS Internal Modular OEM Kit', '1', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(6009, 0, 0, 0, 0, '2013-06-11 00:00:00', 2835.32, 445.68, 1493.76, 4774.76, NULL, 'F', 'Q2C # not provided, project is Civic Hospital, 41260 switchgear', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6009, 0, 0, 0, 0, '2013-06-11 00:00:00', 2835.32, 445.68, 1493.76, 4774.76, 'Meter bay', NULL, 'Q2C number not provided, This is for project of Civic Hospital 4160 switchgear', '0', '0', '1', '0', '0', 12, '0', '1', 1, 'US'),
(6018, 0, 0, 0, 0, '2013-06-13 00:00:00', 570, 445.68, 124.48, 1140.16, 'Price is per foot.', 'D', 'Q2C #31676299', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6019, 0, 0, 0, 0, '2013-06-13 00:00:00', 157.25, 148.56, 248.96, 554.77, 'TAG is Total price, Q2C #33130212', 'D', 'Also included in this TAG is 16 20A single pole breakers (QO120), 40Ft of SIS #4 wire (1393-028401), 40Ft of power cable #4 (1390-000280), (4) Crimp Lugs (YA4CL6BOX), AND (4) Compression Lugs (YA4CL3BOX)', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6020, 0, 0, 0, 0, '2013-06-13 00:00:00', 1180.32, 148.56, 248.96, 1577.84, 'Price includes CPT and Fuses. Q2C #33130212', 'D', 'Can only be mounted in a 29.5 wide bay', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(6021, 0, 0, 0, 0, '2013-06-13 00:00:00', 46.06, 37.14, 31.12, 114.32, NULL, 'A', 'If required, includes MMSAMK arrester mounting', '1', '1', '0', '0', '0', 12, '0', '0', 13, 'US'),
(6023, 0, 0, 0, 0, '2013-06-14 00:00:00', 665.59, 74.28, 373.44, 1113.31, 'Price is for each', 'D', 'Similar parts for reference: MCD-00000-15947, MCD-00000-15948 and MCD-00000 15951, Similar standard parts are 46006-401-01 and 46006-403-01', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6024, 0, 50, 0, 0, '2013-06-14 00:00:00', 87405, 0, 248.96, 87654, 'Price is per each', 'D', 'Q2C #33190457, Matheson Tri Gas, Cactus Az. Project', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(6025, 0, 0, 0, 0, '2013-06-14 00:00:00', 0, 0, 1244.8, 1244.8, 'Price is per bay', NULL, 'No Q2C number provided', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6026, 0, 0, 0, 0, '2013-06-17 00:00:00', 45, 18.57, 31.12, 94.69, NULL, 'A', NULL, '1', '1', '1', '0', '0', 12, '0', '0', 13, 'US'),
(6027, 0, 20, 0, 0, '2013-06-18 00:00:00', 1214, 74.28, 248.96, 1537.24, 'Price per each', 'F', 'Includes (4) digital outputs on the base. Advance display included in base unit, 10 in/4 out digital module, 2 ethernet 10/100 base T ports.', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6028, 0, 20, 0, 0, '2013-06-18 00:00:00', 2633, 74.28, 248.96, 2956.24, 'Priced per each', 'F', '2 x 14 in/6 out digital Modules (24-48Vdc), 2 ethernet 10/100 base T', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6029, 0, 20, 0, 0, '2013-06-18 00:00:00', 5146, 148.56, 373.44, 5668, 'Priced per each', 'F', 'Advacne Display included in base unit. 2 x 14 in/6 out Digital Modbus (24-48Vdc), 2 ethernet 10/100 Base T ports', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6030, 0, 20, 0, 0, '2013-06-18 00:00:00', 100, 0, 62.24, 162.24, 'Price per each', 'C', 'Q2C # 33413349, Pembina RFS11', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6031, 0, 20, 0, 0, '2013-06-18 00:00:00', 1794, 74.28, 124.48, 1992.76, 'Priced per each', 'D', 'Flush Mounting Panel', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6032, 0, 20, 0, 0, '2013-06-18 00:00:00', 164.04, 74.28, 62.24, 300.56, 'Price is per each', 'C', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6033, 0, 20, 0, 0, '2013-06-18 00:00:00', 164.04, 74.28, 62.24, 300.56, 'Price per each', 'C', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6034, 0, 20, 0, 0, '2013-06-18 00:00:00', 126.68, 74.28, 124.48, 325.44, 'Priced per each', 'C', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6035, 0, 20, 0, 0, '2013-06-18 00:00:00', 2197, 148.56, 248.96, 2594.52, 'Price per each', 'F', 'q2c #33414346, Arcelor Mittal', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6036, 0, 20, 0, 0, '2013-06-18 00:00:00', 3279, 148.56, 373.44, 3801, 'Price per each', 'F', 'Q2C #33414366, Arcelor Mittal', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6037, 0, 20, 0, 0, '2013-06-18 00:00:00', 2311, 148.56, 248.96, 2708.52, 'Priced per each', 'F', 'Q2C #33414346, Arcelor Mittal', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6038, 0, 20, 0, 0, '2013-06-19 00:00:00', 8725, 74.28, 248.96, 9048.24, 'Priced per each', 'C', 'q2c #33454053, Missour American Water', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6039, 0, 0, 0, 0, '2013-06-19 00:00:00', 1009.63, 148.56, 248.96, 1407.15, 'Price includes Engineering design time', 'C', 'Q2C #32848353-001, CentraCare Service 1 & 2', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6040, 0, 20, 0, 0, '2013-06-19 00:00:00', 3544, 148.56, 373.44, 4066, 'Priced per each', 'F', 'Q2C #32985863, Crosstex Plaquemine', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6041, 0, 20, 0, 0, '2013-06-19 00:00:00', 2485, 148.56, 373.44, 3007, 'Priced per each', 'F', 'Q2C #32985863, Crosstex Plaquemine', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6042, 0, 20, 0, 0, '2013-06-19 00:00:00', 3966, 148.56, 248.96, 4363.52, 'Priced per each', 'E', 'This is for budgetary quote', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6043, 0, 40, 0, 0, '2013-06-19 00:00:00', 6200, 148.56, 248.96, 6597.52, 'Priced per each', 'F', 'This is for a budgetary quote', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6044, 0, 40, 0, 0, '2013-06-19 00:00:00', 3200, 148.56, 248.96, 3597.52, 'Priced per each', 'D', 'This is for a budgetary quote', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6010, 0, 20, 0, 0, '2013-06-11 00:00:00', 7457.33, 148.56, 248.96, 7854.85, 'Priced per each. This is a generic price', 'F', 'Q2C #33416277, devon Jackfish Tank Farm', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(6011, 0, 20, 0, 0, '2013-06-11 00:00:00', 7216.05, 148.56, 248.96, 7613.57, 'Priced per each, this is a generic price', 'F', 'Q2C #33416277, Devon Jackfish Tank Farm', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(6011, 1, 20, 0, 0, '2013-06-11 00:00:00', 7216.05, 148.56, 248.96, 7613.57, 'Priced per each, this is a generic price. This relay to include Communication: Modbus TCP/IP Ethernet', NULL, 'Q2C #33416277, Devon Jackfish Tank Farm', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6010, 1, 20, 0, 0, '2013-06-11 00:00:00', 7457.33, 148.56, 248.96, 7854.85, 'Priced per each. This is a generic price. This relay to include Communication: Modbus TCP/IP Ethernet', NULL, 'Q2C #33416277, devon Jackfish Tank Farm', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6012, 0, 20, 0, 0, '2013-06-11 00:00:00', 3569, 148.56, 248.96, 3966.52, 'Price per each', 'F', 'Q2C #33416277, Devon Jackfish Tank Farm', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6013, 0, 20, 0, 0, '2013-06-11 00:00:00', 9027.86, 148.56, 248.96, 9425.38, 'Priced per each, this is a generic price', 'F', 'Q2C #33413349, Pembina RFSII', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6014, 0, 20, 0, 0, '2013-06-11 00:00:00', 7557.24, 148.56, 248.96, 7954.76, 'Priced per each, this is a generic price', 'F', 'Q2C #33413349, Pembina RFSII', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5987, 1, 0, 0, 0, '2013-06-01 00:00:00', 500, 148.56, 995.84, 1644.4, 'Priced per bay', NULL, 'Warning: This TAG can be used on one assumption only- the "vapor barier that isolates swgr from the bus duct is supplied by the bus duct supplier', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(6015, 0, 20, 0, 0, '2013-06-12 00:00:00', 2166, 148.56, 248.96, 2563.52, 'Price is per each', 'E', 'Q2C #33438401, Xstrata Kidd Creek Mine', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6016, 0, 20, 0, 0, '2013-06-12 00:00:00', 340, 74.28, 124.48, 538.76, 'Pricde is per each', 'D', 'Q2C #33438401, Xstrata Kidd Creek Mine', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6017, 0, 20, 0, 0, '2013-06-13 00:00:00', 3585, 297.12, 497.92, 4380.04, 'Priced per TAG', 'F', 'TAG price is for all parts', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6045, 0, 0, 0, 0, '2013-06-20 00:00:00', 277.5, 74.28, 62.24, 414.02, NULL, 'C', 'Q2C #33414346 Arcelor Mittal, 4.16 SWGR-IP. Note: For Motorpact, can only be used in 20.0 wide bay or larger', '1', '1', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6046, 0, 0, 0, 0, '2013-06-20 00:00:00', 0, 0, 0, 0, 'This is a no charge TAG, work around only', 'C', 'Q2C #33414346, Arcelor Mittal $.16 SWGR', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6047, 0, 0, 0, 0, '2013-06-20 00:00:00', 10, 74.28, 62.24, 146.52, 'Price per bay', 'B', 'Q2C #33414346, Arcelor Mittal $.16 SWGR', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(6047, 1, 0, 0, 0, '2013-06-20 00:00:00', 10, 74.28, 62.24, 146.52, 'Price per bay', NULL, 'Q2C #33414346, Arcelor Mittal $.16 SWGR. Ground bar to be tinned plated', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6048, 0, 0, 0, 0, '2013-06-20 00:00:00', 1460, 74.28, 124.48, 1658.76, 'Price per each', 'C', 'q2c #32293303-030, pamf San Carlos Center', '0', '0', '1', '0', '0', 12, '1', '0', 1, 'US'),
(6049, 0, 0, 0, 0, '2013-06-20 00:00:00', 86.08, 74.28, 124.48, 284.84, 'Price per fuse', 'C', 'Q2C #32293303-030, PAMF San Carlos Center', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6050, 0, 0, 0, 0, '2013-06-20 00:00:00', 25.25, 74.28, 62.24, 161.77, 'Priced per breaker', 'D', 'Q2C #32293303-030, PAMF San Carlos Center', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6051, 0, 0, 0, 0, '2013-06-20 00:00:00', 197821, 0, 62.24, 197883, 'Post Glove Quote ID: MK130619E', 'E', '96" W X 48" D X 60" H', '1', '1', '1', '0', '0', 12, '1', '0', 13, 'US'),
(6051, 1, 0, 0, 0, '2013-06-20 00:00:00', 12363.8, 0, 31.12, 12394.9, 'Post Glove Quote ID: MK130619E', 'E', '96" W X 48" D X 60" H', '1', '1', '1', '0', '0', 12, '0', '0', 13, 'US'),
(6048, 1, 0, 0, 0, '2013-06-20 00:00:00', 606.05, 74.28, 124.48, 804.81, 'Price per each', NULL, 'q2c #32293303-030, pamf San Carlos Center. Price of %Kva CPT deducted from price shown.', '0', '0', '1', '0', '0', 12, '1', '0', 14, 'US'),
(6048, 2, 0, 0, 0, '2013-06-20 00:00:00', 606.05, 74.28, 124.48, 804.81, 'Price per each', NULL, 'q2c #32293303-030, pamf San Carlos Center. Price of 5Kva CPT and fuses deducted from price shown.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6052, 0, 50, 0, 0, '2013-06-21 00:00:00', 2693, 148.56, 248.96, 3090.52, 'Priced per each', 'F', 'Case sice is 60TE', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6053, 0, 50, 0, 0, '2013-06-21 00:00:00', 3055, 148.56, 248.96, 3452.52, 'Priced per each', 'F', 'Case Size is 80TE', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6055, 0, 50, 0, 0, '2013-06-21 00:00:00', NULL, NULL, NULL, NULL, 'Priced per each', 'F', 'Case size size is 80TE', '1', '1', '1', '1', '0', 12, '1', '0', 14, 'US'),
(6056, 0, 50, 0, 0, '2013-06-21 00:00:00', 4143, 148.56, 248.96, 4540.52, 'Price per each', 'F', 'Case Size 80TE', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6057, 0, 50, 0, 0, '2013-06-21 00:00:00', 5296, 148.56, 248.96, 5693.52, 'Priced per each', 'F', 'caSE Size is 80TE', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6055, 1, 50, 0, 0, '2013-06-21 00:00:00', 4619, 148.56, 248.96, 5016.52, 'Priced per each', NULL, 'Case size size is 80TE', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6058, 0, 20, 0, 0, '2013-06-21 00:00:00', 379.2, 74.28, 248.96, 702.44, 'Price per each', 'D', NULL, '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(5518, 1, 0, 0, 0, '2012-11-12 00:00:00', 1223.63, 148.56, 124.48, 1496.67, 'Price is per bay.', NULL, 'This TAG is for up to (8) cables per phase. Order standard assembly 46015-200-52', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(5727, 1, 20, 0, 0, '2013-03-07 00:00:00', 341, 445.68, 124.48, 911.16, 'Price is for a 6ft section of a Motorpact Arc Resistant plenum', NULL, 'Q2C #32280554', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(6059, 0, 0, 0, 0, '2013-06-26 00:00:00', 150, 148.56, 1244.8, 1543.36, 'TAG priced per (1) 6 foot section. Apply TAG as required', 'D', 'F.O. name- Blue Racer', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6060, 0, 0, 0, 0, '2013-06-26 00:00:00', 1200, 148.56, 124.48, 1473.04, NULL, 'C', NULL, '0', '0', '1', '1', '0', 12, '0', '0', 13, 'US'),
(6061, 0, 20, 0, 0, '2013-06-26 00:00:00', 1020, 74.28, 373.44, 1467.72, 'Priced per IR window', 'D', 'Q2C #32387738-002 and 005', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6062, 0, 0, 0, 0, '2013-06-27 00:00:00', 50, 74.28, 373.44, 497.72, NULL, 'D', 'Engineering time only', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6063, 0, 0, 0, 0, '2013-06-27 00:00:00', 500, 148.56, 497.92, 1146.48, 'Light would remain on via seal-in-wiring until reset button is pushed.', 'F', 'Add, to to each bifurcated feeder breaker, two red pilot lights "Transformer Trip, two reset pushbuttons and two 125Vdc tripping duty auxiliary relays, (type X, 4 pole). External trip singles dry contacts would pick up the aux relay, turn on the lights.', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6064, 0, 0, 0, 0, '2013-06-28 00:00:00', 0, 0, 248.96, 248.96, 'Price per bay', 'C', 'Q2C #33063563', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US'),
(6065, 0, 20, 0, 0, '2013-07-01 00:00:00', 583.16, 74.28, 248.96, 906.4, 'Peiced per each', 'D', 'Q2C #31643392-015 and 016', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6066, 0, 0, 0, 0, '2013-07-02 00:00:00', 72.14, 74.28, 248.96, 395.38, 'This TAG to be used per breaker', 'D', 'q2c #31609697-001, e1 Projects', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6067, 0, 0, 0, 0, '2013-07-02 00:00:00', 0, 148.56, 124.48, 273.04, 'Apply TAG once per line, Applice twice if both AC and DC control bus used.', 'D', 'Q2C #31609697-001, E1 Projects', '0', '0', '1', '0', '0', 12, '0', '0', 14, 'US'),
(6068, 0, 20, 0, 0, '2013-07-03 00:00:00', 1090, 148.56, 248.96, 1487.52, 'Price per each', 'D', 'Q2C #33491773, City Of fort Wayne', '1', '1', '1', '1', '0', 12, '0', '0', 14, 'US'),
(6069, 0, 20, 0, 0, '2013-07-03 00:00:00', 14100, 148.56, 373.44, 14622, 'Price is per each', 'F', 'System includes- Kinetsync-NB digital control and annunciation module door mounted, Kinetics type SVR1 SCR controlled Power Factor/ Voltage Regulated Exciter, Inter-conn. cables with Molex plugs for wiring between the door mounted KinetSync and exciter', '0', '0', '0', '1', '0', 12, '0', '0', 14, 'US');

-- --------------------------------------------------------

--
-- Table structure for table `Sub-Catagory`
--

CREATE TABLE IF NOT EXISTS `Sub-Catagory` (
  `Sub-Catagory` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Sub-Catagory`
--

INSERT INTO `Sub-Catagory` (`Sub-Catagory`) VALUES
('AC Panel'),
('Arc Resistant'),
('Auto Xfer'),
('Barrier'),
('Battery System'),
('Bus'),
('Bus Duct'),
('Cable Lugs'),
('Cables'),
('Ckt Bkr'),
('Connect to other equipment'),
('Contacts'),
('Control Power Xfmr (CPT''s)'),
('Control wires'),
('Current Xfmr (CT''s)'),
('DC Panel'),
('Duplex'),
('Enclosure'),
('Eng Time'),
('Fault Indicator'),
('Ground Detection'),
('Ground Studs'),
('Hot Stick'),
('Key Interlock'),
('Lights'),
('Live Line Indicator'),
('MCC 2 Speed one winding'),
('MCC 2 Speed two winding'),
('MCC FVNR'),
('MCC FVNR (Latched)'),
('MCC FVR'),
('MCC RVR (Reactor)'),
('MCC RVSS (Solid State)'),
('MCC RVT (Auto Xfmr)'),
('MCC Synch. Bruch'),
('MCC Synch. Bruchless'),
('Metal-Clad Accessories'),
('Metering'),
('Mimic Bus'),
('Misc'),
('Misc Electrical'),
('other'),
('Paint'),
('Potheads'),
('Power Factor Capacitor'),
('Power Fuses'),
('Power Fuses MTG'),
('Product Selector'),
('Provisions'),
('Relays'),
('Roof Bushing'),
('Shop Time'),
('Space heaters'),
('Special Enclosure'),
('Surge Arrester'),
('Surge Capacitor'),
('SWGR Accessories'),
('Switches'),
('Test Blocks'),
('Testing'),
('Transitions'),
('UPS'),
('Utility'),
('Voltage Xfmr (VT''s)');

-- --------------------------------------------------------

--
-- Table structure for table `Switchboard Items`
--

CREATE TABLE IF NOT EXISTS `Switchboard Items` (
  `SwitchboardID` int(11) DEFAULT NULL,
  `ItemNumber` int(11) DEFAULT NULL,
  `ItemText` varchar(510) DEFAULT NULL,
  `Command` int(11) DEFAULT NULL,
  `Argument` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Switchboard Items`
--

INSERT INTO `Switchboard Items` (`SwitchboardID`, `ItemNumber`, `ItemText`, `Command`, `Argument`) VALUES
(1, 0, 'Main Switchboard', 0, NULL),
(1, 1, 'New Switchboard Command', 2, 'View Tag'),
(2, 0, 'New Switchboard Page', 0, 'Default'),
(2, 1, 'New Switchboard Command', 3, 'complexity'),
(2, 2, 'sub-catagory', 3, 'Sub-Catagory');

-- --------------------------------------------------------

--
-- Table structure for table `TAG Member Names`
--

CREATE TABLE IF NOT EXISTS `TAG Member Names` (
  `TAG Member` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `Current employee` char(1) NOT NULL,
  PRIMARY KEY (`TAG Member`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TAG Member Names`
--

INSERT INTO `TAG Member Names` (`TAG Member`, `Name`, `Current employee`) VALUES
(1, 'Don Bedwell', '0'),
(2, 'Bob Stocker', '0'),
(3, 'Tom Clarke', '0'),
(4, 'Maher Shehata', '0'),
(8, 'Ken Chellevold', '0'),
(9, 'Ken Joye', '1'),
(10, 'Ron Gill', '0'),
(11, 'Walter Smitty', '0'),
(12, 'Richard Sewell', '1'),
(13, 'Richard Barnett', '1'),
(14, 'Dave White', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Tag Number`
--

CREATE TABLE IF NOT EXISTS `Tag Number` (
  `NO` int(11) NOT NULL DEFAULT '0',
  `DESCRIPTION` varchar(510) DEFAULT NULL,
  `Sub Category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tag Number`
--

INSERT INTO `Tag Number` (`NO`, `DESCRIPTION`, `Sub Category`) VALUES
(5600, 'This TAG is for an 86-C, 12 Contact Electro Switch, part 7812D', 'Misc Electrical'),
(5601, 'This TAG is for a SEL-751A52CCCCD74851321 Key 0556. Includes (4) Includes (4) fibor optic detection model- C80404XXXXXX and communication cable SEL-C662, 6 Feet.', 'Relays'),
(5602, 'This TAG is for SEL 735 relay # SEL-0735VX20522EXXDXXX16102XX Key 2012 with communcation cable C661, 6 feet with USB connectrion optical communication cable.', 'Relays'),
(5603, 'This TAG is for a "Seismic Design Category "C" requirement', 'other'),
(5604, 'Add device barrier, similar to 46004-431-02, to the CWB for the mounting of an ATO for a redundant PLC system.', 'other'),
(5605, 'This TAG for connection to a Westinghouse NEMA 3R Metal-Clad with tin plated copper bus. The transition will be 36.0 wide with a three (3.0 wide) throat.', 'Transitions'),
(5606, 'This TAG is for Engineering time for PLC programming.', 'Eng Time'),
(5607, 'This TAG is for Engineering design time for the incoming line with a 2000:5 Ct inline to the main bus through the breaker bell housing in the upper compartment. The vt and cpt will be connected to the main bus above the breaker.', 'Bus'),
(5608, 'This TAG is for the factory labor to revise the existing Arc Resistant metal-cald switchgear on Q2C 30955300 Xtrata Min Raglan 5v swgr P-07-7252 Change order', 'other'),
(5609, 'customer requires an ANSI 94 "trip free" device, HGA relay. No actual part number is available.', 'Relays'),
(5610, 'Add device pan 46007-434-60 to the Control Wire Box above the "B" position drawout. Device to mount Best Battery System from PowerLogic', 'Battery System'),
(5611, 'Key interlock for a Ground and Test device to be interlocked with the low voltage main breaker. Medium voltage TAG. Keylocks to be coordinated with low voltage TAG', 'Key Interlock'),
(5612, 'Metering company, COMH, requires the Ct''s be moved from the breaker compartment to the incoming line side of the meter bay. The Ct;s are "donut"type to be mounted on the Breaker Bell housing, 46001-858-01', 'Bus'),
(5613, 'This TAG is for the customer change for engineering time for updating drawings.', 'Eng Time'),
(5614, 'Multilin Feeder Protection Relay, SR750-P5-G5-S5-H1-A20-G-T-H', 'Relays'),
(5615, 'ION Meter M7330 A0B0B0A0A0C', 'Relays'),
(5616, 'This TAG is for the AE and ED engineering time for the Mercedes EAK WAX BLDG- Vance, Al.', 'Eng Time'),
(5617, NULL, 'Relays'),
(5618, 'Please Enter Description Here', 'Metering'),
(5619, 'Power Logic PML ION7650 power monitoring meter, P7650B1C0B6E0A0A', 'Misc Electrical'),
(5620, 'This TAG is for P. Powell "Brite Spot" thermal monitoring system, part # BSG1.1KIT. Kit includes conversion module, fibre with probes, a disposable fibor trimmer and (3) fixture.', 'Misc Electrical'),
(5621, 'This TAG is for a RLH Industries wall mountable fibor management patch panel that contains 12 LC duplex connectors. Part # RLH-PMW-12-09-1', 'Misc'),
(5622, 'This TAG is for Feeder protection relay by Schweiter. Part number is 751A51A1ACA72851830', 'Relays'),
(5623, 'This TAG is to provide key interlock on the rear door and be coordinated to the racking mechanism key intrerlock', 'Key Interlock'),
(5624, 'This TAG is for the removal of the heaters for', 'Misc'),
(5625, 'This TAG is order specific for A Hoffman Box, A544208LPG and a Magelis HMI Touch 15" Touch Screen', 'Misc Electrical'),
(5626, 'This TAG is for the Application Engineering time for a customer change', 'Eng Time'),
(5627, 'This TAG is for a FT-14 Test Block part #FT4A14T06BN4095', 'Test Blocks'),
(5628, 'This TAG is for a RuggedCom Switch RSG2100, 19 port Modular Managed Ethernet Switch with Gigabit Uplink', 'Relays'),
(5629, 'On the 15Kv Metal-clad, #4, 5Kv rated cable, part #1390-000820 is used. Replace this cable with #4 cable 15Kv rated part # 1309-012981. The cost of the standard #4 cable, 1390-000820 is not controlled.', 'Misc Electrical'),
(5630, 'The Motorpact does have a NEMA 12 available, so select the outdoor NEMA 3R and deduct the heaters.', 'Misc'),
(5631, NULL, 'Transitions'),
(5632, 'Outdoor NEMA 3R 27Kv Metal-Clad transition to a Liquid filled transformer, 1500kva', 'Transitions'),
(5633, 'Transformer connection in a 12.-" wide transition along with coordinating bus assembly.', 'Transitions'),
(5634, 'Design 48.0" wide work space for the 27Kv NEMA 3R Non-walkin.', 'Enclosure'),
(5635, 'IRISS IR window, CAP-CT-12, 8.0" x 12.0", with full latch cover', 'Misc'),
(5636, 'IRISS IR window, CAP-CT-6, 6.3" x 8.6", with full latch cover', 'Misc'),
(5637, 'engineering design time for the design of a special load connection, below, from the lower breaker. The bus to be extented to the rear 12.0". Rear extension, TAG is 07-303, must be applied also.', 'Eng Time'),
(5638, 'This TAG is for Cable assembly from the RLH industries, # RLH-12RIMM-LDXX-2M-0', 'Misc Electrical'),
(5639, 'This TAG is for a NQ18LIC14 Panel Board. Includes (1) QOB2100, (3) QOB115, (2) QOB120, (1) QOB130, (3) QOB220, (1) QOB215)', 'Misc Electrical'),
(5640, 'This TAG is for the updating and revising drawing for F.o. 32452045-002 and 003, MAYO', 'Eng Time'),
(5641, 'The RT3 terminal blocks come with the plastic labels. Customer is requesting we label the plastic strips instead of using the "paper" strip. This Tag is for the Engineering hours to program the label markings.', 'Test Blocks'),
(5642, 'This TAG is for a MicombUS Bar Protection relay part number P74631BA6M0038K-', 'Relays'),
(5643, 'This TAG is for a Scientific Columbus AC Watt Transducer. Part number DL342K5PAN-7-B-SC. Range -5MW to 10MW, Special scale- -416.67 Watts to 833.33 Watts', 'Misc Electrical'),
(5644, 'This TAG is for a Generator Protection Relay, SEL-700G11ACA9X768500431 Key 1802', 'Relays'),
(5645, 'Redundant Battery Charger, AT10-130-120-F-240-SAUXXXX', 'Battery System'),
(5646, 'This TAG is for a Feeder Protection Relay type SEL-751A, part # is 751A01ABA1A75850330, KEY 0268', 'Relays'),
(5647, 'This Tag is for a Feeder Protection Relay type SEL 751A Part # 751A01A0X0X0X0850330, Key 945', 'Relays'),
(5648, 'This TAG is for Feeder Protection Relay type SEL 751A, #751A01ABA0X71850330 KEY 0459', 'Relays'),
(5649, 'This TAG is for a Motor Protection Relay type SEL-071, part #071001ABA9X71850200 Key 0407', 'Relays'),
(5650, 'This TAG is for the installation and Engineringm for type SEL 751A relay, part # 751A01ACACA74850301', 'Relays'),
(5651, 'This TAG is for Sel relay type SEL 071, part # SEL-071001A0X0X0X850001 KEY 0788', 'Relays'),
(5652, 'This TAG is for a SEL relay type SEL-751A, part # SEL-751A01A0X0X0X851001 KEY 0875', 'Relays'),
(5653, 'GE Multilin Feeder Protectiron relay # F60-T00-VKH-F8L-H5C-MXX-P6A', 'Relays'),
(5654, 'GE Multilin Motor Protection Relay # M60-T00-VFH-F8L-H5C-M8R-PXX', 'Relays'),
(5655, 'This TAG is for a SEL relay type SEL-751A, number is SEL-751A01ADACA74850301 KEY 0416', 'Relays'),
(5656, 'This TAG is for a PM*@) display only, part number PM8RD', 'other'),
(5657, 'This Tag is a new UPS Relay Module, #  AP9610. Module is used with APC SURTA3000Xl', 'Relays'),
(5658, 'This TAG is for a GE Multilin Relay part number 750-P5-G5-S5-H0-A20-R-E', 'Relays'),
(5659, 'This TAG is for the A.B. Chance Ground Stud, T6002867,  and Ground Stud Cover, C4060416', 'other'),
(5660, 'This TAG is for an "eye wash* station that is normally used with batteries. The TAG includes the "eye wash" bottles, 00320 and the mounting pan, MCD-00000-14002', 'other'),
(5661, 'Post Glover HRG, High Resistance Ground system. 4160V, 10A continuous. Includes high resistance ground pulser in free standing enclosure.', 'Misc'),
(5662, 'This TAG is for a SEL-751A Feeder Protection Relay with Arc Flash detetion, #SEL751A0A0A3A0X71850200 Key 0268', 'Relays'),
(5663, 'This TAG is for the fuse change on a fuse draw out for the Series 5 Metal-clad. The fuse is to be a 9F60DJD010, EJO-1 10E fuse on 12.0" centers. One keylock is mounted on the draw out truck and one keylock locks remote breaker.', 'other'),
(5664, 'Ths TAG is for a Magnecraft relay part # 782XBX2M4L-110D', 'other'),
(5665, 'This Transformer is for a 3500HP, 4160- Auto Transformer similar to 163116. This is a heavy duty instead of medium duty. Temp class: 220C, % taps 50-65-80, LRA 2684, FLA:447', 'other'),
(5666, 'This TAG is a Micom relay P64232BA6M0048J', 'Enclosure'),
(5667, 'Design a 36.0 wide stand alone CWB unit. This unit is to haved device mounted on the full height front instrument door.', 'Enclosure'),
(5668, 'This TAG is for GE Multilin type F35 Multiple feeder Management relays, Part # F35-T04-HLH-F8L-H6A-M6B-P6L-U6A-WXX', 'Relays'),
(5669, 'This TAG is for a GE type F35 Multilin Multiple Feeder Management relay # F35-T04-VLH-F8L-H6A-M6L-PXX', 'Relays'),
(5670, 'Startco SE-330 Relay Features Ground Fault Protection, One N/O and two form C Outputs, 125VDC Control Voltage', 'Ground Detection'),
(5671, 'Startco SE-330 Relay Features Ground Fault protection with Ethernet One N/O and two Form C Outputs, 125VDC Control Voltage', 'Ground Detection'),
(5672, 'This TAG is for a Micom 750 Feeder Protection System, #P5-G5-S5-HI-A20-R-T', 'Relays'),
(5673, 'This TAG is for the SEL751A relay to SEL751. Several option are available with this relay.', 'Relays'),
(5674, 'This TAG is for an ISO Palet. This Pallet is for', 'other'),
(5675, 'This TAG is for requirements for an ISO pallet. This pallet is for Metal-Clad and is for one (1) bay.', 'other'),
(5676, 'This TAG is for an ISO required Pallet. This pallet is for a two bay (2) shipping section.', 'other'),
(5677, 'ION S7300 Series Meter', 'Metering'),
(5678, 'This TAG is for Engineering time for the design and layout of doors for ISO (Intelligent Switchgear Organization)', 'other'),
(5679, 'This TAG is for a GarrettComm Ethernet Switch Unit. Several item are included in this TAG. Note: all items are GarrettComm. See below in the Tag notes.', 'Relays'),
(5680, 'This TAG is for a SEPAM SQ1 M87 Motor Protection Relay # SQ! M871E6A0A0', 'Relays'),
(5681, 'This TAG is for a VAMP relay # V321-ABBADDDAC, Acr flash central unit- Light & current, 4 zones, 4 outputs, 2 alarms', 'Relays'),
(5682, 'This TAG is order specific to order the following VAMP parts for POLA. The TAG is for (4) different subs, B302, B303, B304, and B305. Use the TAG (5682) for each Sub.', 'Relays'),
(5683, 'This TAG is for an Arc Resistant demonstration unit. This TAG is a request for for a VT upper compartment door and a breaker lower compartment door. The doors to include the following, See TAG notes.', 'other'),
(5684, 'Temperature Rise Test. Enter as separate line item. Price is CUSTOMER NET, NO NEGOTIATION', 'Testing'),
(5685, 'Job specific tag. VAMP relay associated parts. See specific components below.', 'Relays'),
(5686, 'Job Specific. VAMP Relay associated parts. See specific parts below.', 'Relays'),
(5687, 'This TAG is for a Metal-Clad, Outdoor Walk-in Common Aisle, Transition to a Liquid Filled Transformer, connection to the Lower Breaker. The transformer is 7500KVA. This TAG will include the dollars for the transition and Engineering time.', 'Transitions'),
(5688, 'This TAG is an Adder for special Vt''s replacing the "standard" Vt''s. Special # PT6-1-125-SDXXXXX, Vt Model is pt6-1-125. This Vt has dual secondies rated 57.7V each, 25 Kv Insulation, 125Kv BIL, unfused.', 'Voltage Xfmr (VT''s)'),
(5689, 'This Tag is a price adder for special Vt''s PT61-125-1382, MODEL PT6-1-125, 120v Secondary, 25 Kv Insulation, 125 Kv BIL', 'Voltage Xfmr (VT''s)'),
(5690, 'This TAG is for a Vacuum Bottle Test Set, 10mA, 660-10P-40kvVAC, 120V. Primarily used for vacuume bottle interrupter test.', 'other'),
(5691, 'Phase identification stickers, A, B, C. Apply at all lug landing locations, connections to switches, external connections and as required by Customer', 'Misc'),
(5692, 'Thia TAG is for an Allen-Bradley PLC with HMI for Main-Tie-Main Generator Feeder', 'Misc Electrical'),
(5693, 'Deduct, 15kV RBA800 fuse holders, discharge filters and up to 720E fuse refills. Provisions only for mounting fuses.', 'Power Fuses'),
(5694, 'ADDER - CPT, Single Phase, 4160V:480V; 60hZ; 60kV BIL; Apply this tag adder in addition to the standard 4160:240/120V CPT from the selector.', 'Control Power Xfmr (CPT''s)'),
(5695, 'This TAG is a $0.00 dollar TAG for the mounting of a special CPT  mounted on the 46028-379-01 device barrier. The CPT is a Basler #1361600. This barrier is made from #11 gauge material.', 'Barrier'),
(5696, 'This TAG is for customer chnages for the Micro-Soft order Q2C # 32334491-001, 002, 003. This TAG will include wiring changes, material and Engineering time.', 'Eng Time'),
(5697, 'Special HVL Outdoor Pull  Box for SC Johnson', 'Special Enclosure'),
(5698, 'This TAG is for a 22.0 wide transformer transition connection from the "main breaker" to the transformer. The transformer is "center lined to the switchgear. Use assembly similar to 46006-324, transformer to the right.', 'Transitions'),
(5699, 'This TAG is for an assembly connection of "Station Class" arresters connecting to the main bus', 'Misc Electrical'),
(5700, 'This is a $0.00 dollar TAG This TAG is for a fluorescent light fixture Part #ML6. (6 Watts', 'Lights'),
(5701, 'This TAG is for a Crompton Frequency Meter Type 077, part # 07741LAPNANAN, 1%, 55/65 Hz, 120 Volts', 'Metering'),
(5702, 'This TAG is a Receptacle, Ground Fault Type, 20A, 125VDC, duplex, NEMA 5-20R, part # 25410-13025', 'other'),
(5703, 'This TAG is for the Engineering time to design a transition to a 5000KVA Powercast Transformer', 'Eng Time'),
(5704, 'This TAG is for a UPS system, APC smart-UPS 1500VA L CD RM 2U 120V. 1000Watts/1440Va, input 120V/output 120V, Interface Port Smartslot, USB, rack Height 2U', 'UPS'),
(5705, 'This TAG is for Feeder Protection System, it''s a GE #735-5-5-HI-485', 'Relays'),
(5706, 'Adder to provide load side grounding feature on an HVL switch.', 'Switches'),
(5707, 'This TAG is for a relay #446S1201, RLY_OC_MCR51_1.5-12T_1-20, AS_X_INST_1A_TRGT_TSTCAS', 'Relays'),
(5708, 'This Tag is for Relay #446S1101, RLY_OC_MCD51_.3-2.4T_1-20, AS_X_INST_1A_TRGT_TSTCAS', 'Relays'),
(5709, 'This TAG is a relay #446S1201, RLY_OC_MCD51_1.5-12T_1-20, AS_X_INST_1A_TRGT_TSTCAS', 'Relays'),
(5710, 'This TAG is for GE/ITI "voltage transformer", part #PTG3160422FGC1, (1) FUSE, 35:1 (4600/120)', 'Voltage Xfmr (VT''s)'),
(5711, 'This TAG is for Syn 1 x 66.5/1 installed on "A" phase, 13800, part #PTG511101382FGC', 'Voltage Xfmr (VT''s)'),
(5712, 'This TAG is for a Syn 1 x 66.5/1 installed on "A" phase, 4160V, part #PTG3160422FGC1', 'Voltage Xfmr (VT''s)'),
(5713, 'This TAG is for 100KVAR PFCC fuses at 4160V, part #115A161400658 (single fuse)', 'Misc Electrical'),
(5714, 'This TAG is for an AC current transducer, #256-XARU-LSHG-C6-PQ', 'Misc Electrical'),
(5715, 'This TAG is for an AC Voltage transducer, #256-XVRU-PQHG-C6-PQ', 'Misc Electrical'),
(5716, 'This TAG is for a Watt Transducer, #256-XWWU-QQFA-C3-**-D', 'Misc Electrical'),
(5717, 'This TAG is for a MiCom relay #P14221LC7M0468J, Feeder Management Relay, Case size 40TE', 'Relays'),
(5718, 'This TAG is for a Micom Relay #P14321LL7M0468J, caSE SIZE IS 60te', 'Relays'),
(5719, 'This TAG is a MiCom Relay #2431LD6N0C78K, CASE SIZE IS 80TE', 'Relays'),
(5720, 'This TAG is a MiCom Relay #P34321LLN0368K, Case size 60TE', 'Relays'),
(5721, 'This TAG is for a MiCom Relay #34521LJ6N0368K, Case size 80TE', 'Relays'),
(5722, 'This TAG is for MiCom rekay #P64221LE6M0038J, Case size 80TE', 'Relays'),
(5723, 'This TAG is for a MiCom Relay #64321LF6M0038K, Case size 80TE', 'Relays'),
(5724, 'This TAG is for a MiCom Relay #P74621LF6N0038K, Case size 80TE', 'Relays'),
(5725, 'This TAG is for special Ct''s rated 120:5A, 0.6 B).2, C20 class, RF 2.0, 60Hz. Model is 785. Part #785-121', 'Current Xfmr (CT''s)'),
(5726, 'This TAG is for a 3 pole C60 type Molded Case Circuit Breaker to used on a VT drawout secondary instead of the pull out fuse block. Part #MG24146', 'Misc Electrical'),
(5727, 'This TAG is for 6 foot sections of a plenum for Motorpact. Use MVC-00000-02444', 'Arc Resistant'),
(5728, 'This TAG is for a Lock Out Relay from electro-Swich #7803D', 'Relays'),
(5729, '6.0" Throat to space Visi/Vac Enclosure away from indoor dry transformer.', 'Special Enclosure'),
(5730, 'Power Factor Correction Capacitor, 13.8kV, 150kVar, or will provide 137kVar at 13.2kV.', 'Power Factor Capacitor'),
(5731, 'This TAG is for a type 24 ElectroSwitch. This switch is used for "Control Power Isolation Switch"', 'Switches'),
(5732, 'Front Access Only - Specific load lug configuration for top cable exit', 'Cable Lugs'),
(5733, 'This TAG is for the field installation of additional light detector and cable for connection in Allen-Bradley MCC equipment to be installed by others. The "light collector is 46021-041-01 and the cable is 46021-046-11', 'Misc Electrical'),
(5734, 'This TAG is for a ZIV Relay, #FIRX0710D', 'Relays'),
(5735, 'This TAG is for the mounting of a "surge capacitor in the metal-clad equipment, "one high breaker"', 'Surge Capacitor'),
(5736, 'This TAG is for adding nameplates to the front of the instrument door, inside of the instrument door and the low voltage compartment device panels.', 'other'),
(5737, 'This TAG is for a Bitronics Relay #M57220100001C, M572, IED, COMPACT, DUAL LINE, DUAL BUS, VDS13,20-300VDC/55-285VAC', 'Relays'),
(5738, 'This TAG is for the mounting of (6) current transformer on the standard bell assemblies using the Ct mounting assembly, 46004-582-51. Product selector does not allow 4000:5 and 2000:5 on 1200A breaker.', 'Current Xfmr (CT''s)'),
(5739, 'This TAG is for a Maggelis 15" HDMI touch screen with built in computor, Part #HMIPPH7D0701', 'other'),
(5740, 'This TAG is for replacing 1200:5 Ct''s with 2000:5. Product Selector does not allow selecting Ct''s larger than breaker rating', 'Current Xfmr (CT''s)'),
(5741, 'This TAG is for the addition of a VT compartment without the drawout truck. The Vt drawout truck be ordered in the future. This TAG inclides the VT drawout compartment components and the seconday connection', 'Voltage Xfmr (VT''s)'),
(5742, 'This TAG is for a SEL751A "Feeder Protection" relay Part # SEL-751A01A0X0X71850200 Key 0451', 'Relays'),
(5743, 'This TAG is for a GE/Multilin Feeder Protection Relay, part #F60-T00-VKH-F8L-H5C-MXX-P6A', 'Relays'),
(5744, 'This TAG is for a GE Multilin Motor Protection Relay #M60-T00-VKH-F8L-H5C-M8R-PA6', 'Relays'),
(5745, 'This TAG is for a "double row" of connections for a "ring Lug. The part number is ASIST5-DL', 'Misc Electrical'),
(5746, 'This TAG is for a Siemens Multifunctional Protective Relay part number 7SJ6425-5EC01-1HG4', 'Relays'),
(5747, 'This TAG is for a Siemens Analog Single-Phase part number 7VH6000-0EA10-0AA0', 'other'),
(5748, 'This TAG is for a Siemens Feeder Multifuntion Protective relay, part number 7SJ6235-5EC02-1FE0', 'Relays'),
(5749, 'This TAG is for a Siemens  Feeder Multifunction Protective Relay, part number 7UM6235-5EC02-0FA0', 'Relays'),
(5750, 'This TAG is for a Micom Transformer Protection Relay, part number P642311A2M0048J', 'Relays'),
(5751, 'This TAG is for a Micom Main Incoming Protection Relay, part number P143311A2M0468J', 'Relays'),
(5752, 'This TAG is for a Micom Bus Differential Relay, part number P793BH0E2', 'Relays'),
(5753, 'This TAG is for a Micom Feeder Protection Relay, part number P141311A2M0468J', 'Relays'),
(5754, 'This TAG is for a Micom Motor Protection Relay, part number P243311A2M0578K', 'Relays'),
(5755, 'This TAG is for a HGA Relay, Type HGA 100 part number HGA111J2, 125VDC, 2 N.O., 2 N.C., form "C", Surface Mounted, front connected, with solid cover', 'Relays'),
(5756, 'This TAG is for an IO Meter number ION7350A0B0B0E0A0A', 'Metering'),
(5757, 'This TAG is for a (3) source CPT Transfer. The TAG is for Engineering Time only.', 'Eng Time'),
(5758, 'This TAG is for a "Fibor-Optic Transfer Switch, Type SEL 2126', 'Misc Electrical'),
(5759, 'This TAG is for a Feeder Protection Relay, type SEL-751, part number SEL-751501ACACA70850200 (KEY 0272)', 'Relays'),
(5760, 'This TAG is for the "tie and main breaker protection relay, type SEL-0351, part number SEL-035175A3A542X1 (KEY 6078)', 'Relays'),
(5761, 'This TAG is for Generator breaker protection relay, type SEL-0387, part number SEL-0387L03C03X54XX (KEY 7873)', 'Relays'),
(5762, 'This TAG is for Communication equipment, Port Server, Part number SEL-3610X3A0XXX0 (KEY 5299)', 'Relays'),
(5763, 'This TAG is for the "field" installation of Startco SE-134C Ground fault Relay with SE-CS10-6 Current sensor and SE-TA6A Termination Assembly.', 'Relays'),
(5764, 'This TAG is for an Ethernet Switch from GarrettCom Part number 6K32F, 125vdc', 'Misc Electrical'),
(5765, 'This TAG is for an Ethernet Switch from GarrettCom, part number 6KP8 RJ45', 'Misc Electrical'),
(5766, 'This TAG is for an Ethernet Switch from GArrettCom, part number 6KP8 MTRJ', 'Misc Electrical'),
(5767, 'This Tag is for a Hirschmann Automation and Control ethernet Switch, part number 943957001', 'Misc Electrical'),
(5768, 'This TAG is for a Schneider electric Phase Power Supply- 24VDC output, 3A, part number ABL8REM24030', 'Misc Electrical'),
(5769, 'This TAG is for a Crompton Volt Meter, part number 00705GAPZULC7', 'Metering'),
(5770, 'This TAG is for a Frequency Meter from Crompton, part number 07741LAPNANAN', 'Metering'),
(5771, 'Provide LED bulb instead of incandescent in light fixtures', 'Lights'),
(5772, 'This TAG is for a SEL0787 style Transformer Protection relay, part number SEL-07870x1aca0x0x850810 (key #2273)', 'Relays'),
(5773, 'This TAG os for a SEL751A Feeder Protection Relay, part number asel-751A51ACA0X74851810 (KEY #0596)', 'Relays'),
(5774, 'This TAG is for a SEL-751 style Feeder Protection Relay, part numberSEL-751301ACABA70850810 (KEY #0374)', 'Relays'),
(5775, 'This TAG is for a SEL0487 style Bus Differential With Breaker Failure Relay, part number SEL-0487B1X6X52XC2XE37EEXXX (KEY # 9491)', 'Relays'),
(5776, 'This TAG is for a SEL-2812 type Transceiver W/ IRIG-B, part number SEL-2812MR (key # 1386)', 'Misc Electrical'),
(5777, 'Provide cable connection to Type 36 Transformer, instead of standard Dry Unit Sub transformer', 'Transitions'),
(5778, 'This TAG is for a Type TPS Key Actuated Switch with (2) Square D Class 9001 KA1 Contacts. Contacts are 2 N.O and 2 N.C. This Key Interlock Switch is Sub-Panel mounted', 'Key Interlock'),
(5779, 'VAMP Model Selection Tool Quotes and Tag pricing', 'Relays'),
(5780, 'This TAG is for a GE SB1 Switch, switch number 16SB1BB438SSMK2', 'Switches'),
(5781, 'This TAG is for a GE Switch, part number 16SB1CB4B36SPR2P', 'Switches'),
(5782, 'This TAG is for a GE SB1 Switch, part number 16SB1BB201SGM2Y', 'Switches'),
(5783, 'This TAG is a $0.00 TAG for 3 Vt''s Delta, 4800:120', 'Voltage Xfmr (VT''s)'),
(5784, 'This TAG is for Amran Ct''s that are rated C800 class, 5000:5 Multi ratio, 5000/4000/2000/1500:5, Amran part number CT104-502MRA.', 'Current Xfmr (CT''s)'),
(5785, 'This TAG is for the Metal-Clad Arc Resistant 3000A Bus Duct Below, a rear extension is required', 'Bus Duct'),
(5786, 'This TAG is for a Feeder Protection Relay type SEL 751, Part number SEL751201A1A0X0X850210 (KEY 0633)', 'Relays'),
(5787, 'This TAG is for a Generator Protection Relay type SEL 700G, part number SEL-700G11A1A0X72810201 (KEY 1328)', 'Relays'),
(5788, 'This TAG is for a MiCom Feeder Management Relay Type P143, part number P14331LE6M0468J, Case size is 60TE', 'Relays'),
(5789, 'This TAG is for a CPT transformer, part number VMC05-014-15. This TAG to be used with TAG 5790 when units are across the aisle from one another.', 'Control Power Xfmr (CPT''s)'),
(5790, 'This TAG is to be used for Engineering time and factory labor for a cross aisle CPT transfer. Use with TAG 5789', 'other'),
(5791, 'Substitute an ION 7650 for the CM4000T and Ethernet card.', 'Metering'),
(5792, 'This TAG is for a Micom P143 Feeder Protection Relay, part number P24231LB6M0C78K', 'Relays'),
(5793, 'This TAG is for a Micom type P243 Motor Protection Relay, part number P24331LB6M0C78K', 'Relays'),
(5794, 'This TAG is for Engineering time', 'Eng Time'),
(5795, 'This TAG is for a GE Multilin style ML1200 relay, part number ML1200-C1-C1-C1-XX-X', 'Relays'),
(5796, 'This TAG is for a Multilin Ethernet switch type ML1200, Part number ML1200-C1-C1-XX-XX-X', 'Switches'),
(5797, 'This TAG is for the mounting of a G & W CLiP. It is be mounted, per phase, in a single 36.0" wide bay (1 bay for each phase).', 'other'),
(5798, 'Add (2) 2/0- 4/0 ground lugs. Lugs are not selectable in the product selector.', 'Cable Lugs'),
(5799, 'Startco SE-CS30-8 ground fault current transformer. For use with SE-701, SE-704', 'Current Xfmr (CT''s)'),
(5800, 'This TAG is for engineering time only, 2 hours for the AE and 2 hours for the ED', 'Eng Time'),
(5801, 'This TAG is for a SEL-2730U with IEC61850 Protocol. Part number SEL-2730U0ARAA1111AAAAX0 KEY 2936', 'Relays'),
(5802, 'Job Specific: To modify a 20" wide HVL/cc switch, to replace a 22" wide HVL Incoming Section', 'Special Enclosure'),
(5803, 'This TAG is for a Micom relay type P123, Expert three phase and Earth Overcurrent Raly,                                           part number P123B00Z112CF0', 'Relays'),
(5804, 'This TAG is for a Micom relay type P723, Single Phase or Three Phase High Impedance Differential Protection with Binary I/O Extension. Part number P723000Z112BD0', 'Relays'),
(5805, 'This TAG is for a Micom relay type P793, Three Phase Stabilising Adjustable Resistors, part number P793AH0B2', 'Relays'),
(5806, 'This TAG is for an Allen Bradley Powermonitor 5000, Bulletin 1426 with Ethernet Output', 'Relays'),
(5807, 'This TAG is order specific for a stand alone Control Wire Box (CWB) with instrument door. Door to have mimic bus per one line diagram, control switches and indicating lights on door as required.', 'Enclosure'),
(5808, 'This TAG is for a Relay Flasher 125VDC/120VDC Adjustable from 10 to 100 flashes per minute with external lockout timing adjustment. Part number 651130DS', 'Relays'),
(5809, 'This TAG is for a B90 Bus Differential Relay, part number B90-E00-HKH-F8H-H6E-L8H-NXX-S8H-UXX-WXX', 'Relays'),
(5810, 'This TAG is for a 125VDC close and trip test cabinet with 30Ft of cable.', 'other'),
(5811, 'This TAG is for InsulGard Partial discharge Monitoring System. Part number PD-IG-S-E0. Door mounted with RS485 Communcation port with Modbus RTU Protocol.', 'other'),
(5812, 'This TAG is for an Integrated Partial Discharge System (IPDS). Set of three (3) 15Kv, 80pF Coupling Capacitors with mounting kit, supplied with default RG58 cable, L= 65 feet', 'other'),
(5813, 'This TAG is order specific for an InsulGard Partial Discharge Syytem. This TAG is for the Radio Frequence Current Trasnformer with hole diameter 0.75 in. Supplied with default cable L= 65 ft. Work with TAGs 5811 and 5812', 'other'),
(5814, 'This TAG is for a Test Jumer, similar to 46007-489-50, except with 30 feet of cable', 'SWGR Accessories'),
(5815, 'This TAG is for an Ethernet Switch from Hirshmann, Part number MAR1030-40TTNNNNNNNNNNNNNNNNNNNNNNUM9HH07.0', 'Switches'),
(5816, 'This TAG is for a GE Multilin Relay type Multinet4 converter. Model MN4-HI-XX-AD-X. It would communicate 10/100MB copper RJ45 Ethernet to the ENMS', 'Relays'),
(5817, 'This TAG is for a "backfed" 450Alatching contactor, cable connected to the second main. Cable connection to for maximum (2) 250MCM/Phase', 'other'),
(5818, 'This TAG is for a "backfed" 450A contactor with hard bus connection to the line side of the starter.', 'other'),
(5819, 'This TAG for instruction purposes only. Engineering  to wire the FVNR coil through a test switch Latch controller trip and close coils to be wired through test switches.', 'Misc Electrical'),
(5820, 'This TAG is for a "bus tap off" from the upper tie bus to have cables exiting below. If insulatoer supports are required, use supports as specified per order', 'Bus'),
(5821, 'This tag is for the mounting of "zero sequence ct''s, 50:5a ratio, GE/ITI part number 112-500', 'other'),
(5822, 'This TAG is for the design of a new "cable duct" assembly for a bifurcated feeder. The new cable duct will accommidate both sets of cable from the bifurcation feeder.', 'Enclosure'),
(5823, '25kvA Single Phase CPT for 25kV through 38kV.', 'Control Power Xfmr (CPT''s)'),
(5824, 'This TAG is for a customer change to change the VT''s on the order to PTG5111842FGC1. The system is a "wye" and the VT ratio is not selectable in the product selector', 'Voltage Xfmr (VT''s)'),
(5825, 'This TAG is for a 1200A Bus Duct above from the lower breaker, Metal-Clad, 63Ka Arc Resistant. Rear extension is required when plenum is required. See TAG 07-5437 for rear extension.', 'Bus Duct'),
(5826, 'This TAG is for a 2000A Bus Duct above from the lower breaker, Metal-Clad, 63Ka, Arc Resistant. When plenum is required a rear extension is required. See TAG 07-5437', 'Bus Duct'),
(5827, 'This TAG is for a 3000A Bus Duct above from the lower breaker, Metal-Clad, 63Ka, Arc resistant. When plenum is required, a rear extension is required, See TAG 07-5437', 'Bus Duct'),
(5828, 'This TAG is for a 1200A Bus Duct above from the upper breaker, Metal-Clad, 63Ka, Arc Resistant. When plenum is rear required a rear extension is also required. See TAG #07-5437', 'Bus Duct'),
(5829, 'This TAG is for a 2000A Bus Duct above from the upper breaker, Metal-Clad, 63Ka, Arc Resistant. When plenum is required a rear extension is required. See TAG #07-5437', 'Bus Duct'),
(5830, 'Customer change- Metal-Clad Doors, from standard right hand hinge to left hand hinge', 'Eng Time'),
(5831, 'This TAG is for Engineering time to correct drawing', 'Eng Time'),
(5832, 'This TAG is for a GE MIV II Voltage/Frequence Relay, part number MIVII-1-0-0-0-E-00-HI-00', 'Relays'),
(5833, 'This TAG is for a Voltage Transformer, 14400/120. Product selecter will not allow to select 14400/120, Part number is PTG52110144FFGC2, 1500VA, .5E fuses (2 fuses), 15.5 CAVH0.5E', 'Voltage Xfmr (VT''s)'),
(5834, 'This TAG is for a Red Push Button for Emergency Stop, part number XB5AT42', 'other'),
(5835, 'This TAG is for a 86 Lockout Relay for the starters, Part number 7803D', 'other'),
(5836, 'This TAG is for a GE/ ITI Current Transformer Model 190X, part number 190x0100, 5:0.100 ratio. Tag includes Mounting Bracket 0221B00777', 'Current Xfmr (CT''s)'),
(5837, 'This TAG is for a special cable connection assembly to accommidate in the Arc Resistant Metal-Clad 12 1250MCM lugs per phase. Cable lugs to mounted back to back. Lugs are YA452N', 'Bus'),
(5838, 'This is a $0.00$ TAG for cables exiting out the "top" of the bay for the load cable.', 'Cables'),
(5839, 'This TAG is for the "Cable Connection To The Mani Bus", Top entry. Assembly number 73449-851-51. This is a Rojo-Gomez assembly. This is for Metal-Clad, 63Ka', 'Bus'),
(5840, 'This Tag is for a Quantum Network Option Modua, fobor optic ModBus Plus Head end/ repeater, 1 ch. Part number 9788CUSTHDWE', 'other'),
(5841, 'This TAG is for a 40Pt. I/O terminal Strip Connector, IP20 Finger Safe, Part number 9788CUSTHDWE', 'other'),
(5842, 'This TAG is for a 14-10/100 Base TX RJ-45 Auto sensing Ports and 2-100 Base FX SC Multimode Ports Fully Managed Operation, DIN-Rail Mount, -40 to 70 degree Celcius Operating Temp. redundant Power Inputs 10-30VDC', 'other'),
(5843, 'This TAG is for a GE Multilin Type 339 Motor Protect Relay, Part number 339-E-P5-G5-H-E-S-N-M-2E-D-N', 'Relays'),
(5844, 'This TAG is for a High Resolution Ct, 50:5A, part number is 3PL55500001', 'Current Xfmr (CT''s)'),
(5845, 'This TAG is for a 63Ka, 4000A copper silver plated main bus that requires fans for venting', 'Bus'),
(5846, 'This TAG is for a four (4) Position Selector Switch Non-illuminated Operators, part number 9001KS88', 'Switches'),
(5847, 'This TAG is for a Hirschmann Ethernet Switch Model RS20-0800-T1T1SDAEHH01.0', 'Switches'),
(5848, 'This TAG is for a GE Multilin Relay for Motor Protection, part number 369-HI-R-M-E-E', 'Relays'),
(5849, 'This TAG is for the breaker motor not to be wired for electrical operation. NO VOLTAGE TO BE SUPPLIED TO THE MOTOR.', 'Misc Electrical'),
(5850, 'This TAG is for a fully rated insulated neutral bus for the Metal-Clad equipment. Bus to be mounted on stand-off insulaters. The neutral bus to rated at, minimum rating 5Kv.', 'Bus'),
(5851, 'This TAG is for aSEL Uninterruptable power supply unit, part number SEL-UPS048-4X Key 2805', 'Misc Electrical'),
(5852, 'This TAG is for the mounting of a Zero Sequence CT for the OEM Semi-Assembled Metal-Clad.', 'Ground Detection'),
(5853, 'Use Kirk KCAMM key locks,  instead of the Federal Pioneer, on HVL/cc mechanisms.', 'Key Interlock'),
(5854, 'This TAG is for aSEL-311L, Line Differential System, Part number SEL-0311L1JHH3254424XX, Key 9665', 'Relays'),
(5855, 'This TAG is for a SEL-0311C Transmission Protection Relay, part number SEL0311C11HH3E5421 KEY 6702', 'Relays'),
(5856, 'This Tag is for the mounting of nameplates on the inside and outside of the Arc Resistant instrunemt door.', 'Switches'),
(5857, 'This TAG is for L/R switch, series 24, 3 deck. Part number is 24203B', 'Switches'),
(5858, 'This TAG is for a Top Hat on top of a Metal-Clad 27Kv Meter Bay. Top to be full depth of Meter Bay. Must be removed for shipping.', 'Enclosure'),
(5859, 'This TAG is for Engineering time to revise Control Schematics and wiring diagrams on Q2C #30822516-002', 'Eng Time'),
(5860, 'This TAG is for a "point sensor" for a SEL-751A relay. Part number SEL-C80430XXXXX KEY 5034', 'other'),
(5861, 'This TAG is for a "loop sensor" for SEL-751A relay. Part number SEL-C80425S10XX', 'other'),
(5862, 'This TAG is for the mounting of the Auxiliary drawout "super structure" on top of the Metal-Clad bay. The "super structure is set up for 2 or 3 Vt''s.', 'Enclosure'),
(5863, 'This TAG is for an "old style" Vt drawout to be used in the VT drawout compartment "super structure". The vt drawout truck is always set up for 2 or 3 Vt''s. In addition to this TAG, use TAG 07-5862 for the super structure.', 'Voltage Xfmr (VT''s)'),
(5864, 'This TAG is for a special transition connection to a Powercast transformer, cable connected. The transition will be in the front lower compartment of a Metal-Clad unit.', 'Transitions'),
(5865, 'This TAG is for a Metrosil/Resistor Module type 2V75, part number 2V75ACABBA', 'Relays'),
(5866, 'This TAG is for the mounting of a 3000A ct in a 1200a breaker compartment. Selector does not allow the selection.', 'Current Xfmr (CT''s)'),
(5867, 'This TAG is to add FH25KL fuse holder, used in a 29.5 wide starter.', 'Misc Electrical'),
(5868, 'This TAG is for Square D Auxiliary relay, 120v, 4 contact, part number 8501XDO40V02', 'Relays'),
(5869, 'This TAG is for the mounting of a 3000A special bell assembly in the cable compartment to mount (2) type 780 or 781 CT''s per phase. Can be used on either N1and Arc Resistant equipment.', 'Bus'),
(5870, 'This TAG is for the mounting of an incondescent light in the low voltage compartment. Assembly similar to 46005-258-50', 'Lights'),
(5871, 'This Tag is for a close coupled connection to a Powercast Transformer, 2000KVA. This assembly to be used for a 63Ka line-up. Transition is similar to 46006-368. This is a 15Kv N3R Walkin line-up.', 'other'),
(5872, 'This TAG is for the Crompton AC Voltmeter, part number 007-05GA-PZUA-C7', 'Misc Electrical'),
(5873, 'This TAG is for the Automation NTH SCH-Independence Panels Control Panels. Automation NTH will provide the relay cabinet and internal wiring. Engineering and drawings to be completed by Schneider Electric.', 'Enclosure'),
(5874, 'This Tag is for the Automation NTH SCH-Independence Panels Control Panels. Automation NTH will provide the relay cabinet and internal wiring. Engineering and drawing to be completed by Schneider Electric. Subsation E & F panel #2', 'Enclosure'),
(5875, 'This TAG is for the Automation NTH SCH-Independence Panels Control Panels. Automation NTH will provide the relay cabinet and internal wiring. Engineering and drawings to be completd by Schneider electric. Substation E panel #5', 'Enclosure'),
(5876, 'This TAG is for the Automation NTh Rack Mount Enclosure w/shelf', 'Enclosure'),
(5877, 'This TAG is for the Automation NTH (4) Door Terminal Cabinet', 'Enclosure'),
(5878, 'VAMP 255 Feeder/Motor Manager Relay; 1/5A current for O/C Phase and Ground Fault with vootage, and Arc Flash detection 40; 265Vac/dc control voltage, Modbus communication interface', 'Relays'),
(5879, 'This is a TAG for 1200MCM to 2500MCM cables maximum 3 cables per phase. Special termination lug pad requried. Metal-Clad product selector does not have a selection larger than 1000MCM. This is for a one (1) high only', 'other'),
(5880, 'This TAG is for the device panel 46004-431-02 for the A & B position in a blank cell', 'Barrier'),
(5881, 'This TAG is for the Remote CPT fuse drawout assembly and compartment. This is for two (2) fuse assembly for a single phase remote CPT', 'other'),
(5882, 'This TAG is for Engineering time for additional relaying requirements due to the utility specification changes', 'Eng Time'),
(5883, 'This TAG is for 40 hours of Engineering time', 'Eng Time'),
(5884, 'This TAG is for a Auto/Manual switch 24205B', 'Switches'),
(5885, 'This TAG is for a type 24 Electro Switch similar to 24205B except to be Key Lockable', 'Switches'),
(5886, 'This TAG is for a Sentron PAC3200, part number 7KM2112-0BA00-3AA0 TNIP', 'Metering'),
(5887, 'This TAG is for a Woodward Syncroising unit, part number SPM-D11/LSXR 8440-1666', 'Metering'),
(5888, 'This TAG is for a Woodward Syncronising Unit. Part number SPM-D10/NYB 8440-1435', 'Metering'),
(5889, 'This TAG is for a Woodward Syncronising Unit, part number SPM-D10/NYB8440-1435', 'Metering'),
(5890, 'This TAG is for A Woodward Syncronising Unit, part number SPM-D10/XN 8440-1668', 'Metering'),
(5891, 'This TAG is for 36.0 wide transition from Metal-Clad to HVL/cc. Transition includes the frame assembly, bussing and Engineering design time', 'Transitions'),
(5892, 'This TAG is for a "pull box" on the Metal-Clad Transition to the HVL/cc. Work with TAG 5891.', 'other'),
(5893, 'This TAG is an Auxiliary relay CAD32G7', 'Relays'),
(5894, 'This TAG is for a relay, on delay tinimg, CMOS IC Circuit, 0.1% repeat accuracy, 5 timing ranges covering .05 seconds to 999 minutes, thumbwheel Adjustable, part number 9050JCK60V20, 8501NR52 Socket.', 'other'),
(5895, 'This TAG is for the breaker wiring to have, 1) Close Coil Monitor, 2) spring Charge Indication, 3) Trip Coil Monitor', 'Misc Electrical'),
(5896, 'This TAG is for a LIPA Metering section, 15Kv, special 54.0 wide bay, provisions for bar type Ct''s, provisions for (2) 250KCML/ph, 1.25 PVC, (2) Lexan barriers and VT barriers', 'other'),
(5897, 'This TAG is for a change order which is for a quantity of (4) Electroswitch catalog number 2446D, also included is 24 hours Engineering time.', 'Misc Electrical'),
(5898, 'This TAG is for an Auxiliary relay, 120vac, Part number KUEP11A35120', 'Relays'),
(5899, 'This TAG is for a relay, 62TDE, 120VAC, 10-100 seconds, Part number is 7014AD', 'Relays'),
(5900, 'This is a "generic" TAG for 9001KT38 LED type light. The nameplate and cap color is to be determined at time of engineering.', 'Lights'),
(5901, 'This TAG is for a Metal-clad, 5/ 15Kv, N3R Walk-in assembly connection to the primary side of a 3000KAV "liquid filled" from the Metal-Clad main bus tansformer. This transition will 36.0 wide with a 3.0 throat.', 'Transitions'),
(5902, 'This TAG is for MiCom relay for Directional/Non-Directional Overcurrent and Directional/Non-Directional Earth Fault relay. Part number P127BA0Z112FC0', 'Relays'),
(5903, 'This TAG is for a MiCom Transformer Protection relay. Part number P642312A2M0048J', 'Relays'),
(5904, 'This TAG is for a MiCom Current differential protection relay, part number P521B0AZ112DA0', 'Relays'),
(5905, 'This Tag is for a MiCom is for a "Single or Three Phase High Impedance Differential Protection with Binary I/O Extension. Part number P723000Z112BD0', 'Relays'),
(5906, 'This TAG is for VAMP Arc Flash Protect, VAMP 321 Central Unit. Part number to be determined at tiome of Engineering', 'Misc Electrical'),
(5907, 'This TAG is for Recepacle Protection Cap, size 14. for use with circular Receptacle Connector. Part number MS25043-14D', 'Relays'),
(5908, 'This TAG is for a GE Multilin Motor Protection Relay, Part number M60-T00-HKH-FXX-H5C-M6S-0XX-UXX-WXX. This is a series RS485 + Three 100 BAseFX Eth, Multimode, SFP Lc, 125/250VDC', 'Relays'),
(5909, 'Tiltwatch Plus tilt indicators.', 'other'),
(5910, 'This TAG is for Cisco Ethernet switches, part number IE-3000-8TC', 'Switches'),
(5911, 'This TAG is for a Cisco Ethernet switches Expansion module, part number IEM-3000-8TM.', 'Switches'),
(5912, 'Provide low voltage compartment for 14.75" wide section', 'Enclosure'),
(5913, 'Provisions to install future VAMP 121 Module in an HVL/cc', 'Misc Electrical'),
(5914, 'This TAG is for a Phoenix power supply unit, 2866750, and an Ethernet Switch, 2891411.', 'Misc Electrical'),
(5915, 'This TAG is for changing a Voltage Trasnformer from a 4400Volt primary to a 3300 volt primary. Part number PTG3-2-60-332FFGC2.', 'Voltage Xfmr (VT''s)'),
(5916, 'This TAG is for changing the #4-5Kv standard cable used in the drawout assemblies, 1390-000820, to the #4-15Kv cable,  1309-012981', 'Misc Electrical'),
(5917, 'This TAG is for a Phoenix Power Supply Unit, part number 2866750', 'Misc Electrical'),
(5918, 'This TAG is for a Phoenix, Ethernet Switch, part number 2891411', 'Misc Electrical'),
(5919, 'This Tag is for Engineering time for a special breaker. Customer wants to monitor the breaker trip coil only when the breaker is open.', 'Eng Time'),
(5920, 'This TAG is for a special "plenum" exit duct that 3 feet 3 inches', 'Arc Resistant'),
(5921, 'This TAG is for a SEL relay for Transformer Protection. Part number 0787EXACA3A75850300 Key 1627', 'Relays'),
(5922, 'Please Enter Description Here', 'Relays'),
(5923, 'This TAG is for a Feeder Protection Relay, part number SEL-751A51ACA1A74850300 Key 0234', 'Relays'),
(5924, 'This TAG is for  eight (8) Engineering Time and four hours of manufacturing time for the mounting of a Rockwell control Logix I/O Rack. Parts are listed in TAG notes.', 'other'),
(5925, 'This TAG is for an EGX300SD Power Logic ethernet Gateway wired to daisy chane of Motorpact Softstart controllers', 'Misc Electrical'),
(5926, 'This TAG is for a GE EPM 9900 Advanced Power Quality Meter, control power AC 100-240 VAC power supply.', 'Metering'),
(5927, 'Provide aluminum one hole compression lugs, instead of copper', 'Cable Lugs'),
(5928, 'This TAG is for an eighteen (18.0) wide transition on either side of a tie breaker. Design to include transition, main bus and the proper supporting for the mani bus', 'Transitions'),
(5929, 'This', 'other'),
(5930, 'This TAG is for afront instrument door front extension on the "standard" 63Ka Metal-clad. The extension to no more that 8.00 deep and must clear adjacent door extension and door swing.', 'other'),
(5931, 'This TAG is for the creataion of removable rear covers from the fron of the unit of the incoming cable.', 'Barrier'),
(5932, 'This TAG is for a "surge protection system from Maxivolt, part number WS-5Kv', 'other'),
(5933, 'This TAG is a "polyester" barrier" to be mounted between the sections of the Motorpact units.', 'Key Interlock'),
(5934, 'This TAG is for four (4) Cylinder Transfer Keylock', 'Key Interlock'),
(5935, 'A.B. Chance 1.0" ground ball stud covers C4060416, set of 4', 'Ground Studs'),
(5936, 'This TAG is for the engineering time, Manufacturing labor and testing of a Multilin 369 relay supplied by costomer. The part number of the relay is 369-HI-R-M-O-E-O-E, 125 VOLTS dc', 'Relays'),
(5937, 'This Tag is for the', 'Misc Electrical'),
(5938, 'This TAG is order specific for a Post Glover High resistant Grounding Unit. 4160/2400 "wye" Maximum duty temperature rise is 385 degrees C', 'Misc Electrical'),
(5939, 'This TAG is for a Motor Protection relay type SEL-710, part number 071001A0X0X0X81801 KEY 864', 'Relays'),
(5940, 'This TAG is for Feeder Protection with Arc Flash detection, type SEL-751A, part number sel-751A01A0X0X0X81301 key 0850', 'Relays'),
(5941, 'Customer supplied AC control power', 'Misc Electrical'),
(5942, 'This TAG is order specific for a special 26 high pull box on top of a Motorpact unit. The pull box will span across a 14.75 wide bay and acroos a 20.0 wide bay.', 'other'),
(5943, 'This TAG is for the TOC to have indicating lights for the connect and disconnect position. Green-disconnect, red-connect. Use standard 9001KP38 lights', 'Lights'),
(5944, 'Thia TAG is for SEL clock, part number 240700013 Key 2233', 'other'),
(5945, 'This TAG is a SEL Communcation Processor, part number 203253X40XE4XX Key 7173', 'other'),
(5946, 'This TAG is for metering in the incoming auxiliary section (not incoming into a controller) with Vt''s and "standard" 560 Ct''s with top incoming cables. Vt''s to mount on floor. Switched Vt''s will not work in this appliation', 'Voltage Xfmr (VT''s)'),
(5947, 'This TAG is for engineering Time for updating drawing for Q2C #30793001-070', 'Eng Time'),
(5948, 'This TAG is for a N-Tron Ethernet Switch, Type 309f-X-N, part number 309FX-N-309FX-N-ST, Multimode, ST style connector, 2Km Maximum seg length', 'Switches'),
(5949, 'Tag pricing for  VAMP Relays: 50, 52, 55, 59, 210, 230, 255, 265, 257, 265 & 265M', 'Relays'),
(5950, 'This TAG is for the front instrument door "box". Use maker parts MVC-00000-01277, 00113, 01355, and 01826', 'Enclosure'),
(5951, 'This TAG is for 10 feet of Arc Resistant plenum exhaust duct. Price will indicate total footage price. Price note will indiacte the per foot price.', 'Arc Resistant'),
(5952, 'This TAG is for the Metal-Clad Semi-Assembled OEM for the rear hinded covers with padlock provisions. Use standard assembly 46004-442-51', 'other'),
(5953, 'Deduct 5kV HVL/cc switch', 'Switches'),
(5954, 'This TAG is order specific for Engineering time to revise Machanical and Electrical drawings on Q2C #32520335-005. Also included is (16) 2-pole fuse disconnect block, and 32 BAF2 fuses', 'Eng Time'),
(5955, 'This TAG is for a "kirk" key lock to interlock the racking mechanism', 'Key Interlock'),
(5956, 'This TAG is for roof bushing. The assembly of the bu8shings to be installed by the PZC vendor', 'Roof Bushing'),
(5957, 'This TAG is for the bussing assembly for 27Kv roof bushings in a Power Zone Center', 'Bus'),
(5958, 'This Tag is for Synchronous. Brush type motor.  Motor is 900hp, brush type, field: 125VDC at 49 ADC, AC input: 4160/3/60', 'other'),
(5959, 'This TAG ios for a type 451 SEL relay for Protection, Automation, and Bay Control System', 'Relays'),
(5960, 'This TAG is for a Manual Ground and Test device for Baltimore Gas and Electric, For design purposes, use 46007-125-50. See TAG notes for nameplate information.', 'other'),
(5961, 'MiCOM 3 phase, High Impedance Differential Relay (P72300Z112BD & P793A00B2)', 'Relays'),
(5962, 'This TAG is for a special current transformer to be mounted in the cable compartment. The CT is a 200:5A c100 Class. The CT is by TPM of Canada.', 'Current Xfmr (CT''s)'),
(5963, 'This TAG is for a transition section matching from a Series 2 Metal-Clad to Series 5 Metal-clad. This transition to be full depth of the Series 2. The transition section includes bussing.', 'Transitions'),
(5964, 'This TAG is for a Micom Relay, Generator Protection Relay with Differential, part number P34331JA6M0368K', 'Relays'),
(5965, 'This TAG ius for a Micom Relay, Feeder Management relay, Part number 14131JA6M0468J', 'Relays'),
(5966, 'This TAG is for a special GE/ITI current transformer with a 150:1 ratio.', 'Current Xfmr (CT''s)'),
(5967, 'This Tag is for a Managed 24 Port Ethernet Switch, part number 2730M0ARAX111AAAX1 Key 3146', 'other'),
(5968, 'This TAG is for Feeder Protection Relay, part number 751A51ACA1A71850611 Key 0283', 'Relays'),
(5969, 'This TAG is for a DC Relay Power Control Voltage (125VDC), Part number CAD32GD', 'Relays'),
(5970, 'This TAG is for a Manual Ground and Test Device for 27Kv, 2750A. See 46027-900-51', 'other'),
(5971, 'Please Enter Description Here', 'Bus'),
(5972, 'Please Enter Description Here', 'Bus'),
(5973, 'This TAG is for special lug connections for (4) 2-holes lugs spaced 3.5 inches center to center. Two Lug pads to be capable of terminating (2) lugs per pad and centerd 8.0 inches apart', 'Bus'),
(5974, 'This TAG is for a special lug connection in the bus tie cable compartment. Three taps for "each" phase shall accommadate a total of (6) 2000MCM cables per phase.', 'Bus'),
(5975, 'This TAG is for the mounting of the Duresca Bushing, 46029-301-01, in the cable compartment for the mounting of 2000:5 MRCT''s for the bus differential circuit.', 'other'),
(5976, 'This TAG is a $0.00 TAG for the "customer connections" to mounted in the upper compartment', 'Misc Electrical'),
(5977, 'This TAG is a 1200A "cable" connection off the upper bus duct for exit below. Cable lugs for (2) 750 MCM/phase', 'Bus'),
(5978, 'This TAG is for Multimode Fibor-Optic Arc Flash Dectection Sensors, part number C80408XXXXX Key 5067', 'other'),
(5979, 'This Tag is for an Intelimainsnt Modular 3 phase AMF control unit Base Box for Mains tie/Bus Tie application function PLC With Ethernet Port, Modbus TCP. No display. Part number IM-NTC-BB', 'other'),
(5980, 'This TAG is for an Eight (8") Display with Trends Monitoring and external data, part number InteliVision 8', 'other'),
(5981, 'This TAG is for a Communications Module Cellular and Ethernet up to 32 IGS-NT controllers', 'other'),
(5982, 'This TAG is a "price deduct" to eliminate the meter bay', 'other'),
(5983, 'This TAG is a work around TAG do to selector issues. Selector forces a main breaker section next to the meter bay. This is a deduct to eliminate the main breaker unit', 'other'),
(5984, 'This ia a No dollar TAG. This TAG is for confirmation only of the line of Metal-Clad connecting to an HVL switch then the HVL switch connecting tto a PG&E meter bay,', 'other'),
(5985, 'This Tag if a transition connection to a "dry type" transformer. The new MCC is replacing Iso-flex. Transition to be full of transformer flange. Transition to include bussing to transformer.', 'Bus'),
(5986, 'This TAG is for an Electroswitch #24220LC', 'Switches'),
(5987, 'This TAG is for 2000A bus duct for the Motorpact. The unit width is 36.0 wide. Can be used only for NEMA 1 (indoor)', 'Bus Duct'),
(5988, 'This TAG is for a MiCom relay type P143, Feeder Management Relay, part number P14331AE6M0468J', 'Relays');
INSERT INTO `Tag Number` (`NO`, `DESCRIPTION`, `Sub Category`) VALUES
(5989, 'This TAG is for a MiCom Relay type P643, Transformer Protection Relay, part number P64332AA6M0048K', 'Relays'),
(5990, 'This TAG is for a MiCom Relay type P746, Bus Bar Protection Relay, part number P74631AL6MO8K', 'Relays'),
(5991, 'This TAG is for a Micom Relay type P141, Feeder Management Relay, part number P14131AA6M0468J', 'Relays'),
(5992, 'This TAG is for a SEL type 071 Motor Protection Relay, part number SEL-07100A1A9X71850631 Key 0412', 'Relays'),
(5993, 'This TAG is for a 3000A bus duct for the Motorpact Arc Resistant equipment. This can only be used on an "incoming" bay, 29.5 wide.', 'Bus'),
(5994, 'This TAG is for a Multilin relay for Motor Protection, Type 369, Part number 369H1RM-E0E', 'Relays'),
(5995, 'This TAG is for a Multilin relay Feeder Protection Relay, part number 350EP5G5HESNM1EDN', 'Relays'),
(5996, 'This TAG is for a Multilin FeederProtection System Type 750, part number 750P5G5S5H1A20RT', 'Relays'),
(5997, 'This TAG is for a Multilin Genertor Protection System type 489, Part number 489P5HIA20T', 'Relays'),
(5998, 'This Tag is for UTP Cat 5 with RJ45 Connectors', 'other'),
(5999, 'This is a generic Tag for an Eaton PowerXpert 8000 Meter. Engineer to determine at time of engineering order', 'Misc Electrical'),
(6000, 'This TAG is for a control Power Transfer 5KVA, part number VMC05-013', 'Misc Electrical'),
(6001, 'This Tag is for a SEL relay type 0451, part number SEL-045115415XC0X4H324XXXX Key 5894', 'Relays'),
(6002, 'General Motors - For auxiliary contacts, wire out only 1a/1b with sufficient length for continuos wire routing to the substation secondary terminal blocks.', 'Misc Electrical'),
(6003, 'Product Selector workaround. Change dry/cast transformer cable connected primary to a 1200A bussed primary connection. Will require coordination of a horizontal connection to the transformer.', 'Transitions'),
(6004, 'This Tag is for a "heavy" duty transformer, Taps 50%, 65% AND 90%, Temp rise 150 deg C', 'other'),
(6005, 'This TAG is for a "synchronous motor Field Exciter Panel from Kinetics, brush type, rated 4160V, 3ph, 60Hz, 125 VDC at 49 ADC.', 'other'),
(6006, 'This TAG is for a MiCom Feeder Relay, 110-250VDC (100-240VAV) Control power input, in+1/5A, Vn= 100-120VAC, 100Mb Ethernet 8 inputs 7- outputs', 'Relays'),
(6007, 'This TAG is for MiCom Motor Relay, 110-125Vdc (100-240VAC), Control Power, 100Mb Ethernet, 8 inputs 7 outputs, ModBus, No RTDs', 'Relays'),
(6008, 'Model III, SPD for Individually Mounted Breaker applications, where no I-line is utilized.', 'Surge Arrester'),
(6009, 'This TAG is for a meter bay with Canadian Vt''s and Ct''s. Tag includes (1) frame assembly with drawout Vt''s drawer, Ct mounting assembly, cable connection and Vt cable connection', 'other'),
(6010, 'This Tag is for GE Multilin Transformer Management Relay, type T35. Application engineering to determine correct part number at time of engineering.', 'Relays'),
(6011, 'This Tag is for a GE Multilin Feeder Management Relay type F60. Part number to be determined by Application Engineering at time of engineering', 'Relays'),
(6012, 'This Tag is for a Littlefuse Startco #SE-330-03-00, with Ethernet connection.', 'Relays'),
(6013, 'This Tag is for a GE Multilin Transformer Management Relay, type T60. Complete part number to be determined at time of engineering. Relay to include Modbud TCP/IP Ethernet', 'Relays'),
(6014, 'This TAG is for a GE Multilin Relay Type C60, Breaker Management Relay. Complete part number to be determined at time of engineering.', 'Relays'),
(6015, 'This Tag is for a Littlefuse Startco Motor Protection Unit, part num ber MPU-32-01-00', 'Relays'),
(6016, 'This Tag is for a Littlefuse Startco current Input Module, part number MPU-CIM', 'other'),
(6017, 'This TAG is for a Cisco Ethernet Switch and associated parts. Parts include Ethernet Switch (PWR-IE3000), Expansion Module (IE3000-8TC) and Switch Support Module (IE3000-8TM', 'other'),
(6018, 'This TAG is for a "Top Exhaust Duct-Idoors" for the Arc Resistant Metal-Clad', 'Arc Resistant'),
(6019, 'This TAG is for a 100A Main panel board with (16) circuits (QO116M100). Included is the cover for surface mount (QOC16US)', 'Misc Electrical'),
(6020, 'This TAG is for 10KVA CPT (CPTS36010242A) with 30E fuses (55GDMSJD30E)', 'Control Power Xfmr (CPT''s)'),
(6021, 'Model III, SDSA3650 surge arrester.', 'Surge Arrester'),
(6023, 'This TAG is for a special "throat" transition to a Powercast Transformer. The standard throat is 3.0 in depth. This new tthroat transition to 8.0 in depth', 'Transitions'),
(6024, 'This TAG is for a heavey duty transformer, Taps are 50% 65% and 90%. This transformer is in a NEMA 1 enclosure', 'other'),
(6025, 'This TAG is for the "rear" hinged covers of the Metal-Clad Arc Resistant to be hinged on the left', 'Arc Resistant'),
(6026, 'Unistrut cable support and mounting pan, to accommodate Customer supplied cable clamps.', 'Cables'),
(6027, 'This TAG is for a Square D Sepam relay part number SQ1S40A1B5A0A0, 40 Series Substation Protection Relay (24-250VDC & 120-240VAC)', 'Relays'),
(6028, 'This TAG is for a Square D Sepam relay part number SQ1T87A1E5B0A0, 80 Series Transformer Protection Relay (24-48VDC, includes 5 digital outputs on base. Advance display included in base unit', 'Relays'),
(6029, 'This TAG is for a Square D Sepam relay part number SQ1S80A1E5A0A1, 80 Series Substation Protection Relay (24-250Vdc, includes 5 digit outputs on the base)', 'Relays'),
(6030, 'This TAG is for a Relay Programming Software including CD w/relay connector cable and USB/Serial Cable', 'other'),
(6031, 'This TAG is for a MiCom Motor Protection Relay with a 40TE Case, 110-250 Vdc (100-240 Vac)', 'Relays'),
(6032, 'This Tag is for an Allen-Bradley Illuminated Push Button, part number 800T-QAH2R 800T 30mm', 'other'),
(6033, 'This TAG is for an Allen-Bradley Illuminated Push Button, part number 800T-QAH2G 800T 30mm', 'other'),
(6034, 'This TAG is for an Allen-bradley Mushroom Head Push Button, part number 800T-D9B', 'other'),
(6035, 'This TAG is for a Schweitzer Relay, Feeder Protection Relay, part number 751A51A3ACA74851830 KEY 0441', 'Relays'),
(6036, 'This TAG is for a Schweitzer Relay, Current Differential Relay, part number 0587Z0X625312XX Key 7659', 'Relays'),
(6037, 'This TAG if a Schweitzer Relay, Power Quality and Revenue Meter, part number 0735VX20544CXXDXXX16101XX Key 2007', 'Metering'),
(6038, 'This TAG is for a Current Technology Surge Protecion Device, part number TG3-125-240-1G-SDB-M6E-F', 'other'),
(6039, 'This TAG is for the mounting of the JKM-3 Ct at 60.0" from floor line, similar to standard design 46004-839-50', 'Bus'),
(6040, 'This TAG is for a Schweitzer Relay for Transformer Protection, part number 0787EX1ADA6X75850230 Key 1984', 'Relays'),
(6041, 'This Tag is for a Schweitzer Feeder Protection Relay, part number 751201ADA6X0X850230 Key 881', 'Relays'),
(6042, 'This TAG is for an ABBFeeder Protection and Control REF615, ref part number HAFDDADANBE1BCA1XE', 'Relays'),
(6043, 'This TAG is for an ABBREX521, Feeder Protection and Control', 'Relays'),
(6044, 'This TAG is for an ABB Capacitor Bank Protection, part number SPAJ-160-C-DA', 'other'),
(6045, 'This Tag is for A.B. Chance Grounds studs, Insulated with 1.0" Ball, C600-2102 and cover C406-0416 Ball Cover. Mount (1) per phase and (3) on the ground bus', 'other'),
(6046, 'This TAG is for a "Product Selector" work around, to mount (3) CPT drawout trucks is (1) vertical section. These CPT''s are all bus connected. This is a temperary TAG. Product Selector SINC to be updated in July of 2013', 'other'),
(6047, 'This TAG is for a Ground connection bar, .25 x 2.0 x 8.0 long to mount in the CWB (Control wire Box) instead of the ground terminal', 'Bus'),
(6048, 'This TAG is order specific. Customer changing from a 5Kva CPT to a 10Kva CPT, part number CPTS595101242A', 'Control Power Xfmr (CPT''s)'),
(6049, 'This TAG is order specific. Customer changing from a 5Kva CPT to a 10Kva CPT, which means the fuses must change. The part number of the fuse is 9F60DMH003 Work with TAG 6048', 'Misc Electrical'),
(6050, 'This TAG is order specific. Customer changing from a 5Kva CPT to a 10Kva CPT, Secondary breaker changes also. The breaker part number FAL22060. Work with TAG 6048 and 6049.', 'other'),
(6051, 'High Resistance Gorund Unit- HRGU - 13,800/8000V Wye; Current 5 to 12A; Maximum Duty/Temperature Rise: Continuous / 385 Degrees C; Freestanding Type 3R Enclosure; ANSI #61;', 'Misc Electrical'),
(6052, 'This Tag is for a MiCom relay Type P143, Feeder Management Relay, Part number P14331GA6M0468J', 'Relays'),
(6053, 'This TAG is for a MiCom Relay Type P243, Motor Protection Relay, part number P24331GA6MOC78K', 'Relays'),
(6054, 'Please Enter Description Here', 'Relays'),
(6055, 'This TAG is for a MiCom Relay Type P643, Transformer Protection Relay, part number P64331GA6M0048K', 'other'),
(6056, 'This TAG is for a MiCom relay Type P546, Current Differential Protection Relay suitable for (2) breaker configurations. Part number P54631AGA6M0D08M.', 'Relays'),
(6057, 'This TAG is for a MiCom Relay type P746, BusBar Protection Relay, part number P74631GE6M0A08K', 'Relays'),
(6058, 'This Tag is for Current Transformer, Model 143, 25:5a, C% ratio, RF 2.0, 60Hz, 0.6Kv, part number 143-SD-12986MA', 'Current Xfmr (CT''s)'),
(6059, 'This TAG is for a 6 foot section of an Arc Resistant plenum.', 'Arc Resistant'),
(6060, 'VAMP V265 Relay', 'Relays'),
(6061, 'This TAG is for an IRISS IR window. Part number CAP-CT-24, 8.6 wide x 24.0 long overall.', 'other'),
(6062, 'This TAG is order specific for Q2C #33063563. This is for an auxiliary power transfer. Customer is suppling the auxiliary power. This TAG is for Engineering only', 'Misc Electrical'),
(6063, 'This TAG is order specific for Q2C #31447915, Birmingham VA, to show fault indication per bi-furcated feeder.', 'Misc Electrical'),
(6064, 'This Tag is for special wire labels on Motorpact. The wire to show "origin" rather than destination', 'Misc Electrical'),
(6065, 'This TAG is for a PM820 (Powermeter820) 90-457VR', 'Metering'),
(6066, 'This TAG is for (2) diodes to be used for redundant DC control power switching, part number CS241210', 'Misc Electrical'),
(6067, 'This TAG is for a Redundant AC/DC control power bus. Apply TAG once per line-up, apply twice if both AC and DC control bus.', 'Misc Electrical'),
(6068, 'This TAG is for an Allen-Bradley "Powermonitor" 1000 with Ethernet output', 'other'),
(6069, 'This TAG is for a "Three Exciter Systems per Switchgear Enclosure', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `tblKeywords`
--

CREATE TABLE IF NOT EXISTS `tblKeywords` (
  `ID` int(11) DEFAULT NULL,
  `Keyword` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblKeywords`
--

INSERT INTO `tblKeywords` (`ID`, `Keyword`) VALUES
(1, 'relay'),
(2, 'cpt'),
(3, 'vt'),
(4, '5kv'),
(5, '15kv'),
(6, 'sel'),
(7, 'multilin'),
(8, 'sepam'),
(9, 'mtm');

-- --------------------------------------------------------

--
-- Table structure for table `Universal Price Change Log`
--

CREATE TABLE IF NOT EXISTS `Universal Price Change Log` (
  `change number` int(11) DEFAULT NULL,
  `Change Amount` float DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Made By` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Universal Price Change Log`
--

INSERT INTO `Universal Price Change Log` (`change number`, `Change Amount`, `Date`, `Made By`) VALUES
(20, 1, '2003-04-28 00:00:00', 'Renee');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Revision`
--
ALTER TABLE `Revision`
  ADD CONSTRAINT `Revision_ibfk_2` FOREIGN KEY (`TAG Member`) REFERENCES `TAG Member Names` (`TAG Member`),
  ADD CONSTRAINT `Revision_ibfk_1` FOREIGN KEY (`Complexity`) REFERENCES `complexity` (`complexity`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
