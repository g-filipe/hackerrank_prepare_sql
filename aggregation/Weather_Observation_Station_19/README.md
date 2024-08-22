## Weather Observation Station 19

#### Difficulty: Medium

Consider ***P<sub>1</sub>(a,c)*** and ***P<sub>2</sub>(b,d)*** to be two points on a 2D plane where **(a,b)** are the respective minimum and maximum values of Northern Latitude (LAT_N) and **(c,d)** are the respective minimum and maximum values of Western Longitude (LONG_W) in **STATION**.

Query the <a href="https://en.wikipedia.org/wiki/Euclidean_distance">Euclidean Distance</a> Distance between points ***P<sub>1</sub>*** and ***P<sub>2</sub>*** and format your answer to display 4 decimal digits.

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