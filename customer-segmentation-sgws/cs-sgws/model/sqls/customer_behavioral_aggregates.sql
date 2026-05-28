-- logical_table: customer_behavioral_aggregates
-- physical_fqn: icebase.customer_segmentation.customer_behavioral_aggregates
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "customer_id" AS customer_id,
  TRY_CAST(TRIM("as_of_date") AS TIMESTAMP(6)) AS as_of_date,
  CAST("recency_days_tx" AS DOUBLE) AS recency_days_tx,
  CAST("recency_days_int" AS DOUBLE) AS recency_days_int,
  CAST("frequency_30_d" AS DOUBLE) AS frequency_30_d,
  CAST("frequency_90_d" AS DOUBLE) AS frequency_90_d,
  CAST("monetary_30_d" AS DOUBLE) AS monetary_30_d,
  CAST("monetary_90_d" AS DOUBLE) AS monetary_90_d,
  CAST("avg_order_value" AS DOUBLE) AS avg_order_value,
  CAST("total_spend_lifetime" AS DOUBLE) AS total_spend_lifetime,
  CAST("num_page_visits_30_d" AS DOUBLE) AS num_page_visits_30_d,
  CAST("session_duration_avg" AS DOUBLE) AS session_duration_avg,
  CAST("tenure_days" AS DOUBLE) AS tenure_days,
  CAST("churn_risk_score" AS DOUBLE) AS churn_risk_score,
  CAST("clv_predicted" AS DOUBLE) AS clv_predicted,
  CAST("omni_ratio" AS DOUBLE) AS omni_ratio,
  CAST("top_category_share" AS DOUBLE) AS top_category_share,
  CAST("category_diversity" AS DOUBLE) AS category_diversity,
  CAST("brand_loyalty" AS DOUBLE) AS brand_loyalty,
  CAST("offer_response_rate" AS DOUBLE) AS offer_response_rate,
  CAST("complaint_ratio" AS DOUBLE) AS complaint_ratio,
  TRY_CAST(TRIM("updated_at") AS TIMESTAMP(6)) AS updated_at,
  CAST("ingestion_date" AS TIMESTAMP(6)) AS ingestion_date
FROM icebase.customer_segmentation.customer_behavioral_aggregates
