create database project3;

-- Monday Coffee SCHEMAS

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS city;


CREATE TABLE city
(
	city_id	INT PRIMARY KEY,
	city_name VARCHAR(15),	
	population	BIGINT,
	estimated_rent	FLOAT,
	city_rank INT
);

CREATE TABLE customers
(
	customer_id INT PRIMARY KEY,	
	customer_name VARCHAR(25),	
	city_id INT,
	CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES city(city_id)
);


CREATE TABLE products
(
	product_id	INT PRIMARY KEY,
	product_name VARCHAR(35),	
	Price float
);


CREATE TABLE sales
(
	sale_id	INT PRIMARY KEY,
	sale_date	date,
	product_id	INT,
	customer_id	INT,
	total FLOAT,
	rating INT,
	CONSTRAINT fk_products FOREIGN KEY (product_id) REFERENCES products(product_id),
	CONSTRAINT fk_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id) 
);

INSERT INTO city ( city_id, city_name, population, estimated_rent, city_rank)
VALUES 
(1,"Bangalore","12300000","29700",1),
(2,"Chennai","11100000","17100",6),
(3,"Pune","7500000","15300",9),
(4,"Jaipur","4000000","10800",8),
(5,"Delhi","31000000","22500",3),
(6,"Mumbai","20400000","31500",2),
(7,"Hyderabad","10000000","22500",4),
(8,"Ahmedabad","8300000","14400",5),
(9,"Kolkata","14900000","16200",7),
(10,"Surat","7200000","13500",10),
(11,"Lucknow","3800000","9000",11),
(12,"Kanpur","3100000","8100",12),
(13,"Nagpur","2900000","7200",13),
(14,"Indore","3300000","6300",14
);

