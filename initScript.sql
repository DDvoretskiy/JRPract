USE `test`;
DROP TABLE IF EXISTS Book;
CREATE TABLE `Book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'  DEFAULT NULL,
  `description` varchar(255) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'  DEFAULT NULL,
  `author` varchar(100) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'  DEFAULT NULL,
  `isbn` varchar(100) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' DEFAULT NULL,
  `printYear` int(11) NOT NULL DEFAULT '0',
  `readAlready` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE 'utf8_general_ci';
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('World of Warcraft: Варкрафт. Хроники. Энциклопедия. Том II', 'The secret knoweledge of the ancient Azeroth', 'Metcen K', 'ISBN: 9785171001759','2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('iPhuck 10', 'Порфирий Петрович - литературно-полицейский алгоритм. Он расследует преступления и одновременно пишет об этом детективные романы, зарабатывая средства для Полицейского Управления. ', 'Пелевин В.', 'ISBN: 9785040893942','2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Структуры данных и алгоритмы в Java', 'Алгоритмы - это основа программирования', 'Лафоре Р.', 'ISBN: 9785496007405', '2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Spring 4. Fourth Edition', 'Отражение функциональных средств, предлагаемых последней версией платформы Spring Framework4', 'Шеффер.К', 'ISBN: 9785845919922', '2015');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Spring Hibernate', 'Больше внимания уделено технологиям разработки приложений, таким как Spring, Hibernate и Eclipse', 'Хемраджани А.', 'ISBN: 9785845913753', '2008');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Safe Haven', 'Safe Haven. Издание на английском языке', 'Sparks N.', 'ISBN: 9780751543001', '2012');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('World of Warcraft: Варкрафт. Хроники. Энциклопедия. Том II', 'The secret knoweledge of the ancient Azeroth', 'Metcen K', 'ISBN: 9785171001759','2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('iPhuck 10', 'Порфирий Петрович - литературно-полицейский алгоритм. Он расследует преступления и одновременно пишет об этом детективные романы, зарабатывая средства для Полицейского Управления. ', 'Пелевин В.', 'ISBN: 9785040893942','2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Структуры данных и алгоритмы в Java', 'Алгоритмы - это основа программирования', 'Лафоре Р.', 'ISBN: 9785496007405', '2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Spring 4. Fourth Edition', 'Отражение функциональных средств, предлагаемых последней версией платформы Spring Framework4', 'Шеффер.К', 'ISBN: 9785845919922', '2015');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Spring Hibernate', 'Больше внимания уделено технологиям разработки приложений, таким как Spring, Hibernate и Eclipse', 'Хемраджани А.', 'ISBN: 9785845913753', '2008');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Safe Haven', 'Safe Haven. Издание на английском языке', 'Sparks N.', 'ISBN: 9780751543001', '2012');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('World of Warcraft: Варкрафт. Хроники. Энциклопедия. Том II', 'The secret knoweledge of the ancient Azeroth', 'Metcen K', 'ISBN: 9785171001759','2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('iPhuck 10', 'Порфирий Петрович - литературно-полицейский алгоритм. Он расследует преступления и одновременно пишет об этом детективные романы, зарабатывая средства для Полицейского Управления. ', 'Пелевин В.', 'ISBN: 9785040893942','2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Структуры данных и алгоритмы в Java', 'Алгоритмы - это основа программирования', 'Лафоре Р.', 'ISBN: 9785496007405', '2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Spring 4. Fourth Edition', 'Отражение функциональных средств, предлагаемых последней версией платформы Spring Framework4', 'Шеффер.К', 'ISBN: 9785845919922', '2015');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Spring Hibernate', 'Больше внимания уделено технологиям разработки приложений, таким как Spring, Hibernate и Eclipse', 'Хемраджани А.', 'ISBN: 9785845913753', '2008');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Safe Haven', 'Safe Haven. Издание на английском языке', 'Sparks N.', 'ISBN: 9780751543001', '2012');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('World of Warcraft: Варкрафт. Хроники. Энциклопедия. Том II', 'The secret knoweledge of the ancient Azeroth', 'Metcen K', 'ISBN: 9785171001759','2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('iPhuck 10', 'Порфирий Петрович - литературно-полицейский алгоритм. Он расследует преступления и одновременно пишет об этом детективные романы, зарабатывая средства для Полицейского Управления. ', 'Пелевин В.', 'ISBN: 9785040893942','2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Структуры данных и алгоритмы в Java', 'Алгоритмы - это основа программирования', 'Лафоре Р.', 'ISBN: 9785496007405', '2017');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Spring 4. Fourth Edition', 'Отражение функциональных средств, предлагаемых последней версией платформы Spring Framework4', 'Шеффер.К', 'ISBN: 9785845919922', '2015');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Spring Hibernate', 'Больше внимания уделено технологиям разработки приложений, таким как Spring, Hibernate и Eclipse', 'Хемраджани А.', 'ISBN: 9785845913753', '2008');
INSERT INTO `test`.`book` (`title`, `description`, `author`, `isbn`,`printYear`) VALUES ('Safe Haven', 'Safe Haven. Издание на английском языке', 'Sparks N.', 'ISBN: 9780751543001', '2012');