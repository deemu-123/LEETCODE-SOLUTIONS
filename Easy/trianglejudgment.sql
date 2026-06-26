SELECT 
    x,
    y,
    z,
    IF(x + y > z AND x + z > y AND y + z > x, 'Yes', 'No') AS triangle
FROM Triangle;
OUTPUT:
nput
Triangle =
| x  | y  | z  |
| -- | -- | -- |
| 13 | 15 | 30 |
| 10 | 20 | 15 |
Output
| x  | y  | z  | triangle |
| -- | -- | -- | -------- |
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
Expected
| x  | y  | z  | triangle |
| -- | -- | -- | -------- |
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
