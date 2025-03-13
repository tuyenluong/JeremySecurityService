--CREATE DATABASE IF NOT EXISTS security_db; only for root user
--USE security_db; only for root user

--CREATE TABLE IF NOT EXISTS customer ( only for root user
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    email VARCHAR(255) NOT NULL UNIQUE,
--    pwd VARCHAR(255) NOT NULL,
--    role VARCHAR(50) NOT NULL
--);
--
-- From here we can use jere user to generate data
---- Insert initial batch of unique records
--INSERT INTO customer (email, pwd, role)
--SELECT
--    CONCAT(UUID(), '@example.com'),
--    (SELECT GROUP_CONCAT(CHAR(FLOOR(RAND() * 26) + 65), CHAR(FLOOR(RAND() * 26) + 97), CHAR(FLOOR(RAND() * 10) + 48), CHAR(FLOOR(RAND() * 15) + 33) ORDER BY RAND() SEPARATOR '') FROM (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8) AS temp),
--    CASE FLOOR(RAND() * 3)
--        WHEN 0 THEN 'USER'
--        WHEN 1 THEN 'ADMIN'
--        ELSE 'MODERATOR'
--    END
--FROM information_schema.tables
--LIMIT 1000;
--
---- Efficiently insert more unique records (~1M in total)
--DELIMITER $$
--
--CREATE PROCEDURE insert_customers()
--BEGIN
--    DECLARE counter INT DEFAULT 0;
--    DECLARE total_records INT DEFAULT 1000000;
--    DECLARE batch_size INT DEFAULT 10000;
--    DECLARE iterations INT DEFAULT total_records / batch_size;
--
--    WHILE counter < iterations DO
--        INSERT INTO customer (email, pwd, role)
--        SELECT
--            CONCAT(UUID(), '@example.com'),
--            (SELECT GROUP_CONCAT(CHAR(FLOOR(RAND() * 26) + 65), CHAR(FLOOR(RAND() * 26) + 97), CHAR(FLOOR(RAND() * 10) + 48), CHAR(FLOOR(RAND() * 15) + 33) ORDER BY RAND() SEPARATOR '') FROM (SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8) AS temp),
--            role
--        FROM customer
--        LIMIT batch_size;
--
--        SET counter = counter + 1;
--    END WHILE;
--END $$
--
--DELIMITER ;
--
--CALL insert_customers();
