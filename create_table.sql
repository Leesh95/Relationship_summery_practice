CREATE TABLE customers
(
    customer_id int unique PRIMARY KEY
  , first_name varchar(100)
  , last_name varchar(100)
  , email varchar(200)
        unique
);

CREATE TABLE products
(
    product_id int PRIMARY KEY
  , product_name varchar(200)
        unique
  , price DECIMAL(18, 2)
);

CREATE TABLE orders
(
    order_id int PRIMARY KEY
  , customer_id int not null
  , created_on timestamp default current_timestamp
  , FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

CREATE TABLE orderProducts
(
    order_id int
  , product_id int
  , quantity int
        default 1
  ,  PRIMARY KEY (order_id , product_id)
  ,  FOREIGN KEY (order_id) REFERENCES orders (order_id)
  ,  FOREIGN KEY (product_id) REFERENCES products (product_id)
);