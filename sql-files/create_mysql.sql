DROP USER IF EXISTS 'ragnarok'@'localhost';
CREATE USER 'ragnarok'@'localhost' 
IDENTIFIED WITH 'mysql_native_password' BY 'ragnarok' 
WITH 
  MAX_QUERIES_PER_HOUR 0 
  MAX_CONNECTIONS_PER_HOUR 0 
  MAX_UPDATES_PER_HOUR 0;

GRANT USAGE ON * . * TO 'ragnarok'@'localhost';

CREATE DATABASE `ragnarok` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE `ragnarok_log` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE `ragnarok_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

GRANT ALL PRIVILEGES ON `ragnarok` . * TO 'ragnarok'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON `ragnarok_log` . * TO 'ragnarok'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON `ragnarok_web` . * TO 'ragnarok'@'localhost' WITH GRANT OPTION;
