/* Welcome to MySQL Address_Book_Service Database */

/* UC-1 */
mysql> Create database Address_Book_Service;
Query OK, 1 row affected (0.30 sec)

mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| address_book_service     |
| classicmodels            |
| employee_payroll_service |
| information_schema       |
| mysql                    |
| payroll_service          |
| performance_schema       |
| student_personal_details |
| sys                      |
+--------------------------+
9 rows in set (0.14 sec)

mysql> USE address_book_service;
Database changed

/* UC-2 */
mysql> CREATE table address_book (
    -> first_name VARCHAR(100) NOT NULL,
    -> last_name VARCHAR(100) NOT NULL,
    -> address VARCHAR(200) NOT NULL,
    -> city VARCHAR(50) NOT NULL,
    -> state VARCHAR(50) NOT NULL,
    -> zip INT NOT NULL,
    -> phone_number VARCHAR(10) NOT NULL,
    -> email_id VARCHAR(20) NOT NULL,
    -> primary key (phone_number)
    -> );
Query OK, 0 rows affected, 1 warning (1.79 sec)

mysql> desc address_book;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| first_name   | varchar(100) | NO   |     | NULL    |       |
| last_name    | varchar(100) | NO   |     | NULL    |       |
| address      | varchar(200) | NO   |     | NULL    |       |
| city         | varchar(50)  | NO   |     | NULL    |       |
| state        | varchar(50)  | NO   |     | NULL    |       |
| zip          | int          | NO   |     | NULL    |       |
| phone_number | int          | NO   | PRI | NULL    |       |
| email_id     | varchar(20)  | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
8 rows in set (0.15 sec)

/* UC-3 */
mysql> INSERT INTO address_book
    -> (first_name, last_name, address, city, state, zip, phone_number, email_id) VALUES
    -> ('Aayush', 'Mehra', 'Nehru Marg', 'Lucknow','Uttar Pradesh', 10034, 9998889992, 'aayush123@gmail.com'),
    -> ('Jyoti', 'Paliwal', 'Sukhadiya Nagar', 'Udaipur','Rajasthan', 10456, 9988776650, 'jyoti123@gmail.com');
