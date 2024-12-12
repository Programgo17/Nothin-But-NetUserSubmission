-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2024 at 08:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nothin'butnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `paymenttype` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `city`, `address`, `email`, `gender`, `name`, `password`, `phone`, `state`, `username`, `zipcode`, `role`, `paymenttype`, `payment`) VALUES
(502, 'Raleigh', 'New Hope Dr', 'JamesWorthy@gmail.com', 'male', 'James Worthy', 'Loveforbasketball123', '919-765-4568', 'North Carolina', 'JamesW1', '76859-27465', '', NULL, NULL),
(503, 'Charleston', 'Dave Street ', 'JanineB@gmail.com', 'female', 'Janine Bell', 'CertfiedJanine', '222-222-2222', 'South Carolina', 'Janine', '45643-76859', '', NULL, NULL),
(504, 'Greensboro', '4011 Lexington Dr', 'Louwilliamsthethird@gmail.com', 'male', 'Lou Williams', 'Thatboilou', '704-567-7689', 'North Carolina', 'Louthethird', '65472-76854', '', NULL, NULL),
(505, 'Raleigh', '5011 New Bern Av ', 'Jessicasmith@outlook.com', 'female', 'Jessica Smith', 'Jessicahero1', '984-768-7865', 'North Carolina', 'Jessica Smith', '34589-58690', '', NULL, NULL),
(506, 'Houston', '2011 Jackson St', 'JalenJ@gmail.com', 'male', 'Jalen Jackson', 'Jalentheg', '832-567-5674', 'Texas', 'JalenJ', '77002-77003', '', NULL, NULL),
(507, 'Raleigh', '4011 Lightdale Street', 'jaegerjaquezh@yahoo.com', 'female', 'Helene jaegerjaquez', 'Helene12', '704-782-9877', 'North Carolina', 'HeleneJ', '27608-27609', '', NULL, NULL),
(552, 'Houston', 'Dave Street ', 'Jamie12@gmail.com', 'female', 'Jamie', 'Jamie123', '919-563-7455', 'Texas', 'Jamie123', '34567-78678', '', NULL, NULL),
(602, 'Los Angeles', 'Dave Street ', 'Jack500@gmail.com', 'male', 'Jack', 'Jack123', '222-222-2222', 'California', 'Jack1', '55555-55555', '', NULL, NULL),
(652, 'Houston', 'Dave Street ', 'JessicaPerez@gmail.com', 'female', 'Jessica Perez', 'Jessicap123', '222-222-2222', 'Texas', 'JP', '34567-78678', '', NULL, NULL),
(653, 'Houston', 'Dave Street ', 'JessicaPerez1@gmail.com', '', 'Jessica Perez', 'Jessicap123', '222-222-2222', 'Texas', 'JC', '34567-78678', '', NULL, NULL),
(654, 'Houston', 'Dave Street ', 'JessicaPerez12@gmail.com', 'male', 'Jessica Perez', 'Jessicap123', '222-222-2222', 'Texas', 'JC', '34567-78678', '', NULL, NULL),
(655, 'Houston', 'Dave Street ', 'JessicaPerez123@gmail.com', '', 'Jessica Perez', 'Jessicap1234', '222-222-2222', 'Texas', 'JC', '34567-78678', '', NULL, NULL),
(702, 'Los Angeles', 'Dave Street ', 'Jazz@gmail.com', 'male', 'Jazz', 'Jazz123', '222-222-2222', 'California', 'Jazz1', '34567-78694', '', NULL, NULL),
(752, 'Los Angeles', 'Dave Street ', 'Lili@gmail.com', 'female', 'Lili', 'Lili123', '222-222-2222', 'California', 'Lili1', '12345-12345', '', NULL, NULL),
(754, 'Houston', 'Dave Street ', 'Lili1@gmail.com', '', 'Lili', 'Lili123', '222-222-2222', 'California', 'Lili1', '12345-12345', '', NULL, NULL),
(802, 'Raleigh', 'Dave Street ', 'Ejefferson@gmail.com', 'female', 'Emery Jefferson', 'Emeryj123', '919-563-7455', 'North Carolina', 'EmeryJ', '34567-78678', '', NULL, NULL),
(852, 'Houston', 'Dave Street ', 'GraceJenkins@gmail.com', 'female', 'Grace Jenkins', 'Grace123', '704-444-4444', 'Texas', 'Grace1', '12345-12345', '', NULL, NULL),
(853, 'Houston', 'Dave Street ', 'GraceJenkins1@gmail.com', '', 'Grace Jenkins', 'Grace123', '704-444-4444', 'North Carolina', 'Grace12', '12345-12345', '', NULL, NULL),
(902, 'Los Angeles', 'Dave Street ', 'Jazzmine12@gmail.com', 'female', 'Jazmine Jack', 'Jazzmine123', '919-563-7456', 'California', 'Jazzmine1', '55555-55577', '', NULL, NULL),
(952, 'Inglewood', 'Dave Street ', 'Jacobdavis12@gmail.com', 'male', 'Jacob Davis', 'Jacob1', '222-222-2222', 'California', 'Jacob123', '34567-78694', '', NULL, NULL),
(1003, 'Raleigh', 'Dave Street ', 'Jamison1@gmail.com', 'female', 'Jamison', 'Jamison123', '222-222-2222', 'California', 'Jmaison1', '12345-12345', '', NULL, NULL),
(1004, 'Raleigh', 'Dave Street ', 'Jamison12@gmail.com', '', 'Jamison', 'Jamison123', '222-222-2222', 'California', 'Jmaison1', '12345-12345', '', NULL, NULL),
(1052, 'Raleigh', 'Dave Street ', 'Jacksonmendez1@gmail.com', 'male', 'Jackson Mendez', 'Mendez123', '222-222-2222', 'North Carolina', 'MendezJ', '55555-55555', '', NULL, NULL),
(1102, 'Raleigh', 'Dave Street ', 'Rodriguez2@gmail.com', 'female', 'Jessica Rodriguez', 'JessicaRodriguez1', '222-222-2225', 'California', 'Jessica Rodriguez', '34567-78687', '', NULL, NULL),
(1152, 'Raleigh', 'Dave Street Dr', 'Jamessaint1@gmail.com', '', 'James ', 'James123', '222-222-2222', 'California', 'James1', '55555-55555', '', NULL, NULL),
(1202, 'Raleigh', 'Dave Street Dr', 'Jamescarter12@gmail.com', '', 'James Carter1', 'Carter1', '222-222-2222', 'North Carolina', 'Carterjr', '34567-78694', '', NULL, NULL),
(1252, 'Raleigh', 'Dave New Street', 'Jacklee12@gmail.com', 'male', 'Jack Lee', 'Jack12.3', '222-222-2222', 'North Carolina', 'Jack124', '12345-12345', '', NULL, NULL),
(1302, 'Los Angeles', 'Dave Street ', 'Jasonjacob1@gmail.com', 'male', 'Jason Jacob', 'Jason123', '222-222-2222', 'California', 'Jason1', '34567-78694', '', NULL, NULL),
(1352, 'Houston', 'Dave Street ', 'JessicaAbdo1@gmail.com', '', 'Jessica Abdo', '$2a$10$RoWiF99klhTBVJ35OzI9IuzqVoZETuUz33l7kN2YTm3yM3zr0FF1.', '222-222-2222', 'Texas', 'Jessica12', '55555-55577', 'customer', NULL, NULL),
(1402, 'Los Angeles', 'Dave Street ', 'RachelNelson@gmail.com', 'female', 'Rachel Nelson', '$2a$10$aFOcN33zbMtSJsryDMGYWulLpphd5Z948m7whUnn6QmEGIJZsr806', '222-222-2222', 'California', 'Rachel', '34567-78694', 'customer', NULL, NULL),
(1452, 'Los Angeles', 'Dave Street ', 'Vanessa@gmail.com', 'female', 'Vanessa ', '$2a$10$xlYqnRMOf7axXFiRA8euJueQfcdJcHAMcZABHdZoXXYPyii3q6FqS', '222-222-2222', 'California', 'Vanessa1', '55555-55577', 'customer', NULL, NULL),
(1502, 'Los Angeles', 'Dave Street ', 'Vanessa1@gmail.com', 'female', 'Vanessa ', '$2a$10$ze4WpLJ4nxDk6bxk1Jo9G.kSFRIF6eGvGIISHVpSN8augyaFvdfRy', '222-222-2222', 'California', 'Vanessa2', '55555-55577', 'customer', NULL, NULL),
(1552, 'Los Angeles', 'Dave Street ', 'Vanessa5@gmail.com', 'female', 'Vanessa ', '$2a$10$UrsRE9.DKkXPi.vixeHnM.t2zF6n/i4q9e4Vq.D7mT7l5JS9uyVvi', '222-222-2222', 'California', 'Vanessa5', '55555-55577', 'customer', NULL, NULL),
(1553, 'Cary', 'Dave Street Dr', 'fred@gmail.com', 'male', 'Fred', '$2a$10$kCpQXu25PuAXsUqzxQVITuMacFcPfGrJc4rRskuSoOp1ADNdkG04K', '222-222-2222', 'California', 'fred', '34567-78694', 'customer', NULL, NULL),
(1602, 'Los Angeles', 'Dave Street Dr', 'fred15@gmail.com', 'male', 'Fred', '$2a$10$t2f3uFF2ICETSMBrJGKLCe3w1U69OboZYTZe772LIGzU6rXCSFL5u', '222-222-2222', 'California', 'fred12', '34567-78696', 'customer', NULL, NULL),
(1652, 'Cary', 'Dave Street Dr', 'fred2@gmail.com', 'male', 'Fred', '$2a$10$fsrHVXgOZDH4HTpRq.b1EOv5JKq09okjOeVK4udjnUnqsU9F6A8kO', '222-222-2222', 'California', 'fred2', '34567-78694', 'customer', NULL, NULL),
(1702, 'Los Angeles', 'Dave Street Dr', 'fred3@gmail.com', 'male', 'Fred', '$2a$10$unDwO5vafL4s0Cr0F8OGy.9dfnhqViMIUtO/Wy3.yIHJgZCLmKV5G', '222-222-2222', 'California', 'fred3', '34567-78694', 'customer', NULL, NULL),
(1752, 'Los Angeles', 'Dave Street Dr', 'fred4@gmail.com', 'male', 'Fred', '$2a$10$q3xjZI5hKo0k6ajse2WV2eLXipnyZRwv54ZFyjGTXq92jR2S/Brd2', '222-222-2222', 'California', 'fred4', '34567-78694', 'customer', NULL, NULL),
(1802, 'Los Angeles', 'Dave Street ', 'Jake1@gmail.com', 'male', 'Jake', '$2a$10$DE7WthCIPTS7hOcCCa5ZQO6W60eHqP8bAL2W0pgEvYwt3WMWXiRaq', '222-222-2222', 'California', 'Jake1', '55555-55577', 'customer', NULL, NULL),
(1852, 'Los Angeles', 'Dave Street ', 'Hernandez1@gmail.com', 'male', 'Hernandez', '$2a$10$v0UWvWWhrKKwXp1n3H.c8eTHD4w/HmV5SC1HNZDspxV1tF9UM5P/a', '222-222-2222', 'California', 'Hernandez1', '34567-78678', 'customer', NULL, NULL),
(1902, 'Los Angeles', 'Dave Street ', 'Janine@gmail.com', 'female', 'Janine', '$2a$10$83kE7qh5qhWWfL0RYIXGwO1vBus3GjuaeuqtdVOnlI4MIs6PTW79m', '222-222-2222', 'California', 'Janine1', '34567-78694', 'customer', NULL, NULL),
(1952, 'Raleigh', 'Dave Street ', 'Jeffjr1234@gmail.com', '', 'Jeff TT2', '$2a$10$mcef/2RaIngaopmHuPA0H.8KtYWeMpxZ56em1HqaNs.bdivzNrHKC', '222-222-4444', 'North Carolina', 'Jeff1234', '55555-55577', 'customer', NULL, '8968-5674-8948-7890'),
(2002, 'Inglewood', 'Dave Street ', 'Jenna12@gmail.com', '', 'Jenna', '$2a$10$YjS1jSX.NrUVDJPMBmZn0.2ULHVICAZet93Vr3XhUR9noHrmoRcoG', '222-222-2222', 'California', 'Jenna2', '12345-12345', 'customer', NULL, '8968-5674-8948-9082');

