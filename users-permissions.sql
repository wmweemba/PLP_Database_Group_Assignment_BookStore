
USE bookstore;

-- Create Users
CREATE USER 'reader'@'localhost' IDENTIFIED BY 'reader_password';
CREATE USER 'sales'@'localhost' IDENTIFIED BY 'sales_password';
CREATE USER 'inventory'@'localhost' IDENTIFIED BY 'inventory_password';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin_password';
CREATE USER 'shipping'@'localhost' IDENTIFIED BY 'shipping_password';

-- Grants for bookstore_reader
GRANT SELECT ON bookstore.* TO 'reader'@'localhost';

-- Grants for bookstore_sales
GRANT SELECT, INSERT, UPDATE ON bookstore.customer TO 'sales'@'localhost';
GRANT SELECT, INSERT, UPDATE ON bookstore.cust_order TO 'sales'@'localhost';
GRANT SELECT, INSERT, UPDATE ON bookstore.order_line TO 'sales'@'localhost';
GRANT SELECT ON bookstore.book TO 'sales'@'localhost';
GRANT SELECT ON bookstore.shipping_method TO 'sales'@'localhost';
GRANT SELECT ON bookstore.order_status TO 'sales'@'localhost';

-- Grants for bookstore_inventory
GRANT SELECT, INSERT, UPDATE ON bookstore.book TO 'inventory'@'localhost';
GRANT SELECT, INSERT, UPDATE ON bookstore.author TO 'inventory'@'localhost';
GRANT SELECT, INSERT, UPDATE ON bookstore.publisher TO 'inventory'@'localhost';
GRANT SELECT, INSERT, UPDATE ON bookstore.book_language TO 'inventory'@'localhost';
GRANT SELECT, INSERT, UPDATE ON bookstore.book_author TO 'inventory'@'localhost';

-- Grants for bookstore_admin
GRANT ALL PRIVILEGES ON bookstore.* TO 'admin'@'localhost';

-- Grants for bookstore_shipping
GRANT SELECT, UPDATE, INSERT ON bookstore.shipping_method TO 'shipping'@'localhost';
GRANT SELECT, UPDATE, INSERT ON bookstore.cust_order TO 'shipping'@'localhost';
GRANT SELECT, UPDATE, INSERT ON bookstore.order_history TO 'shipping'@'localhost';
GRANT SELECT ON bookstore.order_status TO 'shipping'@'localhost';
GRANT SELECT, UPDATE, INSERT ON bookstore.address TO 'shipping'@'localhost';
GRANT SELECT ON bookstore.country TO 'shipping'@'localhost';
GRANT SELECT, UPDATE, INSERT ON bookstore.customer_address TO 'shipping'@'localhost';
GRANT SELECT ON bookstore.customer TO 'shipping'@'localhost';
GRANT SELECT ON bookstore.address_status TO 'shipping'@'localhost';

-- Flush privileges (optional)
FLUSH PRIVILEGES;