INSERT INTO customers (customer_id, customer_name, city_id) VALUES
(1, 'Aarav Agarwal', 1),
(2, 'Aarav Pandey', 1),
(3, 'Aditi Gupta', 1),
(4, 'Aditi Joshi', 1),
(5, 'Aditi Reddy', 1),
(6, 'Aditi Verma', 1),
(7, 'Aditya Gupta', 1),
(8, 'Aditya Malhotra', 1),
(9, 'Aditya Sharma', 1),
(10, 'Aditya Singh', 1),
(11, 'Ananya Gupta', 1),
(12, 'Ananya Kumar', 1),
(13, 'Ananya Malhotra', 1),
(14, 'Ananya Mehta', 1),
(15, 'Arjun Agarwal', 1),
(16, 'Arjun Malhotra', 1),
(17, 'Arjun Pandey', 1),
(18, 'Arjun Rao', 1),
(19, 'Arjun Reddy', 1),
(20, 'Arjun Singh', 1),
(21, 'Aryan Desai', 1),
(22, 'Aryan Malhotra', 1),
(23, 'Aryan Patel', 1),
(24, 'Aryan Sharma', 1),
(25, 'Aryan Singh', 1),
(26, 'Dhruv Agarwal', 1),
(27, 'Dhruv Kumar', 1),
(28, 'Dhruv Malhotra', 1),
(29, 'Dhruv Mehta', 1),
(30, 'Dhruv Singh', 1),
(31, 'Dhruv Verma', 1),
(32, 'Diya Desai', 1),
(33, 'Diya Joshi', 1),
(34, 'Diya Kapoor', 1),
(35, 'Diya Reddy', 1),
(36, 'Diya Sinha', 1),
(37, 'Isha Rao', 1),
(38, 'Isha Shukla', 1),
(39, 'Ishita Agarwal', 1),
(40, 'Aarav Chopra', 2),
(41, 'Aarav Kapoor', 2),
(42, 'Aarav Mishra', 2),
(43, 'Aarav Nair', 2),
(44, 'Aarav Rao', 2),
(45, 'Aarav Sharma', 2),
(46, 'Aarav Singh', 2),
(47, 'Aarav Verma', 2),
(48, 'Aditi Kapoor', 2),
(49, 'Aditi Malhotra', 2),
(50, 'Aditi Nair', 2),
(51, 'Aditi Patel', 2),
(52, 'Aditi Rao', 2),
(53, 'Aditi Shukla', 2),
(54, 'Aditi Sinha', 2),
(55, 'Aditya Agarwal', 2),
(56, 'Aditya Reddy', 2),
(57, 'Aditya Shukla', 2),
(58, 'Ananya Chopra', 2),
(59, 'Ananya Desai', 2),
(60, 'Ananya Pandey', 2),
(61, 'Ananya Reddy', 2),
(62, 'Ananya Sharma', 2),
(63, 'Ananya Shukla', 2),
(64, 'Ananya Singh', 2),
(65, 'Arjun Mishra', 2),
(66, 'Arjun Sinha', 2),
(67, 'Aryan Kumar', 2),
(68, 'Aryan Mishra', 2),
(69, 'Aryan Nair', 2),
(70, 'Aryan Reddy', 2),
(71, 'Dhruv Nair', 2),
(72, 'Diya Agarwal', 2),
(73, 'Diya Rao', 2),
(74, 'Diya Shukla', 2),
(75, 'Isha Agarwal', 2),
(76, 'Isha Chopra', 2),
(77, 'Isha Desai', 2),
(78, 'Isha Kapoor', 2),
(79, 'Isha Malhotra', 2),
(80, 'Isha Pandey', 2),
(81, 'Isha Sharma', 2),
(82, 'Aarav Malhotra', 3),
(83, 'Aarav Patel', 3),
(84, 'Aarav Sinha', 3),
(85, 'Aditi Mishra', 3),
(86, 'Aditya Desai', 3),
(87, 'Aditya Verma', 3),
(88, 'Ananya Kapoor', 3),
(89, 'Ananya Rao', 3),
(90, 'Arjun Joshi', 3),
(91, 'Arjun Kapoor', 3),
(92, 'Arjun Kumar', 3),
(93, 'Arjun Mehta', 3),
(94, 'Arjun Patel', 3),
(95, 'Arjun Sharma', 3),
(96, 'Arjun Shukla', 3),
(97, 'Aryan Shukla', 3),
(98, 'Aryan Sinha', 3),
(99, 'Dhruv Patel', 3),
(100, 'Dhruv Shukla', 3),
(101, 'Dhruv Sinha', 3),
(102, 'Diya Chopra', 3),
(103, 'Diya Malhotra', 3),
(104, 'Diya Mishra', 3),
(105, 'Diya Pandey', 3),
(106, 'Isha Joshi', 3),
(107, 'Isha Nair', 3),
(108, 'Isha Singh', 3),
(109, 'Ishita Kapoor', 3),
(110, 'Ishita Reddy', 3),
(111, 'Kiara Agarwal', 3),
(112, 'Krishna Sharma', 3),
(113, 'Mira Agarwal', 3),
(114, 'Mira Chopra', 3),
(115, 'Mira Kumar', 3),
(116, 'Mira Patel', 3),
(117, 'Mira Sharma', 3),
(118, 'Riya Kumar', 3),
(119, 'Riya Singh', 3),
(120, 'Rudra Nair', 3),
(121, 'Rudra Rao', 3),
(122, 'Rudra Sharma', 3),
(123, 'Vihaan Verma', 3),
(124, 'Vivaan Desai', 3),
(125, 'Vivaan Singh', 3),
(126, 'Vivaan Sinha', 3),
(127, 'Krishna Kumar', 3),
(128, 'Mira Nair', 3),
(129, 'Aditi Gupta', 3),
(130, 'Ayaan Patel', 3),
(131, 'Meera Shah', 3),
(132, 'Veer Kapoor', 3),
(133, 'Abhay Singh', 3),
(134, 'Aarav Joshi', 4),
(135, 'Aarav Kumar', 4),
(136, 'Aarav Reddy', 4),
(137, 'Aditi Desai', 4),
(138, 'Aditi Mehta', 4),
(139, 'Aditi Pandey', 4),
(140, 'Aditya Kapoor', 4),
(141, 'Aditya Kumar', 4),
(142, 'Aditya Mehta', 4),
(143, 'Aditya Mishra', 4),
(144, 'Aditya Pandey', 4),
(145, 'Aditya Patel', 4),
(146, 'Aditya Rao', 4),
(147, 'Arjun Desai', 4),
(148, 'Arjun Gupta', 4),
(149, 'Arjun Nair', 4),
(150, 'Arjun Verma', 4),
(151, 'Aryan Agarwal', 4),
(152, 'Aryan Chopra', 4),
(153, 'Aryan Joshi', 4),
(154, 'Aryan Kapoor', 4),
(155, 'Dhruv Chopra', 4),
(156, 'Dhruv Desai', 4),
(157, 'Dhruv Joshi', 4),
(158, 'Dhruv Kapoor', 4),
(159, 'Dhruv Mishra', 4),
(160, 'Dhruv Pandey', 4),
(161, 'Dhruv Rao', 4),
(162, 'Diya Kumar', 4),
(163, 'Diya Mehta', 4),
(164, 'Diya Nair', 4),
(165, 'Diya Patel', 4),
(166, 'Diya Sharma', 4),
(167, 'Diya Verma', 4),
(168, 'Isha Gupta', 4),
(169, 'Isha Kumar', 4),
(170, 'Isha Mehta', 4),
(171, 'Isha Patel', 4),
(172, 'Isha Reddy', 4),
(173, 'Ishita Gupta', 4),
(174, 'Ishita Kumar', 4),
(175, 'Ishita Malhotra', 4),
(176, 'Ishita Mishra', 4),
(177, 'Krishna Agarwal', 4),
(178, 'Krishna Mishra', 4),
(179, 'Krishna Patel', 4),
(180, 'Mira Gupta', 4),
(181, 'Mira Nair', 4),
(182, 'Mira Verma', 4),
(183, 'Navya Rao', 4),
(184, 'Riya Rao', 4),
(185, 'Riya Shukla', 4),
(186, 'Rudra Agarwal', 4),
(187, 'Rudra Malhotra', 4),
(188, 'Rudra Reddy', 4),
(189, 'Saanvi Chopra', 4),
(190, 'Saanvi Joshi', 4),
(191, 'Saanvi Kumar', 4),
(192, 'Shaurya Pandey', 4),
(193, 'Vihaan Reddy', 4),
(194, 'Vivaan Pandey', 4),
(195, 'Krishna Agarwal', 4),
(196, 'Krishna Malhotra', 4),
(197, 'Krishna Reddy', 4),
(198, 'Mira Gupta', 4),
(199, 'Mira Kumar', 4),
(200, 'Tanvi Pillai', 4),
(201, 'Uday Reddy', 4),
(202, 'Arjun Gupta', 4),
(203, 'Aarav Desai', 5),
(204, 'Aarav Gupta', 5),
(205, 'Aarav Mehta', 5),
(206, 'Aarav Shukla', 5),
(207, 'Aditi Agarwal', 5),
(208, 'Aditi Chopra', 5),
(209, 'Aditi Kumar', 5),
(210, 'Aditi Sharma', 5),
(211, 'Aditi Singh', 5),
(212, 'Aditya Chopra', 5),
(213, 'Aditya Joshi', 5),
(214, 'Aditya Nair', 5),
(215, 'Aditya Sinha', 5),
(216, 'Ananya Agarwal', 5),
(217, 'Ananya Joshi', 5),
(218, 'Ananya Mishra', 5),
(219, 'Ananya Nair', 5),
(220, 'Ananya Patel', 5),
(221, 'Ananya Sinha', 5),
(222, 'Ananya Verma', 5),
(223, 'Arjun Chopra', 5),
(224, 'Aryan Gupta', 5),
(225, 'Aryan Mehta', 5),
(226, 'Aryan Pandey', 5),
(227, 'Aryan Rao', 5),
(228, 'Aryan Verma', 5),
(229, 'Dhruv Gupta', 5),
(230, 'Dhruv Reddy', 5),
(231, 'Dhruv Sharma', 5),
(232, 'Diya Gupta', 5),
(233, 'Diya Singh', 5),
(234, 'Isha Mishra', 5),
(235, 'Isha Sinha', 5),
(236, 'Isha Verma', 5),
(237, 'Kiara Desai', 5),
(238, 'Kiara Malhotra', 5),
(239, 'Kiara Pandey', 5),
(240, 'Krishna Malhotra', 5),
(241, 'Krishna Sinha', 5),
(242, 'Mira Joshi', 5),
(243, 'Navya Agarwal', 5),
(244, 'Navya Malhotra', 5),
(245, 'Navya Mehta', 5),
(246, 'Navya Mishra', 5),
(247, 'Riya Agarwal', 5),
(248, 'Riya Desai', 5),
(249, 'Riya Verma', 5),
(250, 'Rudra Joshi', 5),
(251, 'Rudra Mehta', 5),
(252, 'Saanvi Nair', 5),
(253, 'Saanvi Reddy', 5),
(254, 'Shaurya Gupta', 5),
(255, 'Shaurya Malhotra', 5),
(256, 'Vivaan Chopra', 5),
(257, 'Vivaan Kapoor', 5),
(258, 'Vivaan Rao', 5),
(259, 'Vivaan Shukla', 5),
(260, 'Kiara Sinha', 5),
(261, 'Krishna Chopra', 5),
(262, 'Krishna Desai', 5),
(263, 'Krishna Mehta', 5),
(264, 'Krishna Mishra', 5),
(265, 'Navya Chopra', 5),
(266, 'Navya Kapoor', 5),
(267, 'Ishaan Kumar', 5),
(268, 'Nikhil Jain', 5),
(269, 'Tarun Joshi', 5),
(270, 'Ayush Kumar', 5),
(271, 'Ishita Sharma', 6),
(272, 'Kiara Gupta', 6),
(273, 'Kiara Sharma', 6),
(274, 'Kiara Shukla', 6),
(275, 'Mira Mehta', 6),
(276, 'Mira Mishra', 6),
(277, 'Mira Reddy', 6),
(278, 'Rudra Singh', 6),
(279, 'Saanvi Rao', 6),
(280, 'Saanvi Sharma', 6),
(281, 'Shaurya Chopra', 6),
(282, 'Shaurya Singh', 6),
(283, 'Vihaan Patel', 6),
(284, 'Vihaan Shukla', 6),
(285, 'Vivaan Gupta', 6),
(286, 'Vivaan Patel', 6),
(287, 'Vivaan Verma', 6),
(288, 'Krishna Kapoor', 6),
(289, 'Mira Agarwal', 6),
(290, 'Mira Desai', 6),
(291, 'Mira Joshi', 6),
(292, 'Mira Mehta', 6),
(293, 'Mira Reddy', 6),
(294, 'Isha Nair', 6),
(295, 'Madhav Sinha', 6),
(296, 'Aashish Patil', 6),
(297, 'Gauri Sharma', 6),
(298, 'Ishita Pandey', 7),
(299, 'Kiara Mishra', 7),
(300, 'Kiara Verma', 7),
(301, 'Navya Pandey', 7),
(302, 'Navya Verma', 7),
(303, 'Riya Joshi', 7),
(304, 'Riya Reddy', 7),
(305, 'Rudra Kumar', 7),
(306, 'Rudra Verma', 7),
(307, 'Saanvi Desai', 7),
(308, 'Shaurya Kapoor', 7),
(309, 'Shaurya Patel', 7),
(310, 'Vihaan Agarwal', 7),
(311, 'Vihaan Kapoor', 7),
(312, 'Vihaan Mehta', 7),
(313, 'Kiara Singh', 7),
(314, 'Mira Chopra', 7),
(315, 'Navya Kumar', 7),
(316, 'Navya Pandey', 7),
(317, 'Shruti Chatterjee', 7),
(318, 'Aarohi Sen', 7),
(319, 'Kiara Kapoor', 8),
(320, 'Kiara Patel', 8),
(321, 'Kiara Reddy', 8),
(322, 'Krishna Desai', 8),
(323, 'Krishna Kapoor', 8),
(324, 'Mira Shukla', 8),
(325, 'Navya Sinha', 8),
(326, 'Riya Gupta', 8),
(327, 'Riya Nair', 8),
(328, 'Riya Sharma', 8),
(329, 'Riya Sinha', 8),
(330, 'Saanvi Patel', 8),
(331, 'Saanvi Verma', 8),
(332, 'Shaurya Joshi', 8),
(333, 'Shaurya Mishra', 8),
(334, 'Vihaan Nair', 8),
(335, 'Krishna Joshi', 8),
(336, 'Mira Kapoor', 8),
(337, 'Mira Pandey', 8),
(338, 'Navya Agarwal', 8),
(339, 'Navya Gupta', 8),
(340, 'Advait Mehta', 8),
(341, 'Vidya Mishra', 8),
(342, 'Ishita Nair', 9),
(343, 'Ishita Shukla', 9),
(344, 'Ishita Singh', 9),
(345, 'Kiara Nair', 9),
(346, 'Kiara Rao', 9),
(347, 'Krishna Chopra', 9),
(348, 'Krishna Gupta', 9),
(349, 'Krishna Pandey', 9),
(350, 'Mira Kapoor', 9),
(351, 'Navya Singh', 9),
(352, 'Riya Kapoor', 9),
(353, 'Riya Malhotra', 9),
(354, 'Riya Pandey', 9),
(355, 'Rudra Chopra', 9),
(356, 'Rudra Kapoor', 9),
(357, 'Saanvi Gupta', 9),
(358, 'Saanvi Pandey', 9),
(359, 'Shaurya Rao', 9),
(360, 'Shaurya Reddy', 9),
(361, 'Shaurya Sharma', 9),
(362, 'Vivaan Mehta', 9),
(363, 'Vivaan Reddy', 9),
(364, 'Vivaan Sharma', 9),
(365, 'Kiara Verma', 9),
(366, 'Krishna Patel', 9),
(367, 'Mira Sharma', 9),
(368, 'Dhruv Joshi', 9),
(369, 'Aditi Rao', 9),
(370, 'Ishita Joshi', 10),
(371, 'Krishna Rao', 10),
(372, 'Krishna Reddy', 10),
(373, 'Krishna Singh', 10),
(374, 'Navya Chopra', 10),
(375, 'Navya Joshi', 10),
(376, 'Navya Kumar', 10),
(377, 'Navya Reddy', 10),
(378, 'Navya Shukla', 10),
(379, 'Rudra Gupta', 10),
(380, 'Rudra Pandey', 10),
(381, 'Rudra Shukla', 10),
(382, 'Saanvi Kapoor', 10),
(383, 'Saanvi Mishra', 10),
(384, 'Saanvi Shukla', 10),
(385, 'Shaurya Mehta', 10),
(386, 'Vihaan Kumar', 10),
(387, 'Vihaan Mishra', 10),
(388, 'Vihaan Pandey', 10),
(389, 'Vivaan Agarwal', 10),
(390, 'Vivaan Nair', 10),
(391, 'Krishna Shukla', 10),
(392, 'Mira Malhotra', 10),
(393, 'Mira Patel', 10),
(394, 'Mira Rao', 10),
(395, 'Mira Sinha', 10),
(396, 'Trisha Sharma', 10),
(397, 'Ishita Chopra', 11),
(398, 'Navya Desai', 11),
(399, 'Navya Patel', 11),
(400, 'Rudra Sinha', 11),
(401, 'Saanvi Agarwal', 11),
(402, 'Shaurya Agarwal', 11),
(403, 'Shaurya Kumar', 11),
(404, 'Shaurya Verma', 11),
(405, 'Vihaan Chopra', 11),
(406, 'Vihaan Malhotra', 11),
(407, 'Vihaan Sharma', 11),
(408, 'Vivaan Kumar', 11),
(409, 'Krishna Singh', 11),
(410, 'Krishna Sinha', 11),
(411, 'Navya Desai', 11),
(412, 'Kiara Malhotra', 11),
(413, 'Krishna Raghavan', 11),
(414, 'Raghav Rao', 11),
(415, 'Samir Nair', 11),
(416, 'Varun Gupta', 11),
(417, 'Anika Joshi', 11),
(418, 'Ishita Desai', 12),
(419, 'Ishita Patel', 12),
(420, 'Ishita Rao', 12),
(421, 'Ishita Sinha', 12),
(422, 'Ishita Verma', 12),
(423, 'Kiara Chopra', 12),
(424, 'Kiara Singh', 12),
(425, 'Kiara Sinha', 12),
(426, 'Mira Desai', 12),
(427, 'Mira Pandey', 12),
(428, 'Mira Rao', 12),
(429, 'Navya Gupta', 12),
(430, 'Riya Patel', 12),
(431, 'Rudra Desai', 12),
(432, 'Rudra Mishra', 12),
(433, 'Rudra Patel', 12),
(434, 'Saanvi Malhotra', 12),
(435, 'Shaurya Desai', 12),
(436, 'Shaurya Shukla', 12),
(437, 'Vihaan Rao', 12),
(438, 'Vihaan Sinha', 12),
(439, 'Krishna Rao', 12),
(440, 'Krishna Verma', 12),
(441, 'Mira Singh', 12),
(442, 'Mira Verma', 12),
(443, 'Navya Joshi', 12),
(444, 'Navya Mishra', 12),
(445, 'Navya Nair', 12),
(446, 'Ananya Singh', 12),
(447, 'Diya Verma', 12),
(448, 'Lakshmi Desai', 12),
(449, 'Riya Kapoor', 12),
(450, 'Shreya Bhatia', 12),
(451, 'Devansh Mehta', 12),
(452, 'Gaurav N', 12),
(453, 'Kiara Joshi', 13),
(454, 'Kiara Mehta', 13),
(455, 'Krishna Joshi', 13),
(456, 'Krishna Mehta', 13),
(457, 'Krishna Nair', 13),
(458, 'Krishna Verma', 13),
(459, 'Mira Singh', 13),
(460, 'Mira Sinha', 13),
(461, 'Navya Kapoor', 13),
(462, 'Riya Mehta', 13),
(463, 'Riya Mishra', 13),
(464, 'Saanvi Sinha', 13),
(465, 'Shaurya Nair', 13),
(466, 'Vihaan Gupta', 13),
(467, 'Vihaan Joshi', 13),
(468, 'Vihaan Singh', 13),
(469, 'Vivaan Joshi', 13),
(470, 'Krishna Nair', 13),
(471, 'Mira Shukla', 13),
(472, 'Navya Malhotra', 13),
(473, 'Navya Mehta', 13),
(474, 'Aryan Reddy', 13),
(475, 'Saanvi Malik', 13),
(476, 'Amaya Singh', 13),
(477, 'Ishita Mehta', 14),
(478, 'Kiara Kumar', 14),
(479, 'Krishna Kumar', 14),
(480, 'Krishna Shukla', 14),
(481, 'Mira Malhotra', 14),
(482, 'Navya Nair', 14),
(483, 'Navya Sharma', 14),
(484, 'Riya Chopra', 14),
(485, 'Saanvi Mehta', 14),
(486, 'Saanvi Singh', 14),
(487, 'Shaurya Sinha', 14),
(488, 'Vihaan Desai', 14),
(489, 'Vivaan Malhotra', 14),
(490, 'Vivaan Mishra', 14),
(491, 'Krishna Gupta', 14),
(492, 'Krishna Pandey', 14),
(493, 'Krishna Sharma', 14),
(494, 'Mira Mishra', 14),
(495, 'Aarav Sharma', 14),
(496, 'Priya Chaudhary', 14),
(497, 'Anushka Verma', 14);


INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Ground Espresso Coffee (250g)', 350),
(2, 'Cold Brew Coffee Pack (6 Bottles)', 900),
(3, 'Instant Coffee Powder (100g)', 250),
(4, 'Coffee Beans (500g)', 600),
(5, 'Coffee Drip Bags (10 Bags)', 450),
(6, 'French Press Coffee Set', 1200),
(7, 'Specialty Coffee Subscription', 1500),
(8, 'Flavored Coffee Pods (Pack of 10)', 750),
(9, 'Organic Green Coffee Beans (500g)', 700),
(10, 'Coffee Gift Hamper', 1800),
(11, 'Cold Brew Concentrate (500ml)', 550),
(12, 'Caramel Syrup (250ml)', 300),
(13, 'Mocha Flavored Coffee Mix (200g)', 450),
(14, 'Vanilla Coffee Syrup (250ml)', 320),
(15, 'Coffee Mug (Ceramic)', 350),
(16, 'Stainless Steel Tumbler', 500),
(17, 'Coffee-Themed T-Shirt', 600),
(18, 'Reusable Coffee Cup (Eco-friendly)', 450),
(19, 'Glass Coffee Jar (500ml)', 300),
(20, 'Coffee Bean Storage Canister', 800),
(21, 'Insulated Travel Mug', 650),
(22, 'Coffee Art Print', 400),
(23, 'Customizable Coffee Coaster Set', 250),
(24, 'Tote Bag with Coffee Design', 500),
(25, 'Coffee Recipe Book', 600),
(26, 'Coffee Plant Kit (DIY)', 900),
(27, 'Personalized Coffee Spoon', 200),
(28, 'Coffee-Themed Notebook', 300);