Query OK, 2 rows affected (0.25 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM address_book;
+------------+-----------+-----------------+---------+---------------+-------+--------------+---------------------+
| first_name | last_name | address         | city    | state         | zip   | phone_number | email_id            |
+------------+-----------+-----------------+---------+---------------+-------+--------------+---------------------+
| Jyoti      | Paliwal   | Sukhadiya Nagar | Udaipur | Rajasthan     | 10456 | 9988776650   | jyoti123@gmail.com  |
| Aayush     | Mehra     | Nehru Marg      | Lucknow | Uttar Pradesh | 10034 | 9998889992   | aayush123@gmail.com |
+------------+-----------+-----------------+---------+---------------+-------+--------------+---------------------+
2 rows in set (0.10 sec)

/* UC-4 */
mysql> UPDATE address_book
    -> SET address = 'Shastri Circle' WHERE first_name = 'Jyoti';
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM address_book;
+------------+-----------+----------------+---------+---------------+-------+--------------+---------------------+
| first_name | last_name | address        | city    | state         | zip   | phone_number | email_id            |
+------------+-----------+----------------+---------+---------------+-------+--------------+---------------------+
| Jyoti      | Paliwal   | Shastri Circle | Udaipur | Rajasthan     | 10456 | 9988776650   | jyoti123@gmail.com  |
| Aayush     | Mehra     | Nehru Marg     | Lucknow | Uttar Pradesh | 10034 | 9998889992   | aayush123@gmail.com |
+------------+-----------+----------------+---------+---------------+-------+--------------+---------------------+
2 rows in set (0.04 sec)

/* UC-5 */
mysql> DELETE FROM address_book WHERE first_name = 'Jyoti';
Query OK, 1 row affected (0.11 sec)

mysql> SELECT * FROM address_book;
+------------+-----------+------------+---------+---------------+-------+--------------+---------------------+
| first_name | last_name | address    | city    | state         | zip   | phone_number | email_id            |
+------------+-----------+------------+---------+---------------+-------+--------------+---------------------+
| Aayush     | Mehra     | Nehru Marg | Lucknow | Uttar Pradesh | 10034 | 9998889992   | aayush123@gmail.com |
+------------+-----------+------------+---------+---------------+-------+--------------+---------------------+
1 row in set (0.13 sec)

/* UC-6 */
mysql> INSERT INTO address_book
    -> (first_name, last_name, address, city, state, zip, phone_number, email_id) VALUES
    -> ('Meera', 'Rajguru', 'Gandhi Marg', 'Banglore','Karnataka', 10012, 8979695945, 'meera123@gmail.com'),
    -> ('Rohit', 'Sharma', 'Malviya Nagar', 'Kanpur','Uttar Pradesh', 16789, 7372747578, 'rohit123@gmail.com'),
    -> ('Mohit', 'Gupta', 'Karol Bagh', 'Varanasi','Uttar Pradesh', 10980, 9998884566, 'mohit123@gmail.com'),
    -> ('Riya', 'Ojha', 'Pratap Nagar', 'Jodhpur','Rajasthan', 10209, 7668889992, 'riya123@gmail.com');
Query OK, 4 rows affected (0.23 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM address_book;
+------------+-----------+---------------+----------+---------------+-------+--------------+---------------------+
| first_name | last_name | address       | city     | state         | zip   | phone_number | email_id            |
+------------+-----------+---------------+----------+---------------+-------+--------------+---------------------+
| Rohit      | Sharma    | Malviya Nagar | Kanpur   | Uttar Pradesh | 16789 | 7372747578   | rohit123@gmail.com  |
| Riya       | Ojha      | Pratap Nagar  | Jodhpur  | Rajasthan     | 10209 | 7668889992   | riya123@gmail.com   |
| Meera      | Rajguru   | Gandhi Marg   | Banglore | Karnataka     | 10012 | 8979695945   | meera123@gmail.com  |
| Mohit      | Gupta     | Karol Bagh    | Varanasi | Uttar Pradesh | 10980 | 9998884566   | mohit123@gmail.com  |
| Aayush     | Mehra     | Nehru Marg    | Lucknow  | Uttar Pradesh | 10034 | 9998889992   | aayush123@gmail.com |
+------------+-----------+---------------+----------+---------------+-------+--------------+---------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM address_book
    -> WHERE state = 'Uttar Pradesh';
+------------+-----------+---------------+----------+---------------+-------+--------------+---------------------+
| first_name | last_name | address       | city     | state         | zip   | phone_number | email_id            |
+------------+-----------+---------------+----------+---------------+-------+--------------+---------------------+
| Rohit      | Sharma    | Malviya Nagar | Kanpur   | Uttar Pradesh | 16789 | 7372747578   | rohit123@gmail.com  |
| Mohit      | Gupta     | Karol Bagh    | Varanasi | Uttar Pradesh | 10980 | 9998884566   | mohit123@gmail.com  |
| Aayush     | Mehra     | Nehru Marg    | Lucknow  | Uttar Pradesh | 10034 | 9998889992   | aayush123@gmail.com |
+------------+-----------+---------------+----------+---------------+-------+--------------+---------------------+
3 rows in set (0.00 sec)

/* UC-7 */
mysql> SELECT state, count(state) FROM address_book WHERE state = 'Uttar Pradesh' GROUP BY state;
+---------------+--------------+
| state         | count(state) |
+---------------+--------------+
| Uttar Pradesh |            3 |
+---------------+--------------+
1 row in set (0.00 sec)

mysql> SELECT state, count(state) FROM address_book WHERE state = 'Rajasthan' GROUP BY state;
+-----------+--------------+
| state     | count(state) |
+-----------+--------------+
| Rajasthan |            1 |
+-----------+--------------+
1 row in set (0.00 sec)

mysql> SELECT state, count(state) FROM address_book WHERE state = 'Karnataka' GROUP BY state;
+-----------+--------------+
| state     | count(state) |
+-----------+--------------+
| Karnataka |            1 |
+-----------+--------------+
1 row in set (0.00 sec)