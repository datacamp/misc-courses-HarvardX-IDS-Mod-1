---
title       : Basic Data Manipulation 
description : Just as the name suggests, we're going to practice the basics of data manipulation here.
--- type:NormalExercise lang:r xp:100 skills:1 key:fa7b6092fb
## 1. Mutate

Load the `dplyr` package and the murders dataset.

`library(dslabs)`
`library(dplyr)`
`data(murders)`

*** =instructions

Use the function `mutate` to add a rate column with the per 100,000 murder rate.

*** =hint
Use code `murders <- mutate(murders, rate =  total / population * 100000)`. 

*** =pre_exercise_code
```{r}
library(dplyr)
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Loading the libraries
library(dplyr)
data(murders)

# Use mutate to add a rate column and store in `murders`

```

*** =solution
```{r}
# Use mutate to add a rate column and store in `murders`
murders <- mutate(murders, rate =  total / population * 100000)
```

*** =sct
```{r}
test_error()
test_object("murders", undefined_msg = "Define murder first.", incorrect_msg = "Check the code again.")
success_msg("Awesome! Let's learn another command with mutate.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:545fbadeea
## 2. Mutate and rank 


*** =instructions
Use the function `mutate` again to add a column `rank` containing the rank, from highest to lowest murder rate, [including code `(rank = rank(-rank)`.]

*** =hint
Use the function rank and remember by default it ranks form lowest to highest.

*** =pre_exercise_code
```{r}
library(dplyr)
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
rate =  (murders$total)/ (murders$population) * 100000
```

*** =sample_code
```{r}
# Loading the libraries
library(dplyr)
data(murders)

# Use mutate to add a rate column, rank from highest to lowest and store in `murders`

```

*** =solution
```{r}
# Use mutate to add a rate column, rank from highest to lowest and store in `murders`
murders <- mutate(murders, rank = rank(-rate))
```

*** =sct
```{r}
test_error()
test_object("murders", incorrect_msg = "Remember, rank from highest to lowest.")
success_msg("Good job!")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:555ca41873
## 3. Filter 


*** =instructions
Use the function filter to show the top 5 states with the highest murder rates. Do not change the murders dataset, just show the result.

*** =hint


*** =pre_exercise_code
```{r}
library(dplyr)
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
rate =  (murders$total)/ (murders$population) * 100000

```

*** =sample_code
```{r}
# Loading the libraries
library(dplyr)
data(murders)

# Filter the top 7 food items with highest cost rates
# filter(cost, rank <= 7)

# Rate and Rank
murders$rate = (murders$total)/ (murders$population) * 100000
murders$rank = rank (rate)

# Filter to show the top 5 states with the highest murder rates (using `murders`)

```

*** =solution
```{r}
# Rate and Rank
murders$rate = (murders$total)/ (murders$population) * 100000
murders$rank = rank (rate)

# Filter to show the top 5 states with the highest murder rates
filter(murders, rank <= 5)
```

*** =sct
```{r}
test_error()
test_output_contains("filter(murders, rank <= 5)", incorrect_msg = "Make sure you've written murders in your code.")
success_msg("Great job!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:42352c70c5
## 4. Filter and ! 


*** =instructions
Create a new data frame called `no_south` that removes states from the south. 
How many states are in this category? 

*** =hint
Use filter and the != operator. You can use nrow to quickly get the number of rows of a data frame.

*** =pre_exercise_code
```{r}
library(dplyr)
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}

# Loading the libraries
library(dplyr)
data(murders)

# Creating a new dataframe `no_south`

# Number of states (rows) in this category 

```

*** =solution
```{r}

# Creating a new dataframe `no_south`
no_south <- filter(murders, region != "South" )