/*
1
Coffee Consumers Count
How many people in each city are estimated to consume coffee, given that 25% of the population does?
*/

SELECT
	city_name,
ROUND
	(((population * 25/100)/1000000),3) 
    AS 
    coffee_sales_in_millions, city_name,
city_rank
FROM city
ORDER BY coffee_sales_in_millions DESC;

/*
2
Total Revenue from Coffee Sales
What is the total revenue generated from coffee sales across all cities in the last quarter of 2023?
*/
SELECT
	city_name,
	SUM(s.total) as total_revenue
FROM products as pro
JOIN sales as s
ON pro.product_id = s.product_id
JOIN customers c
ON c.customer_id = s.customer_id
JOIN city ct
ON ct.city_id = c.city_id
WHERE
EXTRACT(YEAR FROM (s.sale_date)) = 2023
AND
EXTRACT(QUARTER FROM (s.sale_date)) = 4
GROUP BY 1
ORDER BY city_name;

/*
3
Sales Count for Each Product
How many units of each coffee product have been sold?
*/
SELECT 
	p.product_name,
	COUNT(s.product_id) 
FROM 
products as p
JOIN 
sales s 
ON p.product_id = s.product_id
GROUP BY product_name
ORDER BY 2 DESC;


/*
4
Average Sales Amount per City
What is the average sales amount per customer in each city?
*/
SELECT DISTINCT 
	COUNT(DISTINCT(c.customer_name)) , 
	ct.city_name, 
	sum(s.total) AS total_revenue,
