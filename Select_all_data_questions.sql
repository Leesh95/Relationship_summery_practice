-- 3. Select all customers with orders that have products
SELECT customers.customer_id
     , customers.first_name
     , customers.last_name
     , orders.order_id
     , orderproducts.quantity
FROM customers
    INNER JOIN orders
        ON customers.customer_id = orders.customer_id
    INNER JOIN orderproducts
        ON orderproducts.order_ID = orders.order_id
WHERE orderproducts.quantity > 0
ORDER BY customers.customer_id;



-- 4. Select all customers orders summery values (customers.Name, orderID, Value) fields
SELECT customers.customer_id
     , customers.first_name
     , customers.last_name
     , orders.order_id
     , 
FROM orderproducts
    INNER JOIN orders
        ON orders.order_id = orderproducts.order_id
    INNER JOIN customers
        ON customers.customer_id = orders.customer_id
ORDER BY customers.customer_id;



-- 5. Select all customers orders that do not have products
SELECT customers.customer_id
     , customers.first_name
     , customers.last_name
     , orders.order_id
     , orderproducts.quantity
FROM orders
    LEFT JOIN orderproducts
        ON orders.order_id = orderproducts.order_id
    INNER JOIN customers
        ON customers.customer_id = orders.customer_id
WHERE orderproducts.quantity IS NULL
ORDER BY customers.customer_id;



-- 6. Select the product that been ordered the most
SELECT products.product_name
     , orderproducts.product_id
     , SUM(orderproducts.quantity) AS quantity
FROM products
    INNER JOIN orderproducts
        ON orderproducts.product_id = products.product_id
GROUP BY orderproducts.product_id
    , products.product_name
ORDER BY SUM(orderproducts.quantity) DESC
LIMIT 1