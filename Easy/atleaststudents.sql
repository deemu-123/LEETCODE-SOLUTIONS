select class from Courses
group by class
having count(student)>=5;   
OUTPUT:
Input
Courses =
| student | class    |
| ------- | -------- |
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
View more
Output
| class |
| ----- |
| Math  |
Expected
| class |
| ----- |
| Math  |