ROUND(
	sum(s.total)/COUNT(DISTINCT(c.customer_name)),1) 
    AS Average_sales_per_customer
FROM products as pro
JOIN sales as s
ON pro.product_id = s.product_id
JOIN customers c
ON c.customer_id = s.customer_id
JOIN city ct
ON ct.city_id = c.city_id
GROUP BY 2
ORDER BY Average_sales_per_customer DESC;


/*
5
City Population and Coffee Consumers
Provide a list of cities along with their populations and estimated coffee consumers.
*/
SELECT
	ct.city_name,
	ct.population,
COUNT(DISTINCT customer_name),
ROUND
	(((ct.population*0.25)/1000000),1) 
    AS estimated_c_consumers_in_millions
FROM products as pro
JOIN sales as s
ON pro.product_id = s.product_id
JOIN customers c
ON c.customer_id = s.customer_id
JOIN city ct
ON ct.city_id = c.city_id
GROUP BY 1,2
ORDER BY estimated_c_consumers_in_millions DESC;

/*
6
Top Selling Products by City
What are the top 3 selling products in each city based on sales volume?
*/
SELECT * 
FROM 
(
SELECT 
	pro.product_name,
	ct.city_name,
	COUNT(s.total),
DENSE_RANK() OVER(PARTITION BY ct.city_name ORDER BY COUNT(s.total) DESC) AS rank_p
FROM products as pro
JOIN sales as s
ON pro.product_id = s.product_id
JOIN customers c
ON c.customer_id = s.customer_id
JOIN city ct
ON ct.city_id = c.city_id
GROUP BY 1,2
) AS T1
WHERE rank_p <=3;

