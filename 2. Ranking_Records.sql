🚀 SQL Scenario-Based Interview Questions With Answers

🏆 Problem: Ranking Rows

📌 Scenario

You’re given an EMPLOYEES table containing employee salaries.

Write a SQL query to rank employees by salary (highest to lowest) such that:

✅ Employees with the same salary receive the same rank.

✅ The next rank skips the appropriate number of positions after a tie (Standard Competition Ranking).

Example:
1, 2, 2, 4 ✅
Not: 1, 2, 2, 3 ❌

⸻

💡 Solution

SELECT
 emp_id,
 salary,
 RANK() OVER (ORDER BY salary DESC) AS rnk
FROM I_Emp;

⸻

🔍 Explanation

* RANK() assigns a ranking based on the specified ORDER BY clause.
* ORDER BY salary DESC ranks employees from the highest salary to the lowest.
* Employees with identical salaries receive the same rank.
* The next rank is skipped according to the number of tied rows.

Example:

Salary Rank
120000 1
110000 2
95000 3
95000 3
90000 5

Notice how Rank 4 is skipped because two employees share Rank 3.

⸻

💬 Interview Tip:
Know the difference between RANK(), DENSE_RANK(), and ROW_NUMBER()—this is one of the most frequently asked SQL interview topics.
