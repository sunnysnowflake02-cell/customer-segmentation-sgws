-- logical_table: cs_ml_segment_assignment_resource
-- physical_fqn: icebase.customer_segmentation.cs_ml_segment_assignment_resource
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "pk" AS pk,
  "assignment_id" AS assignment_id,
  "customer_id" AS customer_id,
  "segment_id" AS segment_id,
  "model_version" AS model_version,
  TRY_CAST(TRIM("assigned_date") AS TIMESTAMP(6)) AS assigned_date,
  CAST("segment_score" AS DOUBLE) AS segment_score,
  CAST("created_at" AS TIMESTAMP(6)) AS created_at,
  "_nilus_load_id" AS _nilus_load_id,
  "_nilus_id" AS _nilus_id
FROM icebase.customer_segmentation.cs_ml_segment_assignment_resource