/*
7
Customer Segmentation by City
How many unique customers are there in each city who have purchased coffee products?
*/
SELECT 
	COUNT(DISTINCT c.customer_name),
	ct.city_name
FROM products as pro
JOIN sales as s
ON pro.product_id = s.product_id
JOIN customers c
ON c.customer_id = s.customer_id
JOIN city ct
ON ct.city_id = c.city_id
WHERE  pro.product_name LIKE '%Coffee%'
GROUP BY 2;

/*
8
Average Sale vs Rent
Find each city and their average sale per customer and avg rent per customer
*/

SELECT 
ct.city_name,
SUM(s.total),
ct.estimated_rent AS city_rent,
COUNT(DISTINCT(c.customer_name)),
ROUND(SUM(s.total)/COUNT(DISTINCT(c.customer_name)),2) AS AVG_SALES_P_CUSTOMER,
ROUND(ct.estimated_rent/COUNT(DISTINCT(c.customer_name)),2) AS AVG_RENT_P_CUSTOMER,
DENSE_RANK() OVER(ORDER BY ROUND(SUM(s.total)/COUNT(DISTINCT(c.customer_name)),2)DESC) AS RANK_AVERAGE_SALES,
DENSE_RANK() OVER(ORDER BY ROUND(ct.estimated_rent/COUNT(DISTINCT(c.customer_name)),2)DESC) AS RANK_AVERAGE_RENT
FROM products as pro
	JOIN sales as s
	ON pro.product_id = s.product_id
	JOIN customers c
	ON c.customer_id = s.customer_id
	JOIN city ct
	ON ct.city_id = c.city_id
    GROUP BY 1,3
    HAVING RANK_AVERAGE_SALES <=3 AND
    RANK_AVERAGE_RENT <=3;
    