-- --------------------------------------------------------

--
-- Table structure for table `customers_seq`
--

CREATE TABLE `customers_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers_seq`
--

INSERT INTO `customers_seq` (`next_val`) VALUES
(2101);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_seq`
--

CREATE TABLE `orders_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_seq`
--

INSERT INTO `orders_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category`, `color`, `description`, `image_url`, `price`, `product_name`, `quantity`, `size`, `review`) VALUES
(0, '', NULL, '', NULL, 0, '', 0, NULL, NULL),
(9000, 'Retro', 'Blue and White', 'Retro Men\'s Comfortable Hardwood Classics Jersey', 'https://slimages.macysassets.com/is/image/MCY/products/6/optimized/11264496_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1', 59.99, 'Tracy McGrady Orlando Magic Jersey', 20, 'S,M,L,XL', NULL),
(9001, 'Retro', 'Black', 'Retro Men\'s Comfortable Hardwood Classics Jersey', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2813000/altimages/ff_2813588alt1_full.jpg&w=900', 59.99, 'Allen Iverson Philadelphia Sixers Jersey', 20, 'S,M,L,XL', NULL),
(9002, 'Retro', 'Purple', 'Retro Men\'s Comfortable Hardwood Classics All-Star Jersey', 'https://cdn.shopify.com/s/files/1/2030/1917/products/smjyac20037-asepurp95son_1.jpg?v=1675390146', 59.99, 'Shaquille O\'neal Jersey 1995', 20, 'S,M,L,XL', NULL),
(9003, 'Retro', 'Red and White', 'Retro Men\'s Comfortable Hardwood Classics Jersey', 'https://feeds.frgimages.com/FFImage/thumb.aspx?i=/productImages/_3914000/ff_3914251-b3a85fa31e53404f7fdd_full.jpg?w=800', 59.99, 'Michael Jordan Chicago Bulls Jersey', 20, 'S,M,L,XL', NULL),
(9004, 'Mens', 'Royal Blue with yellow/gold accents', 'Men\'s Adidas NBA Comfortable Hardwood Classics Jersey ', 'https://images.footballfanatics.com/FFImage/thumb.aspx?i=/productimages/_2641000/altimages/ff_2641805alt1_full.jpg&w=2000', 65, 'Stephen Curry Golden State Warriors Jersey', 20, 'S,M,L,XL', NULL),
(9005, 'Mens', 'Navy Blue ', 'Men\'s NBA Comfortable Hardwood Classics Jersey ', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2819000/altimages/ff_2819268alt1_full.jpg&w=900', 65, 'Lebron James Cleveland Cavaliers Jersey', 20, 'S,M,L,XL', NULL),
(9006, 'Mens', 'Green, Gold, and White', 'Men\'s NBA Comfortable Hardwood Classics Jersey\r\n\r\n', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2642000/altimages/ff_2642758alt1_full.jpg&w=900', 65, 'Kevin Durant Seattle Sonics Jersey', 20, 'S,M,L,XL', NULL),
(9007, 'Mens', 'White and Blue', 'Men\'s NBA Nike Jersey', 'https://images.footballfanatics.com/dallas-mavericks/dallas-mavericks-nike-association-edition-swingman-jersey-white-kyrie-irving-unisex_ss5_p-13348839+u-a3kyg8ksirm8qrmtk37x+v-qh7mtno1tm85dlq6k8vy.jpg?_hv=2&w=900', 65, 'Kyrie Irving Dallas Mavericks Jersey', 20, 'S,M,L,XL', NULL),
(9008, 'Womens', 'Light blue and black', 'WNBA Nike Jersey', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0e95a0ab-8d6f-4b2f-b52a-bc2c52932f6b/WNYL+UNK+DF+VICTORY+R+JSY+23.png', 55, 'Sabrina Ionescu New York Liberty Jersey', 20, 'S,M,L,XL', NULL),
(9009, 'Womens', 'Royal Blue and Green ', 'Nike WNBA Jersey', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/fb84f66f-c16c-40f8-97bd-8d4cdfca4ec5/WMIN+UNK+DF+VICTORY+E+JSY.png', 55, 'Minnesota Lynx Explorer Edition', 20, 'S,M,L,XL', NULL),
(9010, 'Womens', 'Green and Yellow', 'WNBA Nike Jersey', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/d15e27a0-ac73-4149-8b42-6367aec278bf/WSEA+UNK+DF+VICTORY+E+JSY.png', 55, 'Seattle Storm Explored Edition', 20, 'S,M,L,XL', NULL),
(9011, 'Womens', 'White, purple, and black', 'WNBA 1/4 Ziptop Clothing ', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/f666c5d7-b2f1-46bb-bb09-e4793e2d5ab8/WPHX+WNK+BUZZER+1%2F4+ZIP.png', 55, 'WNBA Phoenix Mercury Sweatshirt', 20, 'S,M,L,XL', NULL),
(9012, 'Kids', 'White and Orange', 'Kid\'s Nike NBA Jersey', 'https://supimg.nyc3.digitaloceanspaces.com/bc2795b85fc25e31299a983041b69930.jpg', 45, 'Victor Wembenyama San Antonio Spurs Jersey', 20, 'S,M,L,XL', NULL),
(9013, 'Kids', 'White and Red', 'Jordan Jersey ', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/10e0d26e-c5dd-480b-87b4-6b2ee4eff44c/JDG+RECON+CROPPED+JERSEY.png', 45, 'Jordan Jersey ', 20, 'S,M,L,XL', NULL),
(9014, 'Kids', 'White and Blue', 'Jordan Basketball T shirt', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/edb3fde2-117b-4adb-aa22-8c511cc371a3/NK+OLY24+NN+SS+TEE.png', 45, 'Victor Wenbenyama France T-Shirt', 20, 'S,M,L,XL', NULL),
(9015, 'Kids', 'Black and Yellow', 'Comfortable NBA basketball shoes', 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3f600bb7-cb54-4e7f-8833-1fdc93063e88/KOBE+VIII+%28GS%29.png', 45, 'Kobe 8 Basketball Shoes', 20, '3.5Y, 4Y, 4.5Y, 5Y, 5.5Y, 6Y', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_seq`
--

CREATE TABLE `products_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_seq`
--

INSERT INTO `products_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_seq`
--

CREATE TABLE `reviews_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews_seq`
--

INSERT INTO `reviews_seq` (`next_val`) VALUES
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `UKrfbvkrffamfql7cjmen8v976v` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FKpxtb8awmi0dk6smoh2vp1litg` (`customer_id`),
  ADD KEY `FKkp5k52qtiygd8jkag4hayd0qg` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKkp5k52qtiygd8jkag4hayd0qg` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKpxtb8awmi0dk6smoh2vp1litg` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
