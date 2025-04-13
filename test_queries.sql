-- Testing the bookstore DB

-- List all books with stock quantities
SELECT title, price, stock_quantity 
FROM book 
ORDER BY stock_quantity ASC;

-- Books that need reordering (less than 10 in stock)
SELECT title, stock_quantity 
FROM book 
WHERE stock_quantity < 30 
ORDER BY stock_quantity ASC;

-- Get all addresses for a specific customer
SELECT a.street_number, a.street_name, a.city, a.postal_code, c.country_name
FROM customer_address ca
JOIN address a ON ca.address_id = a.address_id
JOIN country c ON a.country_id = c.country_id
WHERE ca.customer_id = 5;  


-- Which publishers' books sell the most
SELECT p.publisher_name, COUNT(ol.line_id) AS books_sold
FROM order_line ol
JOIN book b ON ol.book_id = b.book_id
JOIN publisher p ON b.publisher_id = p.publisher_id
GROUP BY p.publisher_id
ORDER BY books_sold DESC;

-- What books a specific customer has purchased
SELECT b.title, ol.price, ol.quantity, co.order_date
FROM cust_order co
JOIN order_line ol ON co.order_id = ol.order_id
JOIN book b ON ol.book_id = b.book_id
WHERE co.customer_id = 5  -- Change to customer ID you want to check
ORDER BY co.order_date DESC;