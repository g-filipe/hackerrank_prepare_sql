## Weather Observation Station 18

#### Difficulty: Medium

Consider ***P<sub>1</sub>(a,b)*** and ***P<sub>2</sub>(c,d)*** to be two points on a 2D plane.

- `a` happens to equal the minimum value in Northern Latitude (LAT_N in STATION).

- `b` happens to equal the minimum value in Western Longitude (LONG_W in STATION).

- `c` happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
- `d` happens to equal the maximum value in Western Longitude (LONG_W in STATION).

Query the <a href="https://xlinux.nist.gov/dads/HTML/manhattanDistance.html">Manhattan</a> Distance between points ***P<sub>1</sub>*** and ***P<sub>2</sub>*** and round it to a scale of 4 decimal places.

<br>**Input Format**<br>
<br>The **STATION** table is described as follows:
<br><br>

**Table: STATION**

| Field  | Type         |
| ------ | ------------ |
| ID     | NUMBER       |
| CITY   | VARCHAR2(21) |
| STATE  | VARCHAR2(2)  |
| LAT_N  | NUMBER       |
| LONG_W | NUMBER       |

where LAT_N is the northern latitude and LONG_W is the western longitude.
