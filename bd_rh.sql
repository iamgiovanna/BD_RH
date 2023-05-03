-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Maio-2023 às 23:20
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_rh`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `Codigo_cargo` varchar(10) NOT NULL,
  `Descrição` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`Codigo_cargo`, `Descrição`) VALUES
('01', 'carregador de caixas'),
('02', 'designer gráfico'),
('03', 'operador de redes '),
('04', 'veterinária '),
('05', 'ortopedista'),
('06', 'costureira'),
('07', 'crocheteira'),
('08', 'artesão'),
('09', 'pediatra'),
('10', 'psiquiatra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `Códgio_depto` varchar(10) NOT NULL,
  `Descrição` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `departamentos`
--

INSERT INTO `departamentos` (`Códgio_depto`, `Descrição`) VALUES
('01', 'departamentos dos chorosos'),
('02', 'departamentos dos nerdolas'),
('03', 'departamentos dos surtados'),
('04', 'departamentos dos felizes'),
('05', 'departamento dos gremistas'),
('06', 'departamentos dos flamenguistas'),
('07', 'departamentos dos vascaínos'),
('08', 'departamentos dos computadores'),
('09', 'departamentos das capybaras'),
('10', 'departamento dos ingleses');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependentes`
--

CREATE TABLE `dependentes` (
  `Matrícula` varchar(10) NOT NULL,
  `nome_deparatemento` varchar(11) NOT NULL,
  `data_nasc` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `dependentes`
--

INSERT INTO `dependentes` (`Matrícula`, `nome_deparatemento`, `data_nasc`) VALUES
('01', 'loucuras', '10/12/1984'),
('02', 'dorameiras', '10/09/1914'),
('03', 'banco de da', '01/1/1950'),
('04', 'friends', '7/8/2019'),
('05', 'saudade', '10/9/2019'),
('06', 'esperança', '30/11/2019'),
('07', 'final', '23/03/2020'),
('08', 'ycallaw', '20/4/55'),
('09', 'perdidos', '10/5/2020'),
('10', 'achados', '10/12/1984');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `Matrícula` varchar(11) NOT NULL,
  `Nome` varchar(11) NOT NULL,
  `data_nasc` varchar(11) NOT NULL,
  `nacionalidade` varchar(11) NOT NULL,
  `sexo` varchar(11) NOT NULL,
  `estado civil` varchar(11) NOT NULL,
  `rg` varchar(11) NOT NULL,
  `cic` varchar(11) NOT NULL,
  `endereço` varchar(11) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `data_admissão` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`Matrícula`, `Nome`, `data_nasc`, `nacionalidade`, `sexo`, `estado civil`, `rg`, `cic`, `endereço`, `telefone`, `data_admissão`) VALUES
('01', 'roberto', '10/12/1984', 'Brasileiro', 'Masculino', 'Casado', '6564484561', '4444444', 'Rua do amor', '000111', '10/5/1920'),
('02', 'josimara', '10/09/1914', 'Sul-coreano', 'Feminino', 'Casado', '1111115555', '44444445', 'Rua das Mar', '000111', '10/5/1920'),
('03', 'Abubla Carl', '10/09/1914', 'Sul-coreano', 'Feminino', 'Casado', '65456465', '44444445545', 'Rua das Ros', '000111', '10/5/1920'),
('04', 'Gaspar', '10/09/1914', 'Norte ameri', 'Masculino', 'Casado', '1111115555', '44444445', 'Rua the era', '000111', '10/5/1920'),
('05', 'mano jow', '10/12/1984', 'Brasileiro', 'Masculino', 'solteiro', '89877//8795', '4444444', 'Rua das Mar', '000111', '10/5/1920'),
('06', 'peralta', '10/09/1914', 'Sul-coreano', 'Masculino', 'solteiro', '55555555555', '44444445545', 'Rua das Ros', '000111', '10/5/1920'),
('07', 'Ramlig', '01/1/1950', 'Brasileiro', 'Masculino', 'solteiro', '89877//8795', '44444445', 'Rua das Ros', '000111', '10/5/1920'),
('08', 'enomis', '10/12/1984', 'Sul-coreano', 'Feminino', 'Casado', '6564484561', '4444444', 'Rua do amor', '000111', '10/5/1920'),
('09', 'roberto', '10/12/1984', 'Sul-coreano', 'Masculino', 'Casado', '1111115555', '44444445', 'Rua das Ros', '000111', '10/5/1920'),
('10', 'josimara', '10/09/1914', 'Brasileiro', 'Feminino', 'solteiro', '55555555555', '4444444', 'Rua das Ros', '000111', '10/5/1920'),
('11', 'Abubla Carl', '01/1/1950', 'Brasileiro', 'Feminino', 'solteiro', '55555555555', '44444445', 'Rua das Mar', '000111', '10/5/1920'),
('12', 'josimara', '01/1/1950', 'Sul-coreano', 'Masculino', 'solteiro', '6564484561', '4444444', 'Rua das Mar', '000111', '10/5/1920'),
('13', 'Gaspara', '10/12/1984', 'Sul-coreano', 'Masculino', 'solteiro', '6564484561', '44444445', 'Rua das Ros', '000111', '10/5/1920'),
('14', 'mano broa', '01/1/1950', 'Brasileiro', 'Masculino', 'Casado', '89877//8795', '4444444', 'Rua das Mar', '000111', '10/5/1920'),
('15', 'Abubla Carl', '01/1/1950', 'Brasileiro', 'Feminino', 'Solteira', '1111115555', '44444445', 'Rua do amor', '000111', '10/5/1920');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lotação`
--

CREATE TABLE `lotação` (
  `Matrícula` varchar(10) NOT NULL,
  `Código_depto` varchar(10) NOT NULL,
  `dt_início` varchar(10) NOT NULL,
  `dt_fim` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `lotação`
--

INSERT INTO `lotação` (`Matrícula`, `Código_depto`, `dt_início`, `dt_fim`) VALUES
('01', '01', '01/01/2001', '02/02/2002'),
('02', '02', '01/01/2002', '02/02/2003'),
('03', '03', '01/01/2003', '02/02/2004'),
('04', '04', '01/01/2004', '02/02/2005'),
('05', '05', '01/01/2005', '02/02/2006'),
('06', '06', '01/01/2006', '02/02/2007'),
('07', '07', '01/01/2007', '02/02/2008'),
('08', '08', '01/01/2008', '02/02/2008'),
('09', '09', '01/01/2009', '02/02/2010'),
('10', '10', '01/01/2010', '02/02/2011'),
('11', '11', '01/01/2011', '02/02/2012'),
('12', '12', '01/01/2012', '02/02/2013'),
('13', '13', '01/01/2013', '02/02/2014'),
('14', '14', '01/01/2014', '02/02/2015'),
('15', '15', '01/01/2015', '02/02/2016');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`Codigo_cargo`);

--
-- Índices para tabela `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`Códgio_depto`);

--
-- Índices para tabela `dependentes`
--
ALTER TABLE `dependentes`
  ADD PRIMARY KEY (`nome_deparatemento`);

--
-- Índices para tabela `lotação`
--
ALTER TABLE `lotação`
  ADD PRIMARY KEY (`Código_depto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
