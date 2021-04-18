USE liquor_store_db;

DROP TABLE if exists inventory_items;
DROP TABLE if exists store_employees;

CREATE TABLE inventory_items(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    alcohol_type VARCHAR(20) NOT NULL,
    price DECIMAL(5,2)
);

CREATE TABLE store_employees(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email varchar(255) NOT NULL,
    phoneNumber INT NOT NULL
);



# coming back to separating concerns
# DROP TABLE if exists alcohol_type;
# DROP TABLE if exists item_count;
# DROP TABLE if exists inventory_item;

# CREATE TABLE inventory_items(
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     item_name VARCHAR(200) NOT NULL
# );
#
# CREATE TABLE alcohol_type(
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     alcohol_type VARCHAR(15) NOT NULL
# );
#
# CREATE TABLE item_count (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
#     count INT NOT NULL,
#     item_id INT UNSIGNED NOT NULL,
#     FOREIGN KEY (item_id) REFERENCES inventory_items(id)
# );