/*
9
Monthly Sales Growth
Sales growth rate: Calculate the percentage growth (or decline) in sales over different time periods (monthly).
*/
WITH
monthly_sale
AS 
(
SELECT 
	ct.city_name,
	EXTRACT(MONTH FROM s.sale_date) AS month,
	EXTRACT(YEAR FROM s.sale_date) AS year,
	SUM(s.total) AS total_sale
FROM products as pro
JOIN sales as s
	ON pro.product_id = s.product_id
	JOIN customers c
	ON c.customer_id = s.customer_id
	JOIN city ct
	ON ct.city_id = c.city_id
    GROUP BY 1,2,3
    ORDER BY 1,3,2
),
growth_ratio 
AS
(
	SELECT 
		city_name,
		month,
		year,
		total_sale AS cr_month_sale,
		LAG (total_sale,1) OVER(PARTITION BY city_name) AS last_month_sale
	FROM monthly_sale
)
SELECT 
	city_name,
	month,
	year,
    cr_month_sale,
    last_month_sale,
	ROUND(
		((cr_month_sale - last_month_sale)/last_month_sale)*100,2) AS percentage_change
FROM growth_ratio
WHERE last_month_sale IS NOT NULL;


/*
10
Market Potential Analysis
Identify top 3 city based on highest sales, return city name, total sale, total rent, total customers, estimated coffee consumer
*/
SELECT 
	ct.city_name,
	sum(s.total) AS total_sales,
    COUNT(DISTINCT c.customer_name),
    ct.estimated_rent AS total_rent,
    ROUND(
		((ct.population*0.25)/1000000),2) AS estimated_population_in_millions
FROM products as pro
JOIN sales as s
	ON pro.product_id = s.product_id
	JOIN customers c
	ON c.customer_id = s.customer_id
	JOIN city ct
	ON ct.city_id = c.city_id
    GROUP BY ct.city_name, total_rent, estimated_population_in_millions
    ORDER BY  total_sales DESC
    LIMIT 3;
    
/*    
Recomendation
City 1: Pune
1. Avg rent per cx is very less,
2. highest total revenue,
3. avg_sale per cx is also high

City 2. Delhi
1. Highest estimated coffee consumer which is 7.7M
2. Highest total cx which is 68
3. avg rent per cx 330 (still under 500)

City 3. Jaipur
1. Highest cx no which is 69
2. avg rent per cx is very less 156
3. avg sale per cx is better which at 11.6k

*/
