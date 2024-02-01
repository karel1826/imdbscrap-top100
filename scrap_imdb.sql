-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 02:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrap_imdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `top_movies`
--

CREATE TABLE `top_movies` (
  `Rank` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Rating` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `top_movies`
--

INSERT INTO `top_movies` (`Rank`, `Title`, `Rating`) VALUES
(1, '1. The Shawshank Redemption', '9.3 (2.9M)'),
(2, '2. The Godfather', '9.2 (2M)'),
(3, '3. The Dark Knight', '9.0 (2.8M)'),
(4, '4. The Godfather Part II', '9.0 (1.3M)'),
(5, '5. 12 Angry Men', '9.0 (852K)'),
(6, '6. Schindler\'s List', '9.0 (1.4M)'),
(7, '7. The Lord of the Rings: The Return of the King', '9.0 (2M)'),
(8, '8. Pulp Fiction', '8.9 (2.2M)'),
(9, '9. The Lord of the Rings: The Fellowship of the Ring', '8.9 (2M)'),
(10, '10. The Good, the Bad and the Ugly', '8.8 (802K)'),
(11, '11. Forrest Gump', '8.8 (2.2M)'),
(12, '12. Fight Club', '8.8 (2.3M)'),
(13, '13. The Lord of the Rings: The Two Towers', '8.8 (1.8M)'),
(14, '14. Inception', '8.8 (2.5M)'),
(15, '15. Star Wars: Episode V - The Empire Strikes Back', '8.7 (1.4M)'),
(16, '16. The Matrix', '8.7 (2M)'),
(17, '17. Goodfellas', '8.7 (1.2M)'),
(18, '18. One Flew Over the Cuckoo\'s Nest', '8.7 (1.1M)'),
(19, '19. Se7en', '8.6 (1.8M)'),
(20, '20. It\'s a Wonderful Life', '8.6 (495K)'),
(21, '21. Interstellar', '8.7 (2.1M)'),
(22, '22. Seven Samurai', '8.6 (363K)'),
(23, '23. The Silence of the Lambs', '8.6 (1.5M)'),
(24, '24. Saving Private Ryan', '8.6 (1.5M)'),
(25, '25. City of God', '8.6 (793K)'),
(26, '26. Life Is Beautiful', '8.6 (735K)'),
(27, '27. The Green Mile', '8.6 (1.4M)'),
(28, '28. Terminator 2: Judgment Day', '8.6 (1.2M)'),
(29, '29. Star Wars: Episode IV - A New Hope', '8.6 (1.4M)'),
(30, '30. Spider-Man: Across the Spider-Verse', '8.6 (340K)'),
(31, '31. Back to the Future', '8.5 (1.3M)'),
(32, '32. Spirited Away', '8.6 (834K)'),
(33, '33. The Pianist', '8.5 (899K)'),
(34, '34. Parasite', '8.5 (930K)'),
(35, '35. Psycho', '8.5 (711K)'),
(36, '36. Gladiator', '8.5 (1.6M)'),
(37, '37. The Lion King', '8.5 (1.1M)'),
(38, '38. Léon: The Professional', '8.5 (1.2M)'),
(39, '39. The Departed', '8.5 (1.4M)'),
(40, '40. American History X', '8.5 (1.2M)'),
(41, '41. Whiplash', '8.5 (966K)'),
(42, '42. The Prestige', '8.5 (1.4M)'),
(43, '43. Grave of the Fireflies', '8.5 (304K)'),
(44, '44. Harakiri', '8.6 (67K)'),
(45, '45. The Usual Suspects', '8.5 (1.1M)'),
(46, '46. Casablanca', '8.5 (600K)'),
(47, '47. The Intouchables', '8.5 (917K)'),
(48, '48. Modern Times', '8.5 (257K)'),
(49, '49. Cinema Paradiso', '8.5 (279K)'),
(50, '50. Rear Window', '8.5 (517K)'),
(51, '51. Once Upon a Time in the West', '8.5 (346K)'),
(52, '52. 12th Fail', '9.2 (92K)'),
(53, '53. Alien', '8.5 (938K)'),
(54, '54. City Lights', '8.5 (194K)'),
(55, '55. Apocalypse Now', '8.4 (703K)'),
(56, '56. Django Unchained', '8.5 (1.7M)'),
(57, '57. Memento', '8.4 (1.3M)'),
(58, '58. WALL·E', '8.4 (1.2M)'),
(59, '59. Raiders of the Lost Ark', '8.4 (1M)'),
(60, '60. The Lives of Others', '8.4 (407K)'),
(61, '61. Sunset Blvd.', '8.4 (234K)'),
(62, '62. Paths of Glory', '8.4 (210K)'),
(63, '63. Avengers: Infinity War', '8.4 (1.2M)'),
(64, '64. Spider-Man: Into the Spider-Verse', '8.4 (656K)'),
(65, '65. The Shining', '8.4 (1.1M)'),
(66, '66. Witness for the Prosecution', '8.4 (136K)'),
(67, '67. The Great Dictator', '8.4 (235K)'),
(68, '68. Aliens', '8.4 (755K)'),
(69, '69. Inglourious Basterds', '8.4 (1.6M)'),
(70, '70. The Dark Knight Rises', '8.4 (1.8M)'),
(71, '71. American Beauty', '8.3 (1.2M)'),
(72, '72. Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', '8.4 (513K)'),
(73, '73. Oldboy', '8.3 (626K)'),
(74, '74. Coco', '8.4 (577K)'),
(75, '75. Amadeus', '8.4 (423K)'),
(76, '76. Toy Story', '8.3 (1.1M)'),
(77, '77. The Boat', '8.4 (262K)'),
(78, '78. Braveheart', '8.3 (1.1M)'),
(79, '79. Oppenheimer', '8.4 (619K)'),
(80, '80. Avengers: Endgame', '8.4 (1.2M)'),
(81, '81. Joker', '8.4 (1.5M)'),
(82, '82. Princess Mononoke', '8.3 (427K)'),
(83, '83. Good Will Hunting', '8.3 (1M)'),
(84, '84. Your Name.', '8.4 (311K)'),
(85, '85. Once Upon a Time in America', '8.3 (374K)'),
(86, '86. 3 Idiots', '8.4 (429K)'),
(87, '87. High and Low', '8.4 (52K)'),
(88, '88. Singin\' in the Rain', '8.3 (258K)'),
(89, '89. Capernaum', '8.4 (103K)'),
(90, '90. Requiem for a Dream', '8.3 (890K)'),
(91, '91. Come and See', '8.4 (94K)'),
(92, '92. Toy Story 3', '8.3 (884K)'),
(93, '93. Star Wars: Episode VI - Return of the Jedi', '8.3 (1.1M)'),
(94, '94. Eternal Sunshine of the Spotless Mind', '8.3 (1.1M)'),
(95, '95. The Hunt', '8.3 (359K)'),
(96, '96. 2001: A Space Odyssey', '8.3 (711K)'),
(97, '97. Reservoir Dogs', '8.3 (1.1M)'),
(98, '98. Ikiru', '8.3 (86K)'),
(99, '99. Lawrence of Arabia', '8.3 (311K)'),
(100, '100. The Apartment', '8.3 (194K)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `top_movies`
--
ALTER TABLE `top_movies`
  ADD PRIMARY KEY (`Rank`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
