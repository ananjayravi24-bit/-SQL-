-- The Case of ITC for Investing the data base and creating the tables - 

CREATE TABLE distributors (
  distributor_id INTEGER PRIMARY KEY,
  name           TEXT NOT NULL, 
  city           TEXT,
  region         TEXT,
  phone          Text
  );
  
  -- Dropping the table -----
  DROP TABLE distributors;
  
  -- Create another table name Products--
  
  -- Create a table name products with following information;Product_name,Product_id,Brand, Category, Price and Stock
 CREATE TABLE products (
 Product_id  should be integer PRIMARY KEY,
 Product_name TEXT NOT NULL unique,
brand TEXT,
Category TEXT NOT NULL,
   price REAL CHECK (price > 0),
   stock INTEGER DEFAULT 0 
   );
   
   -- Create table name sales containing variables sales_id, product_id, distributor_id, sale_date, quantity, amount-----
  CREATE TABLE sales (
 sales_id              INTEGER PRIMARY KEY,     
 product_id            INTEGER,
 distributor_id        INTEGER,
 sale_date             TEXT,
 quantity              Integer CHECK (quantity>0),
 amount                REAL,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
   );

  
  