-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.7.24 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela library.books
CREATE TABLE IF NOT EXISTS `books` (
  `isbn` int(11) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `numberOfPages` int(11) NOT NULL,
  `copiesAvailable` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela library.books: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`isbn`, `bookName`, `author`, `numberOfPages`, `copiesAvailable`, `createdAt`, `updatedAt`) VALUES
	(1234, 'Orgulho e Preconceito', 'Jane Austin', 350, 5, '2021-11-16 13:49:31', '2021-11-16 13:49:31'),
	(1235, '1984', 'George Orwell', 400, 10, '2021-11-16 13:50:07', '2021-11-16 13:50:07'),
	(1236, 'Dom Quixote de la Mancha', 'Miguel de Cervantes', 350, 8, '2021-11-16 13:50:32', '2021-11-16 13:50:32'),
	(1237, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 200, 3, '2021-11-16 13:50:51', '2021-11-16 13:50:51'),
	(1238, 'Dom Casmurro', 'Machado de Assis', 470, 6, '2021-11-16 13:51:04', '2021-11-16 13:51:04'),
	(1239, 'O Conde de Monte Cristo', 'Alexandre Dumas', 500, 2, '2021-11-16 13:51:23', '2021-11-16 13:51:23'),
	(1240, 'O Senhor dos Anéis', 'J. R. R. Tolkien', 650, 9, '2021-11-16 13:51:50', '2021-11-16 13:51:50'),
	(1241, 'Hamlet', 'William Shakespeare', 380, 7, '2021-11-16 13:52:15', '2021-11-16 13:52:15');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
