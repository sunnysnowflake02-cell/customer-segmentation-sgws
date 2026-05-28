-- logical_table: cs_ml_segment_definition_resource
-- physical_fqn: icebase.customer_segmentation.cs_ml_segment_definition_resource
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "pk" AS pk,
  "segment_id" AS segment_id,
  "name" AS name,
  "description" AS description,
  "type" AS type,
  "rules" AS rules,
  "model_params" AS model_params,
  CAST("created_at" AS TIMESTAMP(6)) AS created_at,
  "created_by" AS created_by,
  "_nilus_load_id" AS _nilus_load_id,
  "_nilus_id" AS _nilus_id
FROM icebase.customer_segmentation.cs_ml_segment_definition_resource
