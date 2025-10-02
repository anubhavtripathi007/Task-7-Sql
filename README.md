# Task 7 - SQL Developer Internship

## Objective
Learn to create and use **SQL views** for abstraction, reusability, and security.

## Key Concepts Practiced
- CREATE VIEW to save complex SELECT statements
- Querying data through views
- Updating data through views (if supported)
- Dropping views
- Using views for joins and aggregations
- Securing data by limiting exposed columns

## Files Included
- **queries.sql** → Contains table creation, sample data, and view examples.
- **screenshots/** (optional) → Output screenshots from DB Browser / MySQL Workbench.

## Tools Used
- DB Browser for SQLite  
- MySQL Workbench  

## Example Queries
```sql
-- Create a view of high earning employees
CREATE VIEW HighEarners AS
SELECT emp_name, department, salary
FROM Employees
WHERE salary > 50000;

-- Query the view
SELECT * FROM HighEarners;

-- Drop a view
DROP VIEW IF EXISTS HighEarners;
```

## Outcome
By completing this task, I learned how to:
- Create reusable SQL views
- Use views for abstraction and data security
- Join tables and expose limited columns through views
- Maintain and drop views when no longer needed
