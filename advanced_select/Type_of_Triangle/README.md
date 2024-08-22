## Type of Triangle

#### Difficulty: Easy

</br>Write a query identifying the type of each record in the **TRIANGLES** table using its three side lengths. Output one of the following statements for each record in the table:

- **Equilateral:** It's a triangle with `3` sides of equal length.
- **Isosceles:** It's a triangle with `2` sides of equal length.
- **Scalene:** It's a triangle with `3` sides of differing lengths.
  Not A Triangle: The given values of A, B, and C don't form a triangle.

<br>**Input Format**

The **TRIANGLES** table is described as follows:
<br><br>

| Column | Type    |
| ------ | ------- |
| A      | Integer |
| B      | Integer |
| C      | Integer |

<br>Each row in the table denotes the lengths of each of a triangle's three sides.

<br>**Sample Input**

| A   | B   | C   |
| --- | --- | --- |
| 20  | 20  | 23  |
| 20  | 20  | 20  |
| 20  | 21  | 22  |
| 13  | 14  | 30  |

<br>**Sample Output**<br>
`Isosceles`<br>
`Equilateral`<br>
`Scalene`<br>
`Not A Triangle`<br>

<br>**Explanation**

- Values in the tuple (20, 20, 23) form an Isosceles triangle, because **A &#8801; B**.
- Values in the tuple (20, 20, 20) form an Equilateral triangle, because **A &#8801; B &#8801; C**.
- Values in the tuple (20, 21, 22) form a Scalene triangle, because **A &#8800; B &#8800; C**.
- Values in the tuple (13, 14, 30) cannot form a triangle because the combined value of sides **A** and **B** is not larger than that of side **C**.
