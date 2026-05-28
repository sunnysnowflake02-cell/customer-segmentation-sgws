-- logical_table: customer_dimension
-- physical_fqn: icebase.customer_segmentation.customer_dimension
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "customer_id" AS customer_id,
  CAST("external_id" AS VARCHAR) AS external_id,
  TRY_CAST(TRIM("acquisition_date") AS TIMESTAMP(6)) AS acquisition_date,
  "acquisition_channel" AS acquisition_channel,
  "geography" AS geography,
  "demographics_json" AS demographics_json,
  "customer_type" AS customer_type,
  TRY_CAST(TRIM("join_date") AS TIMESTAMP(6)) AS join_date,
  "status" AS status,
  CAST("tenure_days" AS DOUBLE) AS tenure_days,
  "lifecycle_stage" AS lifecycle_stage,
  "preferred_channel" AS preferred_channel,
  TRY_CAST(TRIM("created_at") AS TIMESTAMP(6)) AS created_at,
  TRY_CAST(TRIM("updated_at") AS TIMESTAMP(6)) AS updated_at,
  CAST("ingestion_date" AS TIMESTAMP(6)) AS ingestion_date
FROM icebase.customer_segmentation.customer_dimension
