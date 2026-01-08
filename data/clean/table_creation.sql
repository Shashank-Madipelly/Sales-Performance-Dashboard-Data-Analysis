CREATE TABLE sales (
    row_id INTEGER,
    order_id VARCHAR,
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR,
    customer_id VARCHAR,
    customer_name VARCHAR,
    segment VARCHAR,
    country VARCHAR,
    city VARCHAR,
    state VARCHAR,
    postal_code VARCHAR,
    region VARCHAR,
    product_id VARCHAR,
    category VARCHAR,
    sub_category VARCHAR,
    product_name VARCHAR,
    sales NUMERIC,
    quantity INTEGER,
    discount NUMERIC,
    profit NUMERIC
);



TRUNCATE TABLE sales;

select count(*) from sales;


SELECT row_id, order_id, sales
FROM sales
LIMIT 5;
