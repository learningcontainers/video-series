CREATE TABLE app_users (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(2) NOT NULL
)ENGINE=innodb;

INSERT INTO `app_users` (`first_name`, `last_name`, `city`, `state`) VALUES ('John', 'Doe', 'New York', 'NY'), ('Jane', 'Doe', 'Washington', 'DC');
