-- Zara E-Commerce Database Management System
-- DBMS - Payment Management System



CREATE TABLE Payment (
    Payment_ID NUMBER PRIMARY KEY,
    Order_ID NUMBER,
    Payment_Mode VARCHAR2(20) NOT NULL,
    Payment_Date DATE NOT NULL,
    Payment_Amount NUMBER(10,2) NOT NULL,
    Payment_Status VARCHAR2(20) NOT NULL,
    CONSTRAINT fk_payment_order
        FOREIGN KEY (Order_ID)
        REFERENCES SN_Orders(Order_ID)
);



INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Mode, Payment_Date, Payment_Status, Payment_Amount)
VALUES
(501, 101, 'UPI', SYSDATE, 'Successful', 1898.00);

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Mode, Payment_Date, Payment_Status, Payment_Amount)
VALUES
(502, 102, 'Credit Card', SYSDATE, 'Successful', 1299.00);

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Mode, Payment_Date, Payment_Status, Payment_Amount)
VALUES
(503, 103, 'Debit Card', SYSDATE, 'Failed', 1499.00);

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Mode, Payment_Date, Payment_Status, Payment_Amount)
VALUES
(504, 104, 'UPI', SYSDATE, 'Successful', 2499.00);

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_Mode, Payment_Date, Payment_Status, Payment_Amount)
VALUES
(505, 105, 'Cash on Delivery', SYSDATE, 'Pending', 999.00);



SELECT Payment_ID,
       Order_ID,
       Payment_Mode,
       Payment_Amount,
       Payment_Status
FROM Payment
WHERE Payment_Status = 'Successful';



SELECT Payment_ID,
       Order_ID,
       Payment_Mode,
       Payment_Amount,
       Payment_Status
FROM Payment
WHERE Payment_Status = 'Pending';



UPDATE Payment
SET Payment_Status = 'Successful'
WHERE Payment_ID = 503;

UPDATE Payment
SET Payment_Status = 'Failed'
WHERE Payment_ID = 505;


SELECT Payment_Mode,
       COUNT(*) AS Number_Of_Payments
FROM Payment
GROUP BY Payment_Mode;


SELECT Payment_Mode,
       SUM(Payment_Amount) AS Total_Amount
FROM Payment
GROUP BY Payment_Mode;


SELECT
    P.Payment_ID,
    P.Order_ID,
    P.Payment_Mode,
    P.Payment_Date,
    P.Payment_Amount,
    P.Payment_Status,
    OD.Product_ID,
    OD.Quantity,
    OD.Unit_Price,
    OD.Subtotal
FROM Payment P
LEFT JOIN ORDER_DETAILS OD
ON P.Order_ID = OD.Order_ID
ORDER BY P.Payment_ID;


COMMIT;
