---
title       : Indexing
description : R provides a powerful and convenient way of indexing vectors. We're going to learn some ways of doing that!
---
## Logical Vectors

```yaml
type: NormalExercise
key: 010704f684
lang: r
xp: 100
skills: 1
```
Here we will be using logical operators to create a logical vector.

`@instructions`
- Compute the per 100,000 murder rate for each state and store it in an object called `murder_rate`. 
- Then use the logical operators to create a logical vector, name it `low`, that tells us which entries of murder_rate are lower than 1.

`@hint`
The code for calculating the murder rate is: `murders$total/murders$population*100000`. 

`@pre_exercise_code`
```{r}
library(dslabs)
data(murders)
```

`@sample_code`
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`


# Store the `murder_rate < 1` in `low` 
```

`@solution`
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1
```

`@sct`
```{r}
test_error()
test_object("murder_rate", undefined_msg = "Define the murder rate first!", incorrect_msg = "Check the formula.")
test_object("low", undefined_msg = "Define low!", incorrect_msg = "It should be murder rates less than 1.")
success_msg("Great job!")
```
