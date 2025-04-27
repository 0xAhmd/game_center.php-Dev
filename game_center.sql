-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2025 at 11:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `genre`, `price`, `image_url`, `description`) VALUES
(15, 'Cyberpunk 2077', 'RPG', 60.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/1091500/header.jpg?t=1734434803', 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the megalopolis of Night City, where you play as a cyberpunk mercenary wrapped up in a do-or-die fight for survival. Improved and featuring all-new free additional content, customize your character and playstyle as you take on jobs, build a reputation, and unlock upgrades. The relationships you forge and the choices you make will shape the story and the world around you. Legends are made here. What will yours be?'),
(16, 'Red Dead Redemption 2', 'Adventure', 60.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/1174180/header.jpg?t=1720558643', 'America, 1899.\r\n\r\nArthur Morgan and the Van der Linde gang are outlaws on the run. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.'),
(17, 'Grand Theft Auto VI', 'Open World Action-adventure', 60.00, 'https://i.ytimg.com/vi/hwIoeJTtExk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCaLifasXQEdFYkH3HIS4NpvWytZg', 'Grand Theft Auto VI heads to the state of Leonida, home to the neon-soaked streets of Vice City and beyond in the biggest, most immersive evolution of the Grand Theft Auto series yet. Coming 2025 to PlayStation 5 and Xbox Series X|S. May contain content inappropriate for children. Visit'),
(18, 'Ghost of Tsushima Director\'s Cut', 'Action-adventure', 69.99, 'https://helios-i.mashable.com/imagery/articles/00iMVz5oU69RK9UEoPsZTMW/hero-image.fill.size_1248x702.v1623390188.jpg', 'Uncover the hidden wonders of Tsushima in this open-world action adventure from Sucker Punch Productions and PlayStation Studios, available for PS5 and PS4'),
(19, 'Tom Clancy\'s: Ghost Recon', 'Action', 50.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/2231380/header.jpg?t=1736258902', 'Explore a treacherous archipelago\r\nExplore Auroa, home of the Silicon Valley giant Skell Technology, by air, land, and sea. Immerse yourself in a mysterious island where architecturally advanced buildings intermingle with wild, untamed nature. From snowy peaks to the deepest swamps, all manner of terrain awaits.'),
(21, 'The Witcher 3: Wild Hunt', 'RPG', 45.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/292030/header.jpg?t=1736424367', 'You are Geralt of Rivia, mercenary monster slayer. Before you stands a war-torn, monster-infested continent you can explore at will. Your current contract? Tracking down Ciri — the Child of Prophecy, a living weapon that can alter the shape of the world.'),
(22, 'Crysis 3 Remastered', 'Action', 40.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/2096610/header.jpg?t=1709652109', 'In Crysis 3 Remastered, the fate of the world is once again in your hands. Returning to the fight as super-soldier Prophet, wielding a powerful auto-loading Predator Bow that fires electric, explosive, and carbon arrows, take on new and old enemies that threaten the peace you worked so hard to achieve.'),
(24, 'Counter-Strike: Global Offensive', 'Shooting-FPS', 0.00, 'https://media.steampowered.com/apps/csgo/blog/images/fb_image.png?v=6', 'Counter-Strike: Global Offensive (CS:GO) is a 2012 multiplayer tactical first-person shooter developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series. Developed for over two years, Global Offensive was released for OS X, PlayStation 3, Windows, and Xbox 360 in August 2012.'),
(25, 'Counter Strike 2', 'Shooting-FPS', 0.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/730/header.jpg?t=1745368595', 'For over two decades, Counter-Strike has offered an elite competitive experience, one shaped by millions of players from across the globe. And now the next chapter in the CS story is about to begin. This is Counter-Strike 2.'),
(29, 'Greed Island', 'Action', 99999999.99, 'https://cdn2.inkarnate.com/cdn-cgi/image/width=1800,height=1400/https://inkarnate-api-as-production.s3.amazonaws.com/4AG5cnXa9YBCCq6EeVEBNA', 'Greed Island (グリードアイランド, Gurīdo Airando) is a dangerous video game meant only for Hunters. Played on the JoyStation Console, it is out of print and sells at auctions for at least 8 billion.[1] The game transports its players\' bodies into the world of \"Greed Island\", only releasing them when they die (at which point they die in \"real life\" as well), win, or leave the game.'),
(30, 'Culling game', 'Action', 99999999.99, 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2023/10/culling-game-strongest-characters.jpg', 'The Culling Game (死し滅めつ回かい遊ゆう Shimetsu Kaiyū?) is the most unprecedented act of jujutsu terrorism ever enacted. The conflict immediately follows the Shibuya Incident and is orchestrated by Kenjaku with the goal of evolving humanity by optimizing cursed energy. The game functions as a lethal battle royal where players kill one another with jujutsu. Players must adhere to the strict rules of the game and fight across ten barrier colonies that form a line down Japan.'),
(33, 'Far Cry® 6', 'Action', 50.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/2369390/header.jpg?t=1738249424', 'Welcome to Yara, a tropical paradise frozen in time. As the dictator of Yara, Antón Castillo is intent on restoring his nation to its former glory by any means necessary, with his son, Diego, following in his bloody footsteps. Their oppressive rule has ignited a revolution.\n\n- Play as Dani Rojas, a local Yaran, as you fight alongside a modern-day guerrilla revolution to liberate Yara. Play the full game solo or with a friend in co-op.\n\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `description` (`description`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
