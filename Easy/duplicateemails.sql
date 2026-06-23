SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;
OUTPUT:
Input
Person =
| id | email   |
| -- | ------- |
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
Output
| email   |
| ------- |
| a@b.com |
Expected
| Email   |
| ------- |
| a@b.com |
