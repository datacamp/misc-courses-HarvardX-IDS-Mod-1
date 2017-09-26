---
title       : Sorting
description : This chapter deals with getting more of an insight into the data we have, by helping us sort through it.
--- type:NormalExercise lang:r xp:100 skills:1 key:f2c94437a4
## 1. Sort 

When looking at a dataset, we may want to sort the data in an order that makes more sense to analyse it. Let's see how we can do that with the `murders` dataset that we have. 

*** =instructions
Use the `$` operator to access the population size data and store it the object `pop`. 
Then use the `sort` function to redefine pop so that it is sorted. 
Finally use the `[` operator to report the smallest population size.


*** =hint


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Access the variable from the dataset and store it in an object 
state <- murders$state 

# Sort the object and redefine the object 
state <- sort(state) 

# Report the smallest state 
state[1]

# Access `population` from the dataset and store it in `pop`

# Sort the object and save it in the same object 

# Report the smallest population size 



```

*** =solution
```{r}

# Access `population` from the dataset and store it in `pop`
pop <- murders$population

# Sort the object and save it in the same object
pop <- sort(pop)

# Report the smallest population size 
pop[1]
```

*** =sct
```{r}
test_error()
test_object("pop", undefined_msg = "Make sure you define the object pop.", incorrect_msg = "Check whether you have redefined it or not.")
test_output_contains("pop[1]", incorrect_msg = "Use the square brackets [] to report the smallest population value.")
success_msg("Good job! Now you know how to sort data in an ascending order.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:c55b4ac0f9
## 2. Order


*** =instructions
Now instead of the smallest population size, let's find out the index number of the state with the smallest population size, using the command `o[1]`. 
*** =hint
Use order instead of sort

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Access `population` from the dataset and store it in `pop`

# Use the command `order`, to order `pop` and store in object `o`

# Find the index number of the entry with the smallest population size


```

*** =solution
```{r}
# Access `population` from the dataset and store it in `pop`
pop <- murders$population

# Use the command `order`, to order `pop` and store in object `o`
o <- order(pop)

# Find the index number of the entry with the smallest population size
o[1]
```

*** =sct
```{r}
test_error()
test_object("pop", undefined_msg = "Define pop first.", incorrect_msg = "Make sure you save population in pop.")
test_object("o", undefined_msg = "Make sure you define o first!", incorrect_msg = "Store pop using the order code in object o.")
test_output_contains("o[1]", incorrect_msg = "Use the command provided in the instructions.") 
success_msg("Great job!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:44a224bc10
## 3. New Codes 

We can actually perform the same operation as in the previous exercise using the function `which.min`. It basically tells us which is the minimum value. 

*** =instructions
Write one line of code that gives the index of the lowest population entry, using the `which.min` command.

*** =hint

Use `which.min` directly. 

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Find the smallest value for variable `total` 
which.min(murders$total)

# Find the smallest value for `population`


```

*** =solution
```{r}
# Find the smallest value for `population`
which.min(murders$population)

```

*** =sct
```{r}
test_error()
test_output_contains("which.min(murders$population)", incorrect_msg = "Make sure you to use $ to get the population data and simultaneously use which.min.")
success_msg("Great ! You`ve learnt another code in R!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:90b98a2790
## 4. Learning more about Ordering 

Now we know how small the smallest state is and we know which row represents it. However, which state is it? 

*** =instructions
Define a variable `states` to be the state names from the murders data frame. 
Report the name of the state with the smallest population using the `states[which.min(murders$population)]` code.

*** =hint

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Define variable `state`

# Report the name of the state with the smallest population 
```

*** =solution
```{r}
# Define variable `states`
states <- murders$state

# Report the name of the state with the smallest population 
states[which.min(murders$population)]
```

*** =sct
```{r}
test_error()
test_object("states", undefined_msg = "Define states first!", incorrect_msg = "Assign state values from dataset to object.")
test_output_contains("states[which.min(murders$population)]", incorrect_msg = "Copy code from instructions.")
success_msg("Awesome! Now we have the names of the states as well !")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:47c076de70
## 5. Data Frames and Ranks 

You can create a data frame using the `data.frame` function. Here is a quick example:

`temp <- c(35, 88, 42, 84, 81, 30)`
`city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")`
`city_temps <- data.frame(name = city, temperature = temp)`


*** =instructions
Use the `rank(murders$population)` function to determine the population size rank (from smallest to biggest) of each state. 
Save these ranks in an object called `ranks`.
Then create a data frame with the state name and its rank. Call the data frame `my_df`. 


*** =hint


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)

# Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)

# Define a variable states to be the state names 


# Define a variable `ranks` to determine the population size ranks 


# Create a dataframe `my_df` with the state name and its rank

```

*** =solution
```{r}
# Define a variable states to be the state names from the murders data frame
states <- murders$state

# Define a variable `ranks` to determine the population size ranks 
ranks <- rank(murders$population)

# Create a dataframe `my_df` with the state name and its rank
my_df <- data.frame(states = states, ranks = ranks)
```

*** =sct
```{r}
test_error()
test_object("states", incorrect_msg = "Store the state names in states!")
test_object("ranks", undefined_msg = "Define ranks first!", incorrect_msg = "Define the rank of the population values!")
test_object("my_df", undefined_msg = "Define the dataframe first.", incorrect_msg = "Use the command similar to the example.")
success_msg("That`s awesome! You got this!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:22594ff7ec
## 6. Data Frames, Ranks and Orders 

*** =instructions

Repeat the previous exercise but this time order `my_df` so that the states are ordered from least populous to most.
Create an object ind that stores the indexes needed to order the population values, using the `order` command.  
Then use the bracket operator [ to re-order each column in the data frame. example: `abb = abb [0]` 


*** =hint


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
pop<- murders$population
o <- order(pop)
o[1]
```

*** =sample_code
```{r}
# Define a variable states to be the state names from the murders data frame


# Define a variable `ranks` to determine the population size ranks 


# Define a variable `ind` to store the indexes needed to order the population values


# Create a dataframe `my_df` with the state name and its rank and ordered from least populous to most 


```
*** =solution
```{r}
# Define a variable states to be the state names from the murders data frame
states <- murders$state

# Define a variable `ranks` to determine the population size ranks 
ranks <- rank(murders$population)

# Define a variable `ind` to store the indexes needed to order the population values
ind <- order(states)

# Create a dataframe `my_df` with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(states = states[o], ranks = ranks[o])
```

*** =sct
```{r}
test_error()
test_object("states", undefined_msg = "Define states first.", incorrect_msg = "")
test_object("ranks",undefined_msg = "Define ranks first.", incorrect_msg = "")
test_object("ind",undefined_msg = "Define ind first.", incorrect_msg = "Use the order command as well.")
test_object("my_df", undefined_msg = "Define my_df first", incorrect_msg = "Check code")
success_msg("Great job! See how well you're building on your knowledge of R!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:f7d3786068
## 7.NA (really, the chapter is called NA) 

The `na_example` dataset represents a series of counts. You can quickly examine the object using

`data(na_example)`  
`str(na_example)`

However, when we compute the average we obtain an NA

`mean(na_example)`

*** =instructions
The `is.na` returns a logical vector that tells us which entries are NA. 
Assign this logical vector to an object called `ind`, using code `is.na(na_example)` and determine how many NA does na_example have, using the `sum` command?

*** =hint


*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/na_example.rda"))
```

*** =sample_code
```{r}
# Using new dataset 
data(na_example)  

# Checking the structure 
str(na_example)

# Find out the mean of the entire dataset 
mean(na_example)

# Assign `is.na` to logical vector `ind` 


# Determine how many NA does `ind` have? 


```

*** =solution
```{r}
# Assign `is.na` to logical vector `ind` 
ind <- is.na(na_example)

# Determine how many NA does `ind` have? 
sum(ind)

```

*** =sct
```{r}
test_error()
test_object("ind", undefined_msg = "Make sure to define ind first.", incorrect_msg = "Check instructions for the code.")
test_output_contains("sum(ind)", incorrect_msg = "Use the sum command to get the number of NAs.")
success_msg("Great job! Now let's move to one last thing in this chapter.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:7d6eebca10
## 8. NA ! 

We can leave out the points that are NA and do operations on the rest. 

*** =instructions
Compute the average again but only for the entries that are not NA making use of the `!` operator before `ind`. 

*** =hint
Remember the ! operator. Use code "mean(na_example[!ind])". 

*** =pre_exercise_code
```{r}
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/na_example.rda"))
ind <- is.na(na_example)
```

*** =sample_code
```{r}
# Compute the average, for entries that are not NA 


```

*** =solution
```{r}
# Compute the average, for entries that are not NA 
mean(na_example[!ind])
```

*** =sct
```{r}
test_error()
test_output_contains("mean(na_example[!ind])", incorrect_msg = "Check your code from the instructions again.")
success_msg("Awesome ! Now you're all set with vectors! Get practicing on your own!")
```
----