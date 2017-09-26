---
title       : Indexing 
description : R provides a powerful and convenient way of indexing vectors. We're going to learn some ways of doing that!
--- type:NormalExercise lang:r xp:100 skills:1 key:6bb68b8400
## 1. Logical Vectors


*** =instructions
Compute the per 100,000 murder rate for each state and store it in an object called `murder_rate`. 
Then use the logical operators to create a logical vector, name it `low`, that tells us which entries of murder_rate are lower than 1.


*** =hint
The code for calculating the murder rate is: `murders$total/murders$population*100000`. 


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}

# Store the murder rate per 100,000 for each state, in `murder_rate`


# Store the `murder_rate < 1` in `low` 


```

*** =solution
```{r}

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1
```

*** =sct
```{r}
test_error()
test_object("murder_rate", undefined_msg = "Define the murder rate first!", incorrect_msg = "Check the formula.")
test_object("low", undefined_msg = "Define low!", incorrect_msg = "It should be murder rates less than 1.")
success_msg("Great job!")

```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:a76be07302
## 2. Which

The code `which` helps us know directly, which values are low or high etc. Let's use it in this question. 

*** =instructions
Use the results from the previous exercise and the function `which` to determine the indices of `murder_rate` associated with values lower than 1.

*** =hint


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))

```

*** =sample_code
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`


# Store the `murder_rate < 1` in `low` 


# Use `which(low)`, to get the lowest value


```

*** =solution
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Use `which(low)`, to get the lowest value
which(low)
```

*** =sct
```{r}
test_error()
test_object("murder_rate", undefined_msg = "Define the murder rate first!", incorrect_msg = "Formula is the same as the last question's.")
test_object("low", undefined_msg = "Define low!", incorrect_msg = "Murder rates lower than 1.")
test_function("which", incorrect_msg = "Use the command from the instructions.")
success_msg("Awesome!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:43f34535d7
## 3. [] operators and names


*** =instructions
Use the results from the previous exercise to report the names of the states with murder rates lower than 1, using the square brackets to retrieve the name of the states from the dataset. 
For example: `food$cost[low]`, would give us the cost of food lower than 1. 

*** =hint


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))

```

*** =sample_code
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`


# Store the `murder_rate < 1` in `low` 


# Names of states with murder rates lower than 1


```

*** =solution
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Names of states with murder rates lower than 1 
murders$state[low] 
```

*** =sct
```{r}
test_error()
test_object("murder_rate", undefined_msg = "Define the murder rate first!", incorrect_msg = "Check the formula.")
test_object("low", undefined_msg = "Define low!", incorrect_msg = "Same as last question.")
test_output_contains("murders$state[low]", incorrect_msg = "Follow code from example given!")
success_msg("Good job!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:a15f758c03
## 4. Low &


*** =instructions

Now extend the code from exercise 2 and 3 to report the states in the Northeast with murder rates lower than 1. 
For example: `low & food$courses=="Desserts"`, would give us the desserts from the courses variable in the food dataset.  


*** =hint
Use the previously defined logical vector low and the logical operator &.

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))

```

*** =sample_code
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 

# States in the Northeast with murder rates lower than 1; store in 'ind'

# Names of states in `ind` 

```

*** =solution
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# States in the Northeast with murder rates lower than 1; store in 'ind'
ind <- low & murders$region=="Northeast"

# Names of states in `ind`
murders$state[ind]
```

*** =sct
```{r}
test_error()
test_object("murder_rate", undefined_msg = "Define murder rate", incorrect_msg = "Don't change anything, just run the code.")
test_object("low", undefined_msg = "Define low!", incorrect_msg = "Same as previous exercise.")
test_object("ind", undefined_msg = "Make sure to define ind first!", incorrect_msg = "Use code ind <- low & murders$region==Northeast.")
test_output_contains("murders$state[ind]", incorrect_msg = "Use [] to retrieve names.")
success_msg("Wasn't that good! Let's move to the next one.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:f2004ac34f
## 5. Average and below average 

*** =instructions
In a previous exercise we computed the murder rate for each state and the average of these numbers. How many states are below the average?

*** =hint


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))

```

