 Zara E-Commerce Management System
 Order and Order_Details Analysis





CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE NOT NULL,
    Total_Amount NUMBER(10,2) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(CUSTOMERID)
);




CREATE TABLE Order_Details (
    Order_Detail_ID INT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT NOT NULL,
    Unit_Price NUMBER(10,2) NOT NULL,
    Subtotal NUMBER(10,2) NOT NULL,
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);



INSERT INTO Orders VALUES
(1001, 108, TO_DATE('20-09-2026','DD-MM-YYYY'), 2500.00);

INSERT INTO Orders VALUES
(1002, 224, TO_DATE('21-09-2026','DD-MM-YYYY'), 1800.00);

INSERT INTO Orders VALUES
(1003, 567, TO_DATE('22-09-2026','DD-MM-YYYY'), 3200.00);

INSERT INTO Orders VALUES
(1004, 108, TO_DATE('23-09-2026','DD-MM-YYYY'), 1500.00);

INSERT INTO Orders VALUES
(1005, 224, TO_DATE('24-09-2026','DD-MM-YYYY'), 4200.00);




INSERT INTO Order_Details VALUES
(1, 1001, 101, 1, 2500.00, 2500.00);

INSERT INTO Order_Details VALUES
(2, 1002, 102, 2, 900.00, 1800.00);

INSERT INTO Order_Details VALUES
(3, 1003, 103, 2, 1600.00, 3200.00);

INSERT INTO Order_Details VALUES
(4, 1004, 104, 1, 1500.00, 1500.00);

INSERT INTO Order_Details VALUES
(5, 1005, 105, 2, 2100.00, 4200.00);





UPDATE Orders
SET Total_Amount = 2700.00
WHERE Order_ID = 1001;


UPDATE Orders
SET Order_Date = TO_DATE('25-09-2026','DD-MM-YYYY')
WHERE Order_ID = 1001;




UPDATE Order_Details
SET Quantity = 3,
    Subtotal = 2700.00
WHERE Order_Detail_ID = 2;




SELECT
    O.Order_ID,
    O.Customer_ID,
    O.Order_Date,
    O.Total_Amount,
    OD.Product_ID,
    OD.Quantity,
    OD.Unit_Price,
    OD.Subtotal
FROM Orders O
JOIN Order_Details OD
ON O.Order_ID = OD.Order_ID
ORDER BY O.Order_Date;


-- 8. COMMIT CHANGES

COMMIT;
