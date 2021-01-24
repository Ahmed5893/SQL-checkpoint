CREATE TABLE CUSTOMER (
	Customer_Id VARCHAR2(20) PRIMARY KEY,
	Customer_Name VARCHAR2(20) NOT NULL,
	Customer_Tel NUMBER
);

CREATE TABLE Product(
    Product_id VARCHAR2(20) CONSTRAINT key PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT notnull NOT NULL,
    Customer_tel NUMBER check(Customer_tel>0)
);
CREATE TABLE Orders(
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER ,
    Total_amount NUMBER,
    CONSTRAINT foreignCustomer FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
    CONSTRAINT foreigProduct FOREIGN KEY (Product_id) REFERENCES Product (Product_id),

);

//Add a column Category 
ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADD OrderDate DEFAULT SYSDATE;
