-- Demo Data has been generated using an LLM. This data is to be used to load the book store database
-- to allow us execute tests on the database.

-- 1. Insert countries
INSERT INTO country (country_id, country_name, country_code) VALUES
(1, 'United States', 'US'),
(2, 'United Kingdom', 'UK'),
(3, 'Canada', 'CA'),
(4, 'Australia', 'AU'),
(5, 'Germany', 'DE'),
(6, 'France', 'FR'),
(7, 'Japan', 'JP'),
(8, 'Brazil', 'BR'),
(9, 'India', 'IN'),
(10, 'South Africa', 'ZA');

-- 2. Insert address_status
INSERT INTO address_status (address_status_id, status_name) VALUES
(1, 'Current'),
(2, 'Previous'),
(3, 'Business'),
(4, 'Vacation'),
(5, 'Billing'),
(6, 'Shipping'),
(7, 'Temporary'),
(8, 'Family'),
(9, 'Office'),
(10, 'Other');

-- 3. Insert book_language
INSERT INTO book_language (language_id, language_name, language_code) VALUES
(1, 'English', 'EN'),
(2, 'Spanish', 'ES'),
(3, 'French', 'FR'),
(4, 'German', 'DE'),
(5, 'Chinese', 'ZH'),
(6, 'Japanese', 'JA'),
(7, 'Russian', 'RU'),
(8, 'Portuguese', 'PT'),
(9, 'Arabic', 'AR'),
(10, 'Hindi', 'HI');

-- 4. Insert publishers
INSERT INTO publisher (publisher_id, publisher_name, contact_email, contact_phone) VALUES
(1, 'Penguin Random House', 'contact@penguin.com', '+1 212-782-9000'),
(2, 'HarperCollins', 'info@harpercollins.com', '+1 212-207-7000'),
(3, 'Simon & Schuster', 'support@simonandschuster.com', '+1 212-698-7000'),
(4, 'Hachette Book Group', 'contact@hachette.com', '+1 212-364-1100'),
(5, 'Macmillan Publishers', 'info@macmillan.com', '+1 646-307-5151'),
(6, 'Scholastic Corporation', 'help@scholastic.com', '+1 212-343-6100'),
(7, 'Oxford University Press', 'contact@oup.com', '+44 1865 556767'),
(8, 'Cambridge University Press', 'info@cambridge.org', '+44 1223 358331'),
(9, 'Pearson Education', 'support@pearson.com', '+44 1279 623623'),
(10, 'Wiley', 'contact@wiley.com', '+1 201-748-6000');

-- 5. Insert authors
INSERT INTO author (author_id, first_name, last_name) VALUES
(1, 'George', 'Orwell'),
(2, 'J.K.', 'Rowling'),
(3, 'Stephen', 'King'),
(4, 'Agatha', 'Christie'),
(5, 'J.R.R.', 'Tolkien'),
(6, 'Ernest', 'Hemingway'),
(7, 'Jane', 'Austen'),
(8, 'Mark', 'Twain'),
(9, 'Leo', 'Tolstoy'),
(10, 'Fyodor', 'Dostoevsky'),
(11, 'Harper', 'Lee'),
(12, 'Gabriel', 'García Márquez'),
(13, 'Toni', 'Morrison'),
(14, 'Margaret', 'Atwood'),
(15, 'Chinua', 'Achebe');

-- Insert books
INSERT INTO book (book_id, title, num_pages, publication_date, publisher_id, language_id, price, stock_quantity) VALUES
(1, '1984', 328, '1949-06-08', 1, 1, 9.99, 50),
(2, 'Animal Farm', 112, '1945-08-17', 1, 1, 7.99, 40),
(3, 'Harry Potter and the Philosopher''s Stone', 223, '1997-06-26', 2, 1, 12.99, 100),
(4, 'The Shining', 447, '1977-01-28', 3, 1, 14.99, 30),
(5, 'Murder on the Orient Express', 256, '1934-01-01', 4, 1, 10.99, 25),
(6, 'The Lord of the Rings', 1178, '1954-07-29', 5, 1, 19.99, 60),
(7, 'The Old Man and the Sea', 127, '1952-09-01', 6, 1, 8.99, 35),
(8, 'Pride and Prejudice', 279, '1813-01-28', 7, 1, 6.99, 45),
(9, 'War and Peace', 1296, '1869-01-01', 8, 1, 15.99, 20),
(10, 'Crime and Punishment', 671, '1866-01-01', 9, 1, 11.99, 30),
(11, 'To Kill a Mockingbird', 336, '1960-07-11', 10, 1, 10.99, 40),
(12, 'One Hundred Years of Solitude', 417, '1967-05-30', 2, 2, 12.99, 25),
(13, 'Beloved', 324, '1987-09-02', 3, 1, 11.99, 20),
(14, 'The Handmaid''s Tale', 311, '1985-08-01', 4, 1, 13.99, 35),
(15, 'Things Fall Apart', 209, '1958-06-17', 5, 1, 9.99, 15);

