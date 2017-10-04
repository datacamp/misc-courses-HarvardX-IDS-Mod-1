---
title       : Sorting
description : This chapter deals with getting more of an insight into the data we have, by helping us sort through it.
---
## sort

```yaml
type: NormalExercise
key: 8d2a5d166c
lang: r
xp: 100
skills: 1
```
When looking at a dataset, we may want to sort the data in an order that makes more sense for analysis. Let's learn to do this using the  `murders` as an example. 

`@instructions`
- Use the `$` operator to access the population size data and store it the object `pop`. 
- Then use the `sort` function to redefine `pop` so that it is sorted. 
Finally use the `[` operator to report the smallest population size.

`@hint`
Make sure to use the `sort` function to redefine `pop` so that it is sorted.

`@pre_exercise_code`
```{r}
library(dslabs)
data(murders)
```

`@sample_code`
```{r}
# Access a total murders and store it in an object 
total <- murders$state 

# Sort the object  and redefine the object 
total <- sort(total) 

# Report the smallers total of murders 
total[1]

# Access `population` from the dataset and store it in `pop`

# Sort the object and save it in the same object 

# Report the smallest population size 



```

`@solution`
```{r}
# Access a total murders and store it in an object 
total <- murders$state 

# Sort the object  and redefine the object 
total <- sort(total) 

# Report the smallers total of murders 
total[1]

# Access population from the dataset and store it in pop
pop <- murders$population

# Sort the object and save it in the same object
pop <- sort(pop)

# Report the smallest population size 
pop[1]
```

`@sct`
```{r}
test_object("pop", undefined_msg = "Make sure you define the object pop.", incorrect_msg = "Check whether you have redefined it or not.")
test_output_contains("pop[1]", incorrect_msg = "Use the square brackets [] to report the smallest population value.")
test_error()
success_msg("Good job! Now you know how to sort data in an ascending order.")
```
