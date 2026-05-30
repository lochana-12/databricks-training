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

### SELECT
Used to retrieve specific columns from DataFrame.

Examples:
- Selecting employee names and salaries
- Selecting department-wise columns
- Selecting records from IT department

### ALIAS
Used to rename columns temporarily using `alias()`.

Examples:
- emp_name AS employee_name
- salary AS monthly_salary
- department AS dept

### FILTER / WHERE
Used to filter records based on conditions.

Examples:
- Salary greater than 70000
- Employees from Hyderabad
- Employees from HR department
- Employees whose names start with 'S'


---

## Learning Outcome

Gain hands-on experience in performing PySpark DataFrame operations such as selecting columns, filtering records, renaming columns, creating new columns, datatype conversion, sorting, and limiting records using real-world employee datasets.
