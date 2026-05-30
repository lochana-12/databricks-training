# WITHCOLUMN

from pyspark.sql.functions import *
from pyspark.sql.types import *

# 51. Create bonus column as 10% of salary.
df.withColumn("bonus", col("salary") * 0.10).show()

# 52. Create annual_salary column.
df.withColumn("annual_salary", col("salary") * 12).show()

# 53. Create tax column as 5% of salary.
df.withColumn("tax", col("salary") * 0.05).show()

# 54. Create updated_salary by adding 5000.
df.withColumn("updated_salary", col("salary") + 5000).show()

# 55. Create salary_category column.
df.withColumn(
    "salary_category",
    when(col("salary") >= 90000, "High")
    .when(col("salary") >= 50000, "Medium")
    .otherwise("Low")
).show()

# 56. Create age_group column.
df.withColumn(
    "age_group",
    when(col("age") < 30, "Young")
    .otherwise("Adult")
).show()

# 57. Create location column by combining city and department.
df.withColumn(
    "location",
    concat_ws(" - ", col("city"), col("department"))
).show()

# 58. Create increment_salary column with 15% hike.
df.withColumn(
    "increment_salary",
    col("salary") * 1.15
).show()

# 59. Create experience_status column based on joining year.
df.withColumn(
    "experience_status",
    when(year(to_date(col("joining_date"))) < 2022, "Experienced")
    .otherwise("New")
).show()

# 60. Create name_length column using employee name.
df.withColumn(
    "name_length",
    length(col("emp_name"))
).show()

# 61. Create is_high_salary column using condition.
df.withColumn(
    "is_high_salary",
    when(col("salary") > 80000, True)
    .otherwise(False)
).show()

# 62. Create joining_year column from joining_date.
df.withColumn(
    "joining_year",
    year(to_date(col("joining_date")))
).show()

# 63. Create salary_after_tax column.
df.withColumn(
    "salary_after_tax",
    col("salary") - (col("salary") * 0.05)
).show()

# 64. Create department_code column.
df.withColumn(
    "department_code",
    substring(col("department"), 1, 3)
).show()

# 65. Create double_salary column.
df.withColumn(
    "double_salary",
    col("salary") * 2
).show()


# TYPECASTING

# 66. Convert salary to string datatype.
df.withColumn(
    "salary_string",
    col("salary").cast("string")
).show()

# 67. Convert age to double datatype.
df.withColumn(
    "age_double",
    col("age").cast("double")
).show()

# 68. Convert joining_date to date datatype.
df.withColumn(
    "joining_date_new",
    col("joining_date").cast("date")
).show()

# 69. Convert emp_id to string datatype.
df.withColumn(
    "emp_id_string",
    col("emp_id").cast("string")
).show()

# 70. Convert salary to integer datatype.
df.withColumn(
    "salary_integer",
    col("salary").cast("int")
).show()

# 71. Convert age to string datatype.
df.withColumn(
    "age_string",
    col("age").cast("string")
).show()

# 72. Convert joining_date to timestamp datatype.
df.withColumn(
    "joining_timestamp",
    col("joining_date").cast("timestamp")
).show()

# 73. Convert salary to float datatype.
df.withColumn(
    "salary_float",
    col("salary").cast("float")
).show()

# 74. Convert emp_id to long datatype.
df.withColumn(
    "emp_id_long",
    col("emp_id").cast("long")
).show()

# 75. Convert multiple columns into different datatypes.
df.withColumn("salary_string", col("salary").cast("string")) \
  .withColumn("age_double", col("age").cast("double")) \
  .withColumn("joining_date_new", col("joining_date").cast("date")) \
  .show()


# SORT / ORDERBY

# 76. Sort employees by salary ascending.
df.orderBy("salary").show()

# 77. Sort employees by salary descending.
df.orderBy(col("salary").desc()).show()

# 78. Sort employees by age descending.
df.orderBy(col("age").desc()).show()

# 79. Sort employees by emp_name ascending.
df.orderBy("emp_name").show()

# 80. Sort employees by city and salary descending.
df.orderBy("city", col("salary").desc()).show()

# 81. Sort employees by joining_date.
df.orderBy("joining_date").show()

# 82. Sort employees by department.
df.orderBy("department").show()

# 83. Sort employees by designation descending.
df.orderBy(col("designation").desc()).show()

# 84. Sort employees first by city then age.
df.orderBy("city", "age").show()

# 85. Sort employees by salary and limit top 10.
df.orderBy(col("salary").desc()).limit(10).show()

# 86. Sort employees by emp_id descending.
df.orderBy(col("emp_id").desc()).show()

# 87. Sort employees from IT department by salary descending.
df.filter(col("department") == "IT") \
  .orderBy(col("salary").desc()) \
  .show()

# 88. Sort employees by joining_date descending.
df.orderBy(col("joining_date").desc()).show()

# 89. Sort employees alphabetically by emp_name.
df.orderBy("emp_name").show()

# 90. Sort employees by multiple columns.
df.orderBy(
    col("department").asc(),
    col("salary").desc()
).show()


# LIMIT

# 91. Display first 5 records.
df.limit(5).show()

# 92. Display top 10 employees.
df.limit(10).show()

# 93. Display first 3 employees from IT department.
df.filter(col("department") == "IT") \
  .limit(3) \
  .show()

# 94. Display top 5 highest salary employees.
df.orderBy(col("salary").desc()) \
  .limit(5) \
  .show()

# 95. Display lowest 5 salary employees.
df.orderBy(col("salary").asc()) \
  .limit(5) \
  .show()

# 96. Display first 7 rows after sorting by age.
df.orderBy("age") \
  .limit(7) \
  .show()

# 97. Display first 2 employees from Hyderabad.
df.filter(col("city") == "Hyderabad") \
  .limit(2) \
  .show()

# 98. Display first 15 records from dataframe.
df.limit(15).show()

# 99. Display top 5 youngest employees.
df.orderBy("age") \
  .limit(5) \
  .show()

# 100. Display first 8 employees after filtering salary > 60000.
df.filter(col("salary") > 60000) \
  .limit(8) \
  .show()