-- 7. Insert book_author relationships
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 6),
(8, 7),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- 8. Insert customers
INSERT INTO customer (customer_id, first_name, last_name, email, phone, registration_date) VALUES
(1, 'John', 'Smith', 'john.smith@example.com', '555-0101', '2022-01-15'),
(2, 'Emily', 'Johnson', 'emily.j@example.com', '555-0102', '2022-02-20'),
(3, 'Michael', 'Williams', 'michael.w@example.com', '555-0103', '2022-03-05'),
(4, 'Sarah', 'Brown', 'sarah.b@example.com', '555-0104', '2022-03-18'),
(5, 'David', 'Jones', 'david.j@example.com', '555-0105', '2022-04-22'),
(6, 'Jennifer', 'Garcia', 'jennifer.g@example.com', '555-0106', '2022-05-30'),
(7, 'Robert', 'Miller', 'robert.m@example.com', '555-0107', '2022-06-11'),
(8, 'Lisa', 'Davis', 'lisa.d@example.com', '555-0108', '2022-07-09'),
(9, 'Thomas', 'Rodriguez', 'thomas.r@example.com', '555-0109', '2022-08-14'),
(10, 'Patricia', 'Martinez', 'patricia.m@example.com', '555-0110', '2022-09-25'),
(11, 'James', 'Wilson', 'james.w@example.com', '555-0111', '2022-10-03'),
(12, 'Elizabeth', 'Anderson', 'elizabeth.a@example.com', '555-0112', '2022-11-17'),
(13, 'Charles', 'Taylor', 'charles.t@example.com', '555-0113', '2022-12-01'),
(14, 'Margaret', 'Thomas', 'margaret.t@example.com', '555-0114', '2023-01-08'),
(15, 'Joseph', 'Hernandez', 'joseph.h@example.com', '555-0115', '2023-02-12');

-- 9. Insert addresses
INSERT INTO address (address_id, street_number, street_name, city, postal_code, country_id) VALUES
(1, '123', 'Main Street', 'New York', '10001', 1),
(2, '456', 'Oak Avenue', 'Los Angeles', '90001', 1),
(3, '789', 'Pine Road', 'Chicago', '60601', 1),
(4, '10', 'Maple Lane', 'Houston', '77001', 1),
(5, '22', 'Cedar Boulevard', 'Phoenix', '85001', 1),
(6, '15', 'Elm Street', 'Philadelphia', '19101', 1),
(7, '33', 'Birch Drive', 'San Antonio', '78201', 1),
(8, '47', 'Willow Way', 'San Diego', '92101', 1),
(9, '52', 'Spruce Circle', 'Dallas', '75201', 1),
(10, '88', 'Aspen Terrace', 'San Jose', '95101', 1),
(11, '21', 'Baker Street', 'London', 'NW1 6XE', 2),
(12, '37', 'Abbey Road', 'London', 'NW8 9AY', 2),
(13, '5', 'Downing Street', 'London', 'SW1A 2AA', 2),
(14, '1600', 'Pennsylvania Avenue', 'Washington', '20500', 1),
(15, '10', 'Downing Street', 'London', 'SW1A 2AA', 2);

-- 10. Insert customer_address relationships
INSERT INTO customer_address (customer_id, address_id, address_status_id, date_from, date_to) VALUES
(1, 1, 1, '2022-01-15', NULL),
(1, 11, 2, '2020-06-01', '2021-12-31'),
(2, 2, 1, '2022-02-20', NULL),
(3, 3, 1, '2022-03-05', NULL),
(4, 4, 1, '2022-03-18', NULL),
(5, 5, 1, '2022-04-22', NULL),
(6, 6, 1, '2022-05-30', NULL),
(7, 7, 1, '2022-06-11', NULL),
(8, 8, 1, '2022-07-09', NULL),
(9, 9, 1, '2022-08-14', NULL),
(10, 10, 1, '2022-09-25', NULL),
(11, 11, 1, '2022-10-03', NULL),
(12, 12, 1, '2022-11-17', NULL),
(13, 13, 1, '2022-12-01', NULL),
(14, 14, 1, '2023-01-08', NULL),
(15, 15, 1, '2023-02-12', NULL);

-- 11. Insert shipping_method
INSERT INTO shipping_method (method_id, method_name, cost) VALUES
(1, 'Standard Shipping', 4.99),
(2, 'Express Shipping', 9.99),
(3, 'Next Day Delivery', 14.99),
(4, 'International Standard', 12.99),
(5, 'International Express', 19.99),
(6, 'Free Shipping', 0.00),
(7, 'Store Pickup', 0.00),
(8, 'Economy Shipping', 2.99),
(9, 'Priority Mail', 7.99),
(10, 'Overnight Shipping', 24.99);

