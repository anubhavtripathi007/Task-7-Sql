## Key Concepts Practiced
- CREATE VIEW to save complex SELECT statements
- Querying data through views
- Updating data through views (if supported)
- Dropping views
- Using views for joins and aggregations
- Securing data by limiting exposed columns

## Example Queries
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
