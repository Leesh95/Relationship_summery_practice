-- Insert data into Shop database tables

-- Insert customers data
INSERT INTO customers
(
    customer_id
  , first_name
  , last_name
  , email
)
VALUES
(1, 'Lee', 'Shmuel', 'LeeS@mail.com')
, (2, 'Michael', 'Kibler', 'MichaelK@mail.com')
, (3, 'Dan', 'Cohen', 'DanC@mail.com')
, (4, 'Maya', 'Levi', 'MayaL@mail.com')


-- Insert products data
INSERT INTO products
(
    product_id
  , product_name
  , price
)
VALUES
(1, 'T-Shirt', '30')
, (2, 'Pants', '40')
, (3, 'Shoes', '50')
, (4, 'hat', '15')

-- Insert orders data
INSERT INTO orders
(
    order_id
  , customer_id
)
VALUES
(1, 4)
, (2, 2)
, (3, 1)
, (4, 3)


-- Insert orderproducts data
INSERT INTO orderproducts
(
    order_id
  , product_id
  , quantity
)
VALUES
(1, 2, 4)
, (1, 1, 3)
, (1, 4, 1)
, (2, 1, 3)
, (2, 3, 1)
, (3, 1, 2)
, (3, 2, 1)
, (3, 3, 1)
, (3, 4, 1)
