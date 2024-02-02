CREATE EXTERNAL TABLE if not exists Invoices 
(
    InvoiceNo VARCHAR(0, 10) COMMENT 'Invoice number',
    StockCode VARCHAR(0, 10) COMMENT 'Product stock code',
    Description VARCHAR(0, 255) COMMENT 'Product description',
    Quantity INT COMMENT 'Quantity of product',
    InvoiceDate DATETIME COMMENT 'Date and time of invoice', 
    UnitPrice DECIMAL(3,2) COMMENT 'Unit price of product', 
    CustomerID INT COMMENT 'Customer ID', -- no size limit needed for integer
    Country VARCHAR(50) COMMENT 'Country of customer'
)
COMMENT ‘Invoice table consists of details of the invoice no, stock code, description, quantity, invoice date, unit price, customer id, country’
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
Location ‘/input/’
;
