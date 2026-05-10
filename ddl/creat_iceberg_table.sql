CREATE OR REPLACE EXTERNAL TABLE `stellar-operand-384014.atomic_orders.orders`
WITH CONNECTION `us.my-biglake-connection`
OPTIONS (
  format = 'ICEBERG',
  uris = ['gs://write_gcs/iceberg-warehouse/atomic_orders/orders/metadata/v5.metadata.json']
);
