---
title       : 6. Indexing
description : R provides a powerful and convenient way of indexing vectors. We're going to learn some ways of doing that!


--- type:NormalExercise lang:r xp:100 skills:1 key:a76be07302
## 1. Extracting Indices of a Logical Vector

As you learnt earlier, a logical vector has `TRUE` or `FALSE` elements. 

You can find out the indices of the `TRUE` elements using the `which()` function. 

For `lvct = [TRUE TRUE FALSE TRUE FALSE]`, `which(lvct)` would print `1 2 4` since those elements are `TRUE` and satisfy the logical condition you had defined. 

For this exercise, you will repeat the instructions from the previous exercise, and use the `which()` function to print the indices for the elements that satisfy the condition. 

*** =instructions
- In an object `weight_rate`, store `women$weight`/ `women$height` 
- Create a logical vector `low` for the condition `weight_rate < 2`
- Use `which()` to determine the indices of `weight_rate` associated with values lower than 2

*** =hint


*** =pre_exercise_code
```{r}
library(datasets)
data(women)
```

*** =sample_code
```{r}
# Load the datasets
library(datasets)
data(women)

# Store the weight rate for each tree, in `weight_rate`


# Store the `weight_rate < 2` in `low`


# Use `which(low)`, to get the lowest value


```

*** =solution
```{r}
# Store the weight rate for each tree, in `weight_rate`
weight_rate<-women$weight/women$height

# Store the `weight_rate < 2` in `low`
low <- weight_rate < 2

# Use `which(low)`, to get the lowest value
which(low)
```

*** =sct
```{r}
test_error()
test_object("weight_rate", undefined_msg = "Define the weight rate first!", incorrect_msg = "Check the formula.")
test_object("low", undefined_msg = "Define low!", incorrect_msg = "It should be weight rates less than 2.")
test_function("which", incorrect_msg = "Use the command from the instructions.")
success_msg("Awesome! This will be quite handy when you work with vectors in R.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:43f34535d7
## 2. Extracting values of a Vector from Indices

Now that you have learnt how to extract the indices of a vector that meet a logical condition, you can access the values of the original vector for those particular indices using square brackets `[]`. 

For example: `food$cost[low]`, would give us the cost of food lower than 1 (assuming `low <- food$cost < 1`)

For this exercise, you will work with the `women` dataset, repeat the instructions from the previous exercise, and retrieve the values of `women$height` that meet the logical condition `weight_rate < 2`. 


*** =instructions
- In an object `weight_rate`, store `women$weight`/ `women$height` 
- Create a logical vector `low` for the condition `weight_rate < 2`
- Use square brackets to retrieve the heights of those women meeting the logical condition



*** =hint

*** =pre_exercise_code
```{r}
library(datasets)
data(women)
```

*** =sample_code
```{r}
# Load the datasets
library(datasets)
data(women)

# Store the weight rate for each tree, in `weight_rate`


# Store the `weight_rate < 2` in `low`


# Heights of women with weight rates lower than 2


```

*** =solution
```{r}
# Store the weight rate for each tree, in `weight_rate`
weight_rate<-women$weight/women$height

# Store the `weight_rate < 2` in `low`
low <- weight_rate < 2

