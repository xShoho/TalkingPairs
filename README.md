# Talking Pairs problem in Rubys
## Problem Explained
We imagine data in array as people standing in line. Value of each element is the height of the person. We have to count how many people can talk to each other. They can only talk to each other if there is noone standing beetwen two peaple with height higher than minimum of the two people.
### Example
We have an array: [2, 1, 4, 5] <br>
From that, we can tell, that 2 can talk to 1, because there is noone between them.<br>
2 can talk to 4, because min(2, 4) is 2 and 2 is greater than 1 standing between 2 and 4. <br>
2 can't talk to 5, because min(2, 5) is 2 and 2 is lower than 4 standing between 2 and 5. And so on...