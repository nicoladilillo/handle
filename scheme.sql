-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Mar 25, 2017 alle 11:02
-- Versione del server: 10.1.16-MariaDB
-- Versione PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cli-acq-imp`
--
CREATE DATABASE IF NOT EXISTS `cli-acq-imp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cli-acq-imp`;

-- --------------------------------------------------------

--
-- Struttura della tabella `acquisti`
--

CREATE TABLE `acquisti` (
  `idclie` char(10) NOT NULL,
  `data` date NOT NULL,
  `item` char(30) NOT NULL,
  `quant` char(2) NOT NULL,
  `prezzo` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `acquisti`
--

INSERT INTO `acquisti` (`idclie`, `data`, `item`, `quant`, `prezzo`) VALUES
('1000', '2015-11-23', 'Marmo', '12', '360.6'),
('10449', '2017-02-05', 'Tenda', '62', '3625'),
('2000', '2015-08-09', 'Legno', '12', '60'),
('3000', '2015-08-16', 'Tenda', '3', '53'),
('4000', '2012-02-12', 'Carta', '98', '96'),
('5000', '2016-11-07', 'Carbone', '63', '63.02'),
('600', '2011-08-09', 'Oro', '32', '3652'),
('7000', '2015-04-11', 'Rame', '84', '21525');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE `clienti` (
  `idclie` char(10) NOT NULL,
  `nome` char(30) NOT NULL,
  `cnome` char(30) NOT NULL,
  `citta` char(30) NOT NULL,
  `stato` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti`
--

INSERT INTO `clienti` (`idclie`, `nome`, `cnome`, `citta`, `stato`) VALUES
('1000', 'Lucrezia', 'Poveras', 'Madrid', 'Spagna'),
('10449', 'Franco', 'Domodossola', 'New York', 'USA'),
('2000', 'Giuseppe', 'Maffione', 'Barletta', 'Italia'),
('3000', 'Mariolina', 'APezz', 'Mosca', 'Russia'),
('4000', 'Chichin', 'Konichiwa', 'Tokyo', 'Giappone'),
('5000', 'Harry', 'Think', 'Londra', 'UK'),
('6000', 'Saverio', 'Lattanzio', 'Milano', 'Italia'),
('7000', 'Mario', 'Bross', 'ValleDeiFunghi', 'Marioland');

-- --------------------------------------------------------

--
-- Struttura della tabella `impiegati`
--

