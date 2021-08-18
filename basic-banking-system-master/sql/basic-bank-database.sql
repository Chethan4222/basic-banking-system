
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL PRIMARY KEY,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `customer` (
  `id` int(3) NOT NULL PRIMARY KEY,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `customer` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Rakesh', 'rakesh@gmail.com', 90000),
(2, 'Goutham', 'goutham@gmail.com', 30000),
(3, 'Chandan', 'chandan@gmail.com', 95000),
(4, 'Ranjan', 'ranjan@gmail.com', 70000),
(5, 'Harish', 'harish@gmail.com', 65000),
(6, 'Rohit', 'rohit@gmail.com', 30000),
(7, 'Abhishek', 'abhishek@gmail.com', 10000),
(8, 'Madhan', 'madhan@gmail.com', 35000),
(9, 'Ravindra', 'ravindra@gmail.com', 25000),
(10, 'Chethan', 'cg@gmail.com', 80000);



ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


ALTER TABLE `customer`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

COMMIT;