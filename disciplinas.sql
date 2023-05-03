-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Maio-2023 às 17:18
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `disciplinas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `Matricula` varchar(5) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `codcurso` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`Matricula`, `nome`, `endereco`, `cidade`, `codcurso`) VALUES
('1002', 'Maria Conceição Lopes ', 'Rua Araras, 23', 'Mogi Mirim', '01'),
('1001', 'Marcos Moraes', 'Rua Pe Roque, 2057', 'Mogi Mirim', '01'),
('1003', 'Ana Carina Lopes', 'Rua Peraltas, 222', 'Santos', '01'),
('1004', 'Carlos Aguiar', 'Rua Botafogo, 33', 'Santos', '01'),
('1005', 'André Luiz dos Santos', 'Rua Lopes Conte, 3343', 'Sapucaí', '01'),
('1006', 'Pedro Antonio Pimenta', 'Rua Altair Lopes, 23', 'Itapira', '02'),
('1007', 'Rita de Cássia da Silvia', 'Rua Eletromais, 33 ', 'Itapira', '02'),
('1008', 'Caique dos Santos', 'Rua das Amoreiras, 55', 'Campinas', '02'),
('1009', 'Carlos Tavares', 'Rua Peixe, 99', 'Santos', '02'),
('10110', 'Antonio Carlos Caetano ', 'Rua Josefina Alface', 'Campinas ', '02'),
('1011', 'Ricardo Moreira', 'Rua do Pinhal, 332', 'Aparecida', '03'),
('1012', 'Richardson S. P Campeao', 'Rua do Tricolor, 433', 'São Paulo', '03'),
('1013', 'Junior Camisa Seis', 'Rua do Morumbi, 433', 'São Paulo ', '03'),
('1014', 'Carina Melo', 'Rua Osvaldo Ramos, 88', 'Mogi Guaçu', '03'),
('1015', 'Pedro Mello', 'Rua Itororó, 3999', 'Mogi Mirim', '03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `codcurso` varchar(2) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `coddisc1` varchar(2) NOT NULL,
  `coddisc2` varchar(2) NOT NULL,
  `coddisc3` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codcurso`, `nome`, `coddisc1`, `coddisc2`, `coddisc3`) VALUES
('01', 'Auxiliar de Informática', '11', '12', '13'),
('02', 'Programador de computadores', '21', '22', '23'),
('03', 'Técnico em Informática', '31', '32', '33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `coddisciplina` varchar(2) NOT NULL,
  `nomedisciplina` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`coddisciplina`, `nomedisciplina`) VALUES
('11', 'Banco de Dados'),
('12', 'Lógica de Programação '),
('13', 'Desenvolvimento de Software'),
('21', 'Banco de Dados 2'),
('22', 'Desenvolvimento de Software 2'),
('23', 'Programação de computadores'),
('31', 'Banco de Dados 3'),
('32', 'Programação de computadores 2'),
('33', 'Desenvolvimento de Software 3');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`Matricula`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codcurso`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`coddisciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
