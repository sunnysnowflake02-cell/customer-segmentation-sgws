## Governance context

This data product implements row-level segment security based on customer segmentation details. The governance structure includes segments that filter data based on customer types and acquisition channels, ensuring that sensitive customer information is only accessible to authorized user groups. Each segment is defined in DataOS with specific SQL predicates and user group inclusions, allowing for targeted access control while maintaining data integrity.

## Sample user groups & YAML

### Sample User Groups
The following user groups are defined for access control in the Customer Segmentation data product:

```yaml
segments:
  - name: high_value_customers
    sql: "{TABLE}.customer_type = 'B2C' AND {TABLE}.churn_risk_score < 0.3"
    meta:
      secure:
        user_groups:
          includes:
            - high_value_marketers

  - name: at_risk_customers
    sql: "{TABLE}.churn_risk_score >= 0.5"
    meta:
      secure:
        user_groups:
          includes:
            - retention_teams
```

### User Groups Excerpt
```yaml
user_groups:
  high_value_marketers:
    api_scopes:
      - read
    includes:
      - users:id:marketing_user_1
      - users:id:marketing_user_2
  retention_teams:
    api_scopes:
      - read
    includes:
      - users:id:retention_user_1
      - users:id:retention_user_2
```

## Suggested mode

`segment_user_groups`

## Role names (reuse in user_groups + segments)

`high_value_marketers`, `retention_teams`
