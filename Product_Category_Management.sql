

CREATE TABLE Category (
    Category_ID NUMBER PRIMARY KEY,
    Category_Name VARCHAR2(100) NOT NULL UNIQUE,
    Description VARCHAR2(200)
);

CREATE TABLE Product (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(100) NOT NULL,
    Brand VARCHAR2(50) NOT NULL,
    Product_Size VARCHAR2(20),
    Colour VARCHAR2(30),
    Price NUMBER(10,2) NOT NULL,
    Category_ID NUMBER,
    CONSTRAINT fk_product_category
        FOREIGN KEY (Category_ID)
        REFERENCES Category(Category_ID)
);



INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (1, 'Dresses', 'Fashionable dresses for women');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (2, 'T-Shirts', 'Casual and comfortable t-shirts');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (3, 'Jeans', 'Stylish denim jeans');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (4, 'Shoes', 'Fashion and casual footwear');

INSERT INTO Category (Category_ID, Category_Name, Description)
VALUES (5, 'Accessories', 'Fashion accessories');



INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (101, 'Floral Dress', 'Zara', 'M', 'Black', 2499.00, 1);

INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (102, 'Casual T-Shirt', 'Zara', 'L', 'White', 999.00, 2);

INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (103, 'Slim Fit Jeans', 'Zara', 'M', 'Blue', 1999.00, 3);

INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (104, 'Running Shoes', 'Zara', '8', 'White', 2999.00, 4);

INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (105, 'Leather Belt', 'Zara', 'M', 'Brown', 1299.00, 5);

INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (106, 'Summer Dress', 'Zara', 'S', 'Pink', 2799.00, 1);

INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (107, 'Straight Fit Jeans', 'Zara', 'L', 'Blue', 2199.00, 3);

INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (108, 'Basic T-Shirt', 'Zara', 'M', 'Black', 899.00, 2);

INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (109, 'Wide Leg Jeans', 'Zara', 'S', 'Grey', 2399.00, 3);

INSERT INTO Product
    (Product_ID, Product_Name, Brand, Product_Size, Colour, Price, Category_ID)
VALUES
    (110, 'Hand Bag', 'Zara', 'One Size', 'Brown', 1899.00, 5);


SELECT * FROM Category;


SELECT * FROM Product;


UPDATE Product
SET Price = 2699.00
WHERE Product_ID = 101;

SELECT *
FROM Product
WHERE Product_ID = 101;


UPDATE Product
SET Product_Size = 'L',
    Colour = 'Black'
WHERE Product_ID = 103;

SELECT *
FROM Product
WHERE Product_ID = 103;


DELETE FROM Product
WHERE Product_ID = 110;


DELETE FROM Product
WHERE Product_ID = 104;


SELECT
    C.Category_Name,
    P.Product_Name,
    P.Brand,
    P.Price,
    P.Product_Size,
    P.Colour
FROM Category C
JOIN Product P
    ON C.Category_ID = P.Category_ID
ORDER BY C.Category_Name;


SELECT
    P.Product_ID,
    P.Product_Name,
    P.Brand,
    P.Price,
    P.Product_Size,
    P.Colour
FROM Product P
JOIN Category C
    ON P.Category_ID = C.Category_ID
WHERE C.Category_Name = 'Dresses';


SELECT
    C.Category_Name,
    COUNT(P.Product_ID) AS Product_Count
FROM Category C
LEFT JOIN Product P
    ON C.Category_ID = P.Category_ID
GROUP BY C.Category_Name
ORDER BY C.Category_Name;

COMMIT;