# Height of women with weight rates lower than 2
women$height[low]
```

*** =sct
```{r}
test_error()
test_object("weight_rate", undefined_msg = "Define the weight rate first!", incorrect_msg = "Check the formula.")
test_object("low", undefined_msg = "Define low!", incorrect_msg = "Same as last question.")
test_output_contains("women$height[low]", incorrect_msg = "Follow code from example given!")
success_msg("Good job! Hope you are enjoying this.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:a15f758c03
## 3. Combining logical conditions

You can also combine logical conditions using the `&` operator. This helps you extract values of a dataset that satisfy more than one logical condition. 

For example, `index <- low & food$courses=="Desserts"`, would store the indices of the `food` dataset that satisfies the condition defined by `low` and also has `Desserts` in the `food$courses` column. 

For this exercise, you will extend the code from the previous exercises to combine 2 logical conditions: Weight rate < 2 and Women with height = 60 inches. 

*** =instructions

- In an object `ind`, store the indices of `women` dataset that satisfy `low` and `women$height==59` 
- Print the `women$weight` corresponding to those indices 


*** =hint
Use the previously defined logical vector low and the logical operator &.


*** =pre_exercise_code
```{r}
library(datasets)
data(women)
```

*** =sample_code
```{r}
# Load the datasets
library(datasets)
data(women)

# Store the weight rate for each tree, in `weight_rate`
weight_rate<-women$weight/women$height

# Store the `weight_rate < 2` in `low`
low <- weight_rate < 2

# Store indices in 'ind' that satisfy height=59in and weight rates lower than 2


# Get weight of that entry


```

*** =solution
```{r}
# Store the weight rate for each tree, in `weight_rate`
weight_rate<-women$weight/women$height

# Store the `weight_rate < 2` in `low`
low <- weight_rate < 2

# Store indices in 'ind' that satisfy height=59in and weight rates lower than 2
ind <- low & women$height==59

# Get weight of that entry
women$weight[ind]
```

*** =sct
```{r}
test_error()
test_object("ind", undefined_msg = "Make sure to define ind first!", incorrect_msg = "Check code.")
test_output_contains("women$weight[ind]", incorrect_msg = "Use [] to retrieve names.")
success_msg("Wasn't that good! Move to the next exercise.")
```

--- type:NormalExercise lang:r xp:100 skills:1 key:a7e0b450aa
## 4. Using Logical Conditions to retrieve data

In the previous exercise, you learnt how to access a certain data (`women$weight`) in a dataset, that corresponds to a user-defined logical condition (`weight_rate < 2`). 

You performed this using several lines of code. In this exercise, you will learn how to efficiently do this using one line of code. 
You can do the same task as above using this line of code: 

`women[weight_rate < 2,]$weight` 

This will print all the values in `women$weight` that correspond to the logical condition `weight_rate < 2`. 

For this exercise, you will combine two logical conditions using `&` operator. 

*** =instructions
In one line of code, print the `weight` values of `women` dataset that correspond to a `weight_rate` less than or equal to 2 and `women$height` less than 65 

*** =hint
Remember to use the `women$height` instead of `height`. Also, use the `&` operator, and the `,` at the end within the `[]`. 

*** =pre_exercise_code
```{r}
library(datasets)
data(women)
```

*** =sample_code
```{r}
# Load the datasets
library(datasets)
data(women)

# Store the weight rate for each tree, in `weight_rate`
weight_rate<-women$weight/women$height

# Print the weight(s) that satisfy height<65in and weight rates lower than or equal to 2


```

*** =solution
```{r}
# Load the datasets
library(datasets)
data(women)

# Store the weight rate for each tree, in `weight_rate`
weight_rate<-women$weight/women$height

# Print the weight(s) that satisfy height<65in and weight rates lower than 2
women[weight_rate <= 2 & women$height < 65,]$weight
```

*** =sct
```{r}
test_error()
test_output_contains("women[weight_rate <= 2 & women$height < 65,]$weight", incorrect_msg = "Use $, & and , at their right places")
success_msg("Awesome! Now, you can code more efficiently!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:f2004ac34f
## 5. Operations on Logical Conditions

Since a logical condition returns a vector of `TRUE` and `FALSE` values, you can perform simple arithmetic operations on this vector. For this purpose, R considers the `TRUE` values as `1` and `FALSE` values as `0`. 
For example, you could use the `sum()` function to calculate the number of elements meeting the logical condition. 

For this exercise, you will work with the `women` dataset, and calculate the number of women whose `weight_rate` is greater than the average `weight_rate`.  

*** =instructions
- In an object `avg`, store the the mean of `weight_rate` using `mean()` function
- Find the number of women with `weight_rate` greater than the `avg` 

*** =hint

Use the `sum()` function with the logical condition 

*** =pre_exercise_code
```{r}
library(datasets)
data(women)
```

*** =sample_code
```{r}
# Load the datasets
library(datasets)
data(women)

# Store the weight rate for each tree, in `weight_rate`
weight_rate<-women$weight/women$height


# Compute average weight rate and store in `avg` using the function `mean`

# How many women are > avg ? Check using `sum`

```

*** =solution
```{r}
# Store the weight rate for each tree, in `weight_rate`
weight_rate<-women$weight/women$height

# Compute average weight rate and store in `avg` using the function `mean`
avg <-mean(weight_rate)

# How many women are > avg ? Check using sum
sum(weight_rate > avg)

```


*** =sct
```{r}
test_error()
test_object("avg", undefined_msg = "Define avg first.", incorrect_msg = "Compute the mean and store it here.")
test_function("sum", incorrect_msg = "Check the number of women above average weight rate.")
success_msg("Good! That's the power of logical operations in R.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:19320f72ab
## 6. Match
You will use the `murders` dataset for the next three exercises.

Sometimes, you might want to check if a larger vector has elements that are also present in a smaller vector. 

The `match()` function takes 2 vectors as arguments and gives the index numbers of elements in the vector of interest that match the given vector. 

You can then use the indices with `[]` to access the other data corresponding to the matched elements.

In this exercise, you want to find out the state names in the `murder` dataset for a given set of abbreviations "NH", "OH" and "TN". You will use the `match()` function to achieve this. 

*** =instructions
- Create an object `abbs` and store the abbreviations "NH", "OH"and "TN"
- In an object `ind`, store the results of matching `abbs` with `murders$abb`
- Use `[]` and `ind` to extract the `murders$state` values corresponding to the abbreviations 

*** =hint
As an example, `match(x, y)` finds the index values of `y` that match with `x`.

*** =pre_exercise_code
```{r}
library(dplyr)
library(dslabs)
data(murders)
```


*** =sample_code
```{r}

# Store the 3 abbreviations in `abbs`. (remember that they are character vectors)

# Match the abbs to the murders$abb and store in `ind`

# Extract and print state names with matching state abbreviations


```

*** =solution
```{r}
# Store the 3 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("NH", "OH", "TN")

# Match the abbs to the murders$abb and store in `ind`
ind <- match(abbs , murders$abb)

# Extract and print state names with matching state abbreviations
murders$state[ind]
```

*** =sct
```{r}
test_error()
test_object("abbs", undefined_msg = "Define abbs!", incorrect_msg = "Check the abbreviations stored.")
test_object("ind", undefined_msg = "Define ind!", incorrect_msg = "Make sure to use the match function ")
test_output_contains("murders$state[ind]", incorrect_msg = "Use square brackets.")
success_msg("Great!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:beea127137
## 7. %in%

If, instead of a vector of index numbers, you want a logical vector that tells you whether or not each element of a vector is in another vector, you can use the operator `%in%`. 

Note: The true state abbreviations are stored in `murders$abb`.

*** =instructions
- In an object `abbs`, store the character vector with abbreviations "ND", "NE", "NM", "NN", "NY"
- Use the `%in%` operator to create and print a logical vector that compares `abbs` and `murders$abb` dataset

*** =hint
Use code `abbs%in%murders$abb`.

*** =pre_exercise_code
```{r}
library(dplyr)
library(dslabs)
data(murders)
```

*** =sample_code
```{r}

# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)


# Use the %in% command


```

*** =solution
```{r}
# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("ND", "NE", "NM", "NN", "NY")

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
## 8. Negation operator 

In the previous exercise you created a logical vector indicating whether the character strings "ND", "NE", "NM", "NN", "NY" are actual state abbreviations in `murders`. 

You can use the negation operator `!` to reverse the above operation. That is, in this example, to find the abbreviation that is not part of the larger vector `murders$abb`.   

Note: The true state abbreviations are stored in `murders$abb`.


*** =instructions
- Create a character vector `abbs` with elements "ND", "NE", "NM", "NN", "NY"
- In an object `ind`, store the index of the element in `abbs` not present in `murders$abb` using `which()` function and `!` operator
- Print the values of `abbs` corresponding to `ind` using `[]`


*** =hint
Use the code `ind <- which(!abbs%in%murders$abb)`.

*** =pre_exercise_code
```{r}
library(dplyr)
library(dslabs)
data(murders)
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
abbs <- c("ND", "NE", "NM", "NN", "NY")

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
success_msg("This is cool!")
```
----
