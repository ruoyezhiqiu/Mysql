SHOW DATABASES;

USE scott;

SHOW TABLES;

DROP TABLE IF EXISTS iptable;

CREATE TABLE iptable (
  id         INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  ip_start   VARCHAR(255),
  ip_end     VARCHAR(255),
  ip_address VARCHAR(255)
);

DESC iptable;

SELECT *
FROM iptable
ORDER BY id DESC ;

TRUNCATE TABLE  iptable;



