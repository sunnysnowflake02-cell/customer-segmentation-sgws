## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All edges connect approved tables with appropriate join columns. Relationships are consistent with cardinality expectations, and all joins are within the same schema.

## SQL / Lens YAML
All SQL references in table YAML use load_sql(logical_name) correctly. Dimension types are valid and conform to the expected types: boolean, number, string, time.

## Consumer data product YAML
The consumer data product YAML references the lens name 'supply-chain-test' consistently and lists approved source FQNs sensibly.
