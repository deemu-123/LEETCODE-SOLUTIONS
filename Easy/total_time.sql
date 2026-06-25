select emp_id,event_day as day,
SUM(out_time-in_time) as total_time
from Employees

group by emp_id, event_day;

OUTPUT:
Input
Employees =
| emp_id | event_day  | in_time | out_time |
| ------ | ---------- | ------- | -------- |
| 1      | 2020-11-28 | 4       | 32       |
| 1      | 2020-11-28 | 55      | 200      |
| 1      | 2020-12-3  | 1       | 42       |
| 2      | 2020-11-28 | 3       | 33       |
| 2      | 2020-12-9  | 47      | 74       |
Output
| emp_id | day        | total_time |
| ------ | ---------- | ---------- |
| 1      | 2020-11-28 | 173        |
| 1      | 2020-12-03 | 41         |
| 2      | 2020-11-28 | 30         |
| 2      | 2020-12-09 | 27         |
Expected
| day        | emp_id | total_time |
| ---------- | ------ | ---------- |
| 2020-11-28 | 1      | 173        |
| 2020-12-03 | 1      | 41         |
| 2020-11-28 | 2      | 30         |
| 2020-12-09 | 2      | 27         |
