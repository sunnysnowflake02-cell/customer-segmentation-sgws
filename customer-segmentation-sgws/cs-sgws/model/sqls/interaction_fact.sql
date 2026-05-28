-- logical_table: interaction_fact
-- physical_fqn: icebase.customer_segmentation.interaction_fact
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "interaction_id" AS interaction_id,
  "customer_id" AS customer_id,
  "interaction_type" AS interaction_type,
  TRY_CAST(TRIM("interaction_ts") AS TIMESTAMP(6)) AS interaction_ts,
  "channel" AS channel,
  CAST("value" AS DOUBLE) AS value,
  "session_id" AS session_id,
  TRY_CAST(TRIM("created_at") AS TIMESTAMP(6)) AS created_at,
  CAST("ingestion_date" AS TIMESTAMP(6)) AS ingestion_date
FROM icebase.customer_segmentation.interaction_fact
