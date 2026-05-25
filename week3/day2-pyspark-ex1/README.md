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

### WITHCOLUMNRENAMED
Used to permanently rename columns in DataFrame.
Examples:
- Rename emp_name to employee_name
- Rename department to dept
- Rename salary to monthly_salary

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
