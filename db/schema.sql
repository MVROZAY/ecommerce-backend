-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
USE ecommerce_db;


CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
    );

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
    );

CREATE TABLE tags (
    id INT NOT NULL AUTO_INCREMENT,
    tag_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
    );

CREATE TABLE product_tags (
    id INT NOT NULL AUTO_INCREMENT,
    product_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id)
    );
    






