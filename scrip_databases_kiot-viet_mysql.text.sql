CREATE TABLE `customers` (
  `ID_customers` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `contactLastName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `contactFirstName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `addressLine1` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `addressLine2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postalCode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `salesRepEmployeeNumber` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `creditLimit` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_customers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `employees` (
  `ID_employees` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `extension` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `officeCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reportsTo` int(11) NOT NULL,
  `jobTitle` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_employees`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `offices` (
  `ID_offices` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(15) DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressLine1` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `addressLine2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `territory` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postalCode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_offices`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `orderDetails` (
  `ID_orderDetails` int(11) NOT NULL AUTO_INCREMENT,
  `productCode` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `priceEach` double NOT NULL,
  `orderLineNumber` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `orderDetailscol` smallint(6) NOT NULL,
  PRIMARY KEY (`ID_orderDetails`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `orders` (
  `ID_orders` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` datetime NOT NULL,
  `requiredDate` datetime NOT NULL,
  `shippedDate` datetime DEFAULT NULL,
  `status` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `ID_customer` int(11) NOT NULL,
  PRIMARY KEY (`ID_orders`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `payments` (
  `ID_customer` int(11) NOT NULL,
  `checkNumber` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `paymentDate` datetime NOT NULL,
  `amount` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_customer`,`checkNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `productlines` (
  `ID_productlines` int(11) NOT NULL AUTO_INCREMENT,
  `textDescription` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlDescription` mediumtext COLLATE utf8_unicode_ci,
  `image` mediumblob,
  PRIMARY KEY (`ID_productlines`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `products` (
  `ID_products` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `productLine` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `productScale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `productVendor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `productDescription` text COLLATE utf8_unicode_ci NOT NULL,
  `buyPrice` double NOT NULL,
  `MSRP` double NOT NULL,
  PRIMARY KEY (`ID_products`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `stocks` (
  `ID_stocks` int(11) NOT NULL AUTO_INCREMENT,
  `ID_productLine` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ID_product` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `quantityProductInStock` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_stocks`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `warehouses` (
  `ID_warehouses` int(11) NOT NULL,
  `product` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `addressLine1` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `addressLine2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_product` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_warehouses`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;





