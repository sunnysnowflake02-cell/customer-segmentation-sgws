## Governance context

The data product will implement row-level segment security to ensure that sensitive information is adequately protected while allowing access to relevant data for operational efficiency. Each table will have specific segments defined to restrict access based on user roles, particularly for sensitive data such as customer information and order details. This approach balances the need for data visibility with the necessity of safeguarding personal information, particularly in tables containing PII such as delivery addresses and customer IDs.

## Sample user groups & YAML

# Sample User Groups for Supply Chain Data

The following user groups are defined to control access to the Supply Chain data product. These groups will be created in DataOS and will include user IDs mapped to specific roles. Each group will have defined segments based on the business needs.

```yaml
segments:
  - name: pittsburgh_warehouse_access
    sql: "{TABLE}.district = 'Pittsburgh'"
    meta:
      secure:
        user_groups:
          includes:
            - pittsburgh_warehouse_users

user_groups:
  pittsburgh_warehouse_users:
    api_scopes:
      - read
    includes:
      - users:id:pittsburgh_user_1
      - users:id:pittsburgh_user_2
```

## Suggested mode

`segment_user_groups`

## Role names (reuse in user_groups + segments)

`pittsburgh_warehouse_users`, `portland_warehouse_users`, `kansas_city_warehouse_users`
