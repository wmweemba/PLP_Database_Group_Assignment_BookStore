# PLP Feb Cohort Database Design with SQL Group Assignment

## Table of Contents
1. [Group Members](#group-members)
2. [Project Overview](#project-overview)
3. [How to Test](#how-to-test)
4. [Database Design](#database-design)
   - [Core Tables](#core-tables)
   - [Customer and Address Tables](#customer-and-address-tables)
   - [Order Management Tables](#order-management-tables)
5. [Database Relationships](#database-relationships)
6. [Resources](#resources)
7. [Conclusion](#conclusion)

---

## Group Members
1. William Mweemba - wmweemba@gmail.com  
2. Kweyu Delron - kweyudelron37@gmail.com  
3. Leonard Boma - leonard383boma@gmail.com  

---

## Project Overview
This project involves designing and implementing a database for a **Bookstore Management System**. The database is designed to handle core functionalities such as managing books, authors, customers, orders, and shipping. It includes a detailed schema with relationships between tables to ensure data integrity and efficient querying.

---

## How to Test
1. Copy the SQL statements from the `answers.sql` file.
2. Run them in a DBMS server such as **SQL Workbench** or any compatible SQL environment.
3. Use the queries in the `demo_data.sql` file to load dummy data into the database tables.
4. Refer to the database diagram (`PLP-Group-Asignment-BookStore-DB-Diagram_final.drawio.png`) for a visual representation of the table relationships.
5. Use the `test_queries.sql` to carry out some basic testing on the data in the database.
6. Run the `user-permissions.sql` file to create necessary database users and assign appropriate permissions.

---

## Database Design

### Core Tables
| Table Name      | Description                                      |
|-----------------|--------------------------------------------------|
| `book`          | Stores information about books.                 |
| `author`        | Stores information about authors.               |
| `book_author`   | Junction table for the many-to-many relationship between books and authors. |
| `book_language` | Stores information about book languages.         |
| `publisher`     | Stores information about publishers.             |

### Customer and Address Tables
| Table Name         | Description                                      |
|--------------------|--------------------------------------------------|
| `customer`         | Stores information about customers.              |
| `address`          | Stores information about addresses.              |
| `country`          | Stores information about countries.              |
| `customer_address` | Junction table for the many-to-many relationship between customers and addresses. |
| `address_status`   | Stores information about the status of addresses (e.g., "Current", "Previous"). |

### Order Management Tables
| Table Name         | Description                                      |
|--------------------|--------------------------------------------------|
| `cust_order`       | Stores information about customer orders.        |
| `order_line`       | Stores information about individual items in an order. |
| `shipping_method`  | Stores information about shipping methods.       |
| `order_history`    | Stores the history of order statuses.            |
| `order_status`     | Stores information about order statuses (e.g., "Pending", "Shipped"). |

---

## Database Relationships
1. **`book` to `publisher`**: Many-to-one (many books can be published by one publisher).  
2. **`book` to `book_language`**: Many-to-one (many books can be in one language).  
3. **`book` to `author`**: Many-to-many (through the `book_author` junction table).  
4. **`customer` to `address`**: Many-to-many (through the `customer_address` junction table).  
5. **`address` to `country`**: Many-to-one (many addresses can be in one country).  
6. **`customer_address` to `address_status`**: Many-to-one.  
7. **`cust_order` to `customer`**: Many-to-one (many orders can belong to one customer).  
8. **`cust_order` to `shipping_method`**: Many-to-one.  
9. **`cust_order` to `address`**: Many-to-one (shipping address).  
10. **`order_line` to `cust_order`**: Many-to-one.  
11. **`order_line` to `book`**: Many-to-one.  
12. **`order_history` to `cust_order`**: Many-to-one.  
13. **`order_history` to `order_status`**: Many-to-one.  

---

## Resources
- **Database Diagram**: [PLP-Group-Asignment-BookStore-DB-Diagram_final.drawio.png](PLP-Group-Asignment-BookStore-DB-Diagram_final.drawio.png)  
- **SQL Scripts**:  
  - `answers.sql`: Contains the SQL statements for creating the database schema.  
  - `demo_data.sql`: Contains sample data for populating the database tables.  
  - `test_queries.sql`: Contains sample queries to test the database functionality.   
  - `user-permissions.sql`: Contains SQL statements for creating users and assigning permissions.  

---

## Conclusion
This project demonstrates a comprehensive database design for a bookstore management system. The schema is designed to handle core functionalities such as book management, customer management, and order processing. The provided SQL scripts and database diagram can be used to understand and test the database structure. 
