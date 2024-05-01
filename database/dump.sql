-- Banco de dados: `bot`
--
CREATE DATABASE IF NOT EXISTS `bot` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bot`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `email_painel` varchar(255) NOT NULL,
  `situcao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `telefone`, `nome`, `endereco`, `email_painel`, `situcao`) VALUES
(0, '31996825009', 'Wilker', 'casa, rua , numero', 'wiljcpimenta@gmail.com', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `envios`
--

DROP TABLE IF EXISTS `envios`;
CREATE TABLE IF NOT EXISTS `envios` (
  `id` int NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipo` int NOT NULL,
  `dinheiro` varchar(255) NOT NULL,
  `pix` varchar(255) NOT NULL,
  `cartao` varchar(255) NOT NULL,
  `caderneta` varchar(255) NOT NULL,
  `prod_gas` varchar(255) NOT NULL,
  `prod_agua` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `email`, `senha`, `nome`, `tipo`, `dinheiro`, `pix`, `cartao`, `caderneta`, `prod_gas`, `prod_agua`, `status`) VALUES
(1, 'wiljcpimenta@gmail.com', 'Database1234#', 'Wilker', 2, '1', '1 ', '1 ', '', '70', '20', 'ativo'),
(2, 'ronaldinho@galonaveia.com', '', 'Ronaldinho', 1, '', ' ', ' ', '', '70', '30', 'ativo'),
(3, 'eu@email.com', '123', 'eu', 1, '', '', '', '', '1', '2', 'inativo'),
(4, 'joserpacheco@gmail.com', '123456', 'José  Rodrigo Pacheco', 1, '', '', '', '', '120', '37', 'inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(255) NOT NULL,
  `id_cliente` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `quant_gas` varchar(255) NOT NULL,
  `quant_agua` varchar(255) NOT NULL,
  `forma_pagamento` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `data_hora` varchar(255) NOT NULL,
  `email_painel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `nome_cliente`, `id_cliente`, `telefone`, `endereco`, `quant_gas`, `quant_agua`, `forma_pagamento`, `status`, `data_hora`, `email_painel`) VALUES
(1, 'Wilker', '0', '31999825000', 'casa, rua , numero', '1', '2', 'pix', 'enviado', '17/06/2023 01:55', 'wiljcpimenta@gmail.com'),
(3, 'Felipe Roberto', '4', '3158265856', 'Rua A, Nova Morada, ES', '1', '2', 'dinheiro', 'enviado', '17/06/2023', 'wiljcpimenta@gmail.com'),
(2, 'José Ricardo Pacheco', '1', '3189658965', 'Rua Palmas, Vitória , ES', '3', '5', 'cartao', 'enviado', '17/06/2023 00:00', 'wiljcpimenta@gmail.com'),
(4, 'Augusto José', '5', '3156584848', 'Rua amazonas, 45, MG', '1', '0', 'dinheiro', 'enviado', '17/06/2023', 'wiljcpimenta@gmail.com');
-- ------------
-- ------------
-- ------------
-- -----------------------------------------------------