-- 12. Insert order_status
INSERT INTO order_status (status_id, status_value) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Delivered'),
(5, 'Cancelled'),
(6, 'Refunded'),
(7, 'On Hold'),
(8, 'Returned'),
(9, 'Completed'),
(10, 'Failed');

-- 13. Insert cust_order
INSERT INTO cust_order (order_id, customer_id, order_date, shipping_method_id, shipping_address_id, order_total) VALUES
(1, 1, '2023-01-10', 1, 1, 24.97),
(2, 2, '2023-01-15', 2, 2, 32.97),
(3, 3, '2023-01-20', 1, 3, 19.98),
(4, 4, '2023-02-05', 3, 4, 45.96),
(5, 5, '2023-02-10', 1, 5, 27.97),
(6, 6, '2023-02-15', 6, 6, 12.99),
(7, 7, '2023-03-01', 2, 7, 38.97),
(8, 8, '2023-03-10', 1, 8, 21.98),
(9, 9, '2023-03-15', 3, 9, 52.95),
(10, 10, '2023-03-20', 1, 10, 18.98),
(11, 11, '2023-04-01', 4, 11, 67.94),
(12, 12, '2023-04-05', 2, 12, 29.98),
(13, 13, '2023-04-10', 1, 13, 15.99),
(14, 14, '2023-04-15', 3, 14, 48.97),
(15, 15, '2023-04-20', 1, 15, 23.98);

-- 14. Insert order_line
INSERT INTO order_line (line_id, order_id, book_id, price, quantity) VALUES
(1, 1, 1, 9.99, 1),
(2, 1, 2, 7.99, 1),
(3, 1, 8, 6.99, 1),
(4, 2, 3, 12.99, 1),
(5, 2, 7, 8.99, 1),
(6, 2, 11, 10.99, 1),
(7, 3, 4, 14.99, 1),
(8, 3, 5, 10.99, 1),
(9, 4, 6, 19.99, 2),
(10, 4, 10, 11.99, 1),
(11, 5, 9, 15.99, 1),
(12, 5, 12, 12.99, 1),
(13, 6, 3, 12.99, 1),
(14, 7, 1, 9.99, 2),
(15, 7, 5, 10.99, 1),
(16, 7, 8, 6.99, 1),
(17, 8, 2, 7.99, 1),
(18, 8, 7, 8.99, 1),
(19, 9, 6, 19.99, 1),
(20, 9, 9, 15.99, 1),
(21, 9, 11, 10.99, 1),
(22, 10, 4, 14.99, 1),
(23, 10, 10, 11.99, 1),
(24, 11, 6, 19.99, 3),
(25, 12, 3, 12.99, 1),
(26, 12, 8, 6.99, 1),
(27, 13, 5, 10.99, 1),
(28, 14, 1, 9.99, 2),
(29, 14, 7, 8.99, 1),
(30, 14, 11, 10.99, 1),
(31, 15, 2, 7.99, 1),
(32, 15, 4, 14.99, 1);

-- 15. Insert order_history
INSERT INTO order_history (history_id, order_id, status_id, status_date, notes) VALUES
(1, 1, 1, '2023-01-10 10:15:00', 'Order placed'),
(2, 1, 2, '2023-01-10 12:30:00', 'Processing'),
(3, 1, 3, '2023-01-11 09:00:00', 'Shipped via USPS'),
(4, 1, 4, '2023-01-13 14:30:00', 'Delivered'),
(5, 2, 1, '2023-01-15 11:20:00', 'Order placed'),
(6, 2, 2, '2023-01-15 13:45:00', 'Processing'),
(7, 2, 3, '2023-01-16 10:15:00', 'Shipped via FedEx'),
(8, 2, 4, '2023-01-18 16:00:00', 'Delivered'),
(9, 3, 1, '2023-01-20 14:10:00', 'Order placed'),
(10, 3, 2, '2023-01-20 16:30:00', 'Processing'),
(11, 3, 3, '2023-01-21 11:45:00', 'Shipped via UPS'),
(12, 3, 4, '2023-01-24 13:20:00', 'Delivered'),
(13, 4, 1, '2023-02-05 09:30:00', 'Order placed'),
(14, 4, 2, '2023-02-05 11:45:00', 'Processing'),
(15, 4, 3, '2023-02-06 10:00:00', 'Shipped via DHL'),
(16, 4, 4, '2023-02-08 15:45:00', 'Delivered'),
(17, 5, 1, '2023-02-10 13:20:00', 'Order placed'),
(18, 5, 2, '2023-02-10 15:30:00', 'Processing'),
(19, 5, 3, '2023-02-11 12:15:00', 'Shipped via USPS'),
(20, 5, 4, '2023-02-14 11:30:00', 'Delivered');