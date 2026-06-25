SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS single_numbers;
OUTPUT:
  Input
MyNumbers =
| num |
| --- |
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
View more
Output
| num |
| --- |
| 6   |
Expected
| num |
| --- |
| 6   |
