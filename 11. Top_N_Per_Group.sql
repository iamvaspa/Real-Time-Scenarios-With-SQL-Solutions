SQL Scenario-Based Interview Questions With Answers
🧩 Problem – Top N Per Group
📌 Scenario

You are given an employees table containing employees across multiple departments.

Write a SQL query to find the top 2 highest-paid employees in each department.

👉 If two or more employees in the same department have the same salary, they should all be included, even if that means more than 2 rows are returned for that department.

💡 Solution
SELECT *
FROM (
    SELECT *,
           DENSE_RANK() OVER (
               PARTITION BY department_id
               ORDER BY salary DESC
           ) AS rnk
    FROM I_Emp
) t
WHERE rnk <= 2;
🔍 Explanation

✅ DENSE_RANK() assigns a rank to employees within each department based on salary in descending order.

✅ PARTITION BY department_id restarts the ranking for every department.

✅ Employees with the same salary receive the same rank, ensuring ties are included.

✅ Filtering with WHERE rnk <= 2 returns the top two salary ranks from each department.

🎯 Interview Tip
Use DENSE_RANK() when ties should be included.
Use ROW_NUMBER() when you need exactly N rows, regardless of ties.
Use RANK() when ties should exist but skipped rankings are acceptable.
