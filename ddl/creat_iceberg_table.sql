CREATE TABLE IF NOT EXISTS `stellar-operand-384014.atomic_orders.orders`
(
    row_id INTEGER PRIMARY KEY,
    order_id STRING NOT NULL,
    order_date DATE,
    ship_date DATE,
    ship_mode STRING,
    customer_id STRING,
    customer_name STRING,
    segment STRING,
    country STRING,
    city STRING,
    state STRING,
    postal_code STRING,
    region STRING,
    product_id STRING,
    category STRING,
    sub_category STRING,
    product_name STRING,
    sales DECIMAL(10, 2)
)
PARTITION BY order_date
OPTIONS(
  table_format = 'ICEBERG'
);

--fooo
