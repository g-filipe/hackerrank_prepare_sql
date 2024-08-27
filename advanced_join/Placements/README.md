## Placements

### Difficulty: Medium

<br>You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).
<br><br>

**Students Table:**

| Column | Type   |  
|--------|--------|  
| ID     | Integer|  
| Name   | String |  
<br>

**Friends Table:**

| Column     | Type   |  
|------------|--------|  
| ID         | Integer|  
| Friend_ID  | Integer|  
<br>

**Packages Table:**

| Column | Type   |  
|--------|--------|  
| ID     | Integer|  
| Salary | Float  |  

<br>Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

<br>**Sample Input**<br>

**Students Table:**

| ID | Name     | 
|----|----------|
| 1  | Ashley   |
| 2  | Samantha |
| 3  | Julia    |
|  4 | Scarlet  |
<br>

**Friends Table:**

| ID  | Friend_ID |
|-----|-----------|
| 1   | 2         |
| 2   | 3         |
| 3   | 4         |
| 4   | 1         |
<br>

**Packages Table:**

| ID     | Salary   |
|--------|----------|
| 1      | 15.20    |
| 2      | 10.06    |
| 3      | 11.55    |
| 4      | 12.12    |

<br>**Sample Output**

>Samantha<br>
Julia<br>
Scarlet

<br>**Explanation** 

See the following table:<br><br>

 
| ID             | 1          | 2         | 3         | 4         | 
|----------------|------------|-----------|-----------|-----------| 
| Name           | Ashley     | Samantha  | Julia     | Scarlet   |  
| Salary         | 15.20      | 10.06     | 11.55     | 12.12     |  
| Friend ID      | 2          | 3         | 4         | 1         |  
| Friend Salary  | 10.06      | 11.55     | 12.12     | 15.20     |
<br>
Now,

- Samantha's best friend got offered a higher salary than her at 11.55
- Julia's best friend got offered a higher salary than her at 12.12
- Scarlet's best friend got offered a higher salary than her at 15.2
- Ashley's best friend did NOT get offered a higher salary than her<br>

The name output, when ordered by the salary offered to their friends, will be:

- Samantha
- Julia
- Scarlet