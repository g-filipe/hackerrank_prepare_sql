## Top Earners

#### Difficulty: Easy

</br>We define an employee's total earnings to be their monthly `salary x months` worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as `2` space-separated integers.

<br>**Input Format**

The **Employee** table containing employee data for a company is described as follows:
<br><br>

| Column      | Type    |
| ----------- | ------- |
| employee_id | Integer |
| name        | String  |
| months      | Integer |
| salary      | Integer |

<br>where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

<br>**Sample Input**

| employee_id | name     | months | salary |
| ----------- | -------- | ------ | ------ |
| 12228       | Rose     | 15     | 1968   |
| 33645       | Angela   | 1      | 3443   |
| 45692       | Frank    | 17     | 1608   |
| 56118       | Patrick  | 7      | 1345   |
| 59725       | Lisa     | 11     | 2330   |
| 74197       | Kimberly | 16     | 4372   |
| 78454       | Bonnie   | 8      | 1771   |
| 83565       | Michael  | 6      | 2017   |
| 98607       | Todd     | 5      | 3396   |
| 99989       | Joe      | 9      | 3573   |

<br>**Sample Output**<br>
> 69952 1

<br>**Explanation**

The table and earnings data is depicted in the following diagram:

| employee_id | name     | months | salary | earnings |
| ----------- | -------- | ------ | ------ |----------|
| 12228       | Rose     | 15     | 1968   | 29520    |
| 33645       | Angela   | 1      | 3443   | 3443     |
| 45692       | Frank    | 17     | 1608   | 27336    |
| 56118       | Patrick  | 7      | 1345   | 9415     |
| 59725       | Lisa     | 11     | 2330   | 25630    |
| 74197       | Kimberly | 16     | 4372   | 69952    |
| 78454       | Bonnie   | 8      | 1771   | 14168    |
| 83565       | Michael  | 6      | 2017   | 12102    |
| 98607       | Todd     | 5      | 3396   | 16980    |
| 99989       | Joe      | 9      | 3573   | 32157    |

<br>The maximum earnings value is `69652`. The only employee with **earnings =** `69652` is **Kimberly**, so we print the maximum earnings value **(69652)** and a count of the number of employees who have earned **$69652** (which is **1**) as two space-separated values.