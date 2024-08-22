## Weather Observation Station 14

#### Difficulty: Easy

</br>Query the greatest value of the Northern Latitudes (LAT_N) from the **STATION**  that is less than `137.2345`. Truncate your answer to `4` decimal places.

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
