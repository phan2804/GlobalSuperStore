use GlobalSuperStore;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    contact_details VARCHAR(255)
);
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    quantity INT
);
CREATE TABLE location (
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    PRIMARY KEY (city, state, country, postal_code)
);
CREATE TABLE ship_mode (
    ship_mode_id INT PRIMARY KEY,
    ship_mode VARCHAR(50)
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    ship_date DATE,
    total_cost DECIMAL(10, 2),
    product_price DECIMAL(10, 2),
    discount DECIMAL(5, 2),
    shipping_cost DECIMAL(10, 2),
    order_priority VARCHAR(50),
    customer_id INT,
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    product_id INT,
    ship_mode_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (city, state, country, postal_code) REFERENCES location(city, state, country, postal_code),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (ship_mode_id) REFERENCES ship_mode(ship_mode_id)
);
