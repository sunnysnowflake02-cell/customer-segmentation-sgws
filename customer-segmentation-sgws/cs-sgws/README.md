# Generated lens: customer-seg-rfm-dp

## Description
customer-seg-rfm-dp

This data product combines customer profiles, sales hierarchies, and transactional history to enable advanced customer segmentation and RFM analysis.

How approved tables connect:
- icebase.customer_segmentation.customer_behavioral_aggregates relates to icebase.customer_segmentation.customer_dimension using customer_id and customer_id (relationship: many to one). Join on customer_id to link behavioral metrics with customer profiles.
- icebase.customer_segmentation.transaction_fact relates to icebase.customer_segmentation.customer_dimension using customer_id and customer_id (relationship: many to one). Join on customer_id to associate transactions with customer profiles.
- icebase.customer_segmentation.cs_ml_segment_assignment_resource relates to icebase.customer_segmentation.customer_dimension using customer_id and customer_id (relationship: many to one). Join on customer_id to connect segment assignments with customer profiles.
- icebase.customer_segmentation.cs_ml_segment_assignment_resource relates to icebase.customer_segmentation.cs_ml_segment_definition_resource using segment_id and segment_id (relationship: many to one). Join on segment_id to link segment assignments to their definitions.
- icebase.customer_segmentation.customer_dimension relates to icebase.customer_segmentation.interaction_fact using customer_id and customer_id (relationship: many to one).

## Source references

- `icebase.customer_segmentation.cs_ml_segment_assignment_resource`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.cs_ml_segment_assignment_resource
- `icebase.customer_segmentation.cs_ml_segment_definition_resource`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.cs_ml_segment_definition_resource
- `icebase.customer_segmentation.customer_behavioral_aggregates`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.customer_behavioral_aggregates
- `icebase.customer_segmentation.customer_dimension`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.customer_dimension
- `icebase.customer_segmentation.interaction_fact`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.interaction_fact
- `icebase.customer_segmentation.transaction_fact`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.customer_segmentation.transaction_fact

## Layout
- `deployment.yaml` — edit `repo.url` and `lensBaseDir` before applying.
- `model/tables/*.yaml` — Lens table definitions.
- `join_graph.yaml` (bundle root, **not** under `model/`) — full edge list for stewards; Lens deploy syncs `model/` only.
- Each `model/tables/*.yaml` may include **`joins`** only on the **canonical (left) side** of each edge (star direction — no reverse duplicate).
- `model/sqls/*.sql` — physical SQL; casts normalize types per dimensions (join keys + timestamps).
- `model/user_groups.yaml` — masking group for `meta.secure` dimensions (plus optional segment groups).
- `GOVERNANCE_RECOMMENDATIONS.md` — when present, steward governance notes from the Review tab (roles, segments).
- `data-products/*-cadp.yaml` — consumer-aligned data product (v1beta, inputs + ports).
- `data-products/*-cadp-scanner.yaml` — scanner workflow (filter includes CADP name).
- `DATAOS_VALIDATION.md` — LLM cross-check of joins, SQL/YAML, and DP manifest (if OpenAI configured).
- `config-data-quality/wf-*-dq-bundle.yaml` — consolidated Soda DQ workflow (`stackSpec.inputs` per dataset); optional `governance-framework.yaml`.
