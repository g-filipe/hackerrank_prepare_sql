## Top Competitors

### Difficulty: Medium

<br>Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
<br><br>
<hr>

**Input Format**
<br>The following tables contain contest data:<br><br>

- Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.
<br><br>

| Column    | Type    |
|-----------|---------|
| hacker_id | Integer |
| name      | String  |
<br>


<ul><li>Difficulty: The difficult_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level.</li></ul> 
<br>

| Column           | Type    |
|------------------|---------|
| difficulty_level | Integer |
| score            | Integer |
<br>

- Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the level of difficulty of the challenge.
<br><br>

| Column           | Type    |
|------------------|---------|
| challenge_id     | Integer |
| hacker_id        | Integer |
| difficulty_level | Integer |
<br>

- Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge that the submission belongs to, and score is the score of the submission.
  <br><br>

| Column        | Type    |
|---------------|---------|
| submission_id | Integer |
| hacker_id     | Integer |
| challenge_id  | Integer |
| score         | Integer |
<br>

<hr>

**Sample Input**

**Hackers Table:**<br><br>

| hacker_id | name     |
|-----------|----------|
| 5580      | Rose     |
| 8439      | Angela   |
| 27205     | Frank    |
| 52243     | Patrick  |
| 52348     | Lisa     |
| 57645     | Kimberly |
| 77726     | Bonnie   |
| 83082     | Michael  |
| 86870     | Todd     |
| 90411     | Joe      |
<br>

**Difficulty Table:**<br><br>

| difficulty_level | score |
|------------------|-------|
| 1                | 20    |
| 2                | 30    |
| 3                | 40    |
| 4                | 60    |
| 5                | 80    |
| 6                | 100   |
| 7                | 120   |
<br>

**Challenges Table:**<br><br>

| challenge_id | hacker_id | difficulty_level |
|--------------|-----------|------------------|
| 4810         | 77726     | 4                |
| 21089        | 27205     | 1                |
| 36566        | 5580      | 7                |
| 66730        | 52243     | 6                |
| 71055        | 52243     | 2                |
<br>

**Submissions Table:**<br><br>

| submission_id | hacker_id | challenge_id | score |
|---------------|-----------|--------------|-------|
| 6528          | 77726     | 36566        | 30    |
| 65300         | 77726     | 21089        | 10    |
| 40326         | 52243     | 36566        | 77    |
| 8941          | 27205     | 4810         | 4     |
| 83554         | 77726     | 66730        | 30    |
| 43353         | 52243     | 66730        | 0     |
| 55385         | 52348     | 71055        | 20    |
| 39784         | 27205     | 71055        | 23    |
| 94613         | 86870     | 71055        | 30    |
| 45788         | 52348     | 36566        | 0     |
| 93058         | 86870     | 36566        | 30    |
| 7344          | 8439      | 66730        | 92    |
| 2721          | 8439      | 4810         | 36    |
| 523           | 5580      | 71055        | 4     |
| 49105         | 52348     | 66730        | 0     |
| 55877         | 57645     | 66730        | 80    |
| 38355         | 27205     | 66730        | 35    |
| 3924          | 8439      | 36566        | 80    |
| 97397         | 90411     | 66730        | 100   |
| 84162         | 83082     | 4810         | 40    |
| 97311         | 90411     | 71055        | 30    |
<br>

**Sample Output**

>90411 Joe

<br>**Explanation**

- Hacker 86870 got a score of 30 for challenge 71055 with a difficulty level of 2, so 86870 earned a full score for this challenge.

- Hacker 90411 got a score of 30 for challenge 71055 with a difficulty level of 2, so 90411 earned a full score for this challenge.

- Hacker 90411 got a score of 100 for challenge 66730 with a difficulty level of 6, so 90411 earned a full score for this challenge.

- Only hacker 90411 managed to earn a full score for more than one challenge, so we print the their hacker_id and name as **2** space-separated values.