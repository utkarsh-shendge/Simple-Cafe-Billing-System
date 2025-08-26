show databases;
-- Create the database
CREATE DATABASE IF NOT EXISTS cafe_management;
USE cafe_management;

-- Users table for authentication (Login class)
CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    full_name VARCHAR(100),
    role VARCHAR(20) NOT NULL DEFAULT 'staff',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Menu items table (Dashboard class)
CREATE TABLE IF NOT EXISTS menu_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    image_path VARCHAR(255),
    category VARCHAR(50),
    is_active BOOLEAN DEFAULT TRUE
);

-- Orders table (Dashboard class)
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2) NOT NULL,
    tax_amount DECIMAL(10,2) NOT NULL,
    final_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) DEFAULT 'completed',
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- Order details table (Dashboard class)
CREATE TABLE IF NOT EXISTS order_details (
    detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES menu_items(item_id) ON DELETE CASCADE
);

-- Insert admin and staff users (for Login class)
INSERT INTO users (username, password, full_name, role) VALUES 
('admin', 'admin123', 'Administrator', 'admin'),
('staff1', 'staff123', 'John Doe', 'staff'),
('staff2', 'staff456', 'Jane Smith', 'staff');

-- Insert menu items (for Dashboard class)
INSERT INTO menu_items (item_name, price, category) VALUES
('Cold Coffee', 30.0, 'Beverage'),
('7UP', 25.0, 'Beverage'),
('Cappuccino Coffee', 60.0, 'Beverage'),
('Chicken Burger', 140.0, 'Food'),
('Chicken Noodles', 120.0, 'Food'),
('Chocolate Cake', 200.0, 'Dessert'),
('Chocolate Coffee', 80.0, 'Beverage'),
('Fruit Cake', 180.0, 'Dessert'),
('Green Tea', 40.0, 'Beverage'),
('Mineral Water', 20.0, 'Beverage'),
('Orange Juice', 50.0, 'Beverage'),
('Rainbow Cake', 220.0, 'Dessert'),
('Strawberry Cake', 190.0, 'Dessert'),
('Pizza', 240.0, 'Food'),
('Coke', 25.0, 'Beverage');

SHOW TABLES;
SELECT * FROM users;
SELECT * FROM menu_items;
SELECT * FROM orders;
select * from order_details;

