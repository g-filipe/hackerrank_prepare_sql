## Occupations

### Difficulty: Medium

<a herf="https://en.wikipedia.org/wiki/Pivot_table">Pivot</a> the Occupation column in **OCCUPATIONS** so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

**Note:** Print **NULL** when there are no more names corresponding to an occupation.

<br>**input format:**

The **OCCUPATIONS** table is described as follows:<br><br>

| Column     | Type    |
|------------|---------|
| Name       | String  |
| Occupation | String  |


<br>Occupation will only contain one of the following values: **Doctor**, **Professor**, **Singer** or **Actor**.

<br>**Sample Input**<br><br>

| Name      | Occupation |
| --------- | ---------- |
| Samantha  | Doctor     |
| Julia     | Actor      |
| Maria     | Actor      |
| Meera     | Singer     |
| Ashely    | Professor  |
| Ketty     | Professor  |
| Christeen | Professor  |
| Jane      | Actor      |
| Jenny     | Doctor     |
| Priya     | Singer     |

<br>**Sample Output**

`Jenny    Ashley     Meera  Jane`<br>
`Samantha Christeen  Priya  Julia`<br>
`NULL     Ketty      NULL   Maria`

<br>**Explanation**

- The first column is an alphabetically ordered list of Doctor names.
- The second column is an alphabetically ordered list of Professor names.
- The third column is an alphabetically ordered list of Singer names.
- The fourth column is an alphabetically ordered list of Actor names.
- The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with **NULL** values.