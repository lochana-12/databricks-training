# SQL Practice-Week2 Day4
# REGEX Foundation

## Objective
This file contains practice notes and examples for REGEXP functions used in SQL.

The document covers:
- REGEXP_SUBSTR
- REGEXP_REPLACE
- REGEXP_EXTRACT
- REGEXP patterns
- Extracting numbers
- Extracting alphabets
- Email parsing
- Phone number parsing
- String manipulation using regex

## Topics Covered

### 1. Extract Numbers
Examples:
- Extract first number
- Extract all numbers
- Extract two-digit numbers

### 2. Extract Alphabets
Examples:
- Extract starting alphabets
- Extract ending alphabets

### 3. Email Processing
Examples:
- Username extraction
- Domain extraction
- Extension extraction

### 4. Phone Number Processing
Examples:
- Country code extraction

### 5. Mixed Text Processing
Examples:
- Removing alphabets
- Removing numbers
- Extracting middle text

## Functions Used

### REGEXP_SUBSTR()
Used to extract matching text from a string.

### REGEXP_REPLACE()
Used to replace matching patterns.

### REGEXP_EXTRACT()
Used to extract regex groups.

## Sample Patterns

| Pattern | Meaning |
|----------|----------|
| [0-9]+ | Numbers |
| [A-Za-z]+ | Alphabets |
| ^[A-Za-z]+ | Starting alphabets |
| [0-9]{2} | Two digit numbers |
| @(.+) | Domain extraction |

## Author
Databricks SQL Practice
