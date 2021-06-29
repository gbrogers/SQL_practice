

    -- Crealte a file called orders.sql and write out the code for the following problems:

    -- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY, 
  person_id INT, 
  product_name VARCHAR(20), 
  product_price FLOAT, 
  quantity INT
  );
    -- Add 5 orders to the orders table.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (12345, 'potato', 3.5, 4);
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (12346, 'tomato', 7.2 , 2);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (12348, 'apple', 1.0 , 7);
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (12347, 'pickle', 1.2 , 1);
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (12349, 'chips', 2 , 3);
    --         Make orders for at least two different people.

    --         person_id should be different for different people.

    -- Select all the records from the orders table.
SELECT * FROM orders;
    -- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;
    -- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;
    -- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 12345;