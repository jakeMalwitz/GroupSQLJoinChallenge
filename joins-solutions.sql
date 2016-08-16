-- 1.Get all customers and their addresses.
SELECT * FROM customers
JOIN addresses ON customers.id = addresses.customer_id;

-- 2.Get all orders and their line items.
SELECT * FROM orders
JOIN line_items ON orders.id = line_items.order_id;

-- 3.Which warehouses have cheetos?
SELECT warehouse_id FROM warehouse_product
WHERE product_id = 5;

-- 4.Which warehouses have diet pepsi?
SELECT warehouse_id FROM warehouse_product
WHERE product_id = 6;

-- 5.Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT * FROM orders
JOIN addresses ON addresses.customer_id = orders.id;

-- 6.How many customers do we have?
SELECT COUNT(customers.id) FROM customers;

-- 7.How many products do we carry?
SELECT COUNT(products.id) FROM products;

-- 8.What is the total available on-hand quantity of diet pepsi?
SELECT sum(on_hand) FROM warehouse_product
WHERE product_id = 6;
