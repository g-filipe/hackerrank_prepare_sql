## Binary Tree Nodes

### Difficulty: Medium

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
<br><br>

| Column | Type    |
|--------|---------|
| N      | Integer |
| P      | Integer |

<br>Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

- Root: If node is root node.
- Leaf: If node is leaf node.
- Inner: If node is neither root nor leaf node.


<br>Occupation will only contain one of the following values: **Doctor**, **Professor**, **Singer** or **Actor**.

<br>**Sample Input**<br>

| N     | P      |
|-------|--------|
| 1     | 2      |
| 3     | 2      |
| 6     | 8      |
| 9     | 8      |
| 2     | 5      |
| 8     | 5      |
| 5     | null   |


<br>**Sample Output**

`1  Leaf`<br>
`2  Inner`<br>
`3  Leaf`<br>
`5  Root`<br>
`6  Leaf`<br>
`8  Inner`<br>
`9  Leaf`<br>

<br>**Explanation** 

The Binary Tree below illustrates the sample:<br><br>
<img src="https://s3.amazonaws.com/hr-challenge-images/12888/1443773633-f9e6fd314e-simply_sql_bst.png">