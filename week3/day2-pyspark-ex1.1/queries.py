# SELECT

# 1. Select only emp_name and salary.
df.select("emp_name", "salary").show()

# 2. Select emp_id, emp_name, and department.
df.select("emp_id", "emp_name", "department").show()

# 3. Select city, designation, and salary.
df.select("city", "designation", "salary").show()

# 4. Select all employees from only IT department with selected columns.
df.filter(df.department == "IT") \
  .select("emp_id", "emp_name", "department") \
  .show()

# 5. Select emp_name, joining_date, and salary.
df.select("emp_name", "joining_date", "salary").show()

# 6. Select first 5 columns from dataframe.
df.select("emp_id", "emp_name", "age", "city", "designation").show()

# 7. Select employees salary column only.
df.select("salary").show()

# 8. Select emp_name and city for employees from Hyderabad.
df.filter(df.city == "Hyderabad") \
  .select("emp_name", "city") \
  .show()

# 9. Select designation and department.
df.select("designation", "department").show()

# 10. Select all columns except joining_date.
df.select(
    "emp_id",
    "emp_name",
    "age",
    "city",
    "designation",
    "salary",
    "department"
).show()


# ALIAS

from pyspark.sql.functions import col

# 11. Display emp_name as employee_name.
df.select(col("emp_name").alias("employee_name")).show()

# 12. Display salary as monthly_salary.
df.select(col("salary").alias("monthly_salary")).show()

# 13. Display department as dept.
df.select(col("department").alias("dept")).show()

# 14. Display joining_date as doj.
df.select(col("joining_date").alias("doj")).show()

# 15. Select emp_name as name and city as location.
df.select(
    col("emp_name").alias("name"),
    col("city").alias("location")
).show()

# 16. Display designation as job_role.
df.select(col("designation").alias("job_role")).show()

# 17. Display age as employee_age.
df.select(col("age").alias("employee_age")).show()

# 18. Select multiple columns using aliases.
df.select(
    col("emp_id").alias("employee_id"),
    col("emp_name").alias("employee_name"),
    col("salary").alias("monthly_salary")
).show()

# 19. Display salary as emp_salary and department as emp_dept.
df.select(
    col("salary").alias("emp_salary"),
    col("department").alias("emp_dept")
).show()

# 20. Display city as work_location.
df.select(col("city").alias("work_location")).show()


# FILTER / WHERE

# 21. Filter employees whose salary is greater than 70000.
df.filter(df.salary > 70000).show()

# 22. Filter employees from Hyderabad.
df.filter(df.city == "Hyderabad").show()

# 23. Filter employees whose age is less than 25.
df.filter(df.age < 25).show()

# 24. Filter employees from IT department.
df.filter(df.department == "IT").show()

# 25. Filter employees whose designation is Developer.
df.filter(df.designation == "Developer").show()

# 26. Filter employees whose salary is between 50000 and 80000.
df.filter(df.salary.between(50000, 80000)).show()

# 27. Filter employees whose city is Bangalore.
df.filter(df.city == "Bangalore").show()

# 28. Filter employees who joined after 2022-01-01.
df.filter(df.joining_date > "2022-01-01").show()

# 29. Filter employees whose age is greater than 30.
df.filter(df.age > 30).show()

# 30. Filter employees whose salary is less than 50000.
df.filter(df.salary < 50000).show()

# 31. Filter employees from Chennai and salary greater than 60000.
df.filter(
    (df.city == "Chennai") &
    (df.salary > 60000)
).show()

# 32. Filter employees from Mumbai or Pune.
df.filter(
    (df.city == "Mumbai") |
    (df.city == "Pune")
).show()

# 33. Filter employees whose name starts with 'S'.
df.filter(df.emp_name.startswith("S")).show()

# 34. Filter employees whose name ends with 'a'.
df.filter(df.emp_name.endswith("a")).show()

# 35. Filter employees whose department is HR.
df.filter(df.department == "HR").show()

# 36. Filter employees whose designation contains 'Engineer'.
df.filter(df.designation.contains("Engineer")).show()

# 37. Filter employees whose city is not Hyderabad.
df.filter(df.city != "Hyderabad").show()

# 38. Filter employees aged between 25 and 30.
df.filter(df.age.between(25, 30)).show()

# 39. Filter employees with salary greater than 90000.
df.filter(df.salary > 90000).show()

# 40. Filter employees from Support department.
df.filter(df.department == "Support").show()


# WITHCOLUMNRENAMED

# 41. Rename emp_name to employee_name.
df.withColumnRenamed("emp_name", "employee_name").show()

# 42. Rename department to dept.
df.withColumnRenamed("department", "dept").show()

# 43. Rename joining_date to doj.
df.withColumnRenamed("joining_date", "doj").show()

# 44. Rename salary to monthly_salary.
df.withColumnRenamed("salary", "monthly_salary").show()

# 45. Rename designation to job_role.
df.withColumnRenamed("designation", "job_role").show()

# 46. Rename city to work_location.
df.withColumnRenamed("city", "work_location").show()

# 47. Rename age to employee_age.
df.withColumnRenamed("age", "employee_age").show()

# 48. Rename multiple columns one by one.
df.withColumnRenamed("emp_name", "employee_name") \
  .withColumnRenamed("salary", "monthly_salary") \
  .withColumnRenamed("department", "dept") \
  .show()

# 49. Rename emp_id to employee_id.
df.withColumnRenamed("emp_id", "employee_id").show()

# 50. Rename department to business_unit.
df.withColumnRenamed("department", "business_unit").show()

