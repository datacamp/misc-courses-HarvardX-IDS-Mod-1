---
title       : 4. Sorting
description : This chapter deals with getting more of an insight into the data we have, by helping us sort through it

--- type:NormalExercise lang:r xp:100 skills:1 key:f2c94437a4

## 1. Sort 

In exploratory data analysis, you often might want to sort the data. You will now learn how you can do that with a sample dataset. 

The dataset you will use in this chapter is called `RatPupWeight`. Since `RatPupWeight` is a built-in dataset in R's `nmle` package, there is no need to load the data. 

The variables you will use are:

- weight     : Birth weight of the rat pup
- sex        : Sex of the rat pup (Male, Female)
- Litter     : Litter ID number
- Lsize      : Number of pups per litter
- Treatment  : Level of dosage given to to the litter (High, Low, Control)

To have a look at the dataset, simply run `RatPupWeight` in the R console.

View the syntax of `sort()` function in the sample code. 

*** =instructions
- Use the `$` operator to access the weight column and store the values in object `weight`
- Use the `sort()` function to redefine `weight` so that it is sorted
- Use the `[]` operator to report the smallest weight
- Use sample code on the `murders` dataset (preloaded in your working environment) as reference

*** =hint
Print `weight` and see if it is sorted in an ascending or descending order.

*** =pre_exercise_code
```{r}
library(nlme)
data(RatPupWeight)
library(dslabs)
data(murders)
```

*** =sample_code
```{r}
# Example: Access column total from dataset `murders` and store it in an object total
total <- murders$total

# Example: Sort the object `total`
total <- sort(total) 

# Example: Report the lowest total number of murders 
total[1]

# Access weight from `RatPupWeight` and store it in `weight`


# Sort the object `weight`


# Report the smallest weight 

```

*** =solution
```{r}
# Example: Access column total from dataset `murders` and store it in an object total
total <- murders$total

# Example: Sort the object `total`
total <- sort(total) 

# Example: Report the lowest total number of murders 
total[1]

# Access weight from RatPupWeight and store it in weight
weight <- RatPupWeight$weight

# Sort the object weight 
weight <- sort(weight)

# Report the smallest weight 
weight[1]
```

*** =sct
```{r}
test_error()
test_object("weight", undefined_msg = "Make sure you define the `weight`.", incorrect_msg = "Remember to save the sorted vector in `weight`.")
test_output_contains("weight[1]", incorrect_msg = "The smallest wieght is sorted to be the first element in the vector.")
success_msg("Good job! Now you know how to sort data in ascending order.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:c55b4ac0f9
## 2. Order

Sometimes, you might need the index of a certain element of a vector. For example, you know the smallest number in a vector, but you might want to know its position (or index). 

The `order()` function creates a vector of indices that correspond to the vector sorted in ascending order. 

For example, if `vct = [6 3 1 5]`, the `order(vct) = [3 2 4 1]`. 

This means that, the smallest number (which is 1) in `vct` occurs in the 3rd place, while the largest number (which is 6) occurs in the first place. 

*** =instructions
- In an object `weight`, store `RatPupWeight$weight`
- In an object `o`, store index numbers of `weight` using `order()` function
- Find the index of the smallest weight 

*** =hint
The smallest weight will be in the first element of object `o`

*** =pre_exercise_code
```{r}
library(nlme)
data(RatPupWeight)
```

*** =sample_code
```{r}
# Load the datasets
library(nmle)
data(RatPupWeight)


# Access `weight` from the dataset and store it in `weight`

# Use the command `order`, to order `weight` and store in object `o`

# Find the index number of the entry with the smallest weight size


```

*** =solution
```{r}
# Access `weight` from the dataset and store it in `weight`
weight <- RatPupWeight$weight

# Use the command `order`, to order `weight` and store in object `o`
o <- order(weight)

