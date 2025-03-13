1. docker pull library/mysql:latest
2. docker run --name=mysql_u -p 3305:3306 -e MYSQL_RANDOM_ROOT_PASSWORD=true -d library/mysql:latest
3. mysql -u root -p
4. Enter GENERATED PASSWORD after get the logs from 'docker logs container_name'
5. alter user 'root'@'localhost' identified by '123456';
6. FLUSH PRIVILEGES;
7. Restart container again and check the root user with new password from step 5
8. Create new user: CREATE USER 'jeremy'@'localhost' IDENTIFIED BY '123456';
9. Based on the scripts.sql follow steps below to generate data:
   1. CREATE DATABASE IF NOT EXISTS security_db; only for root user 
   2. USE security_db; only for root user
   3. CREATE TABLE IF NOT EXISTS customer - only for root user
11. Test connect with the new user and host with Spring setup: USER 'jeremy'@'localhost' IDENTIFIED BY '123456';
12. From this step: "Insert initial batch of unique records" we can use jeremy user to generate data




