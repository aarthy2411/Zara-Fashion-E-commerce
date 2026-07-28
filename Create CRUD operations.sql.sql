CREATE TABLE Customer20 (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone_Number VARCHAR(15),
    Address VARCHAR(200)
);
Table created.
SQL> INSERT INTO Customer21
  2  VALUES (101, 'Aarthy', 'aarthy@gmail.com', '9876543210', 'Chennai');

1 row created.
INSERT INTO Customer21
  2  VALUES (102, 'Rahul', 'rahul@gmail.com', '9876543211', 'Coimbatore');

1 row created.
SQL> 
SQL> INSERT INTO Customer21
  2  VALUES (103, 'Priya', 'priya@gmail.com', '9876543212', 'Madurai');

1 row created.
SQL> 
SQL> INSERT INTO Customer21
  2  VALUES (104, 'Karthik', 'karthik@gmail.com', '9876543213', 'Salem');

1 row created.
SQL> 
SQL> INSERT INTO Customer21
  2  VALUES (105, 'Divya', 'divya@gmail.com', '9876543214', 'Trichy');

1 row created.
SQL> UPDATE Customer21
  2  SET Email = 'aarthi2411@gmail.com',
  3      Address = 'Bangalore'
  4  WHERE Customer_ID = 101;

1 row updated.
SQL> SELECT * FROM Customer21
  2  WHERE Customer_ID = 101;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
   101 Aarthy
aarthi2411@gmail.com
9876543210
Bangalore
SQL> SELECT * FROM Customer21;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        101 Aarthy
aarthi2411@gmail.com
9876543210
Bangalore


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        102 Rahul
rahul@gmail.com
9876543211
Coimbatore


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        103 Priya
priya@gmail.com
9876543212
Madurai


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        104 Karthik
karthik@gmail.com
9876543213
Salem


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        105 Divya
divya@gmail.com
9876543214
Trichy
