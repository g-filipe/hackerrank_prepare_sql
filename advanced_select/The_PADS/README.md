## The PADS

#### Difficulty: Medium

<br>Generate the following two result sets:

1. Query an alphabetically ordered list of all names in **OCCUPATIONS**, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: `AnActorName(A)`, `ADoctorName(D)`, `AProfessorName(P)`, and `ASingerName(S)`.<br><br>

2. Query the number of ocurrences of each occupation in **OCCUPATIONS**. Sort the occurrences in ascending order, and output them in the following format: <br>
   `There are a total of [occupation_count] [occupation]s.`

<br>where `[occupation_count]` is the number of occurrences of an occupation in **OCCUPATIONS** and `[occupation]` is the lowercase occupation name. If more than one Occupation has the same `[occupation_count]`, they should be ordered alphabetically.

**Note:** There will be at least two entries in the table for each type of occupation.

**input format:**

The **OCCUPATIONS** table is described as follows:

| Column     | Type   |
| ---------- | ------ |
| Name       | String |
| Occupation | String |

<br>Occupation will only contain one of the following values: **Doctor**, **Professor**, **Singer** or **Actor**.

<br>**Sample Input**

An **OCCUPATIONS** table that contains the following records:

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

`Ashely(P)`<br>
`Christeen(P)`<br>
`Jane(A)`<br>
`Jenny(D)`<br>
`Julia(A)`<br>
`Ketty(P)`<br>
`Maria(A)`<br>
`Meera(S)`<br>
`Priya(S)`<br>
`Samantha(D)`<br>
`There are a total of 2 doctors.`<br>
`There are a total of 2 singers.`<br>
`There are a total of 3 actors.`<br>
`There are a total of 3 professors.`<br>

<br>**Explanation**<br>
The results of the first query are formatted to the problem description's specifications. The results of the second query are ascendingly ordered first by number of names corresponding to each profession **(2 &le; 2 &le; 3 &le; 3 )**, and then alphabetically by profession **(doctor &le; singer, and actor &le; professor)**.
