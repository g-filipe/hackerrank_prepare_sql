## Symmetric Pairs

### Difficulty: Medium

<br>You are given a table, Functions, containing two columns: X and Y.
<br><br>

| Column | Type   |  
|--------|--------|  
| X      | Integer|  
| Y      | Integer |  
<br>

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.

<br>**Sample Input**<br>

| X | Y   |
|---|-----|
| 20 | 20 |
| 20 | 20 |
| 20 | 21 |
| 23 | 22 |
| 22 | 23 |
| 21 | 20 |
<br>

**Sample Output**

>20 20<br>
20 21<br>
22 23