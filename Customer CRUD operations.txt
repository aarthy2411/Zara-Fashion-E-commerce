SQL> CREATE TABLE Customer30 (
  2      Customer_ID INT PRIMARY KEY,
  3      First_Name VARCHAR(50),
  4      Email VARCHAR(100),
  5      Phone_Number VARCHAR(15),
  6      Address VARCHAR(200)
  7  );

Table created.
SQL> INSERT INTO Customer30
  2  VALUES (101, 'Aarthy', 'aarthy@gmail.com', '9876543210', 'Chennai');

1 row created.

SQL> 
SQL> INSERT INTO Customer30
  2  VALUES (102, 'Rahul', 'rahul@gmail.com', '9876543211', 'Coimbatore');

1 row created.

SQL> 
SQL> INSERT INTO Customer30
  2  VALUES (103, 'Priya', 'priya@gmail.com', '9876543212', 'Madurai');

1 row created.

SQL> 
SQL> INSERT INTO Customer30
  2  VALUES (104, 'Karthik', 'karthik@gmail.com', '9876543213', 'Salem');

1 row created.

SQL> 
SQL> INSERT INTO Customer30
  2  VALUES (105, 'Divya', 'divya@gmail.com', '9876543214', 'Trichy');

1 row created.

SQL> 
SQL> INSERT INTO Customer30
  2  VALUES (106, 'Arun', 'arun@gmail.com', '9876543215', 'Vellore');

1 row created.

SQL> 
SQL> INSERT INTO Customer30
  2  VALUES (107, 'Sneha', 'sneha@gmail.com', '9876543216', 'Erode');

1 row created.

SQL> 
SQL> INSERT INTO Customer30
  2  VALUES (108, 'Vignesh', 'vignesh@gmail.com', '9876543217', 'Tirunelveli');

1 row created.

SQL> 
SQL> INSERT INTO Customer30
  2  VALUES (109, 'Nisha', 'nisha@gmail.com', '9876543218', 'Thanjavur');

1 row created.
SQL> INSERT INTO Customer30
  2  VALUES (110, 'Surya', 'surya@gmail.com', '9876543219', 'Kanchipuram');

1 row created.
SQL> UPDATE Customer30
  2  SET First_Name = 'Aradhya',
  3      Address = 'Bangalore'
  4  WHERE Customer_ID = 101;

1 row updated.

SQL> 
SQL> COMMIT;

Commit complete.

SQL> UPDATE Customer30
  2  SET Address = 'Hyderabad'
  3  WHERE Customer_ID = 105;

1 row updated.

SQL> 
SQL> COMMIT;

Commit complete.

SQL> DELETE FROM Customer30
  2  WHERE Customer_ID = 110;

1 row deleted.

SQL> 
SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM Customer30;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        101 Aradhya
aarthy@gmail.com
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
Hyderabad


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        106 Arun
arun@gmail.com
9876543215
Vellore


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        107 Sneha
sneha@gmail.com
9876543216
Erode


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        108 Vignesh
vignesh@gmail.com
9876543217
Tirunelveli


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
ADDRESS
--------------------------------------------------------------------------------
        109 Nisha
nisha@gmail.com
9876543218
Thanjavur


9 rows selected.
