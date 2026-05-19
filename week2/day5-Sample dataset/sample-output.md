# Sample Generated Output

| order_id | customer_id | product | category | city | date | amount | quantity |
|----------|-------------|----------|----------|------|------|--------|----------|
| 1045 | C12 | Laptop | Electronics | Hyderabad | 2024-01-03 | 52000 | 1 |
| 1188 | C87 | Mobile | Electronics | NULL | 2024-01-07 | -3200 | 2 |
| 1456 | C203 | Watch | Accessories | Chennai | 2024-01-11 | 4500 | 3 |
| 1672 | C54 | Tablet | Electronics | Bangalore | 2024-01-14 | NULL | 1 |
| 1890 | C301 | Headphones | Accessories | Mumbai | 2024-01-18 | 2200 | 4 |
| 1045 | C12 | Laptop | Electronics | Hyderabad | 2024-01-20 | 52000 | 1 |

---

## Output Observations

### NULL Values
- Some records contain NULL values in:
  - city
  - amount

### Negative Values
- Negative amounts simulate invalid or corrupted transactions.

### Duplicate Records
- Duplicate `order_id` values are intentionally generated for deduplication practice.

### Updated Records
- The same `order_id` may appear with modified dates or values.

### Randomized Data
- Data changes during every execution because records are generated randomly.