# Find the index number of the entry with the smallest weight size
o[1]
```

*** =sct
```{r}
test_error()
test_object("weight", undefined_msg = "Define weight first.", incorrect_msg = "Make sure you save weight in weight.")
test_object("o", undefined_msg = "Make sure you define o first!", incorrect_msg = "Store weight using the order code in object o.")
test_output_contains("o[1]", incorrect_msg = "Use the command provided in the instructions.")
success_msg("Great job! Now you know how to 'order' data.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:44a224bc10
## 3. Index of max and min values

A compact way to perform the same operation in the previous exercise is using the `which.min()` function. This function will return the index of the smallest value in the vector. Similarly, `which.max()` will return the index of the largest value. 

Use the sample code as a reference.

*** =instructions
Use the `which.min` function in one line of code to find the index number of the pup that has the smallest weight

*** =hint
Use `which.min` directly.

*** =pre_exercise_code
```{r}
library(nlme)
data(RatPupWeight)
library(dslabs)
data(murders)
total <- murders$total
```

*** =sample_code
```{r}
# Example: Find the population of the state with the smallest number of total murders
murders$population[which.min(total)]

# Load the datasets
library(nmle)
data(RatPupWeight)

# Find the smallest value for `weight`


```

*** =solution
```{r}
# Find the smallest value for `weight`
which.min(RatPupWeight$weight)

```

*** =sct
```{r}
test_error()
test_output_contains("which.min(RatPupWeight$weight)", incorrect_msg = "Make sure you to use $ to get the weight data and simultaneously use which.min.")
success_msg("Great! You've learnt another set of useful commands in R!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:90b98a2790
## 4. Using `which.min()`

Now, you know how much the smallest rat pup weighed and also, which row represents it. 

However, what treatment (low, high, control) did it receive?

There are a few ways to find that out. Check out the sample code on `murders` for one example.

*** =instructions
- Define a variable `treat` to store `RatPupWeight$Treatment`
- Report the treatment group of the rat pup with the least weight

*** =hint
Apply `which.min()` on `RatPupWeight$weight` and find the corresponding treatment

*** =pre_exercise_code
```{r}
library(nlme)
data(RatPupWeight)
library(dslabs)
data(murders)
```

*** =sample_code
```{r}
# Example: Find out the state with the least total number of murders
murders$state[which.min(murders$total)]

# Load the datasets
library(nmle)
data(RatPupWeight)


# Define variable `treat`

# Report the treatment group of the pup with the least weight

```

*** =solution
```{r}
# Example: Find out the state with the least total number of murders
murders$state[which.min(murders$total)]

# Define variable `treat`
treat <- RatPupWeight$Treatment

# Report the treatment group of the pup with the least weight
treat[which.min(RatPupWeight$weight)]
```

*** =sct
```{r}
test_error()
test_object("treat", undefined_msg = "Define treat first!", incorrect_msg = "Assign treatment group values from dataset to object.")
test_output_contains("treat[which.min(RatPupWeight$weight)]", incorrect_msg = "Copy code from instructions.")
success_msg("Awesome! Now you have the treatment groups of the rat pups as well!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:47c076de70
## 5. Data Frames and Ranks

Now, you will learn to create a data frame. The function `data.frame()` takes both data frames and vectors as arguments.

As long as vectors have the same length, `data.frame` can bind them together to create a new data frame. 

`rank()` is a function that ranks the elements of a vector. It returns a vector that contains the ranks of the corresponding elements in its argument vector. It is similar to `order()` function. The difference between them is that, `order()` returns indices while `rank()` returns ranks. 

For example, if `vct = (3, 5, 3, 8, 2)`, then, `rank(v) = (2.5, 4, 2.5, 5, 1)` and `order(v) = (5, 1, 3, 2, 4)`. 

Check out the sample code as a reference.


*** =instructions
- Create a dataframe called `treat_weight_rank` which will have three columns:
    - the `Treatment` and `Weight` columns from `RatPupWeight`
    - and a new variable `rank` which is the ranking of weight of the pups, obtained by the `rank()` function
- Type and run `treat_weight_rank` in the console to observe the data frame


*** =hint

There are several ways to do this. You can either create the whole dataframe at once, or begin with one or two columns and then add the other(s).

*** =pre_exercise_code
```{r}
library(nlme)
data(RatPupWeight)
```

*** =sample_code
```{r}
# Load the datasets
library(nmle)
data(RatPupWeight)


# Example: Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)

# Example: Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Example: Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)

# Define variable `treat`


# Define variable `weight`


# Define a variable `ranks` to determine the weight size ranks


# Create a dataframe `treat_weight_rank` with the treatment groups and their ranks


```

*** =solution
```{r}
# Define variable `treat`
treat <- RatPupWeight$Treatment

# Define variable `weight`
weight <- RatPupWeight$weight

# Define a variable `ranks` to determine the weight size ranks
ranks <- rank( RatPupWeight$weight)

# Create a dataframe `treat_weight` with the treatment groups and their ranks
treat_weight_rank <- data.frame(Treatment = treat, Weight = weight, ranks = ranks)
```

*** =sct
```{r}
test_error()
test_object("treat", undefined_msg = "Define treat first!", incorrect_msg = "Assign treatment group values from dataset to object.")
test_object("weight", undefined_msg = "Define weight first!", incorrect_msg = "Assign weight values from dataset to object.")
test_object("ranks", undefined_msg = "Define ranks first!", incorrect_msg = "Define the rank of the weight values!")
test_object("treat_weight_rank", undefined_msg = "Define the dataframe first.", incorrect_msg = "Use the command similar to the example.")
success_msg("That's awesome! You are getting better!")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:22594ff7ec
## 6.  Sort a data frame

You have practiced sorting a vector by its own order. Now, you will learn to sort every column of a data frame by the values of one of the variables (columns).

Use the sample code using the `murders` dataset as a reference. For this exercise, you will continue to work on the `RatPupWeight` data frame.

*** =instructions

- Repeat the previous exercise but this time, order `treat_weight` so that the ratpups are ordered from least heavy to most
- Create an object `ind` that stores the indices needed to order the weight values, using the `order` command
- Use the bracket operator `[]` to re-order each column in the data frame


*** =hint

*** =pre_exercise_code
```{r}
library(nlme)
data(RatPupWeight)

library(dslabs)
data(murders)
```

*** =sample_code
```{r}

# Example: Obtain order of total number of murders and save ordering in `order_total`
order_total <- order(murders$total)

# Example: Use order_total to sort every variable in `murders`
murders <- murders[order_total,]

# Load the datasets
library(nmle)
data(RatPupWeight)


# Define variable `treat`


# Define variable `weight`


# Define a variable `ranks` to determine the weight size ranks


# Define a variable `ind` to store the indexes needed to order the weight values


# Create a dataframe `treat_weight` with the treatment groups and their ranks and ordered from lightest to heaviest



```
*** =solution
```{r}
# Example: Obtain order of total number of murders and save ordering in `order_total`
order_total <- order(murders$total)

# Example: Use order_total to sort every variable in `murders`
murders <- murders[order_total,]

# Define variable `treat`
treat <- RatPupWeight$Treatment

# Define variable `weight`
weight <- RatPupWeight$weight

# Define a variable `ranks` to determine the weight size ranks
ranks <- rank(weight)

# Define a variable `ind` to store the indexes needed to order the weight values
ind <- order(weight)

# Create a dataframe `treat_weight` with the treatment groups and their ranks and ordered from lightest to heaviest
treat_weight <- data.frame(Treatment = treat[ind], ranks = ranks[ind])
```

*** =sct
```{r}
test_error()
test_object("treat", undefined_msg = "Define treat first!", incorrect_msg = "Assign treatment group values from dataset to object.")
test_object("weight", undefined_msg = "Define weight first!", incorrect_msg = "Assign weight values from dataset to object.")
test_object("ranks", undefined_msg = "Define ranks first!", incorrect_msg = "Define the rank of the weight values!")
test_object("ind", undefined_msg = "Define ind first.", incorrect_msg = "Use the order command as well.")
test_object("treat_weight", undefined_msg = "Define the dataframe first.", incorrect_msg = "Use the command similar to the example.")
success_msg("Great job! Now, you've learnt to sort a dataframe.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:f7d3786068
## 7. Missing data: NA

Take a look at a preloaded dataset `na_example`. It is a set of numbers from 1 to 1000, but with a certain number of missing values. 
In R, missing values are represented by `NA`.

You can quickly examine the object using:

     - `str(na_example)`

Function `is.na()` returns a logical `TRUE` or `FALSE` indicating whether a value is `NA`. 

Recall that you can use a logical vector in square brackets to access values in a vector that satisfy certain conditions. 

*** =instructions

- Think of a way to find out how many `NAs` there are in `na_example`
- Store the number in `na_count`
- Print the number of `NA` in the dataset (`na_count`)

*** =hint
One way is to combine `is.na()` with `sum()`. Another way is to extract all `NAs` in the vector and use `length()`.

*** =pre_exercise_code
```{r}
na_example <- sample(1:100, 1000, replace = TRUE)
na_indices <- sample.int(1000, 300)
na_example[na_indices]<-NA

```

*** =sample_code
```{r}
# Find out how many NAs there are in `na_example` and save the count in `na_count`


#Find out how many NAs are present in na_example



```

*** =solution
```{r}
# Find out how many NAs there are in `na_example` and save the count in `na_count`
na_count <- sum(is.na(na_example))

# Or
na_count <- length(na_example[is.na(na_example)])

#Find out how many NAs are present in na_example
na_count

```

*** =sct
```{r}
test_error()
test_object("na_count", undefined_msg = "Make sure to define na_count first.", incorrect_msg = "Check instructions for the code.")
test_object("na_count", undefined_msg = "Make sure to define na_count first.", incorrect_msg = "Check for spelling errors")
success_msg("Great job! Move to the last exercise in this chapter.")
```
----

--- type:NormalExercise lang:r xp:100 skills:1 key:7d6eebca10
## 8. Removing NA for Calculations  

Run `mean(na_example)` on the right. As you can see, `NAs` mess up some operations in R. 

You might want to exclude them for those purposes. You can do this in 2 ways: 

1. Use the `na.rm=TRUE` argument in the function performing the calculation on the dataset
2. Use `!` operator along with `is.na()` function and obtain the non `NA` values using the `[]` operator

*** =instructions

- Calculate the mean of all non-missing data in `na_example`, and store the mean in `mean_na_rm`
- Run `mean_na_rm` in the console to check the output

*** =hint

You could also use `!` and indexing to get rid of all `NAs` in the vector. 

*** =pre_exercise_code
```{r}
na_example <- sample(1:100, 1000, replace = TRUE)
na_indices <- sample.int(1000, 300)
na_example[na_indices]<-NA
```

*** =sample_code
```{r}
mean(na_example)

# Calculate the mean of all non-missing data in `na_example` and store the mean in `mean_na_rm`

```

*** =solution
```{r}
# Calculate the mean of all non-missing data in `na_example` and store the mean in `mean_na_rm`
mean_na_rm <- mean(na_example, na.rm=TRUE)

# Or
mean_na_rm <- mean(na_example[!is.na(na_example)])
```

*** =sct
```{r}
test_error()
test_object("mean_na_rm", undefined_msg = "Make sure you store the value in `mean_na_rm`.", incorrect_msg = "Check out the hint.")
success_msg("Awesome! You're all set with this chapter!")
```
----