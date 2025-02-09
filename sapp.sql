-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Jul-2022 às 04:38
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sapp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `idalunos` int(10) UNSIGNED NOT NULL,
  `sala_idsala` int(10) UNSIGNED NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `datadenascimento` date DEFAULT NULL,
  `cuidados` varchar(500) DEFAULT NULL,
  `presenca` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`idalunos`, `sala_idsala`, `nome`, `datadenascimento`, `cuidados`, `presenca`) VALUES
(1, 1, 'aluno teste Editado Mesmo', '2022-07-12', 'Nenhum a Constar aaa', 100),
(5, 1, 'ASd', '2022-07-15', 'Nenhum', 50),
(13, 1, 'asd', '2022-07-16', 'Nenhum', 50),
(14, 13, 'Aluno Allan Edita', '2022-07-16', 'Nenhum a Constar', 100),
(15, 15, 'Alex Sandro', '2001-09-09', 'Nenhum a Constar Mesmo', 0),
(16, 1, 'Aluno Teste de Registro', '2022-07-19', 'Nenhum a constar', 25),
(17, 16, 'Alex Sandro', '2022-07-21', 'Nenhum', 0),
(18, 16, 'Zé', '2022-07-21', 'Nenhum', 0),
(19, 17, 'Allan', '2022-07-24', 'Nenhum', 100),
(20, 17, 'Beatriz', '2022-07-24', 'Nenhum', 50),
(21, 17, 'Marcos', '2022-07-24', 'Nenhum', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `anotacoes`
--

CREATE TABLE `anotacoes` (
  `idanotacoes` int(10) UNSIGNED NOT NULL,
  `blocos_idblocos` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `conteudo` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `anotacoes`
--

INSERT INTO `anotacoes` (`idanotacoes`, `blocos_idblocos`, `titulo`, `conteudo`) VALUES
(2, 1, 'Anotação Inserida', 'Teste'),
(3, 1, 'Anotação Inserida  2', 'Teste'),
(4, 1, 'asdf asd', 'asdasdasdasd'),
(5, 1, 'asdfasd', 'asdasdasdasd'),
(12, 12, 'Anotação Editada', 'sadasdasdad'),
(13, 13, 'Anotação Inserida', 'asd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `idavaliacao` int(10) UNSIGNED NOT NULL,
  `alunos_idalunos` int(10) UNSIGNED NOT NULL,
  `periodo` varchar(100) NOT NULL,
  `media` double DEFAULT NULL,
  `presenca` double DEFAULT NULL,
  `numerodeeventos` int(10) UNSIGNED DEFAULT NULL,
  `datasalvada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`idavaliacao`, `alunos_idalunos`, `periodo`, `media`, `presenca`, `numerodeeventos`, `datasalvada`) VALUES
(3, 16, 'Primeiro Semestre', 6, 100, 2, '2022-07-21'),
(5, 1, 'Primeiro Semestre', 6.5, 75, 4, '2022-07-22'),
(7, 17, 'Primeiro Bimestre', 5, 50, 2, '2022-07-22'),
(8, 18, 'Primeiro Bimestre', 8.5, 100, 2, '2022-07-22'),
(9, 1, '2º Semestre', 8.5, 100, 2, '2022-07-22'),
(10, 14, 'Periodo Allan Editado Mesmo', 10, 100, 1, '2022-07-25'),
(11, 16, 'Primeiro Semestre', 6, 100, 2, '2022-07-25'),
(12, 19, 'Primeiro Período', 9.5, 100, 2, '2022-07-25'),
(13, 20, 'Primeiro Período', 7.5, 100, 2, '2022-07-25'),
(14, 21, 'Primeiro Período', 0, 0, 2, '2022-07-25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blocos`
--

CREATE TABLE `blocos` (
  `idblocos` int(10) UNSIGNED NOT NULL,
  `professor_idprofessor` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `numerodeanotacoes` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `blocos`
--

INSERT INTO `blocos` (`idblocos`, `professor_idprofessor`, `descricao`, `numerodeanotacoes`) VALUES
(1, 1, 'Bloco de anotações teste Editado', 4),
(7, 2, 'Bloco Allan', 0),
(12, 1, 'Teste', 1),
(13, 1, 'Anotações', 1),
(14, 1, 'Teste 2', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `idevento` int(10) UNSIGNED NOT NULL,
  `periodo_idperiodo` int(10) UNSIGNED NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `datarealizacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `evento`
--

INSERT INTO `evento` (`idevento`, `periodo_idperiodo`, `nome`, `descricao`, `peso`, `datarealizacao`) VALUES
(1, 1, 'Prova 1', 'Prova de assuntos da matéria', 10, '2022-07-20'),
(2, 1, 'Prova 2', 'Prova de Assuntos Complexos', 10, '2022-07-25'),
(3, 1, 'Prova 3', 'Provinha provuda', 10, '2022-07-18'),
(4, 1, 'Prova 4', 'kkkkkkkkkkkkk', 10, '2022-12-04'),
(6, 8, 'Teste', 'Teste', 2, '2022-07-18'),
(9, 8, 'Prova Teste', 'asd2', 2, '2022-07-18'),
(10, 12, 'Prova 1', 'Prova 1 1º Bimestre', 5, '2001-09-18'),
(11, 12, 'Prova 2', 'Prova 2 Bimestre 1', 10, '2022-07-18'),
(12, 13, 'Teste de Física', 'asdfghjkjhgfds', 7, '2022-07-18'),
(13, 10, 'evento allan asdfgh', 'asdfgh', 10, '2022-07-19'),
(15, 14, 'Prova 1', 'Primeira Prova 1º Bimetre', 10, '2022-07-21'),
(16, 14, 'Prova 2', 'Segunda Prova 2º Bimestre', 10, '2022-07-21'),
(17, 16, 'Prova 1 Primeiro Período', 'Prova Inicial', 10, '2022-07-22'),
(18, 16, 'Prova 2 Período 1', 'Segunda Prova', 10, '2022-07-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `idinstituicao` int(10) UNSIGNED NOT NULL,
  `professor_idprofessor` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `numerodesalas` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`idinstituicao`, `professor_idprofessor`, `descricao`, `numerodesalas`) VALUES
(1, 1, 'Turma Teste', 2),
(4, 1, 'Instituição de Ensino Superior', 1),
(10, 1, 'asdasd', 0),
(11, 2, 'Turma Allan', 1),
(12, 1, 'AOOOAOAOOAO', 0),
(14, 1, 'asd', 0),
(15, 1, 'g', 0),
(16, 1, 'h', 0),
(17, 1, 'k', 0),
(18, 1, 'l', 0),
(19, 1, 'm', 0),
(20, 1, 'n', 0),
(21, 1, 'o', 0),
(22, 1, 'p', 0),
(23, 1, 'y', 0),
(24, 1, 'z', 0),
(27, 4, 'Teste', 0),
(28, 7, 'Instituição de Ensino', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `listapresenca`
--

CREATE TABLE `listapresenca` (
  `idlistapresenca` int(10) UNSIGNED NOT NULL,
  `sala_idsala` int(10) UNSIGNED NOT NULL,
  `datadia` date DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `listapresenca`
--

INSERT INTO `listapresenca` (`idlistapresenca`, `sala_idsala`, `datadia`, `descricao`) VALUES
(2, 1, '2022-07-26', 'Chamada Teste'),
(4, 15, '2022-07-29', 'Chamada Turma Teste'),
(6, 1, '2022-07-20', 'Chamada'),
(7, 1, '2022-07-28', 'Chamada'),
(8, 1, '2022-07-29', 'Chamada'),
(9, 13, '2022-07-25', 'Chamada Allan'),
(10, 1, '2022-07-21', 'Chamada'),
(11, 17, '2022-07-25', 'Chamada 1'),
(12, 17, '2022-07-26', 'Chamada 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodo`
--

CREATE TABLE `periodo` (
  `idperiodo` int(10) UNSIGNED NOT NULL,
  `sala_idsala` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `numerodeeventos` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `periodo`
--

INSERT INTO `periodo` (`idperiodo`, `sala_idsala`, `descricao`, `numerodeeventos`) VALUES
(1, 1, 'Primeiro Semestre', 0),
(8, 1, '2º Semestre', 1),
(10, 13, 'Periodo Allan Editado Mesmo', 1),
(12, 15, '1º Bimestre', 2),
(13, 15, '2º Bimestre', 1),
(14, 16, 'Primeiro Bimestre', 2),
(15, 16, 'Segundo Bimestre', 0),
(16, 17, 'Primeiro Período', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `idprofessor` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`idprofessor`, `nome`, `email`, `senha`) VALUES
(1, 'Breno Henrique de Paula', 'brenotoide@gmail.com', 'e8b0f3f8d4cc68f2ebcd5680cae0c4e5'),
(2, 'Allan Fernando de Paula', 'allantoide@gmail.com', 'e8b0f3f8d4cc68f2ebcd5680cae0c4e5'),
(3, 'Marinalva Maria', 'marinalvaprofessora@gmail.com', 'e8b0f3f8d4cc68f2ebcd5680cae0c4e5'),
(4, 'Julio José', 'juliojose@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'Alex', 'alexssandro@outlook.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'Teste', 'teste@gmail.com', 'e8b0f3f8d4cc68f2ebcd5680cae0c4e5'),
(7, 'Breno', 'brenohp2001@outlook.com', 'e8b0f3f8d4cc68f2ebcd5680cae0c4e5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registrodeavaliacao`
--

CREATE TABLE `registrodeavaliacao` (
  `idregistrodeavaliacao` int(10) UNSIGNED NOT NULL,
  `alunos_idalunos` int(10) UNSIGNED NOT NULL,
  `evento_idevento` int(10) UNSIGNED NOT NULL,
  `nota` double DEFAULT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `presenca` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `registrodeavaliacao`
--

INSERT INTO `registrodeavaliacao` (`idregistrodeavaliacao`, `alunos_idalunos`, `evento_idevento`, `nota`, `observacao`, `presenca`) VALUES
(1, 16, 1, 10, 'O Aluno Respondeu tudo Mesmo Mesmo', 'S'),
(2, 1, 1, 8, 'O Aluno Respondeu tudo, porém com alguns erros', 'S'),
(3, 16, 2, 2, 'Horrivel', 'S'),
(4, 14, 13, 10, 'aaaa', 'S'),
(5, 5, 1, 0, 'Complicado corrigir', 'S'),
(6, 13, 1, 0, 'Num feiz', 'N'),
(7, 1, 2, 8, 'Nenhuma', 'S'),
(8, 1, 3, 0, 'Não Fez', 'N'),
(9, 1, 4, 10, 'Destruiu', 'S'),
(10, 1, 6, 10, 'O Aluno Respondeu tudo', 'S'),
(11, 1, 9, 7, 'O Aluno Respondeu tudo', 'S'),
(12, 17, 15, 10, 'Mandou Bem', 'S'),
(13, 18, 15, 7, 'Aceitavel', 'S'),
(14, 17, 16, 0, 'Não Apareceu', 'N'),
(15, 18, 16, 10, 'O Aluno Respondeu tudo muito bem', 'S'),
(16, 19, 17, 10, 'O Aluno Respondeu tudo', 'S'),
(17, 20, 17, 5, 'O Aluno Respondeu tudo, porém com alguns erros', 'S'),
(18, 21, 17, 0, 'O aluno não estava presente', 'N'),
(19, 19, 18, 9, 'Nenhuma', 'S'),
(20, 20, 18, 10, 'O Aluno Respondeu tudo', 'S'),
(21, 21, 18, 0, 'O aluno não fez', 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registropresenca`
--

CREATE TABLE `registropresenca` (
  `idregistropresenca` int(10) UNSIGNED NOT NULL,
  `listapresenca_idlistapresenca` int(10) UNSIGNED NOT NULL,
  `aluno` varchar(200) DEFAULT NULL,
  `presenca` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `registropresenca`
--

INSERT INTO `registropresenca` (`idregistropresenca`, `listapresenca_idlistapresenca`, `aluno`, `presenca`) VALUES
(1, 6, 'aluno teste Editado Mesmo', 'S'),
(2, 6, 'ASd', 'N'),
(3, 6, 'asd', 'S'),
(4, 6, 'Aluno Teste de Registro', 'N'),
(5, 2, 'aluno teste Editado Mesmo', 'S'),
(6, 2, 'ASd', 'S'),
(7, 2, 'asd', 'S'),
(8, 2, 'Aluno Teste de Registro', 'S'),
(9, 4, 'Alex Sandro', 'S'),
(10, 7, 'aluno teste Editado Mesmo', 'S'),
(11, 7, 'ASd', 'N'),
(12, 7, 'asd', 'N'),
(13, 7, 'Aluno Teste de Registro', 'N'),
(14, 8, 'aluno teste Editado Mesmo', 'S'),
(15, 8, 'ASd', 'N'),
(16, 8, 'asd', 'S'),
(17, 8, 'Aluno Teste de Registro', 'N'),
(18, 9, 'Aluno Allan Edita', 'S'),
(19, 10, 'aluno teste Editado Mesmo', 'S'),
(20, 10, 'ASd', 'N'),
(21, 10, 'asd', 'N'),
(22, 10, 'Aluno Teste de Registro', 'S'),
(23, 11, 'Allan', 'S'),
(24, 11, 'Beatriz', 'S'),
(25, 11, 'Marcos', 'N'),
(26, 12, 'Allan', 'S'),
(27, 12, 'Beatriz', 'N'),
(28, 12, 'Marcos', 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE `sala` (
  `idsala` int(10) UNSIGNED NOT NULL,
  `instituicao_idinstituicao` int(10) UNSIGNED NOT NULL,
  `turma` varchar(50) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `numerodealunos` int(10) UNSIGNED DEFAULT NULL,
  `numerodeeventos` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sala`
--

INSERT INTO `sala` (`idsala`, `instituicao_idinstituicao`, `turma`, `descricao`, `numerodealunos`, `numerodeeventos`) VALUES
(1, 1, 'Primeira Turma Editada', 'Primeira Turma Adicionada na Aplicação', 4, 1),
(10, 4, 'Sala Relat', 'asdasdasda', 0, 0),
(13, 11, 'Asd', 'asd', 1, 1),
(15, 1, 'Turma de Teste', 'Turma inserida para realização de testes', 1, 3),
(16, 1, 'Turma de computação', 'Descrição', 2, 2),
(17, 28, 'Sala 1', 'Primeira Sala da Instituição', 3, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`idalunos`),
  ADD KEY `alunos_FKIndex1` (`sala_idsala`);

--
-- Índices para tabela `anotacoes`
--
ALTER TABLE `anotacoes`
  ADD PRIMARY KEY (`idanotacoes`),
  ADD KEY `anotacoes_FKIndex1` (`blocos_idblocos`);

--
-- Índices para tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`idavaliacao`),
  ADD KEY `avaliacao_FKIndex1` (`alunos_idalunos`);

--
-- Índices para tabela `blocos`
--
ALTER TABLE `blocos`
  ADD PRIMARY KEY (`idblocos`),
  ADD KEY `blocos_FKIndex1` (`professor_idprofessor`);

--
-- Índices para tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`idevento`),
  ADD KEY `evento_FKIndex1` (`periodo_idperiodo`);

--
-- Índices para tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`idinstituicao`),
  ADD KEY `instituicao_FKIndex1` (`professor_idprofessor`);

--
-- Índices para tabela `listapresenca`
--
ALTER TABLE `listapresenca`
  ADD PRIMARY KEY (`idlistapresenca`),
  ADD KEY `listapresenca_FKIndex1` (`sala_idsala`);

--
-- Índices para tabela `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`idperiodo`),
  ADD KEY `periodo_FKIndex1` (`sala_idsala`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`idprofessor`);

--
-- Índices para tabela `registrodeavaliacao`
--
ALTER TABLE `registrodeavaliacao`
  ADD PRIMARY KEY (`idregistrodeavaliacao`),
  ADD KEY `registrodeavaliacao_FKIndex1` (`evento_idevento`),
  ADD KEY `registrodeavaliacao_FKIndex2` (`alunos_idalunos`);

--
-- Índices para tabela `registropresenca`
--
ALTER TABLE `registropresenca`
  ADD PRIMARY KEY (`idregistropresenca`),
  ADD KEY `registropresenca_FKIndex1` (`listapresenca_idlistapresenca`);

--
-- Índices para tabela `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`idsala`),
  ADD KEY `sala_FKIndex1` (`instituicao_idinstituicao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `idalunos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `anotacoes`
--
ALTER TABLE `anotacoes`
  MODIFY `idanotacoes` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `idavaliacao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `blocos`
--
ALTER TABLE `blocos`
  MODIFY `idblocos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `evento`
--
ALTER TABLE `evento`
  MODIFY `idevento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `idinstituicao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `listapresenca`
--
ALTER TABLE `listapresenca`
  MODIFY `idlistapresenca` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `periodo`
--
ALTER TABLE `periodo`
  MODIFY `idperiodo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `idprofessor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `registrodeavaliacao`
--
ALTER TABLE `registrodeavaliacao`
  MODIFY `idregistrodeavaliacao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `registropresenca`
--
ALTER TABLE `registropresenca`
  MODIFY `idregistropresenca` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `sala`
--
ALTER TABLE `sala`
  MODIFY `idsala` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`sala_idsala`) REFERENCES `sala` (`idsala`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `anotacoes`
--
ALTER TABLE `anotacoes`
  ADD CONSTRAINT `anotacoes_ibfk_1` FOREIGN KEY (`blocos_idblocos`) REFERENCES `blocos` (`idblocos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`alunos_idalunos`) REFERENCES `alunos` (`idalunos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `blocos`
--
ALTER TABLE `blocos`
  ADD CONSTRAINT `blocos_ibfk_1` FOREIGN KEY (`professor_idprofessor`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `instituicao`
--
ALTER TABLE `instituicao`
  ADD CONSTRAINT `instituicao_ibfk_1` FOREIGN KEY (`professor_idprofessor`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `listapresenca`
--
ALTER TABLE `listapresenca`
  ADD CONSTRAINT `listapresenca_ibfk_1` FOREIGN KEY (`sala_idsala`) REFERENCES `sala` (`idsala`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `periodo`
--
ALTER TABLE `periodo`
  ADD CONSTRAINT `periodo_ibfk_1` FOREIGN KEY (`sala_idsala`) REFERENCES `sala` (`idsala`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `registrodeavaliacao`
--
ALTER TABLE `registrodeavaliacao`
  ADD CONSTRAINT `registrodeavaliacao_ibfk_1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `registrodeavaliacao_ibfk_2` FOREIGN KEY (`alunos_idalunos`) REFERENCES `alunos` (`idalunos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `registropresenca`
--
ALTER TABLE `registropresenca`
  ADD CONSTRAINT `registropresenca_ibfk_1` FOREIGN KEY (`listapresenca_idlistapresenca`) REFERENCES `listapresenca` (`idlistapresenca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`instituicao_idinstituicao`) REFERENCES `instituicao` (`idinstituicao`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