*** =sample_code
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`


# Compute average murder rate and store in `avg` using `mean` 


# How many states are < avg ? Check using sum 


```

*** =solution
```{r}
# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Compute average murder rate and store in `avg` using `mean` 
avg <-mean(murder_rate)

# How many states are < avg ? Check using sum 
sum(murder_rate < avg)

```

*** =sct
```{r}
test_error()
test_object("murder_rate", undefined_msg = "Define the murder rate first!", incorrect_msg = "Same formula as before.")
test_object("avg", undefined_msg = "", incorrect_msg = "Compute the mean and store it here.")
test_function("sum", incorrect_msg = "Check the number of states below average murder rate.")
success_msg("Awesome!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:19320f72ab
## 6. Match 


*** =instructions

Use the `match` function to identify the states with abbreviations AK, MI, and IA. 
Start by defining an index of the entries of `murders$abb` that match the three abbreviations, then use the `[` operator to extract the states.


*** =hint


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))

```

*** =sample_code
```{r}
# Store the 3 abbreviations in `abbs`. (remember that they are character vectors)

# Match the abbs to the murders$abb and store in `ind`

# Print state names from `ind`


```

*** =solution
```{r}
# Store the 3 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("AK", "MI", "IA")

# Match the abbs to the murders$abb and store in `ind`
ind <- match(abbs , murders$abb)

# Print state names from `ind`
murders$state[ind]
```

*** =sct
```{r}
test_error()
test_object("abbs", undefined_msg = "Define abbs!", incorrect_msg = "Check the abbreviations stored.")
test_object("ind", undefined_msg = "Define ind!", incorrect_msg = "Make sure to use the match function ")
test_output_contains("murders$state[ind]", incorrect_msg = "Use square brackets.")
success_msg("Awesome!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:beea127137
## 7. %in% 

If rather than an index we want a logical that tells us whether or not each element of a first vector is in a second we can use the function %in%.
For example: `deserts%in%courses$food`, would tell us whether or not deserts are in the courses section in dataset food. 

*** =instructions

Use the %in% operator to create a logical vector that answers the question: which of the following are actual abbreviations: MA, ME, MI, MO, MU ?

*** =hint
Use code `abbs%in%murders$abb`. 

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))

```

*** =sample_code
```{r}
# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)


# Use the %in% command 


```

*** =solution
```{r}
# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 

# Use the %in% command 
abbs%in%murders$abb

```

*** =sct
```{r}
test_error()
test_object("abbs", undefined_msg = "Define abbs!", incorrect_msg = "Make sure to store the 5 abbreviations in abbs.")
test_output_contains("abbs%in%murders$abb", incorrect_msg = "Check the code. ")
success_msg("Awesome!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:65a74691fd
## 8. Operator `!`


*** =instructions

Extend the code you used in exercise seven to report the one entry that is not an actual abbreviation. 
Use the ! operator, which turns FALSE into TRUE and vice-versa, then which to obtain an index.

*** =hint
Use the code `ind <- which(!abbs%in%murders$abb)`. 

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))

```

*** =sample_code
```{r}
# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)


# Use the `which` command and `!` operator to find out which abbreviation is not actually part of the dataset and store in 'ind' 


# Names of abbs in `ind`



```

*** =solution
```{r}
# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 

# Use the `which` command and `!` operator to find out which abbreviation is not actually part of the dataset and store in 'ind' 
ind <- which(!abbs%in%murders$abb)

# Names of abbs in `ind`
abbs[ind]
```

*** =sct
```{r}
test_error()
test_object("abbs", undefined_msg = "Define abbs!", incorrect_msg = "Check the 5 abbreviations from the instructions.")
test_object("ind", undefined_msg = "Make sure you define ind first! ", incorrect_msg = "Use the which and ! codes." )
test_output_contains("abbs[ind]", incorrect_msg = "Have you used square brackets?")
success_msg("Awesome!")
```
----