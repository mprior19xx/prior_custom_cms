-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 03, 2020 at 12:56 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportchek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'hockey'),
(2, 'soccer'),
(3, 'biking'),
(4, 'tennis'),
(5, 'yoga'),
(6, 'hats'),
(7, 'shoes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prod_id` int(11) NOT NULL,
  `prod_number` int(50) NOT NULL,
  `image` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prod_id`, `prod_number`, `image`, `name`, `description`, `price`, `category`) VALUES
(1, 332888744, 'bauer_2.6.jpeg', 'Bauer Vapor X2.6 Senior Skate', 'The Vapor X2.6 Skate is built to deliver a combination of instant step-in comfort and high level performance. A one-piece 3D Polycarb quarter construction provides a combination of support and comfort. A Microfiber Liner offers even more comfort and a soft internal feel. A 30 oz. felt tongue with metatarsal guard gives you an advanced level of support and flex.', '229.99', '1'),
(2, 332761293, 'bauer_goalie.jpeg', 'Bauer Vapor X2.7 Junior Goalie Skates', 'The Bauer Vapor X2.7 Junior Goalie Skates feature an all-new injected quarter and improved fit for better depth and wrap on top of the foot. The Memory Foam Ankle Padding along with grip liner keeps you comfortable and secure so you can slide post to post with ease.', '229.99', '1'),
(3, 332278930, 'bauer_x_junior.jpeg', 'Bauer Vapor X600 Gen II Junior Hockey Skates', 'The only thing your opponents will see is a blur as you skate past them in the new Bauer X600 Hockey Skates. A sleek fiber composite upper with X-rib pattern and the 1-piece injected heel and ankle core are built for speed.', '159.97', '1'),
(4, 332783842, 'ccm_jetspeed.jpeg', 'CCM Jetspeed FT470 Senior Hockey Skates', 'The new Jetspeed FT470 features a lightweight composite construction providing players with excellent heel lock and great fit. The new quick release SpeedBlade XS1 holder allows for quick and easy blade swaps with the assurance of a tight runner-holder connection for maximum energy transfer.', '399.99', '1'),
(5, 332530941, 'ccm_tacks.jpeg', 'CCM Tacks 9060 Senior Hockey Skates', 'The CCM Tacks 9060 Senior Hockey Skates incorporate Speedcore for a lightweight and rigid skate that provides great stability and performance. The HD Micro Fiber Liner provides excellent abrasion protection with great comfort at the same time.', '229.99', '1'),
(6, 332842093, 'adidas_soccer.jpeg', 'Adidas Finale Top-Training Size 5', 'Europe’s premier club competition returns in a blur of football passions. This training ball is a replica of the match ball used in this season’s group stages. It has a seamless surface for high-quality performance and a textured outer coating that enhances its flight and touch. A FIFA stamp confirms its quality. The electrifying design reflects the fervour of fans around the world as Europe’s top teams battle for the ultimate club accolade.', '49.99', '2'),
(7, 333019337, 'nike_soccer.jpeg', 'Nike Mercurial Skills Soccer Ball', 'The Nike Mercurial Skills Soccer Ball has a durable design that’s ideal for practicing and developing your footwork so you can take your game to the next level.\r\n\r\n', '10.50', '2'),
(8, 332847699, 'nike_soccer2.jpeg', 'Nike FA19 Mercurial Skills Soccer Ball -Mango', 'Quality and performance combine in the Nike Skills Soccer Ball, making it ideal for training and recreational play. It features high contrast graphics for easier ball tracking.', '10.50', '2'),
(9, 332847813, 'nike_soccer3.jpeg', 'Nike FA19 Strike Size 5 Soccer Ball', 'The Premium League Strike Soccer Ball is ready for everyday play with high-contrast graphics to help you track it and a 12-panel design for true and accurate flight.', '29.99', '2'),
(10, 332933001, 'puma_soccer.jpeg', 'Puma Final 6 Ms Trainer Size 5 Soccer Ball - Wht', 'Entry level Machine Stitched training ball. Suitable for both training and fun games with friends. The combination of the TPU casing, TPE foam, and polyester backing with rubber bladder and machine stitching gives the ball a soft feel; excellent shape; bounce and flight characteristics.', '24.99', '2'),
(11, 332705909, 'capix_womens.jpeg', 'Capix Aplayado 26 Women\'s Cruiser Bike 2019', 'Enjoy casual rides around town or to local music festival on this classic-style cruiser. The spring saddle seat coupled with an upright riding position makes for a comfortable ride at cruising speeds, taking in the scenery and socializing with friends.', '249.99', '3'),
(12, 332708585, 'diadora_mens_2.jpeg', 'Diadora Orbita 27.5 Men\'s Mountain Bike 2019', 'The Diadora Orbita is a great choice for your everyday mountain bike. The lightweight hardtail design, quality Shimano components and 18-speed drivetrain provides the rider with a versatile bike that is great for riding around the city and also performs well on recreational trails.', '245.97', '3'),
(13, 332708641, 'diadora_mens.jpeg', 'Diadora Paradiso 27.5 Women\'s Mountain Bike 2019', 'The Diadora Paradiso is a great choice for women looking for an everyday mountain bike. The lightweight hardtail design, quality components and 21-speed drivetrain provides the rider with a versatile bike that is great for riding around the city and also performs well on recreational trails.', '459.99', '3'),
(14, 332956669, 'mongoose_mens.jpeg', 'Mongoose Ravage 24 Junior Mountain Bike 2019', 'Up the hill. Now down the hill. Now up the hill, now down, down, down the hill. Take your bike riding to the next level with the full suspension Mongoose Ravage. Mountain biking is hitting the paths hard and you can be part of the fun! Just like a Mongoose pro rider, taking the mountain for yourself, enjoy the fun of 21 speeds with a Shimano Rear Derailleur and twist shifters on the handlebars. There is a full suspension frame and front suspension fork that is like sitting on a shock absorber as you tackle bumps, limbs, rocks and drops. The alloy rims help you try to keep the weight down and the V-brakes make sure that when you need to stop you can stop. Plus a three-piece crank for plenty of performance. The Ravage is ready to match a sense of adventure for riders ages 14 years old and up and at least 67 inches tall. There is nothing you can’t do on a Mongoose.', '299.99', '3'),
(15, 333048231, 'nakamura_womens.jpeg', 'Nakamura Inspire 26 Women\'s Mountain Bike 2020', 'The Nakamura Inspire is an excellent choice entry level mountain bike. The hardtail design, quality components and an 18 speed drivetrain provides the rider with a versatile bike that is great for riding around the neighborhood and on recreational trails.', '249.99', '3'),
(16, 332770314, 'core_bag.jpeg', '  Head Core 3R Pro Bag - Red/Black', 'Designed with every racquet sport consumer in mind. This bag is designed to carry up to 2 racquets and your tennis gear.', '39.99', '4'),
(17, 332770307, 'core_bag2.jpeg', 'Head Core 3R Pro Bag - Black/Neon Yellow', 'Designed with every racquet sport consumer in mind. This bag is designed to carry up to 2 racquets and your tennis gear.', '39.99', '4'),
(18, 331604153, 'diadora_balls.jpeg', 'Diadora Match Tennis Balls - 3 Ball Pack', 'Covered with Yellow CNM1 felt, the Diadora Match Tennis Balls - 3 Ball Pack are easy to track on the court. One tube gives you a total of three finely crafted balls for practices and games.', '4.99', '4'),
(19, 332769008, 'head_raquet.jpeg', 'Head IG Challenge Lite Tennis Racquet ', 'Designed for the more advance beginner or progressing intermediate player looking for a more performance oriented racquet.', '119.99', '4'),
(20, 332851478, 'penn_balls.jpeg', 'Pro Penn Marathon Blue 3 Ball Can', 'Penn’s longest lasting tennis ball.', '4.99', '4'),
(21, 332889945, 'yoga_blue.jpeg', 'Gaiam Studio Select Stay-Put Yoga Towel - Lake', 'Keep your towel secure during practice with the Stay-Put Yoga Mat Towel. Its unique design features four corner pockets on the back side, which hold onto the mat and prevent bunching. Great for all types of yoga, the microfiber towel absorbs twice as much as standard cotton and dries in half the time.', '39.99', '5'),
(22, 333068049, 'yoga_brown.jpeg', '  Byoga B Mat Cork', 'B MAT cork offers a 100% natural cork top surface with a 100% natural rubber bottom surface. Simple. Sharp. Easy on the eyes. This B MAT is an exceptional eco-sustainable yoga mat option offering superior grip when damp. Ideal for a hot class or a challenging vinyasa practice, the quick-dry, 4mm thick B MAT Cork is an elevated, unique and grounding take on the traditional yoga mat. Top surface use only.', '92.99', '5'),
(23, 333068121, 'yoga_pink.jpeg', 'Halfmoon Deluxe Mat Garnet', 'The Deluxe Studio Mat is extra comfortable for a softer impact. Providing yogis with generous cushioning for daily asana, the Deluxe Studio Mat is suitable for all styles and all levels of yoga, pilates, and conditioning while offering a soft surface even when layered with hardwood or concrete floors. The waffled surface creates a non-slip texture, making it ideal for anything from hatha yoga to an energetic asana practice. Lightweight, easy to clean, and durable, this mat is perfect for daily use.\r\n\r\n', '45.00', '5'),
(24, 332889763, 'yoga_purple.jpeg', 'Gaiam 6Mm Reversible Printed Yoga Mat- Plumstone', 'Featuring a non-slip, textured surface, the Gaiam® Studio Select 6mm Premium Reversible Yoga Mat offers cushioned comfort and grip to stabilize and support you during your practice.', '39.99', '5'),
(25, 333068059, 'yoga_cork.jpeg', 'Byoga Bmat Everday 4Mm - Cork', 'The B MAT Everyday 4mm has been our top selling mat since the beginning. The B MAT Everyday is designed with every-yogi in mind. Super sweaty and fast moving, or room-temp with long holds -- the B MAT Everyday is for every-practice.', '82.00', '5'),
(26, 332690173, 'adidas_mens.jpeg', 'adidas Originals Men\'s Dart Snapback Hat - Camo', 'A clean and simple logo look with a classic vibe. A bit of wool adds a sturdy, structured feel to this five-panel hat. It’s detailed with an embroidered Trefoil outline and features a pre-curved brim to help shield you from the sun.', '19.97', '6'),
(27, 332479762, 'columbia_mens.jpeg', 'Columbia Men\'s Mesh Snapback Hat ', 'It’s a classic, snap-back, mesh ball cap featuring the Columbia Sportswear logo with groovy-styled hills and trees that are front and center. This is the hat all the cool kids will be wearing, a future, worn-in, go-to favorite.', '29.99', '6'),
(28, 332962434, 'hurley_mens.jpeg', 'Hurley Men\'s One and Only Gradient Snapback Hat', 'The Hurley One And Only Hat features stretchy mesh panels and an adjustable snap closure for customized comfort.', '21.97', '6'),
(29, 333000745, 'quiksilver_mens.jpeg', 'Quiksilver Men\'s Final Hat - Navy', 'Suiting fabric', '34.99', '6'),
(30, 332426798, 'underarmour_mens.jpeg', 'Under Armour Men\'s Blitzing 3.0 Stretch Fit Hat', 'The Third Generation Of The Most Popular Under Armour Hat. Performance Materials, Classic Fit, And Our Signature HeatGear Sweatband Make This An Easy Favorite.', '29.99', '6'),
(34, 333033800, 'adidas_shoe.jpeg', 'adidas Men\'s Game Day Running Shoes', 'Every run leads right up to game day. Keeping that in mind, these versatile adidas shoes feature energised cushioning and a locked-down fit for nimble agility. Underfoot, a turf-inspired outsole delivers great grip no matter where you’re prepping to play.', '109.99', '7'),
(35, 332801215, 'asics_shoe.jpeg', 'ASICS Men\'s Cumulus 20 Running Shoes ', 'A favorite for 20 years and counting. The ASICS Men’s Cumulus 20 Running Shoe celebrates its 20th anniversary with premium technology and a refined design that offers optimal support and comfort for runners of all levels. A FlyteFoam® midsole teams up with rearfoot and forefoot GEL for all day comfort.', '159.99', '7'),
(36, 332765921, 'new_balance_shoe.jpeg', 'New Balance Men\'s 680v6 4E Running Shoes ', 'Outfitted with a performance-based outsole, the New Balance Men’s M680 V6 4E Running Shoe is a reliable upgrade from our popular 680 men’s running shoe. Plus, a mesh upper provides a conforming and comfortable fit.', '114.99', '7'),
(37, 333055923, 'nike_shoe.jpeg', 'Nike Men\'s Revolution 5 Running Shoes', 'The Nike Revolution 5 cushions your stride with soft foam to keep you running in comfort. Lightweight knit material wraps your foot in breathable support, while a minimalist design fits in just about anywhere your day takes you.', '65.99', '7'),
(38, 332783559, 'underarmour_shoe.jpeg', 'Under Armour Men\'s Charged Running Shoes - Black', 'The Under Armour Men’s Charged Escape 3 Running Shoes is a neutral running shoe for those who need a balance of flexibility & cushioning. It’s lightweight upper hugs the foot for breathable, flexible support while the firm external heel counter keeps the of the foot locked in place.', '109.99', '7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_categories`
--

CREATE TABLE `tbl_products_categories` (
  `prod_cat_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products_categories`
--

INSERT INTO `tbl_products_categories` (`prod_cat_id`, `prod_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 6),
(31, 31, 7),
(32, 32, 7),
(33, 33, 7),
(34, 34, 7),
(35, 35, 7),
(36, 36, 7),
(37, 37, 7),
(38, 38, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pass` varchar(32) NOT NULL,
  `verified` int(1) NOT NULL,
  `user_ip` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_email`, `user_pass`, `verified`, `user_ip`) VALUES
(1, 'Lucas', 'mastro4', 'lcmhockey@hotmail.com', '1234', 1, '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `tbl_products_categories`
--
ALTER TABLE `tbl_products_categories`
  ADD PRIMARY KEY (`prod_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_products_categories`
--
ALTER TABLE `tbl_products_categories`
  MODIFY `prod_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
