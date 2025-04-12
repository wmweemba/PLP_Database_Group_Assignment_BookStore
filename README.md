# PLP Feb Cohort Database Design with SQL Group Assignment

<!-- Group Members
1. William Mweemba - wmweemba@gmail.com
2. Kweyu Delron - kweyudelron37@gmail.com
3. Leonard Boma - leonard383boma@gmail.com
-->

# To test the table structure copy the SQL statements in the answers.sql file and run them in a DBMS Server such as SQL Workbench

# Use the queries in the demo_data.sql file to load some dummy data into the bookstore database tables.

# The PLP-Group-Asignment-BookStore-DB-Diagram_final.drawio.png image shows the table relationship structure described below

# The PLP-Group-Asignment-BookStore-DB-Diagram_final.drawio is the file used to design the database design document showing the database table relationships.

Bookstore Management DB Tables

Core Tables
1. book
•	book_id (PK): Unique identifier for the book
•	title: Title of the book
•	num_pages: Number of pages
•	publication_date: Date of publication
•	publisher_id (FK): Reference to publisher
•	language_id (FK): Reference to book language
•	price: Current price of the book
•	stock_quantity: Number of copies in stock
2. author
•	author_id (PK): Unique identifier for the author
•	first_name: Author's first name
•	last_name: Author's last name
3. book_author (junction table for many-to-many relationship)
•	book_id (PK, FK): Reference to book
•	author_id (PK, FK): Reference to author
4. book_language
•	language_id (PK): Unique identifier for the language
•	language_name: Name of the language (e.g., English, Spanish)
•	language_code: Code for the language (e.g., EN, ES)
5. publisher
•	publisher_id (PK): Unique identifier for the publisher
•	publisher_name: Name of the publisher
•	contact_email: Contact email
•	contact_phone: Contact phone number


Customer and Address Tables
6. customer
•	customer_id (PK): Unique identifier for the customer
•	first_name: Customer's first name
•	last_name: Customer's last name
•	email: Email address (unique)
•	phone: Phone number
•	registration_date: Date when customer registered
7. address
•	address_id (PK): Unique identifier for the address
•	street_number: Street number
•	street_name: Street name
•	city: City
•	postal_code: Postal/ZIP code
•	country_id (FK): Reference to country
8. country
•	country_id (PK): Unique identifier for the country
•	country_name: Name of the country
•	country_code: Country code (e.g., US, UK)
9. customer_address
•	customer_id (PK, FK): Reference to customer
•	address_id (PK, FK): Reference to address
•	address_status_id (FK): Reference to address status
•	date_from: Date when this address became active
•	date_to: Date when this address was no longer active (NULL for current)
10. address_status
•	address_status_id (PK): Unique identifier for the status
•	status_name: Name of the status (e.g., "Current", "Previous")


Order Management Tables
11. cust_order
•	order_id (PK): Unique identifier for the order
•	customer_id (FK): Reference to customer
•	order_date: Date when order was placed
•	shipping_method_id (FK): Reference to shipping method
•	shipping_address_id (FK): Reference to shipping address
•	order_total: Total amount for the order
12. order_line
•	line_id (PK): Unique identifier for the order line
•	order_id (FK): Reference to order
•	book_id (FK): Reference to book
•	price: Price at time of purchase
•	quantity: Quantity ordered
13. shipping_method
•	method_id (PK): Unique identifier for the shipping method
•	method_name: Name of the method (e.g., "Standard", "Express")
•	cost: Base cost for this shipping method
14. order_history
•	history_id (PK): Unique identifier for the history record
•	order_id (FK): Reference to order
•	status_id (FK): Reference to order status
•	status_date: Date when status was set
•	notes: Additional notes about the status change
15. order_status
•	status_id (PK): Unique identifier for the status
•	status_value: Status value (e.g., "Pending", "Shipped", "Delivered", "Cancelled")


Database Diagram Relationships
1.	book to publisher: Many-to-one (many books can be published by one publisher)
2.	book to book_language: Many-to-one (many books can be in one language)
3.	book to author: Many-to-many (through book_author junction table)
4.	customer to address: Many-to-many (through customer_address junction table)
5.	address to country: Many-to-one (many addresses can be in one country)
6.	customer_address to address_status: Many-to-one
7.	cust_order to customer: Many-to-one (many orders can belong to one customer)
8.	cust_order to shipping_method: Many-to-one
9.	cust_order to address: Many-to-one (shipping address)
10.	order_line to cust_order: Many-to-one
11.	order_line to book: Many-to-one
12.	order_history to cust_order: Many-to-one
13.	order_history to order_status: Many-to-one
