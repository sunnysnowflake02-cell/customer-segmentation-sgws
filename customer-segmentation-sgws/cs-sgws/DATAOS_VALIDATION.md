## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All join edges connect approved tables and use valid join columns. Relationships are consistently many-to-one, and all joins are within the same schema.

## SQL / Lens YAML
All SQL references use load_sql(logical_name) format. The SQL files are expected to be Trino-flavored. Dimension types in the JSON summary are valid and correctly normalized to the allowed types: string, number, time, boolean.

## Consumer data product YAML
The consumer data product YAML references the lens name 'customer-seg-rfm-dp' consistently and lists approved source FQNs sensibly.
