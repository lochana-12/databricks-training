# Dataset Issues & Data Quality Problems

This generated dataset intentionally contains multiple real-world data quality problems for ETL and Data Engineering practice.

---

## NULL Values

NULL values are present in:

- amount
- city

These simulate incomplete transactional records.

---

## Duplicate Records

Duplicate order IDs are intentionally generated.

### Example
- Same `order_id` appearing multiple times

### Used For
- Deduplication practice
- Delta Lake MERGE scenarios
- Data validation testing

---

## Negative Values

Negative amounts are included to simulate:

- Invalid transactions
- Refund issues
- Corrupted sales data

---

## Updated Records

The same `order_id` may appear with:

- Different dates
- Modified values

This simulates CDC (Change Data Capture) scenarios.

---

## Real-Time Usage

This dataset can be used for:

- Bronze → Silver transformations
- Data cleaning pipelines
- Delta Lake MERGE operations
- ETL testing
- Data quality validation
