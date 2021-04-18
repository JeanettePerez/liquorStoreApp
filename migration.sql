USE liquor_store_db;

DROP TABLE if exists alcohol_type;
DROP TABLE if exists item_count;
DROP TABLE if exists brands;

CREATE TABLE brands(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(200) NOT NULL
);

CREATE TABLE alcohol_type(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    alcohol_type VARCHAR(15) NOT NULL,
    brand_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brands (id)
);

CREATE TABLE item_count (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    count INT NOT NULL,
    brand_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brands(id)
);
