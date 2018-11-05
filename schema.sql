DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(45) NULL,
    department_name VARCHAR(45) NULL,
    price DECIMAL(10,2) NULL,
    stock_quantity INTEGER(10) NULL,
    PRIMARY KEY (item_id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Bucket of Steam", "Kitchen", 1.99, 2000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Bacon Stretcher", "Kitchen", 249.99, 124);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Lint Ball", "Pocket Stuff", 0.05, 10000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Bent Paper Clip", "Pocket Stuff", 0.49, 24000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Melted Hershey Bar", "Pocket Stuff", 0.75, 1537);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Manual Can Opener", "Kitchen", 4.99, 500);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Movie Ticket Stub", "Pocket Stuff", 1.99, 3000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Hammer", "Tools", 11.99, 5000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Flat-head Screwdriver", "Tools", 10.99, 5000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Gold-plated Whisk", "Kitchen", 12499.99, 12);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Saw", "Tools", 12.99, 5000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Used Toothpick", "Pocket Stuff", 0.10, 99999);
