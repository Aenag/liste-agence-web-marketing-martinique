CREATE TABLE IF NOT EXISTS t_agency (
  `uid` char(16) NOT NULL,
  `name` varchar(55) NOT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `cpo` char(5) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone1` int(10) unsigned zerofill DEFAULT NULL,
  `phone2` int(10) unsigned zerofill DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(155) NOT NULL,
  `type` enum('Web','Marketing') NOT NULL,
  `dt_add` int(11) NOT NULL,
  `dt_edi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE t_agency
  ADD PRIMARY KEY (uid),
  ADD UNIQUE KEY email (email);