CREATE TABLE `impiegati` (
  `nome` char(30) NOT NULL,
  `titolo` char(30) NOT NULL,
  `eta` char(30) NOT NULL,
  `salario` char(30) NOT NULL,
  `dip` char(30) NOT NULL,
  `cognome` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `impiegati`
--

INSERT INTO `impiegati` (`nome`, `titolo`, `eta`, `salario`, `dip`, `cognome`) VALUES
('Gilberta', 'Segretaria', '55', '1000', 'Contabilità', NULL),
('Giuseppe', 'Ingegnere', '18', '3900', 'Contabilità', NULL),
('Harmandez', 'Direttore', '21', '100000', 'Manegeriale', NULL),
('Jones', 'Impiegato', '29', '2500', 'Informatico', NULL),
('Mario', 'Inserviente', '63', '300', 'Pulizia', NULL),
('Roberts', 'Manager', '33', '3000', 'Contabilità', NULL),
('Ruiz', 'OperatoreTelefonico', '19', '900', 'Vendite', NULL),
('Saverio', 'Programmatore', '69', '5000', 'Programmazione', NULL);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `acquisti`
--
ALTER TABLE `acquisti`
  ADD PRIMARY KEY (`idclie`);

--
-- Indici per le tabelle `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`idclie`);

--
-- Indici per le tabelle `impiegati`
--
ALTER TABLE `impiegati`
  ADD PRIMARY KEY (`nome`,`eta`);
--
-- Database: `clienti`
--
CREATE DATABASE IF NOT EXISTS `clienti` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `clienti`;

-- --------------------------------------------------------

--
-- Struttura della tabella `2query1`
--

CREATE TABLE `2query1` (
  `Nome` char(30) NOT NULL,
  `Cognome` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `2query1`
--

INSERT INTO `2query1` (`Nome`, `Cognome`) VALUES
('Salvatore', 'Binchi'),
('Fabio', 'Neri'),
('Fabio', 'Rossi');

-- --------------------------------------------------------

--
-- Struttura della tabella `2query2`
--

CREATE TABLE `2query2` (
  `Nome` char(30) NOT NULL,
  `Cognome` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `2query2`
--

INSERT INTO `2query2` (`Nome`, `Cognome`) VALUES
('Mario', 'Binchi'),
('Salvatore', 'Binchi'),
('Mario', 'Casadei');

-- --------------------------------------------------------

--
-- Struttura della tabella `2query3`
--

CREATE TABLE `2query3` (
  `Nome` char(30) NOT NULL,
  `Cognome` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `2query3`
--

INSERT INTO `2query3` (`Nome`, `Cognome`) VALUES
('Salvatore', 'Binchi');

-- --------------------------------------------------------

--
-- Struttura della tabella `2query4`
--

CREATE TABLE `2query4` (
  `Nome` char(30) NOT NULL,
  `Cognome` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `2query4`
--

INSERT INTO `2query4` (`Nome`, `Cognome`) VALUES
('Mario', 'Binchi'),
('Salvatore', 'Binchi');

-- --------------------------------------------------------

--
-- Struttura della tabella `2query5`
--

CREATE TABLE `2query5` (
  `Nome` char(30) NOT NULL,
  `Cognome` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `2query5`
--

INSERT INTO `2query5` (`Nome`, `Cognome`) VALUES
('Ettore', 'Bianchi'),
('Mario', 'Casadei'),
('Fabio', 'Neri'),
('Fabio', 'Rossi'),
('Mario', 'Rossi');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE `clienti` (
  `Cognome` char(30) NOT NULL,
  `Nome` char(30) NOT NULL,
  `Citta` char(30) NOT NULL,
  `Salario` char(10) NOT NULL,
  `Eta` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti`
--

INSERT INTO `clienti` (`Cognome`, `Nome`, `Citta`, `Salario`, `Eta`) VALUES
('Bianchi', 'Ettore', 'Milano', '0', '15'),
('Binchi', 'Mario', 'Rimini', '1000', '20'),
('Binchi', 'Salvatore', 'Rimini', '4500', '22'),
('Casadei', 'Mario', 'Rimini', '3000', '35'),
('Neri', 'Fabio', 'Arezzo', '3500', '35'),
('Rossi', 'Fabio', 'Firenze', '8000', '40'),
('Rossi', 'Mario', 'Bologna', '1500', '50');

-- --------------------------------------------------------

--
-- Struttura della tabella `query1`
--

CREATE TABLE `query1` (
  `Cognome` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `query1`
--

INSERT INTO `query1` (`Cognome`) VALUES
('Bianchi'),
('Binchi'),
('Binchi'),
('Casadei'),
('Neri'),
('Rossi'),
('Rossi');

-- --------------------------------------------------------

--
-- Struttura della tabella `query2`
--

CREATE TABLE `query2` (
  `Nome` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `query2`
--

INSERT INTO `query2` (`Nome`) VALUES
('Ettore'),
('Mario'),
('Salvatore'),
('Mario'),
('Fabio'),
('Fabio'),
('Mario');

-- --------------------------------------------------------

--
-- Struttura della tabella `query3`
--

CREATE TABLE `query3` (
  `Nome` char(30) NOT NULL,
  `Cognome` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `query3`
--

INSERT INTO `query3` (`Nome`, `Cognome`) VALUES
('Ettore', 'Bianchi'),
('Mario', 'Binchi'),
('Salvatore', 'Binchi'),
('Mario', 'Casadei'),
('Fabio', 'Neri'),
('Fabio', 'Rossi'),
('Mario', 'Rossi');

-- --------------------------------------------------------

--
-- Struttura della tabella `query4`
--

CREATE TABLE `query4` (
  `Nome` char(30) NOT NULL,
  `Cognome` char(30) NOT NULL,
  `Citta` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `query4`
--

INSERT INTO `query4` (`Nome`, `Cognome`, `Citta`) VALUES
('Ettore', 'Bianchi', 'Milano'),
('Mario', 'Binchi', 'Rimini'),
('Salvatore', 'Binchi', 'Rimini'),
('Mario', 'Casadei', 'Rimini'),
('Fabio', 'Neri', 'Arezzo'),
('Fabio', 'Rossi', 'Firenze'),
('Mario', 'Rossi', 'Bologna');

-- --------------------------------------------------------

--
-- Struttura della tabella `query5`
--

CREATE TABLE `query5` (
  `Nome` char(30) NOT NULL,
  `Cognome` char(30) NOT NULL,
  `Citta` char(30) NOT NULL,
  `Salario` char(10) NOT NULL,
  `Eta` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `query5`
--

INSERT INTO `query5` (`Nome`, `Cognome`, `Citta`, `Salario`, `Eta`) VALUES
('Ettore', 'Bianchi', 'Milano', '0', '15'),
('Mario', 'Binchi', 'Rimini', '1000', '20'),
('Salvatore', 'Binchi', 'Rimini', '4500', '22'),
('Mario', 'Casadei', 'Rimini', '3000', '35'),
('Fabio', 'Neri', 'Arezzo', '3500', '35'),
('Fabio', 'Rossi', 'Firenze', '8000', '40'),
('Mario', 'Rossi', 'Bologna', '1500', '50');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`Cognome`,`Nome`);
--
-- Database: `gare-barche`
--
CREATE DATABASE IF NOT EXISTS `gare-barche` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gare-barche`;

-- --------------------------------------------------------

--
-- Struttura della tabella `barche`
--

CREATE TABLE `barche` (
  `nome` char(20) DEFAULT NULL,
  `lungh` char(5) DEFAULT NULL,
  `numecq` char(2) DEFAULT NULL,
  `idbarca` char(11) NOT NULL,
  `nomespons` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE `categorie` (
  `nomecat` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `gara`
--

CREATE TABLE `gara` (
  `nome` char(20) DEFAULT NULL,
  `lung` char(5) DEFAULT NULL,
  `idgara` char(11) NOT NULL,
  `nomecat` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `marinai`
--

CREATE TABLE `marinai` (
  `nome` char(20) DEFAULT NULL,
  `cnome` char(20) DEFAULT NULL,
  `datanasc` date DEFAULT NULL,
  `idmari` char(11) NOT NULL,
  `skipper` char(2) DEFAULT NULL,
  `idbarca` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipi`
--

CREATE TABLE `partecipi` (
  `idbarca` char(11) NOT NULL,
  `idgara` char(11) NOT NULL,
  `tempo` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `sponsor`
--

CREATE TABLE `sponsor` (
  `nomespon` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `barche`
--
ALTER TABLE `barche`
  ADD PRIMARY KEY (`idbarca`);

--
-- Indici per le tabelle `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`nomecat`);

--
-- Indici per le tabelle `gara`
--
ALTER TABLE `gara`
  ADD PRIMARY KEY (`idgara`);

--
-- Indici per le tabelle `marinai`
--
ALTER TABLE `marinai`
  ADD PRIMARY KEY (`idmari`);

--
-- Indici per le tabelle `partecipi`
--
ALTER TABLE `partecipi`
  ADD PRIMARY KEY (`idbarca`,`idgara`);

--
-- Indici per le tabelle `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`nomespon`);
--
-- Database: `gestione`
--
CREATE DATABASE IF NOT EXISTS `gestione` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestione`;

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `ID` int(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `year` int(2) NOT NULL,
  `patente` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dump dei dati per la tabella `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"snap_to_grid":"off","angular_direct":"direct","relation_lines":"true"}');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dump dei dati per la tabella `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'impiegati', 'table', 'cli-acq-imp', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dump dei dati per la tabella `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"gestione","table":"user"},{"db":"pizzeria","table":"pizze"},{"db":"pizzeria","table":"utenti"},{"db":"recita","table":"proiezioni"},{"db":"recita","table":"recite"},{"db":"cli-acq-imp","table":"impiegati"},{"db":"cli-acq-imp","table":"acquisti"},{"db":"cli-acq-imp","table":"clienti"},{"db":"clienti","table":"query1"},{"db":"clienti","table":"2query4"}]');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dump dei dati per la tabella `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'cli-acq-imp', 'impiegati', '{"sorted_col":"`impiegati`.`salario`  ASC"}', '2017-02-22 08:35:07');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dump dei dati per la tabella `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-01-20 12:13:44', '{"lang":"it","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struttura della tabella `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indici per le tabelle `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indici per le tabelle `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indici per le tabelle `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indici per le tabelle `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indici per le tabelle `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indici per le tabelle `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indici per le tabelle `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indici per le tabelle `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indici per le tabelle `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indici per le tabelle `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indici per le tabelle `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `pizzeria`
--
CREATE DATABASE IF NOT EXISTS `pizzeria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pizzeria`;

-- --------------------------------------------------------

--
-- Struttura della tabella `pizze`
--

CREATE TABLE `pizze` (
  `name` varchar(20) NOT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL,
  `image` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `pizze`
--

INSERT INTO `pizze` (`name`, `price`, `description`, `image`) VALUES
('Crudo', 5, 'salsa, mozzarella, crudo, ', 'crudo.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `username` varchar(20) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`username`, `password`, `name`) VALUES
('nicola', '12IbR.gJ8wcpc', 'Nicola'),
('nicola1', '12IbR.gJ8wcpc', 'Nicola'),
('nicola12', '12IbR.gJ8wcpc', 'Nicola');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pizze`
--
ALTER TABLE `pizze`
  ADD PRIMARY KEY (`name`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`username`);
--
-- Database: `recita`
--
CREATE DATABASE IF NOT EXISTS `recita` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `recita`;

-- --------------------------------------------------------

--
-- Struttura della tabella `attori`
--

CREATE TABLE `attori` (
  `codatt` int(11) NOT NULL,
  `nome` char(30) NOT NULL,
  `cnome` char(30) NOT NULL,
  `anno` int(4) NOT NULL,
  `nazione` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `attori`
--

INSERT INTO `attori` (`codatt`, `nome`, `cnome`, `anno`, `nazione`) VALUES
(0, 'Leonardo', 'Dicaprio', 1987, 'Americano'),
(11111, 'Rossella', 'Laporta', 1998, 'Russa'),
(22222, 'Fernandez', 'Cilli', 1882, 'Spagnolo'),
(33333, 'Michela', 'Disso', 1999, 'Rumena'),
(44444, 'Mario', 'Rossi', 1968, 'Italiano'),
(55555, 'Gianluca', 'Filippos', 1980, 'Greco'),
(66666, 'Monica', 'Mondini', 1990, 'Francese'),
(77777, 'Filippo', 'Alhee', 1982, 'Armeno'),
(88888, 'Sofia', 'Piccolo', 1989, '	Spagnola'),
(99999, 'Annastasio', 'Oxo', 1955, 'Cinese');

-- --------------------------------------------------------

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `codfilm` int(11) NOT NULL,
  `titolo` char(30) NOT NULL,
  `annoprod` int(4) NOT NULL,
  `nazione` char(30) NOT NULL,
  `regista` char(30) NOT NULL,
  `genere` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `proiezioni`
--

CREATE TABLE `proiezioni` (
  `codpro` int(11) NOT NULL,
  `codfilm` int(11) DEFAULT NULL,
  `codsala` int(11) DEFAULT NULL,
  `incasso` float NOT NULL,
  `anno` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `recite`
--

CREATE TABLE `recite` (
  `codatt` int(11) NOT NULL,
  `codfilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `recite`
--

INSERT INTO `recite` (`codatt`, `codfilm`) VALUES
(0, 10000),
(11111, 11000),
(22222, 12000),
(33333, 13000),
(44444, 14000),
(55555, 15000),
(66666, 16000),
(77777, 17000),
(88888, 18000),
(99999, 19000);

-- --------------------------------------------------------

--
-- Struttura della tabella `sale`
--

CREATE TABLE `sale` (
  `codsala` int(11) NOT NULL,
  `posti` int(11) NOT NULL,
  `nome` char(30) NOT NULL,
  `citta` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `attori`
--
ALTER TABLE `attori`
  ADD PRIMARY KEY (`codatt`);

--
-- Indici per le tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`codfilm`);

--
-- Indici per le tabelle `proiezioni`
--
ALTER TABLE `proiezioni`
  ADD PRIMARY KEY (`codpro`);

--
-- Indici per le tabelle `recite`
--
ALTER TABLE `recite`
  ADD PRIMARY KEY (`codatt`,`codfilm`);

--
-- Indici per le tabelle `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`codsala`);
--
-- Database: `superenalotto`
--
CREATE DATABASE IF NOT EXISTS `superenalotto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `superenalotto`;

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `ID_User` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Cognome` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `giorno` int(11) DEFAULT NULL,
  `mese` int(11) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`ID_User`, `Nome`, `Cognome`, `username`, `password`, `giorno`, `mese`, `anno`) VALUES
(1, 'Nicola', 'Dilillo', 'nicola', '123', 1, 8, 1998),
(2, 'ro', 'pe', 'nicola1', '12', 1, 1, 1955);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `ID_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