# Number of states (rows) in this category 
nrow(no_south)
```

*** =sct
```{r}
test_error()
test_object("no_south", undefined_msg = "Define no_south first!", incorrect_msg = "Make sure you`re excluding the ones not in the South.")
test_output_contains("nrow(no_south)", incorrect_msg = "You need the number of rows for the number of states.")
success_msg("That's great! Let's move to the next exercise.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:18111c7bfd
## 5. Filter and %in%


*** =instructions
Create a new dataframe called murders_nw with only the states from the northeast and the west. 
How many states are in this category? 


*** =hint
Use filter and the %in% operator. You can use nrow to quickly get the number of rows of a data frame.

*** =pre_exercise_code
```{r}
library(dplyr)
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}

# Loading the libraries
library(dplyr)
data(murders)

# Use mutate to add a rate column and store in `murders`
murders <- mutate(murders, rate =  total / population * 100000)

# Create a new dataframe called `murders_nw` with only the states from the northeast and the west


# Number of states (rows) in this category 

```

*** =solution
```{r}
# Create a new dataframe called `murders_nw` with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c("Northeast", "West") )

# Number of states (rows) in this category
nrow(murders_nw)
```

*** =sct
```{r}
test_error()
test_object("murders_nw", undefined_msg = "Define murders_nw first.", incorrect_msg = "Make sure you're using the %in% command.")
test_output_contains("nrow(murders_nw)", incorrect_msg = "You need the number of rows again, same as previous question.")
success_msg("This is great!")
```
----


--- type:NormalExercise lang:r xp:100 skills:1 key:e572c8806a
## 6. Combining functions 

*** =instructions
Suppose you want to live in the Northeast or West and want the murder rate to be less than 1. 
Create a table, call it `my_states`, that satisfies both these. 
How many states satisfy this?

*** =hint
Use the `my_states <- filter(murders, region %in% c("Northeast", "West") & rate < 1)` code. 

*** =pre_exercise_code
```{r}
library(dplyr)
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
rate =  (murders$total)/ (murders$population) * 100000
```

*** =sample_code
```{r}
# Loading the libraries
library(dplyr)
data(murders)

# Create a table, call it `my_states`, that satisfies both the conditions 

# Number of states (rows) in this category


```

*** =solution
```{r}
# Create a table, call it `my_states`, that satisfies both the conditions 
my_states <- filter(murders, region %in% c("Northeast", "West") & rate < 1)

# Number of states (rows) in this category
nrow(my_states)
```

*** =sct
```{r}
test_error()
test_object("my_states", undefined_msg = "Define my_states first!", incorrect_msg = "Use the filter, %in% and < commands.")
test_output_contains("nrow(my_states)", incorrect_msg = "You need the number of rows again, same as previous question.")
success_msg("Now you know how to combine functions and use them to get specific answers. Let's try it one more time!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:3d4de3a34a
## 7. Combining functions 2 

*** =instructions
Repeat exercise 5, but now instead of creating a new obejct, show the result and only include the state, rate, and rank columns. Use a pipe (`%>%`) to do this in just one line.

*** =hint
Use code: `filter(murders, region %in% c("Northeast", "West") & rate < 1) %>% 
    select(state, rate, rank)` 
    
*** =pre_exercise_code
```{r}
library(dplyr)
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
rate =  (murders$total)/ (murders$population) * 100000

```
*** =sample_code
```{r}
# Rate and Rank
murders$rate = (murders$total)/ (murders$population) * 100000
murders$rank = rank (rate)

# show the result and only include the state, rate, and rank columns, all in one line
```
*** =solution
```{r}
# Rate and Rank
murders$rate = (murders$total)/ (murders$population) * 100000
murders$rank = rank (rate)

# show the result and only include the state, rate, and rank columns, all in one line
filter(murders, region %in% c("Northeast", "West") & rate < 1) %>%  
   select(state, rate, rank)
```
*** =sct
```{r}
test_error()
test_function("filter", incorrect_msg = "Everything needs to be in one line! Use a pipe to help!")
success_msg("You're getting a pretty good hang of stuff now!")
```
----
--- type:NormalExercise lang:r xp:100 skills:1 key:1b45c7acac
## 8. Combining functions 3 



*** =instructions
Now reload the original murders data frame using `data(murders)`. Then use just one line to create a new data frame, called, `my_states` that has murder rate and rank column, consideres only states in the Northeast or West, has a murder rate lower than 1 and contains only the state, rate, and rank columns. 

*** =hint
Use `mutate`, `filter` and `select` combining them with `pipes`.

*** =pre_exercise_code
```{r}
library(dplyr)
load(url("http://s3.amazonaws.com/assets.datacamp.com/production/course_3073/datasets/murders.rda"))
```

*** =sample_code
```{r}
# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called `my_states` (with specifications in the instructions)


```

*** =solution
```{r}
# Create new data frame called `my_states` (with specifications in the instructions)
my_states <- murders %>% 
mutate(rate =  total / population * 100000, rank = rank(-rate)) %>%
filter(region %in% c("Northeast", "West") & rate < 1) %>%
select(state, rate, rank)

```

*** =sct
```{r}
test_error()
test_object("my_states", undefined_msg = "Define my_states!", incorrect_msg = "Make sure you put pipes to put everything in one line.")
success_msg("This is absolutely awesome! You now know how to use basic data manipulation techniques in R.")
```

----
