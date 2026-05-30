# PySpark Practice – Week 3 Day 2

## Files
- `data_creation.py` → Creates Employee DataFrame with sample employee records  
- `queries.py` → Contains PySpark queries for DataFrame operations  
- `output.txt` → Contains query outputs  
- `README.md` → Project documentation  

---

## How to Run

1. Open Databricks Community Edition  
2. Create a new PySpark notebook  
3. Copy code from `data_creation.py`  
4. Run the notebook to create the DataFrame  
5. Execute queries from `queries.py` one by one  
6. View outputs in notebook or `output.txt`  

---

## Topics Covered

### WITHCOLUMN
Used to create new calculated or derived columns.

Examples:
- Bonus calculation
- Annual salary
- Salary category
- Joining year extraction
- Salary after tax

### TYPECASTING
Used to convert columns into different datatypes.

Examples:
- Convert salary to integer
- Convert joining_date to date
- Convert emp_id to string

### SORT / ORDERBY
Used to sort records in ascending or descending order.

Examples:
- Sort by salary ascending/descending
- Sort by age
- Sort by joining date
- Multiple column sorting

### LIMIT
Used to restrict the number of rows displayed.

Examples:
- First 5 records
- Top 10 employees
- Top 5 highest salary employees

---

## Learning Outcome

Gain hands-on experience in performing PySpark DataFrame operations such as selecting columns, filtering records, renaming columns, creating new columns, datatype conversion, sorting, and limiting records using real-world employee datasets.
