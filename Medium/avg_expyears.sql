select p.project_id,round(avg(e.experience_years),2) as average_years
from Project p
join Employee e
on p.employee_id=e.employee_id
group by p.project_id
OUTPUT:
Input
Project =
| project_id | employee_id |
| ---------- | ----------- |
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |
Employee =
| employee_id | name   | experience_years |
| ----------- | ------ | ---------------- |
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |
Output
| project_id | average_years |
| ---------- | ------------- |
| 1          | 2             |
| 2          | 2.5           |
Expected
| project_id | average_years |
| ---------- | ------------- |
| 1          | 2             |
| 2          | 2.5           |
