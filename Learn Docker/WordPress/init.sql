CREATE DATABASE IF NOT EXISTS wordpress2_db;
CREATE USER 'wordpress2'@'%' IDENTIFIED BY 'wordpress2_password';
GRANT ALL PRIVILEGES ON wordpress2_db.* TO 'wordpress2'@'%';
FLUSH PRIVILEGES;