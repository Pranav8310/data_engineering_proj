CREATE TABLE IF NOT EXISTS `stellar-operand-384014.atomic_orders.orders`
(
    row_id INTEGER PRIMARY KEY,
    order_id VARCHAR(50) NOT NULL,
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(255),
    segment VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name VARCHAR(255),
    sales DECIMAL(10, 2)
)
PARTITION BY order_date
OPTIONS(
  table_format = 'ICEBERG'
);

--fooo
