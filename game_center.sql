-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2025 at 01:41 PM
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
(16, 'Red Dead Redemption 2', 'Adventure', 60.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/1174180/header.jpg?t=1720558643', 'America, 1899.\n\nArthur Morgan and the Van der Linde gang are outlaws on the run. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.'),
(17, 'Grand Theft Auto VI', 'Open World Action-adventure', 60.00, 'https://i.ytimg.com/vi/hwIoeJTtExk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCaLifasXQEdFYkH3HIS4NpvWytZg', 'Grand Theft Auto VI heads to the state of Leonida, home to the neon-soaked streets of Vice City and beyond in the biggest, most immersive evolution of the Grand Theft Auto series yet. Coming 2025 to PlayStation 5 and Xbox Series X|S. May contain content inappropriate for children. Visit'),
(18, 'Ghost of Tsushima Director\'s Cut', 'Action-adventure', 69.99, 'https://helios-i.mashable.com/imagery/articles/00iMVz5oU69RK9UEoPsZTMW/hero-image.fill.size_1248x702.v1623390188.jpg', 'Uncover the hidden wonders of Tsushima in this open-world action adventure from Sucker Punch Productions and PlayStation Studios, available for PS5 and PS4'),
(21, 'The Witcher 3: Wild Hunt', 'RPG', 45.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/292030/header.jpg?t=1736424367', 'You are Geralt of Rivia, mercenary monster slayer. Before you stands a war-torn, monster-infested continent you can explore at will. Your current contract? Tracking down Ciri — the Child of Prophecy, a living weapon that can alter the shape of the world.'),
(22, 'Crysis 3 Remastered', 'Action', 40.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/2096610/header.jpg?t=1709652109', 'In Crysis 3 Remastered, the fate of the world is once again in your hands. Returning to the fight as super-soldier Prophet, wielding a powerful auto-loading Predator Bow that fires electric, explosive, and carbon arrows, take on new and old enemies that threaten the peace you worked so hard to achieve.'),
(24, 'Counter-Strike: Global Offensive', 'Shooting-FPS', 0.00, 'https://media.steampowered.com/apps/csgo/blog/images/fb_image.png?v=6', 'Counter-Strike: Global Offensive (CS:GO) is a 2012 multiplayer tactical first-person shooter developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series. Developed for over two years, Global Offensive was released for OS X, PlayStation 3, Windows, and Xbox 360 in August 2012.'),
(25, 'Counter Strike 2', 'Shooting-FPS', 0.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/730/header.jpg?t=1745368595', 'For over two decades, Counter-Strike has offered an elite competitive experience, one shaped by millions of players from across the globe. And now the next chapter in the CS story is about to begin. This is Counter-Strike 2.'),
(38, 'Watch Dogs®: Legion', 'Action', 50.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/2239550/header.jpg?t=1736258947', 'Build a resistance made from anyone in the world to take back a near-future London that is facing its downfall.\r\n\r\nRecipient of over 65 E3 awards and nominations.\r\n\r\nRecruit and play as anyone from London. Everyone you see has a unique backstory, personality, and skill set for unique situations.\r\n\r\nHack armed drones, deploy spider-bots, and take down enemies using an Augmented Reality Cloak.'),
(39, 'Valorant', 'Shooting-FPS', 0.00, 'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/f657721a7eb06acae52a29ad3a951f20c1e5fc60-1920x1080.jpg', 'VALORANT is a global arena where you can compete. It\'s a 5v5 tactical shooter where players take turns planting and neutralizing spikes, with a one-life-per-round system for 13 rounds. Beyond weapons and bullets, you\'ll need an Operator equipped with fast, lethal, and situationally adaptable abilities to create opportunities for you to impress with your superior weaponry.'),
(40, 'League of Legends ', 'FPS', 0.00, 'https://cdn1.epicgames.com/offer/24b9b5e323bc40eea252a10cdd3b2f10/EGS_LeagueofLegends_RiotGames_S1_2560x1440-80471666c140f790f28dff68d72c384b?resize=1&w=480&h=270&quality=medium', 'League of Legends (LoL), commonly referred to as League, is a 2009 multiplayer online battle arena video game developed and published by Riot Games. Inspired by Defense of the Ancients, a custom map for Warcraft III.'),
(41, 'Assassin\'s Creed Shadows', 'Action-Adventure', 70.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/3159330/header.jpg?t=1742705129', 'Set in feudal Japan, this installment introduces dual protagonists-Naoe, a shinobi assassin, and Yasuke, a Black samurai. The game emphasizes stealth, exploration, and a rich historical narrative.'),
(42, 'Monster Hunter Wilds', 'Action RPG', 70.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/2246340/header.jpg?t=1745366582', 'An open-world monster hunting game featuring dynamic weather systems and massive behemoths. Players can craft gear from defeated monsters and explore a vast ecosystem.'),
(43, 'Blue Prince', 'Puzzle, Adventure', 27.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1569580/header.jpg?t=1744394425', 'A narrative-driven puzzle game where players construct rooms in a mysterious mansion, uncovering secrets and stories with each new space.'),
(44, 'Clair Obscur: Expedition 33', 'RPG', 0.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1903340/be3305b02d4db0dffa3458537118423bf2792d7e/header.jpg?t=1745509513', 'An RPG featuring turn-based combat and a dark-fantasy setting inspired by French revolutionary imagery. The game boasts a notable voice cast, including Andy Serkis and Charlie Cox.'),
(46, 'Final Fantasy XVI', 'RPG', 60.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/2515020/extras/FAITH_Steam_Demo_Main_Capsule_616x353px_english.jpg?t=1741059170', 'The next chapter in the legendary RPG series, with an all-new combat system, a rich fantasy world, and a gripping story set in the land of Valisthea.'),
(47, 'Hogwarts Legacy', 'Action RPG', 60.00, 'https://assets.nintendo.com/image/upload/q_auto/f_auto/ncom/software/switch/70070000019147/8d6950111fb9a0ece31708dcd6ac893f93c012bc585a6a09dfd986d56ab483d1', 'An immersive RPG set in the wizarding world of Harry Potter. Explore an open world as a student at Hogwarts, mastering magic and uncovering secrets.'),
(48, 'The Legend of Zelda: Tears of the Kingdom', 'Adventure', 70.00, 'https://media.nichegamer.com/wp-content/uploads/2023/05/the-legend-of-zelda-tears-of-the-kingdom-05-23-23-1.jpeg', 'Embark on an epic adventure with Link to save the kingdom of Hyrule. Solve puzzles, fight enemies, and uncover hidden secrets in this highly anticipated sequel.'),
(49, 'Spider-Man 2', 'Action-Adventure', 60.00, 'https://image.api.playstation.com/vulcan/ap/rnd/202306/1219/97e9f5fa6e50c185d249956c6f198a2652a9217e69a59ecd.jpg', 'The next installment in the Spider-Man series. Play as both Peter Parker and Miles Morales to save New York City from a new wave of threats.'),
(50, 'Starfield', 'RPG', 70.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1716740/header.jpg?t=1727384525', 'A vast space RPG from Bethesda Game Studios. Explore the universe, build your own spaceship, and embark on a journey to uncover the mysteries of space.'),
(51, 'Resident Evil 4 Remake', 'Survival Horror', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/2050650/header.jpg?t=1736385712', 'A remake of the iconic survival horror game. Follow Leon S. Kennedy as he attempts to rescue the president\'s daughter in a terrifying and dangerous village.'),
(52, 'Elden Ring', 'Action RPG', 60.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/1245620/capsule_616x353.jpg?t=1744748041', 'From the makers of Dark Souls, this game features a massive open world, challenging combat, and deep lore. Players explore the Lands Between and uncover the mysteries surrounding the Elden Ring.'),
(53, 'Diablo IV', 'Action RPG', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/2344520/header.jpg?t=1744225365', 'The latest installment in the iconic Diablo series. Experience the dark, action-packed gameplay with a variety of classes and an expansive open world to explore.'),
(54, 'Baldurs Gate 3', 'RPG', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1086940/6b6b46089067683cecf6acfc92b39fc4c72e3fac/header.jpg?t=1744744220', 'A new chapter in the Baldurs Gate series. This RPG is set in the Dungeons & Dragons universe and features turn-based combat, rich character customization, and a branching story.'),
(55, 'Star Wars Jedi: Survivor', 'Action-Adventure', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1774580/header.jpg?t=1701206599', 'The next installment in the Star Wars Jedi series. Play as Cal Kestis and continue his journey as he fights to survive in the galaxy under the rule of the Empire.'),
(56, 'Alan Wake 2', 'Survival Horror', 60.00, 'https://image.api.playstation.com/vulcan/ap/rnd/202305/2601/47b97b7a4e7493d9701c7ecabdbdfff0ea49c61effeb6299.jpg', 'The long-awaited sequel to the psychological thriller Alan Wake. Uncover more mysteries as you dive into a new chapter in the eerie world of Alan Wake.'),
(57, 'Hollow Knight: Silksong', 'Action-Adventure', 30.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1030300/header.jpg?t=1742776298', 'The highly anticipated sequel to the indie hit Hollow Knight. Explore a new world, battle fierce enemies, and uncover secrets in this action-packed Metroidvania.'),
(58, 'The Witcher 4', 'RPG', 60.00, 'https://gamingbolt.com/wp-content/uploads/2024/12/the-witcher-4-image-3.jpeg', 'Geralt of Rivia returns in the next chapter of The Witcher series. This open-world RPG continues the story of the famed monster hunter, with a new storyline and setting.'),
(59, 'Forza Motorsport 8', 'Racing', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/2440510/header.jpg?t=1741989226', 'The next installment in the Forza Motorsport series. Race through a variety of tracks, customize your vehicles, and experience realistic graphics and physics.'),
(60, 'Fable 4', 'RPG', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/2769570/header.jpg?t=1717960572', 'A new adventure in the Fable universe. Build your legend as you explore a fantastical world filled with magic, quests, and moral choices.'),
(61, 'Street Fighter 6', 'Fighting', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1364780/header.jpg?t=1745549689', 'The latest in the Street Fighter series. Engage in epic one-on-one battles with a new roster of fighters and improved mechanics for a fresh fighting experience.'),
(62, 'God of War Ragnar?k', 'Action-Adventure', 60.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/2322010/capsule_616x353.jpg?t=1738256985', 'Join Kratos and Atreus on an epic journey through Norse mythology in this action-packed adventure. Battle gods, explore the Nine Realms, and uncover secrets of the fate that awaits them.'),
(63, 'Far Cry', 'First-Person Shooter', 40.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/13520/header.jpg?t=1602602361', 'The original Far Cry introduces players to an open-world FPS with a variety of combat styles and strategies in a jungle environment.'),
(64, 'Far Cry 2', 'First-Person Shooter', 40.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/19900/header.jpg?t=1709317476', 'A follow-up to Far Cry, this installment takes place in Africa, with a new protagonist and a focus on a more realistic combat experience and resource management.'),
(65, 'Far Cry 3', 'First-Person Shooter', 50.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/220240/header.jpg?t=1738250672', 'A beloved installment where players take on the role of Jason Brody, stranded on a tropical island, fighting to survive against pirates and mercenaries.'),
(66, 'Far Cry 4', 'First-Person Shooter', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/298110/header.jpg?t=1739176495', 'Set in the Himalayan region, this game expands the series with a new protagonist and features open-world exploration, vehicular combat, and wild animals.'),
(67, 'Far Cry 5', 'First-Person Shooter', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/552520/header.jpg?t=1738249745', 'Set in a rural Montana town, players fight against a doomsday cult in this installment. It introduces an open-world environment with dynamic events and the ability to recruit allies.'),
(68, 'Far Cry New Dawn', 'First-Person Shooter', 40.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/939960/header.jpg?t=1745423863', 'A direct sequel to Far Cry 5, this game takes place in a post-apocalyptic world, where players fight for survival in a colorful, yet dangerous environment.'),
(69, 'Far Cry® 6', 'First-Person Shooter', 60.00, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/2369390/header.jpg?t=1738249424', 'Set in the fictional country of Yara, players fight to overthrow a dictator in this action-packed installment, featuring the first open-world Far Cry game with a female protagonist.'),
(70, 'Far Cry Primal', 'First-Person Shooter', 50.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/371660/header.jpg?t=1694554883', 'A spin-off set in the prehistoric age, where players use primitive weapons and hunt wild animals in a world before modern technology.'),
(71, 'Far Cry 3: Blood Dragon', 'First-Person Shooter', 20.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/233270/header.jpg?t=1733168266', 'A standalone spin-off of Far Cry 3, this game is set in a neon-lit 1980s-inspired world, offering a fun, over-the-top action experience with a retro-futuristic style.'),
(72, 'Call of Duty: Modern Warfare II', 'First-Person Shooter', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/2000950/header.jpg?t=1678294805', 'A reimagining of the classic Call of Duty: Modern Warfare, featuring intense multiplayer modes, a gripping single-player campaign, and a variety of new weapons and tactics.'),
(73, 'DOOM Eternal', 'First-Person Shooter', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/782330/header.jpg?t=1702308063', 'The highly anticipated sequel to DOOM, delivering fast-paced combat, an arsenal of weapons, and a battle against hellish creatures in stunning environments.'),
(74, 'Halo Infinite', 'First-Person Shooter', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1240440/3c103afc1db13776d5d411ccfd3037e2f43f3a5b/header.jpg?t=1744138118', 'The latest installment in the Halo franchise, featuring Master Chief in a new chapter of the story. The game boasts incredible multiplayer modes, vehicles, and an open-world experience.'),
(75, 'Battlefield V', 'First-Person Shooter', 40.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1238810/header.jpg?t=1738598409', 'Set during World War II, Battlefield V offers large-scale, destructive multiplayer battles, with dynamic weather conditions and destructible environments.'),
(76, 'Rainbow Six Siege', 'Tactical Shooter', 40.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/359550/header.jpg?t=1742315874', 'A tactical first-person shooter that focuses on team-based, strategic combat. Players take on the role of elite operators who must work together to complete high-stakes missions.'),
(77, 'Battlefield 2042', 'First-Person Shooter', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1517290/header.jpg?t=1744718390', 'Battlefield 2042 is a next-generation first-person shooter, featuring large-scale multiplayer battles, advanced vehicles, and dynamic environments set in a futuristic world of warfare.'),
(78, 'Microsoft Flight Simulator', 'Simulation', 60.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/1250410/header.jpg?t=1740686114', 'Microsoft Flight Simulator offers the most realistic flight simulation experience ever created, featuring a vast, open world with real-time weather conditions and aircraft models.'),
(79, 'Among Us', 'Party Game', 5.00, 'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/945360/header.jpg?t=1731953093', 'Among Us is an online multiplayer party game where players work together to complete tasks on a spaceship while trying to unmask the Impostor who is sabotaging them. The game fosters communication, teamwork, and deception as players must deduce who the Impostor is before it’s too late. With its fun and suspenseful gameplay, Among Us has become a social gaming phenomenon. The ever-changing dynamics and the thrill of lying and being lied to make each round a unique experience.'),
(80, 'Culling Game', 'Action', 99999999.99, 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2023/10/culling-game-strongest-characters.jpg', 'The Culling Game (死し滅めつ回かい遊ゆう Shimetsu Kaiyū?) is the most unprecedented act of jujutsu terrorism ever enacted. The conflict immediately follows the Shibuya Incident and is orchestrated by Kenjaku with the goal of evolving humanity by optimizing cursed energy. The game functions as a lethal battle royal where players kill one another with jujutsu. Players must adhere to the strict rules of the game and fight across ten barrier colonies that form a line down Japan.'),
(81, 'Greed Island', 'Adventure', 99999999.99, 'https://cdn2.inkarnate.com/cdn-cgi/image/width=1800,height=1400/https://inkarnate-api-as-production.s3.amazonaws.com/4AG5cnXa9YBCCq6EeVEBNA', 'Greed Island (グリードアイランド, Gurīdo Airando) is a dangerous video game meant only for Hunters. Played on the JoyStation Console, it is out of print and sells at auctions for at least 8 billion.[1] The game transports its players\' bodies into the world of \"Greed Island\", only releasing them when they die (at which point they die in \"real life\" as well), win, or leave the game. It can only be played by Nen users.[2] There is no limit to how many people can enter the game and it is possible to play without a memory card, but one is required to save a player’s progress.');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
