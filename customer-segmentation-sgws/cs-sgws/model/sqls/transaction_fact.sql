-- logical_table: transaction_fact
-- physical_fqn: icebase.customer_segmentation.transaction_fact
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "transaction_id" AS transaction_id,
  "customer_id" AS customer_id,
  TRY_CAST(TRIM("transaction_date") AS TIMESTAMP(6)) AS transaction_date,
  "product_id" AS product_id,
  CAST("quantity" AS DOUBLE) AS quantity,
  CAST("amount" AS DOUBLE) AS amount,
  CAST("discount" AS DOUBLE) AS discount,
  "payment_type" AS payment_type,
  "channel" AS channel,
  "is_return" AS is_return,
  TRY_CAST(TRIM("return_date") AS TIMESTAMP(6)) AS return_date,
  TRY_CAST(TRIM("created_at") AS TIMESTAMP(6)) AS created_at,
  CAST("ingestion_date" AS TIMESTAMP(6)) AS ingestion_date
FROM icebase.customer_segmentation.transaction_fact
